CREATE EXTERNAL DATA SOURCE [wpa_csv]
    WITH (
    TYPE = HADOOP,
    LOCATION = N'abfss://<SyanpseDefaultADLSFileSystemName_Param>@<SyanpseDefaultADLSName_Param>.blob.core.windows.net',
    CREDENTIAL = WorkspaceIdentity
    );

