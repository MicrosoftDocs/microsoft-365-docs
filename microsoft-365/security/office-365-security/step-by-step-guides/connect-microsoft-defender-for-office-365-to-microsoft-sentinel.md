---
title: Connect Microsoft Defender for Office 365 to Microsoft Sentinel
description: The steps to connect Microsoft Defender for Office 365 to Sentinel. Add your Microsoft Defender for Office 365 data (*and* data from the rest of the Microsoft Defender XDR suite), including incidents, to Microsoft Sentinel for a single pane of glass into your security.
ms.service: defender-office-365
f1.keywords:
  - NOCSH
author: chrisda
ms.author: chrisda
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 01/31/2023
---

# Connect Microsoft Defender for Office 365 to Microsoft Sentinel

You can ingest your Microsoft Defender for Office 365 data (*and* data from the rest of the Microsoft Defender XDR suite), including incidents, into Microsoft Sentinel.

Take advantage of rich security information events management (SIEM) combined with data from other Microsoft 365 sources, synchronization of incidents and alerts, and advanced hunting.

## What you need

- Microsoft Defender for Office 365 Plan 2 or higher. (Included in E5 plans)
- Microsoft Sentinel [Quickstart guide](/azure/sentinel/quickstart-onboard).
- Sufficient permissions (Security Administrator in Microsoft 365 & Read / Write permissions in Sentinel).

## Add the Microsoft Defender XDR Connector

1. [Sign in to the Azure portal](https://portal.azure.com) and navigate to **Microsoft Sentinel** \> Pick the relevant workspace to integrate with Microsoft Defender XDR.
1. In the navigation pane, under **Configuration**, go to **Data connectors**.
1. When the page loads, **search for** Microsoft Defender XDR **and select the Microsoft Defender XDR connector**.
1. On the right-hand flyout, select **Open Connector Page**.
1. Under the **Configuration** section of the page that loads, select **Connect incidents & alerts**, leaving **Turn off all Microsoft incident creation rules for these products** selected.
1. Scroll to **Microsoft Defender for Office 365** in the **Connect events** section of the page. Select **EmailEvents, EmailUrlInfo, EmailAttachmentInfo & EmailPostDeliveryEvents** then  **Apply Changes** at the bottom of the page. (Choose tables from other Defender products if helpful and applicable, during this step.)

## Next Steps

Admins are now able to see incidents, alerts, and raw data in Microsoft Sentinel and use this data for *advanced hunting*, pivoting on existing and new data from Microsoft Defender.

## More Information

[Connect Microsoft Defender XDR data to Microsoft Sentinel | Microsoft Docs](/azure/sentinel/connect-microsoft-365-defender?tabs=MDE).

[Connect Microsoft Teams to Microsoft Sentinel](/microsoftteams/teams-sentinel-guide).
