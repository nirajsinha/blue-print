USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveUserRoleGroup]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveUserRoleGroup]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveUserRoleGroup    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveUserRoleGroup]    
@UserRoleGroupID int,
@UserID int,
@RoleGroupID int,
@DepartmentID int, 
@SubDepartmentID int, 
@IsGranted BIT
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	IF @UserRoleGroupID = 0  
	BEGIN
		INSERT INTO UserRoleGroup(UserID, RoleGroupID, DepartmentID, SubDepartmentID,IsActive, CreatedOn, ModifiedOn)
		VALUES (@UserID, @RoleGroupID, @DepartmentID, @SubDepartmentID, @IsGranted, GETDATE(), GETDATE())
	END
	ELSE 
	BEGIN
		UPDATE UserRoleGroup SET 
		UserID = @UserID,
		RoleGroupID = @RoleGroupID, 
		DepartmentID = @DepartmentID, 
		SubDepartmentID = @SubDepartmentID,
		IsActive = @IsGranted, 
		ModifiedOn = GETDATE()
		WHERE UserRoleGroupID = @UserRoleGroupID
	END
	
	SELECT 1
END
GO

