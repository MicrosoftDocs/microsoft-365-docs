---
title: Endpoint detection and response in block mode
description: Learn about endpoint detection and response in block mode
keywords: Microsoft Defender for Endpoint, mde, EDR in block mode, passive mode blocking
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro
ms.topic: article
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.custom:
  - next-gen
  - edr
  - admindeeplinkDEFENDER
ms.date: 08/19/2022
ms.collection: m365-security-compliance
ms.subservice: mde
search.appverid: met150
---

# Endpoint detection and response (EDR) in block mode

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

## What is EDR in block mode?

[Endpoint detection and response](overview-endpoint-detection-response.md) (EDR) in block mode provides added protection from malicious artifacts when Microsoft Defender Antivirus(MDAV) is not the primary antivirus product and is running in passive mode. EDR in block mode works behind the scenes to remediate malicious artifacts that were detected by EDR capabilities. Such artifacts might have been missed by the primary, non-Microsoft antivirus product. EDR in block mode allows Microsoft Defender Antivirus to take actions on post-breach, behavioral EDR detections. See the section, [Do I need to turn on EDR in block mode if I have Microsoft Defender Antivirus?](#do-i-need-to-turn-edr-in-block-mode-on-if-i-have-microsoft-defender-antivirus-running-on-devices) in the **Frequently asked questions** section.

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
> Starting with platform version 4.18.2202.X, you can now set EDR in block mode to target specific device groups using Intune CSPs. You can  continue to set EDR in block mode tenant-wide in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. EDR in block mode is primarily recommended for devices that are running Microsoft Defender Antivirus in passive mode (a non-Microsoft antivirus solution is installed and active on the device).

> [!TIP]
> Make sure the [requirements](#requirements-for-edr-in-block-mode) are met before turning on EDR in block mode.

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

### Security Portal

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com/](https://security.microsoft.com/)) and sign in.
1. Choose **Settings** \> **Endpoints** \> **General** \> **Advanced features**.
1. Scroll down, and then turn on **Enable EDR in block mode**.

### Intune

To create a custom policy in Intune, see [Deploy OMA-URIs to target a CSP through Intune, and a comparison to on-premises](/troubleshoot/mem/intune/deploy-oma-uris-to-target-csp-via-intune).

For more information on the Defender CSP used for EDR in block mode, see "Configuration/PassiveRemediation" under [Defender CSP](/windows/client-management/mdm/defender-csp).

## Requirements for EDR in block mode

The following table lists requirements for EDR in block mode:

|Requirement|Details|
|---|---|
|Permissions|You must have either the Global Administrator or Security Administrator role assigned in [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). For more information, see [Basic permissions](basic-permissions.md).|
|Operating system|Devices must be running one of the following versions of Windows: <ul><li>Windows 11</li><li>Windows 10 (all releases)</li><li>Windows Server 2019 or later</li><li>Windows Server, version 1803 or later</li><li>Windows Server 2016 and Windows Server 2012 R2 \(with the [new unified client solution](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution)\)</li></ul>|
|Microsoft Defender for Endpoint|Devices must be onboarded to Defender for Endpoint. See the following articles: <br/>- [Minimum requirements for Microsoft Defender for Endpoint](minimum-requirements.md)<br/>- [Onboard devices and configure Microsoft Defender for Endpoint capabilities](onboard-configure.md)<br/>- [Onboard Windows servers to the Defender for Endpoint service](configure-server-endpoints.md)<br/>- [New Windows Server 2012 R2 and 2016 functionality in the modern unified solution (Preview)](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution) |
|Microsoft Defender Antivirus|Devices must have Microsoft Defender Antivirus installed and running in either active mode or passive mode. [Confirm Microsoft Defender Antivirus is in active or passive mode](#how-do-i-confirm-microsoft-defender-antivirus-is-in-active-or-passive-mode).|
|Cloud-delivered protection|Microsoft Defender Antivirus must be configured such that [cloud-delivered protection is enabled](enable-cloud-protection-microsoft-defender-antivirus.md).|
|Microsoft Defender Antivirus platform|Devices must be up to date. To confirm, using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. <p> To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).|
|Microsoft Defender Antivirus engine|Devices must be up to date. To confirm, using PowerShell, run the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. <p> To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).|

(<a id="fn1">1</a>) See [Is EDR in block mode supported on Windows Server 2016 and Windows Server 2012 R2?](#is-edr-in-block-mode-supported-on-windows-server-2016-and-windows-server-2012-r2)

> [!IMPORTANT]
> To get the best protection value, make sure your antivirus solution is configured to receive regular updates and essential features, and that your [exclusions are configured](configure-exclusions-microsoft-defender-antivirus.md). EDR in block mode respects exclusions that are defined for Microsoft Defender Antivirus, but not [indicators](manage-indicators.md) that are defined for Microsoft Defender for Endpoint.

## Frequently asked questions

### Can I specify exclusions for EDR in block mode?

In you get a false positive, you can submit the file for analysis at the [Microsoft Security Intelligence submission site](https://www.microsoft.com/en-us/wdsi/filesubmission).

You can also define an exclusion for Microsoft Defender Antivirus. See [Configure and validate exclusions for Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md).

### Do I need to turn EDR in block mode on if I have Microsoft Defender Antivirus running on devices?

The primary purpose of EDR in block mode is to remediate post-breach detections that were missed by a non-Microsoft antivirus product. There is minimal benefit in enabling EDR in block mode when Microsoft Defender Antivirus is in active mode, because real-time protection is expected to catch and remediate detections first. We recommend enabling EDR in block mode on endpoints where Microsoft Defender for Antivirus is running in passive mode. EDR detections can be automatically remediated by [PUA protection](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) or by [automated investigation & remediation capabilities](automated-investigations.md) in block mode.

### Will EDR in block mode affect a user's antivirus protection?

EDR in block mode does not affect third-party antivirus protection running on users' devices. EDR in block mode works if the primary antivirus solution misses something, or if there is a post-breach detection. EDR in block mode works just like Microsoft Defender Antivirus in passive mode, except that EDR in block mode also blocks and remediates malicious artifacts or behaviors that are detected.

### Why do I need to keep Microsoft Defender Antivirus up to date?

Because Microsoft Defender Antivirus detects and remediates malicious items, it's important to keep it up to date. For EDR in block mode to be effective, it uses the latest device learning models, behavioral detections, and heuristics. The [Defender for Endpoint](microsoft-defender-endpoint.md) stack of capabilities works in an integrated manner. To get best protection value, you should keep Microsoft Defender Antivirus up to date. See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).

### Why do we need cloud protection (MAPS) on?

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Defender for Endpoint](microsoft-defender-endpoint.md) to deliver the latest and greatest protection based on our breadth and depth of security intelligence, along with behavioral and device learning models.

### What is the difference between active and passive mode?

For endpoints running Windows 10, Windows 11, Windows Server, version 1803 or later, Windows Server 2019, or Windows Server 2022 when Microsoft Defender Antivirus is in active mode, it is used as the primary antivirus on the device. When running in passive mode, Microsoft Defender Antivirus is not the primary antivirus product. In this case, threats are not remediated by Microsoft Defender Antivirus in real time.

> [!NOTE]
> Microsoft Defender Antivirus can run in passive mode only when the device is onboarded to Microsoft Defender for Endpoint.

For more information, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

### How do I confirm Microsoft Defender Antivirus is in active or passive mode?

To confirm whether Microsoft Defender Antivirus is running in active or passive mode, you can use Command Prompt or PowerShell on a device running Windows.

|Method|Procedure|
|---|---|
|PowerShell|1. Select the Start menu, begin typing `PowerShell`, and then open Windows PowerShell in the results.<br/><br/>2. Type `Get-MpComputerStatus`.<br/><br/>3. In the list of results, in the **AMRunningMode** row, look for one of the following values:<br/>- `Normal`<br/>- `Passive Mode`<br/><br/>To learn more, see [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus).|
|Command Prompt|<ol><li>Select the Start menu, begin typing `Command Prompt`, and then open Windows Command Prompt in the results.</li><li>Type `sc query windefend`.</li><li>In the list of results, in the **STATE** row, confirm that the service is running.</li></ol>|

### How do I confirm that EDR in block mode is turned on with Microsoft Defender Antivirus in passive mode?

You can use PowerShell to confirm that EDR in block mode is turned on with Microsoft Defender Antivirus running in passive mode.

1. Select the Start menu, begin typing `PowerShell`, and then open Windows PowerShell in the results.

2. Type `Get-MPComputerStatus|select AMRunningMode`.

3. Confirm that the result, `EDR Block Mode`, is displayed.

   > [!TIP]
   > If Microsoft Defender Antivirus is in active mode, you will see `Normal` instead of `EDR Block Mode`. To learn more, see [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus).

### Is EDR in block mode supported on Windows Server 2016 and Windows Server 2012 R2?

If Microsoft Defender Antivirus is running in active mode or passive mode, EDR in block mode is supported of the following versions of Windows:

- Windows 11
- Windows 10 (all releases)
- Windows Server, version 1803 or newer
- Windows Server 2022
- Windows Server 2019
- Windows Server 2016 and Windows Server 2012 R2 (with the [new unified client solution](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution))

With the [new unified client solution](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution) for Windows Server 2016 and Windows Server 2012 R2, you can run EDR in block mode in either passive mode or active mode.

> [!NOTE]
> Windows Server 2016 and Windows Server 2012 R2 must be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md) for this feature to work.

### How much time does it take for EDR in block mode to be disabled?

If you choose to disable EDR in block mode, it can take up to 30 minutes for the system to disable this capability.

## See also

- [Tech Community blog: Introducing EDR in block mode: Stopping attacks in their tracks](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/introducing-edr-in-block-mode-stopping-attacks-in-their-tracks/ba-p/1596617)

- [Behavioral blocking and containment](behavioral-blocking-containment.md)
