/*********************************************************************************************************************
	File: 	ActivityType.sql

	Desc: 	Data hydration script.			
**********************************************************************************************************************/


TRUNCATE TABLE dbo.ActivityType;

SET IDENTITY_INSERT dbo.ActivityType ON;

INSERT INTO [dbo].[ActivityType] (ActivityTypeId, ActivityTypeDescription)
    SELECT 1,'email'
    UNION
    SELECT 2,'meeting'
    UNION
    SELECT 3,'call'
    UNION
    SELECT 4,'work'
    UNION
    SELECT 5,'im'
	UNION
    SELECT 6,'Git'
	UNION
    SELECT 7,'Backlog'

SET IDENTITY_INSERT dbo.ActivityType OFF;