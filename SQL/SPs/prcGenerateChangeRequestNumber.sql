USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGenerateChangeRequestNumber]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGenerateChangeRequestNumber]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGenerateChangeRequestNumber    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGenerateChangeRequestNumber @DepartmentID=1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGenerateChangeRequestNumber]    
	@DepartmentID INT
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	DECLARE @DepartmentAbbreviate VARCHAR(10) 
	SELECT @DepartmentAbbreviate = DepartmentAbbreviate FROM Department WHERE DepartmentID = @DepartmentID

	DECLARE @DCR_COUNT int
	SELECT @DCR_COUNT = COUNT(DepartmentID) FROM DocumentChangeRequest WHERE DepartmentID = @DepartmentID

	DECLARE @DCR VARCHAR(30)
	SELECT @DCR = 'DCR-' + ltrim(rtrim(@DepartmentAbbreviate)) + '-' + RIGHT('000' + CAST((@DCR_COUNT + 1) AS VARCHAR(3)), 3) + '-' + convert(varchar(4),year(GETDATE()))
	
	SELECT @DCR

END
GO
