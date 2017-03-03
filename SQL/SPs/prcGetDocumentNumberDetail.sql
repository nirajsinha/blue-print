USE [eQMS]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prcGetDocumentNumberDetail]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[prcGetDocumentNumberDetail]
GO

/*
declare @DocumentNumber varchar(100)
exec prcGetDocumentNumberDetail 'STANDARD OPERATING PROCEDURES', 1, 0, 1, @DocumentNumber output
select @DocumentNumber
*/
CREATE PROCEDURE [dbo].[prcGetDocumentNumberDetail]    
	@DocumentType nvarchar(100),
	@DepartmentID int,
    @SubDepartmentID int,
    @OrgID int,
	@DocumentNumber nvarchar(100) output
AS     
BEGIN    
      
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

-- Build document number
		-- Type 0 - Text for Name
		-- Type 1 - Abbreviate for DocSubLevel
		-- Type 2 - Abbreviate for Department
		-- Type 3 - Abbreviate for SubDepartment
		-- Type 4 - Abbreviate for Organization
		
		declare @DeptCode varchar(100)
		declare @SubDeptCode varchar(100)
		declare @OrgCode varchar(100)
		declare @DocTypeCode varchar(100)
		
		declare @DocMasterName1 varchar(100)
		declare @DocMasterName2 varchar(100)
		declare @DocMasterName3 varchar(100)
		declare @DocMasterName4 varchar(100)
		declare @DocMasterType1 varchar(100)
		declare @DocMasterType2 varchar(100)
		declare @DocMasterType3 varchar(100)
		declare @DocMasterType4 varchar(100)
		
		select @DocMasterName1 = DocumentName1,	@DocMasterName2 = DocumentName2, @DocMasterName3 = DocumentName3, 
		@DocMasterName4 = DocumentName4, @DocMasterType1 = DocumentType1,	@DocMasterType2 = DocumentType2, 
		@DocMasterType3 = DocumentType3, @DocMasterType4 = DocumentType4
		from DocumentMaster where OrganizationID = @OrgID
		
		-- Build names 
		-- Part 1
		if @DocMasterType1 = 0
		begin
			IF len(isnull(@DocMasterName1,'')) > 0
			BEGIN 
				set @DocumentNumber  = @DocMasterName1 +'/'
			END
		end
		if @DocMasterType1 = 1
		begin
			set @DocumentNumber  = (select Abbreviate from DocumentLevels where Name = @DocumentType) +'/'
		end
		if @DocMasterType1 = 2
		begin
			set @DocumentNumber  = (select DepartmentAbbreviate from Department where DepartmentID = @DepartmentID) +'/'
		end
		if @DocMasterType1 = 3
		begin
			if @SubDepartmentID > 0
			begin
				set @DocumentNumber   = (select SubDepartmentAbbreviate from SubDepartment where SubDepartmentID = @SubDepartmentID) +'/'
			end
		end
		if @DocMasterType1 = 4
		begin
			set @DocumentNumber  = (select OrganizationAbreviation from Organization where OrganizationID = @OrgID) +'/'
		end
		
		-- Part 2
		if @DocMasterType2 = 0
		begin
			IF len(isnull(@DocMasterName2,'')) > 0
			BEGIN
				set @DocumentNumber  = @DocumentNumber + @DocMasterName2 +'/'
			END
		end
		if @DocMasterType2 = 1
		begin
			set @DocumentNumber  = @DocumentNumber + (select Abbreviate from DocumentLevels where Name = @DocumentType) +'/'
		end
		if @DocMasterType2 = 2
		begin
			set @DocumentNumber  = @DocumentNumber + (select DepartmentAbbreviate from Department where DepartmentID = @DepartmentID) +'/'
		end
		if @DocMasterType2 = 3
		begin
			if @SubDepartmentID > 0
			begin
				set @DocumentNumber   = @DocumentNumber + (select SubDepartmentAbbreviate from SubDepartment where SubDepartmentID = @SubDepartmentID) +'/'
			end
		end
		if @DocMasterType2 = 4
		begin
			set @DocumentNumber  = @DocumentNumber + (select OrganizationAbreviation from Organization where OrganizationID = @OrgID) +'/'
		end
		
		-- Part 3
		if @DocMasterType3 = 0
		begin
			IF len(isnull(@DocMasterName3,'')) > 0
			BEGIN
				set @DocumentNumber  = @DocumentNumber + @DocMasterName3 +'/'
			END 
		end
		if @DocMasterType3 = 1
		begin
			set @DocumentNumber  = @DocumentNumber + (select Abbreviate from DocumentLevels where Name = @DocumentType) +'/'
		end
		if @DocMasterType3 = 2
		begin
			set @DocumentNumber  = @DocumentNumber + (select DepartmentAbbreviate from Department where DepartmentID = @DepartmentID) +'/'
		end
		if @DocMasterType3 = 3
		begin
			if @SubDepartmentID > 0
			begin
				set @DocumentNumber   = @DocumentNumber + (select SubDepartmentAbbreviate from SubDepartment where SubDepartmentID = @SubDepartmentID) +'/'
			end
		end
		if @DocMasterType3 = 4
		begin
			set @DocumentNumber  = @DocumentNumber + (select OrganizationAbreviation from Organization where OrganizationID = @OrgID) +'/'
		end
		
		-- Part 4
		if @DocMasterType4 = 0
		begin
			IF len(isnull(@DocMasterName4,'')) > 0
			BEGIN
				set @DocumentNumber  = @DocumentNumber + @DocMasterName4 +'/'
			END 
		end
		if @DocMasterType4 = 1
		begin
			set @DocumentNumber  = @DocumentNumber + (select Abbreviate from DocumentLevels where Name = @DocumentType) +'/'
		end
		if @DocMasterType4 = 2
		begin
			set @DocumentNumber  = @DocumentNumber + (select DepartmentAbbreviate from Department where DepartmentID = @DepartmentID) +'/'
		end
		if @DocMasterType4 = 3
		begin
			if @SubDepartmentID > 0
			begin
				set @DocumentNumber   = @DocumentNumber + (select SubDepartmentAbbreviate from SubDepartment where SubDepartmentID = @SubDepartmentID) +'/'
			end
		end
		if @DocMasterType4 = 4
		begin
			set @DocumentNumber  = @DocumentNumber + (select OrganizationAbreviation from Organization where OrganizationID = @OrgID) +'/'
		end
	
	-- Calculate serial number
		declare @DocNumber varchar(50)
		declare @SerialNumber varchar(10)
		declare @tempdocid int
		select @tempdocid = MAX(DocumentID)  FROM Document where DocumentNumber like @DocumentNumber+'%' order by 1 desc
		if @tempdocid is not null
		begin

			select @DocNumber =DocumentNumber from Document	WHERE DocumentID = @tempdocid
			
			SELECT @SerialNumber=value 
			FROM  dbo.fn_Split(@DocNumber,'/')
			WHERE   idx = (SELECT MAX(idx)  FROM dbo.fn_Split(@DocNumber,'/'))

			if LEN(LTRIM(RTRIM(ISNULL(@SerialNumber,'')))) = 0
			begin
				select @SerialNumber = serialnumber from DocumentMaster where OrganizationID=@OrgID and IsActive=1
			end
			else
			begin
				select @SerialNumber = convert(varchar(10),( CONVERT(int,@serialnumber) + 1))
			end
		end
		else
		begin
			select @SerialNumber = serialnumber from DocumentMaster where OrganizationID=1 and IsActive=1
		end

		set @DocumentNumber = @DocumentNumber + @Serialnumber

	-- End
END