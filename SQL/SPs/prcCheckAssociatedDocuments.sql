USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcCheckAssociatedDocuments]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcCheckAssociatedDocuments]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcCheckAssociatedDocuments    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 
--prcCheckAssociatedDocuments 1, 'QUALITY MANUALS'
-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcCheckAssociatedDocuments]    
	@OrganizationID INT,
	@DocType VARCHAR(100)
	
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @IsExists INT = 0
	IF EXISTS (SELECT 1 FROM Document d (nolock)
		join Department dp (nolock) on d.DepartmentID = dp.DepartmentID
		where dp.OrganizationID = @OrganizationID
		and RTRIM(LTRIM(d.DocumentType)) = RTRIM(LTRIM(@DocType))
		and d.IsActive = 1 )
	BEGIN 
		SELECT @IsExists = 1
	END
	print @IsExists
	SELECT @IsExists

END
GO
