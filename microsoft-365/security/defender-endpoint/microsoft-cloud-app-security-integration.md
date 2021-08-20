---
title: Microsoft Cloud App Security integration overview
ms.reviewer:
description: Microsoft Defender for Endpoint integrates with Cloud App Security by forwarding all cloud app networking activities.
keywords: cloud, app, networking, visibility, usage
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 10/18/2018
ms.technology: mde
---

# Microsoft Cloud App Security in Defender for Endpoint overview

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Cloud App Security (Cloud App Security) is a comprehensive solution that gives visibility into cloud apps and services by allowing you to control and limit access to cloud apps, while enforcing compliance requirements on data stored in the cloud. For more information, see [Cloud App Security](/cloud-app-security/what-is-cloud-app-security).

> [!NOTE]
> This feature is available with an E5 license for [Enterprise Mobility + Security](https://www.microsoft.com/cloud-platform/enterprise-mobility-security) on devices running Windows 10 version 1809 or later.

## Microsoft Defender for Endpoint and Cloud App Security integration

Cloud App Security discovery relies on cloud traffic logs being forwarded to it from enterprise firewall and proxy servers. Microsoft Defender for Endpoint integrates with Cloud App Security by collecting and forwarding all cloud app networking activities, providing unparalleled visibility to cloud app usage. The monitoring functionality is built into the device, providing complete coverage of network activity.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4r4yQ]

The integration provides the following major improvements to the existing Cloud App Security discovery:

- Available everywhere - Since the network activity is collected directly from the endpoint, it's available wherever the device is, on or off corporate network, as it's no longer depended on traffic routed through the enterprise firewall or proxy servers.

- Works out of the box, no configuration required - Forwarding cloud traffic logs to Cloud App Security requires firewall and proxy server configuration. With the Defender for Endpoint and Cloud App Security integration, there's no configuration required. Just switch it on in Microsoft Defender Security Center settings and you're good to go.\

- Device context - Cloud traffic logs lack device context. Defender for Endpoint network activity is reported with the device context (which device accessed the cloud app), so you are able to understand exactly where (device) the network activity took place, in addition to who (user) performed it.

For more information about cloud discovery, see [Working with discovered apps](/cloud-app-security/discovered-apps).

## Related topic

- [Configure Microsoft Cloud App Security integration](microsoft-cloud-app-security-config.md)
