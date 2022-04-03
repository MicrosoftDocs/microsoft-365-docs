---
title: Vulnerable devices report - threat and vulnerability management
description: A report showing vulnerable device trends and current statistics. The goal is for you to understand the breath and scope of your device exposure.
keywords: Microsoft Defender for Endpoint-tvm vulnerable devices, Microsoft Defender for Endpoint, tvm, reduce threat & vulnerability exposure, reduce threat and vulnerability, monitor security configuration
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: article
ms.technology: mde
---

# Vulnerable devices report - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-portaloverview-abovefoldlink)

The report shows graphs and bar charts with vulnerable device trends and current statistics. The goal is for you to understand the breath and scope of your device exposure.

Access the report in the Microsoft 365 Defender portal by going to **Reports > Vulnerable devices**

There are two columns:

- Trends (over time). Can show the past 30 days, 3 months, 6 months, or a custom date range.
- Status (current information)

**Filter**: You can filter the data by vulnerability severity levels, exploit availability, vulnerability age, operating system platform, Windows 10 or Windows 11 version, or device group.

**Drill down**: If there is an insight you want to explore further, select the relevant bar chart to view a filtered list of devices in the Device inventory page. From there, you can export the list.

## Severity level graphs

Each device is counted only once according to the most severe vulnerability found on that device.

:::image type="content" source="images/tvm-report-severity.png" alt-text=" The graphs showing the current device vulnerability severity levels, and the levels over time." lightbox="images/tvm-report-severity.png":::

## Exploit availability graphs

Each device is counted only once based on the highest level of known exploit.

:::image type="content" source="images/tvm-report-exploit-availability.png" alt-text="The graphs showing current device exploit availability, and the availability over time" lightbox="images/tvm-report-exploit-availability.png":::

## Vulnerability age graphs

Each device is counted only once under the oldest vulnerability publication date. Older vulnerabilities have a higher chance of being exploited.

:::image type="content" source="images/tvm-report-age.png" alt-text="The graphs showing current device vulnerability age, and the age over time" lightbox="images/tvm-report-age.png":::

## Vulnerable devices by operating system platform graphs

The number of devices on each operating system that are exposed due to software vulnerabilities.

:::image type="content" source="images/tvm-report-os.png" alt-text="The graphs showing the current vulnerable devices by operating system platform, and the vulnerable devices by OS platforms over time" lightbox="images/tvm-report-os.png":::

## Vulnerable devices by Windows version graphs

The number of devices on each Windows 10 or Windows 11 version that are exposed due to vulnerable applications or OS.

:::image type="content" source="images/tvm-report-version.png" alt-text="The graphs showing the current vulnerable devices by Windows 10 version, and the vulnerable devices by Windows 10 version over time" lightbox="images/tvm-report-version.png":::

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Security recommendations](tvm-security-recommendation.md)
