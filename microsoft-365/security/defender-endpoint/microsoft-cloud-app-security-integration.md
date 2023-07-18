---
title: Microsoft Defender for Cloud Apps integration overview
ms.reviewer:
description: Microsoft Defender for Endpoint integrates with Defender for Cloud Apps by forwarding all cloud app networking activities.
keywords: cloud, app, networking, visibility, usage
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 10/18/2018
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender for Cloud Apps in Defender for Endpoint overview

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Cloud Apps is a comprehensive solution that gives visibility into cloud apps and services by allowing you to control and limit access to cloud apps, while enforcing compliance requirements on data stored in the cloud. For more information, see [Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security).

> [!NOTE]
> This feature is available with an E5 license for [Enterprise Mobility + Security](https://www.microsoft.com/cloud-platform/enterprise-mobility-security) on devices running Windows 10 version 1809 or later, or Windows 11.

## Microsoft Defender for Endpoint and Defender for Cloud Apps integration

Defender for Cloud Apps discovery relies on cloud traffic logs being forwarded to it from enterprise firewall and proxy servers. Microsoft Defender for Endpoint integrates with Defender for Cloud Apps by collecting and forwarding all cloud app networking activities, providing unparalleled visibility to cloud app usage. The monitoring functionality is built into the device, providing complete coverage of network activity.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4r4yQ]

The integration provides the following major improvements to the existing Defender for Cloud Apps discovery:

- Available everywhere - Since the network activity is collected directly from the endpoint, it's available wherever the device is, on or off corporate network, as it's no longer depended on traffic routed through the enterprise firewall or proxy servers.

- Works out of the box, no configuration required - Forwarding cloud traffic logs to Defender for Cloud Apps requires firewall and proxy server configuration. With the Defender for Endpoint and Defender for Cloud Apps integration, there's no configuration required. Just switch it on in Microsoft 365 Defender settings and you're good to go.

- Device context - Cloud traffic logs lack device context. Defender for Endpoint network activity is reported with the device context (which device accessed the cloud app), so you are able to understand exactly where (device) the network activity took place, in addition to who (user) performed it.

For more information about cloud discovery, see [Working with discovered apps](/cloud-app-security/discovered-apps).

## Related topic

- [Configure Microsoft Defender for Cloud Apps integration](microsoft-cloud-app-security-config.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
