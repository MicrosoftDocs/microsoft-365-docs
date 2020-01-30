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

Advanced eDiscovery reports helps you aggregate data across your organization to streamline data analysis and organizational reporting. The Advanced eDiscovery Reports includes several out-of-the-box reports to help you answer questions like:

- How many active custodians exist across my organization?

- How many data sources are on hold across my organization?

- How many hold notifications have been issued in the last month across all my cases?

- How many active and closed cases exist?

## Before you begin

To access the Advanced eDiscovery reports, you must be a member of the eDiscovery Admin role group. This will provide you with the necessary permissions to view, filter, and export data within the reports.

To access the Advanced eDiscovery reports:

1. Go to https://protection.office.com
  
2. Sign into Office 365 using your work or school account.
  
3. In the Security & Compliance Center, click eDiscovery > Advanced eDiscovery.
  
4. On the Advanced eDiscovery page, click the Custodian, Communications, Data Sources, or Cases tab. 
  
5. Click Apply filter to narrow down your results.
  
6. Select Export to obtain a CSV file of your results.

![Reports Home](media/report-home.png)

> [!NOTE]
> The Advanced eDiscovery reports are refreshed daily. As a result, there may be a delay when new cases, custodians, data sources, communications are created and when they appear in the corresponding report.

## Cases report

The Cases report aggregates information about active and closed cases in your organization.

| Field        | Description|
| -------------|-------------|
| Case Id | Unique identifier for each Advanced eDiscovery case.| 
| Date Created | Date in which the case was created. Times are in UTC format. |
| Last Modified | Date in which the case was closed or last updated. Times are in UTC format.| 
| Case Status | Indicates if the case is active or closed. | 
|Case Name | User defined name of the case. | 

## Data sources report

You can use an Advanced eDiscovery case to create holds to preserve content that may be relevant to your case. Using the Advanced eDiscovery hold capabilities, you can place holds on custodians and their data sources. Additionally, you can place a non-custodial hold on mailboxes and OneDrive for Business accounts. You can use the organization-level data sources report to aggregate details about content locations on hold across your Advanced eDiscovery cases.

| Field        | Description|
| -------------|-------------|
| Case ID | Unique identifier for each Advanced eDiscovery case | 
| Workload | Indicates the type of content location placed on hold (Exchange or SharePoint)
| Location name | Indicates the URL or SMTP address of the content location | 
| Custodian ID | If the data source belongs to a custodian, this will show the unqiue identifier for a custodian in a given case. This will be null for non-custodial locations. |
| Custodian name | Name of the custodian in Active Directory| 
| Case name | User defined name of the case | 
| Status | Indicates if the content location is currently on hold | 
| Hold policy ID | Unique identifier for the hold policy that contains the specific content location | 
| Hold created date | Indicates the date in which the hold policy was created | 
| Hold policy name | Name of the hold policy that contains the content location |
| Hold modified date | Timestamp in which the hold policy was last modified| 
| Hold last modified by | Name of the user that last modified the hold policy | 


## Communications report

In some cases, you may issue legal hold notices to notify custodians of their obligation to preserve relevant information. Using the communications report, you can aggregate data on acknowledgements, reminders, escalations, and more.

| Field        | Description|
| -------------|-------------|
| Case ID | Unique identifier for the Advanced eDiscovery case | 
| Case Name | User defined name of the case | 
| Custodian ID | Unique identifier for the custodian in a given case | 
| Custodian Name | Name of the custodian| 
| Notice type | Indicates the type of notice that was issued to the custodian | 
| Issuing Officer | Name of the user that issued the legal hold notification | 
| Notification Event| Indicates the legal hold notification message sent to the user. Possible values include reminder, escalation, acknowledgement, and hold issuance | 
| Date Sent | Date in which the communication was issued. For acknowledgements, this indicates the time that the notice was acknowledged by the custodian. Times are in UTC format.|

## Custodians report

In eDiscovery, these individuals are called data custodians (or just custodians) and are defined as "persons having administrative control of a document or electronic file". The Advanced eDiscovery Custodians Report helps you identify custodians that are on hold across your cases. 

| Field        | Description|
|:-------------|:-------------|
| Custodian Name| Name of the custodian | 
| Custodian UPN | User principal name of the custodian|| Custodian ID | Unique identifier for the custodian in a given case | 
| Case Name | User defined name of the case |
| Hold Status | Indicates if the custodian is currently on hold or if they have been released from the case | 
| Case Id | Unqiue identifier for the case | 
| Communication Status | Indicates if the custodian was issued a legal hold notification | 
| Custodian added | Date that the custodian was added to the case. Times are in UTC format|







