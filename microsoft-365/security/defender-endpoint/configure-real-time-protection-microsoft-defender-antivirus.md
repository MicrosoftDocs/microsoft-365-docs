---
title: Enable and configure Microsoft Defender Antivirus always-on protection
description: Enable and configure Microsoft Defender Antivirus real-time protection features such as behavior monitoring, heuristics, and machine learning
keywords: antivirus, real-time protection, rtp, machine learning, behavior monitoring, heuristics
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.topic: conceptual
ms.date: 05/24/2023
manager: dansimp
ms.custom: nextgen
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Enable and configure Microsoft Defender Antivirus always-on protection

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Always-on protection consists of real-time protection, behavior monitoring, and heuristics to identify malware based on known suspicious and malicious activities. These activities include events, such as processes making unusual changes to existing files, modifying or creating automatic startup registry keys and startup locations (also known as autostart extensibility points, or ASEPs), and other changes to the file system or file structure. Always-on protection is an important part of your antivirus protection and should be enabled. 

> [!NOTE]
> [Tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) helps keep always-on protection and other security settings from being changed. As a result, when tamper protection is enabled, any changes made to [tamper-protected settings](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection#what-happens-when-tamper-protection-is-turned-on) are ignored. If you must make changes to a device and those changes are blocked by tamper protection, we recommend using [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. Note that after troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.

## Manage antivirus settings with Microsoft Intune

You can use Intune to configure antivirus policies, and then apply those policies across devices in your organization. Antivirus policies help security admins focus on managing the discrete group of antivirus settings for managed devices. Each antivirus policy includes several profiles. Each profile contains only the settings that are relevant for Microsoft Defender Antivirus for macOS and Windows devices, or for the user experience in the Windows Security app on Windows devices. For more information, see [Antivirus policy for endpoint security in Intune](/mem/intune/protect/endpoint-security-antivirus-policy).

1. Go to the [Intune admin center](https://intune.microsoft.com/) and sign in.

2. In the navigation pane, choose **Endpoint security** and then, under **Manage**, choose **Antivirus**.

3. Select an existing policy, or choose **+ Create Policy** to create a new policy. 

   | Task | What to do |
   |---|---|
   | Create a new policy for Windows devices | 1. In the **Create a profile** step, in the **Platform** list, select **Windows 10, Windows 11, and Windows Server**. For **Profile**, select **Microsoft Defender Antivirus**. Then choose **Create**.<br/><br/>2. On the **Basics** step, type a name and description for your policy, and then choose **Next**.<br/><br/>3. On the **Configuration settings** step, expand **Defender**, select the settings you want to use for your policy, and then choose **Next**. To get help with your settings, refer to [Policy CSP - Defender](/windows/client-management/mdm/policy-csp-defender?WT.mc_id=Portal-fx). <br/><br/>4. On the **Scope tags** step, choose **Select scope tags** to open the *Select tags* pane to assign scope tags to the profile, and then select **Next** to continue.<br/><br/>5. On the **Assignments** page, select the groups to receive this profile, and then select **Next**. For more information on assigning profiles, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign).<br/><br/>6. On the **Review + create** page, when you're done, choose **Create**. The new profile is displayed in the list when you select the policy type for the profile you created.  |
   | Create a new policy for macOS devices | 1. In the **Create a profile** step, in the **Platform** list, select **macOS**. For **Profile**, select **Antivirus**. Then choose **Create**.<br/><br/>2. On the **Basics** step, type a name and description for your policy, and then choose **Next**.<br/><br/>3. On the **Configuration settings** step, select the settings you want to use for your policy, and then choose **Next**. To get help with your settings, refer to [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md).<br/><br/>4. On the **Scope tags** step, choose **Select scope tags** to open the *Select tags* pane to assign scope tags to the profile, and then select **Next** to continue.<br/><br/>5. On the **Assignments** page, select the groups to receive this profile, and then select **Next**. For more information on assigning profiles, see [Assign user and device profiles](/mem/intune/configuration/device-profile-assign).<br/><br/>6. On the **Review + create** page, when you're done, choose **Create**. The new profile is displayed in the list when you select the policy type for the profile you created.  |
   | Edit an existing policy for Windows devices | 1. Select an antivirus policy for Windows devices. <br/><br/>2. Next to **Configuration settings**, choose **Edit**. <br/><br/>3. Expand **Defender**, and then edit settings for your policy. To get help with your settings, refer to [Policy CSP - Defender](/windows/client-management/mdm/policy-csp-defender?WT.mc_id=Portal-fx). <br/><br/>4. select **Review + save**, and then select **Save**.  |
   | Edit an existing policy for macOS devices | 1. Select an antivirus policy for macOS devices. <br/><br/>2. Select **Properties**, and then, next to **Configuration settings**, choose **Edit**. <br/><br/>3. Under **Microsoft Defender for Endpoint**, edit settings for your policy. To get help with your settings, refer to [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md).<br/><br/>4. select **Review + save**, and then select **Save**.  |

## Are you using Group Policy?

> [!IMPORTANT]
> We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) to manage Microsoft Defender Antivirus settings for your organization. With Intune, you can control where tamper protection is enabled (or disabled) through policies. You can also protect Microsoft Defender Antivirus exclusions. For more information, see [Protect Microsoft Defender Antivirus exclusions from tampering](prevent-changes-to-security-settings-with-tamper-protection.md#protect-microsoft-defender-antivirus-exclusions).

You can use Group Policy to manage some Microsoft Defender Antivirus settings. Note that if [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled in your organization, any changes made to [tamper-protected settings](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection#what-happens-when-tamper-protection-is-turned-on) are ignored. You can't turn off tamper protection by using Group Policy. 

If you must make changes to a device and those changes are blocked by tamper protection, we recommend using [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. Note that after troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.
 
You can use **Local Group Policy Editor** to enable and configure Microsoft Defender Antivirus always-on protection settings.

### Enable and configure always-on protection using Group Policy

1. Open **Local Group Policy Editor**, as follows:

    1. In your Windows 10 or Windows 11 taskbar search box, type **gpedit**.

    2. Under **Best match**, select **Edit group policy** to launch **Local Group Policy Editor**.
    
       :::image type="content" source="images/gpedit-search.png" alt-text="The GPEdit taskbar search result in the Control panel" lightbox="images/gpedit-search.png":::

2. In the left pane of **Local Group Policy Editor**, expand the tree to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus**.

3. Configure the Microsoft Defender Antivirus antimalware service policy setting.

   In the **Microsoft Defender Antivirus** details pane on right, double-click **Allow antimalware service to start up with normal priority**, and set it to **Enabled**.

   Then select **OK**.

4. Configure the Microsoft Defender Antivirus real-time protection policy settings, as follows:

    1. In the **Microsoft Defender Antivirus** details pane, double-click **Real-time Protection**. Or, from the **Microsoft Defender Antivirus** tree on left pane, select **Real-time Protection**.

    2. In the **Real-time Protection** details pane on right, double-click the policy setting as specified in [Real-time protection policy settings](#real-time-protection-policy-settings) (later in this article).

    3. Configure the setting as appropriate, and select **OK**.

    4. Repeat the previous steps for each setting in the table.

5. Configure the Microsoft Defender Antivirus scanning policy setting, as follows:

    1. From the **Microsoft Defender Antivirus** tree on left pane, select **Scan**.
    
   2. In the **Scan** details pane on right, double-click **Turn on heuristics**, and set it to **Enabled**. 

   3. Select **OK**.

6. Close **Local Group Policy Editor**.

### Real-time protection policy settings

For the most current settings, get the latest ADMX files in your central store. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) and download the latest files. 

### Disable real-time protection in Group Policy

> [!WARNING]
> **Disabling real-time protection drastically reduces the protection on your endpoints and is not recommended**. In addition, if [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled, you cannot turn it off by using Group Policy. If you must make changes to a device and those changes are blocked by tamper protection, we recommend using [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. Note that after troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.

1. Open **Local Group Policy Editor**.

   1. In your Windows 10 or Windows 11 taskbar search box, type **gpedit**.
   2. Under **Best match**, select **Edit group policy** to launch **Local Group Policy Editor**.

2. In the left pane of **Local Group Policy Editor**, expand the tree to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Real-time Protection**.

3. In the **Real-time Protection** details pane on right, double-click **Turn off real-time protection**.

4. In the **Turn off real-time protection** setting window, set the option to **Enabled**.
   
5. select **OK**.

6. Close **Local Group Policy Editor**.

## See also

- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

If you're looking for antivirus-related information for other platforms, see:
- [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
- [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
