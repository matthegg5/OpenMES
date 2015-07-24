USE [Master]
GO

/* USER DATABASE SET UP */

--create user database (Collation set to SQL_Latin1_General_CP1_CI_AS as is most commonly used for manufacturing systems)
CREATE DATABASE [OpenMES] COLLATE SQL_Latin1_General_CP1_CI_AS
GO

--alter database file characteristics
ALTER DATABASE [OpenMES] MODIFY FILE
( NAME = N'OpenMES' , SIZE = 2048MB , MAXSIZE = UNLIMITED, FILEGROWTH = 20480KB 
)
GO

USE [OpenMES]
GO

--Create security table schema
CREATE SCHEMA [sec] AUTHORIZATION [dbo]
GO
--create MES table schema
CREATE SCHEMA [MES] AUTHORIZATION [dbo]
GO

--create ERP table schema (financials)
CREATE SCHEMA [ERP] AUTHORIZATION [dbo]
GO

--create menu item table (only holds menu items)

CREATE TABLE [sec].[MenuNodes] (
			Company nvarchar(10) NOT NULL,
			MenuNodeID UNIQUEIDENTIFIER NOT NULL,
			MenuTypeID nvarchar(10) NOT NULL,
			MenuNodeDesc nvarchar(100),
			Inactive BIT,
			PRIMARY KEY (MenuNodeID)
)
GO

CREATE TABLE [sec].[MenuType] (
			MenuTypeID UNIQUEIDENTIFIER NOT NULL,
			TypeDescription nvarchar(50) NOT NULL,
			Icon VARBINARY(MAX),
			PRIMARY KEY (MenuTypeID)
)
GO

-- create User Account settings table and insert OpenMES user

CREATE TABLE [sec].[UserAccounts] (
			UserAccountID UNIQUEIDENTIFIER NOT NULL,
			FriendlyID nvarchar(50) NOT NULL,
			AuthKey nvarchar(300),
			IsEncrypted BIT,
			Name nvarchar(100),
			UserDisabled BIT,
			IsAdministrator BIT,
			SiteID UNIQUEIDENTIFIER,
			PRIMARY KEY (UserAccountID)

)

GO

--creation of menu mapping table - implementation of many-to-many logical join between user and menu node table

CREATE TABLE [sec].[MenuMapping] (
			MenuNodeID UNIQUEIDENTIFIER NOT NULL,
			UserAccountID UNIQUEIDENTIFIER NOT NULL
)
GO