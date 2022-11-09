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
ms.date: 10/24/2022
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
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

**Platforms**
- Windows

[Cloud protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md) delivers accurate, real-time, and intelligent protection. Cloud protection should be enabled by default; however, you can configure cloud protection to suit your organization's needs.

## Methods to configure cloud protection

You can turn Microsoft Defender Antivirus cloud protection on or off by using one of several methods:

- Microsoft Endpoint Manager, which includes Microsoft Intune and Configuration Manager
- Group Policy
- PowerShell cmdlets

You can also turn cloud protection on or off on individual endpoints using the Windows Security app. 

For more information about the specific network-connectivity requirements to ensure your endpoints can connect to the cloud protection service, see [Configure and validate network connections](configure-network-connections-microsoft-defender-antivirus.md).

> [!NOTE]
> In Windows 10 and Windows 11, there is no difference between the **Basic** and **Advanced** reporting options described in this article. This is a legacy distinction and choosing either setting will result in the same level of cloud protection. There is no difference in the type or amount of information that is shared. For more information on what we collect, see the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=521839).

## Use Intune to turn on cloud protection

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. On the **Home** pane, select **Devices**> **Configuration Profiles**.

3. Select the **Device restrictions** profile type you want to configure. If you need to create a new **Device restrictions** profile type, see [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure).

4. In the **Properties** section Click on **Edit** next to **Configuration settings** and click on **Microsoft Defender Antivirus**.

5. On the **Cloud-delivered protection** switch, select **Enable**.

6. In the **Prompt users before sample submission** dropdown, select **Send all samples automatically**.

For more information about Intune device profiles, including how to create and configure their settings, see [What are Microsoft Intune device profiles?](/intune/device-profiles)

## Use Microsoft Endpoint Manager to turn on cloud protection

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2. Choose **Endpoint security** \> **Antivirus**.

3. Select an antivirus profile. (If you don't have one yet, or if you want to create a new profile, see [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure).

4. Select **Properties**. Then, next to **Configuration settings**, choose **Edit**.

5. Expand **Cloud protection**, and then in the **Cloud-delivered protection level** list, select one of the following:
   - **High**: Applies a strong level of detection.
   - **High plus**: Uses the **High** level and applies more protection measures (may affect client performance).
   - **Zero tolerance**: Blocks all unknown executables.

6. Select **Review + save**, then choose **Save**.

For more information about configuring Microsoft Endpoint Configuration Manager, see [How to create and deploy antimalware policies: Cloud-protection service](/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service).

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

   >[!NOTE]
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

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Use Microsoft cloud protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md)

- [How to create and deploy antimalware policies: Cloud-protection service](/configmgr/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service)

- [Use PowerShell cmdlets to manage Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md)
