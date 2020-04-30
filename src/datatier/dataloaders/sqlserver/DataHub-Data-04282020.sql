SET IDENTITY_INSERT [refData].[Status] ON 

INSERT [refData].[Status] ([StatusID], [StatusDescription], [CreatedDate]) VALUES (1, N'Active', CAST(N'2020-04-17' AS Date))
INSERT [refData].[Status] ([StatusID], [StatusDescription], [CreatedDate]) VALUES (2, N'InActive', CAST(N'2020-04-17' AS Date))
INSERT [refData].[Status] ([StatusID], [StatusDescription], [CreatedDate]) VALUES (3, N'Archived', CAST(N'2020-04-17' AS Date))
SET IDENTITY_INSERT [refData].[Status] OFF
GO
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'AK', N'Alaska', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'AL', N'Alabama', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'AR', N'Arkansas', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'AZ', N'Arizona', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'CA', N'California', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'CO', N'Colorado', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'CT', N'Connecticut', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'DC', N'District of Columbia', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'DE', N'Delaware', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'FL', N'Florida', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'GA', N'Georgia', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'GU', N'Guam', CAST(N'2020-04-17' AS Date), 2)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'HI', N'Hawaii', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'IA', N'Iowa', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'IC', N'IC Code', CAST(N'2020-04-17' AS Date), 2)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'ID', N'Idaho', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'IL', N'Illinois', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'IN', N'Indiana', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'KS', N'Kansas', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'KY', N'Kentucky', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'LA', N'Louisiana', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MA', N'Massachusetts', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MD', N'Maryland', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'ME', N'Maine', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MI', N'Michigan', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MN', N'Minnesota', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MO', N'Missouri', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MS', N'Mississippi', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'MT', N'Montana', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NC', N'North Carolina', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'ND', N'North Dakota', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NE', N'Nebraska', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NH', N'New Hampshire', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NJ', N'New Jersey', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NM', N'New Mexico', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NV', N'Nevada', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'NY', N'New York', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'OH', N'Ohio', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'OK', N'Oklahoma', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'OR', N'Oregon', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'PA', N'Pennsylvania', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'PR', N'Puerto Rico', CAST(N'2020-04-17' AS Date), 2)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'RI', N'Rhode Island', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'SC', N'South Carolina', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'SD', N'South Dakota', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'TN', N'Tennessee', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'TX', N'Texas', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'UT', N'Utah', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'VA', N'Virginia', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'VI', N'Virgin Islands', CAST(N'2020-04-17' AS Date), 2)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'VT', N'Vermont', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'WA', N'Washington', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'WI', N'Wisconsin', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'WV', N'West Virginia', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[USStates] ([StateID], [StateDescription], [CreatedDate], [StatusID]) VALUES (N'WY', N'Wyoming', CAST(N'2020-04-17' AS Date), 1)
GO
INSERT [refData].[Organization] ([OrganizationID], [OrganizationName], [Address], [City], [StateID], [ZipCode], [StatusID], [CreatedDate], [OrganizationInternalID], [OrganizationGUID]) VALUES (N'CareDel', N'Care Delivery Corp US', NULL, NULL, N'TN', NULL, 1, CAST(N'2020-04-17' AS Date), NULL, N'a96b515d-3762-4742-89c9-6fa3a5e3fd1d')
GO
SET IDENTITY_INSERT [refData].[Resources] ON 

INSERT [refData].[Resources] ([ResourceID], [ResourceName], [ResourceEMailAddress], [CreatedDate], [StatusID], [ResourceGUID], [MobileNumber]) VALUES (1, N'Scott, Alan', N'alscott@redhat.com', CAST(N'2020-04-18' AS Date), 1, N'2cf9a18e-9471-4471-b8c5-a8e27aedec95', NULL)
INSERT [refData].[Resources] ([ResourceID], [ResourceName], [ResourceEMailAddress], [CreatedDate], [StatusID], [ResourceGUID], [MobileNumber]) VALUES (2, N'Perkins, Jess', N'jeperkins@redhat.com', CAST(N'2020-04-18' AS Date), 1, N'769a49a6-380b-45db-840e-2c659fb3693b', NULL)
INSERT [refData].[Resources] ([ResourceID], [ResourceName], [ResourceEMailAddress], [CreatedDate], [StatusID], [ResourceGUID], [MobileNumber]) VALUES (3, N'Jones, Paul', N'pajones@redhat.com', CAST(N'2020-04-18' AS Date), 1, N'3c90bec3-8bae-431f-beb8-48434199ecf0', NULL)
INSERT [refData].[Resources] ([ResourceID], [ResourceName], [ResourceEMailAddress], [CreatedDate], [StatusID], [ResourceGUID], [MobileNumber]) VALUES (4, N'Prentiss, Jim', N'jeprentiss@redhat.com', CAST(N'2020-04-18' AS Date), 1, N'7c8cee35-cb4f-4fa6-a033-acf70fdee227', NULL)
INSERT [refData].[Resources] ([ResourceID], [ResourceName], [ResourceEMailAddress], [CreatedDate], [StatusID], [ResourceGUID], [MobileNumber]) VALUES (5, N'Chaugtau, Atif', N'atif@redhat.com', CAST(N'2020-04-18' AS Date), 1, N'2c2d68ef-a1eb-43d1-be8e-2cf6caec4d6a', NULL)
INSERT [refData].[Resources] ([ResourceID], [ResourceName], [ResourceEMailAddress], [CreatedDate], [StatusID], [ResourceGUID], [MobileNumber]) VALUES (6, N'Delvecchia, Ted', NULL, CAST(N'2020-04-18' AS Date), 1, N'08a2ec7d-d024-4b9b-a89d-f5c1053fea2f', NULL)
SET IDENTITY_INSERT [refData].[Resources] OFF
GO
INSERT [refData].[Facilities] ([FacilityID], [FacilityName], [FacilityAddress], [FacilityAddress2], [City], [StateID], [ZipCode], [WebSite], [OrganizationID], [StatusID], [CreatedDate], [TotalDailyCensusMax]) VALUES (N'MCTN', N'Mid County Healthcare System Tennessee', N'101 Healthcare Way', NULL, N'Nashille', N'TN', N'37021', NULL, N'CareDel', 1, CAST(N'2020-04-18' AS Date), 248)
GO
SET IDENTITY_INSERT [refData].[Vendors] ON 

