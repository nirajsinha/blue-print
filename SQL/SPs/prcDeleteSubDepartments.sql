USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcDeleteSubDepartments]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcDeleteSubDepartments]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcDeleteSubDepartments    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: deletes details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcDeleteSubDepartments '1,4,5' 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcDeleteSubDepartments]    
	@SubDepartmentIDs VARCHAR(100),
	@DeleteReason nvarchar(200)
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	DECLARE @temp TABLE (idx INT, value NVARCHAR(200)) 
	INSERT INTO @temp  
	SELECT idx, [Value]   
	FROM dbo.fn_Split(@SubDepartmentIDs,',')   
	
	DECLARE @SubDeptID INT
	DECLARE SubDeptCursor CURSOR FAST_FORWARD
	FOR
	SELECT [Value]
	FROM @temp

	OPEN SubDeptCursor
		FETCH NEXT FROM SubDeptCursor INTO @SubDeptID
		WHILE @@FETCH_STATUS = 0
		BEGIN
			UPDATE SubDepartment SET 
			IsActive = 0,
			DeleteReason = @DeleteReason,
			ModifiedOn = GETDATE()
			WHERE SubDepartmentID = @SubDeptID
			
			--PRINT CAST(@DeptID AS VARCHAR(5))
			FETCH NEXT FROM SubDeptCursor INTO @SubDeptID
		END
	CLOSE SubDeptCursor
	DEALLOCATE SubDeptCursor

	SELECT 1
	
END
GO

