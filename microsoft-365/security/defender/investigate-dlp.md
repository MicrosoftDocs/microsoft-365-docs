---
title: Investigate data loss in Microsoft 365 Defender
description: Investigate data loss in Microsoft 365 Defender.
keywords: Data Loss Prevention, incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
ms.technology: m365d
---
## Investigate data loss incidents with Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Incidents for Microsoft Purview Data Loss Prevention (DLP) can now be managed in the Microsoft 365 Defender Portal. You can manage Data Loss Prevention incidents along with security incidents from the **Incidents & alerts** \> **Incidents** on the quick launch of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. From this page, you can do these additional actions:

- View all your DLP alerts grouped under incidents in the Microsoft 365 Defender incident queue.
- View intelligent inter-solution (DLP-MDE, DLP-MDO) and intra-solution (DLP-DLP) correlated alerts under a single incident.
- Hunt for compliance logs along with security under Advanced Hunting.
- In-place admin remediation actions on user, file, and device. 
- Associate custom tags to DLP incidents and filter by them.
- Filter by DLP policy name, tag, Date, service source, incident status, and user on the unified incident queue. 
- Leverage the Microsoft 365 Defender connector in Sentinel to pull DLP incidents into Microsoft Sentinel for investigation and remediation.

## Licensing requirements

To be eligible for investigating Microsoft Purview Data Loss Prevention incidents in the Microsoft 365 Defender portal, you need a license from one of the following subscriptions: 

- Microsoft Office 365 E5/A5
- Microsoft 365 E5/A5
- Microsoft 365 E5/A5 Compliance
- Microsoft 365 E5/A5 Security
- Microsoft 365 E5/A5 Information Protection and Governance

## DLP investigation experience in the Microsoft 365 Defender portal

Before you start, turn on alerts for all your DLP policies in the Microsoft Purview Compliance Center.

1. Go to the Microsoft 365 Defender portal, and select **Incidents** in the left hand navigation menu to open the incidents page.

2. Select **Filters** on the top right, and choose **Service Source : Data Loss Prevention** to view all incidents with DLP alerts.

3. Search for the DLP policy name of the alerts and incidents you're interested in.

4. To view the incident summary page, select the incident from the queue. Similarly, select the alert to view the DLP alert page.

5. View the **Alert story** for details about policy and the sensitive information types detected in the alert. Select the event in the **Related Events** section to see the user activity details.

6. View the matched sensitive content in the **Sensitive info types** tab and the file content in the **Source** tab if you have the permission.

7. You can also use Advanced Hunting to search through audit logs of user, files, and site locations for your investigation. The `CloudAppEvents` table contains all audit logs across all locations like Sharepoint, OneDrive, Exchange and endpoint devices.

8. You can also download the email by selecting **Actions** \> **Download email**. 

9. For remediation actions on files on SPO or ODB sites, you can see actions like:

    - Apply retention label
    - Apply sensitivity label
    - Unshare file
    - Delete

   For remediation actions, select the **User card** on the top of the alert page to open the user details.

   For endpoint device DLP alerts, select the device card on the top of the alert page to view the device details and take remediation actions on the device.

10. Go to the incident summary page and select **Manage Incident** to add incident tags, assign, or resolve an incident.

## DLP investigation experience in Microsoft Sentinel

You can use the Microsoft 365 Defender connector in Microsoft Sentinel to import all DLP incidents into Sentinel to extend your correlation, detection, and investigation across additional data sources and extend your automated orchestration flows using Sentinel’s native SOAR capabilities. 

1. Follow instructions on Connect data from Microsoft 365 Defender to Microsoft Sentinel to import all incidents including DLP incidents and alerts into Sentinel. Enable `CloudAppEvents` event connector to pull all O365 audit logs into Sentinel.

   You should be able to see your DLP incidents in Sentinel once the above connector is setup.

2. Select **Alerts** to view the alert page.

3. You can use **AlertType**, **startTime**, and **endTime** to query the `CloudAppEvents` table to get all the user activities that contributed to the alert. Use this query to identify the underlying activities:

```kusto
let Alert = SecurityAlert 
| where TimeGenerated  > ago(30d) 
| where SystemAlertId == "" // insert the systemAlertID here 
CloudAppEvents 
| extend correlationId = parse_json(tostring(RawEventData.Data)).cid
| join kind=inner Alert on $left.correlationId == $right.AlertType 
| where RawEventData.CreationTime > StartTime and RawEventData.CreationTime < EndTime
```

## Related articles

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)
