USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentChangeRequest]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentChangeRequest]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentChangeRequest    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentChangeRequest @DocumentID=54
-- i.e:   prcGetDocumentChangeRequest @DocumentChangeRequestID=3  
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentChangeRequest]    
	@DocumentID INT = NULL,
	@DocumentChangeRequestID INT = NULL
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	declare @temp table(
		DocumentChangeRequestID int,
		RequestNumber varchar(200),
		DocumentID int,
		DepartmentID int,
		DocumentName varchar(200),
		DocumentNumber varchar(100),
		[Version] varchar(200),
		WorkflowStatusName varchar(200),
		Detail varchar(500),
		Reason varchar(500),
		Comment1 varchar(500),
		Comment2 varchar(500),
		Comment3 varchar(500),
		Comment1By varchar(500),
		Comment2By varchar(500),
		Comment3By varchar(500),
		EffectiveDate varchar(100),
		IsActive int,
		CreatedOn datetime,
		CreatedBy varchar(500),
		EffectedDocumentIDs  varchar(500)
	)
	
	insert into @temp
	SELECT dcr.DocumentChangeRequestID,
		dcr.RequestNumber,
		d.DocumentID,
		d.DepartmentID,
		d.DocumentName,
		d.DocumentNumber,
		d.[Version],
		ws.WorkflowStatusName,
		dcr.Detail,
		dcr.Reason,
		dcr.Comment1,
		dcr.Comment2,
		dcr.Comment3,
		dcr.Comment1By,
		dcr.Comment2By,
		dcr.Comment3By,
		(SELECT CONVERT(VARCHAR(10), dcr.EffectiveDate, 105) as [DD-MM-YYYY]) as EffectiveDate,
		dcr.IsActive,
		dcr.CreatedOn,
		dcr.CreatedBy,
		dcr.EffectedDocumentIDs
		FROM Document d (nolock)
		join WorkflowStatus ws (nolock) ON d.WorkflowStatusID = ws.WorkflowStatusID
		left join  DocumentChangeRequest dcr (nolock) ON d.DocumentID = dcr.DocumentID
		
	-- both value passed
	if( isnull(@DocumentChangeRequestID,0) > 0 and isnull(@DocumentID,0) > 0)
	begin
		SELECT * FROM @temp where DocumentChangeRequestID = @DocumentChangeRequestID and DocumentID = @DocumentID
    end
	else
	begin
		-- only dcr value passed
		if isnull(@DocumentChangeRequestID,0) > 0
		begin
			SELECT * FROM @temp where DocumentChangeRequestID = @DocumentChangeRequestID
		end
		else
		begin
		  -- both doc passed
		  if isnull(@DocumentID,0) > 0
		  begin
			SELECT * FROM @temp where DocumentID = @DocumentID
		  end
		  else
		  begin
			SELECT * FROM @temp
		  end
		end
	end

END
GO
