USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentList]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentList]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentList    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentList 1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentList]      
 @OrgID int  
AS       
BEGIN      
    
 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
 
 /*
 SELECT d.DocumentID,d.DepartmentID,d.SubDepartmentID,DocumentType,DocumentNumber,DocumentName,[Version],WorkflowStatusName,FileType, CheckInStatus, u.Name as CreatedBy,d.CreatedOn, d.AssignedTo  
  FROM Document d (nolock)  
  inner join Users u on d.CreatedBy = u.UserEmail
  join WorkflowStatus ws ON d.WorkflowStatusID = ws.WorkflowStatusID
  WHERE d.DepartmentID IN (select DepartmentID FROM Department WHERE OrganizationID = @OrgID AND IsActive = 1)
  AND d.SubDepartmentID IN (select SubDepartmentID FROM SubDepartment WHERE OrganizationID = @OrgID AND IsActive = 1)  
  AND d.IsActive = 1  
    
  */
  
  SELECT d.*, WorkflowStatusName, u.Name as CreatedBy
  FROM Organization o (nolock)
  inner join Department dp (nolock) on o.OrganizationID = dp.OrganizationID
  inner join Document d (nolock) on dp.DepartmentID = d.DepartmentID  
  inner join Users u (nolock) on d.CreatedBy = u.UserEmail
  inner join WorkflowStatus ws (nolock) ON d.WorkflowStatusID = ws.WorkflowStatusID
  WHERE d.IsActive = 1
  AND d.DepartmentID IN (select DepartmentID from Department dptemp where dptemp.IsActive = 1 and dptemp.OrganizationID = @OrgID)
  AND (d.SubDepartmentID = 0 OR d.SubDepartmentID in (
		select SubDepartmentID from SubDepartment subdept
		join Department dept on subdept.DepartmentID = dept.DepartmentID
		join Organization org on dept.OrganizationID = org.OrganizationID
		where org.OrganizationID = @OrgID and dept.IsActive = 1 and subdept.IsActive = 1 
		)
	)

END  
GO

