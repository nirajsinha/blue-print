USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveDocumentChangeRequest]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveDocumentChangeRequest]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocumentChangeRequest    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 
-- Return Values:    
-- i.e:   
/*

*/
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocumentChangeRequest]    
@DocumentChangeRequestID int,
@RequestNumber nvarchar(100),
@DocumentID nvarchar(50),
@DepartmentID int,
@Detail nvarchar(max)='',
@Reason nvarchar(max)='',
@Comment1 nvarchar(100)='',
@Comment2 nvarchar(100)='',
@Comment3 nvarchar(100)='',
@Comment1By nvarchar(100)='',
@Comment2By nvarchar(100)='',
@Comment3By nvarchar(100)='',
@EffectiveDate datetime,
@IsActive BIT,
@CreatedBy nvarchar(100),
@EffectedDocumentIDs nvarchar(500) = '',
@WorkflowStatusID int,
@IsPublished int = 0,
@OrganizationID int

AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	DECLARE @DCRID int
	
	IF @DocumentChangeRequestID = 0  
	BEGIN
		INSERT INTO DocumentChangeRequest(
			RequestNumber,
			DocumentID,
			DepartmentID,
			Detail,
			Reason,
			Comment1,
			Comment2,
			Comment3,
			Comment1By,
			Comment2By,
			Comment3By,
			EffectedDocumentIDs,
			EffectiveDate,
			IsActive,
			CreatedBy,
			CreatedOn,
			WorkflowStatusID,
			IsPublished,
			OrganizationID)
		VALUES (
			@RequestNumber,
			@DocumentID,
			@DepartmentID,
			@Detail,
			@Reason,
			@Comment1,
			@Comment2,
			@Comment3,
			@Comment1By,
			@Comment2By,
			@Comment3By,
			@EffectedDocumentIDs,
			@EffectiveDate,
			@IsActive,
			@CreatedBy,
			getdate(),
			@WorkflowStatusID,
			@IsPublished,
			@OrganizationID
			)
		
		SET @DCRID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE DocumentChangeRequest SET
			RequestNumber = @RequestNumber,
			DocumentID = @DocumentID,
			DepartmentID = @DepartmentID,
			Detail = @Detail,
			Reason = @Reason,
			Comment1 = @Comment1,
			Comment2 = @Comment2,
			Comment3 = @Comment3,
			Comment1By = @Comment1By,
			Comment2By = @Comment2By,
			Comment3By = @Comment3By,
			EffectiveDate = @EffectiveDate,
			EffectedDocumentIDs = @EffectedDocumentIDs,
			IsActive = @IsActive,
			ModifiedOn = getdate(),
			WorkflowStatusID = @WorkflowStatusID,
			IsPublished = @IsPublished,
			OrganizationID = @OrganizationID
		WHERE DocumentChangeRequestID = @DocumentChangeRequestID
		
		SET @DCRID = @DocumentChangeRequestID
	END
	
	SELECT @DCRID
END
GO

