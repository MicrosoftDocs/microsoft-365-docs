---
title: Investigate alerts in Microsoft 365 Defender
description: Investigate incidents seen across devices, users, and mailboxes.
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
**Applies to:**

- Microsoft 365 Defender

Alerts are the basis of all incidents and indicate the occurrence of malicious or suspicious events in your environment. While they provide in-depth information about unique events, alerts are typically part of a broader attack and provide clues to an incident. 

In Microsoft 365 Defender, related alerts are aggregated together to form incidents. Incidents will always provide the broader context of an attack, however, investigating alerts can be valuable when deeper analysis is required or when specific remediation action is needed. 

The alerts queue provides unparalleled visibility into alerts across identities, endpoints, data, apps, email and collaboration tools.


## Using alert pages in investigations
From the alerts tab of any incident page, selecting an alert brings you to the individual alert pages. The alert page is composed of three sections: impacted assets, alert story, and the details pane.

![Image of sample alert page](../../media/newalertpage2.png)

### Analyze impacted assets
The impacted assets section lists cards of mailboxes, devices and users affected by this alert. Selecting any of the assets populates the details side pane with information, including other alerts that occurred involving the assets, if any.

Selecting the three-dot icon (**...**) beside the cards or below the details pane allows you to see available actions like opening the specific asset page or performing specific remediation steps.


### Trace an alert's role in the alert story
The alert story displays all assets or entities related to the alert, interconnected by a process tree view. The alert in the title will be the one in focus when you first land on your selected alert's page. Assets in the alert story are expandable and clickable. They provide additional information and expedite response by allowing you to take actions right in the context of the alert page. 

> [!NOTE]
> The alert story section may contain more than one alert, with additional alerts related to the same execution tree appearing before or after the alert you've selected.

### View more alert information in the details pane

The details pane shows the details of the selected alert at first, with details and actions related to this alert. If you select any of the impacted assets or entities in the alert story, the details pane will change to provide contextual information and actions for the selected object.

Once you've selected an entity of interest, the details pane will change to display information about the selected entity type, historic information when it's available, and offer controls to take action on this entity directly from the alert page.

Once you're done investigating, go back to the alert you started with, mark the alert's status as Resolved and classify it as either False alert or True alert. Classifying alerts helps tune this capability to provide more true alerts and less false alerts.

If you classify it as a true alert, you can also select a determination, as shown in the image below.

If you are experiencing a false alert with a line-of-business application, create a suppression rule to avoid this type of alert in the future.

## Manage the unified alert queue

Selecting **Alerts** under Incidents & Alerts in the Microsoft 365 security center navigation pane brings you to the unified alert queue. Alerts from different Microsoft security solutions like Microsoft Defender for Endpoint, Microsoft Defender for Office 365, and Microsoft 365 Defender appear in this section. 

![Image of sample alert page](../../media/unifiedalertqueue.png)

The Alerts queue shows a list of alerts that were flagged in your network. By default, the queue displays alerts seen in the last 30 days in a grouped view. The most recent alerts are showed at the top of the list helping you see the most recent alerts first.

On the top navigation, you can:

- Apply filters
- Export data
- Customize columns to add or remove columns

You can also filter alerts according to different criteria:

- Severity
- Status
- Category
- Detection source or service source
- Policy
- Impacted assets
- First activity
- Last activity


To start an investigation on an incident, read [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md)
## Related topics

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)