USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcValidateDocumentPermission]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcValidateDocumentPermission]
GO

  
-- **********************************************************      
-- @@Verion: 1      
-- SP Name: dbo.prcValidateDocumentPermission      
-- Author: Niraj Sinha    
-- Create Date: 20/05/2013      
-- Description: Updates password table  
-- Parameters:   
-- @UserID int,  
-- Return Values:      
-- i.e:     
-- prcValidateDocumentPermission 7,29
-- ********************************************************      
CREATE PROCEDURE [dbo].[prcValidateDocumentPermission]      
@UserID INT,  
@DocumentID INT
AS       
BEGIN      
    
 declare @MainRoleGroupID int
 declare @UserEmail varchar(100)
 select @MainRoleGroupID = RoleGroupID, @UserEmail = UserEmail from Users where UserID = @UserID
 
 -- Super administrator/ MR
 IF @MainRoleGroupID = 1
 BEGIN
	select 1
	return
 END
 

	 DECLARE  @temp TABLE (DepartmentID INT, SubDepartmentID VARCHAR(200), AssignedTo varchar(100), CreatedBy varchar(100), WorkflowStatusID int)  
	 INSERT INTO @temp  
	 SELECT DepartmentID, SubDepartmentID, AssignedTo, CreatedBy, WorkflowStatusID
	 from Document where DocumentID= @DocumentID
	 
	 declare @RoleGroupID int
	 SELECT @RoleGroupID = RoleGroupID 
	 from UserRoleGroup urg
	 join @temp t on (urg.DepartmentID = t.DepartmentID and urg.SubDepartmentID = t.SubDepartmentID)
	 WHERE UserID = @UserID
	 and urg.IsActive = 1 
	 
	 declare @WorkflowStatusID int 
	 select @WorkflowStatusID = WorkflowStatusID from @temp
	 -- Published
	 if(@WorkflowStatusID = 6) 
	 begin 
		select 1 
		return
	 end
	 -- AssignedTo user
	 if exists (select 1 from @temp where AssignedTo = @UserID) 
	 begin
		select 1
		return 
	 end
	 -- RoleGroup users
	 if @WorkflowStatusID = 2
	 begin
		if @RoleGroupID = 3 or @RoleGroupID = 4 -- Reviewer or approver group 
		 begin
			select 1
			return 
		 end
	 end
	 if @WorkflowStatusID = 3
	 begin
		if @RoleGroupID = 4 -- Approver group 
		 begin
			select 1
			return 
		 end
	 end
	 
	 SELECT 0  
 
END  