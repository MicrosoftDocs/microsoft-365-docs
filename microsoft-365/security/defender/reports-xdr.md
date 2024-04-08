---
title: Defender experts for XDR report 
ms.reviewer:
description: Defender Experts for XDR includes an interactive, on-demand report that provides a clear summary of our expert analysts.
keywords: XDR, extended detection and response, managed detection and response in defender experts for XDR, Defender xdr reports, XDR report, impacted assets, avergae time to resolve incidents, view incidents, resolved directly
ms.service: defender-experts
ms.subservice: dex-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - essentials-manage
ms.topic: conceptual
search.appverid: met150
ms.date: 02/12/2024
---

# Get real-time visibility with Defender Experts for XDR reports

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)


Defender Experts for XDR includes an interactive, on-demand report that provides a clear summary of the work our expert analysts are doing on your behalf, aggregate information about your incident landscape, and granular details about specific incidents. Your service delivery manager (SDM) also uses the report to provide you with more context regarding the service during a monthly business review.

:::image type="content" source="../../media/xdr/defender-xdr-report.png" alt-text="Screenshot of Defender Experts for XDR report." lightbox="../../media/xdr/defender-xdr-report.png":::

Each section of the report is designed to provide more insights about the incidents our experts investigated and resolved in your environment in real time. You can also select the **Date range** to get detailed information about incidents based on severity, category, and understand the time taken to investigate and resolve an incident during a specific period.

## Understand the Defender Experts for XDR report

The topmost section of the Defender Experts for XDR report provides the percentage of incidents we resolved in your environment, providing you with transparency in our operations. This percentage is derived from the following figures, which are also presented in the report:

- **Investigated** – The number of active threats and other incidents from your incident queue that we triaged, investigated, or currently investigating within our scope.
- **Resolved** – The total number of investigated incidents that were closed.
- **Resolved directly** – The number of investigated incidents that we were able to close directly on your behalf.
- **Resolved with your help** – The number of investigated incidents that were resolved because of your action on one or more managed response tasks.

The **Average time to resolve incidents** section displays a bar chart of the average time, in minutes, our experts spent investigating and closing incidents in your environment and the average time you spent performing the required managed response actions.

The **Incidents by severity**, **Incidents by category**, and **Incidents by service source** sections break down resolved incidents by severity, attack technique, and Microsoft security service source, respectively. These sections let you identify potential attack entry points and types of threats detected in your environment, assess their impact, and develop strategies to mitigate and prevent them. Select **View incidents** to get a filtered view of the incident queue based on the selections you made in each of the two sections.

The **Most impacted assets** section shows the users and devices in your environment that were involved in the most number of incidents during your selected date range. You can see the volume of incidents each asset was involved in. Select an asset to get a filtered view of the incident queue based on the incidents that included the said asset.

### See also

- [Get started with Microsoft Defender Experts for XDR](get-started-xdr.md)
- [Managed detection and response](managed-detection-and-response-xdr.md)
- [Communicating with experts in the Microsoft Defender Experts for XDR service](communicate-defender-experts-xdr.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]