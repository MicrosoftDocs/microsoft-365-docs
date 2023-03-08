---
title: Understand the client analyzer HTML report
description: Learn how to analyze the Microsoft Defender for Endpoint Client Analyzer HTML report
keywords: client analyzer report, html report, client analyzer
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/23/2021
---

# Understand the client analyzer HTML report

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

The client analyzer produces a report in HTML format. Learn how to review the report to identify potential sensor issues so that you can troubleshoot them.

Use the following example to understand the report.

 Example output from the analyzer on a machine onboarded to expired Org ID and failing to reach one of the required Microsoft Defender for Endpoint URLs:

:::image type="content" source="images/147cbcf0f7b6f0ff65d200bf3e4674cb.png" alt-text="The MDE Client Analyzer Results page" lightbox="images/147cbcf0f7b6f0ff65d200bf3e4674cb.png":::

- On top, the script version and script runtime are listed for reference
- The **Device Information** section provides basic OS and device identifiers to uniquely identify the device on which the analyzer has run.
- The **Endpoint Security Details** provides general information about Microsoft Defender for Endpoint-related processes including Microsoft Defender Antivirus and the sensor process. If important processes aren't online as expected,  the color will change to red.
  
-   The **Endpoint Security Details** provides general information about Microsoft Defender for Endpoint-related processes including Microsoft Defender Antivirus and the sensor process. If important processes aren't online as expected, the color will change to red.

    :::image type="content" source="images/85f56004dc6bd1679c3d2c063e36cb80.png" alt-text="The Check Results Summary page" lightbox="images/85f56004dc6bd1679c3d2c063e36cb80.png":::

-   On **Check Results Summary**, you'll have an aggregated count for error,
    warning, or informational events detected by the analyzer.

-   On **Detailed Results**, you'll see a list (sorted by severity) with
    the results and the guidance based on the observations made by the analyzer.

## Open a support ticket to Microsoft and include the Analyzer results

To include analyzer result files [when opening a support ticket](contact-support.md#open-a-service-request), make sure you use the **Attachments** section and include the
`MDEClientAnalyzerResult.zip` file:

:::image type="content" source="images/508c189656c3deb3b239daf811e33741.png" alt-text="An attachment prompt" lightbox="images/508c189656c3deb3b239daf811e33741.png":::

> [!NOTE]
> If the file size is larger than 25 MB, the support engineer assigned to your case will provide a dedicated secure workspace to upload large files for analysis.
