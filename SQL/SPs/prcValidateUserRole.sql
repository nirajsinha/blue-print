USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcValidateUserRole]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcValidateUserRole]
GO

  
-- **********************************************************      
-- @@Verion: 1      
-- SP Name: dbo.prcValidateUserRole      
-- Author: Niraj Sinha    
-- Create Date: 20/05/2013      
-- Description: Updates password table  
-- Parameters:   
-- @UserID int,  
-- Return Values:      
-- i.e:     
-- prcValidateUserRole 12,1,1,'Audit Report'  
-- ********************************************************      
CREATE PROCEDURE [dbo].[prcValidateUserRole]      
@UserID INT,  
@DepartmentID INT,  
@SubDepartmentID INT,  
@RoleName nvarchar(200)  
AS       
BEGIN      
    
 declare @MainRoleGroupID int
 select @MainRoleGroupID = RoleGroupID from Users where UserID = @UserID
 IF @MainRoleGroupID = 1
 BEGIN
	select 1
 END
 ELSE
 BEGIN
	 DECLARE @OrganizationID int  
	 SELECT @OrganizationID= OrganizationID FROM  Department WHERE  DepartmentID = @DepartmentID  
	   
	 DECLARE  @temp TABLE (RoleGroupID INT, RoleGroupName VARCHAR(200), RoleID INT, RoleName VARCHAR(200))  
	   
	 INSERT INTO @temp  
	 SELECT rg.RoleGroupID,rg.RoleGroupName, r.RoleID,r.RoleName   
	 FROM RoleGroupConfiguration rgc (nolock)  
	 INNER JOIN RoleGroup rg (nolock) ON rgc.RoleGroupID = rg.RoleGroupID  
	 INNER JOIN Role r (nolock) ON rgc.RoleID = r.RoleID  
	 WHERE r.RoleName = @RoleName  
	 AND rgc.OrganizationID = @OrganizationID  
	 AND rgc.IsGranted = 1  
	  
	 IF EXISTS(  
	  SELECT * FROM  
	  @temp t  
	  INNER JOIN UserRoleGroup urg (nolock) ON t.RoleGroupID = urg.RoleGroupID  
	  WHERE urg.UserID = @UserID  
	  AND urg.DepartmentID = @DepartmentID  
	  AND urg.SubDepartmentID = @SubDepartmentID  
	  and urg.IsActive = 1  
	 )  
	 BEGIN   
	  SELECT 1  
	 END  
	 ELSE  
	 BEGIN  
	  SELECT 0  
	 END
 END  
END  