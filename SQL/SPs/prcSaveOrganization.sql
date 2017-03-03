USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveOrganization]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveOrganization]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveOrganization    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 
-- @OrganizationID int,
-- @OrganizationName nvarchar(50),
-- @OrganizationAbreviation nvarchar(50),
-- @OrganizationAddress, nvarchar(max),
-- @ContactNumber nvarchar(10),
-- @FaxNumber nvarchar(10),
-- @EmailId nvarchar(50),
-- @Website nvarchar(50),
-- @UserID int
-- Return Values:    
-- i.e:   
/*
prcSaveOrganization 1,'ADITYA CONSTRUCTIONS COMPANY (I) PVT. LTD','ACC', 'Aditya Mansion, Plot No A/29 Road No 5, Jubilee Hills, Hyderabad - 500 033',
'Aditya1 Mansion, Plot No A/29 Road No 5, Jubilee Hills, Hyderabad - 500 033','9966273949','99662739500','99662739500','nsinha@hotmail.com','www.xorin.in', 1
*/
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveOrganization]    
@OrganizationID int,
@OrganizationName nvarchar(100),
@OrganizationAbreviation nvarchar(50),
@OrganizationAddress nvarchar(max),
@CorporateAddress nvarchar(max),
@ContactNumber nvarchar(10),
@OfficePhoneNumber nvarchar(11),
@FaxNumber nvarchar(11),
@EmailId nvarchar(50),
@Website nvarchar(100),
@UserID int,
@TerminologyID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @OrgID int
	
	IF @OrganizationID = 0  
	BEGIN
		INSERT INTO ORGANIZATION(OrganizationName, OrganizationAbreviation, OrganizationAddress,CorporateAddress,
		ContactNumber, OfficePhoneNumber, FaxNumber, EmailId, Website, CreatedOn, TerminologyID)
		VALUES (@OrganizationName, @OrganizationAbreviation, @OrganizationAddress,@CorporateAddress, 
		@ContactNumber, @OfficePhoneNumber, @FaxNumber, @EmailId, @Website, GETDATE(),@TerminologyID)
	SET @OrgID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE ORGANIZATION SET OrganizationName = @OrganizationName, 
		OrganizationAbreviation = @OrganizationAbreviation, 
		OrganizationAddress = @OrganizationAddress,
		CorporateAddress = @CorporateAddress,
		ContactNumber = @ContactNumber, 
		OfficePhoneNumber = @OfficePhoneNumber,
		FaxNumber = @FaxNumber, 
		EmailId = @EmailId, 
		Website = @Website, 
		ModifiedOn = GETDATE(),
		TerminologyID = @TerminologyID
		WHERE OrganizationID = @OrganizationID
	SET @OrgID = @OrganizationID
	END
	
	UPDATE Users 
	SET OrganizationID = @OrgID
	WHERE UserID = @UserID
	-- Return new org id
	EXEC prcGetOrganizationDetails @OrgID
END
GO

