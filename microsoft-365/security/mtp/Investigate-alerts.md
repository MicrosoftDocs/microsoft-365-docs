---
title: Alerts in Microsoft 365 Defender
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
# Investigate alerts
**Applies to:**

- Microsoft 365 Defender

## Investigate alerts 
From the alerts tab of any incident page, selecting an alert brings you to the individual alert pages. The alert page is composed of 3 sections:

### Take action on affected assets
Affected assets lists cards of devices and users affected by this alert that are clickable for further information and actions.

### Investigate the alert story
The alert story displays all entities related to the alert, interconnected by a process tree view. The alert in the title will be the one in focus when you first land on your selected alert's page. Entities in the alert story are expandable and clickable, to provide additional information and expedite response by allowing you to take actions right in the context of the alert page. 

Expand entities to view details at a glance. Selecting an entity will switch the context of the details pane to this entity, and will allow you to review further information, as well as manage that entity. Selecting ... to the right of the entity card will reveal all actions available for that entity. These same actions appear in the details pane when that entity is in focus.

> [!NOTE]
> The alert story section may contain more than one alert, with additional alerts related to the same execution tree appearing before or after the alert you've selected.

### Take action on alerts in the details pane

The details pane** will show the details of the selected alert at first, with details and actions related to this alert. If you select any of the affected assets or entities in the alert story, the details pane will change to provide contextual information and actions for the selected object.

Once you've selected an entity of interest, the details pane will change to display information about the selected entity type, historic information when it's available, and offer controls to take action on this entity directly from the alert page.

Once you're done investigating, go back to the alert you started with, mark the alert's status as Resolved and classify it as either False alert or True alert. Classifying alerts helps tune this capability to provide more true alerts and less false alerts.

If you classify it as a true alert, you can also select a determination, as shown in the image below.

If you are experiencing a false alert with a line-of-business application, create a suppression rule to avoid this type of alert in the future.

## Manage the unified alert queue