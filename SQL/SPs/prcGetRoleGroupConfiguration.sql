USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetRoleGroupConfiguration]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetRoleGroupConfiguration]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetRoleGroupConfiguration    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetRoleGroupConfiguration 1 prcGetOrganizationDetails 1
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetRoleGroupConfiguration]    
	@OrganizationID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET NOCOUNT ON
	
	SELECT RoleGroupConfigurationID, OrganizationID, RoleGroupID, RoleID, IsGranted from RoleGroupConfiguration
	WHERE OrganizationID = @OrganizationID
	
	SELECT RoleGroupID, RoleGroupName from RoleGroup
	
	SELECT RoleID, RoleName from ROLE

						
END
GO

