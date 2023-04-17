USE [Zoo]
GO
/****** Object:  User [Lagerist1]    Script Date: 17.04.2023 10:48:03 ******/
CREATE USER [Lagerist1] FOR LOGIN [Lagerist1] WITH DEFAULT_SCHEMA=[Lageristen]
GO
/****** Object:  User [Mitarbeiter1]    Script Date: 17.04.2023 10:48:03 ******/
CREATE USER [Mitarbeiter1] FOR LOGIN [Mitarbeiter1] WITH DEFAULT_SCHEMA=[Mitarbeiter]
GO
/****** Object:  User [Mitarbeiter2]    Script Date: 17.04.2023 10:48:03 ******/
CREATE USER [Mitarbeiter2] FOR LOGIN [Mitarbeiter2] WITH DEFAULT_SCHEMA=[Mitarbeiter]
GO
/****** Object:  User [Verwaltung1]    Script Date: 17.04.2023 10:48:03 ******/
CREATE USER [Verwaltung1] FOR LOGIN [Verwaltung1] WITH DEFAULT_SCHEMA=[Verwaltung]
GO
/****** Object:  DatabaseRole [Lageristen]    Script Date: 17.04.2023 10:48:03 ******/
CREATE ROLE [Lageristen]
GO
/****** Object:  DatabaseRole [Mitarbeiter]    Script Date: 17.04.2023 10:48:03 ******/
CREATE ROLE [Mitarbeiter]
GO
/****** Object:  DatabaseRole [Verwaltung]    Script Date: 17.04.2023 10:48:03 ******/
CREATE ROLE [Verwaltung]
GO
ALTER ROLE [Lageristen] ADD MEMBER [Lagerist1]
GO
ALTER ROLE [Mitarbeiter] ADD MEMBER [Mitarbeiter1]
GO
ALTER ROLE [Mitarbeiter] ADD MEMBER [Mitarbeiter2]
GO
ALTER ROLE [Verwaltung] ADD MEMBER [Verwaltung1]
GO
/****** Object:  Schema [Lageristen]    Script Date: 17.04.2023 10:48:04 ******/
CREATE SCHEMA [Lageristen]
GO
/****** Object:  Schema [Mitarbeiter]    Script Date: 17.04.2023 10:48:04 ******/
CREATE SCHEMA [Mitarbeiter]
GO
/****** Object:  Schema [Verwaltung]    Script Date: 17.04.2023 10:48:04 ******/
CREATE SCHEMA [Verwaltung]
GO
