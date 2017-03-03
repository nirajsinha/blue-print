USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetOrganizationDetailsByUserEmail]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetOrganizationDetailsByUserEmail]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetOrganizationDetailsByUserEmail    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves organization details based on UserID
-- Parameters: @UserEmail    
-- Return Values:    
-- i.e:   
-- prcGetOrganizationDetailsByUserEmail 'admin@eqms.com'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetOrganizationDetailsByUserEmail]    
 @UserEmail  nvarchar(100)
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 

	-- Find organizationid for given user
	DECLARE @OrganizationID INT
	SELECT @OrganizationID = org.OrganizationID 
	FROM [Users] us (nolock)
	inner join Organization org (nolock) ON org.OrganizationID = us.OrganizationID
	WHERE us.UserEmail = @UserEmail
	
	-- Return organization details
	EXEC prcGetOrganizationDetails @OrganizationID  
	
END
GO

