---
title: Troubleshoot system extension issues for Microsoft Defender for Endpoint on macOS
description: Troubleshoot system extension issues in Microsoft Defender for Endpoint on macOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, performance, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 06/07/2023
---

# Troubleshoot system extension issues in Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](defender-endpoint-plan-1-2.md)
- [Microsoft Defender for Endpoint Plan 2](defender-endpoint-plan-1-2.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/get-started/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https%3a%2f%2faka.ms%2fMDEp2OpenTrial%3focid%3ddocs-wdatp-exposedapis-abovefoldlink&brandingId=28b276fb-d2a0-4379-a7c0-57dce33da0f9&ali=1&bac=1)

You can submit feedback by opening Microsoft Defender for Endpoint on Mac on your device and by navigating to **Help > Send feedback**.

Another option is to submit feedback via the Microsoft 365 Defender by launching **security.microsoft.com** and selecting the **Give feedback** tab.

This article provides information on how to troubleshoot issues with the system extension that's installed as part of Microsoft Defender for Endpoint (MDE) on macOS.

Starting with macOS BigSur (11), Apple’s macOS requires all system extensions to be explicitly approved before they're allowed to run on the device.

## Symptom

You'll notice that the Microsoft Defender for Endpoint has an **x** symbol in the shield, as shown in the following screenshot:

:::image type="content" source="images/mde-screen-with-x-symbol.png" alt-text="The Microsoft Defender for Endpoint screen that displays the x symbol on its menu." lightbox="images/mde-screen-with-x-symbol.png":::

If you click the shield with the **x** symbol, you'll get options as shown in the following screenshot:

:::image type="content" source="images/options-on-clicking-x-symbol.png" alt-text="The options you get on clicking the x symbol." lightbox="images/options-on-clicking-x-symbol.png":::

Click **Action needed**.

The screen as shown in the following screenshot appears:

:::image type="content" source="images/screen-on-clicking-action-needed.png" alt-text="The screen that is displayed on clicking the Action needed option." lightbox="images/screen-on-clicking-action-needed.png":::

You can also run **mdatp health**: It reports if real-time protection is enabled but not available. This report indicates that the system extension isn't approved to run on your device.

```bash
mdatp health
```
The output on running **mdatp health** is:

```Output
healthy				            : false
health_issues		            : [“no active event provider”, “network event provider not running”, “full disk access has not been granted”]
...
real_time_protection_enabled	: unavailable
real_time_protection_available: unavailable
...
full_disk_access_enabled		: false
```
The output report displayed on running **mdatp health** is shown in the following screenshot:

:::image type="content" source="images/screen-on-clicking-fix.png" alt-text="The screen that is displayed on clicking the Fix button." lightbox="images/screen-on-clicking-fix.png":::

## Cause

macOS requires that a user manually and explicitly approves certain functions that an application uses, for example, system extensions, running in background, sending notifications, full disk access, and so on. Microsoft Defender for Endpoint relies on these applications and can't properly function until all these consents are received from a user.

If you didn't approve the system extension during the deployment/installation of Microsoft Defender for Endpoint on macOS, perform the following steps:

1. Check the system extensions by running the following command in the terminal:

   ```BashCopy
   systemextensionsctl list
   ```

   :::image type="content" source="images/check-system-extension.png" alt-text="The screen that shows what should be done to check the system extension." lightbox="images/check-system-extension.png":::

You'll notice that both Microsoft Defender for Endpoint on macOS extensions are in the **[activated waiting for user]** state.

2. In the terminal, run the following command:

   ```BashCopy
   mdatp health --details system_extensions
   ```

You'll get the following output:

```OutputCopy
network_extension_enabled                 : false
network_extension_installed		         : true
endpoint_security_extension_ready		   : false
endpoint_security_extension_installed 	   : true
```

This output is shown in the following screenshot:

:::image type="content" source="images/details-system-extensions-command.png" alt-text="The output regarding details system extensions." lightbox="images/details-system-extensions-command.png":::

The following files might be missing if you're managing it via Intune, JamF, or another MDM solution:

