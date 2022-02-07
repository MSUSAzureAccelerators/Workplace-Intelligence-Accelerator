CREATE TABLE [dbo].[EmployeeActivity] (
    [EmployeeId]    INT        NOT NULL,
    [ActivityId]    INT        NOT NULL,
    [Date]          DATE       NOT NULL,
    [DateKey]       INT        NOT NULL,
    [ActivityValue] FLOAT (53) NOT NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

