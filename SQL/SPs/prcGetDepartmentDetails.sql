USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDepartmentDetails]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDepartmentDetails]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDepartmentDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on DepartmentID
-- Parameters: @DepartmentID    
-- Return Values:    
-- i.e:   
-- prcGetDepartmentDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDepartmentDetails]    
 @DepartmentID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT DepartmentID,
		OrganizationID,
		DepartmentName,
		DepartmentAbbreviate,
		HODName,
		LLNumber,
		MobileNumber,
		EmailId,
		SubProcess,
		ReviewerName,
		ReviewerLLNumber,
		ReviewerMobileNumber,
		ReviewerEmailID,
		IsHODApprover,
		ApproverName,
		ApproverLLNumber,
		ApproverMobileNumber,
		ApproverEmailID
	FROM Department
	WHERE DepartmentID = @DepartmentID 
	
	SELECT DepartmentID,
		SubDepartmentID,
		SubDepartmentName,
		SubDepartmentAbbreviate,
		HODName,
		LLNumber,
		MobileNumber,
		EmailId,
		ReviewerName,
		ReviewerLLNumber,
		ReviewerMobileNumber,
		ReviewerEmailID,
		IsHODApprover,
		ApproverName,
		ApproverLLNumber,
		ApproverMobileNumber,
		ApproverEmailID
	FROM SubDepartment
	WHERE DepartmentID = @DepartmentID
	AND IsActive = 1

END
GO

