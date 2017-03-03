USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveDocument]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveDocument]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocument    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: inserts new document
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocument]    
	@DepartmentID int,
    @SubDepartmentID int,
    @DocumentType nvarchar(100),
    @DocumentName nvarchar(100),
	@FileType nvarchar(10),
	@CreatedBy nvarchar(100)
AS     
BEGIN    
      
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	declare @DocID int
	declare @NewDocID  int
	declare @WorkflowStatusID  int
	declare @Version decimal(10,3) 
	DECLARE @OrganizationID INT
	declare @DocumentNumber varchar(100)
	SELECT @OrganizationID = OrganizationID FROM Department WHERE DepartmentID = @DepartmentID
	
	  
	DECLARE @Doc TABLE (DepartmentID int,SubDepartmentID int, DocumentType nvarchar(100),DocumentNumber nvarchar(100),
						DocumentName nvarchar(50),[Version] decimal(10,3),FileType nvarchar(10), CreatedBy nvarchar(100))
	
	INSERT INTO @Doc(DepartmentID,SubDepartmentID, DocumentType,DocumentName,FileType, CreatedBy)
		SELECT @DepartmentID,@SubDepartmentID,@DocumentType,@DocumentName,@FileType, @CreatedBy
	
		
	if exists (select 1 from Document where DepartmentID = @DepartmentID
					and SubDepartmentID = @SubDepartmentID
					and DocumentName = @DocumentName 
					and IsActive = 1)
	begin
		declare @CheckInStatus bit
		declare @CheckOutBy varchar(200)
		select @CheckInStatus= CheckInStatus, @CheckOutBy = CheckOutBy, 
				@WorkflowStatusID = WorkflowStatusID, 
				@DocID = DocumentID, @Version=convert(decimal(10,3),[Version])
		from Document where DepartmentID = @DepartmentID
					and SubDepartmentID = @SubDepartmentID
					and DocumentName = @DocumentName
					and IsActive = 1
		if @CheckInStatus = 1
		begin
			RAISERROR ('Document update is not allowed without check-out.', 16, 1, 0)              
			RETURN -100   
		end
		else if @CheckOutBy != @CreatedBy
		begin
			RAISERROR ('Document is checked-out by another user.', 16, 1, 0)              
			RETURN -100 
		end
		-- build next version of document and insert
		update Document set ModifiedOn = GETDATE(),
							ModifiedBy = @CreatedBy,
							CheckInStatus=1,
							CheckOutBy = null,
							FileType = @FileType
							where DocumentID = @DocID
		
		if @WorkflowStatusID = 6
		begin
			update Document set IsActive = 0 where DocumentID = @DocID
			select @Version = @Version + (select IncrementBy from DocumentMaster where IsActive = 1)
			update @Doc set [Version] = @Version
			-- Build document number
			exec prcGetDocumentNumberDetail @DocumentType, @DepartmentID, @SubDepartmentID, @OrganizationID, @DocumentNumber output
			update @Doc set [DocumentNumber] = @DocumentNumber
			
			-- Insert new document with changed version
			insert into Document(DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
							IsActive,CreatedOn,FileType,CreatedBy,CheckInStatus,WorkflowStatusID)
			select DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
							1,GETDATE(),FileType,CreatedBy,1,1
							from @Doc
			
			select @NewDocID = @@IDENTITY
		end
		else
		begin
			select @NewDocID = @DocID
		end
		
	end
	else -- new document
	begin
		exec prcGetDocumentNumberDetail @DocumentType, @DepartmentID, @SubDepartmentID, @OrganizationID, @DocumentNumber output
		update @Doc set [DocumentNumber] = @DocumentNumber
	    -- build version
		select @Version = InitialNumber from DocumentMaster where IsActive = 1
		update @Doc set [Version] = @Version
		
		-- Insert new document with changed version
		insert into Document(DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
						IsActive,CreatedOn,FileType,CreatedBy,CheckInStatus,WorkflowStatusID)
		select DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
						1,GETDATE(),FileType,CreatedBy,1,1
						from @Doc
		
		select @NewDocID = @@IDENTITY
	end
	
	exec prcGetDocumentDetails @NewDocID
						
END
GO

