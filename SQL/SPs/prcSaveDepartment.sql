USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveDepartment]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveDepartment]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDepartment    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDepartment]    
	@DepartmentID int,
	@OrganizationID int,
	@DepartmentName nvarchar(50),
	@DepartmentAbbreviate nvarchar(4),
	@HODName nvarchar(50),
	@LLNumber nvarchar(50),
	@MobileNumber nvarchar(10)= null,
	@EmailId nvarchar(50),
	@SubProcess nvarchar(5),
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
	DECLARE @DeptID int
	
	IF @OrganizationID = 0                                    
	BEGIN                                    
		RAISERROR ('OrganizationID cannot be 0', 16, 1)               
		RETURN -100                          
	END 

	IF @DepartmentID = 0  
	BEGIN
		INSERT INTO Department(
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
			ApproverEmailID)
		VALUES (
			@OrganizationID,
			@DepartmentName,
			@DepartmentAbbreviate,
			@HODName,
			@LLNumber,
			@MobileNumber,
			@EmailId,
			@SubProcess,
			@ReviewerName,
			@ReviewerLLNumber,
			@ReviewerMobileNumber,
			@ReviewerEmailID,
			@IsHODApprover,
			@ApproverName,
			@ApproverLLNumber,
			@ApproverMobileNumber,
			@ApproverEmailID)
		SET @DeptID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE Department SET 
			OrganizationID = @OrganizationID,
			DepartmentName = @DepartmentName,
			DepartmentAbbreviate = @DepartmentAbbreviate,
			HODName = @HODName,
			LLNumber = @LLNumber,
			MobileNumber = @MobileNumber,
			EmailId = @EmailId,
			SubProcess = @SubProcess,
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
		WHERE DepartmentID = @DepartmentID
		
		SET @DeptID = @DepartmentID
	END
	-- delete all sub department when no subprocess
	if @SubProcess = 0
	begin
		update SubDepartment set IsActive = 0
		where DepartmentID = @DeptID
	end
	-- Return department details
	EXEC prcGetDepartmentDetails @DeptID
END
GO

