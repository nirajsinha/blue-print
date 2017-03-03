USE [Blueprint]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentChangeRequestList]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentChangeRequestList]
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentChangeRequestList    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentChangeRequestList 1
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentChangeRequestList]    
	@OrganizationID int
AS     
BEGIN    
  
	SELECT dcr.DocumentChangeRequestID,
	dcr.RequestNumber,
	ws.WorkflowStatusName,
	d.DocumentID,
	dt.DepartmentName,
	d.DocumentNumber,
	d.[Version],
	dcr.Detail,
	dcr.Reason,
	(SELECT CONVERT(VARCHAR(10), dcr.EffectiveDate, 105) as [DD-MM-YYYY]) as EffectiveDate,
	dcr.CreatedOn,
	dcr.CreatedBy,
	dcr.EffectedDocumentIDs
	FROM Department dt (nolock)
	join Document d (nolock) ON d.DepartmentID = dt.DepartmentID
	join DocumentChangeRequest dcr (nolock) ON d.DocumentID = dcr.DocumentID
	join WorkflowStatus ws (nolock) ON dcr.WorkflowStatusID = ws.WorkflowStatusID
	--WHERE dcr.DocumentChangeRequestID = COALESCE(@DocumentChangeRequestID, dcr.DocumentChangeRequestID)
	--where	dcr.IsActive = 1
	where dcr.OrganizationID = @OrganizationID
END
GO


