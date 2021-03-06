USE [master]
GO
/****** Object:  Database [eQMS]    Script Date: 05/20/2013 11:23:57 ******/
CREATE DATABASE [eQMS] ON  PRIMARY 
( NAME = N'eQMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQL2008DEV\MSSQL\DATA\eQMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eQMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQL2008DEV\MSSQL\DATA\eQMS_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eQMS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eQMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eQMS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [eQMS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [eQMS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [eQMS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [eQMS] SET ARITHABORT OFF
GO
ALTER DATABASE [eQMS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [eQMS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [eQMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [eQMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [eQMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [eQMS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [eQMS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [eQMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [eQMS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [eQMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [eQMS] SET  DISABLE_BROKER
GO
ALTER DATABASE [eQMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [eQMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [eQMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [eQMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [eQMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [eQMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [eQMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [eQMS] SET  READ_WRITE
GO
ALTER DATABASE [eQMS] SET RECOVERY FULL
GO
ALTER DATABASE [eQMS] SET  MULTI_USER
GO
ALTER DATABASE [eQMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [eQMS] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'eQMS', N'ON'
GO
USE [eQMS]
GO

/****** Object:  Table [dbo].[Terminology]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Terminology](
	[TerminologyID] [int] IDENTITY(1,1) NOT NULL,
	[TerminologyName] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Terminology] PRIMARY KEY CLUSTERED 
(
	[TerminologyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[RoleGroup]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleGroup](
	[RoleGroupID] [int] IDENTITY(1,1) NOT NULL,
	[RoleGroupName] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_RoleGroup] PRIMARY KEY CLUSTERED 
(
	[RoleGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Role]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[RoleGroupConfiguration]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleGroupConfiguration](
	[RoleGroupConfigurationID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[RoleGroupID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsGranted] [BIT] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_RoleGroupConfiguration] PRIMARY KEY CLUSTERED 
(
	[RoleGroupConfigurationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[UserRoleGroup]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoleGroup](
	[UserRoleGroupID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleGroupID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [BIT] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_UserRoleGroup] PRIMARY KEY CLUSTERED 
(
	[UserRoleGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


/****** Object:  Table [dbo].[Organization]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationName] [nvarchar](50) NOT NULL,
	[OrganizationAbreviation] [nvarchar](50) NULL,
	[OrganizationAddress] [nvarchar](max) NOT NULL,
	[CorporateAddress] [nvarchar](max) NULL,
	[ContactNumber] [nvarchar](10) NOT NULL,
	[OfficePhoneNumber] [nvarchar](11) NULL,
	[FaxNumber] [nvarchar](11) NULL,
	[EmailId] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[TerminologyID] [INT] DEFAULT 1,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentMaster]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentMaster](
	[DocumentMasterID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int]  NOT NULL,
	[IssueApplicable] [bit] NOT NULL,
	[VersionOrRevision] [int] NOT NULL,
	[InitialNumber] [decimal](10, 1) NULL,
	[IncrementBy] [decimal](3, 1) NULL,
	[DocumentName1] [nvarchar](50) NULL,
	[DocumentType1] [nvarchar](50) NULL,
	[DocumentName2] [nvarchar](50) NULL,
	[DocumentType2] [nvarchar](50) NULL,
	[DocumentName3] [nvarchar](50) NULL,
	[DocumentType3] [nvarchar](50) NULL,
	[DocumentName4] [nvarchar](50) NULL,
	[DocumentType4] [nvarchar](50) NULL,
	[SerialNumber] [nvarchar](50) NULL,
	[IsActive] [bit] DEFAULT 1 NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_DocumentMaster] PRIMARY KEY CLUSTERED 
(
	[DocumentMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DocumentMaster]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO

/****** Object:  Table [dbo].[DocumentLevelDetail]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentLevels](
	[DocumentLevelsID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[LevelID] [int] NOT NULL,
	[SubLevelID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Abbreviate] [nvarchar](50) NOT NULL,
	[IsActive] [bit] DEFAULT 1 NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DocumentLevels] PRIMARY KEY CLUSTERED 
(
	[DocumentLevelsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[DepartmentAbbreviate] [nvarchar](4) NULL,
	[HODName] [nvarchar](50) NULL,
	[LLNumber] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](10) NULL,
	[EmailId] [nvarchar](50) NULL,
	[SubProcess] [nvarchar](5) NULL,
	[ReviewerName] [nvarchar](50) NULL,
	[ReviewerLLNumber] [nvarchar](50) NULL,
	[ReviewerMobileNumber] [nvarchar](10) NULL,
	[ReviewerEmailID] [nvarchar](50) NULL,
	[IsHODApprover] [bit] NULL,
	[ApproverName] [nvarchar](50) NULL,
	[ApproverLLNumber] [nvarchar](50) NULL,
	[ApproverMobileNumber] [nvarchar](50) NULL,
	[ApproverEmailID] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[DeleteReason] [nvarchar](200) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[SubDepartmentID] [int] NOT NULL,
	[DocumentType] [nvarchar](100) NULL,
	[DocumentNumber] [nvarchar](100) NULL,
	[DocumentName] [nvarchar](50) NULL,
	[Version] [nvarchar](50) NULL,
	[FileType] [nvarchar](10) NULL,
	[IsActive] [bit] NOT NULL,
	[CheckInStatus] [bit] DEFAULT 1,
	[WorkflowStatusID] [int] DEFAULT 1,
	[CheckOutBy] [nvarchar](100),
	[AssignedTo] int,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DocumentChangeRequest]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentChangeRequest](
	[DocumentChangeRequestID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[RequestNumber] [nvarchar](100) NOT NULL,
	[DocumentID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Detail] [nvarchar](100) NULL,
	[Reason] [nvarchar](100) NULL,
	[Comment1] [nvarchar](100) NULL,
	[Comment2] [nvarchar](100) NULL,
	[Comment3] [nvarchar](100) NULL,
	[Comment1By] [nvarchar](100) NULL,
	[Comment2By] [nvarchar](100) NULL,
	[Comment3By] [nvarchar](100) NULL,
	[EffectedDocumentIDs] [nvarchar](500) NULL,
	[EffectiveDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[WorkflowStatusID] [int] DEFAULT 1,
	[IsPublished] [int] DEFAULT 0,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocumentChangeRequest] PRIMARY KEY CLUSTERED 
(
	[DocumentChangeRequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[WorkflowStatus]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowStatus](
	[WorkflowStatusID] [int] IDENTITY(1,1) NOT NULL,
	[WorkflowStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_WorkflowStatus] PRIMARY KEY CLUSTERED 
(
	[WorkflowStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDepartment]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDepartment](
	[SubDepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[SubDepartmentName] [nvarchar](50) NOT NULL,
	[SubDepartmentAbbreviate] [nvarchar](4) NULL,
	[HODName] [nvarchar](50) NULL,
	[LLNumber] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](10) NULL,
	[EmailId] [nvarchar](50) NULL,
--	[SubProcess] [nvarchar](5) NULL,
	[ReviewerName] [nvarchar](50) NULL,
	[ReviewerLLNumber] [nvarchar](50) NULL,
	[ReviewerMobileNumber] [nvarchar](10) NULL,
	[ReviewerEmailID] [nvarchar](50) NULL,
	[IsHODApprover] [bit] NOT NULL,
	[ApproverName] [nvarchar](50) NULL,
	[ApproverLLNumber] [nvarchar](50) NULL,
	[ApproverMobileNumber] [nvarchar](50) NULL,
	[ApproverEmailID] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[DeleteReason] [nvarchar](200) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SubDepartment] PRIMARY KEY CLUSTERED 
(
	[SubDepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OrganizationID] [int] NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[RoleGroupID] [int] NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[Mobile] [nvarchar](11) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[TempPassword] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[AuditCertifications]    Script Date: 05/20/2013 11:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditCertifications](
	[AuditCertificationsID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[Text] [nvarchar](1000) NULL,
	[TrainingDate] [datetime] NULL,
 CONSTRAINT [PK_AuditCertifications] PRIMARY KEY CLUSTERED 
(
	[AuditCertificationsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  ForeignKey [FK_DocumentChangeRequest_Document]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentChangeRequest]  WITH CHECK ADD  CONSTRAINT [FK_DocumentChangeRequest_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO

/****** Object:  Default [DF_DocumentLevels_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentLevels] ADD  CONSTRAINT [DF_DocumentLevels_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_DocumentLevels_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentLevels] ADD  CONSTRAINT [DF_DocumentLevels_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_RoleGroup_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[RoleGroup] ADD  CONSTRAINT [DF_RoleGroup_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_RoleGroup_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[RoleGroup] ADD  CONSTRAINT [DF_RoleGroup_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_Organization_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Organization] ADD  CONSTRAINT [DF_Organization_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Organization_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Organization] ADD  CONSTRAINT [DF_Organization_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_DocumentMaster_IssueApplicable]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentMaster] ADD  CONSTRAINT [DF_DocumentMaster_IssueApplicable]  DEFAULT ((0)) FOR [IssueApplicable]
GO
/****** Object:  Default [DF_DocumentMaster_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentMaster] ADD  CONSTRAINT [DF_DocumentMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_DocumentMaster_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentMaster] ADD  CONSTRAINT [DF_DocumentMaster_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_Department_IsActive]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Department_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Department_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_Document_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Document_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_SubDepartment_IsActive]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[SubDepartment] ADD  CONSTRAINT [DF_SubDepartment_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_SubDepartment_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[SubDepartment] ADD  CONSTRAINT [DF_SubDepartment_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_SubDepartment_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[SubDepartment] ADD  CONSTRAINT [DF_SubDepartment_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF_Users_IsActive]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Users_CreatedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
/****** Object:  Default [DF_Users_ModifiedOn]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  ForeignKey [FK_DocumentLevelDetail_DocumentLevel]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[DocumentLevels]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
/****** Object:  ForeignKey [FK__Departmen__Organ__7B264821]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
/****** Object:  ForeignKey [FK_Document_Department]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Department]
GO
/****** Object:  ForeignKey [FK_SubDepartment_Department]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[SubDepartment]  WITH CHECK ADD  CONSTRAINT [FK_SubDepartment_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[SubDepartment] CHECK CONSTRAINT [FK_SubDepartment_Department]
GO
/****** Object:  ForeignKey [FK_Users_Department]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Department]
GO
/****** Object:  ForeignKey [FK_Users_Organization]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Organization]
GO
/****** Object:  ForeignKey [FK_Users_RoleGroup]    Script Date: 05/20/2013 11:23:58 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_RoleGroup] FOREIGN KEY([RoleGroupID])
REFERENCES [dbo].[RoleGroup] ([RoleGroupID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_RoleGroup]
GO

