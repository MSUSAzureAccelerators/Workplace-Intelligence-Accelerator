/*********************************************************************************************************************
	File: 	Activity.sql

	Desc: 	Data hydration script.			
**********************************************************************************************************************/

TRUNCATE TABLE dbo.Activity;

SET IDENTITY_INSERT dbo.Activity ON;

INSERT INTO dbo.Activity (ActivityId, ActivityName, ActivityDescription, ActivityTypeId)
	SELECT 1,'Emails_sent_to_50_or_more_recipients','Emailssentto50ormorerecipients',1
	UNION SELECT 2,'Bloated_meeting_hours','Bloatedmeetinghours',6
	UNION SELECT 3,'Git_Commit_Add','GitCommitAdd',6
	UNION SELECT 4,'Meeting_hours_with_manager','Meetinghourswithmanager',2
	UNION SELECT 5,'Call_hours','Callhours',3
	UNION SELECT 6,'Meeting_hours_1_to_2_hours','Meetinghours1to2hours',2
	UNION SELECT 7,'Meetings_with_skip_level','Meetingswithskiplevel',2
	UNION SELECT 8,'Emails_sent_11_to_50_recipients','Emailssent11to50recipients',1
	UNION SELECT 9,'Lengthy_meeting_hours','Lengthymeetinghours',2
	UNION SELECT 10,'Git_Commit_Edit','GitCommitEdit',6
	UNION SELECT 11,'Meeting_hours_during_working_hours','Meetinghoursduringworkinghours',2
	UNION SELECT 12,'After_hours_meeting_hours','Afterhoursmeetinghours',2
	UNION SELECT 13,'Meeting_hours_1_hour','Meetinghours1hour',2
	UNION SELECT 14,'Meetings_with_manager_1_on_1','Meetingswithmanager1on1',2
	UNION SELECT 15,'Emails_sent_6_to_10_recipients','Emailssent6to10recipients',1
	UNION SELECT 16,'Status_update_meeting_hours','Statusupdatemeetinghours',2
	UNION SELECT 17,'Git_Commit_Delete','GitCommitDelete',6
	UNION SELECT 18,'Meeting_hours','Meetinghours',2
	UNION SELECT 19,'After_hours_instant_messages','Afterhoursinstantmessages',5
	UNION SELECT 20,'Meeting_hours_31_to_59_min','Meetinghours31to59min',2
	UNION SELECT 21,'Meetings_with_manager','Meetingswithmanager',2
	UNION SELECT 22,'Emails_sent_2_to_5_recipients','Emailssent2to5recipients',1
	UNION SELECT 23,'Decision_making_meeting_hours','Decisionmakingmeetinghours',2
	UNION SELECT 24,'Feature_Count','FeatureCount',7
	UNION SELECT 25,'Manager_coaching_hours_1_on_1','Managercoachinghours1on1',4
	UNION SELECT 26,'After_hours_in_calls','Afterhoursincalls',3
	UNION SELECT 27,'Meeting_hours_30_min_or_less','Meetinghours30minorless',2
	UNION SELECT 28,'Meetings','Meetings',2
	UNION SELECT 29,'Emails_sent_1_recipient','Emailssent1recipient',1
	UNION SELECT 30,'One_on_one_meeting_hours','Oneononemeetinghours',2
	UNION SELECT 31,'Task_Count','TaskCount',7
	UNION SELECT 32,'Low_quality_meeting_hours','Lowqualitymeetinghours',2
	UNION SELECT 33,'After_hours_email_hours','Afterhoursemailhours',1
	UNION SELECT 34,'Meeting_hours_for_19_or_more_attendees','Meetinghoursfor19ormoreattendees',2
	UNION SELECT 35,'Meeting_hours_with_skip_level','Meetinghourswithskiplevel',2
	UNION SELECT 36,'All_hands_recurring_meeting_hours','Allhandsrecurringmeetinghours',2
	UNION SELECT 37,'Meeting_hours_more_than_2_hours','Meetinghoursmorethan2hours',2
	UNION SELECT 38,'User_Story_Count','UserStoryCount',7
	UNION SELECT 39,'Internal_network_size','Internalnetworksize',4
	UNION SELECT 40,'After_hours_collaboration_hours','Afterhourscollaborationhours',4
	UNION SELECT 41,'Meeting_hours_for_9_to_18_attendees','Meetinghoursfor9to18attendees',2
	UNION SELECT 42,'Meeting_hours_with_manager_1_on_1','Meetinghourswithmanager1on1',2
	UNION SELECT 43,'Workshop_recurring_meeting_hours','Workshoprecurringmeetinghours',2
	UNION SELECT 44,'User_Story_Story_Points','UserStoryStoryPoints',7
	UNION SELECT 45,'Instant_messages_sent','Instantmessagessent',5
	UNION SELECT 46,'Meeting_hours_for_3_to_8_attendees','Meetinghoursfor3to8attendees',2
	UNION SELECT 47,'Bloated_recurring_meeting_hours','Bloatedrecurringmeetinghours',2
	UNION SELECT 48,'Bug_Count','BugCount',7
	UNION SELECT 49,'Instant_message_hours','Instantmessagehours',5
	UNION SELECT 50,'Meeting_hours_for_2_attendees','Meetinghoursfor2attendees',2
	UNION SELECT 51,'Lengthy_recurring_meeting_hours','Lengthyrecurringmeetinghours',2
	UNION SELECT 52,'Generated_workload_meetings_organized','Generatedworkloadmeetingsorganized',2
	UNION SELECT 53,'Workweek_span','Workweekspan',4
	UNION SELECT 54,'Status_update_recurring_meeting_hours','Statusupdaterecurringmeetinghours',2
	UNION SELECT 55,'Generated_workload_meeting_hours','Generatedworkloadmeetinghours',2
	UNION SELECT 56,'Working_hours_instant_messages','Workinghoursinstantmessages',4
	UNION SELECT 57,'Decision_making_recurring_meeting_hours','Decisionmakingrecurringmeetinghours',2
	UNION SELECT 58,'Generated_workload_meeting_attendees','Generatedworkloadmeetingattendees',2
	UNION SELECT 59,'Working_hours_in_calls','Workinghoursincalls',4
	UNION SELECT 60,'One_on_one_recurring_meeting_hours','Oneononerecurringmeetinghours',2
	UNION SELECT 61,'Generated_workload_instant_messages_recipients','Generatedworkloadinstantmessagesrecipients',5
	UNION SELECT 62,'Working_hours_email_hours','Workinghoursemailhours',4
	UNION SELECT 63,'Total_unscheduled_calls','Totalunscheduledcalls',3
	UNION SELECT 64,'Generated_workload_instant_messages_hours','Generatedworkloadinstantmessageshours',5
	UNION SELECT 65,'Working_hours_collaboration_hours','Workinghourscollaborationhours',4
	UNION SELECT 66,'Total_scheduled_calls','Totalscheduledcalls',3
	UNION SELECT 67,'Generated_workload_email_recipients','Generatedworkloademailrecipients',1
	UNION SELECT 68,'Total_focus_hours','Totalfocushours',4
	UNION SELECT 69,'Working_hours_in_unscheduled_calls','Workinghoursinunscheduledcalls',3
	UNION SELECT 70,'Generated_workload_email_hours','Generatedworkloademailhours',1
	UNION SELECT 71,'Total_emails_sent_during_meeting','Totalemailssentduringmeeting',1
	UNION SELECT 72,'Working_hours_in_scheduled_calls','Workinghoursinscheduledcalls',3
	UNION SELECT 73,'Generated_workload_calls_organized','Generatedworkloadcallsorganized',3
	UNION SELECT 74,'Total_calls','Totalcalls',3
	UNION SELECT 75,'After_hours_in_unscheduled_calls','Afterhoursinunscheduledcalls',3
	UNION SELECT 76,'Generated_workload_call_participants','Generatedworkloadcallparticipants',3
	UNION SELECT 77,'Time_in_self_organized_meetings','Timeinselforganizedmeetings',2
	UNION SELECT 78,'After_hours_in_scheduled_calls','Afterhoursinscheduledcalls',3
	UNION SELECT 79,'Generated_workload_call_hours','Generatedworkloadcallhours',3
	UNION SELECT 80,'Redundant_meeting_hours__organizational_','Redundantmeetinghoursorganizational',2
	UNION SELECT 81,'Unscheduled_Call_hours','UnscheduledCallhours',3
	UNION SELECT 82,'External_network_size','Externalnetworksize',4
	UNION SELECT 83,'Redundant_meeting_hours__lower_level_','Redundantmeetinghourslowerlevel',2
	UNION SELECT 84,'Scheduled_Call_hours','ScheduledCallhours',3
	UNION SELECT 85,'Emails_sent','Emailssent',1
	UNION SELECT 86,'Open_2_hour_blocks','Open2hourblocks',4
	UNION SELECT 87,'Recurring_or_regular_meeting_hours','Recurringorregularmeetinghours',2
	UNION SELECT 88,'Email_hours','Emailhours',1
	UNION SELECT 89,'Open_1_hour_block','Open1hourblock',4
	UNION SELECT 90,'Status_update_review_meeting_hours','Statusupdatereviewmeetinghours',2
	UNION SELECT 91,'Conflicting_meeting_hours','Conflictingmeetinghours',2
	UNION SELECT 92,'Networking_outside_organization','Networkingoutsideorganization',4
	UNION SELECT 93,'All_hands_meeting_hours','Allhandsmeetinghours',2
	UNION SELECT 94,'Collaboration_hours_external','Collaborationhoursexternal',4
	UNION SELECT 95,'Networking_outside_company','Networkingoutsidecompany',4
	UNION SELECT 96,'Workshop_meeting_hours','Workshopmeetinghours',2
	UNION SELECT 97,'Collaboration_hrs','Collaborationhrs',4
	UNION SELECT 98,'Multitasking_meeting_hours','Multitaskingmeetinghours',2

SET IDENTITY_INSERT dbo.Activity OFF;