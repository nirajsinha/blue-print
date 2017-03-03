USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetUserDetailsByEmail]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetUserDetailsByEmail]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDetailsByEmail    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- @UserEmail nvarchar(100),
-- Return Values:    
-- i.e:   
-- prcGetUserDetailsByEmail 'admin@eqms.com'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDetailsByEmail]    
@UserEmail nvarchar(100)
AS     
BEGIN    
  
	
	SELECT UserID, Name, RoleGroupName, OrganizationID, DepartmentID, SubDepartmentID, UserEmail,Phone,Mobile, [Password], TempPassword
	FROM Users us (nolock)
	inner join RoleGroup rg (nolock) ON us.RoleGroupID = rg.RoleGroupID
	WHERE us.UserEmail = @UserEmail
	AND IsActive = 1
END
GO

