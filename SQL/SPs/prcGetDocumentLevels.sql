USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentLevels]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentLevels]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentLevels    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentLevels]    
	@OrganizationID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	
	SELECT OrganizationID,
		LevelID,
		SubLevelID,
		Name,
		Abbreviate,
		IsActive
		FROM DocumentLevels
		WHERE OrganizationID = @OrganizationID
		AND IsActive = 1
	ORDER BY LevelID, SubLevelID
	SELECT 1
END
GO

