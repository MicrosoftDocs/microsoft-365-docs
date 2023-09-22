---
title: Microsoft Defender for Endpoint demonstration scenarios
description: Lists Microsoft Defender for Endpoint demonstration scenarios that you can run.
keywords: demonstration, Microsoft Defender for Endpoint demonstration, anti-Malware demonstration, Cloud-delivered protection, Block at First Sight (BAFS), Potentially unwanted applications (PUA)s, Microsoft security intelligence VDI, VDI security, Attack Surface Reduction (ASR) rules demonstration, Controlled folder access demonstration, Exploit Protection, Network Protection, Microsoft Defender SmartScreen, edge SmartScreen, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
- demo
ms.topic: article
ms.subservice: mde
ms.date: 10/21/2022
---

# Microsoft Defender for Endpoint - demonstration scenarios

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The following demonstration scenarios will help you learn about the capabilities of Microsoft Defender for Endpoint on Windows (Mac and Linux are out of scope). Demonstration scenarios are provided for the following Microsoft Defender for Endpoint protection areas:

:::image type="content" source="images/microsoft-defender-for-endpoint-cloud-protection.png" alt-text="Shows the areas of Microsoft Defender for Endpoint demonstration scenarios covered in this collection" lightbox="images/microsoft-defender-for-endpoint-cloud-protection.png":::

- Attack surface protection (**ASR**)
- Next Generation Protection (**NGP**)
- Endpoint detection and response (**EDR**)

> [!NOTE]
> None of the sample files or _suspicious_ links provided in this collection are actually malicious; all links and demonstration files are harmless.
>
> We encourage you to read [Microsoft Defender Antivirus documentation](next-generation-protection.md), and to download the [Evaluation guide](evaluate-microsoft-defender-antivirus.md).

## Demonstrations

The following table lists the available demonstrations alphabetically, with their associated protection area.

| # | Demonstration name | Protection area | Description |
|:--|:---|:---|:---|
| 1 | [App reputation demonstration](defender-endpoint-demonstration-app-reputation.md) | NGP | Navigate to the app reputation page to see the demonstration scenario using Microsoft Edge. |
| 2 | [Attack surface reduction rules demonstrations](defender-endpoint-demonstration-attack-surface-reduction-rules.md) | ASR | Download sample files to trigger each ASR rule. |
| 3 | [Block at First Sight (BAFS) demonstration](defender-endpoint-demonstration-block-at-first-sight-bafs.md) | NGP | With the BAFS feature in Microsoft Defender Antivirus, newly discovered files are analyzed and - if needed - blocked. |
| 4 | [Cloud-delivered protection demonstration](defender-endpoint-demonstration-cloud-delivered-protection.md) | NGP |  Confirm that cloud-delivered protection is working properly on your computer. |
| 5 | [Controlled folder access (CFA) demonstration (block script)](defender-endpoint-demonstration-controlled-folder-access-test-tool.md) | ASR | Download the CFA test tool. |
| 6 | [Controlled folder access (CFA) demonstrations (block ransomware)](defender-endpoint-demonstration-controlled-folder-access.md) | ASR | Download and execute a sample file to trigger CFA ransomware protection. |
| 7 | [Exploit protection (EP) demonstrations](defender-endpoint-demonstration-exploit-protection.md) | ASR | Apply custom exploit protection settings. |
| 8 | [Network protection demonstrations](defender-endpoint-demonstration-network-protection.md) | ASR | Navigate to a suspicious URL to trigger network protection. |
| 9 | [Potentially unwanted applications (PUA) demonstration](defender-endpoint-demonstration-potentially-unwanted-applications.md) | NGP | Confirm that potentially unwanted applications (PUAs) are being blocked on your network by downloading a fake (safe) PUA file. |
| 10 | [URL reputation demonstrations](defender-endpoint-demonstration-smartscreen-url-reputation.md) | NGP | Navigate to the URL Reputation page to see the demonstration scenarios using Microsoft Edge. |

## See also

[Attack surface protection \(ASR\) overview](overview-attack-surface-reduction.md)
[Test attack surface reduction rules](attack-surface-reduction-rules-deployment-test.md)
[Next Generation Protection \(NGP\) overview](next-generation-protection.md)
[Endpoint detection and response \(EDR\) overview](overview-endpoint-detection-response.md)
[Microsoft Defender for Endpoint security blog](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bg-p/MicrosoftDefenderATPBlog)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
