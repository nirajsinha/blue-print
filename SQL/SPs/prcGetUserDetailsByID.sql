USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetUserDetailsByID]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetUserDetailsByID]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDetailsByID    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- @UserID int,
-- Return Values:    
-- i.e:   
-- prcGetUserDetailsByID '12'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDetailsByID]    
@UserID int
AS     
BEGIN    
  
	
	SELECT us.UserID, Name, RoleGroupName, OrganizationID, DepartmentID, SubDepartmentID, UserEmail,Phone,Mobile, [Password], TempPassword, isnull(ac.Text, '') as Certifications, TrainingDate
	FROM Users us (nolock)
	inner join RoleGroup rg (nolock) ON us.RoleGroupID = rg.RoleGroupID
	left join AuditCertifications ac (nolock) on us.UserID = ac.UserID
	WHERE us.UserID = @UserID
	AND IsActive = 1
END
GO
