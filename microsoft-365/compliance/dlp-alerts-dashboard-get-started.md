---
title: "Get started with the data loss prevention alert dashboard"
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
description: Get started with defining and managing alerts for data loss prevention policies. 
---

# Get started with the data loss prevention alert dashboard

Data loss prevention (DLP) policies can take protective actions to prevent unintentional sharing of sensitive items. When an action is taken on a sensitive item, you can be notified by configuring alerts for DLP. This article shows you how to define rich alert policies that are linked to your data loss prevention (DLP) policies. You'll see how to use the [DLP alert management dashboard](https://compliance.microsoft.com/datalossprevention?viewid=dlpalerts) in the [Microsoft 365 compliance center](https://compliance.microsoft.com/) to view alerts, events, and associated metadata for DLP policy violations.

If you are new to DLP alerts, you should review [Learn about the data loss prevention alerts dashboard](dlp-alerts-dashboard-learn.md)

## Before you begin

Before you begin, make sure you have the necessary prerequisites:

-   Licensing for the DLP alerts management dashboard
-   Licensing for alert configuration options
-   Roles

### Licensing for the DLP alert management dashboard

All eligible tenants for Office 365 DLP can access the DLP alert management dashboard. To get started, you should be eligible for Office 365 DLP for Exchange Online, SharePoint Online, and OneDrive for Business. For more information about the licensing requirements for Office 365 DLP, see [Which licenses provide the rights for a user to
benefit from the service?](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#which-licenses-provide-the-rights-for-a-user-to-benefit-from-the-service-16).

Customers who use [Endpoint DLP](endpoint-dlp-learn-about.md) who are eligible for [Teams DLP](dlp-microsoft-teams.md) will see their endpoint DLP policy alerts and Teams DLP policy alerts in the DLP alert management dashboard.

The **content preview** feature is available only for these licenses:

- Microsoft 365 (E5)
- Office 365 (E5)
- Advanced Compliance (E5) add on
- Microsoft 365 E5/A5 Information Protection and Governance
- Microsft 365 E5/A5 Compliance

### Licensing for alert configuration options

**Single-event alert configuration**: Organizations that have an E1, F1, or G1 subscription or an E3 or G3 subscription can create alert policies only where an alert is triggered every time an activity occurs.

**Aggregated alert configuration**: To configure aggregate alert policies based on a threshold, you must one of these licensing configurations:

- An E5 or G5 subscription
- An E1, F1, or G1 subscription or an E3 or G3 subscription that includes one of the following features:
    - Office 365 Advanced Threat Protection Plan 2
    - Microsoft 365 E5 Compliance
    - Microsoft 365 eDiscovery and Audit add-on license

### Roles


If you want to view the DLP alert management dashboard or to edit the alert configuration options in a DLP policy, you must be a member of one of these role groups:

- Compliance Administrator
- Compliance Data Administrator
- Security Administrator
- Security Operator
- Security Reader

To access the DLP alert management dashboard, you need the:

- Manage alerts

and either of these two roles:

- DLP Compliance Management
- View-Only DLP Compliance Management

To access the Content preview feature and the Matched sensitive content and context features you must be a member of:

- Content Explorer Content Viewer role group

which has the data classification content viewer role pre-assigned.

## DLP alert configuration

To learn how to configure an alert in your DLP policy, see [Where to start with data loss prevention](create-test-tune-dlp-policy.md#where-to-start-with-data-loss-prevention).

### Aggregate event alert configuration

If your org is licensed for [aggregated alert configuration options](#licensing-for-alert-configuration-options),
then you'll see these options when you create or edit a DLP policy.

:::image type="content" source="../media/incident-reports-options-aggregated-alerts.png" alt-text="Screenshot showing options for incident reports for users who are eligible for aggregated alert configuration options." border="false":::

This configuration allows you to set up a policy to generate an alert every time an activity matches the policy conditions or when a certain threshold is exceeded, based on the number of activities or based on the volume of exfiltrated data.

### Single event alert configuration

If your org is licensed for [single-event alert configuration options](#licensing-for-alert-configuration-options), then you'll see these options when you create or edit a DLP policy. Use this option to create an alert that's raised every time a DLP rule match happens.

:::image type="content" source="../media/incident-reports-options-single-event-alerts.png" alt-text="Screenshot showing options for incident reports for users who are eligible for single-event alert configuration options." border="false":::

## Investigate a DLP alert

To work with the DLP alert management dashboard:

1. In the [Microsoft 365 compliance center](https://www.compliance.microsoft.com), go to **Data Loss Prevention**.
2. Select the **Alerts** tab to view the DLP alerts dashboard.
3. Select an alert to see details:

:::image type="content" source="../media/alert-details.png" alt-text="Screenshot showing alert details on the DLP alert management dashboard." border="false":::

4. Select the **Events** tab to view all of the events associated with the alert. You can choose a particular event to view its details. For a list of some of the available event details, see, [Learn about the data loss prevention Alerts dashboard](dlp-alerts-dashboard-learn.md).
5. Select **Details** to open the **Overview** page for the alert. The overview page provides a summary:
    1. of what happened
    1. who performed the actions that caused the policy match
    1. information about the matched policy, and more 

6. Choose the **Events** tab to access the:
    1. content involved
    1. sensitive information types matched
    1. metadata

7. Select the **Sensitive Info Types** tab to view details about the sensitive information types detected in the content. Details include confidence, count, and the content that matches the sensitive information type.

8. After you investigate the alert, return to the **Overview** tab where you can manage triage and manage the disposition of the alert and add comments.

- To see the history of workflow management, choose **Management log**.
- After you take the required action for the alert, set the status of the alert to **Resolved**.

## See also

- [Learn about data loss prevention alerts and the alerts dashboard](dlp-alerts-dashboard-learn.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)