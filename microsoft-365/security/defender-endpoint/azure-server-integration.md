---
title: Onboard Windows servers to the Microsoft Defender for Endpoint service
description: Onboard Windows servers so that they can send sensor data to the Microsoft Defender for Endpoint sensor.
keywords: onboard server, server, 2012r2, 2016, 2019, server onboarding, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.author: macapara
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Onboard Windows servers to the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)] Integration with Azure Defender
Defender for Endpoint can integrate with Azure Defender to provide a comprehensive Windows server protection solution. With this integration, Azure Defender can use the power of Defender for Endpoint to provide improved threat detection for Windows Servers.

The following capabilities are included in this integration:

- Automated onboarding - Defender for Endpoint sensor is automatically enabled on Windows Servers that are onboarded to Azure Defender. For more information on Azure Defender onboarding, see [Use the integrated Microsoft Defender for Endpoint license](https://docs.microsoft.com/azure/security-center/security-center-wdatp).

    > [!NOTE]
    > The integration between Azure Defender for Servers and Microsoft Defender for Endpoint has been expanded to support [Windows Server 2019 and Windows Virtual Desktop (WVD)](https://docs.microsoft.com/azure/security-center/release-notes#microsoft-defender-for-endpoint-integration-with-azure-defender-now-supports-windows-server-2019-and-windows-10-virtual-desktop-wvd-in-preview).

- Windows servers monitored by Azure Defender will also be available in Defender for Endpoint - Azure Defender seamlessly connects to the Defender for Endpoint tenant, providing a single view across clients and servers.  In addition, Defender for Endpoint alerts will be available in the Azure Defender console.
- Server investigation -  Azure Defender customers can access Microsoft Defender Security Center to perform detailed investigation to uncover the scope of a potential breach.

> [!IMPORTANT]
> - When you use Azure Defender to monitor servers, a Defender for Endpoint tenant is automatically created (in the US for US users, in the EU for European and UK users).<br>
Data collected by Defender for Endpoint is stored in the geo-location of the tenant as identified during provisioning.
> - If you use Defender for Endpoint before using Azure Defender, your data will be stored in the location you specified when you created your tenant even if you integrate with Azure Defender at a later time.
> - Once configured, you cannot change the location where your data is stored. If you need to move your data to another location, you need to contact Microsoft Support to reset the tenant. <br>
Server endpoint monitoring utilizing this integration has been disabled for Office 365 GCC customers.
