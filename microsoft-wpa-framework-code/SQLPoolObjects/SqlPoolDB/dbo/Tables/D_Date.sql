CREATE TABLE [dbo].[D_Date] (
    [DateKey]                 INT          NOT NULL,
    [Date]                    DATE         NOT NULL,
    [Day]                     TINYINT      NOT NULL,
    [DaySuffix]               CHAR (2)     NOT NULL,
    [Weekday]                 TINYINT      NOT NULL,
    [WeekDayName]             VARCHAR (10) NOT NULL,
    [WeekDayName_Short]       CHAR (3)     NOT NULL,
    [WeekDayName_FirstLetter] CHAR (1)     NOT NULL,
    [DOWInMonth]              TINYINT      NOT NULL,
    [DayOfYear]               SMALLINT     NOT NULL,
    [WeekOfMonth]             TINYINT      NOT NULL,
    [WeekOfYear]              TINYINT      NOT NULL,
    [Month]                   TINYINT      NOT NULL,
    [MonthName]               VARCHAR (10) NOT NULL,
    [MonthName_Short]         CHAR (3)     NOT NULL,
    [MonthName_FirstLetter]   CHAR (1)     NOT NULL,
    [Quarter]                 TINYINT      NOT NULL,
    [QuarterName]             VARCHAR (6)  NOT NULL,
    [Year]                    INT          NOT NULL,
    [MMYYYY]                  CHAR (6)     NOT NULL,
    [MonthYear]               CHAR (7)     NOT NULL,
    [IsWeekend]               BIT          NOT NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

