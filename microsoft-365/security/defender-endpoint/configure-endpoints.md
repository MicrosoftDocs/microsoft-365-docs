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
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Onboarding tools and methods for Windows devices in Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft 365 Endpoint data loss prevention (DLP)](/microsoft-365/compliance/endpoint-dlp-learn-about)
- [Microsoft 365 Insider risk management](/microsoft-365/compliance/insider-risk-management)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

Devices in your organization must be configured so that the Defender for Endpoint service can get sensor data from them. There are various methods and deployment tools that you can use to configure the devices in your organization.

In general, you'll identify the Windows device you're onboarding, then follow the corresponding tool appropriate to the device or your environment.

![Image of onboarding tools and methods](images/onboarding-config-tools.png)

## Endpoint onboarding tools
Depending on the Windows endpoint you want to onboard, use the corresponding tool or method described in the following table.

Windows device | Onboarding tool or method
:---|:---
|<ul><li> Windows 10</li> <li>Windows Server 1803 and 2019</li> <li>Windows Server 2012 R2 and 2016<sup>[[1](#fn1)]<sup></li></ul>  |   [Local script (up to 10 devices)](configure-endpoints-script.md)<br>   [Group Policy](configure-endpoints-gp.md)<br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [Microsoft Endpoint Manager/ Mobile Device Management (Intune)](configure-endpoints-mdm.md)<br>    [VDI scripts](configure-endpoints-vdi.md) <br><br> **NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.
|<ul><li> Windows Server 2008 R2 SP1 </li></ul>| [Microsoft Monitoring Agent (MMA)](onboard-downlevel.md) <br>[Onboard previous versions of Windows](onboard-downlevel.md) or [Azure Defender](/azure/security-center/security-center-wdatp) <br><br> **NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).  
|<ul><li> Windows 7 SP1 </li> <li>  Windows 7 SP1 Pro </li> <li>  Windows 8.1 Pro </li> <li> Windows 8.1 Enterprise</li></ul>  | [Microsoft Monitoring Agent (MMA)](onboard-downlevel.md) <br><br> **NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).



(<a id="fn1">1</a>) Windows Server 2016 and Windows Server 2012 R2 will need to be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).

Topic|Description
:---|:---
[Onboard devices using Group Policy](configure-endpoints-gp.md)|Use Group Policy to deploy the configuration package on devices.
[Onboard devices using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)|You can use either use Microsoft Endpoint Manager (current branch) version 1606 or Microsoft Endpoint Manager (current branch) version 1602 or earlier to deploy the configuration package on devices.
[Onboard devices using Mobile Device Management tools](configure-endpoints-mdm.md)|Use Mobile Device Management tools or Microsoft Intune to deploy the configuration package on device.
[Onboard devices using a local script](configure-endpoints-script.md)|Learn how to use the local script to deploy the configuration package on endpoints.
[Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)|Learn how to use the configuration package to configure VDI devices.

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpoints-belowfoldlink)


After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).