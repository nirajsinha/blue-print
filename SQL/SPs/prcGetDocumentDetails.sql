USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentDetails]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentDetails]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentDetails 22 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentDetails]    
	@DocumentID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @Doc TABLE (DocumentID int, DepartmentID int,SubDepartmentID int, DocumentType nvarchar(100), DocumentNumber nvarchar(100),
						DocumentName nvarchar(50),[Version] decimal(10,3),NextVersion decimal(10,3), 
						FileType nvarchar(10), PhysicalPath nvarchar(200),MetaDataPath nvarchar(200), 
						IsActive bit, CheckInStatus bit,WorkflowStatusID int, CreatedBy varchar(200),CreatedOn datetime, AssignedTo int, ChangeRequestNumber VARCHAR(30))
	
	INSERT INTO @Doc(DocumentID, DepartmentID,SubDepartmentID,DocumentType,DocumentNumber,DocumentName,[Version],FileType,IsActive,CheckInStatus,WorkflowStatusID,CreatedBy,CreatedOn,AssignedTo)--,ChangeRequestNumber)
	SELECT d.DocumentID,d.DepartmentID,SubDepartmentID,DocumentType,DocumentNumber,DocumentName,convert(decimal(10,3),[Version]),FileType, d.IsActive, CheckInStatus,WorkflowStatusID,d.CreatedBy,d.CreatedOn,AssignedTo--, dcr.RequestNumber
		FROM Document d
		--left join DocumentChangeRequest dcr ON dcr.DocumentID = d.DocumentID
		WHERE d.DocumentID = @DocumentID 
		--AND dcr.IsActive = 1
		
		update @Doc set ChangeRequestNumber = RequestNumber from DocumentChangeRequest dcr where dcr.DocumentID=@DocumentID and dcr.IsActive = 1
	-- build next version
	declare @CurrentVersion decimal(10,3)
	select @CurrentVersion = convert(decimal(10,3),[Version]) from @Doc

	declare @Increament decimal(10,3)
	select @Increament = IncrementBy from DocumentMaster where IsActive = 1
	
	declare @NextVersion decimal(10,3)
	set @NextVersion = @CurrentVersion + (select IncrementBy from DocumentMaster where IsActive = 1)
	print @NextVersion
	update @Doc set NextVersion = @NextVersion
	
	-- build doc path
	declare @DocPhysicalPath nvarchar(200)
	declare @OrgCode varchar(6)
	declare @OrganizationID INT
	select @OrgCode = OrganizationAbreviation, @OrganizationID = o.OrganizationID from 
						Organization o (nolock)
						join Department d (nolock) on o.OrganizationID = d.OrganizationID
						where d.DepartmentID in(select DepartmentID from @Doc)
	declare @DeptCode varchar(6)
	declare @DepartmentID INT
	select @DeptCode = DepartmentAbbreviate, @DepartmentID = DepartmentID from Department 
						where DepartmentID in(select DepartmentID from @Doc)
	
	-- check subdepartment from doc
	declare @SubDeptID int
	declare @SubDeptCode varchar(6)=''
	select @SubDeptID = isnull(SubDepartmentID,0) from @Doc
	if @SubDeptID > 0
	begin
		--select @SubDeptCode = SubDepartmentAbbreviate from SubDepartment 
		--				where SubDepartmentID in(select SubDepartmentID from @Doc)
		set @DocPhysicalPath = convert(varchar(10),@OrganizationID) +'\Depts\'+convert(varchar(10),@DepartmentID)+'\'+ convert(varchar(10),@SubDeptID) +'\' --@OrgCode +'\'+@DeptCode+'\'+ @SubDeptCode +'\'
	end
	else
	begin 
		set @DocPhysicalPath = convert(varchar(10),@OrganizationID) +'\Depts\'+convert(varchar(10),@DepartmentID) +'\'
	end
	update @Doc set MetaDataPath = @DocPhysicalPath
	
	set @DocPhysicalPath = @DocPhysicalPath +
			(select DocumentName from @Doc) +'\'+
			(Select convert(nvarchar,[Version]) from @Doc) + '\'
	update @Doc set PhysicalPath = @DocPhysicalPath
	-- Return value
	select DocumentID, DepartmentID,SubDepartmentID, DocumentType,DocumentNumber,DocumentName,
		[Version],NextVersion,FileType , PhysicalPath, MetaDataPath,IsActive, CheckInStatus,WorkflowStatusName,CreatedBy,CreatedOn,AssignedTo, ChangeRequestNumber
		from @Doc d 
		join WorkflowStatus ws ON d.WorkflowStatusID = ws.WorkflowStatusID
						
END
GO
