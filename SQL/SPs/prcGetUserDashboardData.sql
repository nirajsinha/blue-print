USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetUserDashboardData]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetUserDashboardData]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDashboardData    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on DepartmentID
-- Parameters: @DepartmentID    
-- Return Values:    
-- i.e:   
-- prcGetUserDashboardData 1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDashboardData]    
 @UserID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	declare @OrgID int
	declare @CreatedBy varchar(200)
	declare @TotalAssignedCount int
	declare @TotalUploadedCount int
	declare @TotalDocsCount int
	-- Get assigned documents
	SELECT @TotalAssignedCount = COUNT(*) FROM Document
	WHERE AssignedTo = @UserID
	AND IsActive = 1
	
	-- Total uploaded
	select @OrgID = OrganizationID, @CreatedBy= UserEmail from Users where UserID= @UserID
	SELECT @TotalUploadedCount = count(*)  
	  FROM Document d (nolock)  
	  WHERE d.DepartmentID IN (select DepartmentID FROM Department WHERE OrganizationID = @OrgID)  
	  AND d.IsActive = 1
	  AND d.CreatedBy = @CreatedBy 
	  
	  -- Total documents
	select @OrgID = OrganizationID, @CreatedBy= UserEmail from Users where UserID= @UserID
	SELECT @TotalDocsCount = count(*)  
	  FROM Document d (nolock)  
	  WHERE d.DepartmentID IN (select DepartmentID FROM Department WHERE OrganizationID = @OrgID)  
	  AND d.IsActive = 1
  
  select @TotalAssignedCount as TotalAssignedCount, @TotalUploadedCount as TotalUploadedCount, @TotalDocsCount as TotalDocsCount
END
GO

