---
title: Onboarding tools and methods for Windows devices
description: Onboard Windows devices so that they can send sensor data to the Microsoft Defender for Endpoint sensor
keywords: Onboard Windows devices, group policy, endpoint configuration manager, mobile device management, local script, gp, sccm, mdm, intune
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
ms.technology: mde
---

# Onboarding tools and methods for Windows devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft 365 Endpoint data loss prevention (DLP)](/microsoft-365/compliance/endpoint-dlp-learn-about)
- [Microsoft 365 Insider risk management](/microsoft-365/compliance/insider-risk-management)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

Devices in your organization must be configured so that the Defender for Endpoint service can get sensor data from them. There are various methods and deployment tools that you can use to configure the devices in your organization.

In general, you'll identify the Windows device you're onboarding, then follow the corresponding tool appropriate to the device or your environment.

![Image of onboarding tools and methods](images/onboarding-config-tools.png)

## Endpoint onboarding tools
Depending on the Windows endpoint you want to onboard, use the corresponding tool or method described in the following table.

Windows device | Onboarding tool or method
:---|:---
|<ul><li> Windows 10</li> <li>Windows Server 1803 and 2019</li> <li>Windows Server 2012 R2 and 2016<sup>[[1](#fn1)]<sup></li></ul>  |   [Local script (up to 10 devices)](configure-endpoints-script.md)<br>   [Group Policy](configure-endpoints-gp.md)<br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [Microsoft Endpoint Manager/ Mobile Device Management (Intune)](configure-endpoints-mdm.md)<br>    [VDI scripts](configure-endpoints-vdi.md) <br><br> **NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.
|<ul><li> Windows Server 2008 R2 SP1 </li></ul>| [Microsoft Monitoring Agent (MMA)](onboard-server-2008r2.md#option-1-onboard-by-installing-and-configuring-microsoft-monitoring-agent-mma) or [Azure Defender](/azure/security-center/security-center-wdatp) <br><br> **NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).  
|<ul><li> Windows 7 SP1 </li> <li>  Windows 7 SP1 Pro </li> <li>  Windows 8.1 Pro </li> <li> Windows 8.1 Enterprise</li></ul>  | [Microsoft Monitoring Agent (MMA)](onboard-downlevel.md) <br><br> **NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).



(<a id="fn1">1</a>) Windows Server 2016 and Windows Server 2012 R2 will need to be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).


