USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveRoleGroupConfiguration]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveRoleGroupConfiguration]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveOrganization    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveRoleGroupConfiguration]    
@RoleGroupConfigurationID int,
@OrganizationID int,
@RoleGroupID int, 
@RoleID int, 
@IsGranted BIT
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @OrgID int
	
	IF @RoleGroupConfigurationID = 0  
	BEGIN
		INSERT INTO RoleGroupConfiguration(OrganizationID, RoleGroupID, RoleID, IsGranted, CreatedOn)
		VALUES (@OrganizationID, @RoleGroupID, @RoleID, @IsGranted, GETDATE())
	END
	ELSE 
	BEGIN
		UPDATE RoleGroupConfiguration SET 
		RoleGroupID = @RoleGroupID, 
		RoleID = @RoleID, 
		IsGranted = @IsGranted, 
		ModifiedOn = GETDATE()
		WHERE RoleGroupConfigurationID = @RoleGroupConfigurationID
	END
	
	SELECT 1
END
GO

