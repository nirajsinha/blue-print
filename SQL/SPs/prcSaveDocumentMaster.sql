USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveDocumentMaster]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveDocumentMaster]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocumentMaster    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocumentMaster]    
	@DocumentMasterID int,
	@OrganizationID int,
	@IssueApplicable bit,
	@VersionOrRevision int,
	@InitialNumber decimal(5, 1),
	@IncrementBy decimal(3, 1),
	@DocumentName1 nvarchar(50)='',
	@DocumentType1 nvarchar(50),
	@DocumentName2 nvarchar(50)='',
	@DocumentType2 nvarchar(50),
	@DocumentName3 nvarchar(50)='',
	@DocumentType3 nvarchar(50),
	@DocumentName4 nvarchar(50)='',
	@DocumentType4 nvarchar(50),
	@SerialNumber nvarchar(50)

AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @DocMasterID int
	
	IF @OrganizationID = 0                                    
	BEGIN                                    
		RAISERROR ('OrganizationID cannot be 0', 16, 1)               
		RETURN -100                          
	END 

	IF @DocumentMasterID = 0  
	BEGIN
	-- Deactivate all previous data
		Update DocumentMaster SET IsActive = 0
		INSERT INTO DocumentMaster
		(
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
			SerialNumber,
			IsActive,
			CreatedOn
		)
		VALUES
		(
			@OrganizationID,
			@IssueApplicable,
			@VersionOrRevision,
			@InitialNumber,
			@IncrementBy,
			@DocumentName1,
			@DocumentType1,
			@DocumentName2,
			@DocumentType2,
			@DocumentName3,
			@DocumentType3,
			@DocumentName4,
			@DocumentType4,
			@SerialNumber,
			1,
			GETDATE()
		)
		SET @DocMasterID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE DocumentMaster SET 
			OrganizationID = @OrganizationID,
			IssueApplicable = @IssueApplicable,
			VersionOrRevision = @VersionOrRevision,
			InitialNumber = @InitialNumber,
			IncrementBy = @IncrementBy,
			DocumentName1 = @DocumentName1,
			DocumentType1 = @DocumentType1,
			DocumentName2 = @DocumentName2,
			DocumentType2 = @DocumentType2,
			DocumentName3 = @DocumentName3,
			DocumentType3 = @DocumentType3,
			DocumentName4 = @DocumentName4,
			DocumentType4 = @DocumentType4,
			SerialNumber = @SerialNumber,
			ModifiedOn = GETDATE()
		WHERE DocumentMasterID = @DocumentMasterID
		
		SET @DocMasterID = @DocumentMasterID
	END
	
	select @DocMasterID
	
END
GO

