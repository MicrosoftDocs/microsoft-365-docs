---
title: Endpoint detection and response in block mode
description: Learn about endpoint detection and response in block mode
keywords: Microsoft Defender for Endpoint, mde, EDR in block mode, passive mode blocking
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro
ms.topic: article
ms.prod: m365-security
localization_priority: Normal
ms.custom: 
  - next-gen
  - edr
ms.date: 07/20/2021
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.technology: mde
---

# Endpoint detection and response (EDR) in block mode

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-assignaccess-abovefoldlink)

## What is EDR in block mode?

[Endpoint detection and response](overview-endpoint-detection-response.md) (EDR) in block mode provides added protection from malicious artifacts when Microsoft Defender Antivirus is not the primary antivirus product and is running in passive mode. EDR in block mode works behind the scenes to remediate malicious artifacts that were detected using EDR. Such artifacts might have been missed by the primary, non-Microsoft antivirus product. 

> [!IMPORTANT]
> EDR in block mode does not provide all the protection that is available when Microsoft Defender Antivirus real-time protection is enabled. All features that depend on Microsoft Defender Antivirus to be the active antivirus solution will not work, including the following key examples: 
> 
> - Real-time protection, including on-access scanning, is not available when Microsoft Defender Antivirus is in passive mode. To learn more about real-time protection policy settings, see **[Enable and configure Microsoft Defender Antivirus always-on protection](configure-real-time-protection-microsoft-defender-antivirus.md)**.
> - Features like **[network protection](network-protection.md)** and **[attack surface reduction rules](attack-surface-reduction.md)** are only available when Microsoft Defender Antivirus is running in active mode. 
> 
> It is expected that your non-Microsoft antivirus solution provides these capabilities. 

EDR in block mode is integrated with [threat & vulnerability management](next-gen-threat-and-vuln-mgt.md). Your organization's security team will get a [security recommendation](tvm-security-recommendation.md) to turn EDR in block mode on if it isn't already enabled. 

:::image type="content" source="images/edrblockmode-TVMrecommendation.png" alt-text="recommendation to turn on EDR in block mode":::

> [!TIP]
> To get the best protection, make sure to **[deploy Microsoft Defender for Endpoint baselines](configure-machines-security-baseline.md)**.

## What happens when something is detected?

When EDR in block mode is turned on, and a malicious artifact is detected, Microsoft Defender for Endpoint blocks and remediates that artifact. Your security operations team will see detection status as **Blocked** or **Prevented** in the [Action center](respond-machine-alerts.md#check-activity-details-in-action-center), listed as completed actions.

The following image shows an instance of unwanted software that was detected and blocked through EDR in block mode:

:::image type="content" source="images/edr-in-block-mode-detection.png" alt-text="EDR in block mode detected something":::


## Enable EDR in block mode

> [!TIP]
> Make sure the [requirements](#requirements-for-edr-in-block-mode) are met before turning on EDR in block mode.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) and sign in. 

2. Choose **Settings** > **Endpoints** > **General** > **Advanced features**.

3. Scroll down, and then urn on **Enable EDR in block mode**.

> [!NOTE]
> EDR in block mode can be turned on only in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) or the former Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)). You cannot use registry keys, Microsoft Intune, or Group Policy to enable or disable EDR in block mode.

## Requirements for EDR in block mode

| Requirement  | Details  |
|---------|---------|
| Permissions | You must have the Global Administrator or Security Administrator role assigned in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). For more information, see [Basic permissions](basic-permissions.md). |
| Operating system     | Devices must be running one of the following versions of Windows: <br/>- Windows 10 (all releases) <br/>- Windows Server, version 1803 or newer <br/>- Windows Server 2019 <br/>- Windows Server 2016 (only when Microsoft Defender Antivirus is in active mode)     |
| Microsoft Defender for Endpoint     | Devices must be onboarded to Defender for Endpoint. See [Minimum requirements for Microsoft Defender for Endpoint](minimum-requirements.md).       |
| Microsoft Defender Antivirus  | Devices must have Microsoft Defender Antivirus installed and running in either active mode or passive mode. [Confirm Microsoft Defender Antivirus is in active or passive mode](#how-do-i-confirm-microsoft-defender-antivirus-is-in-active-or-passive-mode). |
| Cloud-delivered protection | Microsoft Defender Antivirus must be configured such that [cloud-delivered protection is enabled](enable-cloud-protection-microsoft-defender-antivirus.md). |
| Microsoft Defender Antivirus platform | Devices must be up to date. To confirm, using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. <p> To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). |
| Microsoft Defender Antivirus engine | Devices must be up to date. To confirm, using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. <p> To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). |

> [!IMPORTANT]
> To get the best protection value, make sure your antivirus solution is configured to receive regular updates and essential features, and that your [exclusions are configured](configure-exclusions-microsoft-defender-antivirus.md). EDR in block mode respects exclusions that are defined for Microsoft Defender Antivirus, but not [indicators](manage-indicators.md) that are defined for Microsoft Defender for Endpoint.

## Frequently asked questions 

