---
title: Investigate data loss alerts with Microsoft 365 Defender
description: Investigate data loss in Microsoft 365 Defender.
keywords: Data Loss Prevention, incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
f1.keywords:
  - NOCSH
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.date: 07/11/2023
---

# Investigate data loss prevention alerts with Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

You can manage Microsoft Purview Data Loss Prevention (DLP) alerts in the Microsoft 365 Defender portal. Open **Incidents & alerts** \> **Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. From this page, you can:

- View all your DLP alerts grouped under incidents in the Microsoft 365 Defender incident queue.
- View intelligent inter-solution (DLP-MDE, DLP-MDO) and intra-solution (DLP-DLP) correlated alerts under a single incident.
- Hunt for compliance logs along with security under Advanced Hunting.
- In-place admin remediation actions on user, file, and device.
- Associate custom tags to DLP incidents and filter by them.
- Filter by DLP policy name, tag, Date, service source, incident status, and user on the unified incident queue.

> [!TIP]
> You can also pull DLP incidents along with events and evidence into Microsoft Sentinel for investigation and remediation with the Microsoft 365 Defender connector in Microsoft Sentinel.

## Licensing requirements

To investigate Microsoft Purview Data Loss Prevention incidents in the Microsoft 365 Defender portal, you need a license from one of the following subscriptions:

- Microsoft Office 365 E5/A5
- Microsoft 365 E5/A5
- Microsoft 365 E5/A5 Compliance
- Microsoft 365 E5/A5 Security
- Microsoft 365 E5/A5 Information Protection and Governance

> [!NOTE]
> When you are licensed and eligible for this feature, DLP alerts will automatically flow into Microsoft 365 Defender. If you don't want DLP alerts to flow into Defender, open a support case to disable this feature. If you disable this feature DLP alerts will surface in the Defender portal as Microsoft Defender for Office alerts.

## Before you start

[Turn on alerts for all your DLP policies](/microsoft-365/compliance/dlp-configure-view-alerts-policies#alert-configuration-experience) in the <a href="https://purview.microsoft.com" target="_blank">Microsoft Purview compliance portal</a>.

## Investigate DLP alerts in the Microsoft 365 Defender portal

1. Go to the Microsoft 365 Defender portal, and select **Incidents** in the left hand navigation menu to open the incidents page.

2. Select **Filters** on the top right, and choose **Service Source : Data Loss Prevention** to view all incidents with DLP alerts.

3. Search for the DLP policy name of the alerts and incidents you're interested in.

4. To view the incident summary page, select the incident from the queue. Similarly, select the alert to view the DLP alert page.

5. View the **Alert story** for details about policy and the sensitive information types detected in the alert. Select the event in the **Related Events** section to see the user activity details.

6. View the matched sensitive content in the **Sensitive info types** tab and the file content in the **Source** tab if you have the required permission (See details <a href="/microsoft-365/compliance/dlp-alerts-dashboard-get-started#roles" target="_blank">here</a>).

You can also use Advanced Hunting to search through audit logs of user, files, and site locations for your investigation. The **CloudAppEvents** table contains all audit logs across all locations like SharePoint, OneDrive, Exchange and Devices.

If the alert is for an email message, you can download the message by selecting **Actions** \> **Download email**.

If the alert is for a file in SharePoint Online or One Drive for Business, you can take these actions:

- Apply retention label
- Unshare
- Delete
- Apply sensitivity labelUnshare file
- Download
- Withdraw feedback

For remediation actions, select the **User card** on the top of the alert page to open the user details.

For Devices DLP alerts, select the device card on the top of the alert page to view the device details and take remediation actions on the device.

Go to the incident summary page and select **Manage Incident** to add incident tags, assign, or resolve an incident.

> [!IMPORTANT]
> DLP supports associating DLP policies and alert management with administrative units in the Microsoft Purview compliance portal. DLP alerts are only available to unrestricted DLP administrators in the Microsoft 365 Defender portal. Administrative unit restricted DLP administrator will not see DLP alerts.  See [Administrative units](/microsoft-365/compliance/microsoft-365-compliance-center-permissions#administrative-units) for implementation details. See [Policy scoping](/microsoft-365/compliance/dlp-policy-reference#policy-scoping) for details on administrative unit scoping.

## Related articles

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
