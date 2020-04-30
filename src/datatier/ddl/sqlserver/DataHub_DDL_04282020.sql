/****** Object:  Schema [appData]    Script Date: 4/28/2020 9:20:49 AM ******/
CREATE SCHEMA [appData]
GO
/****** Object:  Schema [Logging]    Script Date: 4/28/2020 9:20:49 AM ******/
CREATE SCHEMA [Logging]
GO
/****** Object:  Schema [refData]    Script Date: 4/28/2020 9:20:49 AM ******/
CREATE SCHEMA [refData]
GO
/****** Object:  Table [appData].[DataRequestDetail]    Script Date: 4/28/2020 9:20:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appData].[DataRequestDetail](
	[DataRequestDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[DataAttributeID] [smallint] NULL,
	[RecCount] [bigint] NULL,
	[RecordFormatDetails] [varchar](75) NULL,
	[StatusID] [smallint] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_DataRequestDetail] PRIMARY KEY NONCLUSTERED 
(
	[DataRequestDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [appData].[MsgWarehouse]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appData].[MsgWarehouse](
	[MsgWarehouseID] [bigint] IDENTITY(1,1) NOT NULL,
	[Component] [varchar](20) NULL,
	[ActionName] [varchar](20) NULL,
	[UniqueMessageID] [varchar](99) NULL,
	[CreatedDate] [date] NULL,
	[ProcessName] [varchar](20) NULL,
	[StatusID] [smallint] NULL,
	[SendingApplication] [varchar](20) NULL,
	[MessageType] [varchar](3) NULL,
	[MessageTrigger] [varchar](17) NULL,
	[UniqueMessageIDLink] [varchar](199) NULL,
 CONSTRAINT [PK_MsgWarehouse] PRIMARY KEY CLUSTERED 
(
	[MsgWarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [appData].[MsgWarehouseDataTags]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appData].[MsgWarehouseDataTags](
	[MsgWarehouseDataTagsID] [bigint] IDENTITY(1,1) NOT NULL,
	[UniqueMessageID] [varchar](99) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[DataTag] [varchar](99) NULL,
	[MessageWarehouseID] [bigint] NULL,
 CONSTRAINT [PK_MsgWarehouseDataTags] PRIMARY KEY CLUSTERED 
(
	[MsgWarehouseDataTagsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Logging].[AppLog]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Logging].[AppLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[TimeStamp] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[Source] [varchar](max) NULL,
	[CallerClass] [varchar](max) NULL,
	[CallerAssembly] [varchar](max) NULL,
	[CallerMethod] [varchar](max) NULL,
	[RequestId] [varchar](max) NULL,
	[AdditionalInfo] [varchar](max) NULL,
 CONSTRAINT [PK_AppLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [refData].[Application]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Application](
	[ApplicationID] [varchar](20) NOT NULL,
	[ApplicationCustomCode] [varchar](15) NULL,
	[ApplicationDesc] [varchar](50) NULL,
	[CreatedUser] [varchar](20) NULL,
	[AppGUID] [uniqueidentifier] NULL,
	[VendorID] [int] NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[ApplicationComponents]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[ApplicationComponents](
	[ApplicationComponentsID] [bigint] IDENTITY(1,1) NOT NULL,
	[ComponentName] [varchar](40) NULL,
	[ApplicationID] [varchar](20) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_ApplicationComponents] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationComponentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[BusProcess]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[BusProcess](
	[BusinessProcessID] [varchar](20) NOT NULL,
	[BusinessProcessDesc] [varchar](80) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_BusProcess] PRIMARY KEY NONCLUSTERED 
(
	[BusinessProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Departments]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Departments](
	[DepartmentID] [varchar](10) NOT NULL,
	[DepartmentName] [varchar](50) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY NONCLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[DepartmentsAcuityIndex]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[DepartmentsAcuityIndex](
	[DepartmentsAcuityIndexID] [bigint] NOT NULL,
	[DiseaseIndexID] [bigint] NULL,
	[FacilityID] [varchar](10) NULL,
	[RiskCalc_Low] [decimal](5, 4) NULL,
	[RiskCalc_High] [decimal](5, 4) NULL,
	[StaffLevel] [smallint] NULL,
	[StaffType] [smallint] NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_DepartmentsAcuityIndex] PRIMARY KEY NONCLUSTERED 
(
	[DepartmentsAcuityIndexID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[DepartmentsRates]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[DepartmentsRates](
	[DepartmentRatesID] [bigint] IDENTITY(1,1) NOT NULL,
	[FacilityToDepartmentID] [bigint] NULL,
	[CaseMix_Low] [smallint] NULL,
	[CaseMix_High] [smallint] NULL,
	[Census_Low] [smallint] NULL,
	[Census_High] [smallint] NULL,
	[CensusRiskPct] [decimal](5, 4) NULL,
	[StatusID] [smallint] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_DepartmentRates] PRIMARY KEY NONCLUSTERED 
(
	[DepartmentRatesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[DiseaseConditionIndex]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[DiseaseConditionIndex](
	[DiseaseIndexID] [bigint] IDENTITY(1,1) NOT NULL,
	[DiseaseIndexName] [varchar](40) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_DiseaseIndex] PRIMARY KEY CLUSTERED 
(
	[DiseaseIndexID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Facilities]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Facilities](
	[FacilityID] [varchar](10) NOT NULL,
	[FacilityName] [varchar](50) NULL,
	[FacilityAddress] [varchar](75) NULL,
	[FacilityAddress2] [varchar](35) NULL,
	[City] [varchar](40) NULL,
	[StateID] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[WebSite] [varchar](75) NULL,
	[OrganizationID] [varchar](10) NULL,
	[StatusID] [smallint] NULL,
	[CreatedDate] [date] NULL,
	[TotalDailyCensusMax] [smallint] NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY NONCLUSTERED 
(
	[FacilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[FacilitiesToDepartments]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[FacilitiesToDepartments](
	[FacilitiesToDepartmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [varchar](10) NULL,
	[FacilitiesID] [varchar](10) NULL,
	[StatusID] [smallint] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK_FacilitiesToDepartments] PRIMARY KEY NONCLUSTERED 
(
	[FacilitiesToDepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[FaciltiesToApplication]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[FaciltiesToApplication](
	[FacilitiesToApplicationID] [bigint] NOT NULL,
	[FacilitiesID] [varchar](10) NULL,
	[ApplicationID] [varchar](20) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_FacilitiesToApplication] PRIMARY KEY CLUSTERED 
(
	[FacilitiesToApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[IndustryStd]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[IndustryStd](
	[IndustryStdID] [varchar](7) NOT NULL,
	[IndustryStdDesc] [varchar](30) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_IndustryStd] PRIMARY KEY CLUSTERED 
(
	[IndustryStdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[MessageTriggersResources]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[MessageTriggersResources](
	[MessageTriggerResourceID] [varchar](17) NOT NULL,
	[MessageTriggerDesc] [varchar](125) NULL,
	[MessageType] [varchar](3) NULL,
	[IndustryStd] [varchar](7) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_MessageTriggers] PRIMARY KEY CLUSTERED 
(
	[MessageTriggerResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[MessageTypes]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[MessageTypes](
	[MessageTypeID] [varchar](3) NOT NULL,
	[MessageTypeDesc] [varchar](75) NULL,
	[IndustryStd] [varchar](7) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_MessageTypes] PRIMARY KEY CLUSTERED 
(
	[MessageTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Organization]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Organization](
	[OrganizationID] [varchar](10) NOT NULL,
	[OrganizationName] [varchar](50) NULL,
	[Address] [varchar](75) NULL,
	[City] [varchar](60) NULL,
	[StateID] [varchar](2) NULL,
	[ZipCode] [varchar](12) NULL,
	[StatusID] [smallint] NULL,
	[CreatedDate] [date] NULL,
	[OrganizationInternalID] [varchar](10) NULL,
	[OrganizationGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Resources]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Resources](
	[ResourceID] [bigint] IDENTITY(1,1) NOT NULL,
	[ResourceName] [varchar](85) NULL,
	[ResourceEMailAddress] [varchar](129) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[ResourceGUID] [uniqueidentifier] NULL,
	[MobileNumber] [varchar](12) NULL,
 CONSTRAINT [PK_Resources] PRIMARY KEY NONCLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[ResourcesToOrganization]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[ResourcesToOrganization](
	[ResourceToOrganizationID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [varchar](10) NULL,
	[ResourceID] [bigint] NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[ResourceToOrgsGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ResourcesToOrgainzations] PRIMARY KEY CLUSTERED 
(
	[ResourceToOrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[ResourceToApplication]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[ResourceToApplication](
	[ResourceToApplicationID] [bigint] IDENTITY(1,1) NOT NULL,
	[ResourceID] [bigint] NULL,
	[StatusID] [smallint] NULL,
	[CreatedUser] [varchar](20) NULL,
	[CreatedDate] [date] NULL,
	[ApplicationID] [varchar](20) NULL,
 CONSTRAINT [PK_ResourceToApplication] PRIMARY KEY CLUSTERED 
(
	[ResourceToApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[StaffType]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[StaffType](
	[StaffTypeID] [smallint] IDENTITY(1,1) NOT NULL,
	[StaffTypeDesc] [varchar](45) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_StaffType] PRIMARY KEY CLUSTERED 
(
	[StaffTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Status]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Status](
	[StatusID] [smallint] IDENTITY(1,1) NOT NULL,
	[StatusDescription] [varchar](45) NOT NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[USStates]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[USStates](
	[StateID] [varchar](2) NOT NULL,
	[StateDescription] [varchar](65) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_USStates] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Vendors]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Vendors](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [varchar](30) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[VendorGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[VendorsToApplication]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[VendorsToApplication](
	[VendorsToApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[ApplicationID] [varchar](20) NULL,
	[VendorID] [int] NULL,
 CONSTRAINT [PK_VendorsToApplicationMapping] PRIMARY KEY CLUSTERED 
(
	[VendorsToApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[VendorsToOrganization]    Script Date: 4/28/2020 9:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[VendorsToOrganization](
	[VendorsToOrganizationID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [varchar](10) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_VendorsToOrganizationMapping] PRIMARY KEY CLUSTERED 
(
	[VendorsToOrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_DataRequestDetail]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IDX_DataRequestDetail] ON [appData].[DataRequestDetail]
(
	[DataRequestDetailID] ASC,
	[DataAttributeID] ASC,
	[RecCount] ASC,
	[RecordFormatDetails] ASC,
	[StatusID] ASC,
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MsgWarehouse]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_MsgWarehouse] ON [appData].[MsgWarehouse]
(
	[MsgWarehouseID] ASC,
	[Component] ASC,
	[ActionName] ASC,
	[UniqueMessageID] ASC,
	[CreatedDate] ASC,
	[ProcessName] ASC,
	[StatusID] ASC,
	[MessageType] ASC,
	[MessageTrigger] ASC,
	[SendingApplication] ASC,
	[UniqueMessageIDLink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MsgWarehouseDataTags]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_MsgWarehouseDataTags] ON [appData].[MsgWarehouseDataTags]
(
	[MsgWarehouseDataTagsID] ASC,
	[MessageWarehouseID] ASC,
	[UniqueMessageID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[DataTag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Application]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Application] ON [refData].[Application]
(
	[ApplicationID] ASC,
	[ApplicationCustomCode] ASC,
	[ApplicationDesc] ASC,
	[AppGUID] ASC,
	[CreatedUser] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_ApplicationComponents]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IDX_ApplicationComponents] ON [refData].[ApplicationComponents]
(
	[ApplicationComponentsID] ASC,
	[ComponentName] ASC,
	[ApplicationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [BusProcess_BusinessProcessID_uindex]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [BusProcess_BusinessProcessID_uindex] ON [refData].[BusProcess]
(
	[BusinessProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_BusProcess]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IDX_BusProcess] ON [refData].[BusProcess]
(
	[BusinessProcessDesc] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_Departments]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IDX_Departments] ON [refData].[Departments]
(
	[DepartmentID] ASC,
	[DepartmentName] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DepartmentsAcuityIndex]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_DepartmentsAcuityIndex] ON [refData].[DepartmentsAcuityIndex]
(
	[DepartmentsAcuityIndexID] ASC,
	[FacilityID] ASC,
	[DiseaseIndexID] ASC,
	[RiskCalc_Low] ASC,
	[RiskCalc_High] ASC,
	[StaffLevel] ASC,
	[StaffType] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepartmentsRates]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_DepartmentsRates] ON [refData].[DepartmentsRates]
(
	[DepartmentRatesID] ASC,
	[FacilityToDepartmentID] ASC,
	[CaseMix_Low] ASC,
	[CaseMix_High] ASC,
	[Census_Low] ASC,
	[Census_High] ASC,
	[CensusRiskPct] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DiseaseIndex]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_DiseaseIndex] ON [refData].[DiseaseConditionIndex]
(
	[DiseaseIndexID] ASC,
	[DiseaseIndexName] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Facilities]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Facilities] ON [refData].[Facilities]
(
	[FacilityID] ASC,
	[FacilityName] ASC,
	[FacilityAddress] ASC,
	[FacilityAddress2] ASC,
	[City] ASC,
	[StateID] ASC,
	[ZipCode] ASC,
	[WebSite] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[OrganizationID] ASC,
	[TotalDailyCensusMax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FacilitiesToDepartments]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_FacilitiesToDepartments] ON [refData].[FacilitiesToDepartments]
(
	[FacilitiesToDepartmentID] ASC,
	[FacilitiesID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FacilitiesToApplication]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_FacilitiesToApplication] ON [refData].[FaciltiesToApplication]
(
	[FacilitiesToApplicationID] ASC,
	[FacilitiesID] ASC,
	[ApplicationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_IndustryStd]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_IndustryStd] ON [refData].[IndustryStd]
(
	[IndustryStdID] ASC,
	[IndustryStdDesc] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MessageTriggers]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_MessageTriggers] ON [refData].[MessageTriggersResources]
(
	[MessageTriggerDesc] ASC,
	[MessageType] ASC,
	[IndustryStd] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MessageTypes]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_MessageTypes] ON [refData].[MessageTypes]
(
	[MessageTypeID] ASC,
	[MessageTypeDesc] ASC,
	[IndustryStd] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_Organization]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IDX_Organization] ON [refData].[Organization]
(
	[OrganizationID] ASC,
	[OrganizationName] ASC,
	[Address] ASC,
	[City] ASC,
	[StateID] ASC,
	[ZipCode] ASC,
	[StatusID] ASC,
	[CreatedDate] ASC,
	[OrganizationGUID] ASC,
	[OrganizationInternalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Resources]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Resources] ON [refData].[Resources]
(
	[ResourceID] ASC,
	[ResourceName] ASC,
	[ResourceEMailAddress] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[ResourceGUID] ASC,
	[MobileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ResourcesToOrgainzations]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_ResourcesToOrgainzations] ON [refData].[ResourcesToOrganization]
(
	[ResourceToOrganizationID] ASC,
	[OrganizationID] ASC,
	[ResourceID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[ResourceToOrgsGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ResourceToApplication]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_ResourceToApplication] ON [refData].[ResourceToApplication]
(
	[ResourceToApplicationID] ASC,
	[ResourceID] ASC,
	[ApplicationID] ASC,
	[StatusID] ASC,
	[CreatedDate] ASC,
	[CreatedUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StaffType]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_StaffType] ON [refData].[StaffType]
(
	[StaffTypeID] ASC,
	[StaffTypeDesc] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Status]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Status] ON [refData].[Status]
(
	[StatusID] ASC,
	[StatusDescription] ASC,
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_USStates]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_USStates] ON [refData].[USStates]
(
	[StateID] ASC,
	[StateDescription] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Vendors]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Vendors] ON [refData].[Vendors]
(
	[VendorID] ASC,
	[VendorName] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[VendorGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_VendorsToApplication]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorsToApplication] ON [refData].[VendorsToApplication]
(
	[VendorsToApplicationID] ASC,
	[VendorID] ASC,
	[ApplicationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_VendorsToOrganization]    Script Date: 4/28/2020 9:20:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorsToOrganization] ON [refData].[VendorsToOrganization]
(
	[VendorsToOrganizationID] ASC,
	[OrganizationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [appData].[DataRequestDetail] ADD  CONSTRAINT [DF_DataRequested_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [appData].[DataRequestDetail] ADD  CONSTRAINT [DF_DataRequestedDetail_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [appData].[MsgWarehouse] ADD  CONSTRAINT [DF_MsgWarehouse_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [appData].[MsgWarehouse] ADD  CONSTRAINT [DF_MsgWarehouse_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [appData].[MsgWarehouseDataTags] ADD  CONSTRAINT [DF_MsgWarehouseDataTags_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [appData].[MsgWarehouseDataTags] ADD  CONSTRAINT [DF_MsgWarehouseDataTags_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Application] ADD  CONSTRAINT [DF_Application_AppGUID]  DEFAULT (newid()) FOR [AppGUID]
GO
ALTER TABLE [refData].[Application] ADD  CONSTRAINT [DF_Application_DateCreated]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[Application] ADD  CONSTRAINT [DF_Application_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[ApplicationComponents] ADD  CONSTRAINT [DF_ApplicationComponents_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[ApplicationComponents] ADD  CONSTRAINT [DF_ApplicationStatus_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[BusProcess] ADD  CONSTRAINT [DF_BusProcess_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[BusProcess] ADD  CONSTRAINT [DF_BusProcess_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Departments] ADD  CONSTRAINT [DF_Departments_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[Departments] ADD  CONSTRAINT [DF_Department_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] ADD  CONSTRAINT [DF__Departmen__RiskC__72910220]  DEFAULT ((0)) FOR [RiskCalc_Low]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] ADD  CONSTRAINT [DF__Departmen__RiskC__73852659]  DEFAULT ((0)) FOR [RiskCalc_High]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] ADD  CONSTRAINT [DF__Departmen__Staff__74794A92]  DEFAULT ((1)) FOR [StaffLevel]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] ADD  CONSTRAINT [DF__Departmen__Creat__756D6ECB]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] ADD  CONSTRAINT [DF__Departmen__Statu__76619304]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[DepartmentsRates] ADD  CONSTRAINT [DF_DepartmentsRates__CensusRiskPct]  DEFAULT ((0)) FOR [CensusRiskPct]
GO
ALTER TABLE [refData].[DepartmentsRates] ADD  CONSTRAINT [DF_DepartmentsRates_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[DepartmentsRates] ADD  CONSTRAINT [DF__DepartmentsRates_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[DiseaseConditionIndex] ADD  CONSTRAINT [DF_DiseaseIndex_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[DiseaseConditionIndex] ADD  CONSTRAINT [DF_DiseaseIndex_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Facilities] ADD  CONSTRAINT [DF_Facilities_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Facilities] ADD  CONSTRAINT [DF_Facilities_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[FacilitiesToDepartments] ADD  CONSTRAINT [DF__FacilitiesTo Organization_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[FacilitiesToDepartments] ADD  CONSTRAINT [DF_FacilitiesToDepartments_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[FaciltiesToApplication] ADD  CONSTRAINT [DF_FacilitiesToApplication_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[FaciltiesToApplication] ADD  CONSTRAINT [DF_FacilitiesToApplication_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[IndustryStd] ADD  CONSTRAINT [DF_IndustryStd_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[IndustryStd] ADD  CONSTRAINT [DF_IndustryStd_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[MessageTriggersResources] ADD  CONSTRAINT [DF_MessageTriggers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[MessageTriggersResources] ADD  CONSTRAINT [DF_MessageTriggers_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[MessageTypes] ADD  CONSTRAINT [DF_MessageTypes_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[MessageTypes] ADD  CONSTRAINT [DF_MessageTypes_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Organization] ADD  CONSTRAINT [DF_Organization_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Organization] ADD  CONSTRAINT [DF_Organization_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[Organization] ADD  CONSTRAINT [DF_Organization_OrganizationGUID]  DEFAULT (newid()) FOR [OrganizationGUID]
GO
ALTER TABLE [refData].[Resources] ADD  CONSTRAINT [DF_Resources_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[Resources] ADD  CONSTRAINT [DF_Resources_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Resources] ADD  CONSTRAINT [DF_Resources_ResourceGUID]  DEFAULT (newid()) FOR [ResourceGUID]
GO
ALTER TABLE [refData].[ResourcesToOrganization] ADD  CONSTRAINT [DF_ResourcesToOrgainzations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[ResourcesToOrganization] ADD  CONSTRAINT [DF_ResourcesToOrgainzations_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[ResourcesToOrganization] ADD  CONSTRAINT [DF_ResourcesToOrgainzations_ResourceToOrgsGUID]  DEFAULT (newid()) FOR [ResourceToOrgsGUID]
GO
ALTER TABLE [refData].[ResourceToApplication] ADD  CONSTRAINT [DF_ResourceToApplication_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[ResourceToApplication] ADD  CONSTRAINT [DF_ResourceToApplication_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[StaffType] ADD  CONSTRAINT [DF_StaffType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[StaffType] ADD  CONSTRAINT [DF_StaffType_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Status] ADD  CONSTRAINT [DF_Status_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[USStates] ADD  CONSTRAINT [DF_USStates_DateCreated]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[USStates] ADD  CONSTRAINT [DF_USStates_StatusID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Vendors] ADD  CONSTRAINT [DF_Vendors_DateCreated]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[Vendors] ADD  CONSTRAINT [DF_Vendors_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Vendors] ADD  CONSTRAINT [DF_Vendors_VendorGUID]  DEFAULT (newid()) FOR [VendorGUID]
GO
ALTER TABLE [refData].[VendorsToApplication] ADD  CONSTRAINT [DF__VendorsToAppCreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[VendorsToApplication] ADD  CONSTRAINT [DF__VendorsToStatus]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[VendorsToOrganization] ADD  CONSTRAINT [DF_VendorsToOrg_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[VendorsToOrganization] ADD  CONSTRAINT [DF_VendorsToOrg_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [appData].[DataRequestDetail]  WITH CHECK ADD  CONSTRAINT [FK_DataRequestDetail_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [appData].[DataRequestDetail] CHECK CONSTRAINT [FK_DataRequestDetail_Status]
GO
ALTER TABLE [appData].[MsgWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MsgWarehouse_MessageTriggers] FOREIGN KEY([MessageTrigger])
REFERENCES [refData].[MessageTriggersResources] ([MessageTriggerResourceID])
GO
ALTER TABLE [appData].[MsgWarehouse] CHECK CONSTRAINT [FK_MsgWarehouse_MessageTriggers]
GO
ALTER TABLE [appData].[MsgWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MsgWarehouse_MessageTypes] FOREIGN KEY([MessageType])
REFERENCES [refData].[MessageTypes] ([MessageTypeID])
GO
ALTER TABLE [appData].[MsgWarehouse] CHECK CONSTRAINT [FK_MsgWarehouse_MessageTypes]
GO
ALTER TABLE [appData].[MsgWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MsgWarehouse_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [appData].[MsgWarehouse] CHECK CONSTRAINT [FK_MsgWarehouse_Status]
GO
ALTER TABLE [appData].[MsgWarehouseDataTags]  WITH CHECK ADD  CONSTRAINT [FK_MsgWarehouseDataTags_MsgWarehouse] FOREIGN KEY([MessageWarehouseID])
REFERENCES [appData].[MsgWarehouse] ([MsgWarehouseID])
GO
ALTER TABLE [appData].[MsgWarehouseDataTags] CHECK CONSTRAINT [FK_MsgWarehouseDataTags_MsgWarehouse]
GO
ALTER TABLE [appData].[MsgWarehouseDataTags]  WITH CHECK ADD  CONSTRAINT [FK_MsgWarehouseDataTags_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [appData].[MsgWarehouseDataTags] CHECK CONSTRAINT [FK_MsgWarehouseDataTags_Status]
GO
ALTER TABLE [refData].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[Application] CHECK CONSTRAINT [FK_Application_Status]
GO
ALTER TABLE [refData].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Vendor] FOREIGN KEY([VendorID])
REFERENCES [refData].[Vendors] ([VendorID])
GO
ALTER TABLE [refData].[Application] CHECK CONSTRAINT [FK_Application_Vendor]
GO
ALTER TABLE [refData].[ApplicationComponents]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationComponents_Applications] FOREIGN KEY([ApplicationID])
REFERENCES [refData].[Application] ([ApplicationID])
GO
ALTER TABLE [refData].[ApplicationComponents] CHECK CONSTRAINT [FK_ApplicationComponents_Applications]
GO
ALTER TABLE [refData].[ApplicationComponents]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationComponents_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[ApplicationComponents] CHECK CONSTRAINT [FK_ApplicationComponents_Status]
GO
ALTER TABLE [refData].[BusProcess]  WITH CHECK ADD  CONSTRAINT [FK_BusProcess_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[BusProcess] CHECK CONSTRAINT [FK_BusProcess_Status]
GO
ALTER TABLE [refData].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[Departments] CHECK CONSTRAINT [FK_Departments_Status]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsAcuityIndex_Facilities] FOREIGN KEY([FacilityID])
REFERENCES [refData].[Facilities] ([FacilityID])
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] CHECK CONSTRAINT [FK_DepartmentsAcuityIndex_Facilities]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsAcuityIndex_StaffType] FOREIGN KEY([StaffType])
REFERENCES [refData].[StaffType] ([StaffTypeID])
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] CHECK CONSTRAINT [FK_DepartmentsAcuityIndex_StaffType]
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsAcuityIndex_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[DepartmentsAcuityIndex] CHECK CONSTRAINT [FK_DepartmentsAcuityIndex_Status]
GO
ALTER TABLE [refData].[DepartmentsRates]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsRates_FacilitiesToDepartments] FOREIGN KEY([FacilityToDepartmentID])
REFERENCES [refData].[FacilitiesToDepartments] ([FacilitiesToDepartmentID])
GO
ALTER TABLE [refData].[DepartmentsRates] CHECK CONSTRAINT [FK_DepartmentsRates_FacilitiesToDepartments]
GO
ALTER TABLE [refData].[DepartmentsRates]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentsRates_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[DepartmentsRates] CHECK CONSTRAINT [FK_DepartmentsRates_Status]
GO
ALTER TABLE [refData].[DiseaseConditionIndex]  WITH CHECK ADD  CONSTRAINT [FK_DiseaseIndex_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[DiseaseConditionIndex] CHECK CONSTRAINT [FK_DiseaseIndex_Status]
GO
ALTER TABLE [refData].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_Orgs] FOREIGN KEY([OrganizationID])
REFERENCES [refData].[Organization] ([OrganizationID])
GO
ALTER TABLE [refData].[Facilities] CHECK CONSTRAINT [FK_Facilities_Orgs]
GO
ALTER TABLE [refData].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[Facilities] CHECK CONSTRAINT [FK_Facilities_Status]
GO
ALTER TABLE [refData].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_USStates] FOREIGN KEY([StateID])
REFERENCES [refData].[USStates] ([StateID])
GO
ALTER TABLE [refData].[Facilities] CHECK CONSTRAINT [FK_Facilities_USStates]
GO
ALTER TABLE [refData].[FacilitiesToDepartments]  WITH CHECK ADD  CONSTRAINT [FK_FacilitiesToDepartments__Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[FacilitiesToDepartments] CHECK CONSTRAINT [FK_FacilitiesToDepartments__Status]
GO
ALTER TABLE [refData].[FacilitiesToDepartments]  WITH CHECK ADD  CONSTRAINT [FK_FacilitiesToDepartments_Depts] FOREIGN KEY([DepartmentID])
REFERENCES [refData].[Departments] ([DepartmentID])
GO
ALTER TABLE [refData].[FacilitiesToDepartments] CHECK CONSTRAINT [FK_FacilitiesToDepartments_Depts]
GO
ALTER TABLE [refData].[FacilitiesToDepartments]  WITH CHECK ADD  CONSTRAINT [FK_FacilitiesToDepartments_Facilities] FOREIGN KEY([FacilitiesID])
REFERENCES [refData].[Facilities] ([FacilityID])
GO
ALTER TABLE [refData].[FacilitiesToDepartments] CHECK CONSTRAINT [FK_FacilitiesToDepartments_Facilities]
GO
ALTER TABLE [refData].[FaciltiesToApplication]  WITH CHECK ADD  CONSTRAINT [FK_FacilitiesToApplication_Application] FOREIGN KEY([ApplicationID])
REFERENCES [refData].[Application] ([ApplicationID])
GO
ALTER TABLE [refData].[FaciltiesToApplication] CHECK CONSTRAINT [FK_FacilitiesToApplication_Application]
GO
ALTER TABLE [refData].[FaciltiesToApplication]  WITH CHECK ADD  CONSTRAINT [FK_FacilitiesToApplication_Facilities] FOREIGN KEY([FacilitiesID])
REFERENCES [refData].[Facilities] ([FacilityID])
GO
ALTER TABLE [refData].[FaciltiesToApplication] CHECK CONSTRAINT [FK_FacilitiesToApplication_Facilities]
GO
ALTER TABLE [refData].[FaciltiesToApplication]  WITH CHECK ADD  CONSTRAINT [FK_FacilitiesToApplication_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[FaciltiesToApplication] CHECK CONSTRAINT [FK_FacilitiesToApplication_Status]
GO
ALTER TABLE [refData].[IndustryStd]  WITH CHECK ADD  CONSTRAINT [FK_IndustryStd_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[IndustryStd] CHECK CONSTRAINT [FK_IndustryStd_Status]
GO
ALTER TABLE [refData].[MessageTriggersResources]  WITH CHECK ADD  CONSTRAINT [FK_MessageTriggers_IndustryStd] FOREIGN KEY([IndustryStd])
REFERENCES [refData].[IndustryStd] ([IndustryStdID])
GO
ALTER TABLE [refData].[MessageTriggersResources] CHECK CONSTRAINT [FK_MessageTriggers_IndustryStd]
GO
ALTER TABLE [refData].[MessageTriggersResources]  WITH CHECK ADD  CONSTRAINT [FK_MessageTriggers_MessageTypes] FOREIGN KEY([MessageType])
REFERENCES [refData].[MessageTypes] ([MessageTypeID])
GO
ALTER TABLE [refData].[MessageTriggersResources] CHECK CONSTRAINT [FK_MessageTriggers_MessageTypes]
GO
ALTER TABLE [refData].[MessageTriggersResources]  WITH CHECK ADD  CONSTRAINT [FK_MessageTriggers_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[MessageTriggersResources] CHECK CONSTRAINT [FK_MessageTriggers_Status]
GO
ALTER TABLE [refData].[MessageTypes]  WITH CHECK ADD  CONSTRAINT [FK_MessageTypes_IndustryStd] FOREIGN KEY([IndustryStd])
REFERENCES [refData].[IndustryStd] ([IndustryStdID])
GO
ALTER TABLE [refData].[MessageTypes] CHECK CONSTRAINT [FK_MessageTypes_IndustryStd]
GO
ALTER TABLE [refData].[MessageTypes]  WITH CHECK ADD  CONSTRAINT [FK_MessageTypes_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[MessageTypes] CHECK CONSTRAINT [FK_MessageTypes_Status]
GO
ALTER TABLE [refData].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_States] FOREIGN KEY([StateID])
REFERENCES [refData].[USStates] ([StateID])
GO
ALTER TABLE [refData].[Organization] CHECK CONSTRAINT [FK_Organization_States]
GO
ALTER TABLE [refData].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[Organization] CHECK CONSTRAINT [FK_Organization_Status]
GO
ALTER TABLE [refData].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[Resources] CHECK CONSTRAINT [FK_Resources_Status]
GO
ALTER TABLE [refData].[ResourcesToOrganization]  WITH CHECK ADD  CONSTRAINT [FK_ResourcesToOrgainzations_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [refData].[Organization] ([OrganizationID])
GO
ALTER TABLE [refData].[ResourcesToOrganization] CHECK CONSTRAINT [FK_ResourcesToOrgainzations_Organization]
GO
ALTER TABLE [refData].[ResourcesToOrganization]  WITH CHECK ADD  CONSTRAINT [FK_ResourcesToOrgainzations_Resources] FOREIGN KEY([ResourceID])
REFERENCES [refData].[Resources] ([ResourceID])
GO
ALTER TABLE [refData].[ResourcesToOrganization] CHECK CONSTRAINT [FK_ResourcesToOrgainzations_Resources]
GO
ALTER TABLE [refData].[ResourcesToOrganization]  WITH CHECK ADD  CONSTRAINT [FK_ResourcesToOrganization_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[ResourcesToOrganization] CHECK CONSTRAINT [FK_ResourcesToOrganization_Status]
GO
ALTER TABLE [refData].[ResourceToApplication]  WITH CHECK ADD  CONSTRAINT [FK_ResourceToApplication_Application] FOREIGN KEY([ApplicationID])
REFERENCES [refData].[Application] ([ApplicationID])
GO
ALTER TABLE [refData].[ResourceToApplication] CHECK CONSTRAINT [FK_ResourceToApplication_Application]
GO
ALTER TABLE [refData].[ResourceToApplication]  WITH CHECK ADD  CONSTRAINT [FK_ResourceToApplication_Resources] FOREIGN KEY([ResourceID])
REFERENCES [refData].[Resources] ([ResourceID])
GO
ALTER TABLE [refData].[ResourceToApplication] CHECK CONSTRAINT [FK_ResourceToApplication_Resources]
GO
ALTER TABLE [refData].[ResourceToApplication]  WITH CHECK ADD  CONSTRAINT [FK_ResourceToApplication_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[ResourceToApplication] CHECK CONSTRAINT [FK_ResourceToApplication_Status]
GO
ALTER TABLE [refData].[StaffType]  WITH CHECK ADD  CONSTRAINT [FK_StaffType_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[StaffType] CHECK CONSTRAINT [FK_StaffType_Status]
GO
ALTER TABLE [refData].[USStates]  WITH CHECK ADD  CONSTRAINT [FK_USStates_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[USStates] CHECK CONSTRAINT [FK_USStates_Status]
GO
ALTER TABLE [refData].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[Vendors] CHECK CONSTRAINT [FK_Vendors_Status]
GO
ALTER TABLE [refData].[VendorsToApplication]  WITH CHECK ADD  CONSTRAINT [FK_VendorsToApplication_Application] FOREIGN KEY([ApplicationID])
REFERENCES [refData].[Application] ([ApplicationID])
GO
ALTER TABLE [refData].[VendorsToApplication] CHECK CONSTRAINT [FK_VendorsToApplication_Application]
GO
ALTER TABLE [refData].[VendorsToApplication]  WITH CHECK ADD  CONSTRAINT [FK_VendorsToApplication_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[VendorsToApplication] CHECK CONSTRAINT [FK_VendorsToApplication_Status]
GO
ALTER TABLE [refData].[VendorsToApplication]  WITH CHECK ADD  CONSTRAINT [FK_VendorsToApplication_Vendors] FOREIGN KEY([VendorID])
REFERENCES [refData].[Vendors] ([VendorID])
GO
ALTER TABLE [refData].[VendorsToApplication] CHECK CONSTRAINT [FK_VendorsToApplication_Vendors]
GO
ALTER TABLE [refData].[VendorsToOrganization]  WITH CHECK ADD  CONSTRAINT [FK_VendorsToOrganization_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [refData].[Organization] ([OrganizationID])
GO
ALTER TABLE [refData].[VendorsToOrganization] CHECK CONSTRAINT [FK_VendorsToOrganization_Organization]
GO
ALTER TABLE [refData].[VendorsToOrganization]  WITH CHECK ADD  CONSTRAINT [FK_VendorsToOrganization_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[VendorsToOrganization] CHECK CONSTRAINT [FK_VendorsToOrganization_Status]
GO
