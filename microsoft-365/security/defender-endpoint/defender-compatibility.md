---
title: Antivirus solution compatibility with Defender for Endpoint
description: Learn about how Windows Defender works with Microsoft Defender for Endpoint. Also learn how Defender for Endpoint works when a third-party anti-malware client is used.
search.appverid: met150
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-ngp
ms.topic: conceptual
ms.date: 02/18/2024
ms.subservice: ngp
---

# Antivirus solution compatibility with Microsoft Defender for Endpoint

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-defendercompat-abovefoldlink)

The Microsoft Defender for Endpoint agent depends on Microsoft Defender Antivirus for some capabilities such as file scanning.

> [!IMPORTANT]
> Endpoint detection and response (EDR) in Defender for Endpoint does not adhere to the Microsoft Defender Antivirus Exclusions settings.

For optimal protection, configure the following settings for devices that are onboarded to Defender for Endpoint, whether Microsoft Defender Antivirus is the active antimalware solution or not:

- Security intelligence updates (which also updates the scan engine)
- Platform Update updates

For more information, see [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).

If an onboarded device is protected by a non-Microsoft anti-malware client, Microsoft Defender Antivirus goes into [passive mode](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-compatibility). In this scenario, Microsoft Defender Antivirus continues to receive updates, and the `msmpeng.exe` process is listed as a running a service. But, it doesn't perform real-time protection scans, scheduled scans, or on-demand scans, and and doesn't replace the running non-Microsoft antimalware client. The Microsoft Defender Antivirus user interface is disabled. Device users can't use Microsoft Defender Antivirus to perform on-demand scans or configure most options such as Attack Surface Reduction (ASR) rules, Network Protection, Indicators - File/IP address/URL/Certificates allow/block, Web Content Filtering, Controlled Folder Access, and so forth. 

For more information, see the [Microsoft Defender Antivirus and Defender for Endpoint compatibility topic](microsoft-defender-antivirus-compatibility.md).

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
