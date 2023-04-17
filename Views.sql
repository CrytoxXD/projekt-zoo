/****** View Gehegebetreuung ******/
CREATE VIEW Gehegebetreuung_View
AS
SELECT Mitarbeiter.Name AS Name, Mitarbeiter.Vorname AS Vorname, Gehege.Bezeichnung AS Gehege FROM Gehegebetreuung
JOIN Mitarbeiter ON Gehegebetreuung.Pfleger_Nr = Mitarbeiter.MitArb_ID 
JOIN Gehege ON Gehegebetreuung.Gehege_Nr = Gehege.Gehege_ID
GO
/****** View Tiere ******/
CREATE VIEW Tiere_View
AS
SELECT Tiere.Name, Tiere.Bezeichnung, Art, Anzahl, Gehege_Nr AS Gehege FROM Tiere
JOIN Gehege ON Tiere.Gehege_NR = Gehege.Gehege_ID
GO
/****** View Personal_Fuetterung ******/
CREATE VIEW VerantwortlicherFuetterung
AS
SELECT FuetterungNr AS Futterration , Mitarbeiter.Name AS Name, Mitarbeiter.Vorname AS Vorname, Fuetterungstermin FROM Personal_Fuetterung
JOIN Futterration ON FuetterungNr = Futterration.Rations_ID
JOIN Mitarbeiter ON PersonalNr = Mitarbeiter.MitArb_ID
GO
/****** View Personal_Behandlung ******/
CREATE VIEW VerantwortlicherBehandlung
AS
SELECT BehandlungNr AS Behandlung, Mitarbeiter.Name AS Nachname, Mitarbeiter.Vorname AS Vorname, Behandlungstermin FROM Personal_Behandlung
JOIN Behandlung ON BehandlungNr = Behandlung.Behandlung_ID
JOIN Mitarbeiter ON PersonalNr = Mitarbeiter.MitArb_ID
GO
/****** View Behandlung ******/
CREATE VIEW Behandlung_View
AS
SELECT Behandlung_ID, Diagnose, Tier FROM Behandlung
JOIN Behandlung_Diagnose ON Behandlung_ID = Behandlung_Diagnose.BehandlungNr
JOIN Diagnose ON Behandlung_Diagnose.DiagnoseNr = Diagnose.Diagnose_ID
GO
/****** View Mitarbeiter ******/
CREATE VIEW Mitarbeiter_View
AS
SELECT Name, Vorname, Arbeitsgruppe.Bezeichnung AS Taetigkeit FROM Mitarbeiter
JOIN Arbeitsgruppe ON Mitarbeiter.TaetigkeitNr = Arbeitsgruppe.Taetigkeit_ID
GO
/****** View Lagerposition ******/
CREATE VIEW LagerungFutter
AS
SELECT Lager_Nr AS PositionLager, Futter_Name AS Futter, Lagermenge FROM Lagerposition
JOIN Lager ON Lager_Nr = Lager.Lager_ID
JOIN Futter ON Futter_Nr = Futter.Futter_ID
GO
/****** View Mitarbeiter_Taetigkeit ******/
CREATE VIEW Mitarbeiter_Taetigkeit_Tierpfleger
AS
SELECT Name, Vorname FROM Mitarbeiter
JOIN Arbeitsgruppe ON TaetigkeitNr = Arbeitsgruppe.Taetigkeit_ID WHERE Arbeitsgruppe.Bezeichnung = 'Tierpfleger'
GO
/****** View Diagnose ******/
CREATE VIEW Anzahl_Diagnosen
AS 
SELECT COUNT(*) AS AnzahlDiagnosen FROM Diagnose
GO
/****** View Behandlung ******/
CREATE VIEW Anzahl_Behandlungen
AS
SELECT COUNT(*) AS AnzahlBehandlungen FROM Behandlung
GO
/****** View Futter ******/
CREATE VIEW Anzahl_Futter
AS
SELECT COUNT(*) AS AnzahlFutter FROM Futter
GO
/****** View Tier_Gehege_Objekt ******/
CREATE VIEW Tier_Gehege_Objekt
AS
SELECT Name, Tiere.Bezeichnung, Art AS Tierart, Gehege.Bezeichnung AS Gehege, Objekte.Bezeichnung AS Objekt, ObjektArt.Bezeichnung AS ObjektArt FROM Tiere
JOIN Gehege ON Tiere.Gehege_Nr = Gehege.Gehege_ID
JOIN Objekte ON Gehege.Objekt_Nr = Objekte.Objekt_ID
JOIN ObjektArt ON Objekte.ArtNr = ObjektArt.Art_ID
GO
/****** View Futter ******/
CREATE VIEW Futter_View
AS
SELECT Futterkategorie.Name AS Kategorie, Futter_Name FROM Futter
JOIN Futterkategorie ON Futter.KategorieNr = Futterkategorie.Kategorie_ID
GO
/****** View Mitarbeiter_Anzahl_pro_Arbeitsgruppe ******/
CREATE VIEW Anzahl_Mitarbeiter_pro_Arbeitsgruppe
AS
SELECT Arbeitsgruppe.Bezeichnung AS Arbeitsgruppe ,COUNT(*) AS AnzahlMitarbeiter FROM Mitarbeiter
JOIN Arbeitsgruppe ON Mitarbeiter.TaetigkeitNr = Arbeitsgruppe.Taetigkeit_ID GROUP BY Arbeitsgruppe.Bezeichnung
GO
/****** View Lagerposition_Anzahl ******/
CREATE VIEW Anzahl_Lagerposition
AS
SELECT Lager.Name, Lager.Standort, COUNT(*) AS Anzahl_Lagerpositionen FROM Lagerposition
JOIN Lager ON Lager_Nr = Lager.Lager_ID GROUP BY Lager.Name, Lager.Standort
GO
/****** View Objekte ******/
CREATE VIEW Objekte_View
AS 
SELECT Objekte.Bezeichnung AS Objekt, ObjektArt.Bezeichnung AS Art FROM Objekte
JOIN ObjektArt ON Objekte.ArtNr = ObjektArt.Art_ID
GO
/****** View Arbeitsgruppe ******/
CREATE VIEW Arbeitsgruppe_View
AS
SELECT Arbeitsgruppe.Bezeichnung AS Arbeitsgruppe, Abteilung.Bezeichnung AS Abteilung FROM Arbeitsgruppe
JOIN Abteilung ON AbtNR = Abt_ID
GO
/****** View Art ******/
CREATE VIEW Art_View
AS
SELECT Tierart, Klassenname FROM Art
JOIN Klasse ON Art.Klasse = Klasse.Klasse_ID
GO
/****** View Diagnose ******/
CREATE VIEW Diagnose_View
AS
SELECT Beschreibung FROM Diagnose 
GO
/****** View Lager ******/
CREATE VIEW Lager_View
AS
SELECT Name, Standort FROM Lager
GO
/****** View Abteilung ******/
CREATE VIEW Abteilung_View
AS
SELECT Bezeichnung FROM Abteilung
GO
/****** View Gehege ******/
CREATE VIEW Gehege_View
AS
SELECT Bezeichnung FROM Gehege 
GO
/****** View Futterkategorie ******/
CREATE VIEW Futterkategorie_View
AS
SELECT Name FROM Futterkategorie
GO
/****** View Futtermenge ******/
CREATE VIEW Futtermenge_View
AS
SELECT Futter_Name, COUNT (Häufigkeit) AS Haeufigkeit FROM Futtermenge
JOIN Futter ON Futter_NR = Futter_ID
JOIN Futterration ON Rations_Nr = Rations_ID GROUP BY Futter_Name
GO
/****** View Futterration ******/
CREATE VIEW Futterration_View
AS
SELECT Bezeichnung, COUNT (Häufigkeit) AS Haeufigkeit FROM Futterration
JOIN Tiere ON Tiernummer = TierNr GROUP BY Bezeichnung