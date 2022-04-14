---
title: Windows security updates report
description:  Explains the info presented in this report
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Windows security updates report

This report provides an overview of the deployment progress, of a given Windows security update, for your Microsoft Managed Desktop devices.

At the beginning of each security update release cycle, Microsoft Managed Desktop takes a snapshot of all the enrolled devices. The deployment target is set to 95% of **Active** devices from that population. The graph shows your deployment progress for a selected release date compared to the Microsoft Managed Desktop average.

While we focus on the Active population, you can also pivot this report to show your **Active + Synced** and **Out of sync** device populations. You can view the deployment progress for previous releases by changing the available filters, but device level details are only available for the current release. Device information in the table following the graph is also exportable for offline analysis.

:::image type="content" source="../../media/mmd-security-updates.png" alt-text="Report showing update installation progress over time in upper left, filters in the upper right with a button to generate the report, and table of report details along the bottom":::

Typically, Microsoft releases security updates every second Tuesday of the month. However, they can be released at other times when needed. Each release adds important updates for known security vulnerabilities

Microsoft Managed Desktop ensures 95% of its active devices are updated with the latest available security update every month. When security updates are released, at other times to urgently address new threats, Microsoft Managed Desktop deploys these updates similarly.

## Status categories

We categorize the status of security update versions using the following terms:

| Status of security update | Description |
| ------ | ------ |
| Current | Devices that are running the update released in the current month. |
| Previous | Devices running the update that was released in the previous month. |
| Older | Devices running any security update released prior to the previous month. |

> [!NOTE]
> There should only be a few devices in the **Older** category. A large or growing **Older** population probably indicates a systemic problem that you should report to Microsoft Managed Desktop for investigation.
