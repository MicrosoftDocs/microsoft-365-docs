---
title: Supported Microsoft Defender for Endpoint response APIs
description: Learn about the specific response-related Microsoft Defender for Endpoint API calls.
keywords: response apis, graph api, supported apis, actor, alerts, device, user, domain, ip, file
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: conceptual
ms.subservice: mde
---

# Supported Microsoft Defender for Endpoint query APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> [!TIP]
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-supported-response-apis-abovefoldlink)

Learn about the supported response-related API calls you can run and details such as the required request headers, and expected response from the calls.

## In this section

<br>

****

|Topic|Description|
|---|---|
|Collect investigation package|Run this API to collect an investigation package from a device.|
|Isolate device|Run this API to isolate a device from the network.|
|Unisolate device|Remove a device from isolation.|
|Restrict code execution|Run this API to contain an attack by stopping malicious processes. You can also lock down a device and prevent subsequent attempts of potentially malicious programs from running.|
|Unrestrict code execution|Run this to reverse the restriction of applications policy after you have verified that the compromised device has been remediated.|
|Run antivirus scan|Remotely initiate an antivirus scan to help identify and remediate malware that might be present on a compromised device.|
|Stop and quarantine file|Run this call to stop running processes, quarantine  files, and delete persistency such as registry keys.|
|Request sample|Run this call to request a sample of a file from a specific device. The file will be collected from the device and uploaded to a secure storage.|
|Block file|Run this API to prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware.|
|Unblock file|Allow a file run in the organization using Microsoft Defender Antivirus.|
|Get package SAS URI|Run this API to get a URI that allows downloading an investigation package.|
|Get MachineAction object|Run this API to get MachineAction object.|
|Get MachineActions collection|Run this to get MachineAction collection.|
|Get FileActions collection|Run this API to get FileActions collection.|
|Get FileMachineAction object|Run this API to get FileMachineAction object.|
|Get FileMachineActions collection|Run this API to get FileMachineAction collection.|
|
