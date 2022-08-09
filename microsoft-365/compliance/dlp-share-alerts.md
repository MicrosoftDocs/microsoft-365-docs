---
title: "Share DLP alerts"
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
ms.localizationpriority: medium
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
ms.custom:
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
description: Learn how to share data loss prevention alerts to users with minimal permissions for investigation. 
---

# Share data loss prevention alerts

Microsoft Purview Data Loss Prevention (DLP) can take actions when it encounters a sensitive item that meets the conditions defined in a policy. Notifications of these actions are sent to the alerts dashboard, which is accessible only if you have the appropriate permissions. But, as alerts are triaged and investigated, you may need to share them with other users who don't, and shouldn't, have full permissions to DLP and the alerts console. 

You can share an alert with users who don't have full permissions to the alerts dashboard by following the procedures in this article.

1. Create a custom role group or assign an account these roles
    1. View-Only DLP Compliance Management - required
    1. Data Classification Content Viewer - required
    1. Preview - optional. Assign this if the reviewer needs to see the source content.
    
1. Add the users who need to review individual alerts to this group.

1. Someone with admin access to the DLP alerts console collects the Alert ID and creation time.
1. 
1. the investigators open the DLP page and append the alert IT and creation time










You'll see how to use the DLP alert management dashboard in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a> to view alerts, events, and associated metadata for DLP policy violations.

## Features

The following features are part of this:

-   **DLP alert management dashboard**: In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>, this dashboard shows
    alerts for DLP policies that are enforced on the following workloads:

    -   Exchange
    -   SharePoint
    -   OneDrive
    -   Teams
    -   Devices


## Before you begin

Before you begin, make sure you have the necessary prerequisites:

-   Licensing for the DLP alerts management dashboard
-   Licensing for alert configuration options
-   Roles

### Licensing for the DLP alert management dashboard

All eligible tenants for Office 365 DLP can access the new DLP alert management dashboard. To get started, you should be eligible for Office
365 DLP for Exchange Online, SharePoint Online, and OneDrive for Business. For more information about the licensing requirements for Office 365 DLP, see [Which licenses provide the rights for a user to benefit from the service?](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#which-licenses-provide-the-rights-for-a-user-to-benefit-from-the-service-16).

Customers who use [Endpoint DLP](endpoint-dlp-learn-about.md) who are eligible for [Teams DLP](dlp-microsoft-teams.md) will see their endpoint DLP policy alerts and Teams DLP policy alerts in the DLP alert management dashboard.

### Roles

If you want to view the DLP alert management dashboard or to edit the alert configuration options in a DLP policy, you must be a member of one of these role groups:

-   Compliance Administrator
-   Compliance Data Administrator
-   Security Administrator
-   Security Operator
-   Security Reader

To access the DLP alert management dashboard, you need the Manage alerts role and either of the following roles:

-   DLP Compliance Management
-   View-Only DLP Compliance Management


## DLP alert management dashboard

To work with the DLP alert management dashboard:

1.  In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>, go to **Data Loss Prevention**.

2.  Select the **Alerts** tab to view the DLP alerts dashboard.

    -   Choose filters to refine the list of alerts. Choose **Customize columns** to list the properties you want to see. You can also choose to sort the alerts in ascending or descending order in any column.
    -   Select an alert to see details:

        :::image type="content" source="../media/alert-details.png" alt-text="Screenshot showing alert details on the DLP alert management dashboard." border="false":::

1.  Select the **Events** tab to view all of the events associated with the alert. You can choose a particular event to view its details. The following table shows some of the event details.
    
    | Category          | Property name                 | Description                                                                | Applicable event types                   |
    |-------------------|-------------------------------|----------------------------------------------------------------------------|------------------------------------------|
    |*Event details*||
    |      | ID                            | Unique ID associated with the event                                        | All events                               |
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
    
1.  Select the **Sensitive Info Types** tab to view details about the sensitive information types detected in the content. Details include confidence and count.

2.  After you investigate the alert, choose **Manage alert** to change the status (**Active**, **Investigating**, **Dismissed**, or
    **Resolved**). You can also add comments and assign the alert to someone in your organization.

    -   To see the history of workflow management, choose **Management log**.
    -   After you take the required action for the alert, set the status of the alert to **Resolved**.
