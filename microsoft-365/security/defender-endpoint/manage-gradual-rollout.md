---
title: Manage the gradual rollout process for Microsoft Defender updates
description: Learn about the gradual update process and controls
keywords: update, update process, controls, release
ms.service: microsoft-365-security
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
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 06/23/2021
---

# Manage the gradual rollout process for Microsoft Defender updates

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

It is important to ensure that client components are up-to-date to deliver critical protection capabilities and prevent attacks.

Capabilities are provided through several components:

- [Endpoint Detection & Response](overview-endpoint-detection-response.md)
- [Next-generation protection](microsoft-defender-antivirus-windows.md) with [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md)
- [Attack Surface Reduction](overview-attack-surface-reduction.md)

Updates are released monthly using a gradual release process. This process helps to enable early failure detection to catch impact as it occurs and address it quickly before a larger rollout.

> [!NOTE]
> For more information on how to control daily security intelligence updates, see [Schedule Microsoft Defender Antivirus protection updates](manage-protection-update-schedule-microsoft-defender-antivirus.md). Updates ensure that next-generation protection can defend against new threats, even if cloud-delivered protection is not available to the endpoint.

## Microsoft gradual rollout model

The following gradual rollout model is followed for monthly Defender updates:

1. The first release goes out to Beta channel subscribers.
2. After validation, feedback, and fixes, we start the gradual rollout process in a throttled way and to Preview channel subscribers first.
3. We then proceed to release the update to the rest of the global population, scaling out from 10-100%.

Our engineers continuously monitor impact and escalate any issues to create a fix as needed.

## How to customize your internal deployment process

If your machines are receiving Defender updates from Windows Update, the gradual rollout process may result in some of your machines receiving Defender updates sooner than others. The following section explains how to define a strategy that will allow automatic updates to flow differently to specific groups of devices by leveraging update channel configuration.

> [!NOTE]
> When planning for your own gradual release, please make sure to always have a selection of devices subscribed to the preview and staged channels. This will provide your organization as well as Microsoft the opportunity to prevent or find and fix issues specific to your environment.

For machines receiving updates through, for example, Windows Server Update Services (WSUS) or Microsoft Configuration Manager, more options are available to all Windows updates, including options  for Microsoft Defender for Endpoint.

- Read more about how to use a solution like WSUS, MECM to manage the distribution and application of updates at [Manage Microsoft Defender Antivirus updates and apply baselines - Windows security](microsoft-defender-antivirus-updates.md#product-updates).

## Update channels for monthly updates

You can assign a machine to an update channel to define the cadence in which a machine receives monthly engine and platform updates.

For more information on how to configure updates, see [Create a custom gradual rollout process for Microsoft Defender updates](configure-updates.md).

The following update channels are available:

<br>

****

|Channel name|Description|Application|
|---|---|---|
|Beta Channel - Prerelease|Test updates before others|Devices set to this channel will be the first to receive new monthly updates. Select Beta Channel to participate in identifying and reporting issues to Microsoft. Devices in the Windows Insider Program are subscribed to this channel by default. For use in test environments only.|
|Current Channel (Preview)|Get Current Channel updates **earlier** during gradual release|Devices set to this channel will be offered updates earliest during the gradual release cycle. Suggested for pre-production/validation environments.|
|Current Channel (Staged)|Get Current Channel updates later during gradual release|Devices will be offered updates later during the gradual release cycle. Suggested to apply to a small, representative part of your device population (~10%).|
|Current Channel (Broad)|Get updates at the end of gradual release|Devices will be offered updates only after the gradual release cycle completes. Suggested to apply to a broad set of devices in your production population (~10-100%).|
|Critical: Time Delay|Delay Defender updates|Devices will be offered updates with a 48-hour delay. Best for datacenter machines that only receive limited updates. Suggested for critical environments only.|
|(default)||If you disable or do not configure this policy, the device will remain in Current Channel (Default): Stay up to date automatically during the gradual release cycle. Suitable for most devices.|
|

### Update channels for daily updates

You can also assign a machine to a channel to define the cadence in which it receives daily updates. Note that unlike the monthly process, there is no Beta channel and this gradual release cycle occurs multiple times a day.

<br>

****

|Channel name|Description|Application|
|---|---|---|
|Current Channel (Staged)|Get Current Channel updates later during gradual release|Devices will be offered updates later during the gradual release cycle. Suggested to apply to a small, representative part of your device population (~10%).|
|Current Channel (Broad)|Get updates at the end of gradual release|Devices will be offered updates after the gradual release cycle. Best for datacenter machines that only receive limited updates. Note: this setting applies to all Defender updates.|
|(default)||If you disable or do not configure this policy, the device will remain in Current Channel (Default): Stay up to date automatically during the gradual release cycle. Suitable for most devices|
|

> [!NOTE]
> In case you wish to force an update to the newest signature instead of leveraging the time delay, you will need to remove this policy first.

## Update guidance

In most cases, the recommended configuration when using Windows Update is to allow endpoints to receive and apply monthly Defender updates as they arrive. This provides the best balance between protection and possible impact associated with the changes they can introduce.

For environments where there is a need for a more controlled gradual rollout of automatic Defender updates, consider an approach with deployment groups:

1. Participate in the Windows Insider program or assign a group of devices to the Beta Channel.
2. Designate a pilot group that opts-in to Preview Channel, typically validation environments, to receive new updates early.
3. Designate a group of machines that receive updates later during the gradual rollout from Staged channel. Typically, this would be a representative ~10% of the population.
4. Designate a group of machines that receive updates after the gradual release cycle completes. These are typically important production systems.

For the remainder of devices, the default setting is to receive new updates as they arrive during the Microsoft gradual rollout process and no further configuration is required.

Adopting this model:

- Allows you to test early releases before they reach a production environment
- Ensure the production environment still receives regular updates and ensure protection against critical threats.

## Management tools

To create your own custom gradual rollout process for monthly updates, you can use the following tools:

- Group policy
- Microsoft Configuration Manager
- PowerShell

For details on how to use these tools, see [Create a custom gradual rollout process for Microsoft Defender updates](configure-updates.md).

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
