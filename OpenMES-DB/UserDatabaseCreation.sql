USE [Master]
GO

/* USER DATABASE SET UP */

--create user database
CREATE DATABASE [OpenMES] COLLATE SQL_Latin1_General_CP1_CI_AS
GO

--alter database file characteristics
ALTER DATABASE [OpenMES] MODIFY FILE
( NAME = N'OpenMES' , SIZE = 2048MB , MAXSIZE = UNLIMITED, FILEGROWTH = 2048KB 
)

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



