USE [Blueprint]
GO
/****** Object:  ForeignKey [FK__Departmen__Organ__267ABA7A]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [FK__Departmen__Organ__267ABA7A]
GO
/****** Object:  ForeignKey [FK_Document_Department]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [FK_Document_Department]
GO
/****** Object:  ForeignKey [FK_DocumentChangeRequest_Document]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[DocumentChangeRequest] DROP CONSTRAINT [FK_DocumentChangeRequest_Document]
GO
/****** Object:  ForeignKey [FK__DocumentL__Organ__59063A47]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[DocumentLevels] DROP CONSTRAINT [FK__DocumentL__Organ__59063A47]
GO
/****** Object:  ForeignKey [FK__DocumentM__Organ__628FA481]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[DocumentMaster] DROP CONSTRAINT [FK__DocumentM__Organ__628FA481]
GO
/****** Object:  ForeignKey [FK_SubDepartment_Department]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[SubDepartment] DROP CONSTRAINT [FK_SubDepartment_Department]
GO
/****** Object:  ForeignKey [FK_Users_Department]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Department]
GO
/****** Object:  ForeignKey [FK_Users_Organization]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Organization]
GO
/****** Object:  ForeignKey [FK_Users_RoleGroup]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_RoleGroup]
GO
/****** Object:  StoredProcedure [dbo].[prcCheckOutDocument]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcCheckOutDocument]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentHistory]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentHistory]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocument]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveDocument]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocumentChangeRequest]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveDocumentChangeRequest]
GO
/****** Object:  StoredProcedure [dbo].[prcGetOrganizationDetailsByUserEmail]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetOrganizationDetailsByUserEmail]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveOrganization]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveOrganization]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveSubDepartment]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveSubDepartment]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDepartment]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveDepartment]
GO
/****** Object:  StoredProcedure [dbo].[prcExecuteWorkflow]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcExecuteWorkflow]
GO
/****** Object:  StoredProcedure [dbo].[prcGenerateChangeRequestNumber]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGenerateChangeRequestNumber]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentChangeRequest]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentChangeRequest]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentChangeRequestList]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentChangeRequestList]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentDetails]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentDetails]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDepartmentDetails]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDepartmentDetails]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentList]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentList]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentNumberDetail]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentNumberDetail]
GO
/****** Object:  StoredProcedure [dbo].[prcGetOrganizationDetails]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetOrganizationDetails]
GO
/****** Object:  StoredProcedure [dbo].[prcValidateDocumentPermission]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcValidateDocumentPermission]
GO
/****** Object:  StoredProcedure [dbo].[prcValidateUserRole]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcValidateUserRole]
GO
/****** Object:  StoredProcedure [dbo].[prcDeleteDocument]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcDeleteDocument]
GO
/****** Object:  StoredProcedure [dbo].[prcDeleteSubDepartments]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcDeleteSubDepartments]
GO
/****** Object:  StoredProcedure [dbo].[prcDeleteUser]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcDeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[prcChangePassword]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcChangePassword]
GO
/****** Object:  StoredProcedure [dbo].[prcCheckAssociatedDocuments]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcCheckAssociatedDocuments]
GO
/****** Object:  Table [dbo].[DocumentChangeRequest]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[DocumentChangeRequest] DROP CONSTRAINT [FK_DocumentChangeRequest_Document]
GO
ALTER TABLE [dbo].[DocumentChangeRequest] DROP CONSTRAINT [DF__DocumentC__Workf__55BFB948]
GO
ALTER TABLE [dbo].[DocumentChangeRequest] DROP CONSTRAINT [DF__DocumentC__IsPub__56B3DD81]
GO
DROP TABLE [dbo].[DocumentChangeRequest]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveUser]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveUser]
GO
/****** Object:  StoredProcedure [dbo].[prcGetSubDepartmentDetails]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetSubDepartmentDetails]
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDashboardData]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetUserDashboardData]
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDetailsByEmail]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetUserDetailsByEmail]
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDetailsByID]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetUserDetailsByID]
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDetailsByOrganizationID]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetUserDetailsByOrganizationID]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocumentLevels]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveDocumentLevels]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocumentMaster]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveDocumentMaster]
GO
/****** Object:  StoredProcedure [dbo].[prcDeleteDepartments]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcDeleteDepartments]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [FK_Document_Department]
GO
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF_Document_CreatedOn]
GO
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF_Document_ModifiedOn]
GO
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF__Document__CheckI__2BFE89A6]
GO
ALTER TABLE [dbo].[Document] DROP CONSTRAINT [DF__Document__Workfl__57DD0BE4]
GO
DROP TABLE [dbo].[Document]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentMasterDetails]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentMasterDetails]
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentLevels]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetDocumentLevels]
GO
/****** Object:  Table [dbo].[SubDepartment]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[SubDepartment] DROP CONSTRAINT [FK_SubDepartment_Department]
GO
ALTER TABLE [dbo].[SubDepartment] DROP CONSTRAINT [DF_SubDepartment_IsActive]
GO
ALTER TABLE [dbo].[SubDepartment] DROP CONSTRAINT [DF_SubDepartment_CreatedOn]
GO
ALTER TABLE [dbo].[SubDepartment] DROP CONSTRAINT [DF_SubDepartment_ModifiedOn]
GO
DROP TABLE [dbo].[SubDepartment]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Department]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Organization]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_RoleGroup]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_IsActive]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_CreatedOn]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_ModifiedOn]
GO
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [FK__Departmen__Organ__267ABA7A]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF_Department_IsActive]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF_Department_CreatedOn]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF_Department_ModifiedOn]
GO
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[DocumentLevels]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[DocumentLevels] DROP CONSTRAINT [FK__DocumentL__Organ__59063A47]
GO
ALTER TABLE [dbo].[DocumentLevels] DROP CONSTRAINT [DF__DocumentL__IsAct__5812160E]
GO
DROP TABLE [dbo].[DocumentLevels]
GO
/****** Object:  Table [dbo].[DocumentMaster]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[DocumentMaster] DROP CONSTRAINT [FK__DocumentM__Organ__628FA481]
GO
ALTER TABLE [dbo].[DocumentMaster] DROP CONSTRAINT [DF__DocumentM__IsAct__619B8048]
GO
DROP TABLE [dbo].[DocumentMaster]
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserRoleGroupConfiguration]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetUserRoleGroupConfiguration]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveUserRoleGroup]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveUserRoleGroup]
GO
/****** Object:  StoredProcedure [dbo].[prcSaveRoleGroupConfiguration]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcSaveRoleGroupConfiguration]
GO
/****** Object:  StoredProcedure [dbo].[prcGetRoleGroupConfiguration]    Script Date: 02/19/2014 11:56:28 ******/
DROP PROCEDURE [dbo].[prcGetRoleGroupConfiguration]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [DF_DocumentType_IssueApplicable]
GO
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [DF_DocumentType_CreatedOn]
GO
ALTER TABLE [dbo].[DocumentType] DROP CONSTRAINT [DF_DocumentType_ModifiedOn]
GO
DROP TABLE [dbo].[DocumentType]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Split]    Script Date: 02/19/2014 11:56:29 ******/
DROP FUNCTION [dbo].[fn_Split]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Organization] DROP CONSTRAINT [DF_Organization_CreatedOn]
GO
ALTER TABLE [dbo].[Organization] DROP CONSTRAINT [DF_Organization_ModifiedOn]
GO
ALTER TABLE [dbo].[Organization] DROP CONSTRAINT [DF__Organizat__Termi__0B5CAFEA]
GO
DROP TABLE [dbo].[Organization]
GO
/****** Object:  Table [dbo].[AuditCertifications]    Script Date: 02/19/2014 11:56:24 ******/
DROP TABLE [dbo].[AuditCertifications]
GO
/****** Object:  Table [dbo].[WorkflowStatus]    Script Date: 02/19/2014 11:56:25 ******/
DROP TABLE [dbo].[WorkflowStatus]
GO
/****** Object:  Table [dbo].[Terminology]    Script Date: 02/19/2014 11:56:25 ******/
DROP TABLE [dbo].[Terminology]
GO
/****** Object:  Table [dbo].[UserRoleGroup]    Script Date: 02/19/2014 11:56:25 ******/
DROP TABLE [dbo].[UserRoleGroup]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 02/19/2014 11:56:25 ******/
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[RoleGroup]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[RoleGroup] DROP CONSTRAINT [DF_RoleGroup_CreatedOn]
GO
ALTER TABLE [dbo].[RoleGroup] DROP CONSTRAINT [DF_RoleGroup_ModifiedOn]
GO
DROP TABLE [dbo].[RoleGroup]
GO
/****** Object:  Table [dbo].[RoleGroupConfiguration]    Script Date: 02/19/2014 11:56:25 ******/
DROP TABLE [dbo].[RoleGroupConfiguration]
GO
/****** Object:  User [blueprint]    Script Date: 02/19/2014 11:56:29 ******/
DROP USER [blueprint]
GO
/****** Object:  User [blueprint]    Script Date: 02/19/2014 11:56:29 ******/
CREATE USER [blueprint] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[RoleGroupConfiguration]    Script Date: 02/19/2014 11:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleGroupConfiguration](
	[RoleGroupConfigurationID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[RoleGroupID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsGranted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_RoleGroupConfiguration] PRIMARY KEY CLUSTERED 
(
	[RoleGroupConfigurationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoleGroupConfiguration] ON
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (2, 1, 1, 1, 1, CAST(0x0000A20600FC42C2 AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (3, 1, 1, 2, 1, CAST(0x0000A20600FC450E AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (4, 1, 1, 3, 1, CAST(0x0000A20600FC4B3E AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (5, 1, 1, 4, 1, CAST(0x0000A20600FC4D03 AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (6, 1, 1, 5, 1, CAST(0x0000A20600FC4E5A AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (7, 1, 1, 6, 1, CAST(0x0000A20600FC518B AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (8, 1, 1, 7, 1, CAST(0x0000A20600FC518C AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (9, 1, 2, 1, 1, CAST(0x0000A20600FC518C AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (10, 1, 2, 2, 1, CAST(0x0000A20600FC518D AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (11, 1, 2, 3, 1, CAST(0x0000A20600FC518D AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (12, 1, 2, 4, 1, CAST(0x0000A20600FC518D AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (13, 1, 2, 5, 1, CAST(0x0000A20600FC518D AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (14, 1, 2, 6, 1, CAST(0x0000A20600FC518E AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (15, 1, 2, 7, 1, CAST(0x0000A20600FC518F AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (16, 1, 3, 1, 1, CAST(0x0000A20600FC518F AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (17, 1, 3, 2, 1, CAST(0x0000A20600FC518F AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (18, 1, 3, 3, 1, CAST(0x0000A20600FC5190 AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (19, 1, 3, 4, 1, CAST(0x0000A20600FC5190 AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (20, 1, 3, 5, 1, CAST(0x0000A20600FC5190 AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (21, 1, 3, 6, 1, CAST(0x0000A20600FC5190 AS DateTime), CAST(0x0000A25F0100860C AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (22, 1, 3, 7, 1, CAST(0x0000A20600FC5191 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (23, 1, 4, 1, 1, CAST(0x0000A20600FC5191 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (24, 1, 4, 2, 1, CAST(0x0000A20600FC5191 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (25, 1, 4, 3, 1, CAST(0x0000A20600FC5191 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (26, 1, 4, 4, 1, CAST(0x0000A20600FC5192 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (27, 1, 4, 5, 1, CAST(0x0000A20600FC5192 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (28, 1, 4, 6, 1, CAST(0x0000A20600FC5192 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
INSERT [dbo].[RoleGroupConfiguration] ([RoleGroupConfigurationID], [OrganizationID], [RoleGroupID], [RoleID], [IsGranted], [CreatedOn], [ModifiedOn]) VALUES (29, 1, 4, 7, 1, CAST(0x0000A20600FC5192 AS DateTime), CAST(0x0000A25F01008611 AS DateTime))
SET IDENTITY_INSERT [dbo].[RoleGroupConfiguration] OFF
/****** Object:  Table [dbo].[RoleGroup]    Script Date: 02/19/2014 11:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleGroup](
	[RoleGroupID] [int] IDENTITY(1,1) NOT NULL,
	[RoleGroupName] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_RoleGroup_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_RoleGroup_ModifiedOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_RoleGroup] PRIMARY KEY CLUSTERED 
(
	[RoleGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RoleGroup] ON
INSERT [dbo].[RoleGroup] ([RoleGroupID], [RoleGroupName], [CreatedOn], [ModifiedOn]) VALUES (1, N'Administrators', CAST(0x0000A1C401506BE3 AS DateTime), CAST(0x0000A1C401506BE3 AS DateTime))
INSERT [dbo].[RoleGroup] ([RoleGroupID], [RoleGroupName], [CreatedOn], [ModifiedOn]) VALUES (2, N'Users', CAST(0x0000A1CA00FB124E AS DateTime), CAST(0x0000A1CA00FB124E AS DateTime))
INSERT [dbo].[RoleGroup] ([RoleGroupID], [RoleGroupName], [CreatedOn], [ModifiedOn]) VALUES (3, N'Reviewers', CAST(0x0000A1FE014B73FE AS DateTime), CAST(0x0000A1FE014B73FE AS DateTime))
INSERT [dbo].[RoleGroup] ([RoleGroupID], [RoleGroupName], [CreatedOn], [ModifiedOn]) VALUES (4, N'Approvers', CAST(0x0000A1FE014B7430 AS DateTime), CAST(0x0000A1FE014B7430 AS DateTime))
SET IDENTITY_INSERT [dbo].[RoleGroup] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 02/19/2014 11:56:25 ******/
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
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (1, N'Doc Delete', CAST(0x0000A1FF01665795 AS DateTime), CAST(0x0000A1FF01665795 AS DateTime))
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (2, N'Doc Upload', CAST(0x0000A1FF016657A2 AS DateTime), CAST(0x0000A1FF016657A2 AS DateTime))
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (3, N'Doc Review', CAST(0x0000A1FF016657A5 AS DateTime), CAST(0x0000A1FF016657A5 AS DateTime))
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (4, N'Doc Approve', CAST(0x0000A1FF016657A6 AS DateTime), CAST(0x0000A1FF016657A6 AS DateTime))
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (5, N'Audit Report', CAST(0x0000A1FF016657A8 AS DateTime), CAST(0x0000A1FF016657A8 AS DateTime))
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (6, N'NC Report', CAST(0x0000A1FF016657AA AS DateTime), CAST(0x0000A1FF016657AA AS DateTime))
INSERT [dbo].[Role] ([RoleID], [RoleName], [CreatedOn], [ModifiedOn]) VALUES (7, N'Raise Change Request', CAST(0x0000A1FF016657AB AS DateTime), CAST(0x0000A1FF016657AB AS DateTime))
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[UserRoleGroup]    Script Date: 02/19/2014 11:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleGroup](
	[UserRoleGroupID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleGroupID] [int] NOT NULL,
	[DepartmentID] [int] NULL,
	[SubDepartmentID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_UserRoleGroup] PRIMARY KEY CLUSTERED 
(
	[UserRoleGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserRoleGroup] ON
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (1, 12, 1, 1, 1, 0, CAST(0x0000A20E016D21DD AS DateTime), CAST(0x0000A20E016D21DD AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (2, 12, 2, 1, 1, 0, CAST(0x0000A20E016D26C6 AS DateTime), CAST(0x0000A20E016D26C6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (3, 12, 3, 1, 1, 1, CAST(0x0000A20E016D291C AS DateTime), CAST(0x0000A20E016D291C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (4, 12, 4, 1, 1, 0, CAST(0x0000A20E016D2D2A AS DateTime), CAST(0x0000A20E016D2D2A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (6, 12, 1, 2, 3, 0, CAST(0x0000A20E016D55AA AS DateTime), CAST(0x0000A20E016D55AA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (7, 12, 2, 2, 3, 0, CAST(0x0000A20E016D5881 AS DateTime), CAST(0x0000A20E016D5881 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (8, 12, 3, 2, 3, 0, CAST(0x0000A20E016D5ACA AS DateTime), CAST(0x0000A20E016D5ACA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (9, 12, 4, 2, 3, 1, CAST(0x0000A20E016D5CEC AS DateTime), CAST(0x0000A20E016D5CEC AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (11, 12, 1, 1, 1, 0, CAST(0x0000A21701418601 AS DateTime), CAST(0x0000A21701418601 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (12, 12, 2, 1, 1, 1, CAST(0x0000A21701418601 AS DateTime), CAST(0x0000A21701418601 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (13, 12, 3, 1, 1, 1, CAST(0x0000A21701418602 AS DateTime), CAST(0x0000A21701418602 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (14, 12, 4, 1, 1, 1, CAST(0x0000A21701418602 AS DateTime), CAST(0x0000A21701418602 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (16, 12, 1, 2, 3, 0, CAST(0x0000A2170141860B AS DateTime), CAST(0x0000A2170141860B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (17, 12, 2, 2, 3, 0, CAST(0x0000A2170141860C AS DateTime), CAST(0x0000A2170141860C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (18, 12, 3, 2, 3, 0, CAST(0x0000A2170141860C AS DateTime), CAST(0x0000A2170141860C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (19, 12, 4, 2, 3, 1, CAST(0x0000A2170141860D AS DateTime), CAST(0x0000A2170141860D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (21, 12, 1, 1, 1, 0, CAST(0x0000A21D0106DFD3 AS DateTime), CAST(0x0000A21D0106DFD3 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (22, 12, 2, 1, 1, 1, CAST(0x0000A21D0106DFD7 AS DateTime), CAST(0x0000A21D0106DFD7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (23, 12, 3, 1, 1, 1, CAST(0x0000A21D0106DFD7 AS DateTime), CAST(0x0000A21D0106DFD7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (24, 12, 4, 1, 1, 0, CAST(0x0000A21D0106DFD7 AS DateTime), CAST(0x0000A21D0106DFD7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (25, 12, 1, 2, 3, 0, CAST(0x0000A21D0106DFDB AS DateTime), CAST(0x0000A21D0106DFDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (26, 12, 2, 2, 3, 1, CAST(0x0000A21D0106DFDB AS DateTime), CAST(0x0000A21D0106DFDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (27, 12, 3, 2, 3, 0, CAST(0x0000A21D0106DFDB AS DateTime), CAST(0x0000A21D0106DFDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (28, 12, 4, 2, 3, 1, CAST(0x0000A21D0106DFDB AS DateTime), CAST(0x0000A21D0106DFDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (29, 12, 1, 1, 1, 0, CAST(0x0000A21E00E618BF AS DateTime), CAST(0x0000A21E00E618BF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (30, 12, 2, 1, 1, 1, CAST(0x0000A21E00E618C0 AS DateTime), CAST(0x0000A21E00E618C0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (31, 12, 3, 1, 1, 1, CAST(0x0000A21E00E618C0 AS DateTime), CAST(0x0000A21E00E618C0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (32, 12, 4, 1, 1, 0, CAST(0x0000A21E00E618C0 AS DateTime), CAST(0x0000A21E00E618C0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (33, 12, 1, 2, 3, 0, CAST(0x0000A21E00E618C1 AS DateTime), CAST(0x0000A21E00E618C1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (34, 12, 2, 2, 3, 1, CAST(0x0000A21E00E618C1 AS DateTime), CAST(0x0000A21E00E618C1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (35, 12, 3, 2, 3, 0, CAST(0x0000A21E00E618C1 AS DateTime), CAST(0x0000A21E00E618C1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (36, 12, 4, 2, 3, 1, CAST(0x0000A21E00E618C1 AS DateTime), CAST(0x0000A21E00E618C1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (37, 12, 1, 1, 1, 0, CAST(0x0000A21E00E837E4 AS DateTime), CAST(0x0000A21E00E837E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (38, 12, 2, 1, 1, 1, CAST(0x0000A21E00E837E5 AS DateTime), CAST(0x0000A21E00E837E5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (39, 12, 3, 1, 1, 1, CAST(0x0000A21E00E837E5 AS DateTime), CAST(0x0000A21E00E837E5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (40, 12, 4, 1, 1, 0, CAST(0x0000A21E00E837E5 AS DateTime), CAST(0x0000A21E00E837E5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (41, 12, 1, 2, 3, 0, CAST(0x0000A21E00E837E5 AS DateTime), CAST(0x0000A21E00E837E5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (42, 12, 2, 2, 3, 1, CAST(0x0000A21E00E837E6 AS DateTime), CAST(0x0000A21E00E837E6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (43, 12, 3, 2, 3, 0, CAST(0x0000A21E00E837E6 AS DateTime), CAST(0x0000A21E00E837E6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (44, 12, 4, 2, 3, 1, CAST(0x0000A21E00E837E6 AS DateTime), CAST(0x0000A21E00E837E6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (45, 7, 1, 1, 1, 1, CAST(0x0000A21E00FDB118 AS DateTime), CAST(0x0000A21E00FDB118 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (46, 7, 2, 1, 1, 0, CAST(0x0000A21E00FDB118 AS DateTime), CAST(0x0000A21E00FDB118 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (47, 7, 3, 1, 1, 0, CAST(0x0000A21E00FDB119 AS DateTime), CAST(0x0000A21E00FDB119 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (48, 7, 4, 1, 1, 0, CAST(0x0000A21E00FDB119 AS DateTime), CAST(0x0000A21E00FDB119 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (49, 7, 1, 2, 3, 0, CAST(0x0000A21E00FDB119 AS DateTime), CAST(0x0000A21E00FDB119 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (50, 7, 2, 2, 3, 0, CAST(0x0000A21E00FDB11D AS DateTime), CAST(0x0000A21E00FDB11D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (51, 7, 3, 2, 3, 0, CAST(0x0000A21E00FDB11D AS DateTime), CAST(0x0000A21E00FDB11D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (52, 7, 4, 2, 3, 0, CAST(0x0000A21E00FDB11D AS DateTime), CAST(0x0000A21E00FDB11D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (53, 13, 1, 1, 1, 0, CAST(0x0000A22600DE8A30 AS DateTime), CAST(0x0000A22600DE8A30 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (54, 13, 2, 1, 1, 0, CAST(0x0000A22600DE8A31 AS DateTime), CAST(0x0000A22600DE8A31 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (55, 13, 3, 1, 1, 0, CAST(0x0000A22600DE8A31 AS DateTime), CAST(0x0000A22600DE8A31 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (56, 13, 4, 1, 1, 0, CAST(0x0000A22600DE8A31 AS DateTime), CAST(0x0000A22600DE8A31 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (57, 13, 1, 2, 3, 0, CAST(0x0000A22600DE8A32 AS DateTime), CAST(0x0000A22600DE8A32 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (58, 13, 2, 2, 3, 0, CAST(0x0000A22600DE8A32 AS DateTime), CAST(0x0000A22600DE8A32 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (59, 13, 3, 2, 3, 0, CAST(0x0000A22600DE8A3B AS DateTime), CAST(0x0000A22600DE8A3B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (60, 13, 4, 2, 3, 0, CAST(0x0000A22600DE8A3B AS DateTime), CAST(0x0000A22600DE8A3B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (61, 45, 1, 1, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (62, 45, 2, 1, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (63, 45, 3, 1, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (64, 45, 4, 1, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (65, 45, 1, 2, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (66, 45, 2, 2, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (67, 45, 3, 2, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (68, 45, 4, 2, 0, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (69, 45, 1, 3, 4, 0, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (70, 45, 2, 3, 4, 1, CAST(0x0000A25E01246F9B AS DateTime), CAST(0x0000A25E01246F9B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (71, 45, 3, 3, 4, 0, CAST(0x0000A25E01246FA0 AS DateTime), CAST(0x0000A25E01246FA0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (72, 45, 4, 3, 4, 0, CAST(0x0000A25E01246FA0 AS DateTime), CAST(0x0000A25E01246FA0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (73, 45, 1, 3, 6, 0, CAST(0x0000A25E01246FA0 AS DateTime), CAST(0x0000A25E01246FA0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (74, 45, 2, 3, 6, 0, CAST(0x0000A25E01246FA0 AS DateTime), CAST(0x0000A25E01246FA0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (75, 45, 3, 3, 6, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (76, 45, 4, 3, 6, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (77, 45, 1, 4, 0, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (78, 45, 2, 4, 0, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (79, 45, 3, 4, 0, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (80, 45, 4, 4, 0, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (81, 45, 1, 11, 10, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (82, 45, 2, 11, 10, 0, CAST(0x0000A25E01246FA5 AS DateTime), CAST(0x0000A25E01246FA5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (83, 45, 3, 11, 10, 1, CAST(0x0000A25E01246FAA AS DateTime), CAST(0x0000A25E01246FAA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (84, 45, 4, 11, 10, 0, CAST(0x0000A25E01246FAA AS DateTime), CAST(0x0000A25E01246FAA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (85, 45, 1, 11, 11, 0, CAST(0x0000A25E01246FAA AS DateTime), CAST(0x0000A25E01246FAA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (86, 45, 2, 11, 11, 0, CAST(0x0000A25E01246FAA AS DateTime), CAST(0x0000A25E01246FAA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (87, 45, 3, 11, 11, 0, CAST(0x0000A25E01246FAA AS DateTime), CAST(0x0000A25E01246FAA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (88, 45, 4, 11, 11, 0, CAST(0x0000A25E01246FAA AS DateTime), CAST(0x0000A25E01246FAA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (89, 46, 1, 1, 0, 0, CAST(0x0000A25E012471D8 AS DateTime), CAST(0x0000A25E012471D8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (90, 46, 2, 1, 0, 0, CAST(0x0000A25E012471E6 AS DateTime), CAST(0x0000A25E012471E6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (91, 46, 3, 1, 0, 0, CAST(0x0000A25E012471EA AS DateTime), CAST(0x0000A25E012471EA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (92, 46, 4, 1, 0, 0, CAST(0x0000A25E012471EA AS DateTime), CAST(0x0000A25E012471EA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (93, 46, 1, 2, 0, 0, CAST(0x0000A25E012471EA AS DateTime), CAST(0x0000A25E012471EA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (94, 46, 2, 2, 0, 0, CAST(0x0000A25E012471EF AS DateTime), CAST(0x0000A25E012471EF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (95, 46, 3, 2, 0, 0, CAST(0x0000A25E012471EF AS DateTime), CAST(0x0000A25E012471EF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (96, 46, 4, 2, 0, 0, CAST(0x0000A25E012471EF AS DateTime), CAST(0x0000A25E012471EF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (97, 46, 1, 3, 4, 0, CAST(0x0000A25E012471EF AS DateTime), CAST(0x0000A25E012471EF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (98, 46, 2, 3, 4, 1, CAST(0x0000A25E012471EF AS DateTime), CAST(0x0000A25E012471EF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (99, 46, 3, 3, 4, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (100, 46, 4, 3, 4, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (101, 46, 1, 3, 6, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (102, 46, 2, 3, 6, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (103, 46, 3, 3, 6, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (104, 46, 4, 3, 6, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (105, 46, 1, 4, 0, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (106, 46, 2, 4, 0, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (107, 46, 3, 4, 0, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (108, 46, 4, 4, 0, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (109, 46, 1, 11, 10, 0, CAST(0x0000A25E012471F4 AS DateTime), CAST(0x0000A25E012471F4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (110, 46, 2, 11, 10, 0, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (111, 46, 3, 11, 10, 1, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (112, 46, 4, 11, 10, 0, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (113, 46, 1, 11, 11, 0, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (114, 46, 2, 11, 11, 0, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (115, 46, 3, 11, 11, 0, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (116, 46, 4, 11, 11, 0, CAST(0x0000A25E012471F8 AS DateTime), CAST(0x0000A25E012471F8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (117, 47, 1, 1, 0, 0, CAST(0x0000A25E0124E387 AS DateTime), CAST(0x0000A25E0124E387 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (118, 47, 2, 1, 0, 0, CAST(0x0000A25E0124E387 AS DateTime), CAST(0x0000A25E0124E387 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (119, 47, 3, 1, 0, 0, CAST(0x0000A25E0124E387 AS DateTime), CAST(0x0000A25E0124E387 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (120, 47, 4, 1, 0, 0, CAST(0x0000A25E0124E387 AS DateTime), CAST(0x0000A25E0124E387 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (121, 47, 1, 2, 0, 0, CAST(0x0000A25E0124E387 AS DateTime), CAST(0x0000A25E0124E387 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (122, 47, 2, 2, 0, 0, CAST(0x0000A25E0124E387 AS DateTime), CAST(0x0000A25E0124E387 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (123, 47, 3, 2, 0, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (124, 47, 4, 2, 0, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (125, 47, 1, 3, 4, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (126, 47, 2, 3, 4, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (127, 47, 3, 3, 4, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (128, 47, 4, 3, 4, 1, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (129, 47, 1, 3, 6, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (130, 47, 2, 3, 6, 0, CAST(0x0000A25E0124E38C AS DateTime), CAST(0x0000A25E0124E38C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (131, 47, 3, 3, 6, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (132, 47, 4, 3, 6, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (133, 47, 1, 4, 0, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (134, 47, 2, 4, 0, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (135, 47, 3, 4, 0, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (136, 47, 4, 4, 0, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (137, 47, 1, 11, 10, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (138, 47, 2, 11, 10, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (139, 47, 3, 11, 10, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (140, 47, 4, 11, 10, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (141, 47, 1, 11, 11, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (142, 47, 2, 11, 11, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (143, 47, 3, 11, 11, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (144, 47, 4, 11, 11, 0, CAST(0x0000A25E0124E391 AS DateTime), CAST(0x0000A25E0124E391 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (145, 48, 1, 1, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (146, 48, 2, 1, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (147, 48, 3, 1, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (148, 48, 4, 1, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (149, 48, 1, 2, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (150, 48, 2, 2, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (151, 48, 3, 2, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (152, 48, 4, 2, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (153, 48, 1, 3, 4, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (154, 48, 2, 3, 4, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (155, 48, 3, 3, 4, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (156, 48, 4, 3, 4, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (157, 48, 1, 3, 6, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (158, 48, 2, 3, 6, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (159, 48, 3, 3, 6, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (160, 48, 4, 3, 6, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (161, 48, 1, 4, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (162, 48, 2, 4, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (163, 48, 3, 4, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (164, 48, 4, 4, 0, 0, CAST(0x0000A25E0125199B AS DateTime), CAST(0x0000A25E0125199B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (165, 48, 1, 11, 10, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (166, 48, 2, 11, 10, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (167, 48, 3, 11, 10, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (168, 48, 4, 11, 10, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (169, 48, 1, 11, 11, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (170, 48, 2, 11, 11, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (171, 48, 3, 11, 11, 1, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (172, 48, 4, 11, 11, 0, CAST(0x0000A25E012519A0 AS DateTime), CAST(0x0000A25E012519A0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (173, 49, 1, 1, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (174, 49, 2, 1, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (175, 49, 3, 1, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (176, 49, 4, 1, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (177, 49, 1, 2, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (178, 49, 2, 2, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (179, 49, 3, 2, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (180, 49, 4, 2, 0, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (181, 49, 1, 3, 4, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (182, 49, 2, 3, 4, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (183, 49, 3, 3, 4, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (184, 49, 4, 3, 4, 0, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (185, 49, 1, 3, 6, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (186, 49, 2, 3, 6, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (187, 49, 3, 3, 6, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (188, 49, 4, 3, 6, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (189, 49, 1, 4, 0, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (190, 49, 2, 4, 0, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (191, 49, 3, 4, 0, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (192, 49, 4, 4, 0, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (193, 49, 1, 11, 10, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (194, 49, 2, 11, 10, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (195, 49, 3, 11, 10, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (196, 49, 4, 11, 10, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (197, 49, 1, 11, 11, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (198, 49, 2, 11, 11, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (199, 49, 3, 11, 11, 1, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (200, 49, 4, 11, 11, 0, CAST(0x0000A25E01251C9E AS DateTime), CAST(0x0000A25E01251C9E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (201, 50, 1, 1, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (202, 50, 2, 1, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (203, 50, 3, 1, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (204, 50, 4, 1, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (205, 50, 1, 2, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (206, 50, 2, 2, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (207, 50, 3, 2, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (208, 50, 4, 2, 0, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (209, 50, 1, 3, 4, 0, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (210, 50, 2, 3, 4, 1, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (211, 50, 3, 3, 4, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (212, 50, 4, 3, 4, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (213, 50, 1, 3, 6, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (214, 50, 2, 3, 6, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (215, 50, 3, 3, 6, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (216, 50, 4, 3, 6, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (217, 50, 1, 4, 0, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (218, 50, 2, 4, 0, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (219, 50, 3, 4, 0, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (220, 50, 4, 4, 0, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (221, 50, 1, 11, 10, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (222, 50, 2, 11, 10, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (223, 50, 3, 11, 10, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (224, 50, 4, 11, 10, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (225, 50, 1, 11, 11, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (226, 50, 2, 11, 11, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (227, 50, 3, 11, 11, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (228, 50, 4, 11, 11, 0, CAST(0x0000A25E012C7074 AS DateTime), CAST(0x0000A25E012C7074 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (229, 51, 1, 1, 0, 0, CAST(0x0000A25E012C736D AS DateTime), CAST(0x0000A25E012C736D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (230, 51, 2, 1, 0, 0, CAST(0x0000A25E012C736D AS DateTime), CAST(0x0000A25E012C736D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (231, 51, 3, 1, 0, 0, CAST(0x0000A25E012C736D AS DateTime), CAST(0x0000A25E012C736D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (232, 51, 4, 1, 0, 0, CAST(0x0000A25E012C736D AS DateTime), CAST(0x0000A25E012C736D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (233, 51, 1, 2, 0, 0, CAST(0x0000A25E012C736D AS DateTime), CAST(0x0000A25E012C736D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (234, 51, 2, 2, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (235, 51, 3, 2, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (236, 51, 4, 2, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (237, 51, 1, 3, 4, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (238, 51, 2, 3, 4, 1, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (239, 51, 3, 3, 4, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (240, 51, 4, 3, 4, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (241, 51, 1, 3, 6, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (242, 51, 2, 3, 6, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (243, 51, 3, 3, 6, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (244, 51, 4, 3, 6, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (245, 51, 1, 4, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (246, 51, 2, 4, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (247, 51, 3, 4, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (248, 51, 4, 4, 0, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (249, 51, 1, 11, 10, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (250, 51, 2, 11, 10, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (251, 51, 3, 11, 10, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (252, 51, 4, 11, 10, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (253, 51, 1, 11, 11, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (254, 51, 2, 11, 11, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (255, 51, 3, 11, 11, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (256, 51, 4, 11, 11, 0, CAST(0x0000A25E012C7372 AS DateTime), CAST(0x0000A25E012C7372 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (257, 52, 1, 1, 0, 0, CAST(0x0000A25E01319F8C AS DateTime), CAST(0x0000A25E01319F8C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (258, 52, 2, 1, 0, 0, CAST(0x0000A25E01319F91 AS DateTime), CAST(0x0000A25E01319F91 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (259, 52, 3, 1, 0, 0, CAST(0x0000A25E01319F91 AS DateTime), CAST(0x0000A25E01319F91 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (260, 52, 4, 1, 0, 0, CAST(0x0000A25E01319F91 AS DateTime), CAST(0x0000A25E01319F91 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (261, 52, 1, 2, 0, 0, CAST(0x0000A25E01319F91 AS DateTime), CAST(0x0000A25E01319F91 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (262, 52, 2, 2, 0, 0, CAST(0x0000A25E01319F91 AS DateTime), CAST(0x0000A25E01319F91 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (263, 52, 3, 2, 0, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (264, 52, 4, 2, 0, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (265, 52, 1, 3, 4, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (266, 52, 2, 3, 4, 1, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (267, 52, 3, 3, 4, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (268, 52, 4, 3, 4, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (269, 52, 1, 3, 6, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (270, 52, 2, 3, 6, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (271, 52, 3, 3, 6, 1, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (272, 52, 4, 3, 6, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (273, 52, 1, 4, 0, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (274, 52, 2, 4, 0, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (275, 52, 3, 4, 0, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (276, 52, 4, 4, 0, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (277, 52, 1, 11, 10, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (278, 52, 2, 11, 10, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (279, 52, 3, 11, 10, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (280, 52, 4, 11, 10, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (281, 52, 1, 11, 11, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (282, 52, 2, 11, 11, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (283, 52, 3, 11, 11, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (284, 52, 4, 11, 11, 0, CAST(0x0000A25E01319F95 AS DateTime), CAST(0x0000A25E01319F95 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (285, 53, 1, 1, 0, 0, CAST(0x0000A25E0133D4F6 AS DateTime), CAST(0x0000A25E0133D4F6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (286, 53, 2, 1, 0, 0, CAST(0x0000A25E0133D4F6 AS DateTime), CAST(0x0000A25E0133D4F6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (287, 53, 3, 1, 0, 0, CAST(0x0000A25E0133D4F6 AS DateTime), CAST(0x0000A25E0133D4F6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (288, 53, 4, 1, 0, 0, CAST(0x0000A25E0133D4F6 AS DateTime), CAST(0x0000A25E0133D4F6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (289, 53, 1, 2, 0, 0, CAST(0x0000A25E0133D4FA AS DateTime), CAST(0x0000A25E0133D4FA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (290, 53, 2, 2, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (291, 53, 3, 2, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (292, 53, 4, 2, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (293, 53, 1, 3, 4, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (294, 53, 2, 3, 4, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (295, 53, 3, 3, 4, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (296, 53, 4, 3, 4, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (297, 53, 1, 3, 6, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (298, 53, 2, 3, 6, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (299, 53, 3, 3, 6, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (300, 53, 4, 3, 6, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (301, 53, 1, 4, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (302, 53, 2, 4, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (303, 53, 3, 4, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (304, 53, 4, 4, 0, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (305, 53, 1, 11, 10, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (306, 53, 2, 11, 10, 1, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (307, 53, 3, 11, 10, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (308, 53, 4, 11, 10, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (309, 53, 1, 11, 11, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (310, 53, 2, 11, 11, 1, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (311, 53, 3, 11, 11, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (312, 53, 4, 11, 11, 0, CAST(0x0000A25E0133D4FF AS DateTime), CAST(0x0000A25E0133D4FF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (313, 54, 1, 1, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (314, 54, 2, 1, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (315, 54, 3, 1, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (316, 54, 4, 1, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (317, 54, 1, 2, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (318, 54, 2, 2, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (319, 54, 3, 2, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (320, 54, 4, 2, 0, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (321, 54, 1, 3, 4, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (322, 54, 2, 3, 4, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (323, 54, 3, 3, 4, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (324, 54, 4, 3, 4, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (325, 54, 1, 3, 6, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (326, 54, 2, 3, 6, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (327, 54, 3, 3, 6, 0, CAST(0x0000A25E013440F0 AS DateTime), CAST(0x0000A25E013440F0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (328, 54, 4, 3, 6, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (329, 54, 1, 4, 0, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (330, 54, 2, 4, 0, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (331, 54, 3, 4, 0, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (332, 54, 4, 4, 0, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (333, 54, 1, 11, 10, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (334, 54, 2, 11, 10, 1, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (335, 54, 3, 11, 10, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (336, 54, 4, 11, 10, 0, CAST(0x0000A25E013440F5 AS DateTime), CAST(0x0000A25E013440F5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (337, 54, 1, 11, 11, 0, CAST(0x0000A25E013440FA AS DateTime), CAST(0x0000A25E013440FA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (338, 54, 2, 11, 11, 1, CAST(0x0000A25E013440FA AS DateTime), CAST(0x0000A25E013440FA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (339, 54, 3, 11, 11, 0, CAST(0x0000A25E013440FA AS DateTime), CAST(0x0000A25E013440FA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (340, 54, 4, 11, 11, 0, CAST(0x0000A25E013440FA AS DateTime), CAST(0x0000A25E013440FA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (341, 55, 1, 1, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (342, 55, 2, 1, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (343, 55, 3, 1, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (344, 55, 4, 1, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (345, 55, 1, 2, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (346, 55, 2, 2, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (347, 55, 3, 2, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (348, 55, 4, 2, 0, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (349, 55, 1, 3, 4, 0, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (350, 55, 2, 3, 4, 0, CAST(0x0000A25E0149C5E9 AS DateTime), CAST(0x0000A25E0149C5E9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (351, 55, 3, 3, 4, 0, CAST(0x0000A25E0149C5E9 AS DateTime), CAST(0x0000A25E0149C5E9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (352, 55, 4, 3, 4, 0, CAST(0x0000A25E0149C5E9 AS DateTime), CAST(0x0000A25E0149C5E9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (353, 55, 1, 3, 6, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (354, 55, 2, 3, 6, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (355, 55, 3, 3, 6, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (356, 55, 4, 3, 6, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (357, 55, 1, 4, 0, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (358, 55, 2, 4, 0, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (359, 55, 3, 4, 0, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (360, 55, 4, 4, 0, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (361, 55, 1, 11, 10, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (362, 55, 2, 11, 10, 0, CAST(0x0000A25E0149C5ED AS DateTime), CAST(0x0000A25E0149C5ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (363, 55, 3, 11, 10, 0, CAST(0x0000A25E0149C5F2 AS DateTime), CAST(0x0000A25E0149C5F2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (364, 55, 4, 11, 10, 0, CAST(0x0000A25E0149C5F2 AS DateTime), CAST(0x0000A25E0149C5F2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (365, 55, 1, 11, 11, 0, CAST(0x0000A25E0149C5F2 AS DateTime), CAST(0x0000A25E0149C5F2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (366, 55, 2, 11, 11, 0, CAST(0x0000A25E0149C5F2 AS DateTime), CAST(0x0000A25E0149C5F2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (367, 55, 3, 11, 11, 0, CAST(0x0000A25E0149C5F2 AS DateTime), CAST(0x0000A25E0149C5F2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (368, 55, 4, 11, 11, 0, CAST(0x0000A25E0149C5F2 AS DateTime), CAST(0x0000A25E0149C5F2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (369, 56, 1, 1, 0, 0, CAST(0x0000A25E014C0298 AS DateTime), CAST(0x0000A25E014C0298 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (370, 56, 2, 1, 0, 0, CAST(0x0000A25E014C02A7 AS DateTime), CAST(0x0000A25E014C02A7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (371, 56, 3, 1, 0, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (372, 56, 4, 1, 0, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (373, 56, 1, 2, 0, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (374, 56, 2, 2, 0, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (375, 56, 3, 2, 0, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (376, 56, 4, 2, 0, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (377, 56, 1, 3, 4, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (378, 56, 2, 3, 4, 1, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (379, 56, 3, 3, 4, 0, CAST(0x0000A25E014C02B0 AS DateTime), CAST(0x0000A25E014C02B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (380, 56, 4, 3, 4, 0, CAST(0x0000A25E014C02B5 AS DateTime), CAST(0x0000A25E014C02B5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (381, 56, 1, 3, 6, 0, CAST(0x0000A25E014C02B5 AS DateTime), CAST(0x0000A25E014C02B5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (382, 56, 2, 3, 6, 0, CAST(0x0000A25E014C02B5 AS DateTime), CAST(0x0000A25E014C02B5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (383, 56, 3, 3, 6, 0, CAST(0x0000A25E014C02B5 AS DateTime), CAST(0x0000A25E014C02B5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (384, 56, 4, 3, 6, 0, CAST(0x0000A25E014C02B5 AS DateTime), CAST(0x0000A25E014C02B5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (385, 56, 1, 4, 0, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (386, 56, 2, 4, 0, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (387, 56, 3, 4, 0, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (388, 56, 4, 4, 0, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (389, 56, 1, 11, 10, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (390, 56, 2, 11, 10, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (391, 56, 3, 11, 10, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (392, 56, 4, 11, 10, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (393, 56, 1, 11, 11, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (394, 56, 2, 11, 11, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (395, 56, 3, 11, 11, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (396, 56, 4, 11, 11, 0, CAST(0x0000A25E014C02B9 AS DateTime), CAST(0x0000A25E014C02B9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (397, 57, 1, 1, 0, 0, CAST(0x0000A25F00EEC368 AS DateTime), CAST(0x0000A25F00EEC368 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (398, 57, 2, 1, 0, 0, CAST(0x0000A25F00EEC368 AS DateTime), CAST(0x0000A25F00EEC368 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (399, 57, 3, 1, 0, 0, CAST(0x0000A25F00EEC368 AS DateTime), CAST(0x0000A25F00EEC368 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (400, 57, 4, 1, 0, 0, CAST(0x0000A25F00EEC368 AS DateTime), CAST(0x0000A25F00EEC368 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (401, 57, 1, 2, 0, 0, CAST(0x0000A25F00EEC368 AS DateTime), CAST(0x0000A25F00EEC368 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (402, 57, 2, 2, 0, 0, CAST(0x0000A25F00EEC36C AS DateTime), CAST(0x0000A25F00EEC36C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (403, 57, 3, 2, 0, 0, CAST(0x0000A25F00EEC36C AS DateTime), CAST(0x0000A25F00EEC36C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (404, 58, 1, 1, 0, 0, CAST(0x0000A25F00EEC36C AS DateTime), CAST(0x0000A25F00EEC36C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (405, 58, 2, 1, 0, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (406, 57, 4, 2, 0, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (407, 58, 3, 1, 0, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (408, 57, 1, 3, 4, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (409, 58, 4, 1, 0, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (410, 57, 2, 3, 4, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (411, 58, 1, 2, 0, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (412, 57, 3, 3, 4, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (413, 58, 2, 2, 0, 0, CAST(0x0000A25F00EEC371 AS DateTime), CAST(0x0000A25F00EEC371 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (414, 57, 4, 3, 4, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (415, 58, 3, 2, 0, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (416, 57, 1, 3, 6, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (417, 58, 4, 2, 0, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (418, 57, 2, 3, 6, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (419, 58, 1, 3, 4, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (420, 57, 3, 3, 6, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (421, 58, 2, 3, 4, 0, CAST(0x0000A25F00EEC376 AS DateTime), CAST(0x0000A25F00EEC376 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (422, 57, 4, 3, 6, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (423, 58, 3, 3, 4, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (424, 57, 1, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (425, 58, 4, 3, 4, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (426, 57, 2, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (427, 58, 1, 3, 6, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (428, 57, 3, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (429, 58, 2, 3, 6, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (430, 57, 4, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (431, 58, 3, 3, 6, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (432, 57, 1, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (433, 58, 4, 3, 6, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (434, 57, 2, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (435, 58, 1, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (436, 57, 3, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (437, 58, 2, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (438, 57, 4, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (439, 58, 3, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (440, 57, 1, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (441, 58, 4, 4, 0, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (442, 57, 2, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (443, 58, 1, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (444, 57, 3, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (445, 58, 2, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (446, 58, 3, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (447, 57, 4, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (448, 58, 4, 11, 10, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (449, 58, 1, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (450, 58, 2, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (451, 58, 3, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (452, 58, 4, 11, 11, 0, CAST(0x0000A25F00EEC37A AS DateTime), CAST(0x0000A25F00EEC37A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (453, 59, 1, 1, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (454, 59, 2, 1, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (455, 59, 3, 1, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (456, 59, 4, 1, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (457, 59, 1, 2, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (458, 59, 2, 2, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (459, 59, 3, 2, 0, 0, CAST(0x0000A25F012DCDDB AS DateTime), CAST(0x0000A25F012DCDDB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (460, 59, 4, 2, 0, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (461, 59, 1, 3, 4, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (462, 59, 2, 3, 4, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (463, 59, 3, 3, 4, 1, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (464, 59, 4, 3, 4, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (465, 59, 1, 3, 6, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (466, 59, 2, 3, 6, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (467, 59, 3, 3, 6, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (468, 59, 4, 3, 6, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (469, 59, 1, 4, 0, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (470, 59, 2, 4, 0, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (471, 59, 3, 4, 0, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (472, 59, 4, 4, 0, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (473, 59, 1, 11, 10, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (474, 59, 2, 11, 10, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (475, 59, 3, 11, 10, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (476, 59, 4, 11, 10, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (477, 59, 1, 11, 11, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (478, 59, 2, 11, 11, 1, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (479, 59, 3, 11, 11, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (480, 59, 4, 11, 11, 0, CAST(0x0000A25F012DCDDF AS DateTime), CAST(0x0000A25F012DCDDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (481, 60, 1, 1, 0, 0, CAST(0x0000A25F012DCFE6 AS DateTime), CAST(0x0000A25F012DCFE6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (482, 60, 2, 1, 0, 0, CAST(0x0000A25F012DCFF4 AS DateTime), CAST(0x0000A25F012DCFF4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (483, 60, 3, 1, 0, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (484, 60, 4, 1, 0, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (485, 60, 1, 2, 0, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (486, 60, 2, 2, 0, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (487, 60, 3, 2, 0, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (488, 60, 4, 2, 0, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (489, 60, 1, 3, 4, 0, CAST(0x0000A25F012DCFF9 AS DateTime), CAST(0x0000A25F012DCFF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (490, 60, 2, 3, 4, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (491, 60, 3, 3, 4, 1, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (492, 60, 4, 3, 4, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (493, 60, 1, 3, 6, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (494, 60, 2, 3, 6, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (495, 60, 3, 3, 6, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (496, 60, 4, 3, 6, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (497, 60, 1, 4, 0, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (498, 60, 2, 4, 0, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (499, 60, 3, 4, 0, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (500, 60, 4, 4, 0, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (501, 60, 1, 11, 10, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (502, 60, 2, 11, 10, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (503, 60, 3, 11, 10, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (504, 60, 4, 11, 10, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (505, 60, 1, 11, 11, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (506, 60, 2, 11, 11, 1, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (507, 60, 3, 11, 11, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (508, 60, 4, 11, 11, 0, CAST(0x0000A25F012DCFFE AS DateTime), CAST(0x0000A25F012DCFFE AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (509, 61, 1, 1, 0, 0, CAST(0x0000A2620110A105 AS DateTime), CAST(0x0000A2620110A105 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (510, 61, 2, 1, 0, 0, CAST(0x0000A2620110A105 AS DateTime), CAST(0x0000A2620110A105 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (511, 61, 3, 1, 0, 0, CAST(0x0000A2620110A106 AS DateTime), CAST(0x0000A2620110A106 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (512, 61, 4, 1, 0, 0, CAST(0x0000A2620110A109 AS DateTime), CAST(0x0000A2620110A109 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (513, 61, 1, 2, 0, 0, CAST(0x0000A2620110A109 AS DateTime), CAST(0x0000A2620110A109 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (514, 61, 2, 2, 0, 0, CAST(0x0000A2620110A109 AS DateTime), CAST(0x0000A2620110A109 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (515, 61, 3, 2, 0, 0, CAST(0x0000A2620110A10A AS DateTime), CAST(0x0000A2620110A10A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (516, 61, 4, 2, 0, 0, CAST(0x0000A2620110A10A AS DateTime), CAST(0x0000A2620110A10A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (517, 61, 1, 3, 4, 0, CAST(0x0000A2620110A10A AS DateTime), CAST(0x0000A2620110A10A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (518, 61, 2, 3, 4, 1, CAST(0x0000A2620110A10A AS DateTime), CAST(0x0000A2620110A10A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (519, 61, 3, 3, 4, 0, CAST(0x0000A2620110A10B AS DateTime), CAST(0x0000A2620110A10B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (520, 61, 4, 3, 4, 0, CAST(0x0000A2620110A10C AS DateTime), CAST(0x0000A2620110A10C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (521, 61, 1, 3, 6, 0, CAST(0x0000A2620110A10C AS DateTime), CAST(0x0000A2620110A10C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (522, 61, 2, 3, 6, 0, CAST(0x0000A2620110A10C AS DateTime), CAST(0x0000A2620110A10C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (523, 61, 3, 3, 6, 0, CAST(0x0000A2620110A10C AS DateTime), CAST(0x0000A2620110A10C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (524, 61, 4, 3, 6, 0, CAST(0x0000A2620110A10D AS DateTime), CAST(0x0000A2620110A10D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (525, 61, 1, 4, 0, 0, CAST(0x0000A2620110A10D AS DateTime), CAST(0x0000A2620110A10D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (526, 61, 2, 4, 0, 0, CAST(0x0000A2620110A10D AS DateTime), CAST(0x0000A2620110A10D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (527, 61, 3, 4, 0, 0, CAST(0x0000A2620110A10D AS DateTime), CAST(0x0000A2620110A10D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (528, 61, 4, 4, 0, 0, CAST(0x0000A2620110A10D AS DateTime), CAST(0x0000A2620110A10D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (529, 61, 1, 11, 10, 0, CAST(0x0000A2620110A10E AS DateTime), CAST(0x0000A2620110A10E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (530, 61, 2, 11, 10, 0, CAST(0x0000A2620110A10E AS DateTime), CAST(0x0000A2620110A10E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (531, 61, 3, 11, 10, 0, CAST(0x0000A2620110A10E AS DateTime), CAST(0x0000A2620110A10E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (532, 61, 4, 11, 10, 0, CAST(0x0000A2620110A10E AS DateTime), CAST(0x0000A2620110A10E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (533, 61, 1, 11, 11, 0, CAST(0x0000A2620110A10E AS DateTime), CAST(0x0000A2620110A10E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (534, 61, 2, 11, 11, 0, CAST(0x0000A2620110A10F AS DateTime), CAST(0x0000A2620110A10F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (535, 61, 3, 11, 11, 0, CAST(0x0000A2620110A10F AS DateTime), CAST(0x0000A2620110A10F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (536, 61, 4, 11, 11, 0, CAST(0x0000A2620110A10F AS DateTime), CAST(0x0000A2620110A10F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (537, 62, 1, 1, 0, 1, CAST(0x0000A28C00F95591 AS DateTime), CAST(0x0000A28C00F95591 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (538, 62, 2, 1, 0, 0, CAST(0x0000A28C00F95594 AS DateTime), CAST(0x0000A28C00F95594 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (539, 62, 3, 1, 0, 0, CAST(0x0000A28C00F95597 AS DateTime), CAST(0x0000A28C00F95597 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (540, 62, 4, 1, 0, 0, CAST(0x0000A28C00F9559A AS DateTime), CAST(0x0000A28C00F9559A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (541, 62, 1, 2, 0, 0, CAST(0x0000A28C00F9559C AS DateTime), CAST(0x0000A28C00F9559C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (542, 62, 2, 2, 0, 0, CAST(0x0000A28C00F9559E AS DateTime), CAST(0x0000A28C00F9559E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (543, 62, 3, 2, 0, 0, CAST(0x0000A28C00F955A1 AS DateTime), CAST(0x0000A28C00F955A1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (544, 62, 4, 2, 0, 0, CAST(0x0000A28C00F955A3 AS DateTime), CAST(0x0000A28C00F955A3 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (545, 62, 1, 3, 4, 0, CAST(0x0000A28C00F955A4 AS DateTime), CAST(0x0000A28C00F955A4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (546, 62, 2, 3, 4, 1, CAST(0x0000A28C00F955AC AS DateTime), CAST(0x0000A28C00F955AC AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (547, 62, 3, 3, 4, 0, CAST(0x0000A28C00F955AE AS DateTime), CAST(0x0000A28C00F955AE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (548, 62, 4, 3, 4, 0, CAST(0x0000A28C00F955B0 AS DateTime), CAST(0x0000A28C00F955B0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (549, 62, 1, 3, 6, 0, CAST(0x0000A28C00F955B2 AS DateTime), CAST(0x0000A28C00F955B2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (550, 62, 2, 3, 6, 0, CAST(0x0000A28C00F955B4 AS DateTime), CAST(0x0000A28C00F955B4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (551, 62, 3, 3, 6, 1, CAST(0x0000A28C00F955BC AS DateTime), CAST(0x0000A28C00F955BC AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (552, 62, 4, 3, 6, 0, CAST(0x0000A28C00F955BE AS DateTime), CAST(0x0000A28C00F955BE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (553, 62, 1, 4, 0, 0, CAST(0x0000A28C00F955C0 AS DateTime), CAST(0x0000A28C00F955C0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (554, 62, 2, 4, 0, 0, CAST(0x0000A28C00F955C3 AS DateTime), CAST(0x0000A28C00F955C3 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (555, 62, 3, 4, 0, 0, CAST(0x0000A28C00F955C5 AS DateTime), CAST(0x0000A28C00F955C5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (556, 62, 4, 4, 0, 0, CAST(0x0000A28C00F955C7 AS DateTime), CAST(0x0000A28C00F955C7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (557, 62, 1, 11, 10, 0, CAST(0x0000A28C00F955CA AS DateTime), CAST(0x0000A28C00F955CA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (558, 62, 2, 11, 10, 0, CAST(0x0000A28C00F955D0 AS DateTime), CAST(0x0000A28C00F955D0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (559, 62, 3, 11, 10, 0, CAST(0x0000A28C00F955D2 AS DateTime), CAST(0x0000A28C00F955D2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (560, 62, 4, 11, 10, 1, CAST(0x0000A28C00F955D4 AS DateTime), CAST(0x0000A28C00F955D4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (561, 62, 1, 11, 11, 0, CAST(0x0000A28C00F955D6 AS DateTime), CAST(0x0000A28C00F955D6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (562, 62, 2, 11, 11, 0, CAST(0x0000A28C00F955D7 AS DateTime), CAST(0x0000A28C00F955D7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (563, 62, 3, 11, 11, 0, CAST(0x0000A28C00F955DA AS DateTime), CAST(0x0000A28C00F955DA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (564, 62, 4, 11, 11, 1, CAST(0x0000A28C00F955DB AS DateTime), CAST(0x0000A28C00F955DB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (565, 63, 1, 1, 0, 1, CAST(0x0000A28C00F9C7ED AS DateTime), CAST(0x0000A28C00F9C7ED AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (566, 63, 2, 1, 0, 0, CAST(0x0000A28C00F9C9C6 AS DateTime), CAST(0x0000A28C00F9C9C6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (567, 63, 3, 1, 0, 0, CAST(0x0000A28C00F9CB1A AS DateTime), CAST(0x0000A28C00F9CB1A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (568, 63, 4, 1, 0, 0, CAST(0x0000A28C00F9CC6E AS DateTime), CAST(0x0000A28C00F9CC6E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (569, 63, 1, 2, 0, 0, CAST(0x0000A28C00F9D1C1 AS DateTime), CAST(0x0000A28C00F9D1C1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (570, 63, 2, 2, 0, 0, CAST(0x0000A28C00F9D31D AS DateTime), CAST(0x0000A28C00F9D31D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (571, 63, 3, 2, 0, 0, CAST(0x0000A28C00F9D469 AS DateTime), CAST(0x0000A28C00F9D469 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (572, 63, 4, 2, 0, 0, CAST(0x0000A28C00F9D5AC AS DateTime), CAST(0x0000A28C00F9D5AC AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (573, 63, 1, 3, 4, 0, CAST(0x0000A28C00F9DC1E AS DateTime), CAST(0x0000A28C00F9DC1E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (574, 63, 2, 3, 4, 1, CAST(0x0000A28C00F9DDFC AS DateTime), CAST(0x0000A28C00F9DDFC AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (575, 63, 3, 3, 4, 0, CAST(0x0000A28C00F9DF8D AS DateTime), CAST(0x0000A28C00F9DF8D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (576, 63, 4, 3, 4, 0, CAST(0x0000A28C00F9E117 AS DateTime), CAST(0x0000A28C00F9E117 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (577, 63, 1, 3, 6, 0, CAST(0x0000A28C00F9E4D6 AS DateTime), CAST(0x0000A28C00F9E4D6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (578, 63, 2, 3, 6, 0, CAST(0x0000A28C00F9E66A AS DateTime), CAST(0x0000A28C00F9E66A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (579, 63, 3, 3, 6, 1, CAST(0x0000A28C00F9E800 AS DateTime), CAST(0x0000A28C00F9E800 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (580, 63, 4, 3, 6, 0, CAST(0x0000A28C00F9E980 AS DateTime), CAST(0x0000A28C00F9E980 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (581, 63, 1, 4, 0, 0, CAST(0x0000A28C00F9F1D3 AS DateTime), CAST(0x0000A28C00F9F1D3 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (582, 63, 2, 4, 0, 0, CAST(0x0000A28C00F9F35F AS DateTime), CAST(0x0000A28C00F9F35F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (583, 63, 3, 4, 0, 1, CAST(0x0000A28C00F9F486 AS DateTime), CAST(0x0000A28C00F9F486 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (584, 63, 4, 4, 0, 0, CAST(0x0000A28C00F9F5AD AS DateTime), CAST(0x0000A28C00F9F5AD AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (585, 63, 1, 11, 10, 0, CAST(0x0000A28C00F9FB6C AS DateTime), CAST(0x0000A28C00F9FB6C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (586, 63, 2, 11, 10, 0, CAST(0x0000A28C00F9FC77 AS DateTime), CAST(0x0000A28C00F9FC77 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (587, 63, 3, 11, 10, 0, CAST(0x0000A28C00F9FDC6 AS DateTime), CAST(0x0000A28C00F9FDC6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (588, 63, 4, 11, 10, 1, CAST(0x0000A28C00F9FF36 AS DateTime), CAST(0x0000A28C00F9FF36 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (589, 63, 1, 11, 11, 0, CAST(0x0000A28C00FA0237 AS DateTime), CAST(0x0000A28C00FA0237 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (590, 63, 2, 11, 11, 0, CAST(0x0000A28C00FA038C AS DateTime), CAST(0x0000A28C00FA038C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (591, 63, 3, 11, 11, 0, CAST(0x0000A28C00FA0631 AS DateTime), CAST(0x0000A28C00FA0631 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (592, 63, 4, 11, 11, 1, CAST(0x0000A28C00FA079A AS DateTime), CAST(0x0000A28C00FA079A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (593, 64, 1, 1, 0, 1, CAST(0x0000A28C01006617 AS DateTime), CAST(0x0000A28C01006617 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (594, 64, 2, 1, 0, 0, CAST(0x0000A28C01006619 AS DateTime), CAST(0x0000A28C01006619 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (595, 64, 3, 1, 0, 0, CAST(0x0000A28C01006622 AS DateTime), CAST(0x0000A28C01006622 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (596, 64, 4, 1, 0, 0, CAST(0x0000A28C01006624 AS DateTime), CAST(0x0000A28C01006624 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (597, 64, 1, 2, 0, 0, CAST(0x0000A28C01006626 AS DateTime), CAST(0x0000A28C01006626 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (598, 64, 2, 2, 0, 1, CAST(0x0000A28C01006627 AS DateTime), CAST(0x0000A28C01006627 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (599, 64, 3, 2, 0, 0, CAST(0x0000A28C0100662A AS DateTime), CAST(0x0000A28C0100662A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (600, 64, 4, 2, 0, 0, CAST(0x0000A28C0100662C AS DateTime), CAST(0x0000A28C0100662C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (601, 64, 1, 3, 4, 0, CAST(0x0000A28C0100662D AS DateTime), CAST(0x0000A28C0100662D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (602, 64, 2, 3, 4, 0, CAST(0x0000A28C0100662F AS DateTime), CAST(0x0000A28C0100662F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (603, 64, 3, 3, 4, 1, CAST(0x0000A28C01006631 AS DateTime), CAST(0x0000A28C01006631 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (604, 64, 4, 3, 4, 0, CAST(0x0000A28C01006633 AS DateTime), CAST(0x0000A28C01006633 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (605, 64, 1, 3, 6, 0, CAST(0x0000A28C0100663B AS DateTime), CAST(0x0000A28C0100663B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (606, 64, 2, 3, 6, 0, CAST(0x0000A28C0100663D AS DateTime), CAST(0x0000A28C0100663D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (607, 64, 3, 3, 6, 0, CAST(0x0000A28C0100663F AS DateTime), CAST(0x0000A28C0100663F AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (608, 64, 4, 3, 6, 0, CAST(0x0000A28C01006641 AS DateTime), CAST(0x0000A28C01006641 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (609, 64, 1, 4, 0, 0, CAST(0x0000A28C01006643 AS DateTime), CAST(0x0000A28C01006643 AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (610, 64, 2, 4, 0, 0, CAST(0x0000A28C01006645 AS DateTime), CAST(0x0000A28C01006645 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (611, 64, 3, 4, 0, 0, CAST(0x0000A28C0100664D AS DateTime), CAST(0x0000A28C0100664D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (612, 64, 4, 4, 0, 0, CAST(0x0000A28C0100664E AS DateTime), CAST(0x0000A28C0100664E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (613, 64, 1, 11, 10, 0, CAST(0x0000A28C01006650 AS DateTime), CAST(0x0000A28C01006650 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (614, 64, 2, 11, 10, 0, CAST(0x0000A28C01006653 AS DateTime), CAST(0x0000A28C01006653 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (615, 64, 3, 11, 10, 1, CAST(0x0000A28C01006655 AS DateTime), CAST(0x0000A28C01006655 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (616, 64, 4, 11, 10, 0, CAST(0x0000A28C01006657 AS DateTime), CAST(0x0000A28C01006657 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (617, 64, 1, 11, 11, 0, CAST(0x0000A28C0100665D AS DateTime), CAST(0x0000A28C0100665D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (618, 64, 2, 11, 11, 0, CAST(0x0000A28C01006664 AS DateTime), CAST(0x0000A28C01006664 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (619, 64, 3, 11, 11, 0, CAST(0x0000A28C01006666 AS DateTime), CAST(0x0000A28C01006666 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (620, 64, 4, 11, 11, 1, CAST(0x0000A28C01006669 AS DateTime), CAST(0x0000A28C01006669 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (621, 7, 1, 1, 0, 1, CAST(0x0000A296010E8DD7 AS DateTime), CAST(0x0000A296010E8DD7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (622, 7, 2, 1, 0, 0, CAST(0x0000A296010E8DDF AS DateTime), CAST(0x0000A296010E8DDF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (623, 7, 3, 1, 0, 0, CAST(0x0000A296010E8DE1 AS DateTime), CAST(0x0000A296010E8DE1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (624, 7, 4, 1, 0, 0, CAST(0x0000A296010E8DE4 AS DateTime), CAST(0x0000A296010E8DE4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (625, 7, 1, 2, 0, 0, CAST(0x0000A296010E8DE5 AS DateTime), CAST(0x0000A296010E8DE5 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (626, 7, 2, 2, 0, 1, CAST(0x0000A296010E8DE8 AS DateTime), CAST(0x0000A296010E8DE8 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (627, 7, 3, 2, 0, 0, CAST(0x0000A296010E8DEA AS DateTime), CAST(0x0000A296010E8DEA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (628, 7, 4, 2, 0, 0, CAST(0x0000A296010E8DEB AS DateTime), CAST(0x0000A296010E8DEB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (629, 7, 1, 3, 4, 0, CAST(0x0000A296010E8DEE AS DateTime), CAST(0x0000A296010E8DEE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (630, 7, 2, 3, 4, 0, CAST(0x0000A296010E8DF0 AS DateTime), CAST(0x0000A296010E8DF0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (631, 7, 3, 3, 4, 1, CAST(0x0000A296010E8DF2 AS DateTime), CAST(0x0000A296010E8DF2 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (632, 7, 4, 3, 4, 0, CAST(0x0000A296010E8DF3 AS DateTime), CAST(0x0000A296010E8DF3 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (633, 7, 1, 3, 6, 0, CAST(0x0000A296010E8DF6 AS DateTime), CAST(0x0000A296010E8DF6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (634, 7, 2, 3, 6, 0, CAST(0x0000A296010E8DF7 AS DateTime), CAST(0x0000A296010E8DF7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (635, 7, 3, 3, 6, 0, CAST(0x0000A296010E8DF9 AS DateTime), CAST(0x0000A296010E8DF9 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (636, 7, 4, 3, 6, 1, CAST(0x0000A296010E8DFB AS DateTime), CAST(0x0000A296010E8DFB AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (637, 7, 1, 4, 0, 0, CAST(0x0000A296010E8DFD AS DateTime), CAST(0x0000A296010E8DFD AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (638, 7, 2, 4, 0, 0, CAST(0x0000A296010E8DFE AS DateTime), CAST(0x0000A296010E8DFE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (639, 7, 3, 4, 0, 0, CAST(0x0000A296010E8E00 AS DateTime), CAST(0x0000A296010E8E00 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (640, 7, 4, 4, 0, 0, CAST(0x0000A296010E8E02 AS DateTime), CAST(0x0000A296010E8E02 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (641, 7, 1, 11, 10, 0, CAST(0x0000A296010E8E04 AS DateTime), CAST(0x0000A296010E8E04 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (642, 7, 2, 11, 10, 0, CAST(0x0000A296010E8E06 AS DateTime), CAST(0x0000A296010E8E06 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (643, 7, 3, 11, 10, 0, CAST(0x0000A296010E8E08 AS DateTime), CAST(0x0000A296010E8E08 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (644, 7, 4, 11, 10, 0, CAST(0x0000A296010E8E0A AS DateTime), CAST(0x0000A296010E8E0A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (645, 7, 1, 11, 11, 0, CAST(0x0000A296010E8E0C AS DateTime), CAST(0x0000A296010E8E0C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (646, 7, 2, 11, 11, 0, CAST(0x0000A296010E8E0E AS DateTime), CAST(0x0000A296010E8E0E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (647, 7, 3, 11, 11, 0, CAST(0x0000A296010E8E14 AS DateTime), CAST(0x0000A296010E8E14 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (648, 7, 4, 11, 11, 0, CAST(0x0000A296010E8E16 AS DateTime), CAST(0x0000A296010E8E16 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (649, 61, 1, 1, 0, 0, CAST(0x0000A29C00E2EA46 AS DateTime), CAST(0x0000A29C00E2EA46 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (650, 61, 2, 1, 0, 0, CAST(0x0000A29C00E2EA58 AS DateTime), CAST(0x0000A29C00E2EA58 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (651, 61, 3, 1, 0, 0, CAST(0x0000A29C00E2EA5E AS DateTime), CAST(0x0000A29C00E2EA5E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (652, 61, 4, 1, 0, 0, CAST(0x0000A29C00E2EA63 AS DateTime), CAST(0x0000A29C00E2EA63 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (653, 61, 1, 2, 0, 0, CAST(0x0000A29C00E2EA69 AS DateTime), CAST(0x0000A29C00E2EA69 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (654, 61, 2, 2, 0, 0, CAST(0x0000A29C00E2EA6E AS DateTime), CAST(0x0000A29C00E2EA6E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (655, 61, 3, 2, 0, 0, CAST(0x0000A29C00E2EA74 AS DateTime), CAST(0x0000A29C00E2EA74 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (656, 61, 4, 2, 0, 0, CAST(0x0000A29C00E2EA79 AS DateTime), CAST(0x0000A29C00E2EA79 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (657, 45, 1, 1, 0, 0, CAST(0x0000A29C00E323BA AS DateTime), CAST(0x0000A29C00E323BA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (658, 45, 2, 1, 0, 0, CAST(0x0000A29C00E323BD AS DateTime), CAST(0x0000A29C00E323BD AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (659, 45, 3, 1, 0, 0, CAST(0x0000A29C00E323C0 AS DateTime), CAST(0x0000A29C00E323C0 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (660, 45, 4, 1, 0, 0, CAST(0x0000A29C00E323C3 AS DateTime), CAST(0x0000A29C00E323C3 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (661, 45, 1, 2, 0, 0, CAST(0x0000A29C00E323C6 AS DateTime), CAST(0x0000A29C00E323C6 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (662, 45, 2, 2, 0, 0, CAST(0x0000A29C00E323CA AS DateTime), CAST(0x0000A29C00E323CA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (663, 45, 3, 2, 0, 0, CAST(0x0000A29C00E323CE AS DateTime), CAST(0x0000A29C00E323CE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (664, 45, 4, 2, 0, 0, CAST(0x0000A29C00E323DA AS DateTime), CAST(0x0000A29C00E323DA AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (665, 61, 1, 1, 0, 0, CAST(0x0000A29C00E35881 AS DateTime), CAST(0x0000A29C00E35881 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (666, 61, 2, 1, 0, 0, CAST(0x0000A29C00E35885 AS DateTime), CAST(0x0000A29C00E35885 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (667, 61, 3, 1, 0, 0, CAST(0x0000A29C00E3588A AS DateTime), CAST(0x0000A29C00E3588A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (668, 61, 4, 1, 0, 0, CAST(0x0000A29C00E35890 AS DateTime), CAST(0x0000A29C00E35890 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (669, 61, 1, 2, 0, 0, CAST(0x0000A29C00E35893 AS DateTime), CAST(0x0000A29C00E35893 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (670, 61, 2, 2, 0, 0, CAST(0x0000A29C00E35897 AS DateTime), CAST(0x0000A29C00E35897 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (671, 61, 3, 2, 0, 0, CAST(0x0000A29C00E3589A AS DateTime), CAST(0x0000A29C00E3589A AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (672, 61, 4, 2, 0, 0, CAST(0x0000A29C00E3589C AS DateTime), CAST(0x0000A29C00E3589C AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (673, 62, 1, 1, 0, 0, CAST(0x0000A29C00E3870B AS DateTime), CAST(0x0000A29C00E3870B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (674, 62, 2, 1, 0, 0, CAST(0x0000A29C00E3870D AS DateTime), CAST(0x0000A29C00E3870D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (675, 62, 3, 1, 0, 0, CAST(0x0000A29C00E38710 AS DateTime), CAST(0x0000A29C00E38710 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (676, 62, 4, 1, 0, 0, CAST(0x0000A29C00E38712 AS DateTime), CAST(0x0000A29C00E38712 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (677, 62, 1, 2, 0, 0, CAST(0x0000A29C00E38716 AS DateTime), CAST(0x0000A29C00E38716 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (678, 62, 2, 2, 0, 0, CAST(0x0000A29C00E38719 AS DateTime), CAST(0x0000A29C00E38719 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (679, 62, 3, 2, 0, 0, CAST(0x0000A29C00E3871B AS DateTime), CAST(0x0000A29C00E3871B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (680, 62, 4, 2, 0, 0, CAST(0x0000A29C00E3871D AS DateTime), CAST(0x0000A29C00E3871D AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (681, 62, 1, 1, 0, 0, CAST(0x0000A29C00E3B738 AS DateTime), CAST(0x0000A29C00E3B738 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (682, 62, 2, 1, 0, 0, CAST(0x0000A29C00E3B73B AS DateTime), CAST(0x0000A29C00E3B73B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (683, 62, 3, 1, 0, 0, CAST(0x0000A29C00E3B73E AS DateTime), CAST(0x0000A29C00E3B73E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (684, 62, 4, 1, 0, 0, CAST(0x0000A29C00E3B742 AS DateTime), CAST(0x0000A29C00E3B742 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (685, 62, 1, 2, 0, 0, CAST(0x0000A29C00E3B745 AS DateTime), CAST(0x0000A29C00E3B745 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (686, 62, 2, 2, 0, 0, CAST(0x0000A29C00E3B748 AS DateTime), CAST(0x0000A29C00E3B748 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (687, 62, 3, 2, 0, 0, CAST(0x0000A29C00E3B74B AS DateTime), CAST(0x0000A29C00E3B74B AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (688, 62, 4, 2, 0, 0, CAST(0x0000A29C00E3B74E AS DateTime), CAST(0x0000A29C00E3B74E AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (689, 61, 1, 1, 0, 0, CAST(0x0000A29C00E483AD AS DateTime), CAST(0x0000A29C00E483AD AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (690, 61, 2, 1, 0, 0, CAST(0x0000A29C00E483AF AS DateTime), CAST(0x0000A29C00E483AF AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (691, 61, 3, 1, 0, 0, CAST(0x0000A29C00E483BC AS DateTime), CAST(0x0000A29C00E483BC AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (692, 61, 4, 1, 0, 0, CAST(0x0000A29C00E483BE AS DateTime), CAST(0x0000A29C00E483BE AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (693, 61, 1, 2, 0, 0, CAST(0x0000A29C00E483C1 AS DateTime), CAST(0x0000A29C00E483C1 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (694, 61, 2, 2, 0, 0, CAST(0x0000A29C00E483C4 AS DateTime), CAST(0x0000A29C00E483C4 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (695, 61, 3, 2, 0, 0, CAST(0x0000A29C00E483C7 AS DateTime), CAST(0x0000A29C00E483C7 AS DateTime))
INSERT [dbo].[UserRoleGroup] ([UserRoleGroupID], [UserID], [RoleGroupID], [DepartmentID], [SubDepartmentID], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (696, 61, 4, 2, 0, 0, CAST(0x0000A29C00E483C9 AS DateTime), CAST(0x0000A29C00E483C9 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserRoleGroup] OFF
/****** Object:  Table [dbo].[Terminology]    Script Date: 02/19/2014 11:56:25 ******/
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
SET IDENTITY_INSERT [dbo].[Terminology] ON
INSERT [dbo].[Terminology] ([TerminologyID], [TerminologyName], [CreatedOn], [ModifiedOn]) VALUES (1, N'Department', CAST(0x0000A25D00209F04 AS DateTime), NULL)
INSERT [dbo].[Terminology] ([TerminologyID], [TerminologyName], [CreatedOn], [ModifiedOn]) VALUES (2, N'Process', CAST(0x0000A25D00209F04 AS DateTime), NULL)
INSERT [dbo].[Terminology] ([TerminologyID], [TerminologyName], [CreatedOn], [ModifiedOn]) VALUES (3, N'Group', CAST(0x0000A25D00209F04 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Terminology] OFF
/****** Object:  Table [dbo].[WorkflowStatus]    Script Date: 02/19/2014 11:56:25 ******/
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
SET IDENTITY_INSERT [dbo].[WorkflowStatus] ON
INSERT [dbo].[WorkflowStatus] ([WorkflowStatusID], [WorkflowStatusName]) VALUES (1, N'Initial Draft')
INSERT [dbo].[WorkflowStatus] ([WorkflowStatusID], [WorkflowStatusName]) VALUES (2, N'Pending for Review')
INSERT [dbo].[WorkflowStatus] ([WorkflowStatusID], [WorkflowStatusName]) VALUES (3, N'Pending for Approval')
INSERT [dbo].[WorkflowStatus] ([WorkflowStatusID], [WorkflowStatusName]) VALUES (4, N'Approved')
INSERT [dbo].[WorkflowStatus] ([WorkflowStatusID], [WorkflowStatusName]) VALUES (5, N'Rejected')
INSERT [dbo].[WorkflowStatus] ([WorkflowStatusID], [WorkflowStatusName]) VALUES (6, N'Published')
SET IDENTITY_INSERT [dbo].[WorkflowStatus] OFF
/****** Object:  Table [dbo].[AuditCertifications]    Script Date: 02/19/2014 11:56:24 ******/
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
SET IDENTITY_INSERT [dbo].[AuditCertifications] ON
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (1, N'12', N'Certified IA,Internal Training', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (2, N'7', N'Certified IA', CAST(0x0000A28A00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (3, N'13', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (4, N'14', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (5, N'15', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (6, N'16', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (10, N'20', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (11, N'21', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (12, N'22', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (13, N'23', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (14, N'24', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (15, N'25', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (16, N'26', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (20, N'30', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (21, N'31', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (22, N'32', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (23, N'33', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (24, N'34', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (25, N'35', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (26, N'36', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (27, N'37', N'Internal Training', CAST(0x0000A25C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (31, N'41', N'Certified IA', CAST(0x0000A24C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (32, N'42', N'Internal Training', CAST(0x0000A24B00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (33, N'43', N'Internal Training', CAST(0x0000A24B00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (34, N'44', N'Internal Training', CAST(0x0000A24B00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (35, N'45', N'Internal Training', CAST(0x0000A24C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (36, N'46', N'Internal Training', CAST(0x0000A24C00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (37, N'47', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (38, N'48', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (39, N'49', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (40, N'50', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (41, N'51', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (42, N'52', N'Certified IA', CAST(0x0000A25300000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (43, N'53', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (44, N'54', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (45, N'55', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (46, N'56', N'Internal Training', CAST(0x0000A1FE00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (47, N'57', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (48, N'58', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (49, N'59', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (50, N'60', N'', NULL)
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (51, N'61', N'Certified IA', CAST(0x0000A24A00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (52, N'62', N'Certified IA,Internal Training', CAST(0x0000A28B00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (53, N'63', N'Certified IA', CAST(0x0000A28B00000000 AS DateTime))
INSERT [dbo].[AuditCertifications] ([AuditCertificationsID], [UserID], [Text], [TrainingDate]) VALUES (54, N'64', N'Certified IA', CAST(0x0000A28B00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[AuditCertifications] OFF
/****** Object:  Table [dbo].[Organization]    Script Date: 02/19/2014 11:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationName] [nvarchar](50) NOT NULL,
	[OrganizationAbreviation] [nvarchar](50) NULL,
	[OrganizationAddress] [nvarchar](max) NOT NULL,
	[ContactNumber] [nvarchar](10) NOT NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[EmailId] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Organization_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Organization_ModifiedOn]  DEFAULT (getdate()),
	[CorporateAddress] [nvarchar](max) NULL,
	[OfficePhoneNumber] [nvarchar](11) NULL,
	[TerminologyID] [int] NULL DEFAULT ((1)),
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Organization] ON
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationName], [OrganizationAbreviation], [OrganizationAddress], [ContactNumber], [FaxNumber], [EmailId], [Website], [CreatedOn], [ModifiedOn], [CorporateAddress], [OfficePhoneNumber], [TerminologyID]) VALUES (1, N'ADITYA  construction company (I) private limited', N'AHIDCO', N'1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 
1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 ', N'1234567891', N'0404343434', N'nnaik1976@gmail.com', N'', CAST(0x0000A1C5014D7611 AS DateTime), CAST(0x0000A29600BE0E82 AS DateTime), N'1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 
1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 
1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 
1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 1234567891 ', N'08482229240', 3)
SET IDENTITY_INSERT [dbo].[Organization] OFF
/****** Object:  UserDefinedFunction [dbo].[fn_Split]    Script Date: 02/19/2014 11:56:29 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_Split](@sText varchar(8000), @sDelim varchar(20) = ' ')
RETURNS @retArray TABLE (idx smallint Primary Key, value varchar(8000))
AS
BEGIN
	DECLARE @idx smallint,
	@value varchar(8000),
	@bcontinue bit,
	@iStrike smallint,
	@iDelimlength tinyint

	IF @sDelim = 'Space'
	BEGIN
		SET @sDelim = ' '
	END

	SET @idx = 0
	SET @sText = LTrim(RTrim(@sText))
	SET @iDelimlength = DATALENGTH(@sDelim)
	SET @bcontinue = 1

	IF NOT ((@iDelimlength = 0) or (@sDelim = 'Empty'))
	BEGIN
		WHILE @bcontinue = 1
		BEGIN
			--If you can find the delimiter in the text, retrieve the first element and
			--insert it with its index into the return table.
			IF CHARINDEX(@sDelim, @sText)>0
			BEGIN
				SET @value = SUBSTRING(@sText,1, CHARINDEX(@sDelim,@sText)-1)
				BEGIN
					INSERT @retArray (idx, value)
					VALUES (@idx, @value)
				END
				--Trim the element and its delimiter from the front of the string.
				--Increment the index and loop.
				SET @iStrike = DATALENGTH(@value) + @iDelimlength
				SET @idx = @idx + 1
				SET @sText = LTrim(Right(@sText,DATALENGTH(@sText) - @iStrike))
		
			END
		ELSE
		BEGIN
			--If you can’t find the delimiter in the text, @sText is the last value in
			--@retArray.
			SET @value = @sText
			BEGIN
				INSERT @retArray (idx, value)
				VALUES (@idx, @value)
			END
			--Exit the WHILE loop.
			SET @bcontinue = 0
		END
	END
END
ELSE
BEGIN
	WHILE @bcontinue=1
	BEGIN
		--If the delimiter is an empty string, check for remaining text
		--instead of a delimiter. Insert the first character into the
		--retArray table. Trim the character from the front of the string.
		--Increment the index and loop.
		IF DATALENGTH(@sText)>1
		BEGIN
			SET @value = SUBSTRING(@sText,1,1)
			BEGIN
				INSERT @retArray (idx, value)
				VALUES (@idx, @value)
			END
			SET @idx = @idx+1
			SET @sText = SUBSTRING(@sText,2,DATALENGTH(@sText)-1)
			
		END
		ELSE
		BEGIN
			--One character remains.
			--Insert the character, and exit the WHILE loop.
			INSERT @retArray (idx, value)
			VALUES (@idx, @sText)
			SET @bcontinue = 0	
		END
	END

END
RETURN
END
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 02/19/2014 11:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentType](
	[DocumentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[IssueApplicable] [bit] NOT NULL CONSTRAINT [DF_DocumentType_IssueApplicable]  DEFAULT ((0)),
	[VersionOrRevision] [bit] NOT NULL,
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
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_DocumentType_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NULL CONSTRAINT [DF_DocumentType_ModifiedOn]  DEFAULT (getdate()),
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[prcGetRoleGroupConfiguration]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetRoleGroupConfiguration    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetRoleGroupConfiguration 1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetRoleGroupConfiguration]    
	@OrganizationID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET NOCOUNT ON
	
	SELECT RoleGroupConfigurationID, OrganizationID, RoleGroupID, RoleID, IsGranted from RoleGroupConfiguration
	WHERE OrganizationID = @OrganizationID
	
	SELECT RoleGroupID, RoleGroupName from RoleGroup
	
	SELECT RoleID, RoleName from ROLE

						
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveRoleGroupConfiguration]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveOrganization    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveRoleGroupConfiguration]    
@RoleGroupConfigurationID int,
@OrganizationID int,
@RoleGroupID int, 
@RoleID int, 
@IsGranted BIT
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @OrgID int
	
	IF @RoleGroupConfigurationID = 0  
	BEGIN
		INSERT INTO RoleGroupConfiguration(OrganizationID, RoleGroupID, RoleID, IsGranted, CreatedOn)
		VALUES (@OrganizationID, @RoleGroupID, @RoleID, @IsGranted, GETDATE())
	END
	ELSE 
	BEGIN
		UPDATE RoleGroupConfiguration SET 
		RoleGroupID = @RoleGroupID, 
		RoleID = @RoleID, 
		IsGranted = @IsGranted, 
		ModifiedOn = GETDATE()
		WHERE RoleGroupConfigurationID = @RoleGroupConfigurationID
	END
	
	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveUserRoleGroup]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveUserRoleGroup    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveUserRoleGroup]    
@UserRoleGroupID int,
@UserID int,
@RoleGroupID int,
@DepartmentID int, 
@SubDepartmentID int, 
@IsGranted BIT
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	IF @UserRoleGroupID = 0  
	BEGIN
		INSERT INTO UserRoleGroup(UserID, RoleGroupID, DepartmentID, SubDepartmentID,IsActive, CreatedOn, ModifiedOn)
		VALUES (@UserID, @RoleGroupID, @DepartmentID, @SubDepartmentID, @IsGranted, GETDATE(), GETDATE())
	END
	ELSE 
	BEGIN
		UPDATE UserRoleGroup SET 
		UserID = @UserID,
		RoleGroupID = @RoleGroupID, 
		DepartmentID = @DepartmentID, 
		SubDepartmentID = @SubDepartmentID,
		IsActive = @IsGranted, 
		ModifiedOn = GETDATE()
		WHERE UserRoleGroupID = @UserRoleGroupID
	END
	
	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserRoleGroupConfiguration]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserRoleGroupConfiguration    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetUserRoleGroupConfiguration 1
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserRoleGroupConfiguration]    
	@UserID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET NOCOUNT ON

	SELECT * FROM UserRoleGroup
	WHERE UserID = @UserID
	
	SELECT RoleGroupID, RoleGroupName from RoleGroup
							
END
GO
/****** Object:  Table [dbo].[DocumentMaster]    Script Date: 02/19/2014 11:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentMaster](
	[DocumentMasterID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
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
	[IsActive] [bit] NOT NULL DEFAULT ((1)),
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_DocumentMaster] PRIMARY KEY CLUSTERED 
(
	[DocumentMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DocumentMaster] ON
INSERT [dbo].[DocumentMaster] ([DocumentMasterID], [OrganizationID], [IssueApplicable], [VersionOrRevision], [InitialNumber], [IncrementBy], [DocumentName1], [DocumentType1], [DocumentName2], [DocumentType2], [DocumentName3], [DocumentType3], [DocumentName4], [DocumentType4], [SerialNumber], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (1, 1, 1, 2, CAST(1.0 AS Decimal(10, 1)), CAST(1.0 AS Decimal(3, 1)), N'', N'4', N'', N'2', N'', N'3', N'', N'1', N'1', 1, CAST(0x0000A1D800D84AA7 AS DateTime), CAST(0x0000A26300CFDE13 AS DateTime))
SET IDENTITY_INSERT [dbo].[DocumentMaster] OFF
/****** Object:  Table [dbo].[DocumentLevels]    Script Date: 02/19/2014 11:56:24 ******/
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
	[IsActive] [bit] NOT NULL DEFAULT ((1)),
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DocumentLevels] PRIMARY KEY CLUSTERED 
(
	[DocumentLevelsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DocumentLevels] ON
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (2, 1, 1, 1, N'quality manual', N'qm', 1, CAST(0x0000A1D1014448EB AS DateTime), CAST(0x0000A2940137B1AD AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (3, 1, 2, 1, N'process map', N'pm', 1, CAST(0x0000A1D101445047 AS DateTime), CAST(0x0000A2940137B1B7 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (4, 1, 2, 2, N'standard operating procedure', N'sop', 1, CAST(0x0000A1D1014451A8 AS DateTime), CAST(0x0000A2940137B1BC AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (7, 1, 1, 2, N'', N'', 0, CAST(0x0000A1DA015D3E79 AS DateTime), CAST(0x0000A24F00E841F6 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (8, 1, 2, 3, N'12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-123a', N'asdf', 0, CAST(0x0000A1DA015D3E79 AS DateTime), CAST(0x0000A28C01277C71 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (9, 1, 3, 1, N'work instruction', N'wi', 1, CAST(0x0000A1DA015D3E7A AS DateTime), CAST(0x0000A2940137B1C1 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (10, 1, 3, 2, N'quality assurance procedure', N'qap', 1, CAST(0x0000A1DA015D3E7A AS DateTime), CAST(0x0000A2940137B1C5 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (11, 1, 1, 3, N'Annexure - 2 Quality Objectives', N'QObj', 0, CAST(0x0000A1DC014BD8A0 AS DateTime), CAST(0x0000A24F00E63F02 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (12, 1, 3, 3, N'www', N'SS', 0, CAST(0x0000A1DC014BD8A2 AS DateTime), CAST(0x0000A28C01277C76 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (13, 1, 1, 4, N'Annexure - 3 Organization Structure', N'OS', 0, CAST(0x0000A1DD00CB8F4C AS DateTime), CAST(0x0000A24F00E63F02 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (14, 1, 2, 4, N'12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-123b', N'kkjk', 0, CAST(0x0000A248001E0148 AS DateTime), CAST(0x0000A28C01277C72 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (15, 1, 1, 5, N'Annexure - 4 Roles, Responsibilities and Authoriti', N'R&R', 0, CAST(0x0000A2480049CD54 AS DateTime), CAST(0x0000A24F00E63F02 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (16, 1, 1, 6, N'Master Document List', N'MDL', 0, CAST(0x0000A2480049CD58 AS DateTime), CAST(0x0000A24B0045E130 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (17, 1, 4, 1, N'format', N'ft', 1, CAST(0x0000A2480049CD58 AS DateTime), CAST(0x0000A2940137B1C9 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (18, 1, 1, 7, N'', N'', 0, CAST(0x0000A24B00324BBB AS DateTime), CAST(0x0000A24E000480BF AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (19, 1, 1, 8, N'', N'', 0, CAST(0x0000A24B00324BBB AS DateTime), CAST(0x0000A24E000480BF AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (20, 1, 4, 2, N'12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-123p', N'qw23', 0, CAST(0x0000A24E0004A4A7 AS DateTime), CAST(0x0000A28C01277C7B AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (21, 1, 3, 4, N'asdert', N'DDD', 0, CAST(0x0000A24F011B2019 AS DateTime), CAST(0x0000A28C01277C77 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (22, 1, 2, 5, N'12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-123b', N'kkjk', 0, CAST(0x0000A24F011C9C50 AS DateTime), CAST(0x0000A25E015B031B AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (23, 1, 3, 5, N'12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-123x', N'kjwe', 0, CAST(0x0000A24F011F53C4 AS DateTime), CAST(0x0000A28C01277C78 AS DateTime))
INSERT [dbo].[DocumentLevels] ([DocumentLevelsID], [OrganizationID], [LevelID], [SubLevelID], [Name], [Abbreviate], [IsActive], [CreatedOn], [ModifiedOn]) VALUES (24, 1, 3, 6, N'12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-12345678910-123x', N'kjwe', 0, CAST(0x0000A24F011F6A8C AS DateTime), CAST(0x0000A25E015B031B AS DateTime))
SET IDENTITY_INSERT [dbo].[DocumentLevels] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 02/19/2014 11:56:24 ******/
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
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Department_IsActive]  DEFAULT ((1)),
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_Department_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NULL CONSTRAINT [DF_Department_ModifiedOn]  DEFAULT (getdate()),
	[DeleteReason] [nvarchar](200) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (1, 1, N'Business Planning', N'BP', N'TSN', N'01234567891', N'1234567890', N'nilesh@confluenceworld.com', N'0', N'Ramakrishna', NULL, NULL, N'rk@adityacc.om', 1, N'TSN', N'0123456789', N'1234567890', N'nilesh@confluenceworld.com', 1, CAST(0x0000A1C70162A278 AS DateTime), CAST(0x0000A25E015F8B4E AS DateTime), N'test reason')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (2, 1, N'Land Acquisition', N'LA', N'TSN', N'12313123132', N'1234512345', N'nilesh@confluenceworld.com', N'0', N'dff', NULL, NULL, N'ddfa@dadsfds.com', 1, N'TSN', N'12313123132', N'1234512345', N'nilesh@confluenceworld.com', 1, CAST(0x0000A1C801521863 AS DateTime), CAST(0x0000A25E0161E715 AS DateTime), N'test reason')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (3, 1, N'Design', N'DSG', N'S Kumar', N'04011223344', N'0123456789', N'sravan.kumar@adity.com', N'1', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, CAST(0x0000A248004B1A26 AS DateTime), CAST(0x0000A29B012F2E52 AS DateTime), NULL)
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (4, 1, N'Management Representative', N'MR', N'B.M Rao', N'012345678', N'0123456789', N'nilesh@confluenceworld.com', N'0', NULL, NULL, NULL, NULL, 1, N'B.M Rao', N'012345678', N'0123456789', N'nilesh@confluenceworld.com', 1, CAST(0x0000A24B002B9F0C AS DateTime), CAST(0x0000A24B002E60C8 AS DateTime), NULL)
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (5, 1, N'Management Representative', N'MR', N'sss', N'123456', NULL, N'ss@yy.in', N'0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, CAST(0x0000A24B004A0409 AS DateTime), CAST(0x0000A24B004A2F5C AS DateTime), N'duplication')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (6, 1, N'aa', N'aa', N'aaaa', N'123', NULL, N'aa@uu.in', N'0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, CAST(0x0000A24B004A5DB1 AS DateTime), CAST(0x0000A24B004A77FD AS DateTime), N'aaa')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (7, 1, N'Human Resource', N'HR', N'Naveen', N'04027762248', N'9000015482', N'naveenaler@xyz.com', N'1', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, CAST(0x0000A25200B18BF7 AS DateTime), CAST(0x0000A25A0152CEE1 AS DateTime), N'1')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (8, 1, N'small letters', N'sl', N'aa', N'012345678910111213', N'1234567891', N'aaa@xyz.com', N'0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, CAST(0x0000A25200D6CB81 AS DateTime), CAST(0x0000A25501226CC1 AS DateTime), N'a12')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (9, 1, N'small letters', N'sl', N'aaaa', N'0123456789100000', N'0123456789', N'aaa@xyz.com', N'0', N'sw', NULL, NULL, N'sw@xyz.com', 1, N'aaaa', N'0123456789100000', N'012345678910111213', N'aaa@xyz.com', 0, CAST(0x0000A25200D6CB86 AS DateTime), CAST(0x0000A25200D9ECEC AS DateTime), N'aa')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (10, 1, N'small letters', N'sl', N'aaaa', N'0123456789100000', N'0123456789', N'aaa@xyz.com', N'0', N'sw', NULL, NULL, N'sw@xyz.com', 1, N'aaaa', N'0123456789100000', N'012345678910111213', N'aaa@xyz.com', 0, CAST(0x0000A25200D6CB8B AS DateTime), CAST(0x0000A25200D9F833 AS DateTime), N'aa')
INSERT [dbo].[Department] ([DepartmentID], [OrganizationID], [DepartmentName], [DepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (11, 1, N'Human Resources', N'HR', N'dsf', N'123', N'234', N'hr@123.com', N'1', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, CAST(0x0000A25A01539AF6 AS DateTime), CAST(0x0000A25A01539AF6 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 02/19/2014 11:56:25 ******/
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
	[Password] [nvarchar](50) NOT NULL,
	[TempPassword] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)),
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Users_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Users_ModifiedOn]  DEFAULT (getdate()),
	[Phone] [nvarchar](11) NULL,
	[Mobile] [nvarchar](11) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (1, N'Administrator', 1, NULL, NULL, 1, N'admin@eqms.com', N'ispace123', N'', 1, CAST(0x0000A1C401506BEB AS DateTime), CAST(0x0000A1D40179B811 AS DateTime), NULL, NULL)
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (7, N'Niraj Sinha', 1, 1, 0, 2, N'nsinha@hotmail.com', N'niraj1', N'', 1, CAST(0x0000A1CA00FBB201 AS DateTime), CAST(0x0000A296010E8DD0 AS DateTime), N'44444444444', N'5555555555')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (11, N'Umesh Naikwade', 1, 2, 0, 2, N'umesh.naikwade@gmail.com', N'umesh1', N'', 1, CAST(0x0000A1FB00D04C29 AS DateTime), CAST(0x0000A1FB00D147A1 AS DateTime), N'434343434', N'434343434')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (12, N'niraj sinha', 1, 1, 0, 2, N'niraj@eqms.com', N'', N'UP8FF3KR', 1, CAST(0x0000A20E016CF506 AS DateTime), CAST(0x0000A21E00E837E3 AS DateTime), N'434343444', N'434343434')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (13, N'dsds', 1, 1, 0, 2, N'ds@sf.com', N'', N'1PG3VASA', 1, CAST(0x0000A22600DE8A26 AS DateTime), CAST(0x0000A22600DE8A26 AS DateTime), N'33223', N'1322')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (14, N'12', 1, 1, 0, 2, N'12@y.com', N'', N'10JAA1NZ', 1, CAST(0x0000A24E0014BECD AS DateTime), CAST(0x0000A24E0014BECD AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (15, N'12', 1, 1, 0, 2, N'12@y.com', N'', N'M9AV98R2', 1, CAST(0x0000A24E0014CD5B AS DateTime), CAST(0x0000A24E0014CD5B AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (16, N'234', 1, 1, 0, 2, N'123@y.com', N'', N'I0825AX2', 1, CAST(0x0000A24E0015893A AS DateTime), CAST(0x0000A24E0015893A AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (20, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'ZGLM1RRT', 1, CAST(0x0000A25D017A3B83 AS DateTime), CAST(0x0000A25D017A3B83 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (21, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'Z191LRUZ', 1, CAST(0x0000A25D017B00D1 AS DateTime), CAST(0x0000A25D017B00D1 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (22, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'57VY14XQ', 1, CAST(0x0000A25D017B72BE AS DateTime), CAST(0x0000A25D017B72BE AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (23, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'DVEH7F2S', 1, CAST(0x0000A25D017BABD0 AS DateTime), CAST(0x0000A25D017BABD0 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (24, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'I8QKS4VB', 1, CAST(0x0000A25D017CCA25 AS DateTime), CAST(0x0000A25D017CCA25 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (25, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'GA6J9355', 1, CAST(0x0000A25D017CFBC2 AS DateTime), CAST(0x0000A25D017CFBC2 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (26, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'KVVLP89A', 1, CAST(0x0000A25D017CFBDE AS DateTime), CAST(0x0000A25D017CFBDE AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (30, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'AERTYO7V', 1, CAST(0x0000A25D018300ED AS DateTime), CAST(0x0000A25D018300ED AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (31, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'KBD4A7Z0', 1, CAST(0x0000A25D01833FA5 AS DateTime), CAST(0x0000A25D01833FA5 AS DateTime), N'98765', N'98765')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (32, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'USL0ZADK', 1, CAST(0x0000A25D01862769 AS DateTime), CAST(0x0000A25D01862769 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (33, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'G1P7V52A', 1, CAST(0x0000A25D0186494F AS DateTime), CAST(0x0000A25D0186494F AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (34, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'LUF5JWT6', 1, CAST(0x0000A25D0188CE28 AS DateTime), CAST(0x0000A25D0188CE28 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (35, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'XR7779EE', 1, CAST(0x0000A25E00024901 AS DateTime), CAST(0x0000A25E00024901 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (36, N'nsinha', 1, 1, 0, 2, N'nsinha@hotmail.com', N'', N'PMEUWDBH', 1, CAST(0x0000A25E0004D704 AS DateTime), CAST(0x0000A25E0004D704 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (37, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'Q8DGAS0D', 1, CAST(0x0000A25E000FDA59 AS DateTime), CAST(0x0000A25E000FDA59 AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (41, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'OMLORSVY', 1, CAST(0x0000A25E00361C16 AS DateTime), CAST(0x0000A25E00361C16 AS DateTime), N'0123456789', N'0123456789')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (42, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'TPH69YKL', 1, CAST(0x0000A25E010FA97E AS DateTime), CAST(0x0000A25E010FA97E AS DateTime), N'9876543210', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (43, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'GEYOL1KS', 1, CAST(0x0000A25E010FBB52 AS DateTime), CAST(0x0000A25E010FBB52 AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (44, N'srikanth', 1, 1, 0, 2, N'srikanth123@gamil.com', N'', N'CKMQ3Y8A', 1, CAST(0x0000A25E010FCC05 AS DateTime), CAST(0x0000A25E010FCC05 AS DateTime), N'0123456789', N'0123456789')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (45, N'aa', 1, 1, 0, 2, N'aa@yxz.com', N'', N'4QVJPLNL', 1, CAST(0x0000A25E01246F92 AS DateTime), CAST(0x0000A29C00E323B6 AS DateTime), N'12345647891', N'1234567891')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (46, N'aa', 1, 1, 0, 2, N'aa@yxz.com', N'', N'10KD3S9F', 1, CAST(0x0000A25E012471D8 AS DateTime), CAST(0x0000A25E012471D8 AS DateTime), N'12345647891', N'1234567891')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (47, N'srikanth', 1, 1, 0, 2, N'dsfkj@dklfsj.com', N'', N'ZIMCWNHS', 1, CAST(0x0000A25E0124E383 AS DateTime), CAST(0x0000A25E0124E383 AS DateTime), N'01234567891', N'9876543210')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (48, N'nilesh', 1, 1, 0, 2, N'aa@yxz.com', N'', N'X43FPHAW', 1, CAST(0x0000A25E01251984 AS DateTime), CAST(0x0000A25E01251984 AS DateTime), N'01234567891', N'9000015482')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (49, N'nilesh', 1, 1, 0, 2, N'aa@yxz.com', N'', N'1KM2U2DC', 1, CAST(0x0000A25E01251C99 AS DateTime), CAST(0x0000A25E01251C99 AS DateTime), N'01234567891', N'9000015482')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (50, N'sasdfdf', 1, 1, 0, 2, N'dfd@dfgfg.moc', N'', N'ZYEI0WN3', 1, CAST(0x0000A25E012C706F AS DateTime), CAST(0x0000A25E012C706F AS DateTime), N'12132323231', N'2123232323')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (51, N'sasdfdf', 1, 1, 0, 2, N'dfd@dfgfg.moc', N'', N'CJEIXCRE', 1, CAST(0x0000A25E012C736D AS DateTime), CAST(0x0000A25E012C736D AS DateTime), N'12132323231', N'2123232323')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (52, N'nilesh', 1, 1, 0, 2, N'naik_nilesh@rediffmail.com', N'', N'CJQ9FHVL', 1, CAST(0x0000A25E01319F8C AS DateTime), CAST(0x0000A25E01319F8C AS DateTime), N'04027762248', N'9000015482')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (55, N'nn', 1, 1, 0, 2, N'dsf1@gmail.com', N'', N'FPNJSCVD', 1, CAST(0x0000A25E0149C5E4 AS DateTime), CAST(0x0000A25E0149C5E4 AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (57, N'nilesh', 1, 1, 0, 2, N'123@y.com', N'', N'GC822RJR', 1, CAST(0x0000A25F00EEC342 AS DateTime), CAST(0x0000A25F00EEC342 AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (58, N'nilesh', 1, 1, 0, 2, N'123@y.com', N'', N'Y4ADI3F0', 1, CAST(0x0000A25F00EEC36C AS DateTime), CAST(0x0000A25F00EEC36C AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (60, N'nilesh', 1, 1, 0, 2, N'nnaik1976@gmail.com', N'pallu82', N'', 1, CAST(0x0000A25F012DCFCF AS DateTime), CAST(0x0000A25F01311E9F AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (61, N'niraj', 1, 1, 0, 2, N'nsinha1@hotmail.com', N'', N'COUJZNX3', 1, CAST(0x0000A26201109E82 AS DateTime), CAST(0x0000A29C00E483A6 AS DateTime), N'', N'')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (62, N'ffffsff', 1, 1, 0, 2, N'niraj.sinha@ispace.com', N'', N'JLVQ2722', 1, CAST(0x0000A28C00F95575 AS DateTime), CAST(0x0000A29C00E3B734 AS DateTime), N'34343434343', N'4432424242')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (63, N'hsjfhsfjkh', 1, 1, 0, 2, N'ds@ds.com', N'', N'RV7PORY9', 1, CAST(0x0000A28C00F9C266 AS DateTime), CAST(0x0000A28C00F9C266 AS DateTime), N'34242424242', N'2242423424')
INSERT [dbo].[Users] ([UserID], [Name], [OrganizationID], [DepartmentID], [SubDepartmentID], [RoleGroupID], [UserEmail], [Password], [TempPassword], [IsActive], [CreatedOn], [ModifiedOn], [Phone], [Mobile]) VALUES (64, N'hffshj', 1, 1, 0, 2, N'sds@dd.com', N'', N'L755SM7D', 1, CAST(0x0000A28C01006614 AS DateTime), CAST(0x0000A28C01006614 AS DateTime), N'22332323232', N'4343434343')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[SubDepartment]    Script Date: 02/19/2014 11:56:25 ******/
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
	[SubProcess] [nvarchar](5) NULL,
	[ReviewerName] [nvarchar](50) NULL,
	[ReviewerLLNumber] [nvarchar](50) NULL,
	[ReviewerMobileNumber] [nvarchar](10) NULL,
	[ReviewerEmailID] [nvarchar](50) NULL,
	[IsHODApprover] [bit] NOT NULL,
	[ApproverName] [nvarchar](50) NULL,
	[ApproverLLNumber] [nvarchar](50) NULL,
	[ApproverMobileNumber] [nvarchar](50) NULL,
	[ApproverEmailID] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_SubDepartment_IsActive]  DEFAULT ((1)),
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_SubDepartment_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_SubDepartment_ModifiedOn]  DEFAULT (getdate()),
	[DeleteReason] [nvarchar](200) NULL,
 CONSTRAINT [PK_SubDepartment] PRIMARY KEY CLUSTERED 
(
	[SubDepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SubDepartment] ON
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (1, 1, N'Recruitment', N'REC', N'dddsdsd', N'44344', N'2424242', N'ccc@sdsds.com', NULL, N'dadada', N'43434', N'2424242', N'nsinha@hotmail.com', 0, N'ewewew', N'42424', N'42424', N'admin@eqms.com', 0, CAST(0x0000A1C901330050 AS DateTime), CAST(0x0000A2480050A312 AS DateTime), N'no sub dept under this process')
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (2, 1, N'dwddwdwdw', N'3233', N'r222323', N'232323', N'3232', N'nss@dsds.com', NULL, N'tyttyt', N'67667', N'676767', N'nsinha@hotmail.com', 1, N'r222323', N'232323', N'3232', N'nsinha@hotmail.com', 0, CAST(0x0000A1C90133CA64 AS DateTime), CAST(0x0000A1C9013B7A5A AS DateTime), N'test reason')
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (3, 2, N'Accounts', N'ACT', N'nilesh ddfdfdf', N'3232323', N'32323', N'nnnn@sdfsdfsd.com', NULL, N'nilesh ddfdfdf', N'3434343', N'3223232323', N'admin@eqms.com', 1, N'nilesh ddfdfdf', N'3232323', N'32323', N'nsinha@hotmail.com', 0, CAST(0x0000A1FB00B295DB AS DateTime), CAST(0x0000A24800521100 AS DateTime), N'sub dept not applicable')
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (4, 3, N'Designing', N'DSG1', N'Mr.Sravan Kumar', N'02312312312', N'0123456789', N'nilesh@confluenceworld.com', NULL, N'1aa', NULL, NULL, N'aa@fgfd.vvf', 1, N'Mr.Sravan Kumar', N'02312312312', N'0123456789', N'nilesh@confluenceworld.com', 1, CAST(0x0000A248006344D9 AS DateTime), CAST(0x0000A25E0165A1F5 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (5, 3, N'Liaisoning for Statutory Approvals', N'DSG', N'Mr.Sravan Kumar', N'023123123', N'0123456789', N'sravan.kumar@adityacc.com', NULL, NULL, NULL, NULL, NULL, 1, N'Mr.Sravan Kumar', N'023123123', N'0123456789', N'sravan.kumar@adityacc.com', 0, CAST(0x0000A248006344DE AS DateTime), CAST(0x0000A248006519F9 AS DateTime), N'duplicate of first one was created by mistake')
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (6, 3, N'Liaisoning for Statutory Approvals', N'DSG', N'Sravan Kumar', N'0123456', N'0123456789', N'nilesh@confluenceworld.com', NULL, NULL, NULL, NULL, NULL, 1, N'Sravan Kumar', N'0123456', N'0123456789', N'nilesh@confluenceworld.com', 1, CAST(0x0000A24B002B208F AS DateTime), CAST(0x0000A24B002EA038 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (7, 7, N'Recruitment', N'RCT', N'Naveen', N'04027762248', N'9000015482', N'naveenaler@xyz.com', NULL, N'Nilesh', N'04012345678', N'1345678910', N'nilesh@xyz.com', 1, N'Naveen', N'04027762248', N'9000015482', N'naveenaler@xyz.com', 1, CAST(0x0000A25200B234A3 AS DateTime), CAST(0x0000A25200B234A3 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (8, 8, N'asd', N'sasd', N'sds', N'11', N'11', N'asd@aw2.co', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, CAST(0x0000A2550110C706 AS DateTime), CAST(0x0000A2550110C706 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (9, 8, N'abc', N'qqq', N'qw', N'123', N'123', N'123@xyz.com', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, CAST(0x0000A255011F3F9A AS DateTime), CAST(0x0000A25501220B92 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (10, 11, N'qqr', N'qqds', N'qqqq1', N'0123456789', N'1234568910', N'aa@12.com', NULL, N'oo', N'1234567891', N'1234567891', N'aa@xyz.com', 1, N'qqqq1', N'0123456789', N'1234568910', N'aa@12.com', 1, CAST(0x0000A25A01558203 AS DateTime), CAST(0x0000A25E002AD398 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (11, 11, N'recruitment', N'rct', N'sdf', N'12345645646', N'2323333333', N'sdf@xyx.com', NULL, N'qqqqqq', N'11111111111', N'1111111111', N'df@xyz.com', 1, N'qw', N'12333333333', N'1111123333', N'sdf@xyx.com', 1, CAST(0x0000A25D000DD7E1 AS DateTime), CAST(0x0000A25E01637195 AS DateTime), NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentID], [DepartmentID], [SubDepartmentName], [SubDepartmentAbbreviate], [HODName], [LLNumber], [MobileNumber], [EmailId], [SubProcess], [ReviewerName], [ReviewerLLNumber], [ReviewerMobileNumber], [ReviewerEmailID], [IsHODApprover], [ApproverName], [ApproverLLNumber], [ApproverMobileNumber], [ApproverEmailID], [IsActive], [CreatedOn], [ModifiedOn], [DeleteReason]) VALUES (12, 2, N'la1', N'la1', N'fgfg', N'11111111111', N'3243324444', N'dsf@fghf.kom', NULL, N'erer', NULL, NULL, N'er@df.com', 1, N'fgfg', NULL, NULL, N'dsf@fghf.kom', 0, CAST(0x0000A25E0161A17D AS DateTime), CAST(0x0000A25E0161A17D AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SubDepartment] OFF
/****** Object:  StoredProcedure [dbo].[prcGetDocumentLevels]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentLevels    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentLevels]    
	@OrganizationID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	
	SELECT OrganizationID,
		LevelID,
		SubLevelID,
		Name,
		Abbreviate,
		IsActive
		FROM DocumentLevels
		WHERE OrganizationID = @OrganizationID
		AND IsActive = 1
	ORDER BY LevelID, SubLevelID
	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentMasterDetails]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentMasterDetails   
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on DepartmentID
-- Parameters: @OrganizationID    
-- Return Values:    
-- i.e:   
-- prcGetDepartmentDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentMasterDetails]    
 @OrganizationID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT DocumentMasterID,
	OrganizationID,
	IssueApplicable,
	VersionOrRevision,
	InitialNumber,
	IncrementBy,
	DocumentName1,
	DocumentType1,
	DocumentName2,
	DocumentType2,
	DocumentName3,
	DocumentType3,
	DocumentName4,
	DocumentType4,
	SerialNumber
	FROM DocumentMaster
	WHERE OrganizationID = @OrganizationID
	AND IsActive = 1

END
GO
/****** Object:  Table [dbo].[Document]    Script Date: 02/19/2014 11:56:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[SubDepartmentID] [int] NOT NULL,
	[DocumentType] [nvarchar](100) NOT NULL,
	[DocumentName] [nvarchar](50) NULL,
	[Version] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL CONSTRAINT [DF_Document_CreatedOn]  DEFAULT (getdate()),
	[ModifiedOn] [datetime] NOT NULL CONSTRAINT [DF_Document_ModifiedOn]  DEFAULT (getdate()),
	[FileType] [nvarchar](10) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CheckInStatus] [bit] NULL DEFAULT ((1)),
	[ModifiedBy] [nvarchar](100) NULL,
	[CheckOutBy] [nvarchar](100) NULL,
	[DocumentNumber] [nvarchar](100) NULL,
	[WorkflowStatusID] [int] NULL DEFAULT ((1)),
	[AssignedTo] [int] NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Document] ON
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (16, 1, 1, N'QM/SOP2/L3/', N'rec manual', N'1.000', 0, CAST(0x0000A1EC0108B4D4 AS DateTime), CAST(0x0000A1F200E78021 AS DateTime), N'.pdf', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (17, 1, 1, N'QM/SOP2/L3/', N'tst2', N'1.000', 0, CAST(0x0000A1EF011EFB19 AS DateTime), CAST(0x0000A1F800AD600E AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (18, 2, 0, N'QM/SOP2/L3/', N'test 3 finance', N'1.000', 0, CAST(0x0000A1F0012EB637 AS DateTime), CAST(0x0000A24B0032F0B6 AS DateTime), N'.xlsx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (19, 1, 1, N'q', N'rec manual', N'1.100', 0, CAST(0x0000A1F200E78021 AS DateTime), CAST(0x0000A1F90134350C AS DateTime), N'.pdf', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (20, 1, 1, N'QM/SOP2/L3/', N'tst2', N'1.100', 0, CAST(0x0000A1F800AD6015 AS DateTime), CAST(0x0000A1FB00AA3025 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (21, 1, 1, N'q', N'rec manual', N'1.200', 0, CAST(0x0000A1F90134350C AS DateTime), CAST(0x0000A24B0016385A AS DateTime), N'.pdf', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (22, 1, 1, N'QM/SOP2/L3/', N'tst2', N'1.200', 0, CAST(0x0000A1FB00AA3025 AS DateTime), CAST(0x0000A2A4010D84C2 AS DateTime), N'.png', N'admin@eqms.com', 1, N'nsinha@hotmail.com', NULL, NULL, 6, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (23, 2, 3, N'QM/PM2/L33/', N'Process Maps for Accounts', N'1.000', 0, CAST(0x0000A1FB00BBE580 AS DateTime), CAST(0x0000A1FB00BF64D2 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (24, 2, 3, N'QM/PM2/L33/', N'Process Maps for Accounts', N'1.100', 0, CAST(0x0000A1FB00BF64D2 AS DateTime), CAST(0x0000A1FB00C2C2DD AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (25, 2, 3, N'QM/PM2/L33/', N'Process Maps for Accounts', N'1.200', 0, CAST(0x0000A1FB00C2C2DD AS DateTime), CAST(0x0000A24B003937AD AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (26, 1, 1, N'QUALITY MANUAL', N'test 1213', N'1.000', 0, CAST(0x0000A1FE00B4EB0A AS DateTime), CAST(0x0000A24B00162F62 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (27, 1, 0, N'QUALITY CHECK', N'test with name', N'1.000', 0, CAST(0x0000A1FF011984B3 AS DateTime), CAST(0x0000A24B001613F7 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, N'ABC/TORG/HR/REC/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (28, 1, 1, N'STANDARD OPERATING PROCEDURES', N'first', N'1.000', 0, CAST(0x0000A21E00FF17ED AS DateTime), CAST(0x0000A24B00163FD5 AS DateTime), N'.doc', N'nsinha@hotmail.com', 1, N'admin@eqms.com', NULL, N'ABC/TORG/HR/REC/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (29, 1, 0, N'PROCESS MAPS', N'Process map for Business Planning', N'1.000', 1, CAST(0x0000A24B0015F280 AS DateTime), CAST(0x0000A24B0015F280 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ABC/BP/REC/PM/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (30, 1, 0, N'STANDARD OPERATING PROCEDURES', N'SOP for Business Planning', N'1.000', 0, CAST(0x0000A24B001910A5 AS DateTime), CAST(0x0000A24F0142BB36 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, N'ACCI/BP/REC/SOP/', 3, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (31, 1, 0, N'Master Document List', N'Master doc', N'1.000', 0, CAST(0x0000A24B0019EF8C AS DateTime), CAST(0x0000A24B0032FD67 AS DateTime), N'.docx', N'admin@eqms.com', 0, N'admin@eqms.com', N'admin@eqms.com', N'ACCI/BP/REC/MDL/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (32, 4, 0, N'QUALITY MANUAL', N'Quality Manual', N'1.000', 1, CAST(0x0000A24B002C1699 AS DateTime), CAST(0x0000A24B002C1699 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/QM/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (33, 4, 0, N'Annexure - 1 Business Process Model', N'Business Process Model', N'1.000', 1, CAST(0x0000A24B0030A94B AS DateTime), CAST(0x0000A24B0030A94B AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/BPM/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (34, 4, 0, N'Annexure - 2 Quality Objectives', N'Quality Objectives', N'1.000', 1, CAST(0x0000A24B0030F6B7 AS DateTime), CAST(0x0000A24B0030F6B7 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/QObj/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (35, 4, 0, N'Annexure - 3 Organization Structure', N'Organization Structure', N'1.000', 1, CAST(0x0000A24B0031584A AS DateTime), CAST(0x0000A24B0031584A AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/OS/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (36, 4, 0, N'Master Document List', N'Master Document List', N'1.000', 1, CAST(0x0000A24B0031E6E5 AS DateTime), CAST(0x0000A24B0031E6E5 AS DateTime), N'.xlsx', N'admin@eqms.com', 0, NULL, N'admin@eqms.com', N'ACCI/BP/REC/MDL/', 2, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (37, 4, 0, N'List of Records', N'List of Records', N'1.000', 1, CAST(0x0000A24B003363F5 AS DateTime), CAST(0x0000A24B003363F5 AS DateTime), N'.xlsx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/LR/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (38, 4, 0, N'List of External Documents', N'List of External Documents', N'1.000', 1, CAST(0x0000A24B0033A0BF AS DateTime), CAST(0x0000A24B0033A0BF AS DateTime), N'.xlsx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/LED/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (39, 2, 0, N'PROCESS MAPS', N'Process map for LA', N'1.000', 1, CAST(0x0000A24B00344347 AS DateTime), CAST(0x0000A24B00344347 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/PM/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (40, 2, 0, N'STANDARD OPERATING PROCEDURES', N'SOP for LA', N'1.000', 0, CAST(0x0000A24B00347243 AS DateTime), CAST(0x0000A25E002FFC3C AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, N'ACCI/BP/REC/SOP/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (41, 2, 0, N'Formats', N'Checklist for Site Assessment', N'1.000', 1, CAST(0x0000A24B0034C651 AS DateTime), CAST(0x0000A24B0034C651 AS DateTime), N'.xlsx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/FT/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (42, 3, 4, N'PROCESS MAPS', N'Process map for Designing', N'1.000', 1, CAST(0x0000A24B0036A8C2 AS DateTime), CAST(0x0000A24B0036A8C2 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/PM/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (43, 3, 6, N'PROCESS MAPS', N'Process map for Liaisoning for Statutory Approvals', N'1.000', 0, CAST(0x0000A24B0037061C AS DateTime), CAST(0x0000A24F0142EAE6 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, N'ACCI/BP/REC/PM/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (44, 3, 4, N'STANDARD OPERATING PROCEDURES', N'SOP for Designing', N'1.000', 1, CAST(0x0000A24B00374088 AS DateTime), CAST(0x0000A24B00374088 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/SOP/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (45, 3, 6, N'STANDARD OPERATING PROCEDURES', N'SOP for Liaisoning for Statutory Approvals', N'1.000', 1, CAST(0x0000A24B0037A040 AS DateTime), CAST(0x0000A24B0037A040 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'ACCI/BP/REC/SOP/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (46, 2, 0, N'Annexure - 3 Organization Structure', N'Process Maps', N'1.000', 1, CAST(0x0000A24E004A5A34 AS DateTime), CAST(0x0000A24E004A5A34 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'aaa/LA/OS/', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (47, 1, 0, N'QUALITY MANUAL', N'tststtststst', N'1.000', 0, CAST(0x0000A24E004AE4CC AS DateTime), CAST(0x0000A25200C3A78D AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (48, 1, 0, N'STANDARD OPERATING PROCEDURES', N'SOP for Business Planning', N'2.000', 1, CAST(0x0000A24F0142BB5B AS DateTime), CAST(0x0000A24F0142BB5B AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (49, 3, 6, N'PROCESS MAPS', N'Process map for Liaisoning for Statutory Approvals', N'2.000', 1, CAST(0x0000A24F0142EAE6 AS DateTime), CAST(0x0000A24F0142EAE6 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (50, 1, 0, N'QUALITY MANUAL', N'tststtststst', N'2.000', 0, CAST(0x0000A25200C3A79D AS DateTime), CAST(0x0000A25E00309375 AS DateTime), N'.doc', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (51, 1, 0, N'sop', N'sop 1234', N'1.000', 0, CAST(0x0000A25E002F435E AS DateTime), CAST(0x0000A25E0030B9B4 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (52, 2, 0, N'STANDARD OPERATING PROCEDURES', N'SOP for LA', N'2.000', 0, CAST(0x0000A25E002FFC3C AS DateTime), CAST(0x0000A25E00303628 AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (53, 2, 0, N'STANDARD OPERATING PROCEDURES', N'SOP for LA', N'3.000', 1, CAST(0x0000A25E0030363B AS DateTime), CAST(0x0000A25E0030363B AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (54, 1, 0, N'QUALITY MANUAL', N'tststtststst', N'3.000', 1, CAST(0x0000A25E00309375 AS DateTime), CAST(0x0000A25E00309375 AS DateTime), N'.docx', N'admin@eqms.com', 0, NULL, N'admin@eqms.com', NULL, 6, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (55, 1, 0, N'sop', N'sop 1234', N'2.000', 0, CAST(0x0000A25E0030B9B4 AS DateTime), CAST(0x0000A25E0031E8EB AS DateTime), N'.docx', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (56, 1, 0, N'sop', N'sop 1234', N'3.000', 1, CAST(0x0000A25E0031E8EB AS DateTime), CAST(0x0000A25E0031E8EB AS DateTime), N'.doc', N'admin@eqms.com', 0, NULL, N'admin@eqms.com', NULL, 2, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (57, 11, 10, N'pm', N'jkjkjjk', N'1.000', 1, CAST(0x0000A25E003AFC0A AS DateTime), CAST(0x0000A25E003AFC0A AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (58, 1, 0, N'sop', N'SOP for Business Planning123', N'1.100', 1, CAST(0x0000A25E011E1C94 AS DateTime), CAST(0x0000A25E011E1C94 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (59, 3, 6, N'sop', N'SOP for LA123', N'1.100', 1, CAST(0x0000A25E011FF984 AS DateTime), CAST(0x0000A25E011FF984 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (60, 4, 0, N'qm', N'Quality Manual1', N'1.100', 1, CAST(0x0000A25E01214C1C AS DateTime), CAST(0x0000A25E01214C1C AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, N'accil/MR/qm/1', 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (61, 2, 0, N'we2344', N'sdfd', N'1.100', 1, CAST(0x0000A25F00C5ABB8 AS DateTime), CAST(0x0000A25F00C5ABB8 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (62, 4, 0, N'sop', N'sop for document control H20', N'1.000', 1, CAST(0x0000A25F00CC6B83 AS DateTime), CAST(0x0000A25F00CC6B83 AS DateTime), N'.pptx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (63, 4, 0, N'sop', N'SOP for dc', N'1.000', 1, CAST(0x0000A25F00D29B14 AS DateTime), CAST(0x0000A25F00D29B14 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (64, 1, 0, N'ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQRSTUVWXYZ--ABCDEFGHIJKLMNOPQRSTUVWXYZ-ABCDEFGHIJKLMNOPQ1', N'testnow', N'1.000', 1, CAST(0x0000A265011D364B AS DateTime), CAST(0x0000A265011D364B AS DateTime), N'.docx', N'admin@eqms.com', 0, NULL, N'admin@eqms.com', N'AHIDCO/BP/aaaa/1', 6, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (65, 2, 0, N'aaaa', N'dddsdd', N'1.000', 1, CAST(0x0000A288012C43A2 AS DateTime), CAST(0x0000A288012C43A2 AS DateTime), N'.doc', N'admin@eqms.com', 1, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (66, 1, 0, N'pm', N'process map for business planning123', N'1.000', 0, CAST(0x0000A2940137F5C8 AS DateTime), CAST(0x0000A29401396DB9 AS DateTime), N'.doc', N'admin@eqms.com', 1, N'admin@eqms.com', NULL, NULL, 1, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (67, 1, 0, N'pm', N'process map for business planning123', N'2.000', 1, CAST(0x0000A29401396DB9 AS DateTime), CAST(0x0000A29401396DB9 AS DateTime), N'.docx', N'admin@eqms.com', 1, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[Document] ([DocumentID], [DepartmentID], [SubDepartmentID], [DocumentType], [DocumentName], [Version], [IsActive], [CreatedOn], [ModifiedOn], [FileType], [CreatedBy], [CheckInStatus], [ModifiedBy], [CheckOutBy], [DocumentNumber], [WorkflowStatusID], [AssignedTo]) VALUES (68, 1, 1, N'QM/SOP2/L3/', N'tst2', N'2.200', 1, CAST(0x0000A2A4010D84E9 AS DateTime), CAST(0x0000A2A4010D84E9 AS DateTime), N'.png', N'nsinha@hotmail.com', 1, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Document] OFF
/****** Object:  StoredProcedure [dbo].[prcDeleteDepartments]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
			
			--PRINT CAST(@DeptID AS VARCHAR(5))
			FETCH NEXT FROM DeptCursor INTO @DeptID
		END
	CLOSE DeptCursor
	DEALLOCATE DeptCursor

	Select 1
	
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocumentMaster]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocumentMaster    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocumentMaster]    
	@DocumentMasterID int,
	@OrganizationID int,
	@IssueApplicable bit,
	@VersionOrRevision int,
	@InitialNumber decimal(5, 1),
	@IncrementBy decimal(3, 1),
	@DocumentName1 nvarchar(50)='',
	@DocumentType1 nvarchar(50),
	@DocumentName2 nvarchar(50)='',
	@DocumentType2 nvarchar(50),
	@DocumentName3 nvarchar(50)='',
	@DocumentType3 nvarchar(50),
	@DocumentName4 nvarchar(50)='',
	@DocumentType4 nvarchar(50),
	@SerialNumber nvarchar(50)

AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @DocMasterID int
	
	IF @OrganizationID = 0                                    
	BEGIN                                    
		RAISERROR ('OrganizationID cannot be 0', 16, 1)               
		RETURN -100                          
	END 

	IF @DocumentMasterID = 0  
	BEGIN
	-- Deactivate all previous data
		Update DocumentMaster SET IsActive = 0
		INSERT INTO DocumentMaster
		(
			OrganizationID,
			IssueApplicable,
			VersionOrRevision,
			InitialNumber,
			IncrementBy,
			DocumentName1,
			DocumentType1,
			DocumentName2,
			DocumentType2,
			DocumentName3,
			DocumentType3,
			DocumentName4,
			DocumentType4,
			SerialNumber,
			IsActive,
			CreatedOn
		)
		VALUES
		(
			@OrganizationID,
			@IssueApplicable,
			@VersionOrRevision,
			@InitialNumber,
			@IncrementBy,
			@DocumentName1,
			@DocumentType1,
			@DocumentName2,
			@DocumentType2,
			@DocumentName3,
			@DocumentType3,
			@DocumentName4,
			@DocumentType4,
			@SerialNumber,
			1,
			GETDATE()
		)
		SET @DocMasterID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE DocumentMaster SET 
			OrganizationID = @OrganizationID,
			IssueApplicable = @IssueApplicable,
			VersionOrRevision = @VersionOrRevision,
			InitialNumber = @InitialNumber,
			IncrementBy = @IncrementBy,
			DocumentName1 = @DocumentName1,
			DocumentType1 = @DocumentType1,
			DocumentName2 = @DocumentName2,
			DocumentType2 = @DocumentType2,
			DocumentName3 = @DocumentName3,
			DocumentType3 = @DocumentType3,
			DocumentName4 = @DocumentName4,
			DocumentType4 = @DocumentType4,
			SerialNumber = @SerialNumber,
			ModifiedOn = GETDATE()
		WHERE DocumentMasterID = @DocumentMasterID
		
		SET @DocMasterID = @DocumentMasterID
	END
	
	select @DocMasterID
	
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocumentLevels]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocumentLevels    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocumentLevels]    
	@OrganizationID int,
	@LevelID int,
	@SubLevelID int,
	@Name nvarchar(100),
	@Abbreviate nvarchar(6),
	@DeactivateOld INT = 0
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	-- Deactivate previous records
	IF @DeactivateOld = 1
	BEGIN 
		UPDATE DocumentLevels
		SET IsActive = 0
		WHERE OrganizationID = @OrganizationID
	END 
	-- Insert new if not exists
	IF NOT EXISTS (SELECT 1 FROM DocumentLevels WHERE OrganizationID = @OrganizationID
			AND LevelID = @LevelID 
			AND SubLevelID = @SubLevelID)
	BEGIN
		INSERT INTO DocumentLevels(
			OrganizationID,
			LevelID,
			SubLevelID,
			Name,
			Abbreviate,
			IsActive,
			CreatedOn,
			ModifiedOn
			)
		VALUES (
			@OrganizationID,
			@LevelID,
			@SubLevelID,
			@Name,
			@Abbreviate,
			1,
			GETDATE(),
			GETDATE()
			)
	END
	ELSE 
	BEGIN
		UPDATE DocumentLevels SET 
			Name = @Name,
			Abbreviate = @Abbreviate,
			IsActive = 1,
			ModifiedOn = GETDATE()
		WHERE OrganizationID = @OrganizationID
			AND LevelID = @LevelID 
			AND SubLevelID = @SubLevelID
		
	END

	SELECT 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDetailsByOrganizationID]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDetailsByOrganizationID   1,'n' 
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDetailsByOrganizationID]    
@OrganizationID int,
@UserName VARCHAR(100) = null
AS     
BEGIN    
  
	
	SELECT UserID, Name, RoleGroupName, OrganizationID, DepartmentID, SubDepartmentID, UserEmail,Phone,Mobile, [Password], TempPassword
	FROM Users us (nolock)
	inner join RoleGroup rg (nolock) ON us.RoleGroupID = rg.RoleGroupID
	WHERE us.DepartmentID in (select DepartmentID from Organization where OrganizationID = @OrganizationID)
	AND IsActive = 1
	AND (Name LIKE COALESCE('%' + @UserName + '%', Name) OR UserEmail LIKE COALESCE('%' + @UserName + '%', UserEmail))
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDetailsByID]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDetailsByID    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- @UserID int,
-- Return Values:    
-- i.e:   
-- prcGetUserDetailsByID '12'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDetailsByID]    
@UserID int
AS     
BEGIN    
  
	
	SELECT us.UserID, Name, RoleGroupName, OrganizationID, DepartmentID, SubDepartmentID, UserEmail,Phone,Mobile, [Password], TempPassword, isnull(ac.Text, '') as Certifications, TrainingDate
	FROM Users us (nolock)
	inner join RoleGroup rg (nolock) ON us.RoleGroupID = rg.RoleGroupID
	left join AuditCertifications ac (nolock) on us.UserID = ac.UserID
	WHERE us.UserID = @UserID
	AND IsActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDetailsByEmail]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDetailsByEmail    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Updates password table
-- Parameters: 
-- @UserEmail nvarchar(100),
-- Return Values:    
-- i.e:   
-- prcGetUserDetailsByEmail 'admin@eqms.com'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDetailsByEmail]    
@UserEmail nvarchar(100)
AS     
BEGIN    
  
	
	SELECT UserID, Name, RoleGroupName, OrganizationID, DepartmentID, SubDepartmentID, UserEmail,Phone,Mobile, [Password], TempPassword
	FROM Users us (nolock)
	inner join RoleGroup rg (nolock) ON us.RoleGroupID = rg.RoleGroupID
	WHERE us.UserEmail = @UserEmail
	AND IsActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetUserDashboardData]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetUserDashboardData    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on DepartmentID
-- Parameters: @DepartmentID    
-- Return Values:    
-- i.e:   
-- prcGetUserDashboardData 1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetUserDashboardData]    
 @UserID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	declare @OrgID int
	declare @CreatedBy varchar(200)
	declare @TotalAssignedCount int
	declare @TotalUploadedCount int
	declare @TotalDocsCount int
	-- Get assigned documents
	SELECT @TotalAssignedCount = COUNT(*) FROM Document
	WHERE AssignedTo = @UserID
	AND IsActive = 1
	
	-- Total uploaded
	select @OrgID = OrganizationID, @CreatedBy= UserEmail from Users where UserID= @UserID
	SELECT @TotalUploadedCount = count(*)  
	  FROM Document d (nolock)  
	  WHERE d.DepartmentID IN (select DepartmentID FROM Department WHERE OrganizationID = @OrgID)  
	  AND d.IsActive = 1
	  AND d.CreatedBy = @CreatedBy 
	  
	  -- Total documents
	select @OrgID = OrganizationID, @CreatedBy= UserEmail from Users where UserID= @UserID
	SELECT @TotalDocsCount = count(*)  
	  FROM Document d (nolock)  
	  WHERE d.DepartmentID IN (select DepartmentID FROM Department WHERE OrganizationID = @OrgID)  
	  AND d.IsActive = 1
  
  select @TotalAssignedCount as TotalAssignedCount, @TotalUploadedCount as TotalUploadedCount, @TotalDocsCount as TotalDocsCount
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetSubDepartmentDetails]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetSubDepartmentDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on SubDepartmentID
-- Parameters: @SubDepartmentID    
-- Return Values:    
-- i.e:   
-- prcGetSubDepartmentDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetSubDepartmentDetails]    
 @SubDepartmentID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT DepartmentID,
		SubDepartmentID,
		SubDepartmentName,
		SubDepartmentAbbreviate,
		HODName,
		LLNumber,
		MobileNumber,
		EmailId,
		ReviewerName,
		ReviewerLLNumber,
		ReviewerMobileNumber,
		ReviewerEmailID,
		IsHODApprover,
		ApproverName,
		ApproverLLNumber,
		ApproverMobileNumber,
		ApproverEmailID
	FROM SubDepartment
	WHERE SubDepartmentID = @SubDepartmentID 

END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveUser]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DocumentChangeRequest]    Script Date: 02/19/2014 11:56:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentChangeRequest](
	[DocumentChangeRequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestNumber] [nvarchar](100) NOT NULL,
	[DocumentID] [int] NOT NULL,
	[Detail] [nvarchar](100) NULL,
	[Reason] [nvarchar](100) NULL,
	[Comment1] [nvarchar](100) NULL,
	[Comment2] [nvarchar](100) NULL,
	[Comment3] [nvarchar](100) NULL,
	[Comment1By] [nvarchar](100) NULL,
	[Comment2By] [nvarchar](100) NULL,
	[Comment3By] [nvarchar](100) NULL,
	[EffectiveDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[DepartmentID] [int] NOT NULL,
	[EffectedDocumentIDs] [nvarchar](500) NULL,
	[WorkflowStatusID] [int] NULL DEFAULT ((1)),
	[IsPublished] [int] NULL DEFAULT ((0)),
	[OrganizationID] [int] NULL,
 CONSTRAINT [PK_DocumentChangeRequest] PRIMARY KEY CLUSTERED 
(
	[DocumentChangeRequestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DocumentChangeRequest] ON
INSERT [dbo].[DocumentChangeRequest] ([DocumentChangeRequestID], [RequestNumber], [DocumentID], [Detail], [Reason], [Comment1], [Comment2], [Comment3], [Comment1By], [Comment2By], [Comment3By], [EffectiveDate], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [DepartmentID], [EffectedDocumentIDs], [WorkflowStatusID], [IsPublished], [OrganizationID]) VALUES (2, N'DCR-BP-001-2013', 22, N'test', N'test', N'tst comm', N'', N'', N'Niraj Sinha', N'', N'', CAST(0x0000A2A400000000 AS DateTime), 0, CAST(0x0000A2A400E266AD AS DateTime), N'nsinha@hotmail.com', NULL, NULL, 1, NULL, 3, NULL, 1)
INSERT [dbo].[DocumentChangeRequest] ([DocumentChangeRequestID], [RequestNumber], [DocumentID], [Detail], [Reason], [Comment1], [Comment2], [Comment3], [Comment1By], [Comment2By], [Comment3By], [EffectiveDate], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [DepartmentID], [EffectedDocumentIDs], [WorkflowStatusID], [IsPublished], [OrganizationID]) VALUES (3, N'DCR-BP-002-2013', 54, N'fdfdfdf', N'fdfdf', N'fdfdfdfd', N'', N'', N'Administrator', N'', N'', CAST(0x0000A2A500000000 AS DateTime), 1, CAST(0x0000A2A4011EE9E7 AS DateTime), N'admin@eqms.com', CAST(0x0000A2AD011F79F3 AS DateTime), NULL, 1, N'29', 3, NULL, 1)
INSERT [dbo].[DocumentChangeRequest] ([DocumentChangeRequestID], [RequestNumber], [DocumentID], [Detail], [Reason], [Comment1], [Comment2], [Comment3], [Comment1By], [Comment2By], [Comment3By], [EffectiveDate], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [DepartmentID], [EffectedDocumentIDs], [WorkflowStatusID], [IsPublished], [OrganizationID]) VALUES (4, N'DCR-BP-003-2014', 56, N'test detail', N'test reason', N'test comment', N'', N'published', N'Administrator', N'', N'', CAST(0x0000A2C700000000 AS DateTime), 1, CAST(0x0000A2C6011B80C0 AS DateTime), N'admin@eqms.com', CAST(0x0000A2C6011C1CC6 AS DateTime), NULL, 1, N'29', 6, 1, 1)
SET IDENTITY_INSERT [dbo].[DocumentChangeRequest] OFF
/****** Object:  StoredProcedure [dbo].[prcCheckAssociatedDocuments]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcCheckAssociatedDocuments    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 
--prcCheckAssociatedDocuments 1, 'QUALITY MANUALS'
-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcCheckAssociatedDocuments]    
	@OrganizationID INT,
	@DocType VARCHAR(100)
	
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @IsExists INT = 0
	IF EXISTS (SELECT 1 FROM Document d (nolock)
		join Department dp (nolock) on d.DepartmentID = dp.DepartmentID
		where dp.OrganizationID = @OrganizationID
		and RTRIM(LTRIM(d.DocumentType)) = RTRIM(LTRIM(@DocType))
		and d.IsActive = 1 )
	BEGIN 
		SELECT @IsExists = 1
	END
	print @IsExists
	SELECT @IsExists

END
GO
/****** Object:  StoredProcedure [dbo].[prcChangePassword]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[prcDeleteUser]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcDeleteUser    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcDeleteUser]    
	@UserEmail nvarchar(50)

AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	UPDATE Users
	SET IsActive = 0,
	ModifiedOn = GETDATE()
	WHERE UserEmail = @UserEmail
	
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[prcDeleteSubDepartments]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[prcDeleteDocument]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[prcValidateUserRole]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************      
-- @@Verion: 1      
-- SP Name: dbo.prcValidateUserRole      
-- Author: Niraj Sinha    
-- Create Date: 20/05/2013      
-- Description: Updates password table  
-- Parameters:   
-- @UserID int,  
-- Return Values:      
-- i.e:     
-- prcValidateUserRole 12,1,1,'Audit Report'  
-- ********************************************************      
CREATE PROCEDURE [dbo].[prcValidateUserRole]      
@UserID INT,  
@DepartmentID INT,  
@SubDepartmentID INT,  
@RoleName nvarchar(200)  
AS       
BEGIN      
    
 declare @MainRoleGroupID int
 select @MainRoleGroupID = RoleGroupID from Users where UserID = @UserID
 IF @MainRoleGroupID = 1
 BEGIN
	select 1
 END
 ELSE
 BEGIN
	 DECLARE @OrganizationID int  
	 SELECT @OrganizationID= OrganizationID FROM  Department WHERE  DepartmentID = @DepartmentID  
	   
	 DECLARE  @temp TABLE (RoleGroupID INT, RoleGroupName VARCHAR(200), RoleID INT, RoleName VARCHAR(200))  
	   
	 INSERT INTO @temp  
	 SELECT rg.RoleGroupID,rg.RoleGroupName, r.RoleID,r.RoleName   
	 FROM RoleGroupConfiguration rgc (nolock)  
	 INNER JOIN RoleGroup rg (nolock) ON rgc.RoleGroupID = rg.RoleGroupID  
	 INNER JOIN Role r (nolock) ON rgc.RoleID = r.RoleID  
	 WHERE r.RoleName = @RoleName  
	 AND rgc.OrganizationID = @OrganizationID  
	 AND rgc.IsGranted = 1  
	  
	 IF EXISTS(  
	  SELECT * FROM  
	  @temp t  
	  INNER JOIN UserRoleGroup urg (nolock) ON t.RoleGroupID = urg.RoleGroupID  
	  WHERE urg.UserID = @UserID  
	  AND urg.DepartmentID = @DepartmentID  
	  AND urg.SubDepartmentID = @SubDepartmentID  
	  and urg.IsActive = 1  
	 )  
	 BEGIN   
	  SELECT 1  
	 END  
	 ELSE  
	 BEGIN  
	  SELECT 0  
	 END
 END  
END
GO
/****** Object:  StoredProcedure [dbo].[prcValidateDocumentPermission]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************      
-- @@Verion: 1      
-- SP Name: dbo.prcValidateDocumentPermission      
-- Author: Niraj Sinha    
-- Create Date: 20/05/2013      
-- Description: Updates password table  
-- Parameters:   
-- @UserID int,  
-- Return Values:      
-- i.e:     
-- prcValidateDocumentPermission 7,54
-- ********************************************************      
CREATE PROCEDURE [dbo].[prcValidateDocumentPermission]      
@UserID INT,  
@DocumentID INT
AS       
BEGIN      
    
 declare @MainRoleGroupID int
 declare @UserEmail varchar(100)
 select @MainRoleGroupID = RoleGroupID, @UserEmail = UserEmail from Users where UserID = @UserID
 
 -- Super administrator/ MR
 IF @MainRoleGroupID = 1
 BEGIN
	select 1
	return
 END
 

	 DECLARE  @temp TABLE (DepartmentID INT, SubDepartmentID VARCHAR(200), AssignedTo varchar(100), CreatedBy varchar(100), WorkflowStatusID int)  
	 INSERT INTO @temp  
	 SELECT DepartmentID, SubDepartmentID, AssignedTo, CreatedBy, WorkflowStatusID
	 from Document where DocumentID= @DocumentID
	 
	 declare @RoleGroupID int
	 SELECT @RoleGroupID = RoleGroupID 
	 from UserRoleGroup urg
	 join @temp t on (urg.DepartmentID = t.DepartmentID and urg.SubDepartmentID = t.SubDepartmentID)
	 WHERE UserID = @UserID
	 and urg.IsActive = 1 
	 
	 declare @WorkflowStatusID int 
	 select @WorkflowStatusID = WorkflowStatusID from @temp
	 -- Published
	 if(@WorkflowStatusID = 6) 
	 begin 
		select 1 
		return
	 end
	 -- AssignedTo user
	 if exists (select 1 from @temp where AssignedTo = @UserID) 
	 begin
		select 1
		return 
	 end
	 -- RoleGroup users
	 if @WorkflowStatusID = 2
	 begin
		if @RoleGroupID = 3 or @RoleGroupID = 4 -- Reviewer or approver group 
		 begin
			select 1
			return 
		 end
	 end
	 if @WorkflowStatusID = 3
	 begin
		if @RoleGroupID = 4 -- Approver group 
		 begin
			select 1
			return 
		 end
	 end
	 
	 SELECT 0  
 
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetOrganizationDetails]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetOrganizationDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves organization details based on OrganizationID
-- Parameters: @OrganizationID    
-- Return Values:    
-- i.e:   
-- prcGetOrganizationDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetOrganizationDetails]    
 @OrganizationID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT OrganizationID, OrganizationName, OrganizationAbreviation AS OrganizationAbbreviate, OrganizationAddress AS Address,
		CorporateAddress, OfficePhoneNumber, ContactNumber, FaxNumber, EmailId AS MDEmail, WebSite, TerminologyID
	FROM ORGANIZATION
	WHERE OrganizationID = @OrganizationID 

	SELECT DepartmentID,
		OrganizationID,
		DepartmentName,
		DepartmentAbbreviate,
		HODName,
		LLNumber,
		MobileNumber,
		EmailId,
		SubProcess,
		ReviewerName,
		ReviewerLLNumber,
		ReviewerMobileNumber,
		ReviewerEmailID,
		IsHODApprover,
		ApproverName,
		ApproverLLNumber,
		ApproverMobileNumber,
		ApproverEmailID
	FROM Department
	WHERE OrganizationID = @OrganizationID
	AND IsActive = 1
	
	SELECT *
	FROM SubDepartment sd
	join Department d on d.DepartmentID = sd.DepartmentID
	WHERE d.OrganizationID = @OrganizationID
	AND sd.IsActive = 1

END
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentNumberDetail]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentList]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentList    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentList 1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentList]      
 @OrgID int  
AS       
BEGIN      
    
 SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
 
 /*
 SELECT d.DocumentID,d.DepartmentID,d.SubDepartmentID,DocumentType,DocumentNumber,DocumentName,[Version],WorkflowStatusName,FileType, CheckInStatus, u.Name as CreatedBy,d.CreatedOn, d.AssignedTo  
  FROM Document d (nolock)  
  inner join Users u on d.CreatedBy = u.UserEmail
  join WorkflowStatus ws ON d.WorkflowStatusID = ws.WorkflowStatusID
  WHERE d.DepartmentID IN (select DepartmentID FROM Department WHERE OrganizationID = @OrgID AND IsActive = 1)
  AND d.SubDepartmentID IN (select SubDepartmentID FROM SubDepartment WHERE OrganizationID = @OrgID AND IsActive = 1)  
  AND d.IsActive = 1  
    
  */
  
  SELECT d.*, WorkflowStatusName, u.Name as CreatedBy
  FROM Organization o (nolock)
  inner join Department dp (nolock) on o.OrganizationID = dp.OrganizationID
  inner join Document d (nolock) on dp.DepartmentID = d.DepartmentID  
  inner join Users u (nolock) on d.CreatedBy = u.UserEmail
  inner join WorkflowStatus ws (nolock) ON d.WorkflowStatusID = ws.WorkflowStatusID
  WHERE d.IsActive = 1
  AND d.DepartmentID IN (select DepartmentID from Department dptemp where dptemp.IsActive = 1 and dptemp.OrganizationID = @OrgID)
  AND (d.SubDepartmentID = 0 OR d.SubDepartmentID in (
		select SubDepartmentID from SubDepartment subdept
		join Department dept on subdept.DepartmentID = dept.DepartmentID
		join Organization org on dept.OrganizationID = org.OrganizationID
		where org.OrganizationID = @OrgID and dept.IsActive = 1 and subdept.IsActive = 1 
		)
	)

END
GO
/****** Object:  StoredProcedure [dbo].[prcGetDepartmentDetails]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDepartmentDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves department details based on DepartmentID
-- Parameters: @DepartmentID    
-- Return Values:    
-- i.e:   
-- prcGetDepartmentDetails '1'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDepartmentDetails]    
 @DepartmentID  int  
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED   
	
	SELECT DepartmentID,
		OrganizationID,
		DepartmentName,
		DepartmentAbbreviate,
		HODName,
		LLNumber,
		MobileNumber,
		EmailId,
		SubProcess,
		ReviewerName,
		ReviewerLLNumber,
		ReviewerMobileNumber,
		ReviewerEmailID,
		IsHODApprover,
		ApproverName,
		ApproverLLNumber,
		ApproverMobileNumber,
		ApproverEmailID
	FROM Department
	WHERE DepartmentID = @DepartmentID 
	
	SELECT DepartmentID,
		SubDepartmentID,
		SubDepartmentName,
		SubDepartmentAbbreviate,
		HODName,
		LLNumber,
		MobileNumber,
		EmailId,
		ReviewerName,
		ReviewerLLNumber,
		ReviewerMobileNumber,
		ReviewerEmailID,
		IsHODApprover,
		ApproverName,
		ApproverLLNumber,
		ApproverMobileNumber,
		ApproverEmailID
	FROM SubDepartment
	WHERE DepartmentID = @DepartmentID
	AND IsActive = 1

END
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentDetails]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentDetails    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentDetails 22 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentDetails]    
	@DocumentID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @Doc TABLE (DocumentID int, DepartmentID int,SubDepartmentID int, DocumentType nvarchar(100), DocumentNumber nvarchar(100),
						DocumentName nvarchar(50),[Version] decimal(10,3),NextVersion decimal(10,3), 
						FileType nvarchar(10), PhysicalPath nvarchar(200),MetaDataPath nvarchar(200), 
						IsActive bit, CheckInStatus bit,WorkflowStatusID int, CreatedBy varchar(200),CreatedOn datetime, AssignedTo int, ChangeRequestNumber VARCHAR(30))
	
	INSERT INTO @Doc(DocumentID, DepartmentID,SubDepartmentID,DocumentType,DocumentNumber,DocumentName,[Version],FileType,IsActive,CheckInStatus,WorkflowStatusID,CreatedBy,CreatedOn,AssignedTo)--,ChangeRequestNumber)
	SELECT d.DocumentID,d.DepartmentID,SubDepartmentID,DocumentType,DocumentNumber,DocumentName,convert(decimal(10,3),[Version]),FileType, d.IsActive, CheckInStatus,WorkflowStatusID,d.CreatedBy,d.CreatedOn,AssignedTo--, dcr.RequestNumber
		FROM Document d
		--left join DocumentChangeRequest dcr ON dcr.DocumentID = d.DocumentID
		WHERE d.DocumentID = @DocumentID 
		--AND dcr.IsActive = 1
		
		update @Doc set ChangeRequestNumber = RequestNumber from DocumentChangeRequest dcr where dcr.DocumentID=@DocumentID and dcr.IsActive = 1
	-- build next version
	declare @CurrentVersion decimal(10,3)
	select @CurrentVersion = convert(decimal(10,3),[Version]) from @Doc

	declare @Increament decimal(10,3)
	select @Increament = IncrementBy from DocumentMaster where IsActive = 1
	
	declare @NextVersion decimal(10,3)
	set @NextVersion = @CurrentVersion + (select IncrementBy from DocumentMaster where IsActive = 1)
	print @NextVersion
	update @Doc set NextVersion = @NextVersion
	
	-- build doc path
	declare @DocPhysicalPath nvarchar(200)
	declare @OrgCode varchar(6)
	declare @OrganizationID INT
	select @OrgCode = OrganizationAbreviation, @OrganizationID = o.OrganizationID from 
						Organization o (nolock)
						join Department d (nolock) on o.OrganizationID = d.OrganizationID
						where d.DepartmentID in(select DepartmentID from @Doc)
	declare @DeptCode varchar(6)
	declare @DepartmentID INT
	select @DeptCode = DepartmentAbbreviate, @DepartmentID = DepartmentID from Department 
						where DepartmentID in(select DepartmentID from @Doc)
	
	-- check subdepartment from doc
	declare @SubDeptID int
	declare @SubDeptCode varchar(6)=''
	select @SubDeptID = isnull(SubDepartmentID,0) from @Doc
	if @SubDeptID > 0
	begin
		--select @SubDeptCode = SubDepartmentAbbreviate from SubDepartment 
		--				where SubDepartmentID in(select SubDepartmentID from @Doc)
		set @DocPhysicalPath = convert(varchar(10),@OrganizationID) +'\Depts\'+convert(varchar(10),@DepartmentID)+'\'+ convert(varchar(10),@SubDeptID) +'\' --@OrgCode +'\'+@DeptCode+'\'+ @SubDeptCode +'\'
	end
	else
	begin 
		set @DocPhysicalPath = convert(varchar(10),@OrganizationID) +'\Depts\'+convert(varchar(10),@DepartmentID) +'\'
	end
	update @Doc set MetaDataPath = @DocPhysicalPath
	
	set @DocPhysicalPath = @DocPhysicalPath +
			(select DocumentName from @Doc) +'\'+
			(Select convert(nvarchar,[Version]) from @Doc) + '\'
	update @Doc set PhysicalPath = @DocPhysicalPath
	-- Return value
	select DocumentID, DepartmentID,SubDepartmentID, DocumentType,DocumentNumber,DocumentName,
		[Version],NextVersion,FileType , PhysicalPath, MetaDataPath,IsActive, CheckInStatus,WorkflowStatusName,CreatedBy,CreatedOn,AssignedTo, ChangeRequestNumber
		from @Doc d 
		join WorkflowStatus ws ON d.WorkflowStatusID = ws.WorkflowStatusID
						
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentChangeRequestList]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[prcGetDocumentChangeRequest]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentChangeRequest    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentChangeRequest @DocumentID=22 
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
/****** Object:  StoredProcedure [dbo].[prcGenerateChangeRequestNumber]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGenerateChangeRequestNumber    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGenerateChangeRequestNumber @DepartmentID=1 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGenerateChangeRequestNumber]    
	@DepartmentID INT
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	DECLARE @DepartmentAbbreviate VARCHAR(10) 
	SELECT @DepartmentAbbreviate = DepartmentAbbreviate FROM Department WHERE DepartmentID = @DepartmentID

	DECLARE @DCR_COUNT int
	SELECT @DCR_COUNT = COUNT(DepartmentID) FROM DocumentChangeRequest WHERE DepartmentID = @DepartmentID

	DECLARE @DCR VARCHAR(30)
	SELECT @DCR = 'DCR-' + ltrim(rtrim(@DepartmentAbbreviate)) + '-' + RIGHT('000' + CAST((@DCR_COUNT + 1) AS VARCHAR(3)), 3) + '-' + convert(varchar(4),year(GETDATE()))
	
	SELECT @DCR

END
GO
/****** Object:  StoredProcedure [dbo].[prcExecuteWorkflow]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcExecuteWorkflow 22   
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: inserts new document
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcExecuteWorkflow]    
	@DocumentID int,
	@NextWorkflowStatus VARCHAR(50) ='',
	@WorkflowExecuterID int = 0
AS     
BEGIN    
      
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	      
	DECLARE @AssignedTo int 
	DECLARE @DepartmentID INT
	DECLARE @SubDepartmentID INT
	DECLARE @WorkflowStatusID INT 
	DECLARE @NextWorkflowStatusID INT 

SELECT @DepartmentID = DepartmentID, @SubDepartmentID= SubDepartmentID, @WorkflowStatusID = WorkflowStatusID FROM document 
WHERE DocumentID= @DocumentID
IF @SubDepartmentID > 0
BEGIN
	IF @WorkflowStatusID = 1
	BEGIN
		SET @NextWorkflowStatusID = 2
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join SubDepartment d (nolock) on u.UserEmail = d.ReviewerEmailID
		WHERE d.SubDepartmentID = @SubDepartmentID
		
	END 
	IF @WorkflowStatusID = 2
	BEGIN
		SET @NextWorkflowStatusID = 3
		
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join SubDepartment d (nolock) on u.UserEmail = d.ApproverEmailID
		WHERE d.SubDepartmentID = @SubDepartmentID
		
	END 
	IF @WorkflowStatusID = 3
	BEGIN
		SET @NextWorkflowStatusID = 4
		SELECT @AssignedTo = NULL
	END 
	
END
ELSE
BEGIN
	IF @WorkflowStatusID = 1
	BEGIN
		SET @NextWorkflowStatusID = 2
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join Department d (nolock) on u.UserEmail = d.ReviewerEmailID
		WHERE d.DepartmentID = @DepartmentID
	END 
	IF @WorkflowStatusID = 2
	BEGIN
		SET @NextWorkflowStatusID = 3
		SELECT @AssignedTo = u.UserID from Users u (nolock)
		join Department d (nolock) on u.UserEmail = d.ApproverEmailID
		WHERE d.DepartmentID = @DepartmentID
		
	END 
	IF @WorkflowStatusID = 3
	BEGIN
		SET @NextWorkflowStatusID = 4
		SELECT @AssignedTo = NULL
	END 
END

IF len(LTRIM(RTRIM(@NextWorkflowStatus))) > 0
BEGIN
	SELECT @NextWorkflowStatusID = WorkflowStatusID FROM WorkflowStatus WHERE WorkflowStatusName = @NextWorkflowStatus
	IF @NextWorkflowStatusID = 6
	BEGIN
		SELECT @AssignedTo = null
	END 

END

update Document set WorkflowStatusID = @NextWorkflowStatusID,
AssignedTo = @AssignedTo,
CheckInStatus = 1,
CheckOutBy = null 
where DocumentID = @DocumentID

IF @NextWorkflowStatusID = 6
BEGIN
	Update DocumentChangeRequest SET IsActive = 0 where DocumentID = @DocumentID
END 
	
						
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDepartment]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDepartment    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDepartment]    
	@DepartmentID int,
	@OrganizationID int,
	@DepartmentName nvarchar(50),
	@DepartmentAbbreviate nvarchar(4),
	@HODName nvarchar(50),
	@LLNumber nvarchar(50),
	@MobileNumber nvarchar(10)= null,
	@EmailId nvarchar(50),
	@SubProcess nvarchar(5),
	@ReviewerName nvarchar(50)= null,
	@ReviewerLLNumber nvarchar(50)= null,
	@ReviewerMobileNumber nvarchar(10)= null,
	@ReviewerEmailID nvarchar(50)= null,
	@IsHODApprover bit = null,
	@ApproverName nvarchar(50) = null,
	@ApproverLLNumber nvarchar(50) = null,
	@ApproverMobileNumber nvarchar(50)= null,
	@ApproverEmailID nvarchar(50)= null
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @DeptID int
	
	IF @OrganizationID = 0                                    
	BEGIN                                    
		RAISERROR ('OrganizationID cannot be 0', 16, 1)               
		RETURN -100                          
	END 

	IF @DepartmentID = 0  
	BEGIN
		INSERT INTO Department(
			OrganizationID,
			DepartmentName,
			DepartmentAbbreviate,
			HODName,
			LLNumber,
			MobileNumber,
			EmailId,
			SubProcess,
			ReviewerName,
			ReviewerLLNumber,
			ReviewerMobileNumber,
			ReviewerEmailID,
			IsHODApprover,
			ApproverName,
			ApproverLLNumber,
			ApproverMobileNumber,
			ApproverEmailID)
		VALUES (
			@OrganizationID,
			@DepartmentName,
			@DepartmentAbbreviate,
			@HODName,
			@LLNumber,
			@MobileNumber,
			@EmailId,
			@SubProcess,
			@ReviewerName,
			@ReviewerLLNumber,
			@ReviewerMobileNumber,
			@ReviewerEmailID,
			@IsHODApprover,
			@ApproverName,
			@ApproverLLNumber,
			@ApproverMobileNumber,
			@ApproverEmailID)
		SET @DeptID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE Department SET 
			OrganizationID = @OrganizationID,
			DepartmentName = @DepartmentName,
			DepartmentAbbreviate = @DepartmentAbbreviate,
			HODName = @HODName,
			LLNumber = @LLNumber,
			MobileNumber = @MobileNumber,
			EmailId = @EmailId,
			SubProcess = @SubProcess,
			ReviewerName = @ReviewerName,
			ReviewerLLNumber = @ReviewerLLNumber,
			ReviewerMobileNumber = @ReviewerMobileNumber,
			ReviewerEmailID = @ReviewerEmailID,
			IsHODApprover = @IsHODApprover,
			ApproverName = @ApproverName,
			ApproverLLNumber = @ApproverLLNumber,
			ApproverMobileNumber = @ApproverMobileNumber,
			ApproverEmailID = @ApproverEmailID,
			ModifiedOn = GETDATE()
		WHERE DepartmentID = @DepartmentID
		
		SET @DeptID = @DepartmentID
	END
	-- delete all sub department when no subprocess
	if @SubProcess = 0
	begin
		update SubDepartment set IsActive = 0
		where DepartmentID = @DeptID
	end
	-- Return department details
	EXEC prcGetDepartmentDetails @DeptID
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveSubDepartment]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveSubDepartment    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveSubDepartment]    
	@DepartmentID int,
	@SubDepartmentID int,
	@SubDepartmentName nvarchar(50),
	@SubDepartmentAbbreviate nvarchar(4),
	@HODName nvarchar(50),
	@LLNumber nvarchar(50),
	@MobileNumber nvarchar(10)= null,
	@EmailId nvarchar(50),
	@ReviewerName nvarchar(50)= null,
	@ReviewerLLNumber nvarchar(50)= null,
	@ReviewerMobileNumber nvarchar(10)= null,
	@ReviewerEmailID nvarchar(50)= null,
	@IsHODApprover bit = null,
	@ApproverName nvarchar(50) = null,
	@ApproverLLNumber nvarchar(50) = null,
	@ApproverMobileNumber nvarchar(50)= null,
	@ApproverEmailID nvarchar(50)= null
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @SubDeptID int
	
	IF @DepartmentID = 0                                    
	BEGIN                                    
		RAISERROR ('DepartmentID cannot be 0', 16, 1)               
		RETURN -100                          
	END 

	IF @SubDepartmentID = 0  
	BEGIN
		INSERT INTO SubDepartment(
			DepartmentID,
			SubDepartmentName,
			SubDepartmentAbbreviate,
			HODName,
			LLNumber,
			MobileNumber,
			EmailId,
			ReviewerName,
			ReviewerLLNumber,
			ReviewerMobileNumber,
			ReviewerEmailID,
			IsHODApprover,
			ApproverName,
			ApproverLLNumber,
			ApproverMobileNumber,
			ApproverEmailID)
		VALUES (
			@DepartmentID,
			@SubDepartmentName,
			@SubDepartmentAbbreviate,
			@HODName,
			@LLNumber,
			@MobileNumber,
			@EmailId,
			@ReviewerName,
			@ReviewerLLNumber,
			@ReviewerMobileNumber,
			@ReviewerEmailID,
			@IsHODApprover,
			@ApproverName,
			@ApproverLLNumber,
			@ApproverMobileNumber,
			@ApproverEmailID)
		SET @SubDeptID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE SubDepartment SET 
			DepartmentID = @DepartmentID,
			SubDepartmentName = @SubDepartmentName,
			SubDepartmentAbbreviate = @SubDepartmentAbbreviate,
			HODName = @HODName,
			LLNumber = @LLNumber,
			MobileNumber = @MobileNumber,
			EmailId = @EmailId,
			ReviewerName = @ReviewerName,
			ReviewerLLNumber = @ReviewerLLNumber,
			ReviewerMobileNumber = @ReviewerMobileNumber,
			ReviewerEmailID = @ReviewerEmailID,
			IsHODApprover = @IsHODApprover,
			ApproverName = @ApproverName,
			ApproverLLNumber = @ApproverLLNumber,
			ApproverMobileNumber = @ApproverMobileNumber,
			ApproverEmailID = @ApproverEmailID,
			ModifiedOn = GETDATE()
		WHERE SubDepartmentID = @SubDepartmentID
		
		SET @SubDeptID = @SubDepartmentID
	END
	
	-- Return department details
	EXEC prcGetSubDepartmentDetails @SubDeptID
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveOrganization]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveOrganization    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 
-- @OrganizationID int,
-- @OrganizationName nvarchar(50),
-- @OrganizationAbreviation nvarchar(50),
-- @OrganizationAddress, nvarchar(max),
-- @ContactNumber nvarchar(10),
-- @FaxNumber nvarchar(10),
-- @EmailId nvarchar(50),
-- @Website nvarchar(50),
-- @UserID int
-- Return Values:    
-- i.e:   
/*
prcSaveOrganization 1,'ADITYA CONSTRUCTIONS COMPANY (I) PVT. LTD','ACC', 'Aditya Mansion, Plot No A/29 Road No 5, Jubilee Hills, Hyderabad - 500 033',
'Aditya1 Mansion, Plot No A/29 Road No 5, Jubilee Hills, Hyderabad - 500 033','9966273949','99662739500','99662739500','nsinha@hotmail.com','www.xorin.in', 1
*/
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveOrganization]    
@OrganizationID int,
@OrganizationName nvarchar(100),
@OrganizationAbreviation nvarchar(50),
@OrganizationAddress nvarchar(max),
@CorporateAddress nvarchar(max),
@ContactNumber nvarchar(10),
@OfficePhoneNumber nvarchar(11),
@FaxNumber nvarchar(11),
@EmailId nvarchar(50),
@Website nvarchar(100),
@UserID int,
@TerminologyID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	DECLARE @OrgID int
	
	IF @OrganizationID = 0  
	BEGIN
		INSERT INTO ORGANIZATION(OrganizationName, OrganizationAbreviation, OrganizationAddress,CorporateAddress,
		ContactNumber, OfficePhoneNumber, FaxNumber, EmailId, Website, CreatedOn, TerminologyID)
		VALUES (@OrganizationName, @OrganizationAbreviation, @OrganizationAddress,@CorporateAddress, 
		@ContactNumber, @OfficePhoneNumber, @FaxNumber, @EmailId, @Website, GETDATE(),@TerminologyID)
	SET @OrgID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE ORGANIZATION SET OrganizationName = @OrganizationName, 
		OrganizationAbreviation = @OrganizationAbreviation, 
		OrganizationAddress = @OrganizationAddress,
		CorporateAddress = @CorporateAddress,
		ContactNumber = @ContactNumber, 
		OfficePhoneNumber = @OfficePhoneNumber,
		FaxNumber = @FaxNumber, 
		EmailId = @EmailId, 
		Website = @Website, 
		ModifiedOn = GETDATE(),
		TerminologyID = @TerminologyID
		WHERE OrganizationID = @OrganizationID
	SET @OrgID = @OrganizationID
	END
	
	UPDATE Users 
	SET OrganizationID = @OrgID
	WHERE UserID = @UserID
	-- Return new org id
	EXEC prcGetOrganizationDetails @OrgID
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetOrganizationDetailsByUserEmail]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetOrganizationDetailsByUserEmail    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Retrieves organization details based on UserID
-- Parameters: @UserEmail    
-- Return Values:    
-- i.e:   
-- prcGetOrganizationDetailsByUserEmail 'admin@eqms.com'
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetOrganizationDetailsByUserEmail]    
 @UserEmail  nvarchar(100)
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 

	-- Find organizationid for given user
	DECLARE @OrganizationID INT
	SELECT @OrganizationID = org.OrganizationID 
	FROM [Users] us (nolock)
	inner join Organization org (nolock) ON org.OrganizationID = us.OrganizationID
	WHERE us.UserEmail = @UserEmail
	
	-- Return organization details
	EXEC prcGetOrganizationDetails @OrganizationID  
	
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocumentChangeRequest]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocumentChangeRequest    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: Inserts, iupdates details and returns new data
-- Parameters: 
-- Return Values:    
-- i.e:   
/*

*/
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocumentChangeRequest]    
@DocumentChangeRequestID int,
@RequestNumber nvarchar(100),
@DocumentID nvarchar(50),
@DepartmentID int,
@Detail nvarchar(max)='',
@Reason nvarchar(max)='',
@Comment1 nvarchar(100)='',
@Comment2 nvarchar(100)='',
@Comment3 nvarchar(100)='',
@Comment1By nvarchar(100)='',
@Comment2By nvarchar(100)='',
@Comment3By nvarchar(100)='',
@EffectiveDate datetime,
@IsActive BIT,
@CreatedBy nvarchar(100),
@EffectedDocumentIDs nvarchar(500) = '',
@WorkflowStatusID int,
@IsPublished int = 0,
@OrganizationID int

AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	DECLARE @DCRID int
	
	IF @DocumentChangeRequestID = 0  
	BEGIN
		INSERT INTO DocumentChangeRequest(
			RequestNumber,
			DocumentID,
			DepartmentID,
			Detail,
			Reason,
			Comment1,
			Comment2,
			Comment3,
			Comment1By,
			Comment2By,
			Comment3By,
			EffectedDocumentIDs,
			EffectiveDate,
			IsActive,
			CreatedBy,
			CreatedOn,
			WorkflowStatusID,
			IsPublished,
			OrganizationID)
		VALUES (
			@RequestNumber,
			@DocumentID,
			@DepartmentID,
			@Detail,
			@Reason,
			@Comment1,
			@Comment2,
			@Comment3,
			@Comment1By,
			@Comment2By,
			@Comment3By,
			@EffectedDocumentIDs,
			@EffectiveDate,
			@IsActive,
			@CreatedBy,
			getdate(),
			@WorkflowStatusID,
			@IsPublished,
			@OrganizationID
			)
		
		SET @DCRID = @@identity
	END
	ELSE 
	BEGIN
		UPDATE DocumentChangeRequest SET
			RequestNumber = @RequestNumber,
			DocumentID = @DocumentID,
			DepartmentID = @DepartmentID,
			Detail = @Detail,
			Reason = @Reason,
			Comment1 = @Comment1,
			Comment2 = @Comment2,
			Comment3 = @Comment3,
			Comment1By = @Comment1By,
			Comment2By = @Comment2By,
			Comment3By = @Comment3By,
			EffectiveDate = @EffectiveDate,
			EffectedDocumentIDs = @EffectedDocumentIDs,
			IsActive = @IsActive,
			ModifiedOn = getdate(),
			WorkflowStatusID = @WorkflowStatusID,
			IsPublished = @IsPublished,
			OrganizationID = @OrganizationID
		WHERE DocumentChangeRequestID = @DocumentChangeRequestID
		
		SET @DCRID = @DocumentChangeRequestID
	END
	
	SELECT @DCRID
END
GO
/****** Object:  StoredProcedure [dbo].[prcSaveDocument]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcSaveDocument    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: inserts new document
-- Parameters: 

-- Return Values:    
-- i.e:   
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcSaveDocument]    
	@DepartmentID int,
    @SubDepartmentID int,
    @DocumentType nvarchar(100),
    @DocumentName nvarchar(100),
	@FileType nvarchar(10),
	@CreatedBy nvarchar(100)
AS     
BEGIN    
      
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	declare @DocID int
	declare @NewDocID  int
	declare @WorkflowStatusID  int
	declare @Version decimal(10,3) 
	DECLARE @OrganizationID INT
	declare @DocumentNumber varchar(100)
	SELECT @OrganizationID = OrganizationID FROM Department WHERE DepartmentID = @DepartmentID
	
	  
	DECLARE @Doc TABLE (DepartmentID int,SubDepartmentID int, DocumentType nvarchar(100),DocumentNumber nvarchar(100),
						DocumentName nvarchar(50),[Version] decimal(10,3),FileType nvarchar(10), CreatedBy nvarchar(100))
	
	INSERT INTO @Doc(DepartmentID,SubDepartmentID, DocumentType,DocumentName,FileType, CreatedBy)
		SELECT @DepartmentID,@SubDepartmentID,@DocumentType,@DocumentName,@FileType, @CreatedBy
	
		
	if exists (select 1 from Document where DepartmentID = @DepartmentID
					and SubDepartmentID = @SubDepartmentID
					and DocumentName = @DocumentName 
					and IsActive = 1)
	begin
		declare @CheckInStatus bit
		declare @CheckOutBy varchar(200)
		select @CheckInStatus= CheckInStatus, @CheckOutBy = CheckOutBy, 
				@WorkflowStatusID = WorkflowStatusID, 
				@DocID = DocumentID, @Version=convert(decimal(10,3),[Version])
		from Document where DepartmentID = @DepartmentID
					and SubDepartmentID = @SubDepartmentID
					and DocumentName = @DocumentName
					and IsActive = 1
		if @CheckInStatus = 1
		begin
			RAISERROR ('Document update is not allowed without check-out.', 16, 1, 0)              
			RETURN -100   
		end
		else if @CheckOutBy != @CreatedBy
		begin
			RAISERROR ('Document is checked-out by another user.', 16, 1, 0)              
			RETURN -100 
		end
		-- build next version of document and insert
		update Document set ModifiedOn = GETDATE(),
							ModifiedBy = @CreatedBy,
							CheckInStatus=1,
							CheckOutBy = null,
							FileType = @FileType
							where DocumentID = @DocID
		
		if @WorkflowStatusID = 6
		begin
			update Document set IsActive = 0 where DocumentID = @DocID
			select @Version = @Version + (select IncrementBy from DocumentMaster where IsActive = 1)
			update @Doc set [Version] = @Version
			-- Build document number
			exec prcGetDocumentNumberDetail @DocumentType, @DepartmentID, @SubDepartmentID, @OrganizationID, @DocumentNumber output
			update @Doc set [DocumentNumber] = @DocumentNumber
			
			-- Insert new document with changed version
			insert into Document(DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
							IsActive,CreatedOn,FileType,CreatedBy,CheckInStatus,WorkflowStatusID)
			select DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
							1,GETDATE(),FileType,CreatedBy,1,1
							from @Doc
			
			select @NewDocID = @@IDENTITY
		end
		else
		begin
			select @NewDocID = @DocID
		end
		
	end
	else -- new document
	begin
		exec prcGetDocumentNumberDetail @DocumentType, @DepartmentID, @SubDepartmentID, @OrganizationID, @DocumentNumber output
		update @Doc set [DocumentNumber] = @DocumentNumber
	    -- build version
		select @Version = InitialNumber from DocumentMaster where IsActive = 1
		update @Doc set [Version] = @Version
		
		-- Insert new document with changed version
		insert into Document(DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
						IsActive,CreatedOn,FileType,CreatedBy,CheckInStatus,WorkflowStatusID)
		select DepartmentID, SubDepartmentID, DocumentType,DocumentNumber, DocumentName, [Version],
						1,GETDATE(),FileType,CreatedBy,1,1
						from @Doc
		
		select @NewDocID = @@IDENTITY
	end
	
	exec prcGetDocumentDetails @NewDocID
						
END
GO
/****** Object:  StoredProcedure [dbo].[prcGetDocumentHistory]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- **********************************************************    
-- @@Verion: 1    
-- SP Name: dbo.prcGetDocumentHistory    
-- Author: Niraj Sinha  
-- Create Date: 20/05/2013    
-- Description: returns new data
-- Parameters: 

-- Return Values:    
-- i.e:   prcGetDocumentHistory 16 
-- ********************************************************    
CREATE PROCEDURE [dbo].[prcGetDocumentHistory]    
	@DocumentID int
AS     
BEGIN    
  
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET NOCOUNT ON
	
	DECLARE @DocName VARCHAR(200)
	DECLARE @DeptID INT
	DECLARE @SubDeptID INT

	SELECT @DocName=DocumentName, @DeptID=DepartmentID ,@SubDeptID = SubDepartmentID FROM Document WHERE DocumentID = @DocumentID
	DECLARE @Doc TABLE (DocumentID int, DepartmentID int,SubDepartmentID int, DocumentType nvarchar(100),DocumentNumber nvarchar(100),
						DocumentName nvarchar(50),[Version] decimal(10,3),NextVersion decimal(10,3), 
						FileType nvarchar(10), PhysicalPath nvarchar(200),MetaDataPath nvarchar(200), 
						IsActive bit, CheckInStatus bit, WorkflowStatusName varchar(100),CreatedBy varchar(200),CreatedOn datetime,AssignedTo int, ChangeRequestNumber VARCHAR(30))
	


	DECLARE @DocID INT
	DECLARE @GetDocumentID CURSOR
	SET @GetDocumentID = CURSOR FOR
		SELECT DocumentID FROM Document WHERE DocumentName = @DocName
						AND DepartmentID = @DeptID
						AND SubDepartmentID = @SubDeptID
	OPEN @GetDocumentID
	FETCH NEXT
	FROM @GetDocumentID INTO @DocID
	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO @Doc(DocumentID, DepartmentID,SubDepartmentID, DocumentType,DocumentNumber, DocumentName,
			[Version],NextVersion,FileType , PhysicalPath, MetaDataPath,IsActive, CheckInStatus,WorkflowStatusName,CreatedBy,CreatedOn,AssignedTo,ChangeRequestNumber)
		EXEC prcGetDocumentDetails @DocID
	FETCH NEXT
	FROM @GetDocumentID INTO @DocID
	END
	CLOSE @GetDocumentID
	DEALLOCATE @GetDocumentID

	-- Return value
	SELECT DocumentID, DepartmentID,SubDepartmentID, DocumentType,DocumentNumber,DocumentName,
		[Version],NextVersion,FileType , PhysicalPath, MetaDataPath,IsActive, CheckInStatus,WorkflowStatusName,CreatedBy,CreatedOn,AssignedTo,ChangeRequestNumber 
		FROM @Doc 
						
END
GO
/****** Object:  StoredProcedure [dbo].[prcCheckOutDocument]    Script Date: 02/19/2014 11:56:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  ForeignKey [FK__Departmen__Organ__267ABA7A]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
/****** Object:  ForeignKey [FK_Document_Department]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Department]
GO
/****** Object:  ForeignKey [FK_DocumentChangeRequest_Document]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[DocumentChangeRequest]  WITH CHECK ADD  CONSTRAINT [FK_DocumentChangeRequest_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[DocumentChangeRequest] CHECK CONSTRAINT [FK_DocumentChangeRequest_Document]
GO
/****** Object:  ForeignKey [FK__DocumentL__Organ__59063A47]    Script Date: 02/19/2014 11:56:24 ******/
ALTER TABLE [dbo].[DocumentLevels]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
/****** Object:  ForeignKey [FK__DocumentM__Organ__628FA481]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[DocumentMaster]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
/****** Object:  ForeignKey [FK_SubDepartment_Department]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[SubDepartment]  WITH CHECK ADD  CONSTRAINT [FK_SubDepartment_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[SubDepartment] CHECK CONSTRAINT [FK_SubDepartment_Department]
GO
/****** Object:  ForeignKey [FK_Users_Department]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Department]
GO
/****** Object:  ForeignKey [FK_Users_Organization]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Organization]
GO
/****** Object:  ForeignKey [FK_Users_RoleGroup]    Script Date: 02/19/2014 11:56:25 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_RoleGroup] FOREIGN KEY([RoleGroupID])
REFERENCES [dbo].[RoleGroup] ([RoleGroupID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_RoleGroup]
GO
