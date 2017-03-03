USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentMasterDetails]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentMasterDetails]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentMasterDetails   
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on DepartmentID
-- Parameters: @OrganizationID    
-- Return Values:    
-- i.e:   
-- prcGetDepartmentDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentMasterDetails]    
 @OrganizationID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT DocumentMasterID,
	OrganizationID,
	IssueApplicable,
	VersionOrRevision,
	InitialNumber,
	IncrementBy,
	DocumentName1,
	DocumentType1,
	DocumentName2,
	DocumentType2,
	DocumentName3,
	DocumentType3,
	DocumentName4,
	DocumentType4,
	SerialNumber
	FROM DocumentMaster
	WHERE OrganizationID = @OrganizationID
	AND IsActive = 1

END
GO

