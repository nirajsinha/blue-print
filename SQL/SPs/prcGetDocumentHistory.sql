USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentHistory]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentHistory]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentHistory    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentHistory 42
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentHistory]    
	@DocumentID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET NOCOUNT ON
	
	DECLARE @DocName VARCHAR(200)
	DECLARE @DeptID INT
	DECLARE @SubDeptID INT

	SELECT @DocName=DocumentName, @DeptID=DepartmentID ,@SubDeptID = SubDepartmentID FROM Document WHERE DocumentID = @DocumentID
	DECLARE @Doc TABLE (DocumentID int, DepartmentID int,SubDepartmentID int, DocumentType nvarchar(100),DocumentNumber nvarchar(100),
						DocumentName nvarchar(50),[Version] decimal(10,3),NextVersion decimal(10,3), 
						FileType nvarchar(10), PhysicalPath nvarchar(200),MetaDataPath nvarchar(200), 
						IsActive bit, CheckInStatus bit, WorkflowStatusName varchar(100),CreatedBy varchar(200),CreatedOn datetime,AssignedTo int, ChangeRequestNumber VARCHAR(30))
	


	DECLARE @DocID INT
	DECLARE @GetDocumentID CURSOR
	SET @GetDocumentID = CURSOR FOR
		SELECT DocumentID FROM Document WHERE DocumentName = @DocName
						AND DepartmentID = @DeptID
						AND SubDepartmentID = @SubDeptID
	OPEN @GetDocumentID
	FETCH NEXT
	FROM @GetDocumentID INTO @DocID
	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO @Doc(DocumentID, DepartmentID,SubDepartmentID, DocumentType,DocumentNumber, DocumentName,
			[Version],NextVersion,FileType , PhysicalPath, MetaDataPath,IsActive, CheckInStatus,WorkflowStatusName,CreatedBy,CreatedOn,AssignedTo,ChangeRequestNumber)
		EXEC prcGetDocumentDetails @DocID
	FETCH NEXT
	FROM @GetDocumentID INTO @DocID
	END
	CLOSE @GetDocumentID
	DEALLOCATE @GetDocumentID

	-- Return value
	SELECT DocumentID, DepartmentID,SubDepartmentID, DocumentType,DocumentNumber,DocumentName,
		[Version],NextVersion,FileType , PhysicalPath, MetaDataPath,IsActive, CheckInStatus,WorkflowStatusName,CreatedBy,CreatedOn,AssignedTo,ChangeRequestNumber 
		FROM @Doc 
						
END
GO

