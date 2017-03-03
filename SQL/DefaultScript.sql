USE eQMS
GO
-- Default administrator script
BEGIN TRANSACTION
INSERT INTO RoleGroup(
	RoleGroupName,
	CreatedOn,
	ModifiedOn
	)
	VALUES (
	'Administrators', 
	GETDATE(), 
	GETDATE()
	)

GO


DECLARE @RoleGroupID INT
SET @RoleGroupID = @@identity

INSERT INTO [Users](
	Name,
	RoleGroupID,
	UserEmail,
	[Password],
	TempPassword
	)
	VALUES(
	'Administrator',
	@RoleGroupID,
	'admin@eqms.com',
	'',
	'temp'
	)
	
GO

COMMIT TRANSACTION
GO
-- Role groups
INSERT INTO RoleGroup(
	RoleGroupName,
	CreatedOn,
	ModifiedOn
	)
	VALUES (
	'Reviewers', 
	GETDATE(), 
	GETDATE()
	)

GO
INSERT INTO RoleGroup(
	RoleGroupName,
	CreatedOn,
	ModifiedOn
	)
	VALUES (
	'Approvers', 
	GETDATE(), 
	GETDATE()
	)

GO
/*
INSERT INTO RoleGroup(
	RoleGroupName,
	CreatedOn,
	ModifiedOn
	)
	VALUES (
	'Auditors', 
	GETDATE(), 
	GETDATE()
	)

GO
*/
INSERT INTO RoleGroup(
	RoleGroupName,
	CreatedOn,
	ModifiedOn
	)
	VALUES (
	'Users', 
	GETDATE(), 
	GETDATE()
	)

GO

-- INSERT ROles

INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Doc Delete', GETDATE(), GETDATE()) 
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Doc Upload', GETDATE(), GETDATE()) 
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Doc Review', GETDATE(), GETDATE()) 
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Doc Approve', GETDATE(), GETDATE())  
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Audit Report', GETDATE(), GETDATE()) 
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('NC Report', GETDATE(), GETDATE()) 
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Raise Change Request', GETDATE(), GETDATE())
GO
INSERT INTO Role(RoleName,CreatedOn,ModifiedOn) VALUES('Doc History', GETDATE(), GETDATE())
GO

-- Workflow status

INSERT INTO WorkflowStatus(WorkflowStatusName) VALUES('Initial Draft') 
GO
INSERT INTO WorkflowStatus(WorkflowStatusName) VALUES('Pending for Review') 
GO
INSERT INTO WorkflowStatus(WorkflowStatusName) VALUES('Pending for Approval') 
GO
INSERT INTO WorkflowStatus(WorkflowStatusName) VALUES('Approved') 
GO
INSERT INTO WorkflowStatus(WorkflowStatusName) VALUES('Rejected') 
GO
INSERT INTO WorkflowStatus(WorkflowStatusName) VALUES('Published') 
GO

-- Terminology

INSERT INTO Terminology(TerminologyName, CreatedOn) VALUES('Department', GETDATE()) 
GO 
INSERT INTO Terminology(TerminologyName, CreatedOn) VALUES('Process', GETDATE())
GO 
INSERT INTO Terminology(TerminologyName, CreatedOn) VALUES('Group', GETDATE())
GO 

