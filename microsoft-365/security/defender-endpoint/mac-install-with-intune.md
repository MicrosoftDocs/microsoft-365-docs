---
title: Intune-based deployment for Microsoft Defender for Endpoint on Mac
description: Install Microsoft Defender for Endpoint on Mac, using Microsoft Intune.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, uninstallation, intune, jamf, macos, catalina, mojave, high sierra
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Intune-based deployment for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This topic describes how to deploy Microsoft Defender for Endpoint on macOS through Intune. A successful deployment requires the completion of all of the following steps:

1. [Download the onboarding package](#download-the-onboarding-package)
1. [Client device setup](#client-device-setup)
1. [Approve system extensions](#approve-system-extensions)
1. [Create System Configuration profiles](#create-system-configuration-profiles)
1. [Publish application](#publish-application)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.

## Overview

The following table summarizes the steps you would need to take to deploy and manage Microsoft Defender for Endpoint on Macs, via Intune. More detailed steps are available below.

<br>

****

|Step|Sample file names|BundleIdentifier|
|---|---|---|
|[Download the onboarding package](#download-the-onboarding-package)|WindowsDefenderATPOnboarding__MDATP_wdav.atp.xml|com.microsoft.wdav.atp|
|[Approve System Extension for Microsoft Defender for Endpoint](#approve-system-extensions)|MDATP_SysExt.xml|N/A|
|[Approve Kernel Extension for Microsoft Defender for Endpoint](#download-the-onboarding-package)|MDATP_KExt.xml|N/A|
|[Grant full disk access to Microsoft Defender for Endpoint](#full-disk-access)|MDATP_tcc_Catalina_or_newer.xml|com.microsoft.wdav.tcc|
|[Network Extension policy](#network-filter)|MDATP_NetExt.xml|N/A|
|[Configure Microsoft AutoUpdate (MAU)](mac-updates.md#intune)|MDATP_Microsoft_AutoUpdate.xml|com.microsoft.autoupdate2|
|[Microsoft Defender for Endpoint configuration settings](mac-preferences.md#intune-full-profile) <p> **Note:** If you're planning to run a third-party AV for macOS, set `passiveMode` to `true`.|MDATP_WDAV_and_exclusion_settings_Preferences.xml|com.microsoft.wdav|
|[Configure Microsoft Defender for Endpoint and MS AutoUpdate (MAU) notifications](mac-updates.md)|MDATP_MDAV_Tray_and_AutoUpdate2.mobileconfig|com.microsoft.autoupdate2 or com.microsoft.wdav.tray|
|

## Download the onboarding package

Download the onboarding packages from Microsoft 365 Defender portal:

1. In Microsoft 365 Defender portal, go to **Settings** \> **Endpoints** \> **Device management** \> **Onboarding**.

2. Set the operating system to **macOS** and the deployment method to **Mobile Device Management / Microsoft Intune**.

    ![Onboarding settings screenshot.](images/macos-install-with-intune.png)

3. Select **Download onboarding package**. Save it as _WindowsDefenderATPOnboardingPackage.zip_ to the same directory.

4. Extract the contents of the .zip file:

    ```bash
    unzip WindowsDefenderATPOnboardingPackage.zip
    ```

    ```Output
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    warning:  WindowsDefenderATPOnboardingPackage.zip appears to use backslashes as path separators
      inflating: intune/kext.xml
      inflating: intune/WindowsDefenderATPOnboarding.xml
      inflating: jamf/WindowsDefenderATPOnboarding.plist
    ```

## Create System Configuration profiles

The next step is to create system configuration profiles that Microsoft Defender for Endpoint needs.
In the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/), open **Devices** \> **Configuration profiles**.

### Onboarding blob

This profile contains license information for Microsoft Defender for Endpoint. Without this profile, Microsoft Defender for Endpoint will report that it isn't licensed.

1. Select **Create Profile** under **Configuration Profiles**.
1. Select **Platform**=**macOS**, **Profile type**=**Templates**. **Template name**=**Custom**. Click **Create**.

    > [!div class="mx-imgBorder"]
    > ![Custom Configuration Profile creation.](images/mdatp-6-systemconfigurationprofiles-1.png)

1. Choose a name for the profile, e.g., "Defender for Cloud or Endpoint onboarding for macOS". Click **Next**.

    > [!div class="mx-imgBorder"]
    > ![Custom Configuration Profile - name.](images/mdatp-6-systemconfigurationprofiles-2.png)

1. Choose a name for the configuration profile name, e.g., "Defender for Endpoint onboarding for macOS".
1. Choose a [deployment channel](/mem/intune/fundamentals/whats-new#new-deployment-channel-setting-for-custom-device-configuration-profiles-on-macos-devices).
1. Select intune/WindowsDefenderATPOnboarding.xml that you extracted from the onboarding package above as configuration profile file.

    > [!div class="mx-imgBorder"]
    > ![Import a configuration from a file for Custom Configuration Profile.](images/mdatp-6-systemconfigurationprofiles.png)

1. Click **Next**.
1. Assign devices on the **Assignment** tab. Click **Next**.

    > [!div class="mx-imgBorder"]
    > ![Custom Configuration Profile - assignment.](images/mdatp-6-systemconfigurationprofiles-2.png)

1. Review and **Create**.
1. Open **Devices** \> **Configuration profiles**, you can see your created profile there.

    > [!div class="mx-imgBorder"]
    > ![Custom Configuration Profile - done.](images/mdatp-6-systemconfigurationprofiles-3.png)

### Approve System Extensions

This profile is needed for macOS 10.15 (Catalina) or newer. It will be ignored on older macOS.

1. Select **Create Profile** under **Configuration Profiles**.
1. Select **Platform**=**macOS**, **Profile type**=**Templates**. **Template name**=**Extensions**. Click **Create**.
1. In the **Basics** tab, give a name to this new profile.
1. In the **Configuration settings** tab, expand **System Extensions** add the following entries in the **Allowed system extensions** section:

    |Bundle identifier|Team identifier|
    |---|---|
    |com.microsoft.wdav.epsext|UBF8T346G9|
    |com.microsoft.wdav.netext|UBF8T346G9|

    > [!div class="mx-imgBorder"]
    > ![System extension settings.](images/mac-system-extension-intune2.png)

1. In the **Assignments** tab, assign this profile to **All Users & All devices**.
1. Review and create this configuration profile.

### Kernel Extensions

This profile is needed for macOS 10.15 (Catalina) or older. It will be ignored on newer macOS.

> [!CAUTION]
> Apple Silicon (M1) devices do not support KEXT. Installation of a configuration profile consisting KEXT policies will fail on these devices.

1. Select **Create Profile** under **Configuration Profiles**.
1. Select **Platform**=**macOS**, **Profile type**=**Templates**. **Template name**=**Extensions**. Click **Create**.
1. In the **Basics** tab, give a name to this new profile.
1. In the **Configuration settings** tab, expand **Kernel Extensions**.
1. Set **Team identifier** to **UBF8T346G9** and click **Next**.

    > [!div class="mx-imgBorder"]
    > ![Kernel extension settings.](images/mac-kernel-extension-intune2.png)

1. In the **Assignments** tab, assign this profile to **All Users & All devices**.
1. Review and create this configuration profile.

### Full Disk Access

   > [!CAUTION]
   > macOS 10.15 (Catalina) contains new security and privacy enhancements. Beginning with this version, by default, applications are not able to access certain locations on disk (such as Documents, Downloads, Desktop, etc.) without explicit consent. In the absence of this consent, Microsoft Defender for Endpoint is not able to fully protect your device.
   >
   > This configuration profile grants Full Disk Access to Microsoft Defender for Endpoint. If you previously configured Microsoft Defender for Endpoint through Intune, we recommend you update the deployment with this configuration profile.

Download [**fulldisk.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Endpoint Full Disk Access" as profile name, and downloaded **fulldisk.mobileconfig** as Configuration profile name.

### Network Filter

As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on macOS inspects socket traffic and reports this information to the Microsoft 365 Defender portal. The following policy allows the network extension to perform this functionality.

Download [**netfilter.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/netfilter.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Endpoint Network Filter" as profile name, and downloaded **netfilter.mobileconfig** as Configuration profile name.

### Notifications

This profile is used to allow Microsoft Defender for Endpoint on macOS and Microsoft Auto Update to display notifications in UI on macOS 10.15 (Catalina) or newer.

Download [**notif.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/notif.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Endpoint Notifications" as profile name, and downloaded **notif.mobileconfig** as Configuration profile name.

### View Status

Once the Intune changes are propagated to the enrolled devices, you can see them listed under **Monitor** \> **Device status**:

> [!div class="mx-imgBorder"]
> ![View of Device Status in Monitor.](images/mdatp-7-devicestatusblade.png)

## Publish application

This step enables deploying Microsoft Defender for Endpoint to enrolled machines.

1. In the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com/), open **Apps**.

    > [!div class="mx-imgBorder"]
    > ![Ready to create application.](images/mdatp-8-app-before.png)

1. Select By platform > macOS > Add.
1. Choose **App type**=**macOS**, click **Select**.

    > [!div class="mx-imgBorder"]
    > ![Specify application type.](images/mdatp-9-app-type.png)

1. Keep default values, click **Next**.

    > [!div class="mx-imgBorder"]
    > ![Application properties.](images/mdatp-10-properties.png)

1. Add assignments, click **Next**.

    > [!div class="mx-imgBorder"]
    > ![Intune assignments info screenshot.](images/mdatp-11-assignments.png)

1. Review and **Create**.
1. You can visit **Apps** \> **By platform** \> **macOS** to see it on the list of all applications.

    > [!div class="mx-imgBorder"]
    > ![Applications list.](images/mdatp-12-applications.png)

For more information, see [Add Microsoft Defender for Endpoint to macOS devices using Microsoft Intune](/mem/intune/apps/apps-advanced-threat-protection-macos).)

   > [!CAUTION]
   > You have to create all required configuration profiles and push them to all machines, as explained above.

## Client device setup

You don't need any special provisioning for a Mac device beyond a standard [Company Portal installation](/intune-user-help/enroll-your-device-in-intune-macos-cp).

1. Confirm device management.

    > [!div class="mx-imgBorder"]
    > ![Confirm device management screenshot.](images/mdatp-3-confirmdevicemgmt.png)

    Select **Open System Preferences**, locate **Management Profile** on the list, and select **Approve...**. Your Management Profile would be displayed as **Verified**:

    ![Management profile screenshot.](images/mdatp-4-managementprofile.png)

2. Select **Continue** and complete the enrollment.

   You may now enroll more devices. You can also enroll them later, after you have finished provisioning system configuration and application packages.

3. In Intune, open **Manage** \> **Devices** \> **All devices**. Here you can see your device among those listed:

   > [!div class="mx-imgBorder"]
   > ![Add Devices screenshot.](images/mdatp-5-alldevices.png)

## Verify client device state

1. After the configuration profiles are deployed to your devices, open **System Preferences** \> **Profiles** on your Mac device.

    > [!div class="mx-imgBorder"]
    > ![System Preferences screenshot.](images/mdatp-13-systempreferences.png)

    ![System Preferences Profiles screenshot.](images/mdatp-14-systempreferencesprofiles.png)

2. Verify that the following configuration profiles are present and installed. The **Management Profile** should be the Intune system profile. _Wdav-config_ and _wdav-kext_ are system configuration profiles that were added in Intune:

    ![Profiles screenshot.](images/mdatp-15-managementprofileconfig.png)

3. You should also see the Microsoft Defender for Endpoint icon in the top-right corner:

    > [!div class="mx-imgBorder"]
    > ![Microsoft Defender for Endpoint icon in status bar screenshot.](images/mdatp-icon-bar.png)

## Troubleshooting

Issue: No license found.

Solution: Follow the steps above to create a device profile using WindowsDefenderATPOnboarding.xml.

## Logging installation issues

For more information on how to find the automatically generated log that is created by the installer when an error occurs, see [Logging installation issues](mac-resources.md#logging-installation-issues).

## Uninstallation

See [Uninstalling](mac-resources.md#uninstalling) for details on how to remove Microsoft Defender for Endpoint on macOS from client devices.
