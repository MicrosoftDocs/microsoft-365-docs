---
title: Turn on cloud protection in Microsoft Defender Antivirus
description: Turn on cloud protection to benefit from fast and advanced protection features.
keywords: Microsoft Defender Antivirus, antimalware, security, cloud, block at first sight
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.date: 05/24/2023
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Turn on cloud protection in Microsoft Defender Antivirus

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

**Platforms**
- Windows

[Cloud protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md) delivers accurate, real-time, and intelligent protection. Cloud protection should be enabled by default. 

> [!NOTE]
> [Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) helps keep cloud protection and other security settings from being changed. As a result, when tamper protection is enabled, any changes made to [tamper-protected settings](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection#what-happens-when-tamper-protection-is-turned-on) are ignored. If you must make changes to a device and those changes are blocked by tamper protection, we recommend using [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. Note that after troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.

## Why cloud protection should be turned on

Microsoft Defender Antivirus cloud protection helps protect against malware on your endpoints and across your network. We recommend keeping cloud protection turned on, because certain security features and capabilities in Microsoft Defender for Endpoint only work when cloud protection is enabled. 

[![alt-text="Diagram showing things that depend on cloud protection](images/mde-cloud-protection.png#lightbox)](enable-cloud-protection-microsoft-defender-antivirus.md)


The following table summarizes the features and capabilities that depend on cloud protection: <br/><br/>

| Feature/Capability  | Subscription requirement |  Description  |
|---------|---------|--------|
| **Checking against metadata in the cloud**. The Microsoft Defender Antivirus cloud service uses machine learning models as an extra layer of defense. These machine learning models include metadata, so when a suspicious or malicious file is detected, its metadata is checked. <br/><br/>To learn more, see [Blog: Get to know the advanced technologies at the core of Microsoft Defender for Endpoint next-generation protection](https://www.microsoft.com/security/blog/2019/06/24/inside-out-get-to-know-the-advanced-technologies-at-the-core-of-microsoft-defender-atp-next-generation-protection/)  | Microsoft Defender for Endpoint Plan 1 or Plan 2 (Standalone or included in a plan like Microsoft 365 E3 or E5) |   
| **[Cloud protection and sample submission](cloud-protection-microsoft-antivirus-sample-submission.md)**. Files and executables can be sent to the Microsoft Defender Antivirus cloud service for detonation and analysis. Automatic sample submission relies on cloud protection, although it can also be configured as a standalone setting.<br/><br/>To learn more, see [Cloud protection and sample submission in Microsoft Defender Antivirus](cloud-protection-microsoft-antivirus-sample-submission.md). | Microsoft Defender for Endpoint Plan 1 or Plan 2 (Standalone or included in a plan like Microsoft 365 E3 or E5) | 
| **[Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)**. Tamper protection helps protect against unwanted changes to your organization's security settings. <br/><br/>To learn more, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md).  | Microsoft Defender for Endpoint Plan 2 (Standalone or included in a plan like Microsoft 365 E5) | 
| **[Block at first sight](configure-block-at-first-sight-microsoft-defender-antivirus.md)** <br/>Block at first sight detects new malware and blocks it within seconds. When a suspicious or malicious file is detected, block at first sight capabilities queries the cloud protection backend and applies heuristics, machine learning, and automated analysis of the file to determine whether it is a threat.<br/><br/>To learn more, see [What is "block at first sight"?](configure-block-at-first-sight-microsoft-defender-antivirus.md#what-is-block-at-first-sight)  | Microsoft Defender for Endpoint Plan 1 or Plan 2 (Standalone or included in a plan like Microsoft 365 E3 or E5) |   
| **[Emergency signature updates](microsoft-defender-antivirus-updates.md#security-intelligence-updates)**. When malicious content is detected, emergency signature updates and fixes are deployed. Rather than wait for the next regular update, you can receive these fixes and updates within minutes. <br/><br/>To learn more about updates, see [Microsoft Defender Antivirus security intelligence and product updates](microsoft-defender-antivirus-updates.md). | Microsoft Defender for Endpoint Plan 2 (Standalone or included in a plan like Microsoft 365 E5) |    
| **[Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md)**. EDR in block mode provides extra protection when Microsoft Defender Antivirus isn't the primary antivirus product on a device. EDR in block mode remediates artifacts found during EDR-generated scans that the non-Microsoft, primary antivirus solution might have missed. When enabled for devices with Microsoft Defender Antivirus as the primary antivirus solution, EDR in block mode provides the added benefit of automatically remediating artifacts identified during EDR-generated scans. <br/><br/>To learn more, see [EDR in block mode](edr-in-block-mode.md). | Microsoft Defender for Endpoint Plan 2 (Standalone or included in a plan like Microsoft 365 E5) | 
| **[Attack surface reduction (ASR) rules](attack-surface-reduction.md)**. ASR rules are intelligent rules that you can configure to help stop malware. Certain rules require cloud protection to be turned on in order to function fully. These rules include: <br/>- Block executable files from running unless they meet a prevalence, age, or trusted list criteria <br/>- Use advanced protection against ransomware <br/>- Block untrusted programs from running from removable drives <br/><br/>To learn more, see [Use attack surface reduction rules to prevent malware infection](attack-surface-reduction.md). | Microsoft Defender for Endpoint Plan 1 or Plan 2 (Standalone or included in a plan like Microsoft 365 E3 or E5) |   
| **[Indicators of compromise (IoCs)](manage-indicators.md)**. In Defender for Endpoint, IoCs can be configured to define the detection, prevention, and exclusion of entities. Examples: <br/>"Allow" indicators can be used to define exceptions to antivirus scans and remediation actions.<br/>"Alert and block" indicators can be used to prevent files or processes from executing. <br/><br/>To learn more, see [Create indicators](manage-indicators.md). | Microsoft Defender for Endpoint Plan 2 (Standalone or included in a plan like Microsoft 365 E5) | 

> [!TIP]
> To learn more about Defender for Endpoint plans, see [Microsoft Defender for Endpoint Plan 1 and Plan 2](defender-endpoint-plan-1-2.md).

## Methods to configure cloud protection

You can turn Microsoft Defender Antivirus cloud protection on or off by using one of several methods, such as:

- [Microsoft Intune](#use-microsoft-intune-to-turn-on-cloud-protection)  
- [Group Policy](#use-group-policy-to-turn-on-cloud-protection)
- [PowerShell cmdlets](#use-powershell-cmdlets-to-turn-on-cloud-protection)
- [Windows Management Instruction](#use-windows-management-instruction-wmi-to-turn-on-cloud-protection) (WMI)

You can also use [Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection). And, you can turn cloud protection on or off on individual endpoints by using the [Windows Security app](#turn-on-cloud-protection-on-individual-clients-with-the-windows-security-app). 

For more information about the specific network-connectivity requirements to ensure your endpoints can connect to the cloud protection service, see [Configure and validate network connections](configure-network-connections-microsoft-defender-antivirus.md).

> [!NOTE]
> In Windows 10 and Windows 11, there is no difference between the **Basic** and **Advanced** reporting options described in this article. This is a legacy distinction and choosing either setting results in the same level of cloud protection. There is no difference in the type or amount of information that is shared. For more information on what we collect, see the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=521839).

## Use Microsoft Intune to turn on cloud protection

1. Go to the Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)) and sign in.

2. Choose **Endpoint security** \> **Antivirus**.

3. In the **AV policies** section, either select an existing policy, or choose **+ Create Policy**. 

   | Task  | Steps  |
   |---------|---------|
   | Create a new policy     | 1. For **Platform**, select **Windows 10, Windows 11, and Windows Server**. <br/><br/>2. For **Profile**, select **Microsoft Defender Antivirus**.<br/><br/>3. On the **Basics** page, specify a name and description for the policy, and then choose **Next**.<br/><br/>4. In the **Defender** section, find **Allow Cloud Protection**, and set it to **Allowed**. Then choose **Next**. <br/><br/>5. Scroll down to **Submit Samples Consent**, and select one of the following settings:<br/>- **Send all samples automatically**<br/>- **Send safe samples automatically**<br/><br/>6. On the **Scope tags** step, if your organization is using [scope tags](/mem/intune/fundamentals/scope-tags), select the tags you want to use, and then choose **Next**.<br/><br/>7. On the **Assignments** step, select the groups, users, or devices that you want to apply this policy to, and then choose **Next**.<br/><br/>8. On the **Review + create** step, review the settings for your policy, and then choose **Create**.          |
   | Edit an existing policy     | 1. Select the policy that you want to edit.<br/><br/>2. Under **Configuration settings**, choose **Edit**.<br/><br/>3. In the **Defender** section, find **Allow Cloud Protection**, and set it to **Allowed**.<br/><br/>4. Scroll down to **Submit Samples Consent**, and select one of the following settings:<br/>- **Send all samples automatically**<br/>- **Send safe samples automatically**<br/><br/>5. Select **Review + save**.        |

> [!TIP]
> To learn more about Microsoft Defender Antivirus settings in Intune, see [Antivirus policy for endpoint security in Intune](/mem/intune/protect/endpoint-security-antivirus-policy).

## Use Group Policy to turn on cloud protection

1. On your Group Policy management device, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and select **Edit**.

2. In the **Group Policy Management Editor**, go to **Computer configuration**.

3. Select **Administrative templates**.

4. Expand the tree to **Windows components** > **Microsoft Defender Antivirus > MAPS**

    > [!NOTE]
    > MAPS settings are equal to cloud-delivered protection.

5. Double-click **Join Microsoft MAPS**. Ensure the option is turned on and set to **Basic MAPS** or **Advanced MAPS**. Select **OK**.

    You can choose to send basic or additional information about detected software:

    - Basic MAPS: Basic membership sends basic information to Microsoft about malware and potentially unwanted software that has been detected on your device. Information includes where the software came from (like URLs and partial paths), the actions taken to resolve the threat, and whether the actions were successful.

    - Advanced MAPS: In addition to basic information, advanced membership sends detailed information about malware and potentially unwanted software, including the full path to the software, and detailed information about how the software has affected your device.

6. Double-click **Send file samples when further analysis is required**. Ensure that the first option is set to **Enabled** and that the other options are set to either:

   - **Send safe samples** (1)
   - **Send all samples** (3)

   > [!NOTE]
   > The **Send safe samples** (1) option means that most samples are sent automatically. Files that are likely to contain personal information prompt the user for additional confirmation.
   > Setting the option to **Always Prompt** (0) lowers the protection state of the device. Setting it to **Never send** (2) means that the [Block at First Sight](configure-block-at-first-sight-microsoft-defender-antivirus.md) feature of Microsoft Defender for Endpoint won't work.

7. Select **OK**.

## Use PowerShell cmdlets to turn on cloud protection

The following cmdlets can turn on cloud protection:

```PowerShell
Set-MpPreference -MAPSReporting Advanced
Set-MpPreference -SubmitSamplesConsent SendAllSamples
```

For more information on how to use PowerShell with Microsoft Defender Antivirus, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Microsoft Defender Antivirus cmdlets](/powershell/module/defender/). [Policy CSP - Defender](/windows/client-management/mdm/policy-csp-defender) also has more information specifically on [-SubmitSamplesConsent](/windows/client-management/mdm/policy-csp-defender#defender-submitsamplesconsent).

> [!IMPORTANT]
> You can set **-SubmitSamplesConsent** to `SendSafeSamples` (the default, recommended setting), `NeverSend`, or `AlwaysPrompt`. 
> The `SendSafeSamples` setting means that most samples are sent automatically. Files that are likely to contain personal information result in a prompt for the user to continue, and require confirmation.
> The `NeverSend` and `AlwaysPrompt` settings lower the protection level of the device. Furthermore, the `NeverSend` setting means that the [Block at First Sight](configure-block-at-first-sight-microsoft-defender-antivirus.md) feature of Microsoft Defender for Endpoint won't work.

## Use Windows Management Instruction (WMI) to turn on cloud protection

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/defender/set-msft-mppreference) class for the following properties:

```WMI
MAPSReporting
SubmitSamplesConsent
```

For more information about allowed parameters, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

## Turn on cloud protection on individual clients with the Windows Security app

> [!NOTE]
> If the **Configure local setting override for reporting Microsoft MAPS** Group Policy setting is set to **Disabled**, then the **Cloud-based protection** setting in Windows Settings are greyed out and unavailable. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting is updated in Windows Settings.

1. Open the Windows Security app by selecting the shield icon in the task bar, or by searching the start menu for **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar), and then, under **Virus & threat protection settings**, select **Manage settings**.

   :::image type="content" source="../../media/wdav-protection-settings-wdsc.png" alt-text="The Virus & threat protection settings" lightbox="../../media/wdav-protection-settings-wdsc.png":::

3. Confirm that **Cloud-based Protection** and **Automatic sample submission** are switched to **On**.

   > [!NOTE]
   > If automatic sample submission has been configured with Group Policy, then the setting is greyed out and unavailable.

## See also

- [Use Microsoft cloud protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md)

- [Configuration Manager: Microsoft Defender for Endpoint](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection)

- [Use PowerShell cmdlets to manage Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md)

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
