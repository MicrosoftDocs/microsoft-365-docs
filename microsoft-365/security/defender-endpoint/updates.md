---
title: Manage the gradual rollout process for monthly updates
description: Learn about the gradual update process and controls 
keywords: update, update process, controls, release
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

#  Manage the gradual rollout process for monthly updates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)


It is important to ensure that client components are up-to-date to deliver critical protection capabilities and prevent attacks. 

Capabilities are provided through several components: 

- [Endpoint Detection & Response](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response?view=o365-worldwide) 
- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10#microsoft-defender-antivirus-your-next-generation-protection) with [cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus) 
- [Attack Surface Reduction](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction?view=o365-worldwide)

Updates are released monthly using a gradual release process. This process helps to enable early failure detection to catch impact as it occurs and address it quickly before a larger rollout. 

> [!NOTE]
> For more information on how to control daily protection updates, see [Schedule Microsoft Defender Antivirus protection updates - Windows security | Microsoft Docs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/manage-protection-update-schedule-microsoft-defender-antivirus). Protection updates ensure that next-generation protection can defend against new threats, even if cloud-delivered protection is not available to the endpoint. 

## Gradual rollout model 

The following gradual rollout model is followed:

1. The first release goes out to Beta channel subscribers.
2. After validation, feedback, and fixes,  gradual rollout process is started in a throttled way and to Preview channel subscribers first.
3. Lastly the updates are released to the rest of the global population. 


## Customize your internal deployment process 

If your machines are receiving Microsoft Defender updates directly from Microsoft Update, the gradual rollout process may result in some of your machines receiving Microsoft Defender updates sooner than others.  

The same principle applies to machines receiving updates through for example, Windows Server Update Services (WSUS) or Microsoft Endpoint Configuration Manager (MECM, formerly known as SCCM); however, because WSUS and MECM have mechanisms to explicitly target updates and/or schedule the application of these updates, the cadence will be affected by that which is configured there even if these machines are eligible to receive them. 

For more information on how to use a solution like WSUS and MECM to manage distribution of updates, see [Manage Microsoft Defender Antivirus updates and apply baselines - Windows security | Microsoft Docs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus#product-updates).

## Update channels 
You can assign a machine to an update channel to define the cadence in which a machine receives monthly updates. 

For more information on how to configure updates, see [Create a custom gradual rollout process for monthly updates](configure-updates.md).

The following update channels are available: 

| Channel name                                                          | Description                                                                                                                                  | Application                                                                                                                                                                                                                                                                              |
|-----------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Beta Channel                                                          | Test updates before others                                                                                                                   | Devices set to this channel will be the first to receive new monthly updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in test environments only.  |
| Current Channel (Preview)                                             | Get Current Channel updates earlier during gradual release                                                                                   | Devices set to this channel will be offered updates earliest during the monthly gradual release cycle. Suggested for validation environments.                                                                                                                                            |
| Current Channel                                                       | Stay up to date automatically, gradual release (default)                                                                                     | If you disable or do not configure this policy, the device will remain in Current Channel (Default): Stay up to date automatically during the gradual release cycle. Suitable for most devices.                                                                                          |
| Current Channel (Broad): Disable gradual rollout of Defender updates  | Get updates last during gradual release                                                                                                      | Devices will be offered updates last during the monthly gradual release cycle. Best for datacenter machines that only received limited updates.  Note: this setting applies to all Defender updates                                                                                      |
| Custom                                                                |                                                                                                                                              |                                                                                                                                                                                                                                                                                          |
| Critical <br><br>  NOTE: <br>  Not a channel/GPO setting                              | Devices that are critical and will only receive updates once they have been vetted for a period of time by the majority of the organization  | For use in datacenter environments. Full control over update application. Requires an update management solution such as Windows Server Update Services or Microsoft Endpoint Configuration Manager.                                                                                     |



## Update guidance

In most cases, the recommended configuration when using Microsoft Update is to
allow endpoints to receive and apply monthly Defender updates as they
arrive. This provides the best balance between protection and possible impact
associated with the changes they can introduce. 

For environments where there is a need for a more controlled gradual rollout,
and patch management solutions are not available or desired for all devices,
consider an approach with deployment groups: 

1.  Participate in the Windows Insider program or assign a group of devices to
    the Beta Channel. 

2.  Designate a pilot group that opts-in to Preview Channel, typically
    validation environments, to receive new updates *early.* 

3.  Designate a group of machines that receive updates *last* during the gradual
    rollout from Broad channel by disabling gradual rollout for this group. 

4.  Designate a group of *critical* systems to receive updates using a patch
    management solution. 

For the remainder of devices, the default setting is to receive new updates as
they arrive during the Microsoft gradual rollout process and no further
configuration is required. 

Adopting this model: 

-   Allows you to test early releases before
    they reach a production environment 

-   Ensure the production environment still receives regular updates 

-   Uses patch management to delay releases before they reach mission
    critical systems 


## Management tools
To create your own custom gradual rollout process for monthly updates, you can use the following tools:

- Microsoft Endpoint Manager
- PowerShell

For details on how to use these tools, see [Create a custom gradual rollout process for monthly updates](configure-updates.md).

