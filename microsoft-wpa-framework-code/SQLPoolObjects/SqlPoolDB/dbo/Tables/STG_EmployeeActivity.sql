CREATE TABLE [dbo].[STG_EmployeeActivity] (
    [EmployeeId]    NVARCHAR (255) NULL,
    [ActivityId]    INT            NULL,
    [Date]          DATE           NULL,
    [DateKey]       INT            NULL,
    [ActivityDesc]  NVARCHAR (255) NULL,
    [ActivityValue] FLOAT (53)     NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

