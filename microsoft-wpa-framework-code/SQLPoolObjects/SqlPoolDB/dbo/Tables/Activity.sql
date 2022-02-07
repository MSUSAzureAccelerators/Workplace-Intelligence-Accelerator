CREATE TABLE [dbo].[Activity] (
    [ActivityId]          INT            IDENTITY (1, 1) NOT NULL,
    [ActivityName]        NVARCHAR (128) NULL,
    [ActivityDescription] NVARCHAR (512) NULL,
    [ActivityTypeId]      INT            NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

