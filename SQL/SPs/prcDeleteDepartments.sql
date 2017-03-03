USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcDeleteDepartments]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcDeleteDepartments]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcDeleteDepartments    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: deletes details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcDeleteDepartments '1,4,5' 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcDeleteDepartments]    
	@DepartmentIDs VARCHAR(100),
	@DeleteReason nvarchar(200)
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	DECLARE @temp TABLE (idx INT, value NVARCHAR(200)) 
	INSERT INTO @temp  
	SELECT idx, [Value]   
	FROM dbo.fn_Split(@DepartmentIDs,',')   
	
	DECLARE @DeptID INT
	DECLARE DeptCursor CURSOR FAST_FORWARD
	FOR
	SELECT [Value]
	FROM @temp

	OPEN DeptCursor
		FETCH NEXT FROM DeptCursor INTO @DeptID
		WHILE @@FETCH_STATUS = 0
		BEGIN
			UPDATE Department SET 
			IsActive = 0,
			DeleteReason = @DeleteReason,
			ModifiedOn = GETDATE()
			WHERE DepartmentID = @DeptID
			
			-- Delete all subdepartments
			UPDATE SubDepartment SET 
			IsActive = 0,
			DeleteReason = @DeleteReason,
			ModifiedOn = GETDATE()
			WHERE DepartmentID = @DeptID

			--PRINT CAST(@DeptID AS VARCHAR(5))
			FETCH NEXT FROM DeptCursor INTO @DeptID
		END
	CLOSE DeptCursor
	DEALLOCATE DeptCursor

	SELECT 1
	
END
GO

