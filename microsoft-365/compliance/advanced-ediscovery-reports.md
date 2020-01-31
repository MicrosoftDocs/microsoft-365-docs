---
title: "Advanced eDiscovery reports"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid:  
description: ""
---

# Advanced eDiscovery reports (preview)

Advanced eDiscovery reports help you aggregate case data across your organization to streamline data analysis and organizational reporting. The Advanced eDiscovery reports feature includes several built-in reports to help you answer questions like:

- How many active custodians are there for all cases in my organization?

- How many data sources are on hold for all cases in my organization?

- How many hold notifications have been issued in the last month for all cases in my organization?

- How many active and closed cases are there in my organization?

## Before you begin

- To access Advanced eDiscovery reports, you must be a member of the eDiscovery Admin role group. Being a member of this role group provides you with the necessary permissions to view, filter, and export the data in the reports. For more information, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).

- Advanced eDiscovery reports are refreshed daily. As a result, there may be a delay when new cases, custodians, data sources, and communications are created and when they appear in the corresponding report.

To access the Advanced eDiscovery reports:

1. Go to https://protection.office.com
  
2. Sign into Office 365 using your work or school account.
  
3. In the Security & Compliance Center, click **eDiscovery > Advanced eDiscovery**.
  
   On the **Advanced eDiscovery** home page, the Case, Custodian, Data Source, and Communications report tabs are displayed across the top of the page. 
  
   ![Advanced eDiscovery reports on the home page](media/report-home.png)

5. To view a report, click a report tab, and then if necessary you can do one of the following things:

   ![You can filter or download report data](media/AeDReportsFilterDownload.png)

   a. Click **Filter** to narrow the report data. You can filter on different properties for each report.
  
   b. Click **Download to CSV** to export the report data to a CSV file.

## Case report

The Case report aggregates information about active and closed Advance eDiscovery cases in your organization.

|Column        |Description|
|:-------------|:-------------|
|Case ID | The unique identifier for each case.| 
|Case name | User-defined name of the case.|
|Status | Indicates if the case is active or closed.|
|Date created |Th date when the case was created. Dates are in UTC format.|
|Last modified |The date when the case was closed or last updated. Dates are in UTC format.| 
|||

## Custodian report

In the eDiscovery workflow, individuals who are the subject of a legal case or investigation are called *data custodians* (or just *custodians*) and are defined as "persons having administrative control of a document or electronic file". The Custodian report helps you identify all the custodians whose data sources are placed on hold for all cases in your organization.

|Column         |Description|
|:-------------|:-------------|
|Custodian name| The name of the custodian in Active Directory.|
|Custodian UPN | The user principal name of the custodian.|
|Custodian ID | The unique identifier for the custodian within a given case. |
|Case name | The user-defined name of the case.|
|Hold status | Indicates if the custodian is currently on hold or if they have been released from the case.|
|Case Id | The unique identifier for the case.|
|Communication status |Indicates if the custodian was issued a legal hold notification or not. |
|Custodian added | The date the custodian was added to the case. Dates are in UTC format.|
|||

## Data source report

You can use an Advanced eDiscovery case to create holds to preserve content that may be relevant to the case. Using the Advanced eDiscovery hold capabilities, you can place holds on custodians and their data sources. Additionally, you can place a non-custodial hold on mailboxes and OneDrive for Business accounts. You can use the data sources report to aggregate details about content locations on hold for all cases in your organization.

|Column        |Description|
| -------------|-------------|
|Case ID |The unique identifier for each case. |
|Workload |Indicates the type of content location placed on hold (for example, Exchange or SharePoint).
|Location name |Indicates the SMTP address (for Exchange mailboxes) or the URL (for SharePoint sites) of the content location. | 
|Custodian ID |If the data source belongs to a custodian, this column shows the unique identifier for the custodian in a given case. This column will be null for non-custodial locations.|
|Custodian name |The name of the custodian in Active Directory.| 
|Case name |The user-defined name of the case.| 
|Status |Indicates if the content location is currently on hold. | 
|Hold policy ID |The unique identifier for the hold that contains the content location. | 
|Hold created date |Indicates the date when the hold policy was created. Dates are in UTC format. | 
|Hold policy name |The name of the hold that contains the content location. |
|Hold modified date |The date when the hold was last modified. Dates are in UTC format.| 
|Hold last modified by|The name of the user that last modified the hold.| 
|||

## Communication report

Your organization may issue legal hold notices to notify custodians of their obligation to preserve relevant information as part of legal case or investigation. You can use the communications report to view aggregate data on acknowledgments, reminders, escalations, and other types of communications.

|Column         |Description|
| -------------|-------------|
|Case ID | The unique identifier for the case.|
|Case name | User-defined name of the case.|
|Custodian ID |The unique identifier for the custodian in a given case.|
|Custodian name |The name of the custodian.|
|Notice type |Indicates the type of notice that was issued to the custodian.|
|Issuing officer |The name of the user that issued the legal hold notification.|
|Notification event|Indicates the legal hold notification message sent to the user. Possible values include: Reminder, Escalation, Acknowledgment, and Hold Issuance.|
|Date sent |The date when the communication was issued. For acknowledgments, this column indicates the time that the notice was acknowledged by the custodian. Dates are in UTC format.|
|||
