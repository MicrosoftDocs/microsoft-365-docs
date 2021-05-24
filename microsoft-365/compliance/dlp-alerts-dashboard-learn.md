---
title: "Learn about the data loss prevention Alerts dashboard"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: article
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
ms.custom:
- seo-marvel-apr2020
description: Learn about data loss prevention alerts and the alerts dashboard. 
---

# Learn about the data loss prevention Alerts dashboard

When the criteria in a Data loss prevention (DLP) policy is matched by the actions a user is taking on a sensitive item, the policy can generate an alert. This can result in a high volume of alerts. DLP alerts are collected in the alerts dashboard. The alerts dashboard gives you a single place to go to perform a deep investigation of all the details regarding the policy match.  

<!-- [Microsoft 365 compliance center](https://compliance.microsoft.com/)-->

## Workloads

The [DLP alert management dashboard](https://compliance.microsoft.com/datalossprevention?viewid=dlpalerts), in the [Microsoft 365 compliance center](https://compliance.microsoft.com/), shows alerts for DLP policies on these workloads:

- Exchange
- SharePoint
- OneDrive
- Teams
- Windows 10 devices 

> [!TIP]
> Customers who use [Endpoint DLP](endpoint-dlp-learn-about.md) who are eligible for [Teams DLP](dlp-microsoft-teams.md) will see their endpoint DLP policy alerts and Teams DLP policy alerts in the DLP alert management dashboard.

## Single alert and aggregate alert

There are two types of alerts that can be configured in DLP policies.

**Single-event alerts** are typically used in policies that monitor for highly sensitive events that occur in a low volume, like a single email with 10 or more customer credit card numbers being sent outside your organization.

**Aggregate-event alerts** are typically used in policies that monitor for events that occur in a higher volume over a period of time. For example, an aggregate alert can be triggered when 10 individual emails each with one customer credit card number is sent outside your org over 48 hours.

## Types of events

Here are some of the events associated with an alert. In the UI, you can choose a particular event to view its details. 

### Event details

|Property name  |Description  |Event types  |
|---------|---------|---------|
|ID |unique ID associated with the event |all events |
|Location |workload where the event was detected|all events |
|time of activity     |time of the user activity that matched the criteria of the DLP policy |

### Impacted entities

|Property name |Description| Event types|
|---------|---------|---------|
|user | user who took the action that caused the policy match | all events|
|hostname | host name of the computer where the DLP policy match occurred | device events|
|IP address | IP address of the computer where the DLP policy match occurred | device events|
|sha1 |SHA-1 hash of the file | device events|
|sha256 | SHA-256 hash of the file | device events|
|MDATP device ID | endpoint device MDATP ID|
|file size | size of the file| SharePoint, OneDrive, and device events|
|file path | the absolute path of the item involved with the DLP policy match | SharePoint, OneDrive, and devices events|
|email recipients |if an email was the sensitive item that matched the DLP policy, this field includes the recipients of that email| Exchange events|
|email subject |subject of the email that matched the DLP policy |Exchange events|
|email attachments | names of the attachments in the email that matched the DLP policy| Exchange events|
|site owner |name of the site owner| SharePoint and OneDrive events|
|site URL |full of the URL of the SharePoint or OneDrive site where the DLP policy match occurred |SharePoint and OneDrive events|
|file created |time of creation of the file that matched the DLP policy |SharePoint and OneDrive events|
|file last modified | the last time that the file that matched the DLP policy was changed | SharePoint and OneDrive events|
|file size | size of the file that matched the DLP policy |SharePoint and OneDrive events|
|file owner |owner of the file that matched the DLP policy |SharePoint and OneDrive events|  

### Policy details

|Property name |Description |Event types |
|---------|---------|---------|
|DLP policy matched |name of the matched DLP policy |all events|
|rule matched |name of the matched DLP policy rule |all events|
|sensitive information types (SIT) detected|SITs that were detected as part of the DLP policy match |all events|
|actions taken |actions that were taken that caused the DLP policy match| all events|
|violating action | action on the endpoint device that raised the DLP alert| device events | 
|user overrode policy |did the user override the policy via a policy tip | all events|
|use override justification |the text of the reason provided by the user for the override | all events|   

## See Also

- [Get started with the data loss prevention alert dashboard](dlp-alerts-dashboard-get-started.md)
- [Where to start with data loss prevention](create-test-tune-dlp-policy.md#where-to-start-with-data-loss-prevention)