---
title: Investigate alerts in Microsoft 365 Defender
description: Investigate alerts seen across devices, users, and mailboxes.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---
# Investigate alerts in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Alerts are the basis of all incidents and indicate the occurrence of malicious or suspicious events in your environment. Alerts are typically part of a broader attack and provide pieces of clues about an incident.

In Microsoft 365 Defender, related alerts are aggregated together to form incidents. Incidents will always provide the broader context of an attack, however, investigating alerts can be valuable when deeper analysis is required. 



## Using alert pages in investigations

From the Alerts tab of any incident page, selecting an alert brings you to the individual alert pages. An alert page is composed of three sections: affected assets, alert story, and the details pane.

![Image of example alert page](../../media/new-alert-page2.png)

Throughout an alert page, you can select the three-dot icon (**...**) beside any entity so you can see available actions like opening the specific asset page or doing specific remediation steps.

### Analyze affected assets
The affected assets section lists mailboxes, devices, and users affected by this alert. Selecting any of the asset cards populates the details side pane with information, including other alerts that occurred involving the assets, if any.


### Trace an alert's role in the alert story
The alert story displays all assets or entities related to the alert in a process tree view. The alert in the title is the one in focus when you first land on your selected alert's page. Assets in the alert story are expandable and clickable. They provide additional information and expedite response by allowing you to take actions right in the context of the alert page. 

> [!NOTE]
> The alert story section may contain more than one alert, with additional alerts related to the same execution tree appearing before or after the alert you've selected.

### View more alert information in the details pane

The details pane shows the details of the selected alert at first, with details and actions related to it. If you select any of the affected assets or entities in the alert story, the details pane changes to provide contextual information and actions for the selected object.

Once you've selected an entity of interest, the details pane changes to display information about the selected entity type, historic information when it's available, and options to take action on this entity directly from the alert page.

### Manage alerts

Once you're done investigating the alerts, you can go back to the alert you started with, mark the alert's status as Resolved and classify it as either a False alert or True alert. Classifying alerts helps tune your product to provide more true alerts and less false alerts.

> [!NOTE]
> One way of managing alerts it through the use of tags. The tagging capability for Microsoft Defender for Office 365 in incrementally being rolled out and is currently in preview. <br>
> Currently, modified tag names are only applied to alerts created *after* the update. Alerts that were generated prior to the modification will not reflect the updated tag name. 


## Manage the unified alert queue

Selecting Alerts under Incidents & Alerts in the Microsoft 365 security center navigation pane brings you to the unified alert queue. Alerts from different Microsoft security solutions like Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and Microsoft 365 Defender appear in this section. 

![Image of sample alert page](../../media/unified-alert-queue.png)

The Alerts queue shows a list of alerts that were flagged in your network. By default, the queue displays alerts seen in the last 30 days. The most recent alerts are shown at the top of the list helping you see the most recent alerts first.

> [!NOTE]
> At the time of launch, the unified alerts queue will only have 7 days’ worth of Microsoft Defender for Office 365 alerts available. 
The queue will continue to build over time. If you need to triage alerts prior to the launch of the unified alerts queue, use the alerts queue in the [Security and Compliance Center](https://protection.office.com/viewalerts).


On the top navigation, you can:

- Apply filters
- Customize columns to add or remove columns
- Export data

You can also filter alerts according to different criteria:

- Severity
- Status
- Category
- Detection source
- Policy
- Impacted assets
- First activity
- Last activity


To start an investigation on an incident, read [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md)
## See also

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
