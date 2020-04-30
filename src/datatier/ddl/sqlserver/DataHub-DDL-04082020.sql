/****** Object:  Schema [appData]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE SCHEMA [appData]
GO
/****** Object:  Schema [refData]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE SCHEMA [refData]
GO
/****** Object:  Table [appData].[DataRequest]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appData].[DataRequest](
	[DataRequestID] [bigint] IDENTITY(1,1) NOT NULL,
	[DataRequestDate] [datetime] NULL,
	[CreatedByUser] [varchar](20) NULL,
	[Organizaton] [bigint] NULL,
	[Application] [bigint] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_DataRequest] PRIMARY KEY NONCLUSTERED 
(
	[DataRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [appData].[DataRequestDetail]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appData].[DataRequestDetail](
	[DataRequestDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[DataRequestID] [bigint] NULL,
	[DataAttributeID] [smallint] NULL,
	[RecCount] [bigint] NULL,
	[RecordFormatDetails] [varchar](75) NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_DataRequestDetail] PRIMARY KEY NONCLUSTERED 
(
	[DataRequestDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [appData].[MsgWarehouse]    Script Date: 4/8/2020 7:27:12 PM ******/
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
	[MessageEvent] [varchar](7) NULL,
	[UniqueMessageIDLink] [varchar](199) NULL,
 CONSTRAINT [PK_Auditing] PRIMARY KEY CLUSTERED 
