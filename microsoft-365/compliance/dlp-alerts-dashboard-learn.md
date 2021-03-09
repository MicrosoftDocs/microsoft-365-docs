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
description: Learn about data loss preventions alerts and the alerts dashboard. 
---

# Learn about the data loss prevention Alerts dashboard

When the criteria in a Data loss prevention (DLP) policy is matched by the actions a user is taking on a sensitive item, the policy can generate an alert. This can result in a high volume of alerts. DLP alerts are collected in the alerts dashboard. The alerts dashboard gives you a single place to go to perform a deep investigation of all the details regarding the policy match.  

<!-- [Microsoft 365 compliance center](https://compliance.microsoft.com/)-->

## Workloads

The **DLP alert management dashboard**, in the [Microsoft 365 compliance center](https://compliance.microsoft.com/), shows alerts for DLP policies on these workloads:
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

Select the **Events** tab to view all of the events associated with the alert. You can choose a particular event to view its details. 

### Event details

|Property name  |Description  |Event types  |
|---------|---------|---------|
|Id |unique ID associated with the event |all events |
|Location |workload where the event was detected|all events |
|time of activity     |time of the user activity that matched the criteria of the DLP policy |

### Impacted entities

|Property name |Description| Event types|
|---------|---------|---------|
|user | user who took the action that caused the policy match | all events|
|hostname | host name of the computer where the DLP policy match occurred | device events|
|IP address | IP address of the computer where the DLP policy match occurred | device events|
|file path | the absolute path of the item involved with the DLP policy match | SharePoint, OneDrive and devices events|
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

 
    |*Event details*||
    |      | Id                            | Unique ID associated with the event                                        | All events                               |
    |                   | Location                      | Workload where the event was detected                                      | All events                               |
    |                   | Time of activity              | Time of the user activity that caused the DLP violation                    | All events                               |
    |*Impacted entities*||
    |  | User                          | User who caused the DLP violation                                          | All events                               |
    |                   | Hostname                      | Host name of the machine where the DLP violation was detected              | Devices events                           |
    |                   | IP address                    | IP address of the machine                                                  | Devices events                           |
    |                   | File path                     | Absolute path of the file involved in the violation                        | SharePoint, OneDrive, and Devices events |
    |                   | Email recipients              | Recipients of the email that violated the DLP policy                       | Exchange events                          |
    |                   | Email subject                 | Subject of the email that violated the DLP policy                          | Exchange events                          |
    |                   | Email attachments             | Names of the attachments in the email that violated the DLP policy         | Exchange events                          |
    |                   | Site owner                    | Name of the site owner                                                     | SharePoint and OneDrive events           |
    |                   | Site URL                      | Full URL of the SharePoint or OneDrive site                                | SharePoint and OneDrive events           |
    |                   | File created                  | Time of file creation                                                      | SharePoint and OneDrive events           |
    |                   | File last modified            | Time of the last modification of the file                                  | SharePoint and OneDrive events           |
    |                   | File size                     | Size of the file                                                           | SharePoint and OneDrive events           |
    |                   | File owner                    | Owner of the file                                                          | SharePoint and OneDrive events           |
    |*Policy details*||
    |     | DLP policy matched            | Name of the DLP policy that was matched                                    | All events                               |
    |                   | Rule matched                  | Name of the DLP rule in the DLP policy that was matched                    | All events                               |
    |                   | Sensitive info types detected | Sensitive information types that were detected as a part of the DLP policy | All events                               |
    |                   | Actions taken                 | Actions taken as a part of the matched DLP policy                          | All events                               |
    |                   | User overrode policy          | Whether the user overrode the policy through the policy tip                | All events                               |
    |                   | Override justification text   | Justification provided to override the policy tip                          | All events                               |
    
1.  Select the **Sensitive Info Types** tab to view details about the
    sensitive information types detected in the content. Details include
    confidence and count.

2.  After you investigate the alert, choose **Manage alert** to change
    the status (**Active**, **Investigating**, **Dismissed**, or
    **Resolved**). You can also add comments and assign the alert to
    someone in your organization.

    -   To see the history of workflow management, choose **Management
    log**.
    -   After you take the required action for the alert, set the status of
    the alert to **Resolved**.
