USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcDeleteUser]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcDeleteUser]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcDeleteUser    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcDeleteUser]    
	@UserEmail nvarchar(50)

AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	UPDATE Users
	SET IsActive = 0,
	ModifiedOn = GETDATE()
	WHERE UserEmail = @UserEmail
	
	select 1
END
GO