|MobileConfig (Plist)  |“mdatp health” console command output  |macOS setting needed for MDE on macOS to function properly  |
|---------|---------|---------|
|"/Library/Managed Preferences/com.apple.system-extension-policy.plist"    |  real_time_protection_subsystem       |   System extension      |
|"/Library/Managed Preferences/com.apple.webcontent-filter.plist"    |   network_events_subsystem      |     Network Filter extension    |
|"/Library/Managed Preferences/com.apple.TCC.configuration-profile-policy.plist"   |     full_disk_access_enabled    |    Privacy Preference Policy Controls (PPPC, aka TCC (Transparency, Consent & Control), Full Disk Access (FDA))     |
|"/Library/Managed Preferences/com.apple.notificationsettings.plist"    |   n/a      |     End-user notifications    |
|"/Library/Managed Preferences/servicemanagement.plist”     |   n/a      | Background services        |
|"/Library/Managed Preferences/com.apple.TCC.configuration-profile-policy.plist"     |    full_disk_access_enabled (for DLP)     |   Accessibility      |

To troubleshoot the issue of missing files to make Microsoft Defender for Endpoint on macOS work properly, see [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md#microsoft-defender-for-endpoint-on-mac).

## Solution

This section describes the solution of approving the functions such system extension, background services, notifications, full disk access, and so on using the management tools, namely Intune, JamF, Other MDM, and using the method of manual deployment. To perform these functions using these management tools, see:

- [Intune](manage-profiles-approve-sys-extensions-intune.md#manage-profiles-and-approve-extensions-using-intune)
- [JamF](manage-sys-extensions-using-jamf.md#manage-system-extensions-using-jamf)
- [Other MDM](manage-sys-extensions-other-mdm.md#manage-system-extensions-using-other-mdm-solutions)
- [Manual deployment](manage-sys-extensions-manual-deployment.md#manage-system-extensions-using-the-manual-methods-of-deployment)

### Prerequisites

Prior to approving the system extension (using any of the specified management tools), ensure that the following prerequisites are fulfilled:

#### Step 1: Are the profiles coming down to your macOS?

If you're using Intune, see [Manage macOS software update policies in Intune](/mem/intune/protect/software-updates-macos).

:::image type="content" source="images/refresh-devices.png" alt-text="The screen on which you refresh the devices." lightbox="images/refresh-devices.png":::

1. Click the ellipses (three dots).
1. Select **Refresh devices**. The screen as shown in the following screenshot appears:

   :::image type="content" source="images/screen-on-clicking-refresh-devices.png" alt-text="The screen that appears on clicking Refresh devices." lightbox="images/screen-on-clicking-refresh-devices.png":::

1. In Launchpad, type **System Preferences**.
1. Double-click **Profiles**.

   > [!NOTE]
   > If you aren't MDM joined, you won't see **Profiles** as an option.  Contact your MDM support team to see why the **Profiles** option isn't visible. You should be able to see the different profiles such as **System Extensions**, **Accessibility**, **Background Services**, **Notifications**, **Microsoft AutoUpdate**, and so on, as shown in the preceding screenshot.

If you're using JamF, use sudo jamf policy. For more information, see [Policy Management](https://docs.jamf.com/10.26.0/jamf-pro/administrator-guide/Policy_Management.html#:~:text=To%20manually%20trigger%20the%20policy%20using%20the%20jamf,pre-defined%20trigger%2C%20replace%20%3CtriggerName%3E%20with%20the%20appropriate%20value.).

#### Step 2: Ensure that the profiles needed for Microsoft Defender for Endpoint are enabled

The section [Sections that provide guidance on enabling profiles needed for Microsoft Defender for Endpoint](#sections-that-provide-guidance-on-enabling-profiles-needed-for-microsoft-defender-for-endpoint) provides guidance on how to address this issue, depending on the method that you used to deploy Microsoft Defender for Endpoint on macOS.

> [!NOTE]
> A proper naming convention for your configuration profiles is a real advantage. We recommend the following naming scheme:
> `Name of the Setting(s) [(additional info)] -Platform - Set - Policy-Type`
> For example, `FullDiskAccess (piloting) - macOS - Default - MDE`

Using the recommended naming convention enables you to confirm that the correct profiles are dropping down at the time of checking.

> [!TIP]
> To ensure that the correct profiles are coming down, instead of typing **.mobileconfig (plist)**, you can download this profile from Github, to avoid typos elongated hyphens.

In terminal, enter the following syntax:

`curl -O https://URL`

For example,

```BashCopy
   curl -O https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/sysext.mobileconfig
```

##### Sections that provide guidance on enabling profiles needed for Microsoft Defender for Endpoint

1. 
   - **Function**: [Approve System Extensions](mac-install-with-intune.md)
   - **Mobile config (plist)**: https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/sysext.mobileconfig
   - **Applicable to**:
       - **Intune**: Yes
       - **JamF**: Yes
       - **Other MDM**: Yes
       - **Manual**: Must approve the extension by going to **Security Preferences or System Preferences > Security & Privacy** and then selecting **Allow**.

2. 
   - **Function**: [Network Filter](mac-install-with-intune.md)
   - **Mobile config (plist)**: https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/netfilter.mobileconfig
   - **Applicable to**:
       - **Intune**: Yes
       - **JamF**: Yes
       - **Other MDM**: Yes
       - **Manual**: Must approve the extension by going to **Security Preferences or System Preferences > Security & Privacy** and then selecting **Allow**.

3. 
   - **Function**: [Privacy Preference Policy Controls (PPPC, aka TCC (Transparency, Consent & Control), Full Disk Access (FDA))](mac-install-with-intune.md)
   - **Mobile config (plist)**: https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig
   - **Applicable to**:
       - **Intune**: Yes
       - **JamF**: Yes
       - **Other MDM**: Yes
       - **Manual**: Must approve the extension by going to **Security Preferences or System Preferences > Security & Privacy > Privacy > Full Disk Access** and then selecting **Allow**, and checking the box next to the following:
           - **Microsoft Defender**
           - **Microsoft Defender Security Extension**

4. 
   - **Function**: Running in background
   - **Mobile config (plist)**: https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/background_services.mobileconfig
   - **Applicable to**:
       - **Intune**: Yes
       - **JamF**: Yes
       - **Other MDM**: Yes
       - **Manual**: Not applicable

5. 
   - **Function**: Sending notifications
   - **Mobile config (plist)**: https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/notif.mobileconfig
   - **Applicable to**:
       - **Intune**: Yes
       - **JamF**: Yes
       - **Other MDM**: Yes
       - **Manual**: Not applicable

6. 
   - **Function**: Accessibility
   - **Mobile config (plist)**: https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig
   - **Applicable to**:
       - **Intune**: Yes
       - **JamF**: Yes
       - **Other MDM**: Yes
       - **Manual**: Not applicable

#### Step 3: Test the installed profiles using macOS built-in ‘profile’ tool.  It compares your profiles with what we have published in GitHub, reporting inconsistent profiles or profiles missing altogether

1. Download the script from https://github.com/microsoft/mdatp-xplat/tree/master/macos/mdm.
1. Click **Raw**. The new URL will be https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mdm/analyze_profiles.py.
1. Save it as *analyze_profiles.py* to **Downloads** by running the following command in terminal:

```BashCopy
   curl -O https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mdm/analyze_profiles.py
```

4. Run the profile analyzer python3 script without any parameters by executing the following command in terminal:

```BashCopy
   cd /Downloads  
   sudo python3 analyze_profiles.py
```

   > [!NOTE]
   > Sudo permissions are required to execute this command.

OR

5. Run the script directly from the Web by executing the following command:

```BashCopy
   sudo curl https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mdm/analyze_profiles.py        
| python3 -
```

   > [!NOTE]
   > Sudo permissions are required to execute this command.

The output will show all potential issues with profiles.

## Recommended content

- [Deploying Microsoft Defender for Endpoint on macOS with Jamf Pro](mac-install-with-jamf.md): Learn how to deploy Microsoft Defender for Endpoint on macOS with Jamf Pro.
- [Set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro](mac-jamfpro-policies.md): Learn how to set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro.
- [Set up device groups in Jamf Pro](mac-jamfpro-device-groups.md): 
Learn how to set up device groups in Jamf Pro for Microsoft Defender for Endpoint on macOS.
- [Log in to Jamf Pro](mac-install-jamfpro-login.md)

