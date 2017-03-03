USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveDocumentLevels]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveDocumentLevels]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocumentLevels    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocumentLevels]    
	@OrganizationID int,
	@LevelID int,
	@SubLevelID int,
	@Name nvarchar(100),
	@Abbreviate nvarchar(6),
	@DeactivateOld INT = 0
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	-- Deactivate previous records
	IF @DeactivateOld = 1
	BEGIN 
		UPDATE DocumentLevels
		SET IsActive = 0
		WHERE OrganizationID = @OrganizationID
	END 
	-- Insert new if not exists
	IF NOT EXISTS (SELECT 1 FROM DocumentLevels WHERE OrganizationID = @OrganizationID
			AND LevelID = @LevelID 
			AND SubLevelID = @SubLevelID)
	BEGIN
		INSERT INTO DocumentLevels(
			OrganizationID,
			LevelID,
			SubLevelID,
			Name,
			Abbreviate,
			IsActive,
			CreatedOn,
			ModifiedOn
			)
		VALUES (
			@OrganizationID,
			@LevelID,
			@SubLevelID,
			@Name,
			@Abbreviate,
			1,
			GETDATE(),
			GETDATE()
			)
	END
	ELSE 
	BEGIN
		UPDATE DocumentLevels SET 
			Name = @Name,
			Abbreviate = @Abbreviate,
			IsActive = 1,
			ModifiedOn = GETDATE()
		WHERE OrganizationID = @OrganizationID
			AND LevelID = @LevelID 
			AND SubLevelID = @SubLevelID
		
	END

	SELECT 1
END
GO

