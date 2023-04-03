/****** View Gehegebetreuung ******/
--CREATE VIEW Gehegebetreuung_View
--AS
--SELECT Mitarbeiter.Name AS Name, Mitarbeiter.Vorname AS Vorname, Gehege.Bezeichnung AS Gehege FROM Gehegebetreuung, Gehege, Mitarbeiter WHERE Pfleger_Nr = Mitarbeiter.MitArb_ID AND Gehege_Nr = Gehege.Gehege_ID

/****** View Tiere ******/
--CREATE VIEW Tiere_View
--AS
--SELECT Name, Tiere.Bezeichnung, Art, Anzahl, Gehege_Nr AS Gehege FROM Tiere, Gehege, Objekte WHERE Gehege_Nr = Gehege.Gehege_ID

/****** View Personal_Fuetterung ******/
--CREATE VIEW VerantwortlicherFuetterung
--AS
--SELECT FuetterungNr AS Futterration , Mitarbeiter.Name AS Name, Mitarbeiter.Vorname AS Vorname, Fuetterungstermin FROM Personal_Fuetterung, Mitarbeiter, Futterration WHERE FuetterungNr = Futterration.Rations_ID AND PersonalNr = Mitarbeiter.MitArb_ID

/****** View Personal_Behandlung ******/
--CREATE VIEW VerantwortlicherBehandlung
--AS
--SELECT BehandlungNr AS Behandlung, Mitarbeiter.Name AS Nachname, Mitarbeiter.Vorname AS Vorname, Behandlungstermin FROM Personal_Behandlung, Mitarbeiter, Behandlung WHERE BehandlungNr = Behandlung.Behandlung_ID AND PersonalNr = Mitarbeiter.MitArb_ID

/****** View Behandlung ******/
--CREATE VIEW Behandlung_View
--AS
--SELECT Behandlung_ID, Diagnose, Tier FROM Behandlung, Behandlung_Diagnose, Diagnose WHERE Behandlung_ID = Behandlung_Diagnose.BehandlungNr AND Behandlung_Diagnose.DiagnoseNr = Diagnose.Diagnose_ID

/****** View Mitarbeiter ******/
--CREATE VIEW Mitarbeiter_View
--AS
--SELECT Name, Vorname, Taetigkeit FROM Mitarbeiter

/****** View Lagerposition ******/
--CREATE VIEW LagerungFutter
--AS
--SELECT Lager_Nr AS PositionLager, Futter_Name AS Futter, Lagermenge FROM Lagerposition, Futter, Lager WHERE Lager_Nr = Lager.Lager_ID AND Futter_Nr = Futter.Futter_ID

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 

/****** View  ******/
--CREATE VIEW 
--AS
--SELECT * FROM 
