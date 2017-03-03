USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcCheckOutDocument]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcCheckOutDocument]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcCheckOutDocument    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: inserts new document
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcCheckOutDocument]    
	@DocumentID int,
	@CheckOut bit, -- 1 for checkout, 0 for undo checkout
	@CheckedBy nvarchar(100)
AS     
BEGIN    
      
	
		if @CheckOut = 1
		begin
		update Document set CheckInStatus=0,
							CheckOutBy = @CheckedBy
							where DocumentID = @DocumentID
		end
		else
		begin
		update Document set CheckInStatus=1,
							CheckOutBy = null
							where DocumentID = @DocumentID
		end
	
	exec prcGetDocumentDetails @DocumentID
						
END
GO

