CREATE TABLE [dbo].[WPAEmployee] (
    [WPAEmployeeId]       NVARCHAR (255) NULL,
    [WPAEmployeeName]     NVARCHAR (255) NULL,
    [EmployeeHireDate]    DATETIME       NULL,
    [Organization]        NVARCHAR (255) NULL,
    [LevelDesignation]    NVARCHAR (255) NULL,
    [FunctionType]        NVARCHAR (255) NULL,
    [Region]              NVARCHAR (255) NULL,
    [SupervisorIndicator] NVARCHAR (255) NULL,
    [Number_of_directs]   FLOAT (53)     NULL,
    [Layer]               FLOAT (53)     NULL,
    [TimeZone]            NVARCHAR (255) NULL,
    [HourlyRate]          FLOAT (53)     NULL,
    [IsInternal]          BIT            NULL,
    [IsActive]            BIT            NULL,
    [ADO_PersonSK]        NVARCHAR (255) NULL,
    [ADO_PersonIndicator] BIT            NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

