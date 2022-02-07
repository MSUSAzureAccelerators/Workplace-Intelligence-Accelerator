CREATE TABLE [dbo].[STG_Pivot_Person_Activity] (
    [PersonId]      NVARCHAR (255) NULL,
    [Date]          VARCHAR (10)   NULL,
    [ActivityDesc]  NVARCHAR (128) NULL,
    [ActivityValue] FLOAT (53)     NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

