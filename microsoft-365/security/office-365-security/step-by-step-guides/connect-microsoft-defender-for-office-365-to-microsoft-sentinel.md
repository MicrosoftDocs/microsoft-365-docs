---
title: Connect Microsoft Defender for Office 365 to Microsoft Sentinel
description: The steps to connect Microsoft Defender for Office 365 to Sentinel. Add your Microsoft Defender for Office 365 data (*and* data from the rest of the Microsoft 365 Defender suite), including incidents, to Microsoft Sentinel for a single pane of glass into your security.
search.product:
ms.service: microsoft-365-security
ms.subservice: mdo
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 1/31/2023
---

# Connect Microsoft Defender for Office 365 to Microsoft Sentinel

You can ingest your Microsoft Defender for Office 365 data (*and* data from the rest of the Microsoft 365 Defender suite), including incidents, into Microsoft Sentinel.

Take advantage of rich security information events management (SIEM) combined with data from other Microsoft 365 sources, synchronization of incidents and alerts, and advanced hunting.

## What you will need

- Microsoft Defender for Office 365 Plan 2 or higher. (Included in E5 plans)
- Microsoft Sentinel [Quickstart guide](/azure/sentinel/quickstart-onboard).
- Sufficient permissions (Security Administrator in M365 & Read / Write permissions in Sentinel).

## Add the Microsoft 365 Defender Connector

1. [Login to the Azure Portal](https://portal.azure.com) and navigate to **Microsoft Sentinel** \> Pick the relevant workspace to integrate with Microsoft 365 Defender.
    1. On the left-hand navigation menu underneath the heading **Configuration** \> choose **Data connectors**.
1. When the page loads, **search for** Microsoft 365 Defender **and select the Microsoft 365 Defender connector**.
3. On the right-hand flyout, select **Open Connector Page**.
4. Under the **Configuration** section of the page that loads, select **Connect incidents & alerts**, leaving Turn off all Microsoft incident creation rules for these products ticked.
5. Scroll to **Microsoft Defender for Office 365** in the **Connect events** section of the page. Select **EmailEvents, EmailUrlInfo, EmailAttachmentInfo & EmailPostDeliveryEvents** then  **Apply Changes** at the bottom of the page. (Choose tables from other Defender products if helpful and applicable, during this step.)

## Next Steps

Admins will now be able to see incidents, alerts, and raw data in Microsoft Sentinel and use this data for *advanced hunting*, pivoting on existing and new data from Microsoft Defender.

## More Information

[Connect Microsoft 365 Defender data to Microsoft Sentinel | Microsoft Docs](/azure/sentinel/connect-microsoft-365-defender?tabs=MDE)

[Connect Microsoft Teams to Microsoft Sentinel](/microsoftteams/teams-sentinel-guide)

