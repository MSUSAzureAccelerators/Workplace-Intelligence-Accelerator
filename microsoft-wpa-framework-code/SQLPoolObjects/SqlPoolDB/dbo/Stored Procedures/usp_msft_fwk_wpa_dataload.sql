CREATE PROC [dbo].[usp_msft_fwk_wpa_dataload] AS
BEGIN

	--Populate External table 
	EXECUTE [dbo].[usp_msft_fwk_wpa_ext_tbl_dataload]
	
	IF OBJECT_ID('dbo.STG_WPA', 'U') IS NULL 
	CREATE TABLE dbo.STG_WPA
	( 
		[PersonId] [nvarchar](255)  NULL,
		[Date] [varchar](10)  NULL,
		[Emails_sent_to_50_or_more_recipients] [float]  NULL,
		[Emails_sent_11_to_50_recipients] [float]  NULL,
		[Emails_sent_6_to_10_recipients] [float]  NULL,
		[Emails_sent_2_to_5_recipients] [float]  NULL,
		[Emails_sent_1_recipient] [float]  NULL,
		[All_hands_recurring_meeting_hours] [float]  NULL,
		[Workshop_recurring_meeting_hours] [float]  NULL,
		[Bloated_recurring_meeting_hours] [float]  NULL,
		[Lengthy_recurring_meeting_hours] [float]  NULL,
		[Status_update_recurring_meeting_hours] [float]  NULL,
		[Decision_making_recurring_meeting_hours] [float]  NULL,
		[One_on_one_recurring_meeting_hours] [float]  NULL,
		[Total_unscheduled_calls] [float]  NULL,
		[Total_scheduled_calls] [float]  NULL,
		[Working_hours_in_unscheduled_calls] [float]  NULL,
		[Working_hours_in_scheduled_calls] [float]  NULL,
		[After_hours_in_unscheduled_calls] [float]  NULL,
		[After_hours_in_scheduled_calls] [float]  NULL,
		[Unscheduled_Call_hours] [float]  NULL,
		[Scheduled_Call_hours] [float]  NULL,
		[Recurring_or_regular_meeting_hours] [float]  NULL,
		[Status_update_review_meeting_hours] [float]  NULL,
		[All_hands_meeting_hours] [float]  NULL,
		[Workshop_meeting_hours] [float]  NULL,
		[Bloated_meeting_hours] [float]  NULL,
		[Lengthy_meeting_hours] [float]  NULL,
		[Status_update_meeting_hours] [float]  NULL,
		[Decision_making_meeting_hours] [float]  NULL,
		[One_on_one_meeting_hours] [float]  NULL,
		[Meeting_hours_more_than_2_hours] [float]  NULL,
		[Meeting_hours_1_to_2_hours] [float]  NULL,
		[Meeting_hours_1_hour] [float]  NULL,
		[Meeting_hours_31_to_59_min] [float]  NULL,
		[Meeting_hours_30_min_or_less] [float]  NULL,
		[Meeting_hours_for_19_or_more_attendees] [float]  NULL,
		[Meeting_hours_for_9_to_18_attendees] [float]  NULL,
		[Meeting_hours_for_3_to_8_attendees] [float]  NULL,
		[Meeting_hours_for_2_attendees] [float]  NULL,
		[Workweek_span] [float]  NULL,
		[Working_hours_instant_messages] [float]  NULL,
		[Working_hours_in_calls] [float]  NULL,
		[Working_hours_email_hours] [float]  NULL,
		[Working_hours_collaboration_hours] [float]  NULL,
		[Total_focus_hours] [float]  NULL,
		[Total_emails_sent_during_meeting] [float]  NULL,
		[Total_calls] [float]  NULL,
		[Time_in_self_organized_meetings] [float]  NULL,
		[Redundant_meeting_hours__organizational_] [float]  NULL,
		[Redundant_meeting_hours__lower_level_] [float]  NULL,
		[Open_2_hour_blocks] [float]  NULL,
		[Open_1_hour_block] [float]  NULL,
		[Networking_outside_organization] [float]  NULL,
		[Networking_outside_company] [float]  NULL,
		[Multitasking_meeting_hours] [float]  NULL,
		[Meetings_with_skip_level] [float]  NULL,
		[Meetings_with_manager_1_on_1] [float]  NULL,
		[Meetings_with_manager] [float]  NULL,
		[Meetings] [float]  NULL,
		[Meeting_hours_with_skip_level] [float]  NULL,
		[Meeting_hours_with_manager_1_on_1] [float]  NULL,
		[Meeting_hours_with_manager] [float]  NULL,
		[Meeting_hours_during_working_hours] [float]  NULL,
		[Meeting_hours] [float]  NULL,
		[Manager_coaching_hours_1_on_1] [float]  NULL,
		[Low_quality_meeting_hours] [float]  NULL,
		[Internal_network_size] [float]  NULL,
		[Instant_messages_sent] [float]  NULL,
		[Instant_message_hours] [float]  NULL,
		[Generated_workload_meetings_organized] [float]  NULL,
		[Generated_workload_meeting_hours] [float]  NULL,
		[Generated_workload_meeting_attendees] [float]  NULL,
		[Generated_workload_instant_messages_recipients] [float]  NULL,
		[Generated_workload_instant_messages_hours] [float]  NULL,
		[Generated_workload_email_recipients] [float]  NULL,
		[Generated_workload_email_hours] [float]  NULL,
		[Generated_workload_calls_organized] [float]  NULL,
		[Generated_workload_call_participants] [float]  NULL,
		[Generated_workload_call_hours] [float]  NULL,
		[External_network_size] [float]  NULL,
		[Emails_sent] [float]  NULL,
		[Email_hours] [float]  NULL,
		[Conflicting_meeting_hours] [float]  NULL,
		[Collaboration_hours_external] [float]  NULL,
		[Collaboration_hrs] [float]  NULL,
		[Call_hours] [float]  NULL,
		[After_hours_meeting_hours] [float]  NULL,
		[After_hours_instant_messages] [float]  NULL,
		[After_hours_in_calls] [float]  NULL,
		[After_hours_email_hours] [float]  NULL,
		[After_hours_collaboration_hours] [float]  NULL,
		[Domain] [nvarchar](255)  NULL,
		[FunctionType] [nvarchar](255)  NULL,
		[LevelDesignation] [nvarchar](255)  NULL,
		[Layer] [float]  NULL,
		[Region] [nvarchar](255)  NULL,
		[Organization] [nvarchar](255)  NULL,
		[zId] [nvarchar](255)  NULL,
		[HireDate] [varchar](10)  NULL,
		[attainment] [nvarchar](255)  NULL,
		[SupervisorIndicator] [nvarchar](255)  NULL,
		[Number_of_directs] [float]  NULL,
		[ADO_PersonSK] [nvarchar](255)  NULL,
		[ADO_PersonIndicator] [bit]  NULL,
		[TimeZone] [nvarchar](255)  NULL,
		[HourlyRate] [float]  NULL,
		[IsInternal] [bit]  NULL,
		[IsActive] [bit]  NULL,
		[WorkingStartTimeSetInOutlook] [nvarchar](255)  NULL,
		[WorkingEndTimeSetInOutlook] [nvarchar](255)  NULL,
		[WorkingDaysSetInOutlook] [nvarchar](255)  NULL
	)
	ELSE
		TRUNCATE TABLE dbo.STG_WPA


	INSERT INTO dbo.STG_WPA

	SELECT  [PersonId] ,
			[Date]   ,
			[Emails_sent_to_50_or_more_recipients]   ,
			[Emails_sent_11_to_50_recipients]   ,
			[Emails_sent_6_to_10_recipients]   ,
			[Emails_sent_2_to_5_recipients]   ,
			[Emails_sent_1_recipient]   ,
			[All_hands_recurring_meeting_hours]   ,
			[Workshop_recurring_meeting_hours]   ,
			[Bloated_recurring_meeting_hours]   ,
			[Lengthy_recurring_meeting_hours]   ,
			[Status_update_recurring_meeting_hours]   ,
			[Decision_making_recurring_meeting_hours]   ,
			[One_on_one_recurring_meeting_hours]   ,
			[Total_unscheduled_calls]   ,
			[Total_scheduled_calls]   ,
			[Working_hours_in_unscheduled_calls]   ,
			[Working_hours_in_scheduled_calls]   ,
			[After_hours_in_unscheduled_calls]   ,
			[After_hours_in_scheduled_calls]   ,
			[Unscheduled_Call_hours]   ,
			[Scheduled_Call_hours]   ,
			[Recurring_or_regular_meeting_hours]   ,
			[Status_update_review_meeting_hours]   ,
			[All_hands_meeting_hours]   ,
			[Workshop_meeting_hours]   ,
			[Bloated_meeting_hours]   ,
			[Lengthy_meeting_hours]   ,
			[Status_update_meeting_hours]   ,
			[Decision_making_meeting_hours]   ,
			[One_on_one_meeting_hours]   ,
			[Meeting_hours_more_than_2_hours]   ,
			[Meeting_hours_1_to_2_hours]   ,
			[Meeting_hours_1_hour]   ,
			[Meeting_hours_31_to_59_min]   ,
			[Meeting_hours_30_min_or_less]   ,
			[Meeting_hours_for_19_or_more_attendees]   ,
			[Meeting_hours_for_9_to_18_attendees]   ,
			[Meeting_hours_for_3_to_8_attendees]   ,
			[Meeting_hours_for_2_attendees]   ,
			[Workweek_span]   ,
			[Working_hours_instant_messages]   ,
			[Working_hours_in_calls]   ,
			[Working_hours_email_hours]   ,
			[Working_hours_collaboration_hours]   ,
			[Total_focus_hours]   ,
			[Total_emails_sent_during_meeting]   ,
			[Total_calls]   ,
			[Time_in_self_organized_meetings]   ,
			[Redundant_meeting_hours__organizational_]   ,
			[Redundant_meeting_hours__lower_level_]   ,
			[Open_2_hour_blocks]   ,
			[Open_1_hour_block]   ,
			[Networking_outside_organization]   ,
			[Networking_outside_company]   ,
			[Multitasking_meeting_hours]   ,
			[Meetings_with_skip_level]   ,
			[Meetings_with_manager_1_on_1]   ,
			[Meetings_with_manager]   ,
			[Meetings]   ,
			[Meeting_hours_with_skip_level]   ,
			[Meeting_hours_with_manager_1_on_1]   ,
			[Meeting_hours_with_manager]   ,
			[Meeting_hours_during_working_hours]   ,
			[Meeting_hours]   ,
			[Manager_coaching_hours_1_on_1]   ,
			[Low_quality_meeting_hours]   ,
			[Internal_network_size]   ,
			[Instant_messages_sent]   ,
			[Instant_message_hours]   ,
			[Generated_workload_meetings_organized]   ,
			[Generated_workload_meeting_hours]   ,
			[Generated_workload_meeting_attendees]   ,
			[Generated_workload_instant_messages_recipients]   ,
			[Generated_workload_instant_messages_hours]   ,
			[Generated_workload_email_recipients]   ,
			[Generated_workload_email_hours]   ,
			[Generated_workload_calls_organized]   ,
			[Generated_workload_call_participants]   ,
			[Generated_workload_call_hours]   ,
			[External_network_size]   ,
			[Emails_sent]   ,
			[Email_hours]   ,
			[Conflicting_meeting_hours]   ,
			[Collaboration_hours_external]   ,
			[Collaboration_hrs]   ,
			[Call_hours]   ,
			[After_hours_meeting_hours]   ,
			[After_hours_instant_messages]   ,
			[After_hours_in_calls]   ,
			[After_hours_email_hours]   ,
			[After_hours_collaboration_hours]   ,
			[Domain] ,
			[FunctionType] ,
			[LevelDesignation] ,
			[Layer]   ,
			[Region] ,
			[Organization] ,
			[zId] ,
			[HireDate]   ,
			[attainment] ,
			[SupervisorIndicator] ,
			[Number_of_directs]   ,
			[ADO_PersonSK] ,
			[ADO_PersonIndicator]   ,
			[TimeZone] ,
			[HourlyRate]   ,
			[IsInternal]   ,
			[IsActive]   ,
			[WorkingStartTimeSetInOutlook] ,
			[WorkingEndTimeSetInOutlook] ,
			[WorkingDaysSetInOutlook]
	 FROM 	[csv].[wpa]

	--Select top 10 * from dbo.STG_WPA
	
	IF OBJECT_ID('dbo.WPAEmployee', 'U') IS NULL 
	   CREATE TABLE [dbo].[WPAEmployee](
			[WPAEmployeeId] [nvarchar](255) NULL,
			[WPAEmployeeName] [nvarchar](255) NULL,
			[EmployeeHireDate] [datetime] NULL,
			[Organization] [nvarchar](255) NULL,
			[LevelDesignation] [nvarchar](255) NULL,
			[FunctionType] [nvarchar](255) NULL,
			[Region] [nvarchar](255) NULL,
			[SupervisorIndicator] [nvarchar](255)  NULL,
			[Number_of_directs] [float]  NULL,
			[Layer] [float]  NULL,
			[TimeZone] [nvarchar](255)  NULL,
			[HourlyRate] [float]  NULL,
			[IsInternal] [bit]  NULL,
			[IsActive] [bit]  NULL,
			[ADO_PersonSK] [nvarchar](255)  NULL,
			[ADO_PersonIndicator] [bit]  NULL
        
		) 
	--INSERT only if there are any new employees
	INSERT [dbo].[WPAEmployee]
	SELECT DISTINCT		W.PersonId , NULL , W.HireDate ,W.Organization, W.LevelDesignation,W.FunctionType,W.Region,
						W.SupervisorIndicator,W.Number_of_directs,Layer,TimeZone,HourlyRate,IsInternal,IsActive,
						W.ADO_PersonSK,W.ADO_PersonIndicator
	FROM	dbo.STG_WPA W -- SourceData
	WHERE 
	NOT EXISTS (SELECT 1 FROM [dbo].[WPAEmployee] WE WHERE W.PersonId = WE.WPAEmployeeId)

	IF OBJECT_ID('dbo.STG_Pivot_Person_Activity', 'U') IS NOT NULL 
		DROP TABLE dbo.STG_Pivot_Person_Activity;

	SELECT  PersonId, Date, ActivityDesc, ActivityValue
	INTO    dbo.STG_Pivot_Person_Activity
	FROM  
	(SELECT PersonId, Date, Emails_sent_to_50_or_more_recipients,Emails_sent_11_to_50_recipients,Emails_sent_6_to_10_recipients,Emails_sent_2_to_5_recipients,Emails_sent_1_recipient,All_hands_recurring_meeting_hours,Workshop_recurring_meeting_hours,Bloated_recurring_meeting_hours,Lengthy_recurring_meeting_hours,Status_update_recurring_meeting_hours,Decision_making_recurring_meeting_hours,One_on_one_recurring_meeting_hours,Total_unscheduled_calls,Total_scheduled_calls,Working_hours_in_unscheduled_calls,Working_hours_in_scheduled_calls,After_hours_in_unscheduled_calls,After_hours_in_scheduled_calls,Unscheduled_Call_hours,Scheduled_Call_hours,Recurring_or_regular_meeting_hours,Status_update_review_meeting_hours,All_hands_meeting_hours,Workshop_meeting_hours,Bloated_meeting_hours,Lengthy_meeting_hours,Status_update_meeting_hours,Decision_making_meeting_hours,One_on_one_meeting_hours,Meeting_hours_more_than_2_hours,Meeting_hours_1_to_2_hours,Meeting_hours_1_hour,Meeting_hours_31_to_59_min,Meeting_hours_30_min_or_less,Meeting_hours_for_19_or_more_attendees,Meeting_hours_for_9_to_18_attendees,Meeting_hours_for_3_to_8_attendees,Meeting_hours_for_2_attendees,Workweek_span,Working_hours_instant_messages,Working_hours_in_calls,Working_hours_email_hours,Working_hours_collaboration_hours,Total_focus_hours,Total_emails_sent_during_meeting,Total_calls,Time_in_self_organized_meetings,Redundant_meeting_hours__organizational_,Redundant_meeting_hours__lower_level_,Open_2_hour_blocks,Open_1_hour_block,Networking_outside_organization,Networking_outside_company,Multitasking_meeting_hours,Meetings_with_skip_level,Meetings_with_manager_1_on_1,Meetings_with_manager,Meetings,Meeting_hours_with_skip_level,Meeting_hours_with_manager_1_on_1,Meeting_hours_with_manager,Meeting_hours_during_working_hours,Meeting_hours,Manager_coaching_hours_1_on_1,Low_quality_meeting_hours,Internal_network_size,Instant_messages_sent,Instant_message_hours,Generated_workload_meetings_organized,Generated_workload_meeting_hours,Generated_workload_meeting_attendees,Generated_workload_instant_messages_recipients,Generated_workload_instant_messages_hours,Generated_workload_email_recipients,Generated_workload_email_hours,Generated_workload_calls_organized,Generated_workload_call_participants,Generated_workload_call_hours,External_network_size,Emails_sent,Email_hours,Conflicting_meeting_hours,Collaboration_hours_external,Collaboration_hrs,Call_hours,After_hours_meeting_hours,After_hours_instant_messages,After_hours_in_calls,After_hours_email_hours,After_hours_collaboration_hours
	FROM dbo.STG_WPA) p
	UNPIVOT
	(ActivityValue FOR ActivityDesc IN  
	(Emails_sent_to_50_or_more_recipients,Emails_sent_11_to_50_recipients,Emails_sent_6_to_10_recipients,Emails_sent_2_to_5_recipients,Emails_sent_1_recipient,All_hands_recurring_meeting_hours,Workshop_recurring_meeting_hours,Bloated_recurring_meeting_hours,Lengthy_recurring_meeting_hours,Status_update_recurring_meeting_hours,Decision_making_recurring_meeting_hours,One_on_one_recurring_meeting_hours,Total_unscheduled_calls,Total_scheduled_calls,Working_hours_in_unscheduled_calls,Working_hours_in_scheduled_calls,After_hours_in_unscheduled_calls,After_hours_in_scheduled_calls,Unscheduled_Call_hours,Scheduled_Call_hours,Recurring_or_regular_meeting_hours,Status_update_review_meeting_hours,All_hands_meeting_hours,Workshop_meeting_hours,Bloated_meeting_hours,Lengthy_meeting_hours,Status_update_meeting_hours,Decision_making_meeting_hours,One_on_one_meeting_hours,Meeting_hours_more_than_2_hours,Meeting_hours_1_to_2_hours,Meeting_hours_1_hour,Meeting_hours_31_to_59_min,Meeting_hours_30_min_or_less,Meeting_hours_for_19_or_more_attendees,Meeting_hours_for_9_to_18_attendees,Meeting_hours_for_3_to_8_attendees,Meeting_hours_for_2_attendees,Workweek_span,Working_hours_instant_messages,Working_hours_in_calls,Working_hours_email_hours,Working_hours_collaboration_hours,Total_focus_hours,Total_emails_sent_during_meeting,Total_calls,Time_in_self_organized_meetings,Redundant_meeting_hours__organizational_,Redundant_meeting_hours__lower_level_,Open_2_hour_blocks,Open_1_hour_block,Networking_outside_organization,Networking_outside_company,Multitasking_meeting_hours,Meetings_with_skip_level,Meetings_with_manager_1_on_1,Meetings_with_manager,Meetings,Meeting_hours_with_skip_level,Meeting_hours_with_manager_1_on_1,Meeting_hours_with_manager,Meeting_hours_during_working_hours,Meeting_hours,Manager_coaching_hours_1_on_1,Low_quality_meeting_hours,Internal_network_size,Instant_messages_sent,Instant_message_hours,Generated_workload_meetings_organized,Generated_workload_meeting_hours,Generated_workload_meeting_attendees,Generated_workload_instant_messages_recipients,Generated_workload_instant_messages_hours,Generated_workload_email_recipients,Generated_workload_email_hours,Generated_workload_calls_organized,Generated_workload_call_participants,Generated_workload_call_hours,External_network_size,Emails_sent,Email_hours,Conflicting_meeting_hours,Collaboration_hours_external,Collaboration_hrs,Call_hours,After_hours_meeting_hours,After_hours_instant_messages,After_hours_in_calls,After_hours_email_hours,After_hours_collaboration_hours)
	) as unpvt

	--Select top 10 * from STG_Pivot_Person_Activity

	--Refresh Employee
	EXEC [dbo].[usp_msft_fwk_refresh_employee]

	IF OBJECT_ID('dbo.STG_EmployeeActivity', 'U') IS NOT NULL 
	DROP TABLE dbo.STG_EmployeeActivity;

	CREATE TABLE [dbo].[STG_EmployeeActivity](
		[EmployeeId] [nvarchar](255)  ,
		[ActivityId]  INT ,
		[Date] DATE,
		[DateKey] INT,
		[ActivityDesc] [nvarchar](255)  ,
		[ActivityValue] FLOAT

	)

	INSERT [dbo].[STG_EmployeeActivity]
	SELECT	EM.EmployeeId,A.ActivityId, wpa.[Date],DD.DateKey ,  ActivityDesc  , ActivityValue 
	FROM	dbo.STG_Pivot_Person_Activity wpa
	LEFT
	JOIN	dbo.Activity A ON wpa.ActivityDesc = A.ActivityName
	LEFT
	JOIN	[dbo].[Employee] EM  
			ON EM.WPAEmployeeId = wpa.PersonId
	LEFT
	JOIN    [dbo].[D_Date] DD 
			--ON CONVERT(VARCHAR(10),DD.[DATE],101) = CONVERT(VARCHAR(10),wpa.[DATE],101)
				ON DD.[DATE] = wpa.[DATE]


	--SELECT TOP 10 * FROM [dbo].[STG_EmployeeActivity]

	IF OBJECT_ID('dbo.EmployeeActivity', 'U') IS NULL 
	CREATE TABLE [dbo].[EmployeeActivity](
		[EmployeeId] INT  ,
		[ActivityId]  INT ,
		[DateKey] INT,
		--[EmployeeActivityNote] [nvarchar](255)  ,
		[ActivityValue] FLOAT

	)

	--SELECT	Count(1) 
	DELETE  EA
	FROM	[dbo].[EmployeeActivity]  EA
	INNER 
	JOIN	[dbo].[STG_EmployeeActivity] STG_EA
			ON EA.EmployeeId = STG_EA.EmployeeId
			AND EA.ActivityId = STG_EA.ActivityId
			AND EA.DateKey = STG_EA.DateKey

	INSERT [dbo].[EmployeeActivity]
	SELECT	wpa.EmployeeId,A.ActivityId,wpa.Date,DD.DateKey , wpa.ActivityValue 
	FROM	[dbo].[STG_EmployeeActivity] wpa
	LEFT
	JOIN	[dbo].Activity A ON wpa.ActivityDesc = A.ActivityName
	LEFT
	JOIN    [dbo].[D_Date] DD 
			--ON CONVERT(VARCHAR(10),DD.[DATE],101) = CONVERT(VARCHAR(10),wpa.[DATE],101)
			ON DD.[DATE] = wpa.[DATE]

	-- Trigger loading employee activity aggregate
	EXEC [dbo].[usp_msft_fwk_load_agg_employee]


END
GO