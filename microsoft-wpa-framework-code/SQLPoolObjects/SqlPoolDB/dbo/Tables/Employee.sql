CREATE TABLE [dbo].[Employee] (
    [EmployeeId]          INT            IDENTITY (1, 1) NOT NULL,
    [WPAEmployeeId]       NVARCHAR (255) NULL,
    [WPAEmployeeName]     NVARCHAR (255) NULL,
    [EmployeeHireDate]    DATETIME       NULL,
    [Organization]        NVARCHAR (255) NULL,
    [LevelDesignation]    NVARCHAR (255) NULL,
    [FunctionType]        NVARCHAR (255) NULL,
    [Region]              NVARCHAR (255) NULL,
    [Layer]               NVARCHAR (255) NULL,
    [IsInternal]          NVARCHAR (255) NULL,
    [SupervisorIndicator] NVARCHAR (255) NULL,
    [Number_of_directs]   NVARCHAR (255) NULL,
    [ADOUserSK]           NVARCHAR (255) NULL,
    [ADOUserId]           NVARCHAR (255) NULL,
    [ADOUserEmail]        NVARCHAR (255) NULL,
    [ADOUserName]         NVARCHAR (255) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

