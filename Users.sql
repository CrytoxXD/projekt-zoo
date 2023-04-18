USE [master]
GO
CREATE LOGIN [Lagerist1] WITH PASSWORD=N'UUU123', DEFAULT_DATABASE=[Zoo], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
CREATE LOGIN [Mitarbeiter1] WITH PASSWORD=N'UUU123', DEFAULT_DATABASE=[Zoo], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
CREATE LOGIN [Mitarbeiter2] WITH PASSWORD=N'UUU123', DEFAULT_DATABASE=[Zoo], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
CREATE LOGIN [Verwaltung1] WITH PASSWORD=N'UUU123', DEFAULT_DATABASE=[Zoo], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [Zoo]
GO
/****** Object:  User [Lagerist1]    Script Date: 18.04.2023 08:14:45 ******/
CREATE USER [Lagerist1] FOR LOGIN [Lagerist1] WITH DEFAULT_SCHEMA=[Lageristen]
GO
/****** Object:  User [Mitarbeiter1]    Script Date: 18.04.2023 08:14:45 ******/
CREATE USER [Mitarbeiter1] FOR LOGIN [Mitarbeiter1] WITH DEFAULT_SCHEMA=[Mitarbeiter]
GO
/****** Object:  User [Mitarbeiter2]    Script Date: 18.04.2023 08:14:45 ******/
CREATE USER [Mitarbeiter2] FOR LOGIN [Mitarbeiter2] WITH DEFAULT_SCHEMA=[Mitarbeiter]
GO
/****** Object:  User [Verwaltung1]    Script Date: 18.04.2023 08:14:45 ******/
CREATE USER [Verwaltung1] FOR LOGIN [Verwaltung1] WITH DEFAULT_SCHEMA=[Verwaltung]
GO
/****** Object:  DatabaseRole [Lageristen]    Script Date: 18.04.2023 08:14:45 ******/
CREATE ROLE [Lageristen]
GO
/****** Object:  DatabaseRole [Mitarbeiter]    Script Date: 18.04.2023 08:14:45 ******/
CREATE ROLE [Mitarbeiter]
GO
/****** Object:  DatabaseRole [Verwaltung]    Script Date: 18.04.2023 08:14:45 ******/
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
/****** Object:  Schema [Lageristen]    Script Date: 18.04.2023 08:14:45 ******/
CREATE SCHEMA [Lageristen]
GO
/****** Object:  Schema [Mitarbeiter]    Script Date: 18.04.2023 08:14:45 ******/
CREATE SCHEMA [Mitarbeiter]
GO
/****** Object:  Schema [Verwaltung]    Script Date: 18.04.2023 08:14:45 ******/
CREATE SCHEMA [Verwaltung]
GO
GRANT CONNECT TO [dbo]
GRANT CONNECT TO [Lagerist1]
DENY ALTER ON [dbo].[Futtermenge_View] TO [Lageristen] 
DENY ALTER ON [dbo].[Futterration_View] TO [Lageristen] 
DENY ALTER ON [dbo].[Futterkategorie_View] TO [Lageristen] 
DENY ALTER ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
DENY ALTER ON [dbo].[Lager_View] TO [Lageristen] 
DENY ALTER ON [dbo].[Tiere_View] TO [Lageristen] 
DENY ALTER ON [dbo].[LagerungFutter] TO [Lageristen] 
DENY ALTER ON [dbo].[Anzahl_Futter] TO [Lageristen] 
DENY ALTER ON [dbo].[Futter_View] TO [Lageristen] 
DENY CONTROL ON [dbo].[Futter_View] TO [Lageristen] 
DENY CONTROL ON [dbo].[Anzahl_Futter] TO [Lageristen] 
DENY CONTROL ON [dbo].[LagerungFutter] TO [Lageristen] 
DENY CONTROL ON [dbo].[Tiere_View] TO [Lageristen] 
DENY CONTROL ON [dbo].[Lager_View] TO [Lageristen] 
DENY CONTROL ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
DENY CONTROL ON [dbo].[Futterkategorie_View] TO [Lageristen] 
DENY CONTROL ON [dbo].[Futterration_View] TO [Lageristen] 
DENY CONTROL ON [dbo].[Futtermenge_View] TO [Lageristen] 
DENY DELETE ON [dbo].[Futtermenge_View] TO [Lageristen] 
DENY DELETE ON [dbo].[Futterration_View] TO [Lageristen] 
DENY DELETE ON [dbo].[Futterkategorie_View] TO [Lageristen] 
DENY DELETE ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
DENY DELETE ON [dbo].[Lager_View] TO [Lageristen] 
DENY DELETE ON [dbo].[Tiere_View] TO [Lageristen] 
DENY DELETE ON [dbo].[LagerungFutter] TO [Lageristen] 
DENY DELETE ON [dbo].[Anzahl_Futter] TO [Lageristen] 
DENY DELETE ON [dbo].[Futter_View] TO [Lageristen] 
DENY INSERT ON [dbo].[Futter_View] TO [Lageristen] 
DENY INSERT ON [dbo].[Anzahl_Futter] TO [Lageristen] 
DENY INSERT ON [dbo].[LagerungFutter] TO [Lageristen] 
DENY INSERT ON [dbo].[Tiere_View] TO [Lageristen] 
DENY INSERT ON [dbo].[Lager_View] TO [Lageristen] 
DENY INSERT ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
DENY INSERT ON [dbo].[Futterkategorie_View] TO [Lageristen] 
DENY INSERT ON [dbo].[Futterration_View] TO [Lageristen] 
DENY INSERT ON [dbo].[Futtermenge_View] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Futtermenge_View] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Futterration_View] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Futterkategorie_View] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Lager_View] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Tiere_View] TO [Lageristen] 
DENY REFERENCES ON [dbo].[LagerungFutter] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Anzahl_Futter] TO [Lageristen] 
DENY REFERENCES ON [dbo].[Futter_View] TO [Lageristen] 
GRANT SELECT ON [dbo].[Futter_View] TO [Lageristen] 
GRANT SELECT ON [dbo].[Anzahl_Futter] TO [Lageristen] 
GRANT SELECT ON [dbo].[LagerungFutter] TO [Lageristen] 
GRANT SELECT ON [dbo].[Tiere_View] TO [Lageristen] 
GRANT SELECT ON [dbo].[Lager_View] TO [Lageristen] 
GRANT SELECT ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
GRANT SELECT ON [dbo].[Futterkategorie_View] TO [Lageristen] 
GRANT SELECT ON [dbo].[Futterration_View] TO [Lageristen] 
GRANT SELECT ON [dbo].[Futtermenge_View] TO [Lageristen] 
GRANT TAKE OWNERSHIP ON [dbo].[Futtermenge_View] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Futterration_View] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Futterkategorie_View] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Lager_View] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Tiere_View] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[LagerungFutter] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Futter] TO [Lageristen] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Futter_View] TO [Lageristen] WITH GRANT OPTION 
GRANT UPDATE ON [dbo].[Futter_View] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Anzahl_Futter] TO [Lageristen] 
GRANT UPDATE ON [dbo].[LagerungFutter] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Tiere_View] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Lager_View] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Futterkategorie_View] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Futterration_View] TO [Lageristen] 
GRANT UPDATE ON [dbo].[Futtermenge_View] TO [Lageristen] 
GRANT VIEW DEFINITION ON [dbo].[Futtermenge_View] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Futterration_View] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Futterkategorie_View] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Lagerposition] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Lager_View] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Tiere_View] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[LagerungFutter] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Futter] TO [Lageristen] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Futter_View] TO [Lageristen] WITH GRANT OPTION 
DENY ALTER ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Tiere_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Art_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Gehege_View] TO [Mitarbeiter] 
DENY ALTER ON [dbo].[Futterration_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Futterration_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Gehege_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Art_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Tiere_View] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
DENY CONTROL ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Tiere_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Art_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Gehege_View] TO [Mitarbeiter] 
DENY DELETE ON [dbo].[Futterration_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Futterration_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Gehege_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Art_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Tiere_View] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
DENY INSERT ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Tiere_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Art_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Gehege_View] TO [Mitarbeiter] 
DENY REFERENCES ON [dbo].[Futterration_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Futterration_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Gehege_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Art_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Tiere_View] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
GRANT SELECT ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Tiere_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Behandlung_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Abteilung_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Art_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Diagnose_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Gehege_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Futterration_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT UPDATE ON [dbo].[Futterration_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Gehege_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Diagnose_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Art_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Abteilung_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Behandlung_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Tiere_View] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] 
GRANT UPDATE ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Tier_Gehege_Objekt] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Diagnosen] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Behandlungen] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Tiere_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Gehegebetreuung_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[VerantwortlicherFuetterung] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[VerantwortlicherBehandlung] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Behandlung_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Abteilung_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Art_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Arbeitsgruppe_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Diagnose_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Gehege_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Futterration_View] TO [Mitarbeiter] WITH GRANT OPTION 
GRANT CONNECT TO [Mitarbeiter1] 
GRANT CONNECT TO [Mitarbeiter2] 
DENY ALTER ON [dbo].[Gehege_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
DENY ALTER ON [dbo].[Objekte_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Abteilung_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Tiere_View] TO [Verwaltung] 
DENY ALTER ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
DENY ALTER ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Tiere_View] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Abteilung_View] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Objekte_View] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
DENY CONTROL ON [dbo].[Gehege_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Gehege_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
DENY DELETE ON [dbo].[Objekte_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Abteilung_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Tiere_View] TO [Verwaltung] 
DENY DELETE ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
DENY DELETE ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
DENY INSERT ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
DENY INSERT ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
DENY INSERT ON [dbo].[Tiere_View] TO [Verwaltung] 
DENY INSERT ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
DENY INSERT ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
DENY INSERT ON [dbo].[Abteilung_View] TO [Verwaltung] 
DENY INSERT ON [dbo].[Objekte_View] TO [Verwaltung] 
DENY INSERT ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
DENY INSERT ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
DENY INSERT ON [dbo].[Gehege_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Gehege_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Objekte_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Abteilung_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Tiere_View] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
DENY REFERENCES ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Tiere_View] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Abteilung_View] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Objekte_View] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
GRANT SELECT ON [dbo].[Gehege_View] TO [Verwaltung] 
GRANT TAKE OWNERSHIP ON [dbo].[Gehege_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Objekte_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Abteilung_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Mitarbeiter_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Tiere_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] WITH GRANT OPTION 
GRANT TAKE OWNERSHIP ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] WITH GRANT OPTION 
GRANT UPDATE ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Tiere_View] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Mitarbeiter_View] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Abteilung_View] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Objekte_View] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] 
GRANT UPDATE ON [dbo].[Gehege_View] TO [Verwaltung] 
GRANT VIEW DEFINITION ON [dbo].[Gehege_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Arbeitsgruppe_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Lagerposition] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Objekte_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Abteilung_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Mitarbeiter_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Gehegebetreuung_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Tiere_View] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Mitarbeiter_Taetigkeit_Tierpfleger] TO [Verwaltung] WITH GRANT OPTION 
GRANT VIEW DEFINITION ON [dbo].[Anzahl_Mitarbeiter_pro_Arbeitsgruppe] TO [Verwaltung] WITH GRANT OPTION 
GRANT CONNECT TO [Verwaltung1] 
