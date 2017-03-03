USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetUserDetailsByOrganizationID]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetUserDetailsByOrganizationID]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDetailsByOrganizationID   1,'mail' 
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDetailsByOrganizationID]    
@OrganizationID int,
@UserName VARCHAR(100) = null
AS     
BEGIN    
  
	
	SELECT UserID, Name, RoleGroupName, OrganizationID, DepartmentID, SubDepartmentID, UserEmail,Phone,Mobile, [Password], TempPassword
	FROM Users us (nolock)
	inner join RoleGroup rg (nolock) ON us.RoleGroupID = rg.RoleGroupID
	WHERE us.DepartmentID in (select DepartmentID from Organization where OrganizationID = @OrganizationID)
	AND IsActive = 1
	AND (Name LIKE COALESCE('%' + @UserName + '%', Name) OR UserEmail LIKE COALESCE('%' + @UserName + '%', UserEmail))
END
GO

