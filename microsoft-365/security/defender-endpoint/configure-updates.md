---
title: Create a custom gradual rollout process for monthly updates
description: Learn how to use supported tools to create a custom gradual rollout process for updates
keywords: update tools, gpo, intune, mdm, microsoft endpoint manager, policy, powershell
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
ms.technology: m365d
---

# Create a custom gradual rollout process for monthly updates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

To create your own custom gradual rollout process for monthly updates, you can use Microsoft Endpoint Manager, and PowerShell.


The following table lists the available group policy settings for configuring
update channels: 

| Setting title                                                                   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Location                                                                                                  |
|---------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Select monthly Microsoft Defender platform updates gradual rollout channel      | Enable this policy to specify when devices receive Microsoft Defender platform updates during the monthly gradual rollout.  <br><br>  Beta Channel: Devices set to this channel will be the first to receive new monthly updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in test environments only. <br><br> Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for validation environments.  <br><br>  If you disable or do not configure this policy, the device will remain in Current Channel (Default). Stay up to date automatically during the gradual release cycle. Suitable for most devices.  | Windows Components\Microsoft Defender Antivirus (Group Policy)  Or  Defender category (Settings catalog)  |
| Select monthly Microsoft Defender engine updates gradual rollout channel        | Enable this policy to specify when devices receive Microsoft Defender engine updates during the monthly gradual rollout.   <br><br>  Beta Channel: Devices set to this channel will be the first to receive new monthly updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in test environments only.  <br><br>  Current Channel (Preview): Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for validation environments.  <br><br>   If you disable or do not configure this policy, the device will remain in Current Channel (Default). Stay up to date automatically during the gradual release cycle. Suitable for most devices.    | Windows Components\Microsoft Defender Antivirus (Group Policy)  Or  Defender category (Settings catalog)  |
| Disable gradual rollout of Microsoft Defender updates - Current Channel: Broad  | Enable this policy to disable gradual rollout of Defender updates.   <br><br>  Current Channel (Broad): Devices set to this channel will be offered updates last during the gradual release cycle. Best for datacenter machines that only receive limited updates.   <br><br>  Note: This setting applies to both monthly as well as daily Defender updates and will override any previously configured channel selections for platform and engine updates.   <br><br>  If you disable or do not configure this policy, the device will remain in Current Channel (Default) unless specified otherwise in specific channels for platform and engine updates. Stay up to date automatically during the gradual release cycle. Suitable for most devices.                                                                                      | Windows Components\Microsoft Defender Antivirus (Group Policy)  Or  Defender category (Settings catalog)  |
          


## Microsoft Endpoint Manager 
Use the information and procedures in [Use custom settings for Windows 10 devices in Intune](https://docs.microsoft.com/mem/intune/configuration/custom-settings-windows-10) together with [Defender CSP](https://docs.microsoft.com/windows/client-management/mdm/defender-csp).




## PowerShell 

Use the `Set-MpPreference` cmdlet to configure roll out of the gradual updates. 

Use the following parameters:

- PlatformUpdatesChannel <br>
  **Parameters:**  Beta | Preview
    
- EngineUpdatesChannel <br>
  **Parameters:**  Beta | Preview

- DisableGradualRelease  <br>
  **Parameters:**  $True | $False

Example:

Use `Set-MpPreference -PlatformUpdatesChannel Beta` to configure platform updates to arrive from the Beta Channel.



For more information on the parameters and how to configure them, see [Set-MpPreference (Defender) | Microsoft Docs](https://docs.microsoft.com/powershell/module/defender/set-mppreference?view=windowsserver2019-ps).