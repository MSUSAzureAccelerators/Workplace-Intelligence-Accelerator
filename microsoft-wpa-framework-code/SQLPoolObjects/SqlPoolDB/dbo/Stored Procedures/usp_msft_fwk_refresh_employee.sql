CREATE PROC [dbo].[usp_msft_fwk_refresh_employee] AS
BEGIN

	UPDATE  E
	SET     [WPAEmployeeName]       =   WE.[WPAEmployeeName]
			,[EmployeeHireDate]     =   WE.[EmployeeHireDate]
			,[Organization]         =   WE.[Organization]
			,[LevelDesignation]     =   WE.[LevelDesignation]
			,[FunctionType]         =   WE.[FunctionType]
			,[Region]               =   WE.[Region]
			,[Layer]                =   WE.[Layer]
			,[IsInternal]           =   WE.[IsInternal]
			,[SupervisorIndicator]  =   WE.[SupervisorIndicator]
			,[Number_of_directs]    =   WE.[Number_of_directs]
			,[ADOUserSK]            =   WE.[ADO_PersonSK]
		-- ,[ADOUserId]            =   NULL
		-- ,[ADOUserEmail]         =   NULL
		--  ,[ADOUserName]          =   NULL
	FROM    dbo.Employee   E
	INNER
	JOIN    dbo.WPAEmployee WE
			ON WE.WPAEmployeeId = E.WPAEmployeeId

	INSERT INTO [dbo].[Employee]
	(	[WPAEmployeeId] ,
		[WPAEmployeeName] ,
		[EmployeeHireDate] ,
		[Organization] ,
		[LevelDesignation] ,
		[FunctionType] ,
		[Region] ,
		[Layer] ,
		[IsInternal] ,
		[SupervisorIndicator] ,
		[Number_of_directs] ,
		[ADOUserSK] ,
		[ADOUserId] ,
		[ADOUserEmail] ,
		[ADOUserName] 
	)
	SELECT  WE.[WPAEmployeeId] ,
			WE.[WPAEmployeeName],
			WE.[EmployeeHireDate],
			WE.[Organization],
			WE.[LevelDesignation],
			WE.[FunctionType],
			WE.[Region],
			WE.[Layer],
			WE.[IsInternal],
			WE.[SupervisorIndicator],
			WE.[Number_of_directs],
			WE.[ADO_PersonSK],
			NULL,
			NULL,
			NULL
	FROM    dbo.WPAEmployee WE
	WHERE
	NOT EXISTS (SELECT 1 FROM dbo.Employee E  WHERE WE.WPAEmployeeId = E.WPAEmployeeId)

END
GO