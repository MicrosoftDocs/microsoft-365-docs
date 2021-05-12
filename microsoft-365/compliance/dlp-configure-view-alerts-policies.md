---
title: "Configure and view alerts for data loss prevention policies"
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
description: Learn how to define and manage alerts for data loss prevention policies. 
---

# Configure and view alerts for data loss prevention polices

Data loss prevention (DLP) polices can take protective actions to prevent unintentional sharing of sensitive items. When an action is taken on a sensitive item, you can be notified by configuring alerts for DLP. This article shows you how to define rich alert policies that are linked to your data loss prevention (DLP) policies. You'll see how to use the
new DLP alert management dashboard in the [Microsoft 365 compliance
center](https://compliance.microsoft.com/) to view alerts, events, and
associated metadata for DLP policy violations.

<!-- LEFT OFF HERE-->

## Features

The following features are part of this:

-   **DLP alert management dashboard**: In the [Microsoft 365 compliance 
    center](https://compliance.microsoft.com/), this dashboard shows
    alerts for DLP policies that are enforced on the following
    workloads:

    -   Exchange
    -   SharePoint
    -   OneDrive
    -   Teams
    -   Devices
-   **Advanced alert configuration options**: These options are part of the DLP policy authoring flow. Use them to create rich alert configurations. You can create a single-event alert or an aggregated alert, based on the number of events or the size of the leaked data.

## Before you begin

Before you begin, make sure you have the necessary prerequisites:

-   Licensing for the DLP alerts management dashboard
-   Licensing for alert configuration options
-   Roles

### Licensing for the DLP alert management dashboard

All eligible tenants for Office 365 DLP can access the new DLP alert
management dashboard. To get started, you should be eligible for Office
365 DLP for Exchange Online, SharePoint Online, and OneDrive for
Business. For more information about the licensing requirements for
Office 365 DLP, see [Which licenses provide the rights for a user to
benefit from the
service?](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#which-licenses-provide-the-rights-for-a-user-to-benefit-from-the-service-16).

Customers who use [Endpoint DLP](endpoint-dlp-learn-about.md) who are eligible for [Teams
DLP](dlp-microsoft-teams.md) will see their endpoint DLP policy alerts and Teams DLP policy alerts in the DLP alert management dashboard.

### Licensing for alert configuration options

-   **Single-event alert configuration**: Organizations that have an E1, F1, or G1
    subscription or an E3 or G3 subscription can create alert policies
    only where an alert is triggered every time an activity occurs.
-   **Aggregated alert configuration**: To configure aggregate alert
    policies based on a threshold, you must have either of the following
    configurations:
    -   An E5 or G5 subscription
    -   An E1, F1, or G1 subscription or an E3 or G3 subscription that
        includes one of the following features:
        -   Office 365 Advanced Threat Protection Plan 2
        -   Microsoft 365 E5 Compliance
        -   Microsoft 365 eDiscovery and Audit add-on license

### Roles

If you want to view the DLP alert management dashboard or to edit the
alert configuration options in a DLP policy, you must be a member of one
of these role groups:

-   Compliance Administrator
-   Compliance Data Administrator
-   Security Administrator
-   Security Operator
-   Security Reader

To access the DLP alert management dashboard, you need the Manage alerts
role and either of the following roles:

-   DLP Compliance Management
-   View-Only DLP Compliance Management

## Alert configuration experience

If you're eligible for [aggregated alert configuration options](#licensing-for-alert-configuration-options),
then you see the following options inline in the DLP policy authoring
experience.

:::image type="content" source="../media/incident-reports-options-aggregated-alerts.png" alt-text="Screenshot showing options for incident reports for users who are eligible for aggregated alert configuration options." border="false":::

You can use these alert configuration options to configure a setting
that defines how often a DLP rule match can occur before an alert is
triggered. This configuration allows you to set up a policy to generate
an alert every time an activity matches the policy conditions or when a
certain threshold is exceeded, based on the number of activities or
based on the volume of exfiltrated data.

If you're eligible for [single-event alert configuration options](#licensing-for-alert-configuration-options), then you see the following
alert configuration option in the DLP policy authoring experience. Use
this option to create an alert that's raised every time a DLP rule match
happens because of a user activity.

:::image type="content" source="../media/incident-reports-options-single-event-alerts.png" alt-text="Screenshot showing options for incident reports for users who are eligible for single-event alert configuration options." border="false":::

## DLP alert management dashboard

To work with the DLP alert management dashboard:

1.  In the [Microsoft 365 compliance
    center](https://www.compliance.microsoft.com), go to **Data Loss
    Prevention**.

2.  Select the **Alerts** tab to view the DLP alerts dashboard.

    -   Choose filters to refine the list of alerts. Choose **Customize
        columns** to list the properties you want to see. You can also
        choose to sort the alerts in ascending or descending order in
        any column.
    -   Select an alert to see details:

        :::image type="content" source="../media/alert-details.png" alt-text="Screenshot showing alert details on the DLP alert management dashboard." border="false":::

1.  Select the **Events** tab to view all of the events associated with
    the alert. You can choose a particular event to view its details.
    The following table shows some of the event details.
    
    | Category          | Property name                 | Description                                                                | Applicable event types                   |
    |-------------------|-------------------------------|----------------------------------------------------------------------------|------------------------------------------|
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