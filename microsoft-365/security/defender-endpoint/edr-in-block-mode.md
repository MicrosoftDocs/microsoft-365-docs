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
ms.date: 05/06/2021
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

[Endpoint detection and response](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response) (EDR) in block mode provides protection from malicious artifacts, even when Microsoft Defender Antivirus is running in passive mode. When turned on, EDR in block mode blocks malicious artifacts or behaviors that are detected on a device. EDR in block mode works behind the scenes to remediate malicious artifacts that are detected post breach. 

EDR in block mode is also integrated with [threat & vulnerability management](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt). Your organization's security team will get a [security recommendation](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/tvm-security-recommendation) to turn EDR in block mode on if it isn't already enabled. 

:::image type="content" source="images/edrblockmode-TVMrecommendation.png" alt-text="recommendation to turn on EDR in block mode":::

> [!NOTE]
> To get the best protection, make sure to **[deploy Microsoft Defender for Endpoint baselines](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/configure-machines-security-baseline)**.

## What happens when something is detected?

When EDR in block mode is turned on, and a malicious artifact is detected, Microsoft Defender for Endpoint blocks and remediates that artifact. Your security operations team will see detection status as **Blocked** or **Prevented** in the [Action center](respond-machine-alerts.md#check-activity-details-in-action-center), listed as completed actions.

The following image shows an instance of unwanted software that was detected and blocked through EDR in block mode:

:::image type="content" source="images/edr-in-block-mode-detection.png" alt-text="EDR in block mode detected something":::


## Enable EDR in block mode

> [!IMPORTANT]
> Make sure the [requirements](#requirements-for-edr-in-block-mode) are met before turning on EDR in block mode.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. 

2. Choose **Settings** > **Advanced features**.

3. Turn on **EDR in block mode**.

> [!NOTE]
> EDR in block mode can be turned on only in the Microsoft Defender Security Center. You cannot use registry keys, Intune, or group policies to enable or disable EDR in block mode.

## Requirements for EDR in block mode

|Requirement  |Details  |
|---------|---------|
|Permissions |Global Administrator or Security Administrator role assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). See [Basic permissions](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/basic-permissions). |
|Operating system     |One of the following versions: <br/>- Windows 10 (all releases) <br/>- Windows Server, version 1803 or newer <br/>- Windows Server 2019 <br/>- Windows Server 2016 (only when Microsoft Defender Antivirus is in active mode)     |
|Windows E5 enrollment     |Windows E5 is included in the following subscriptions: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 E3 together with the Identity & Threat Protection offering <br/><br/>See [Components](/microsoft-365/enterprise/microsoft-365-overview#components) and [features and capabilities for each plan](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).       |
|Microsoft Defender Antivirus  |Microsoft Defender Antivirus must be installed and running in either active mode or passive mode. (You can use Microsoft Defender Antivirus alongside a non-Microsoft antivirus solution.) [Confirm Microsoft Defender Antivirus is in active or passive mode](#how-do-i-confirm-microsoft-defender-antivirus-is-in-active-or-passive-mode). |
|Cloud-delivered protection |Make sure Microsoft Defender Antivirus is configured such that [cloud-delivered protection is enabled](enable-cloud-protection-microsoft-defender-antivirus.md). |
|Microsoft Defender Antivirus antimalware client |Make sure your client is up to date. Using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. |
|Microsoft Defender Antivirus engine |Make sure your engine is up to date. Using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. |

> [!IMPORTANT]
> To get the best protection value, make sure your antivirus solution is configured to receive regular updates and essential features, and that your [exclusions are configured](configure-exclusions-microsoft-defender-antivirus.md). EDR in block mode respects exclusions that are defined for Microsoft Defender Antivirus.

## Frequently asked questions 

### Do I need to turn EDR in block mode on even when I have Microsoft Defender Antivirus running on devices?

We recommend keeping EDR in block mode on, whether Microsoft Defender Antivirus is running in passive mode or in active mode. EDR in block mode provides another layer of defense with Microsoft Defender for Endpoint. It allows Defender for Endpoint to take actions based on post-breach behavioral EDR detections. 

### Will EDR in block mode have any impact on a user's antivirus protection? 

EDR in block mode does not affect third-party antivirus protection running on users' devices. EDR in block mode works if the primary antivirus solution misses something, or if there is a post-breach detection. EDR in block mode works just like [Microsoft Defender Antivirus in passive mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility#functionality-and-features-available-in-each-state), except it also blocks and remediates malicious artifacts or behaviors that are detected. 

### Why do I need to keep Microsoft Defender Antivirus up to date? 

Because Microsoft Defender Antivirus detects and remediates malicious items, it's important to keep it up to date. For EDR in block mode to be effective, it uses the latest device learning models, behavioral detections, and heuristics. The [Defender for Endpoint](microsoft-defender-endpoint.md) stack of capabilities works in an integrated manner. To get best protection value, you should keep Microsoft Defender Antivirus up to date. See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). 

### Why do we need cloud protection on? 

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Defender for Endpoint](microsoft-defender-endpoint.md) to deliver the latest and greatest protection based on our breadth and depth of security intelligence, along with behavioral and device learning models.

### How do I set Microsoft Defender Antivirus to passive mode?

Depending on operating systems, when devices that are running a non-Microsoft antivirus/antimalware solution are onboarded to Defender for Endpoint, Microsoft Defender Antivirus can go into passive mode automatically. For more information, see [Antivirus and Microsoft Defender for Endpoint](microsoft-defender-antivirus-compatibility.md#antivirus-and-microsoft-defender-for-endpoint). 

### How do I confirm Microsoft Defender Antivirus is in active or passive mode?

To confirm whether Microsoft Defender Antivirus is running in active or passive mode, you can use Command Prompt or PowerShell on a device running Windows.


|Method  |Procedure  |
|---------|---------|
| PowerShell     | 1. Select the Start menu, begin typing `PowerShell`, and then open Windows PowerShell in the results. <p>2. Type `Get-MpComputerStatus`. <p>3. In the list of results, in the **AMRunningMode** row, look for one of the following values: <br/>- `Normal` <br/>- `Passive Mode` <br/>- `SxS Passive Mode` <p>To learn more, see [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus).        |
|Command Prompt     | 1. Select the Start menu, begin typing `Command Prompt`, and then open Windows Command Prompt in the results. <p>2. Type `sc query windefend`. <p>3. In the list of results, in the **STATE** row, confirm that the service is running.         |

### How much time does it take for EDR in block mode to be disabled?

If you chose to disable EDR in block mode, it can take up to 30 minutes for the system to disable this capability.

### Is EDR in block mode supported on Windows Server 2016?

If Microsoft Defender Antivirus is running in active mode or passive mode, EDR in block mode is supported of the following versions of Windows:

- Windows 10 (all releases)
- Windows Server, version 1803 or newer 
- Windows Server 2019 

If Windows Server 2016 has Microsoft Defender Antivirus running in active mode, and the endpoint is onboarded to Defender for Endpoint, then EDR in block mode is supported. However, EDR in block mode is intended to be additional protection when Microsoft Defender Antivirus is not the primary antivirus solution on an endpoint. 

## See also

- [Tech Community blog: Introducing EDR in block mode: Stopping attacks in their tracks](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/introducing-edr-in-block-mode-stopping-attacks-in-their-tracks/ba-p/1596617)
- [Behavioral blocking and containment](behavioral-blocking-containment.md)
- [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/why-use-microsoft-antivirus)

