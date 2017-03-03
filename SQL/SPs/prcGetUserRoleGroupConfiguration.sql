USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetUserRoleGroupConfiguration]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetUserRoleGroupConfiguration]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserRoleGroupConfiguration    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetUserRoleGroupConfiguration 1
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserRoleGroupConfiguration]    
	@UserID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET NOCOUNT ON

	SELECT * FROM UserRoleGroup
	WHERE UserID = @UserID
	
	SELECT RoleGroupID, RoleGroupName from RoleGroup
							
END
GO

