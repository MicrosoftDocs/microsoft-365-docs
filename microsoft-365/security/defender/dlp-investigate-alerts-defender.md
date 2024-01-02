---
title: Investigate data loss alerts with Microsoft Defender XDR
description: Investigate data loss in Microsoft Defender XDR.
keywords: Data Loss Prevention, incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
f1.keywords:
  - NOCSH
ms.service: defender-xdr
ms.author: chrfox
author: chrfox
ms.localizationpriority: medium
manager: laurawi
audience: ITPro
ms.collection:
  - m365-security
  - tier2
ms.topic: how-to
search.appverid:
  - MOE150
  - met150
ms.date: 11/14/2023
---

# Investigate data loss prevention alerts with Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

You can manage Microsoft Purview Data Loss Prevention (DLP) alerts in the Microsoft Defender portal. Open **Incidents & alerts** \> **Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender portal</a>. From this page, you can:

- View all your DLP alerts grouped under incidents in the Microsoft Defender XDR incident queue.
- View intelligent inter-solution (DLP-MDE, DLP-MDO) and intra-solution (DLP-DLP) correlated alerts under a single incident.
- Hunt for compliance logs along with security under Advanced Hunting.
- In-place admin remediation actions on user, file, and device.
- Associate custom tags to DLP incidents and filter by them.
- Filter by DLP policy name, tag, Date, service source, incident status, and user on the unified incident queue.

> [!TIP]
> You can also pull DLP incidents along with events and evidence into Microsoft Sentinel for investigation and remediation with the Microsoft Defender XDR connector in Microsoft Sentinel.

## Licensing requirements

To investigate Microsoft Purview Data Loss Prevention incidents in the Microsoft Defender portal, you need a license from one of the following subscriptions:

- Microsoft Office 365 E5/A5
- Microsoft 365 E5/A5
- Microsoft 365 E5/A5 Compliance
- Microsoft 365 E5/A5 Information Protection and Governance

> [!NOTE]
> When you are licensed and eligible for this feature, DLP alerts will automatically flow into Microsoft Defender XDR. If you don't want DLP alerts to flow into Defender, open a support case to disable this feature. If you disable this feature DLP alerts will surface in the Defender portal as Microsoft Defender for Office alerts.

## Roles

It's best practice to only grant minimal permissions to alerts in the Microsoft Defender portal. You can create a custom role with these roles and assign it to the users who need to investigate DLP alerts.

|Permission  |Defender Alert Access  |
|---------|---------|
|Manage Alerts    | DLP + Security |
|View-Only Manage Alerts     |DLP + Security         |
|Information Protection Analyst     |DLP only         |
|DLP Compliance Management     |DLP only         |
|View-Only DLP Compliance Management     |DLP only         |


## Before you start

[Turn on alerts for all your DLP policies](/purview/dlp-create-deploy-policy) in the <a href="https://purview.microsoft.com" target="_blank">Microsoft Purview compliance portal</a>.

> [!NOTE]
> [Administrative units](/microsoft-365/compliance/microsoft-365-compliance-center-permissions#administrative-units) restrictions flow from data loss prevention (DLP) into the Defender portal. If you are an administrative unit restricted admin, you'll only see the DLP alerts for your administrative unit.

<a name='investigate-dlp-alerts-in-the-microsoft-365-defender-portal'></a>

## Investigate DLP alerts in the Microsoft Defender portal

1. Go to the Microsoft Defender portal, and select **Incidents** in the left hand navigation menu to open the incidents page.

2. Select **Filters** on the top right, and choose **Service Source : Data Loss Prevention** to view all incidents with DLP alerts. Here's a few examples of the subfilters that are available in preview:
    1. by user and device names    
    1. (in preview) In the **Entities** filter, you can search on file names, user, device names, and file paths.
    1. (in preview) In the **Incidents** queue > **Alert policies** > Alert policy title. You can search on the DLP policy name.

1. Search for the DLP policy name of the alerts and incidents you're interested in.

1. To view the incident summary page, select the incident from the queue. Similarly, select the alert to view the DLP alert page.

1. View the **Alert story** for details about policy and the sensitive information types detected in the alert. Select the event in the **Related Events** section to see the user activity details.

1. View the matched sensitive content in the **Sensitive info types** tab and the file content in the **Source** tab if you have the required permission (See details <a href="/microsoft-365/compliance/dlp-alerts-dashboard-get-started#roles" target="_blank">here</a>).

### Extend DLP alert investigation with advanced hunting

Advanced hunting is a query-based threat hunting tool that lets you explore up to 30 days of audit logs of user, files and site locations to aid in your investigation. You can proactively inspect events in your network to locate threat indicators and entities. The flexible access to data enables unconstrained hunting for both known and potential threats.

The **CloudAppEvents** table contains all audit logs across all locations like SharePoint, OneDrive, Exchange and Devices.

#### Before you begin

If you're new to advanced hunting, you should review [Get started with advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview.md).

Before you can use advance hunting you must have [access to the **CloudAppEvents** table](/defender-cloud-apps/connect-office-365.md) that contains the Microsoft Purview data.

#### Using built in queries

> [!IMPORTANT]
> This feature is in preview. Preview features aren't meant for production use and may have restricted functionality. These features are available before an official release so that customers can get early access and provide feedback.

The Defender portal offers multiple built-in queries you can use to help with your DLP alert investigation.

1. Go to the Microsoft Defender portal, and select **Incidents & alerts** in the left hand navigation menu to open the incidents page. Select **Incidents**.
1. Select **Filters** on the top right, and choose **Service Source : Data Loss Prevention** to view all incidents with DLP alerts.
1. Open a DLP incident.
1. Select on an alert to view its associated events.
1. Select an event. 
1. In the event details pane, select the **Go Hunt** control.
    1. Defender shows you a list of built-in queries that are relevant to the source location of the event. For example, if the event is from SharePoint you see
        1. **File shared with**
        1. **File activities**
        1. **Site activity**
        1. **User DLP violations for last 30 days**
1. You can choose to **Run query** immediately, change the time range, edit or save the query for later use.
1. Once you run the query, view the results on the **Results** tab.

If the alert is for an email message, you can download the message by selecting **Actions** \> **Download email**.

If the alert is for a file in SharePoint Online or One Drive for Business, you can take these actions:

- Apply retention label
- Unshare
- Delete
- Apply sensitivity label
- Download ([data classification content viewer role](/microsoft-365/security/office-365-security/scc-permissions#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance) is required for this action)
- Withdraw feedback

For remediation actions, select the **User card** on the top of the alert page to open the user details.

For Devices DLP alerts, select the device card on the top of the alert page to view the device details and take remediation actions on the device.

Go to the incident summary page and select **Manage Incident** to add incident tags, assign, or resolve an incident.

## Related articles

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
