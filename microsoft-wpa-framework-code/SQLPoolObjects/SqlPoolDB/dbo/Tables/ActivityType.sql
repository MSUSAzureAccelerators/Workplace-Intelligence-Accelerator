CREATE TABLE [dbo].[ActivityType] (
    [ActivityTypeId]          INT            IDENTITY (1, 1) NOT NULL,
    [ActivityTypeDescription] NVARCHAR (512) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

