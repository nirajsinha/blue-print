USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcExecuteWorkflow]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcExecuteWorkflow]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcExecuteWorkflow 22   
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: inserts new document
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcExecuteWorkflow]    
	@DocumentID int,
	@NextWorkflowStatus VARCHAR(50) ='',
	@WorkflowExecuterID int = 0
AS     
BEGIN    
      
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	      
	DECLARE @AssignedTo int 
	DECLARE @DepartmentID INT
	DECLARE @SubDepartmentID INT
	DECLARE @WorkflowStatusID INT 
	DECLARE @NextWorkflowStatusID INT 

SELECT @DepartmentID = DepartmentID, @SubDepartmentID= SubDepartmentID, @WorkflowStatusID = WorkflowStatusID FROM document 
WHERE DocumentID= @DocumentID
IF @SubDepartmentID > 0
BEGIN
	IF @WorkflowStatusID = 1
	BEGIN
		SET @NextWorkflowStatusID = 2
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join SubDepartment d (nolock) on u.UserEmail = d.ReviewerEmailID
		WHERE d.SubDepartmentID = @SubDepartmentID
		
	END 
	IF @WorkflowStatusID = 2
	BEGIN
		SET @NextWorkflowStatusID = 3
		
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join SubDepartment d (nolock) on u.UserEmail = d.ApproverEmailID
		WHERE d.SubDepartmentID = @SubDepartmentID
		
	END 
	IF @WorkflowStatusID = 3
	BEGIN
		SET @NextWorkflowStatusID = 4
		SELECT @AssignedTo = NULL
	END 
	
END
ELSE
BEGIN
	IF @WorkflowStatusID = 1
	BEGIN
		SET @NextWorkflowStatusID = 2
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join Department d (nolock) on u.UserEmail = d.ReviewerEmailID
		WHERE d.DepartmentID = @DepartmentID
	END 
	IF @WorkflowStatusID = 2
	BEGIN
		SET @NextWorkflowStatusID = 3
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join Department d (nolock) on u.UserEmail = d.ApproverEmailID
		WHERE d.DepartmentID = @DepartmentID
		
	END 
	IF @WorkflowStatusID = 3
	BEGIN
		SET @NextWorkflowStatusID = 4
		SELECT @AssignedTo = NULL
	END 
END

IF len(LTRIM(RTRIM(@NextWorkflowStatus))) > 0
BEGIN
	SELECT @NextWorkflowStatusID = WorkflowStatusID FROM WorkflowStatus WHERE WorkflowStatusName = @NextWorkflowStatus
	IF @NextWorkflowStatusID = 6
	BEGIN
		SELECT @AssignedTo = null
	END 

END

update Document set WorkflowStatusID = @NextWorkflowStatusID,
AssignedTo = @AssignedTo,
CheckInStatus = 1,
CheckOutBy = null 
where DocumentID = @DocumentID

IF @NextWorkflowStatusID = 6
BEGIN
	Update DocumentChangeRequest SET IsActive = 0 where DocumentID = @DocumentID
END 
	
						
END
GO

