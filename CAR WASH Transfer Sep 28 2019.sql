USE [carwash]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertCarWashOperators]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_InsertCarWashOperators]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_InsertCarWashOperators]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertCarDealers]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_InsertCarDealers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_InsertCarDealers]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetEmailServerDetails]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetEmailServerDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetEmailServerDetails]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetEmailAddress]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetEmailAddress]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetEmailAddress]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarWaskOpPackageByID]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarWaskOpPackageByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetCarWaskOpPackageByID]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarWaskOperatorsByID]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarWaskOperatorsByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetCarWaskOperatorsByID]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarWashOpList]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarWashOpList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetCarWashOpList]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarDealersList]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarDealersList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetCarDealersList]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarDealersByID]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarDealersByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[USP_GetCarDealersByID]
GO
/****** Object:  Table [dbo].[tbl_MST_EMAILSERVER]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MST_EMAILSERVER]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_MST_EMAILSERVER]
GO
/****** Object:  Table [dbo].[tbl_EMAIL_ADDRESS]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EMAIL_ADDRESS]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_EMAIL_ADDRESS]
GO
/****** Object:  Table [dbo].[tbl_CAR_WASH_OP_PACKAGE]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CAR_WASH_OP_PACKAGE]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CAR_WASH_OP_PACKAGE]
GO
/****** Object:  Table [dbo].[tbl_CAR_WASH_OP]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CAR_WASH_OP]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CAR_WASH_OP]
GO
/****** Object:  Table [dbo].[tbl_CAR_DEALERS]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CAR_DEALERS]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CAR_DEALERS]
GO
/****** Object:  UserDefinedTableType [dbo].[CAR_WASH_OP_PACKAGE]    Script Date: 28/09/2019 21:18:07 ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'CAR_WASH_OP_PACKAGE' AND ss.name = N'dbo')
DROP TYPE [dbo].[CAR_WASH_OP_PACKAGE]
GO
/****** Object:  UserDefinedTableType [dbo].[CAR_WASH_OP_PACKAGE]    Script Date: 28/09/2019 21:18:07 ******/
IF NOT EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'CAR_WASH_OP_PACKAGE' AND ss.name = N'dbo')
CREATE TYPE [dbo].[CAR_WASH_OP_PACKAGE] AS TABLE(
	[NAME] [nvarchar](200) NULL,
	[PRICE] [numeric](18, 2) NULL
)
GO
/****** Object:  Table [dbo].[tbl_CAR_DEALERS]    Script Date: 28/09/2019 21:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CAR_DEALERS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_CAR_DEALERS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FIRST_NAME] [nvarchar](100) NULL,
	[LAST_NAME] [nvarchar](100) NULL,
	[FIRM_NAME] [nvarchar](200) NULL,
	[ADDRESS] [nvarchar](200) NULL,
	[STATE] [nvarchar](100) NULL,
	[ZIPCODE] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[WEBSITE] [nvarchar](200) NULL,
	[PHONE] [nvarchar](50) NULL,
	[FAX] [nvarchar](50) NULL,
	[MON_TIME_FROM] [nvarchar](50) NULL,
	[MON_TIME_TO] [nvarchar](50) NULL,
	[TUE_TIME_FROM] [nvarchar](50) NULL,
	[TUE_TIME_TO] [nvarchar](50) NULL,
	[WED_TIME_FROM] [nvarchar](50) NULL,
	[WED_TIME_TO] [nvarchar](50) NULL,
	[THU_TIME_FROM] [nvarchar](50) NULL,
	[THU_TIME_TO] [nvarchar](50) NULL,
	[FRI_TIME_FROM] [nvarchar](50) NULL,
	[FRI_TIME_TO] [nvarchar](50) NULL,
	[SAT_TIME_FROM] [nvarchar](50) NULL,
	[SAT_TIME_TO] [nvarchar](50) NULL,
	[SUN_TIME_FROM] [nvarchar](50) NULL,
	[SUN_TIME_TO] [nvarchar](50) NULL,
	[NEWCARSSOLD2018] [bigint] NULL,
	[USEDCARSSOLD2018] [bigint] NULL,
	[HAS_CAR_WASH] [bit] NULL,
	[CONTACT_WEEK] [nvarchar](50) NULL,
	[CONTACT_TIME] [nvarchar](50) NULL,
	[QUESTIONS] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_CAR_WASH_OP]    Script Date: 28/09/2019 21:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CAR_WASH_OP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_CAR_WASH_OP](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CONTACT_PERSON] [nvarchar](100) NULL,
	[FIRM_NAME] [nvarchar](200) NULL,
	[ADDRESS] [nvarchar](200) NULL,
	[STATE] [nvarchar](100) NULL,
	[ZIPCODE] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[WEBSITE] [nvarchar](200) NULL,
	[PHONE] [nvarchar](50) NULL,
	[FAX] [nvarchar](50) NULL,
	[MON_TIME_FROM] [nvarchar](50) NULL,
	[MON_TIME_TO] [nvarchar](50) NULL,
	[TUE_TIME_FROM] [nvarchar](50) NULL,
	[TUE_TIME_TO] [nvarchar](50) NULL,
	[WED_TIME_FROM] [nvarchar](50) NULL,
	[WED_TIME_TO] [nvarchar](50) NULL,
	[THU_TIME_FROM] [nvarchar](50) NULL,
	[THU_TIME_TO] [nvarchar](50) NULL,
	[FRI_TIME_FROM] [nvarchar](50) NULL,
	[FRI_TIME_TO] [nvarchar](50) NULL,
	[SAT_TIME_FROM] [nvarchar](50) NULL,
	[SAT_TIME_TO] [nvarchar](50) NULL,
	[SUN_TIME_FROM] [nvarchar](50) NULL,
	[SUN_TIME_TO] [nvarchar](50) NULL,
	[CARWASH_TYPE] [nvarchar](max) NULL,
	[GAS_STATION] [nvarchar](max) NULL,
	[GAS_STATION_OTHER] [nvarchar](max) NULL,
	[CARWASH_AGE_YR] [int] NULL,
	[CARWASH_AGE_MN] [int] NULL,
	[MAX_VOL_PER_DAY] [int] NULL,
	[CONTACT_WEEK] [nvarchar](50) NULL,
	[CONTACT_TIME] [nvarchar](50) NULL,
	[QUESTIONS] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_CAR_WASH_OP_PACKAGE]    Script Date: 28/09/2019 21:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CAR_WASH_OP_PACKAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_CAR_WASH_OP_PACKAGE](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CAR_WASH_OP_ID] [bigint] NULL,
	[NAME] [nvarchar](200) NULL,
	[PRICE] [numeric](18, 2) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_EMAIL_ADDRESS]    Script Date: 28/09/2019 21:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EMAIL_ADDRESS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_EMAIL_ADDRESS](
	[EMAIL] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_MST_EMAILSERVER]    Script Date: 28/09/2019 21:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MST_EMAILSERVER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_MST_EMAILSERVER](
	[Host] [nvarchar](100) NULL,
	[Port] [nvarchar](30) NULL,
	[UserName] [nvarchar](100) NULL,
	[UserPassword] [nvarchar](100) NULL,
	[EnableSsl] [bit] NULL
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[tbl_CAR_DEALERS] ON 

INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (1, N'Prasanna Kumar', N'S', N'Urs Kars', N'Balal Circle Mysore', N'Texas', N'57001', N'prasannadharm@gmail.com', N'www.urskars.com', N'9742563583', N'9742563584', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'6.00PM', N'OFF', N'OFF', 500, 600, 1, N'Monday', N'Evening', N'Please call be back at the earliest possible')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (2, N'Kumar', N'S', N'Mandovi Motors', N'Mysore', N'Alabama', N'12245', N'prasanna@gmail.com', N'www.cars.com', N'98742563583', N'6631566234141', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', N'OFF', N'OFF', 500, 600, 0, N'Saturday', N'Evening', N'no')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (3, N'Dom', N'Harry', N'Renault', N'Chicago', N'California', N'52635', N'prasanna@gmail.com', N'www.gmail.com', N'9742563583', N'55555', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', N'OFF', N'OFF', 500, 600, 1, N'Monday', N'Morning', N'')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (4, N'dsadasd', N'sadasd', N'ddsad', N'asdasdas', N'Alabama', N'12345', N'dasdasddsa@asddsa.com', N'dsaqdsad', N'asdasa21332131', N'q2133123', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', N'OFF', N'OFF', 200, 255, 1, N'Monday', N'Afternoon', N'adad')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (5, N'Prasanna', N'Kumar', N'New cars only', N'mysore', N'Alaska', N'52225', N'prasannadharm@gmail.com', N'www.gmail.com', N'9742563583', N'858252633322', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', N'OFF', N'OFF', 100, 5500, 1, N'Monday', N'Morning', N'Whats you feed back')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (7, N'Jhon', N'M', N'GMC Chicago', N'Chicago', N'Illinois', N'60007', N'contactm.mounika@gmail.com', N'www.gmc.com', N'9742563583', N'', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'7.00AM', N'7.00PM', N'OFF', N'OFF', 600, 500, 0, N'Monday', N'Evening', N'Please share your pricing details')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (8, N'Jhon', N'Miller', N'Hyundai Chicago', N'Highway 20, Chicago', N'Illinois', N'60007', N'HyundaiChicago@Hyundai.com', N'www.HyundaiChicago.com', N'9742563583', N'', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'8.00AM', N'5.00PM', N'7.00AM', N'7.00PM', N'OFF', N'OFF', 1500, 600, 0, N'Monday', N'Evening', N'Call me regarding the Packages you offer for car dealers.')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (9, N'Jhon', N'Miller', N'Hyundai Irving', N'#755 Grapevine Irving', N'Texas', N'75014', N'freecarwash@aol.com', N'www.Hyundai.com', N'9842698574', N'9842698574', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', 500, 300, 0, N'Saturday', N'Evening', N'Call me back')
INSERT [dbo].[tbl_CAR_DEALERS] ([ID], [FIRST_NAME], [LAST_NAME], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [NEWCARSSOLD2018], [USEDCARSSOLD2018], [HAS_CAR_WASH], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (6, N'Jhon', N'Doe', N'GMC Dallas', N'Dallas', N'Texas', N'52369', N'francisteranceva@gmail.com', N'www.gmcdallas.com', N'9742563583', N'9988774455', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'8.00AM', N'5.30PM', N'OFF', N'OFF', 1100, 2100, 0, N'Saturday', N'Evening', N'Please call us to dicsuss about packages.')
SET IDENTITY_INSERT [dbo].[tbl_CAR_DEALERS] OFF
SET IDENTITY_INSERT [dbo].[tbl_CAR_WASH_OP] ON 

INSERT [dbo].[tbl_CAR_WASH_OP] ([ID], [CONTACT_PERSON], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [CARWASH_TYPE], [GAS_STATION], [GAS_STATION_OTHER], [CARWASH_AGE_YR], [CARWASH_AGE_MN], [MAX_VOL_PER_DAY], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (1, N'Kumar', N'Clean Cars Wash care', N'#327/2, Mysore', N'Tennessee', N'12389', N'dharm@gmail.com', N'www.carwash.com', N'9742563583', N'9964885534', N'OFF', N'OFF', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'7.00AM', N'7.00PM', N'7.00AM', N'7.00PM', N'Touchless, Full service, Self service, Full Detail', N'Others', N'Indian Oil', 2, 6, 100, N'Monday', N'Afternoon', N'Call me back')
INSERT [dbo].[tbl_CAR_WASH_OP] ([ID], [CONTACT_PERSON], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [CARWASH_TYPE], [GAS_STATION], [GAS_STATION_OTHER], [CARWASH_AGE_YR], [CARWASH_AGE_MN], [MAX_VOL_PER_DAY], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (2, N'Kumar', N'Clean car', N'mysore', N'Alabama', N'25639', N'prasanna@gmail.com', N'www.gmail.com', N'9742563583', N'', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', N'OFF', N'OFF', N'Brushless, Full service, Self service', N'Exxon', N'', 2, 0, 30, N'Monday', N'Morning', N'please call me back soon')
INSERT [dbo].[tbl_CAR_WASH_OP] ([ID], [CONTACT_PERSON], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [CARWASH_TYPE], [GAS_STATION], [GAS_STATION_OTHER], [CARWASH_AGE_YR], [CARWASH_AGE_MN], [MAX_VOL_PER_DAY], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (3, N'Jhon', N'Clean car care', N'Water Pipeline Road', N'California', N'57019', N'prasannnadharm@gmail.com', N'', N'9742563583', N'9742563584', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'OFF', N'OFF', N'OFF', N'OFF', N'Touchless, Full service, Tunnel Car wash', N'Others', N'Indian Oil', 4, 2, 150, N'Monday', N'Afternoon', N'Call me')
INSERT [dbo].[tbl_CAR_WASH_OP] ([ID], [CONTACT_PERSON], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [CARWASH_TYPE], [GAS_STATION], [GAS_STATION_OTHER], [CARWASH_AGE_YR], [CARWASH_AGE_MN], [MAX_VOL_PER_DAY], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (4, N'Jhon', N'Clean Cars Chicago', N'Chicago', N'Illinois', N'60007', N'contactm.mounika@gmail.com', N'www.cleancars.com', N'9845215869', N'9582662536', N'OFF', N'OFF', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'7.00AM', N'7.00PM', N'Touchless, Full service, Self service, Full Detail', N'Marathon', N'', 2, 3, 150, N'Tuesday', N'Morning', N'Please contact me for more detailed discussion')
INSERT [dbo].[tbl_CAR_WASH_OP] ([ID], [CONTACT_PERSON], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [CARWASH_TYPE], [GAS_STATION], [GAS_STATION_OTHER], [CARWASH_AGE_YR], [CARWASH_AGE_MN], [MAX_VOL_PER_DAY], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (5, N'Miller', N'Clean Cars Forever', N'Chicago', N'Illinois', N'60007', N'freecarwash@aol.com', N'www.cleancarwasforever.com', N'8576458796', N'', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'Touchless, Brushless, Self service, Full Detail', N'Shell', N'', 1, 0, 150, N'Monday', N'Afternoon', N'call me back soon')
INSERT [dbo].[tbl_CAR_WASH_OP] ([ID], [CONTACT_PERSON], [FIRM_NAME], [ADDRESS], [STATE], [ZIPCODE], [EMAIL], [WEBSITE], [PHONE], [FAX], [MON_TIME_FROM], [MON_TIME_TO], [TUE_TIME_FROM], [TUE_TIME_TO], [WED_TIME_FROM], [WED_TIME_TO], [THU_TIME_FROM], [THU_TIME_TO], [FRI_TIME_FROM], [FRI_TIME_TO], [SAT_TIME_FROM], [SAT_TIME_TO], [SUN_TIME_FROM], [SUN_TIME_TO], [CARWASH_TYPE], [GAS_STATION], [GAS_STATION_OTHER], [CARWASH_AGE_YR], [CARWASH_AGE_MN], [MAX_VOL_PER_DAY], [CONTACT_WEEK], [CONTACT_TIME], [QUESTIONS]) VALUES (6, N'Shawn', N'Clean Cars Texas', N'#4253 Highway18 Dallas', N'Texas', N'73301', N'freecarwash@aol.com', N'www.cleancars.com', N'9742563583', N'', N'OFF', N'OFF', N'9.00AM', N'1.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'5.00PM', N'9.00AM', N'1.00PM', N'9.00AM', N'7.00PM', N'9.00AM', N'7.00PM', N'Touchless, Full service, Self service, Full Detail', N'Mobil', N'', 1, 0, 200, N'Monday', N'Evening', N'Please call us for more pricing details.')
SET IDENTITY_INSERT [dbo].[tbl_CAR_WASH_OP] OFF
SET IDENTITY_INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ON 

INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (1, 1, N'Touchless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (2, 1, N'Full service', CAST(5.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (3, 1, N'Self service', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (4, 1, N'Full Detail', CAST(7.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (5, 1, N'Vaccuming', CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (6, 2, N'Full Detail', CAST(5.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (7, 2, N'Touchless', CAST(5.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (8, 2, N'Brushless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (9, 3, N'Touchless', CAST(2.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (10, 3, N'Brushless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (11, 3, N'Full service', CAST(6.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (12, 3, N'Tunnel Car wash', CAST(4.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (13, 4, N'Touchless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (14, 4, N'Full service', CAST(4.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (15, 4, N'Self service', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (16, 4, N'Full Detail', CAST(5.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (17, 5, N'Touchless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (18, 5, N'Brushless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (19, 5, N'Self service', CAST(2.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (20, 5, N'Full Detail', CAST(4.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (21, 6, N'Touchless', CAST(4.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (22, 6, N'Brushless', CAST(3.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (23, 6, N'Full Detail', CAST(6.00 AS Numeric(18, 2)))
INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] ([ID], [CAR_WASH_OP_ID], [NAME], [PRICE]) VALUES (24, 6, N'Vaccum', CAST(2.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[tbl_CAR_WASH_OP_PACKAGE] OFF
INSERT [dbo].[tbl_EMAIL_ADDRESS] ([EMAIL]) VALUES (N'freecarwash@aol.com,contactm.mounika@gmail.com,prasannadharm@gmail.com,francisteranceva@gmail.com')
INSERT [dbo].[tbl_MST_EMAILSERVER] ([Host], [Port], [UserName], [UserPassword], [EnableSsl]) VALUES (N'smtp.gmail.com', N'587', N'projectalerts2019@gmail.com', N'acme12345', 1)
/****** Object:  StoredProcedure [dbo].[USP_GetCarDealersByID]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarDealersByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetCarDealersByID] AS' 
END
GO

ALTER procedure [dbo].[USP_GetCarDealersByID]  
(
	@ID bigint
)
as  
begin  
	SELECT ID, FIRST_NAME, LAST_NAME, FIRM_NAME, ADDRESS, STATE, ZIPCODE, EMAIL, WEBSITE, PHONE, FAX, MON_TIME_FROM, MON_TIME_TO, TUE_TIME_FROM, TUE_TIME_TO, WED_TIME_FROM, WED_TIME_TO, THU_TIME_FROM, THU_TIME_TO, FRI_TIME_FROM, FRI_TIME_TO, SAT_TIME_FROM, SAT_TIME_TO, SUN_TIME_FROM, SUN_TIME_TO, NEWCARSSOLD2018, USEDCARSSOLD2018, HAS_CAR_WASH, CONTACT_WEEK, CONTACT_TIME, QUESTIONS FROM tbl_CAR_DEALERS where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarDealersList]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarDealersList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetCarDealersList] AS' 
END
GO

ALTER procedure [dbo].[USP_GetCarDealersList] 
as  
begin  

	CREATE TABLE #tmpDealers(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Reg No] [bigint] null,
	[Company] [nvarchar](200) NULL,
	[First Name] [nvarchar](100) NULL,
	[Last Name] [nvarchar](100) NULL,	
	[Address] [nvarchar](200) NULL,
	[State] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Website] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Mon From] [nvarchar](50) NULL,
	[Mon To] [nvarchar](50) NULL,
	[Tue From] [nvarchar](50) NULL,
	[Tue To] [nvarchar](50) NULL,
	[Wed From] [nvarchar](50) NULL,
	[Wed To] [nvarchar](50) NULL,
	[Thu From] [nvarchar](50) NULL,
	[Thu To] [nvarchar](50) NULL,
	[Fri From] [nvarchar](50) NULL,
	[Fri To] [nvarchar](50) NULL,
	[Sat From] [nvarchar](50) NULL,
	[Sat To] [nvarchar](50) NULL,
	[Sun From] [nvarchar](50) NULL,
	[Sun To] [nvarchar](50) NULL,
	[New Cars Sold 2018] [bigint] NULL,
	[Used Cars Sold 2018] [bigint] NULL,
	[Has Car Wash] nvarchar(100) NULL,
	[Contact Weekday] [nvarchar](50) NULL,
	[Contact Time] [nvarchar](50) NULL,
	[Question] [nvarchar](max) NULL)

	INSERT INTO #tmpDealers ([Reg No],[Company],[First Name],[Last Name],[Address],[State],[ZipCode],[Email],[Website],[Phone],[Fax],
	[Mon From],[Mon To],[Tue From],[Tue To],[Wed From],[Wed To],[Thu From],[Thu To],[Fri From],[Fri To],[Sat From],[Sat To],
	[Sun From],[Sun To],[New Cars Sold 2018],[Used Cars Sold 2018],[Has Car Wash],[Contact Weekday],[Contact Time],[Question])
	SELECT ID, FIRM_NAME, FIRST_NAME, LAST_NAME, ADDRESS, STATE, ZIPCODE, EMAIL, WEBSITE, PHONE, FAX, MON_TIME_FROM, MON_TIME_TO, 
	TUE_TIME_FROM, TUE_TIME_TO, WED_TIME_FROM, WED_TIME_TO, THU_TIME_FROM, THU_TIME_TO, FRI_TIME_FROM, FRI_TIME_TO, SAT_TIME_FROM, 
	SAT_TIME_TO, SUN_TIME_FROM, SUN_TIME_TO, NEWCARSSOLD2018, USEDCARSSOLD2018, CASE HAS_CAR_WASH WHEN 1 THEN 'Yes' ELSE 'No' END as 
	HAS_CAR_WASH, CONTACT_WEEK, CONTACT_TIME, QUESTIONS FROM tbl_CAR_DEALERS ORDER BY ID

	SELECT [Reg No],[Company],[First Name],[Last Name],[Address],[State],[ZipCode],[Email],[Website],[Phone],[Fax],
	[Mon From],[Mon To],[Tue From],[Tue To],[Wed From],[Wed To],[Thu From],[Thu To],[Fri From],[Fri To],[Sat From],[Sat To],
	[Sun From],[Sun To],[New Cars Sold 2018],[Used Cars Sold 2018],[Has Car Wash],[Contact Weekday],[Contact Time],[Question] 
	FROM #tmpDealers ORDER BY [Reg No]

end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarWashOpList]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarWashOpList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetCarWashOpList] AS' 
END
GO
--EXEC USP_GetCarWashOpList
ALTER procedure [dbo].[USP_GetCarWashOpList] 
as  
begin  
	DECLARE @CNT as INT;
	DECLARE @INCR as INT;
	DECLARE @CAR_WASH_OP_ID as BIGINT;
	CREATE TABLE #tmpWashOp(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Reg No] [bigint] null,
	[Company] [nvarchar](200) NULL,
	[Contact Person] [nvarchar](100) NULL,		
	[Address] [nvarchar](200) NULL,
	[State] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Website] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Mon From] [nvarchar](50) NULL,
	[Mon To] [nvarchar](50) NULL,
	[Tue From] [nvarchar](50) NULL,
	[Tue To] [nvarchar](50) NULL,
	[Wed From] [nvarchar](50) NULL,
	[Wed To] [nvarchar](50) NULL,
	[Thu From] [nvarchar](50) NULL,
	[Thu To] [nvarchar](50) NULL,
	[Fri From] [nvarchar](50) NULL,
	[Fri To] [nvarchar](50) NULL,
	[Sat From] [nvarchar](50) NULL,
	[Sat To] [nvarchar](50) NULL,
	[Sun From] [nvarchar](50) NULL,
	[Sun To] [nvarchar](50) NULL,
	[Carwash Type] nvarchar(max),
	[Gas Station] nvarchar(200),
	[Gas Station Other] nvarchar(200),
	[Car Wash Equipment] nvarchar(200),
	[Max Volume Per Day] bigint,
	[Contact Weekday] [nvarchar](50) NULL,
	[Contact Time] [nvarchar](50) NULL,
	[Question] [nvarchar](max) NULL,
	[Pkg Name1] nvarchar(100) not null default(''),
	[Price1] numeric(18,2) not null default(0),
	[Pkg Name2] nvarchar(100) not null default(''),
	[Price2] numeric(18,2) not null default(0),
	[Pkg Name3] nvarchar(100) not null default(''),
	[Price3] numeric(18,2) not null default(0),
	[Pkg Name4] nvarchar(100) not null default(''),
	[Price4] numeric(18,2) not null default(0),
	[Pkg Name5] nvarchar(100) not null default(''),
	[Price5] numeric(18,2) not null default(0),
	[Pkg Name6] nvarchar(100) not null default(''),
	[Price6] numeric(18,2) not null default(0),
	[Pkg Name7] nvarchar(100) not null default(''),
	[Price7] numeric(18,2) not null default(0),
	[Pkg Name8] nvarchar(100) not null default(''),
	[Price8] numeric(18,2) not null default(0),
	[Pkg Name9] nvarchar(100) not null default(''),
	[Price9] numeric(18,2) not null default(0),
	[Pkg Name10] nvarchar(100) not null default(''),
	[Price10] numeric(18,2) not null default(0))

	INSERT INTO #tmpWashOp ([Reg No],[Company],[Contact Person],[Address],[State],[ZipCode],[Email],[Website],[Phone],[Fax],
	[Mon From],[Mon To],[Tue From],[Tue To],[Wed From],[Wed To],[Thu From],[Thu To],[Fri From],[Fri To],[Sat From],[Sat To],
	[Sun From],[Sun To],[Carwash Type],[Gas Station],[Gas Station Other],[Car Wash Equipment],[Max Volume Per Day],
	[Contact Weekday],[Contact Time],[Question])

	SELECT ID, FIRM_NAME, CONTACT_PERSON, ADDRESS, STATE, ZIPCODE, EMAIL, WEBSITE, PHONE, FAX, MON_TIME_FROM, MON_TIME_TO, 
	TUE_TIME_FROM, TUE_TIME_TO, WED_TIME_FROM, WED_TIME_TO, THU_TIME_FROM, THU_TIME_TO, FRI_TIME_FROM, FRI_TIME_TO, SAT_TIME_FROM, 
	SAT_TIME_TO, SUN_TIME_FROM, SUN_TIME_TO, CARWASH_TYPE,GAS_STATION,GAS_STATION_OTHER, ISnull(Cast(CARWASH_AGE_YR as nvarchar),'0') + ' Year(s) ' +  Isnull(Cast(CARWASH_AGE_MN as nvarchar),'0') + ' Month(s)',
	MAX_VOL_PER_DAY, CONTACT_WEEK, CONTACT_TIME, QUESTIONS FROM tbl_CAR_WASH_OP ORDER BY ID

	
	SET @CNT = (Select Isnull(Count(*),0) FROM #tmpWashOp);
	SET @INCR = 1;
	While(@INCR <= @CNT)
	BEGIN
		SET @CAR_WASH_OP_ID = (Select [Reg No] FROM #tmpWashOp WHERE ID=@INCR)

		Create Table #tmppkg (ID INT IDENTITY(1,1), [NAME] nvarchar(100) null, [PRICE] numeric(18,2) null);

		INSERT INTO #tmppkg ([NAME],[PRICE]) SELECT [NAME],[PRICE] FROM tbl_CAR_WASH_OP_PACKAGE WHERE CAR_WASH_OP_ID=@CAR_WASH_OP_ID ORDER BY ID;

		UPDATE #tmpWashOp SET [Pkg Name1]=isnull([NAME],''), [Price1]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=1 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name2]=isnull([NAME],''), [Price2]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=2 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name3]=isnull([NAME],''), [Price3]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=3 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name4]=isnull([NAME],''), [Price4]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=4 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name5]=isnull([NAME],''), [Price5]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=5 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name6]=isnull([NAME],''), [Price6]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=6 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name7]=isnull([NAME],''), [Price7]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=7 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name8]=isnull([NAME],''), [Price8]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=8 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name9]=isnull([NAME],''), [Price9]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=9 WHERE #tmpWashOp.ID=@INCR

		UPDATE #tmpWashOp SET [Pkg Name10]=isnull([NAME],''), [Price10]=isnull([Price],0) FROM #tmppkg INNER JOIN #tmpWashOp
		ON #tmppkg.ID=10 WHERE #tmpWashOp.ID=@INCR
		
		SET @INCR=@INCR+1;
		DROP TABLE #tmppkg;
	END

	SELECT [Reg No],[Company],[Contact Person],[Address],[State],[ZipCode],[Email],[Website],[Phone],[Fax],
	[Mon From],[Mon To],[Tue From],[Tue To],[Wed From],[Wed To],[Thu From],[Thu To],[Fri From],[Fri To],[Sat From],[Sat To],
	[Sun From],[Sun To],[Carwash Type],[Gas Station],[Gas Station Other],[Car Wash Equipment],[Max Volume Per Day],
	[Contact Weekday],[Contact Time],[Question], [Pkg Name1], [Price1], [Pkg Name2], [Price2], [Pkg Name3], [Price3],
	[Pkg Name4], [Price4], [Pkg Name5], [Price5], [Pkg Name6], [Price6], [Pkg Name7], [Price7], [Pkg Name8], [Price8],
	[Pkg Name9], [Price9], [Pkg Name10], [Price10] FROM #tmpWashOp ORDER BY [Reg No]

	DROP TABLE #tmpWashOp;
end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarWaskOperatorsByID]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarWaskOperatorsByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetCarWaskOperatorsByID] AS' 
END
GO

ALTER procedure [dbo].[USP_GetCarWaskOperatorsByID]  
(
	@ID bigint
)
as  
begin  
	SELECT ID, CONTACT_PERSON, FIRM_NAME, ADDRESS, STATE, ZIPCODE, EMAIL, WEBSITE, PHONE, FAX, MON_TIME_FROM, MON_TIME_TO, TUE_TIME_FROM, TUE_TIME_TO, WED_TIME_FROM, WED_TIME_TO, THU_TIME_FROM, THU_TIME_TO, FRI_TIME_FROM, FRI_TIME_TO, SAT_TIME_FROM, SAT_TIME_TO, SUN_TIME_FROM, SUN_TIME_TO, CARWASH_TYPE, GAS_STATION, GAS_STATION_OTHER, CARWASH_AGE_YR, CARWASH_AGE_MN, MAX_VOL_PER_DAY, CONTACT_WEEK, CONTACT_TIME, QUESTIONS FROM tbl_CAR_WASH_OP where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetCarWaskOpPackageByID]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetCarWaskOpPackageByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetCarWaskOpPackageByID] AS' 
END
GO

ALTER procedure [dbo].[USP_GetCarWaskOpPackageByID]  
(
	@ID bigint
)
as  
begin  
	SELECT ID, CAR_WASH_OP_ID, NAME, PRICE FROM tbl_CAR_WASH_OP_PACKAGE where CAR_WASH_OP_ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetEmailAddress]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetEmailAddress]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetEmailAddress] AS' 
END
GO

ALTER procedure [dbo].[USP_GetEmailAddress]  
as
begin  
	SELECT EMAIL from tbl_EMAIL_ADDRESS
end
GO
/****** Object:  StoredProcedure [dbo].[USP_GetEmailServerDetails]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GetEmailServerDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_GetEmailServerDetails] AS' 
END
GO
ALTER procedure [dbo].[USP_GetEmailServerDetails]  
as  
begin  
	SELECT Host,Port,UserName,UserPassword,EnableSsl from tbl_MST_EMAILSERVER
end

GO
/****** Object:  StoredProcedure [dbo].[USP_InsertCarDealers]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_InsertCarDealers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_InsertCarDealers] AS' 
END
GO

ALTER procedure [dbo].[USP_InsertCarDealers]  
(
	@FIRST_NAME nvarchar(100),
	@LAST_NAME nvarchar(100),  
	@FIRM_NAME nvarchar(200), 
	@ADDRESS nvarchar(200), 
	@STATE nvarchar(100), 
	@ZIPCODE nvarchar(50), 
	@EMAIL nvarchar(100), 
	@WEBSITE nvarchar(200), 
	@PHONE nvarchar(50), 
	@FAX nvarchar(50), 
	@MON_TIME_FROM nvarchar(50), 
	@MON_TIME_TO nvarchar(50), 
	@TUE_TIME_FROM nvarchar(50), 
	@TUE_TIME_TO nvarchar(50), 
	@WED_TIME_FROM nvarchar(50), 
	@WED_TIME_TO nvarchar(50), 
	@THU_TIME_FROM nvarchar(50), 
	@THU_TIME_TO nvarchar(50), 
	@FRI_TIME_FROM nvarchar(50), 
	@FRI_TIME_TO nvarchar(50), 
	@SAT_TIME_FROM nvarchar(50),  
	@SAT_TIME_TO nvarchar(50), 
	@SUN_TIME_FROM nvarchar(50), 
	@SUN_TIME_TO nvarchar(50), 
	@NEWCARSSOLD2018 bigint,
	@USEDCARSSOLD2018 bigint,
	@HAS_CAR_WASH bit,
	@CONTACT_WEEK nvarchar(50),
	@CONTACT_TIME nvarchar(50),
	@QUESTIONS nvarchar(max),
	@RESULT int OUT,
	@CNT int OUT,
	@MSG NVARCHAR(500) OUT  
)
as  
begin  
	BEGIN TRY
		SET @RESULT = 0;
		SET @CNT =0;
		
		SET @FIRST_NAME = LTRIM(RTRIM(@FIRST_NAME));
		SET @LAST_NAME = LTRIM(RTRIM(@LAST_NAME));
		SET @FIRM_NAME = LTRIM(RTRIM(@FIRM_NAME));
		SET @ADDRESS = LTRIM(RTRIM(@ADDRESS));
		SET @STATE = LTRIM(RTRIM(@STATE));
		SET @ZIPCODE = LTRIM(RTRIM(@ZIPCODE));
		SET @EMAIL = LTRIM(RTRIM(@EMAIL));
		SET @WEBSITE = LTRIM(RTRIM(@WEBSITE));
		SET @PHONE = LTRIM(RTRIM(@PHONE));
		SET @FAX = LTRIM(RTRIM(@FAX));		
		SET @QUESTIONS = LTRIM(RTRIM(@QUESTIONS));	

		SET @MON_TIME_FROM = LTRIM(RTRIM(@MON_TIME_FROM));	
		SET @MON_TIME_TO = LTRIM(RTRIM(@MON_TIME_TO));	
		SET @TUE_TIME_FROM= LTRIM(RTRIM(@TUE_TIME_FROM));	
		SET @TUE_TIME_TO = LTRIM(RTRIM(@TUE_TIME_TO));	
		SET @WED_TIME_FROM = LTRIM(RTRIM(@WED_TIME_FROM));	
		SET @WED_TIME_TO = LTRIM(RTRIM(@WED_TIME_TO));	
		SET @THU_TIME_FROM = LTRIM(RTRIM(@THU_TIME_FROM));	
		SET @THU_TIME_TO = LTRIM(RTRIM(@THU_TIME_TO));	
		SET @FRI_TIME_FROM = LTRIM(RTRIM(@FRI_TIME_FROM));	
		SET @FRI_TIME_TO = LTRIM(RTRIM(@FRI_TIME_TO));	
		SET @SAT_TIME_FROM = LTRIM(RTRIM(@SAT_TIME_FROM));	
		SET @SAT_TIME_TO = LTRIM(RTRIM(@SAT_TIME_TO));	
		SET @SUN_TIME_FROM = LTRIM(RTRIM(@SUN_TIME_FROM));	
		SET @SUN_TIME_TO = LTRIM(RTRIM(@SUN_TIME_TO));		
		SET @CONTACT_WEEK = LTRIM(RTRIM(@CONTACT_WEEK));
		SET @CONTACT_TIME = LTRIM(RTRIM(@CONTACT_TIME));
	

		INSERT INTO tbl_CAR_DEALERS (FIRST_NAME, LAST_NAME, FIRM_NAME, ADDRESS, STATE, ZIPCODE, EMAIL, WEBSITE, PHONE, FAX, MON_TIME_FROM, MON_TIME_TO, TUE_TIME_FROM, TUE_TIME_TO, WED_TIME_FROM, WED_TIME_TO, THU_TIME_FROM, THU_TIME_TO, FRI_TIME_FROM, FRI_TIME_TO, SAT_TIME_FROM, SAT_TIME_TO, SUN_TIME_FROM, SUN_TIME_TO, NEWCARSSOLD2018, USEDCARSSOLD2018, HAS_CAR_WASH, CONTACT_WEEK, CONTACT_TIME, QUESTIONS)
		SELECT @FIRST_NAME, @LAST_NAME, @FIRM_NAME, @ADDRESS, @STATE, @ZIPCODE, @EMAIL, @WEBSITE, @PHONE, @FAX, @MON_TIME_FROM, @MON_TIME_TO, @TUE_TIME_FROM, @TUE_TIME_TO, @WED_TIME_FROM, @WED_TIME_TO, @THU_TIME_FROM, @THU_TIME_TO, @FRI_TIME_FROM, @FRI_TIME_TO, @SAT_TIME_FROM, @SAT_TIME_TO, @SUN_TIME_FROM, @SUN_TIME_TO, @NEWCARSSOLD2018, @USEDCARSSOLD2018, @HAS_CAR_WASH, @CONTACT_WEEK, @CONTACT_TIME, @QUESTIONS
		
		SET @CNT = SCOPE_IDENTITY();
		SET @RESULT = 1;
		SET @MSG = 'Thank you for registering with us, We will get back to you shortly.';
		
	END TRY
	BEGIN CATCH		
		SET @MSG = ERROR_MESSAGE();
		SET @RESULT = 0;
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertCarWashOperators]    Script Date: 28/09/2019 21:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_InsertCarWashOperators]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[USP_InsertCarWashOperators] AS' 
END
GO

ALTER procedure [dbo].[USP_InsertCarWashOperators]  
(
	@CONTACT_PERSON nvarchar(100), 
	@FIRM_NAME nvarchar(200), 
	@ADDRESS nvarchar(200), 
	@STATE nvarchar(100), 
	@ZIPCODE nvarchar(50), 
	@EMAIL nvarchar(100), 
	@WEBSITE nvarchar(200), 
	@PHONE nvarchar(50), 
	@FAX nvarchar(50), 
	@MON_TIME_FROM nvarchar(50), 
	@MON_TIME_TO nvarchar(50), 
	@TUE_TIME_FROM nvarchar(50), 
	@TUE_TIME_TO nvarchar(50), 
	@WED_TIME_FROM nvarchar(50), 
	@WED_TIME_TO nvarchar(50), 
	@THU_TIME_FROM nvarchar(50), 
	@THU_TIME_TO nvarchar(50), 
	@FRI_TIME_FROM nvarchar(50), 
	@FRI_TIME_TO nvarchar(50), 
	@SAT_TIME_FROM nvarchar(50),  
	@SAT_TIME_TO nvarchar(50), 
	@SUN_TIME_FROM nvarchar(50), 
	@SUN_TIME_TO nvarchar(50), 
	@CARWASH_TYPE nvarchar(max), 
	@GAS_STATION nvarchar(max), 
	@GAS_STATION_OTHER nvarchar(max), 
	@CARWASH_AGE_YR int,
	@CARWASH_AGE_MN int,
	@MAX_VOL_PER_DAY int,
	@CONTACT_WEEK nvarchar(50),
	@CONTACT_TIME nvarchar(50),
	@QUESTIONS nvarchar(max),
	@PACKAGES CAR_WASH_OP_PACKAGE READONLY,
	@RESULT int OUT,
	@CNT int OUT,
	@MSG NVARCHAR(500) OUT  
)
as  
begin  
	BEGIN TRY
		SET @RESULT = 0;
		SET @CNT =0;
		DECLARE @ID BIGINT;

		SET @CONTACT_PERSON = LTRIM(RTRIM(@CONTACT_PERSON));
		SET @FIRM_NAME = LTRIM(RTRIM(@FIRM_NAME));
		SET @ADDRESS = LTRIM(RTRIM(@ADDRESS));
		SET @STATE = LTRIM(RTRIM(@STATE));
		SET @ZIPCODE = LTRIM(RTRIM(@ZIPCODE));
		SET @EMAIL = LTRIM(RTRIM(@EMAIL));
		SET @WEBSITE = LTRIM(RTRIM(@WEBSITE));
		SET @PHONE = LTRIM(RTRIM(@PHONE));
		SET @FAX = LTRIM(RTRIM(@FAX));
		SET @QUESTIONS = LTRIM(RTRIM(@QUESTIONS));	

		SET @MON_TIME_FROM = LTRIM(RTRIM(@MON_TIME_FROM));	
		SET @MON_TIME_TO = LTRIM(RTRIM(@MON_TIME_TO));	
		SET @TUE_TIME_FROM= LTRIM(RTRIM(@TUE_TIME_FROM));	
		SET @TUE_TIME_TO = LTRIM(RTRIM(@TUE_TIME_TO));	
		SET @WED_TIME_FROM = LTRIM(RTRIM(@WED_TIME_FROM));	
		SET @WED_TIME_TO = LTRIM(RTRIM(@WED_TIME_TO));	
		SET @THU_TIME_FROM = LTRIM(RTRIM(@THU_TIME_FROM));	
		SET @THU_TIME_TO = LTRIM(RTRIM(@THU_TIME_TO));	
		SET @FRI_TIME_FROM = LTRIM(RTRIM(@FRI_TIME_FROM));	
		SET @FRI_TIME_TO = LTRIM(RTRIM(@FRI_TIME_TO));	
		SET @SAT_TIME_FROM = LTRIM(RTRIM(@SAT_TIME_FROM));	
		SET @SAT_TIME_TO = LTRIM(RTRIM(@SAT_TIME_TO));	
		SET @SUN_TIME_FROM = LTRIM(RTRIM(@SUN_TIME_FROM));	
		SET @SUN_TIME_TO = LTRIM(RTRIM(@SUN_TIME_TO));
		SET @CARWASH_TYPE = LTRIM(RTRIM(@CARWASH_TYPE));
		SET @GAS_STATION = LTRIM(RTRIM(@GAS_STATION));
		SET @GAS_STATION_OTHER = LTRIM(RTRIM(@GAS_STATION_OTHER));
		SET @CONTACT_WEEK = LTRIM(RTRIM(@CONTACT_WEEK));
		SET @CONTACT_TIME = LTRIM(RTRIM(@CONTACT_TIME));	

		INSERT INTO tbl_CAR_WASH_OP (CONTACT_PERSON, FIRM_NAME, ADDRESS, STATE, ZIPCODE, EMAIL, WEBSITE, PHONE, FAX, MON_TIME_FROM, MON_TIME_TO, TUE_TIME_FROM, TUE_TIME_TO, WED_TIME_FROM, WED_TIME_TO, THU_TIME_FROM, THU_TIME_TO, FRI_TIME_FROM, FRI_TIME_TO, SAT_TIME_FROM, SAT_TIME_TO, SUN_TIME_FROM, SUN_TIME_TO, CARWASH_TYPE, GAS_STATION, GAS_STATION_OTHER, CARWASH_AGE_YR, CARWASH_AGE_MN, MAX_VOL_PER_DAY, CONTACT_WEEK, CONTACT_TIME, QUESTIONS)
		SELECT @CONTACT_PERSON, @FIRM_NAME, @ADDRESS, @STATE, @ZIPCODE, @EMAIL, @WEBSITE, @PHONE, @FAX, @MON_TIME_FROM, @MON_TIME_TO, @TUE_TIME_FROM, @TUE_TIME_TO, @WED_TIME_FROM, @WED_TIME_TO, @THU_TIME_FROM, @THU_TIME_TO, @FRI_TIME_FROM, @FRI_TIME_TO, @SAT_TIME_FROM, @SAT_TIME_TO, @SUN_TIME_FROM, @SUN_TIME_TO, @CARWASH_TYPE, @GAS_STATION, @GAS_STATION_OTHER, @CARWASH_AGE_YR, @CARWASH_AGE_MN, @MAX_VOL_PER_DAY, @CONTACT_WEEK, @CONTACT_TIME, @QUESTIONS
		SET @ID = SCOPE_IDENTITY();
		SET @CNT = @ID;
		INSERT INTO tbl_CAR_WASH_OP_PACKAGE (CAR_WASH_OP_ID, NAME, PRICE)
		SELECT @ID, NAME, PRICE FROM @PACKAGES;
		
		SET @RESULT = 1;
		SET @MSG = 'Thank you for registering with us, We will get back to you shortly.';
		
	END TRY
	BEGIN CATCH		
		SET @MSG = ERROR_MESSAGE();
		SET @RESULT = 0;
	END CATCH
end
GO