(
	[MsgWarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Application]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Application](
	[ApplicationID] [varchar](20) NOT NULL,
	[ApplicationCustomCode] [varchar](15) NULL,
	[ApplicationDesc] [varchar](50) NULL,
	[CreatedUser] [varchar](20) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[AppGUID] [uniqueidentifier] NULL,
	[VendorID] [int] NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Facilities]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Facilities](
	[Facilities] [varchar](10) NOT NULL,
	[FacilityName] [varchar](50) NULL,
	[FacilityAddress] [varchar](75) NULL,
	[FacilityAddress2] [varchar](35) NULL,
	[City] [varchar](40) NULL,
	[StateID] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[WebSite] [varchar](75) NULL,
	[OrganizationID] [bigint] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY NONCLUSTERED 
(
	[Facilities] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[IndustryStd]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[IndustryStd](
	[IndustryStd] [varchar](7) NOT NULL,
	[IndustryStdDesc] [varchar](30) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_IndustryStd_1] PRIMARY KEY CLUSTERED 
(
	[IndustryStd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[MessageTriggers]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[MessageTriggers](
	[MessageTrigger] [varchar](7) NOT NULL,
	[MessageTriggerDesc] [varchar](125) NULL,
	[MessageType] [varchar](3) NULL,
	[IndustryStd] [varchar](7) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_MessageTriggers] PRIMARY KEY CLUSTERED 
(
	[MessageTrigger] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[MessageTypes]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[MessageTypes](
	[MessageType] [varchar](3) NOT NULL,
	[MessageTypeValue] [varchar](4) NULL,
	[MessageTypeDesc] [varchar](125) NULL,
	[IndustryStd] [varchar](7) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_MessageTypes] PRIMARY KEY CLUSTERED 
(
	[MessageType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Organization]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[Organization](
	[OrganizationID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationName] [varchar](50) NULL,
	[Address] [varchar](75) NULL,
	[City] [varchar](60) NULL,
	[StateID] [varchar](2) NULL,
	[ZipCode] [varchar](12) NULL,
	[CreatedUser] [varchar](20) NULL,
	[StatusID] [smallint] NULL,
	[CreatedDate] [date] NULL,
	[OrganizationInternalID] [varchar](10) NULL,
	[OrganizationInternalCode] [varchar](10) NULL,
	[OrganizationGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[OrganizationToApplication]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[OrganizationToApplication](
	[OrganizationToApplicationID] [bigint] NOT NULL,
	[OrganizationID] [bigint] NULL,
	[ApplicationID] [varchar](20) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
 CONSTRAINT [PK_OrganizationToApplication] PRIMARY KEY CLUSTERED 
(
	[OrganizationToApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Resources]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Table [refData].[ResourcesToOrganization]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[ResourcesToOrganization](
	[ResourceToOrganizationID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [bigint] NULL,
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
/****** Object:  Table [refData].[ResourceToApplication]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Table [refData].[Status]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Table [refData].[USStates]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[USStates](
	[StateID] [varchar](2) NOT NULL,
	[StateDescription] [varchar](65) NULL,
	[CreatedDate] [date] NULL,
	[StatusID] [smallint] NULL,
	[CreatedUser] [varchar](20) NULL,
 CONSTRAINT [PK_USStates] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [refData].[Vendors]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Table [refData].[VendorsToApplication]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Table [refData].[VendorsToOrganization]    Script Date: 4/8/2020 7:27:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [refData].[VendorsToOrganization](
	[VendorsToOrganizationID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [bigint] NULL,
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
/****** Object:  Index [IX_DataRequest]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_DataRequest] ON [appData].[DataRequest]
(
	[DataRequestID] ASC,
	[DataRequestDate] ASC,
	[CreatedByUser] ASC,
	[Organizaton] ASC,
	[Application] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DataRequestDetail]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_DataRequestDetail] ON [appData].[DataRequestDetail]
(
	[DataRequestDetailID] ASC,
	[DataRequestID] ASC,
	[DataAttributeID] ASC,
	[RecCount] ASC,
	[RecordFormatDetails] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MsgWarehouse]    Script Date: 4/8/2020 7:27:12 PM ******/
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
	[MessageEvent] ASC,
	[SendingApplication] ASC,
	[UniqueMessageIDLink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Application]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Index [Facilities_Facilities_uindex]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Facilities_Facilities_uindex] ON [refData].[Facilities]
(
	[Facilities] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MessageTriggers]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_MessageTriggers] ON [refData].[MessageTriggers]
(
	[MessageTrigger] ASC,
	[MessageTriggerDesc] ASC,
	[MessageType] ASC,
	[IndustryStd] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Organization]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Organization] ON [refData].[Organization]
(
	[OrganizationID] ASC,
	[OrganizationName] ASC,
	[Address] ASC,
	[City] ASC,
	[StateID] ASC,
	[ZipCode] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[CreatedUser] ASC,
	[OrganizationInternalCode] ASC,
	[OrganizationInternalID] ASC,
	[OrganizationGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrganizationToApplication]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrganizationToApplication] ON [refData].[OrganizationToApplication]
(
	[OrganizationToApplicationID] ASC,
	[OrganizationID] ASC,
	[ApplicationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Resources]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Index [IX_ResourcesToOrgainzations]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Index [IX_ResourceToApplication]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Index [IX_Status]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Status] ON [refData].[Status]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_USStates]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_USStates] ON [refData].[USStates]
(
	[StateID] ASC,
	[StateDescription] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC,
	[CreatedUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Vendors]    Script Date: 4/8/2020 7:27:12 PM ******/
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
/****** Object:  Index [IX_VendorsToApplication]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorsToApplication] ON [refData].[VendorsToApplication]
(
	[VendorsToApplicationID] ASC,
	[VendorID] ASC,
	[ApplicationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorsToOrganization]    Script Date: 4/8/2020 7:27:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorsToOrganization] ON [refData].[VendorsToOrganization]
(
	[VendorsToOrganizationID] ASC,
	[OrganizationID] ASC,
	[CreatedDate] ASC,
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [appData].[MsgWarehouse] ADD  CONSTRAINT [DF_MsgWarehouse_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [appData].[MsgWarehouse] ADD  CONSTRAINT [DF_MsgWarehouse_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Application] ADD  CONSTRAINT [DF_Application_DateCreated]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[Application] ADD  CONSTRAINT [DF_Application_Status]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[Application] ADD  CONSTRAINT [DF_Application_AppGUID]  DEFAULT (newid()) FOR [AppGUID]
GO
ALTER TABLE [refData].[IndustryStd] ADD  CONSTRAINT [DF_IndustryStd_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[IndustryStd] ADD  CONSTRAINT [DF_Table_1_StatudID]  DEFAULT ((1)) FOR [StatusID]
GO
ALTER TABLE [refData].[MessageTriggers] ADD  CONSTRAINT [DF_MessageTriggers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[MessageTriggers] ADD  CONSTRAINT [DF_MessageTriggers_StatusID]  DEFAULT ((1)) FOR [StatusID]
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
ALTER TABLE [refData].[OrganizationToApplication] ADD  CONSTRAINT [DF_OrganizationToApplication_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [refData].[OrganizationToApplication] ADD  CONSTRAINT [DF_OrganizationToApplication_StatusID]  DEFAULT ((1)) FOR [StatusID]
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
ALTER TABLE [refData].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Vendor] FOREIGN KEY([VendorID])
REFERENCES [refData].[Vendors] ([VendorID])
GO
ALTER TABLE [refData].[Application] CHECK CONSTRAINT [FK_Application_Vendor]
GO
ALTER TABLE [refData].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_USStates] FOREIGN KEY([StateID])
REFERENCES [refData].[USStates] ([StateID])
GO
ALTER TABLE [refData].[Facilities] CHECK CONSTRAINT [FK_Facilities_USStates]
GO
ALTER TABLE [refData].[MessageTriggers]  WITH CHECK ADD  CONSTRAINT [FK_MessageTriggers_IndustryStd] FOREIGN KEY([IndustryStd])
REFERENCES [refData].[IndustryStd] ([IndustryStd])
GO
ALTER TABLE [refData].[MessageTriggers] CHECK CONSTRAINT [FK_MessageTriggers_IndustryStd]
GO
ALTER TABLE [refData].[MessageTriggers]  WITH CHECK ADD  CONSTRAINT [FK_MessageTriggers_MessageTypes] FOREIGN KEY([MessageType])
REFERENCES [refData].[MessageTypes] ([MessageType])
GO
ALTER TABLE [refData].[MessageTriggers] CHECK CONSTRAINT [FK_MessageTriggers_MessageTypes]
GO
ALTER TABLE [refData].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_States] FOREIGN KEY([StateID])
REFERENCES [refData].[USStates] ([StateID])
GO
ALTER TABLE [refData].[Organization] CHECK CONSTRAINT [FK_Organization_States]
GO
ALTER TABLE [refData].[OrganizationToApplication]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationToApplication_Application] FOREIGN KEY([ApplicationID])
REFERENCES [refData].[Application] ([ApplicationID])
GO
ALTER TABLE [refData].[OrganizationToApplication] CHECK CONSTRAINT [FK_OrganizationToApplication_Application]
GO
ALTER TABLE [refData].[OrganizationToApplication]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationToApplication_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [refData].[Organization] ([OrganizationID])
GO
ALTER TABLE [refData].[OrganizationToApplication] CHECK CONSTRAINT [FK_OrganizationToApplication_Organization]
GO
ALTER TABLE [refData].[OrganizationToApplication]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationToApplication_Status] FOREIGN KEY([StatusID])
REFERENCES [refData].[Status] ([StatusID])
GO
ALTER TABLE [refData].[OrganizationToApplication] CHECK CONSTRAINT [FK_OrganizationToApplication_Status]
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