### Do I need to turn EDR in block mode on if I have Microsoft Defender Antivirus running on devices?

The primary purpose of EDR in block mode is to remediate post-breach detections that were missed by a non-Microsoft antivirus product. However, we recommend keeping EDR in block mode turned on, whether Microsoft Defender Antivirus is running in passive mode or in active mode. 

- When Microsoft Defender Antivirus is in passive mode, EDR in block mode provides another layer of defense together with Microsoft Defender for Endpoint. 
- When Microsoft Defender Antivirus is in active mode, EDR in block mode does not provide extra scanning, but it does allow Defender for Endpoint to take automatic actions on post-breach, behavioral EDR detections.

### Will EDR in block mode affect a user's antivirus protection? 

EDR in block mode does not affect third-party antivirus protection running on users' devices. EDR in block mode works if the primary antivirus solution misses something, or if there is a post-breach detection. EDR in block mode works just like Microsoft Defender Antivirus in passive mode, except that EDR in block mode also blocks and remediates malicious artifacts or behaviors that are detected.

### Why do I need to keep Microsoft Defender Antivirus up to date? 

Because Microsoft Defender Antivirus detects and remediates malicious items, it's important to keep it up to date. For EDR in block mode to be effective, it uses the latest device learning models, behavioral detections, and heuristics. The [Defender for Endpoint](microsoft-defender-endpoint.md) stack of capabilities works in an integrated manner. To get best protection value, you should keep Microsoft Defender Antivirus up to date. See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). 

### Why do we need cloud protection (MAPS) on? 

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Defender for Endpoint](microsoft-defender-endpoint.md) to deliver the latest and greatest protection based on our breadth and depth of security intelligence, along with behavioral and device learning models.

### What is the difference between active and passive mode?

For endpoints running Windows 10, Windows Server, version 1803 or later, or Windows Server 2019, when Microsoft Defender Antivirus is in active mode, it is used as the primary antivirus on the device. When running in passive mode, Microsoft Defender Antivirus is not the primary antivirus product. In this case, threats are not remediated by Microsoft Defender Antivirus in real time.

> [!NOTE]
> Microsoft Defender Antivirus can run in passive mode only when the device is onboarded to Microsoft Defender for Endpoint.

For more information, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

### How do I confirm Microsoft Defender Antivirus is in active or passive mode?

To confirm whether Microsoft Defender Antivirus is running in active or passive mode, you can use Command Prompt or PowerShell on a device running Windows.

|Method  |Procedure  |
|---------|---------|
| PowerShell     | 1. Select the Start menu, begin typing `PowerShell`, and then open Windows PowerShell in the results. <p>2. Type `Get-MpComputerStatus`. <p>3. In the list of results, in the **AMRunningMode** row, look for one of the following values: <br/>- `Normal` <br/>- `Passive Mode` <p>To learn more, see [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus).        |
|Command Prompt     | 1. Select the Start menu, begin typing `Command Prompt`, and then open Windows Command Prompt in the results. <p>2. Type `sc query windefend`. <p>3. In the list of results, in the **STATE** row, confirm that the service is running.         |

### How do I confirm that EDR in block mode is turned on with Microsoft Defender Antivirus in passive mode?

You can use PowerShell to confirm that EDR in block mode is turned on with Microsoft Defender Antivirus running in passive mode.

1. Select the Start menu, begin typing `PowerShell`, and then open Windows PowerShell in the results. 

2. Type `Get-MPComputerStatus | select AMRunningMode`.

3. Confirm that the result, `EDR Block Mode`, is displayed.

   > [!TIP]
   > If Microsoft Defender Antivirus is in active mode, you will see `Normal` instead of `EDR Block Mode`. To learn more, see [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus).

### Is EDR in block mode supported on Windows Server 2016?

If Microsoft Defender Antivirus is running in active mode or passive mode, EDR in block mode is supported of the following versions of Windows:

- Windows 10 (all releases)
- Windows Server, version 1803 or newer 
- Windows Server 2019 

#### What about Windows Server 2016? 

If Windows Server 2016 has Microsoft Defender Antivirus running in active mode, and the endpoint is onboarded to Defender for Endpoint, then EDR in block mode is technically supported. However, EDR in block mode is intended to be extra protection when Microsoft Defender Antivirus is not the primary antivirus solution on an endpoint. In those cases, Microsoft Defender Antivirus runs in passive mode. 

Currently, running Microsoft Defender Antivirus in passive mode is not supported on Windows Server 2016. To learn more, see [Microsoft Defender Antivirus and non-Microsoft antivirus/antimalware solutions](microsoft-defender-antivirus-compatibility.md#microsoft-defender-antivirus-and-non-microsoft-antivirusantimalware-solutions).

### How much time does it take for EDR in block mode to be disabled?

If you choose to disable EDR in block mode, it can take up to 30 minutes for the system to disable this capability.

## See also

- [Tech Community blog: Introducing EDR in block mode: Stopping attacks in their tracks](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/introducing-edr-in-block-mode-stopping-attacks-in-their-tracks/ba-p/1596617)
- [Behavioral blocking and containment](behavioral-blocking-containment.md)

