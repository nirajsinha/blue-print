USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcChangePassword]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcChangePassword]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcChangePassword    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- @UserID int,
-- @NewPassword nvarchar(50),
-- Return Values:    
-- i.e:   
-- prcChangePassword 1,'password'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcChangePassword]    
@UserID int,
@NewPassword nvarchar(50)
AS     
BEGIN    
  
	UPDATE Users 
	SET [Password] = @NewPassword,
	TempPassword='',
	ModifiedOn = GETDATE()
	WHERE UserID = @UserID

	-- Return new org id
	SELECT 1;
END
GO

