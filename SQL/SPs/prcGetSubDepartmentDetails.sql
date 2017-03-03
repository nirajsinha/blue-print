USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetSubDepartmentDetails]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetSubDepartmentDetails]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetSubDepartmentDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on SubDepartmentID
-- Parameters: @SubDepartmentID    
-- Return Values:    
-- i.e:   
-- prcGetSubDepartmentDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetSubDepartmentDetails]    
 @SubDepartmentID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
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
	WHERE SubDepartmentID = @SubDepartmentID 

END
GO

