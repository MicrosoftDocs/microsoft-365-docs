---
title: Endpoint detection and response in block mode
description: Learn about endpoint detection and response in block mode
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.custom:
  - next-gen
  - edr
  - admindeeplinkDEFENDER
ms.date: 03/31/2023
ms.collection: 
- m365-security
- tier2
ms.subservice: mde
search.appverid: met150
---

# Endpoint detection and response in block mode

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

## What is EDR in block mode?

[Endpoint detection and response](overview-endpoint-detection-response.md) (EDR) in block mode provides added protection from malicious artifacts when Microsoft Defender Antivirus is not the primary antivirus product and is running in passive mode. EDR in block mode works behind the scenes to remediate malicious artifacts that were detected by EDR capabilities. Such artifacts might have been missed by the primary, non-Microsoft antivirus product. EDR in block mode allows Microsoft Defender Antivirus to take actions on post-breach, behavioral EDR detections. 

> [!IMPORTANT]
> EDR in block mode does not provide all the protection that is available when Microsoft Defender Antivirus real-time protection is enabled. Some capabilities that depend on Microsoft Defender Antivirus to be the active antivirus solution will not work, such as the following examples:
>
> - Real-time protection, including on-access scanning, is not available when Microsoft Defender Antivirus is in passive mode. To learn more about real-time protection policy settings, see **[Enable and configure Microsoft Defender Antivirus always-on protection](configure-real-time-protection-microsoft-defender-antivirus.md)**.
> - Features like **[network protection](network-protection.md)** and **[attack surface reduction rules](attack-surface-reduction.md)** are only available when Microsoft Defender Antivirus is running in active mode.
>
> It is expected that your non-Microsoft antivirus solution includes these capabilities.

EDR in block mode is integrated with [threat & vulnerability management](next-gen-threat-and-vuln-mgt.md) capabilities. Your organization's security team will get a [security recommendation](tvm-security-recommendation.md) to turn EDR in block mode on if it isn't already enabled. This recommendation is primarily for devices using an active non-Microsoft antivirus solution (with Microsoft Defender Antivirus in passive mode). There is little benefit to enabling EDR in block mode when Microsoft Defender Antivirus is the primary antivirus solution on devices.

:::image type="content" source="images/edrblockmode-TVMrecommendation.png" alt-text="The recommendation to turn on EDR in block mode" lightbox="images/edrblockmode-TVMrecommendation.png":::

> [!TIP]
> To get the best protection, make sure to **[deploy Microsoft Defender for Endpoint baselines](configure-machines-security-baseline.md)**.

Watch this video to learn why and how to turn on endpoint detection and response (EDR) in block mode, enable behavioral blocking, and containment at every stage from pre-breach to post-breach.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4HjW2]

## What happens when something is detected?

When EDR in block mode is turned on, and a malicious artifact is detected, Defender for Endpoint remediates that artifact. Your security operations team will see detection status as **Blocked** or **Prevented** in the [Action center](respond-machine-alerts.md#check-activity-details-in-action-center), listed as completed actions. The following image shows an instance of unwanted software that was detected and remediated through EDR in block mode:

:::image type="content" source="images/edr-in-block-mode-detection.png" alt-text="The detection by EDR in block mode" lightbox="images/edr-in-block-mode-detection.png":::

## Enable EDR in block mode

> [!IMPORTANT]
> Make sure the [requirements](#requirements-for-edr-in-block-mode) are met before turning on EDR in block mode.
> 
> Starting with [platform version 4.18.2202.X](microsoft-defender-antivirus-updates.md), you can now set EDR in block mode to target specific device groups using Intune CSPs. You can  continue to set EDR in block mode tenant-wide in the [Microsoft 365 Defender portal](https://security.microsoft.com).
> 
> EDR in block mode is primarily recommended for devices that are running Microsoft Defender Antivirus in passive mode (a non-Microsoft antivirus solution is installed and active on the device).

### Microsoft 365 Defender

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) and sign in.

2. Choose **Settings** \> **Endpoints** \> **General** \> **Advanced features**.

3. Scroll down, and then turn on **Enable EDR in block mode**.

### Intune

To create a custom policy in Intune, see [Deploy OMA-URIs to target a CSP through Intune, and a comparison to on-premises](/troubleshoot/mem/intune/deploy-oma-uris-to-target-csp-via-intune).

For more information on the Defender CSP used for EDR in block mode, see "Configuration/PassiveRemediation" under [Defender CSP](/windows/client-management/mdm/defender-csp).

## Requirements for EDR in block mode

The following table lists requirements for EDR in block mode:

|Requirement|Details|
|---|---|
|Permissions|You must have either the Global Administrator or Security Administrator role assigned in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). For more information, see [Basic permissions](basic-permissions.md).|
|Operating system|Devices must be running one of the following versions of Windows: <br/>- Windows 11<br/>- Windows 10 (all releases)<br/>- Windows Server 2019 or later<br/>- Windows Server, version 1803 or later<br/>- Windows Server 2016 and Windows Server 2012 R2 (with the [new unified client solution](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution))|
|Microsoft Defender for Endpoint|Devices must be onboarded to Defender for Endpoint. See the following articles: <br/>- [Minimum requirements for Microsoft Defender for Endpoint](minimum-requirements.md)<br/>- [Onboard devices and configure Microsoft Defender for Endpoint capabilities](onboard-configure.md)<br/>- [Onboard Windows servers to the Defender for Endpoint service](configure-server-endpoints.md)<br/>- [New Windows Server 2012 R2 and 2016 functionality in the modern unified solution](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution)<br/>(See [Is EDR in block mode supported on Windows Server 2016 and Windows Server 2012 R2?](edr-block-mode-faqs.yml)) |
|Microsoft Defender Antivirus|Devices must have Microsoft Defender Antivirus installed and running in either active mode or passive mode. [Confirm Microsoft Defender Antivirus is in active or passive mode](edr-block-mode-faqs.yml).|
|Cloud-delivered protection|Microsoft Defender Antivirus must be configured such that [cloud-delivered protection is enabled](enable-cloud-protection-microsoft-defender-antivirus.md).|
|Microsoft Defender Antivirus platform|Devices must be up to date. To confirm, using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. <br/><br/> To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).|
|Microsoft Defender Antivirus engine|Devices must be up to date. To confirm, using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. <br/><br/> To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md).|

> [!IMPORTANT]
> To get the best protection value, make sure your antivirus solution is configured to receive regular updates and essential features, and that your [exclusions are configured](configure-exclusions-microsoft-defender-antivirus.md). EDR in block mode respects exclusions that are defined for Microsoft Defender Antivirus, but not [indicators](manage-indicators.md) that are defined for Microsoft Defender for Endpoint.

## See also

- [Tech Community blog: Introducing EDR in block mode: Stopping attacks in their tracks](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/introducing-edr-in-block-mode-stopping-attacks-in-their-tracks/ba-p/1596617)

- [Endpoint detection and response (EDR) in block mode frequently asked questions (FAQ)](edr-block-mode-faqs.yml)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
