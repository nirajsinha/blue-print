USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcSaveUser]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcSaveUser]
GO

-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveUser    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveUser]    
	@UserID int,
	@Name nvarchar(50),
	@DepartmentID int = 0,
	@SubDepartmentID int = 0,
	@RoleGroupName nvarchar(50)= '',
	@UserEmail nvarchar(50)= '',
	@Phone nvarchar(11)= '',
	@Mobile nvarchar(11)= '',
	@Password nvarchar(50) = '',
	@TempPassword nvarchar(50) = '',
	@CertificationText nvarchar(1000) = '',
	@TrainingDate datetime = null
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @UID int
--	
	IF @DepartmentID = 0                                    
	BEGIN                                    
		RAISERROR ('DepartmentID cannot be 0', 16, 1)               
		RETURN -100                          
	END
	declare @OrganizationID int
	select @OrganizationID = OrganizationID from Department where DepartmentID = @DepartmentID
		
	IF @UserEmail = ''                                    
	BEGIN                                    
		RAISERROR ('Email cannot be 0', 16, 1)               
		RETURN -100                          
	END
	declare @RoleGroupID int
	select @RoleGroupID = isnull(RoleGroupID,2) from RoleGroup where RoleGroupName = @RoleGroupName
	IF @UserID = 0  
	BEGIN
		IF EXISTS (SELECT 1 FROM Users WHERE ltrim(rtrim(UserEmail)) = @UserEmail and IsActive = 1)
		BEGIN
			RAISERROR ('Email already registered. Please enter another email or modify the user', 16, 1)               
			RETURN -100
		END 
		ELSE
		BEGIN
			INSERT INTO Users(
				Name,
				OrganizationID,
				DepartmentID,
				SubDepartmentID,
				RoleGroupID,
				UserEmail,
				Phone,
				Mobile,
				Password,
				TempPassword,
				IsActive,
				CreatedOn,
				ModifiedOn
				)
			VALUES (
				@Name,
				@OrganizationID,
				@DepartmentID,
				@SubDepartmentID,
				@RoleGroupID,
				@UserEmail,
				@Phone,
				@Mobile,
				@Password,
				@TempPassword,
				1,
				GETDATE(),
				GETDATE()
				
			)
			SET @UID = @@identity
		END
	END
	ELSE 
	BEGIN
		IF @OrganizationID > 0                                    
		BEGIN                                    
			UPDATE Users SET 
			OrganizationID = @OrganizationID
			WHERE UserID = @UserID                
		END 
		IF @DepartmentID > 0                                    
		BEGIN                                    
			UPDATE Users SET 
			DepartmentID = @DepartmentID
			WHERE UserID = @UserID                         
		END 
		IF @SubDepartmentID > 0                                    
		BEGIN                                    
			UPDATE Users SET 
			SubDepartmentID = @SubDepartmentID
			WHERE UserID = @UserID                     
		END 
		IF @RoleGroupID > 0                                    
		BEGIN                                    
			UPDATE Users SET 
			RoleGroupID = @RoleGroupID
			WHERE UserID = @UserID                         
		END
		IF @UserEmail != ''                                    
		BEGIN                                    
			UPDATE Users SET 
			UserEmail = @UserEmail
			WHERE UserID = @UserID                         
		END
		IF @Phone != ''                                       
		BEGIN                                    
			UPDATE Users SET 
			Phone = @Phone
			WHERE UserID = @UserID                             
		END
		IF @Mobile != ''                                       
		BEGIN                                    
			UPDATE Users SET 
			Mobile = @Mobile
			WHERE UserID = @UserID                             
		END
		IF @Password != ''                                       
		BEGIN                                    
			UPDATE Users SET 
			Password = @Password
			WHERE UserID = @UserID                            
		END
		IF @TempPassword != ''                                       
		BEGIN                                    
			UPDATE Users SET 
			TempPassword = @TempPassword,
			Password = @Password
			WHERE UserID = @UserID                             
		END
	
			UPDATE Users SET 
			ModifiedOn = getdate()
			WHERE UserID = @UserID 
				
		SET @UID = @UserID
	END
	
	IF EXISTS(SELECT * FROM AuditCertifications WHERE UserID = @UID)
	BEGIN
		UPDATE AuditCertifications SET Text=@CertificationText,
		TrainingDate = @TrainingDate
		WHERE UserID = @UID
	END
	ELSE
	BEGIN
		INSERT INTO AuditCertifications(UserID, Text, TrainingDate)
		VALUES (@UID,@CertificationText,@TrainingDate)
	END
	
	

	select @UID
END
GO

