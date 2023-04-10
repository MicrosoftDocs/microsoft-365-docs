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
ms.date: 02/08/2023
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

[Cloud protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md) delivers accurate, real-time, and intelligent protection. Cloud protection should be enabled by default; however, you can configure cloud protection to suit your organization's needs.

## Methods to configure cloud protection

You can turn Microsoft Defender Antivirus cloud protection on or off by using one of several methods, such as:

- [Microsoft Intune](#use-microsoft-intune-to-turn-on-cloud-protection)  
- [Group Policy](#use-group-policy-to-turn-on-cloud-protection)
- [PowerShell cmdlets](#use-powershell-cmdlets-to-turn-on-cloud-protection)
- [Windows Management Instruction](#use-windows-management-instruction-wmi-to-turn-on-cloud-protection) (WMI)

You can also use [Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection). And, you can turn cloud protection on or off on individual endpoints by using the [Windows Security app](#turn-on-cloud-protection-on-individual-clients-with-the-windows-security-app). 

For more information about the specific network-connectivity requirements to ensure your endpoints can connect to the cloud protection service, see [Configure and validate network connections](configure-network-connections-microsoft-defender-antivirus.md).

> [!NOTE]
> In Windows 10 and Windows 11, there is no difference between the **Basic** and **Advanced** reporting options described in this article. This is a legacy distinction and choosing either setting will result in the same level of cloud protection. There is no difference in the type or amount of information that is shared. For more information on what we collect, see the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=521839).

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

    - Basic MAPS: Basic membership will send basic information to Microsoft about malware and potentially unwanted software that has been detected on your device. Information includes where the software came from (like URLs and partial paths), the actions taken to resolve the threat, and whether the actions were successful.

    - Advanced MAPS: In addition to basic information, advanced membership will send detailed information about malware and potentially unwanted software, including the full path to the software, and detailed information about how the software has affected your device.

6. Double-click **Send file samples when further analysis is required**. Ensure that the first option is set to **Enabled** and that the other options are set to either:

   - **Send safe samples** (1)
   - **Send all samples** (3)

   > [!NOTE]
   > The **Send safe samples** (1) option means that most samples will be sent automatically. Files that are likely to contain personal information will still prompt and require additional confirmation.
   > Setting the option to **Always Prompt** (0) will lower the protection state of the device. Setting it to **Never send** (2) means that the [Block at First Sight](configure-block-at-first-sight-microsoft-defender-antivirus.md) feature of Microsoft Defender for Endpoint won't work.

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
> The `SendSafeSamples` setting means that most samples will be sent automatically. Files that are likely to contain personal information will result in a prompt to continue and will require confirmation.
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
> If the **Configure local setting override for reporting Microsoft MAPS** Group Policy setting is set to **Disabled**, then the **Cloud-based protection** setting in Windows Settings will be greyed-out and unavailable. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings.

1. Open the Windows Security app by selecting the shield icon in the task bar, or by searching the start menu for **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar), and then, under **Virus & threat protection settings**, select **Manage settings**.

   :::image type="content" source="../../media/wdav-protection-settings-wdsc.png" alt-text="The Virus & threat protection settings" lightbox="../../media/wdav-protection-settings-wdsc.png":::

3. Confirm that **Cloud-based Protection** and **Automatic sample submission** are switched to **On**.

   > [!NOTE]
   > If automatic sample submission has been configured with Group Policy then the setting will be greyed-out and unavailable.

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
