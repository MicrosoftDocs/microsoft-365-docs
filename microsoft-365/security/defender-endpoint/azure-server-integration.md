---
title: Integration with Microsoft Defender for Cloud
description: Learn about Microsoft Defender for Endpoint integration with Microsoft Defender for Cloud
keywords: integration, server, azure, 2012r2, 2016, 2019, server onboarding, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.mktglfcycl: deploy
ms.sitesec: library
ms.service: microsoft-365-security
ms.subservice: mde
ms.pagetype: security
author: mjcaparas
ms.author: macapara
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.date: 05/03/2021
---

# Integration with Microsoft Defender for Cloud

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender for Cloud

Microsoft Defender for Endpoint can integrate with Microsoft Defender for Cloud to provide a comprehensive Windows server protection solution. With this integration, Microsoft Defender for Cloud can use the power of Defender for Endpoint to provide improved threat detection for Windows Servers.

The following capabilities are included in this integration:

- Automated onboarding - Defender for Endpoint sensor is automatically enabled on Windows Servers that are onboarded to Microsoft Defender for Cloud. For more information on Microsoft Defender for Cloud onboarding, see [Use the integrated Microsoft Defender for Endpoint license](/azure/security-center/security-center-wdatp).

    > [!NOTE]
    > The integration between Microsoft Defender for servers and Microsoft Defender for Endpoint has been expanded to support [Windows Server 2019 and Windows Virtual Desktop (WVD)](/azure/security-center/release-notes#microsoft-defender-for-endpoint-integration-with-azure-defender-now-supports-windows-server-2019-and-windows-10-virtual-desktop-wvd-in-preview).

- Windows servers monitored by Microsoft Defender for Cloud will also be available in Defender for Endpoint - Microsoft Defender for Cloud seamlessly connects to the Defender for Endpoint tenant, providing a single view across clients and servers.  In addition, Defender for Endpoint alerts will be available in the Microsoft Defender for Cloud console.
- Server investigation - Microsoft Defender for Cloud customers can access the Microsoft 365 Defender portal to perform detailed investigation to uncover the scope of a potential breach.

> [!IMPORTANT]
>
> - When you use Microsoft Defender for Cloud to monitor servers, a Defender for Endpoint tenant is automatically created (in the US for US users, in the EU for European and UK users).
>   Data collected by Defender for Endpoint is stored in the geo-location of the tenant as identified during provisioning.
> - If you use Defender for Endpoint before using Microsoft Defender for Cloud, your data will be stored in the location you specified when you created your tenant even if you integrate with Microsoft Defender for Cloud at a later time.
> - Once configured, you cannot change the location where your data is stored. If you need to move your data to another location, you need to contact Microsoft Support to reset the tenant.
>   Server endpoint monitoring utilizing this integration has been disabled for Office 365 GCC customers.

## Related topics

- [Onboard previous versions of Windows](onboard-downlevel.md)
- [Onboard Windows Server 2012 R2, 2016, SAC version 1803, and 2019](configure-server-endpoints.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
