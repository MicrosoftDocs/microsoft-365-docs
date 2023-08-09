---
title: What's new in Microsoft Defender for Endpoint on Windows
description: Learn about the latest feature releases of Microsoft Defender for Endpoint on Windows Client and Server.
keywords: microsoft, defender, Microsoft Defender for Endpoint, windows, windows client, windows server, whats new
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: v-mathavale
author: v-mathavale
ms.localizationpriority: medium
ms.date: 05/14/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: reference
ms.subservice: mde
---

# What's new in Microsoft Defender for Endpoint on Windows

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink).

All updates contain:
- Performance improvements
- Serviceability improvements
- Integration improvements (Cloud, [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804))

## May-2023 (Release version: 10.8295.22621.1023)

|OS  |KB  |Release version  |
|---------|---------|---------|
|Windows Server 2012 R2, 2016 |[KB 5005292](https://support.microsoft.com/en-us/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac)|10.8295.22621.1023|
  
**What's new**

- Supports new security settings management capabilities

## Jan/Feb-2023 (Release version: 10.8295.22621.1019)

|OS  |KB  |Release version  |
|---------|---------|---------|
|Windows Server 2012 R2, 2016 |[KB 5005292](https://support.microsoft.com/en-us/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac)|10.8295.22621.1019|
  
**What's new**

- Improved command and control security, quality fixes

## Dec-2022 (Release version: 10.8210.22621.1016)

|OS  |KB  |Release version  |
|---------|---------|---------|
|Windows Server 2012 R2, 2016 |[KB 5005292](https://support.microsoft.com/en-us/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac)|10.8210.22621.1016|
  
**What's new**

- Bug fixes and stability improvements

## Aug-2022 (Release version: 10.8210.*)

|OS  |KB  |Release version  |
|---------|---------|---------|
|Windows Server 2012 R2, 2016 |[KB 5005292](https://support.microsoft.com/en-us/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac)|10.8210.22621.1011|
|Windows 11 21H2 (Cobalt)<br> (Windows 11 SV 21H2)     | [KB 5016691](https://support.microsoft.com/en-us/topic/august-25-2022-kb5016691-os-build-22000-918-preview-59097044-915a-49a0-8870-49823236adbd)        | 10.8210.22000.918        |
|Server 2022 (Iron)     | [KB 5016693](https://support.microsoft.com/en-us/topic/august-16-2022-kb5016693-os-build-20348-946-preview-ee90d0bc-c162-4124-b7c6-f963ee7b17ed)        |10.8210.20348.946         |
|Windows 10 20H2/21H1/21H2<br> Windows Server 20H2  (Vibranium)     | [KB 5016688](https://support.microsoft.com/en-us/topic/august-26-2022-kb5016688-os-builds-19042-1949-19043-1949-and-19044-1949-preview-ec31ebdc-067d-44dd-beb0-eabcc984d843)       | 10.8210.19041.1949        |
|Windows Server 2019 (RS5)   |[KB 5016690](https://support.microsoft.com/en-us/topic/august-23-2022-kb5016690-os-build-17763-3346-preview-b81d1ac5-75c7-42c1-b638-f13aa4242f42)       |10.8210.17763.3346         |

**What's new**

- Added a fix to resolve a missing intermediate certificate issue with the use of "TelemetryProxyServer" on Windows Server 2012 R2 running the unified agent.
- Enhanced Endpoint DLP with ability to protect password protected and encrypted files and not label files.
- Enhanced Endpoint DLP with support for context data in audit telemetry (short evidence).
- Improved Microsoft Defender for Endpoint client authentication support for VDI devices.
- Enhanced Microsoft Defender for Endpoint's ability to identify and intercept ransomware and advanced attacks.
- The Contain feature now supports more desktop and server versions to perform the Contain action and block discovered devices when these are contained.
- Expanded the troubleshooting mode feature to additional desktop and server versions. For a complete list of supported OS versions and more information about prerequisites, see [Get started with troubleshooting mode in Microsoft Defender for Endpoint](enable-troubleshooting-mode.md).
- Live Response improvements include reduced session creation latency when using proxies, an undo Remediation manual command, support for OneDrive share in FindFile action, and improved isolation and stability.
- [Security Management for Microsoft Defender for Endpoint](security-config-management.md#configure-your-tenant-to-support-microsoft-defender-for-endpoint-security-configuration-management) now provides the ability to sync the device configuration on demand instead of waiting for a specific cadence.

 > [!NOTE] 
 > Update package KB5005292 is on a gradual rollout schedule through Windows Update. Towards the end of this schedule, the package will be published completely, including to the update catalog for manual download. For the current release, this will be in the second half of October. If you want to test the package sooner, you can use [gradual rollout controls for platform updates](configure-updates.md) to select the Preview channel.
  

See also: 
- [What's new in Microsoft Defender for Endpoint](whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)
- [What's new in Defender for Endpoint on Linux](linux-whatsnew.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
