USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcDeleteDocument]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcDeleteDocument]
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcDeleteDocument    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: inserts new document
-- Sample: 
--	prcDeleteDocument @DocumentID=22, @ModifiedBy='admin@eqms.com'
-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcDeleteDocument]    
	@DocumentID int,
	@ModifiedBy nvarchar(100)
AS     
BEGIN    
      
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	update Document set IsActive = 0, 
				ModifiedOn = GETDATE(),
				ModifiedBy = @ModifiedBy
	where DocumentID = @DocumentID
	
	SELECT 1
END
GO