INSERT [refData].[Vendors] ([VendorID], [VendorName], [CreatedDate], [StatusID], [VendorGUID]) VALUES (1, N'Red Hat', CAST(N'2020-04-17' AS Date), 1, N'd829ca0a-b180-4830-9306-f4a4278c3cbe')
INSERT [refData].[Vendors] ([VendorID], [VendorName], [CreatedDate], [StatusID], [VendorGUID]) VALUES (2, N'Care Delivery - IT', CAST(N'2020-04-17' AS Date), 1, N'b497b120-1242-487c-90a1-a3aa068736bb')
SET IDENTITY_INSERT [refData].[Vendors] OFF
GO
INSERT [refData].[Application] ([ApplicationID], [ApplicationCustomCode], [ApplicationDesc], [CreatedUser], [AppGUID], [VendorID], [CreatedDate], [StatusID]) VALUES (N'CareKiosk', N'CareKiosk', N'Care Kiosk', NULL, N'583ec8ff-aa7b-43b8-a8ea-bc87bbfbfb02', 2, CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[Application] ([ApplicationID], [ApplicationCustomCode], [ApplicationDesc], [CreatedUser], [AppGUID], [VendorID], [CreatedDate], [StatusID]) VALUES (N'iDAAS', N'iDAAS', N'iDAAS Platform', NULL, N'ac9d262c-ca45-4ab0-a085-824b636f78b2', 1, CAST(N'2020-04-22' AS Date), 1)
INSERT [refData].[Application] ([ApplicationID], [ApplicationCustomCode], [ApplicationDesc], [CreatedUser], [AppGUID], [VendorID], [CreatedDate], [StatusID]) VALUES (N'MMS', N'MMS', N'Main Medical Systems', NULL, N'2d9b5bc5-88a6-4b4c-9b42-e8dcd84fe842', 2, CAST(N'2020-04-18' AS Date), 1)
GO
SET IDENTITY_INSERT [refData].[ApplicationComponents] ON 

INSERT [refData].[ApplicationComponents] ([ApplicationComponentsID], [ComponentName], [ApplicationID], [CreatedDate], [StatusID]) VALUES (7, N'Connect - Clinical', N'iDAAS', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[ApplicationComponents] ([ApplicationComponentsID], [ComponentName], [ApplicationID], [CreatedDate], [StatusID]) VALUES (8, N'Connect - Financial', N'iDAAS', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[ApplicationComponents] ([ApplicationComponentsID], [ComponentName], [ApplicationID], [CreatedDate], [StatusID]) VALUES (9, N'Connect - Life Sciences', N'iDAAS', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[ApplicationComponents] ([ApplicationComponentsID], [ComponentName], [ApplicationID], [CreatedDate], [StatusID]) VALUES (10, N'DataHub', N'iDAAS', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[ApplicationComponents] ([ApplicationComponentsID], [ComponentName], [ApplicationID], [CreatedDate], [StatusID]) VALUES (11, N'DREAM - aiDOC', N'iDAAS', CAST(N'2020-04-25' AS Date), 1)
SET IDENTITY_INSERT [refData].[ApplicationComponents] OFF
GO
INSERT [refData].[IndustryStd] ([IndustryStdID], [IndustryStdDesc], [CreatedDate], [StatusID]) VALUES (N'FHIR', N'HL7 FHIR', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[IndustryStd] ([IndustryStdID], [IndustryStdDesc], [CreatedDate], [StatusID]) VALUES (N'HL7', N'HL7 v2 - v2.1 to 2.9', CAST(N'2020-04-17' AS Date), 1)
INSERT [refData].[IndustryStd] ([IndustryStdID], [IndustryStdDesc], [CreatedDate], [StatusID]) VALUES (N'UNDF', N'Undefined', CAST(N'2020-04-18' AS Date), 1)
GO
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'ADT', N'Admissions, Discharges and Transfers', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'FHR', N'FHIR Document', N'FHIR', CAST(N'2020-04-22' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'MDM', N'Master Document Mgmt', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'MFN', N'Master Files Notification', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'ORM', N'Orders', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'ORU', N'Results', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'RDE', N'Pharmacy', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'SCH', N'Schedule', N'HL7', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'UND', N'Undefined', N'UNDF', CAST(N'2020-04-18' AS Date), 1)
INSERT [refData].[MessageTypes] ([MessageTypeID], [MessageTypeDesc], [IndustryStd], [CreatedDate], [StatusID]) VALUES (N'VXU', N'Vaccination', N'HL7', CAST(N'2020-04-18' AS Date), 1)
GO
SET IDENTITY_INSERT [refData].[StaffType] ON 

INSERT [refData].[StaffType] ([StaffTypeID], [StaffTypeDesc], [CreatedDate], [StatusID]) VALUES (1, N'Registered  Nurse', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[StaffType] ([StaffTypeID], [StaffTypeDesc], [CreatedDate], [StatusID]) VALUES (2, N'Charge Nurse', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[StaffType] ([StaffTypeID], [StaffTypeDesc], [CreatedDate], [StatusID]) VALUES (3, N'Cardiac Nurse', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[StaffType] ([StaffTypeID], [StaffTypeDesc], [CreatedDate], [StatusID]) VALUES (4, N'Care Coordinator', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[StaffType] ([StaffTypeID], [StaffTypeDesc], [CreatedDate], [StatusID]) VALUES (5, N'Certified Nursing Asst', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[StaffType] ([StaffTypeID], [StaffTypeDesc], [CreatedDate], [StatusID]) VALUES (6, N'Pharmacist', CAST(N'2020-04-25' AS Date), 1)
SET IDENTITY_INSERT [refData].[StaffType] OFF
GO
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'2E', N'2nd Floor - East', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'2W', N'2nd Floor - West ', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'3E', N'3rd Floor - East', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'3W', N'3rd Floor - West', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'4E', N'4th Floor - East', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'4W', N'4th Floor - West', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'CCU', N'CCU', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'Dietary', N'Dietary Services', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'ER', N'Emergency Room', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'ICU', N'ICU', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'Lab', N'Laboratory Services', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'OT', N'Occupational Therapy', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'PT', N'Physical Therapy', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'Radiology', N'Radiology Services', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[Departments] ([DepartmentID], [DepartmentName], [CreatedDate], [StatusID]) VALUES (N'SW', N'Social Work', CAST(N'2020-04-25' AS Date), 1)
GO
SET IDENTITY_INSERT [refData].[DiseaseConditionIndex] ON 

INSERT [refData].[DiseaseConditionIndex] ([DiseaseIndexID], [DiseaseIndexName], [CreatedDate], [StatusID]) VALUES (1, N'Sepsis', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[DiseaseConditionIndex] ([DiseaseIndexID], [DiseaseIndexName], [CreatedDate], [StatusID]) VALUES (2, N'Diabetis', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[DiseaseConditionIndex] ([DiseaseIndexID], [DiseaseIndexName], [CreatedDate], [StatusID]) VALUES (3, N'Covid-19', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[DiseaseConditionIndex] ([DiseaseIndexID], [DiseaseIndexName], [CreatedDate], [StatusID]) VALUES (4, N'Influenza', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[DiseaseConditionIndex] ([DiseaseIndexID], [DiseaseIndexName], [CreatedDate], [StatusID]) VALUES (5, N'Heart Attack', CAST(N'2020-04-25' AS Date), 1)
INSERT [refData].[DiseaseConditionIndex] ([DiseaseIndexID], [DiseaseIndexName], [CreatedDate], [StatusID]) VALUES (6, N'Stroke', CAST(N'2020-04-25' AS Date), 1)
SET IDENTITY_INSERT [refData].[DiseaseConditionIndex] OFF
GO
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'Input', N'Inbound Data to Component', CAST(N'2020-04-21' AS Date), 1)
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'Output', N'Outbound Data to Component', CAST(N'2020-04-21' AS Date), 1)
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'MTier', N'Middle Tier Processing - Queuing', CAST(N'2020-04-21' AS Date), 1)
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'BRules-In', N'Input to a BRMS', CAST(N'2020-04-21' AS Date), 1)
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'BRules-Out', N'Output from a BRMS', CAST(N'2020-04-21' AS Date), 1)
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'CEP-In', N'Input to a Complex Event Process', CAST(N'2020-04-21' AS Date), 1)
INSERT [refData].[BusProcess] ([BusinessProcessID], [BusinessProcessDesc], [CreatedDate], [StatusID]) VALUES (N'CEP-Out', N'Output to a Complex Event Process', CAST(N'2020-04-21' AS Date), 1)
GO
