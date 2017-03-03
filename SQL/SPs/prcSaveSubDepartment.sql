USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveSubDepartment]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveSubDepartment]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveSubDepartment    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveSubDepartment]    
	@DepartmentID int,
	@SubDepartmentID int,
	@SubDepartmentName nvarchar(50),
	@SubDepartmentAbbreviate nvarchar(4),
	@HODName nvarchar(50),
	@LLNumber nvarchar(50),
	@MobileNumber nvarchar(10)= null,
	@EmailId nvarchar(50),
	@ReviewerName nvarchar(50)= null,
	@ReviewerLLNumber nvarchar(50)= null,
	@ReviewerMobileNumber nvarchar(10)= null,
	@ReviewerEmailID nvarchar(50)= null,
	@IsHODApprover bit = null,
	@ApproverName nvarchar(50) = null,
	@ApproverLLNumber nvarchar(50) = null,
	@ApproverMobileNumber nvarchar(50)= null,
	@ApproverEmailID nvarchar(50)= null
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @SubDeptID int
	
	IF @DepartmentID = 0                                    
	BEGIN                                    
		RAISERROR ('DepartmentID cannot be 0', 16, 1)               
		RETURN -100                          
	END 

	IF @SubDepartmentID = 0  
	BEGIN
		INSERT INTO SubDepartment(
			DepartmentID,
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
			ApproverEmailID)
		VALUES (
			@DepartmentID,
			@SubDepartmentName,
			@SubDepartmentAbbreviate,
			@HODName,
			@LLNumber,
			@MobileNumber,
			@EmailId,
			@ReviewerName,
			@ReviewerLLNumber,
			@ReviewerMobileNumber,
			@ReviewerEmailID,
			@IsHODApprover,
			@ApproverName,
			@ApproverLLNumber,
			@ApproverMobileNumber,
			@ApproverEmailID)
		SET @SubDeptID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE SubDepartment SET 
			DepartmentID = @DepartmentID,
			SubDepartmentName = @SubDepartmentName,
			SubDepartmentAbbreviate = @SubDepartmentAbbreviate,
			HODName = @HODName,
			LLNumber = @LLNumber,
			MobileNumber = @MobileNumber,
			EmailId = @EmailId,
			ReviewerName = @ReviewerName,
			ReviewerLLNumber = @ReviewerLLNumber,
			ReviewerMobileNumber = @ReviewerMobileNumber,
			ReviewerEmailID = @ReviewerEmailID,
			IsHODApprover = @IsHODApprover,
			ApproverName = @ApproverName,
			ApproverLLNumber = @ApproverLLNumber,
			ApproverMobileNumber = @ApproverMobileNumber,
			ApproverEmailID = @ApproverEmailID,
			ModifiedOn = GETDATE()
		WHERE SubDepartmentID = @SubDepartmentID
		
		SET @SubDeptID = @SubDepartmentID
	END
	
	-- Return department details
	EXEC prcGetSubDepartmentDetails @SubDeptID
END
GO

