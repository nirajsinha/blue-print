USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetOrganizationDetails]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetOrganizationDetails]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetOrganizationDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves organization details based on OrganizationID
-- Parameters: @OrganizationID    
-- Return Values:    
-- i.e:   
-- prcGetOrganizationDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetOrganizationDetails]    
 @OrganizationID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT OrganizationID, OrganizationName, OrganizationAbreviation AS OrganizationAbbreviate, OrganizationAddress AS Address,
		CorporateAddress, OfficePhoneNumber, ContactNumber, FaxNumber, EmailId AS MDEmail, WebSite, TerminologyID
	FROM ORGANIZATION
	WHERE OrganizationID = @OrganizationID 

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
	WHERE OrganizationID = @OrganizationID
	AND IsActive = 1
	
	SELECT *
	FROM SubDepartment sd
	join Department d on d.DepartmentID = sd.DepartmentID
	WHERE d.OrganizationID = @OrganizationID
	AND sd.IsActive = 1

END
GO

