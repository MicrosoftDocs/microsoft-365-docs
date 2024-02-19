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
ms.date: 05/06/2021
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
> Microsoft Defender for Endpoint - Endpoint Protection and Response (EDR) does not adhere to the Microsoft Defender Antivirus Exclusions settings.
For optimal protection Microsoft Defender for Endpoint devices whether Microsoft Defender Antivirus is the active anti-malware or not. You must configure the following settings:

- Security intelligence updates (which will also update the scan engine)

- Platform Update updates

For more information, see [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).

If an onboarded device is protected by a third-party anti-malware client, Microsoft Defender Antivirus on that endpoint will enter into [passive mode](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-compatibility).

Microsoft Defender Antivirus will continue to receive updates, and the *msmpeng.exe* process will be listed as a running a service. But, it won't perform real-time protection scans, scheduled scans, on-demand scans and doesn't replace the running third-party anti-malware client.

The Microsoft Defender Antivirus interface will be disabled. Users on the device won't be able to use Microsoft Defender Antivirus to perform on-demand scans or configure most options such as Attack Surface Reduction (ASR) rules, Network Protection, Indicators - File/IP address/URL/Certificates allow/block, Web Content Filtering, Controlled Folder Access, etc...

For more information, see the [Microsoft Defender Antivirus and Defender for Endpoint compatibility topic](microsoft-defender-antivirus-compatibility.md).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
