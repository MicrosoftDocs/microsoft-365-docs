---
title: Intune-based deployment for Microsoft Defender for Endpoint on Mac
description: Install Microsoft Defender for Endpoint on Mac, using Microsoft Intune.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, uninstallation, intune, jamf, macos, big sur, monterey, ventura, mde for mac
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
ms.date: 12/18/2020
---

# Deploy Microsoft Defender for Endpoint on macOS with Microsoft Intune

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This topic describes how to deploy Microsoft Defender for Endpoint on macOS through Microsoft Intune. A successful deployment requires the completion of all of the following steps:

1. [Download the onboarding package](#download-the-onboarding-package)
1. [Client device setup](#client-device-setup)
1. [Approve system extensions](#approve-system-extensions)
1. [Create System Configuration profiles](#create-system-configuration-profiles)
1. [Publish application](#publish-application)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.

> [!NOTE]
> Microsoft Defender for Endpoint no longer supports macOS Catalina (10.15) as Apple ended support for Catalina (10.15) in December 2022.

## Overview

The following table summarizes the steps you would need to take to deploy and manage Microsoft Defender for Endpoint on Macs, via Microsoft Intune. More detailed steps are available below.

|Step|Sample file names|BundleIdentifier|
|---|---|---|
|[Download the onboarding package](#download-the-onboarding-package)|WindowsDefenderATPOnboarding__MDATP_wdav.atp.xml|com.microsoft.wdav.atp|
|[Approve System Extension for Microsoft Defender for Endpoint](#approve-system-extensions)|MDATP_SysExt.xml|N/A|
|[Network Extension policy](#network-filter)|MDATP_NetExt.xml|N/A|
|[Configure Microsoft AutoUpdate (MAU)](mac-updates.md#intune)|MDATP_Microsoft_AutoUpdate.xml|com.microsoft.autoupdate2|
|[Microsoft Defender for Endpoint configuration settings](mac-preferences.md#intune-full-profile) <p> **Note:** If you're planning to run a third-party AV for macOS, set `passiveMode` to `true`.|MDATP_WDAV_and_exclusion_settings_Preferences.xml|com.microsoft.wdav|
|[Configure Microsoft Defender for Endpoint and MS AutoUpdate (MAU) notifications](/microsoft-365/security/defender-endpoint/mac-install-with-intune#notifications)|MDATP_MDAV_Tray_and_AutoUpdate2.mobileconfig|com.microsoft.autoupdate2 or com.microsoft.wdav.tray|

## Download the onboarding package

Download the onboarding packages from Microsoft 365 Defender portal.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

1. In Microsoft 365 Defender portal, go to **Settings** \> **Endpoints** \> **Device management** \> **Onboarding**.

2. Set the operating system to **macOS** and the deployment method to **Mobile Device Management / Microsoft Intune**.

   :::image type="content" source="images/macos-install-with-intune.png" alt-text="The Onboarding settings page" lightbox="images/macos-install-with-intune.png":::

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
In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), open **Devices** \> **Configuration profiles**.

### Onboarding blob

This profile contains a license information for Microsoft Defender for Endpoint. Without license information, Microsoft Defender for Endpoint will report that it isn't licensed.

1. Select **Create Profile** under **Configuration Profiles**.
1. Select **Platform**=**macOS**, **Profile type**=**Templates**. **Template name**=**Custom**. Click **Create**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-6-systemconfigurationprofiles-1.png" alt-text="The Custom Configuration Profile creation page" lightbox="images/mdatp-6-systemconfigurationprofiles-1.png":::

1. Choose a name for the profile, for example, "Defender for Cloud or Endpoint onboarding for macOS". Click **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-6-systemconfigurationprofiles-2.png" alt-text="The Custom Configuration Profile name field" lightbox="images/mdatp-6-systemconfigurationprofiles-2.png":::

1. Choose a name for the configuration profile name, for example, "Defender for Endpoint onboarding for macOS".
1. Choose a [deployment channel](/mem/intune/fundamentals/whats-new#new-deployment-channel-setting-for-custom-device-configuration-profiles-on-macos-devices).
1. Select intune/WindowsDefenderATPOnboarding.xml that you extracted from the onboarding package above as configuration profile file.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-6-systemconfigurationprofiles.png" alt-text="The import of a configuration from a file for Custom Configuration Profile" lightbox="images/mdatp-6-systemconfigurationprofiles.png":::

1. Click **Next**.
1. Assign devices on the **Assignment** tab. Click **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-6-systemconfigurationprofiles-3.png" alt-text="The completion of the custom configuration profile." lightbox="images/mdatp-6-systemconfigurationprofiles-3.png":::

1. Review and **Create**.
1. Open **Devices** \> **Configuration profiles**, you can see your created profile there.

### Approve System Extensions

This profile is needed for macOS 11 (Big Sur) or later. It will be ignored on older macOS.

1. Select **Create Profile** under **Configuration Profiles**.
1. Select **Platform**=**macOS**, **Profile type**=**Templates**. **Template name**=**Extensions**. Click **Create**.
1. In the **Basics** tab, give a name to this new profile.
1. In the **Configuration settings** tab, expand **System Extensions** add the following entries in the **Allowed system extensions** section:

    |Bundle identifier|Team identifier|
    |---|---|
    |com.microsoft.wdav.epsext|UBF8T346G9|
    |com.microsoft.wdav.netext|UBF8T346G9|

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mac-system-extension-intune2.png" alt-text="The settings of the system's extension" lightbox="images/mac-system-extension-intune2.png":::

1. In the **Assignments** tab, assign this profile to **All Users & All devices**.
1. Review and create this configuration profile.


### Full Disk Access


> [!NOTE]
> Enabling **TCC** (Transparency, Consent & Control) through an Mobile Device Management solution such as [Intune](mac-install-with-intune.md), will eliminate the risk of Defender for Endpoint losing **Full Disk Access** Authorization to function properly.
>
> This configuration profile grants Full Disk Access to Microsoft Defender for Endpoint. If you previously configured Microsoft Defender for Endpoint through Intune, we recommend you update the deployment with this configuration profile.

Download [**fulldisk.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Endpoint Full Disk Access" as profile name, and downloaded **fulldisk.mobileconfig** as Configuration profile name.

### Network Filter

As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on macOS inspects socket traffic and reports this information to the Microsoft 365 Defender portal. The following policy allows the network extension to perform this functionality.

Download [**netfilter.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/netfilter.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Endpoint Network Filter" as profile name, and downloaded **netfilter.mobileconfig** as Configuration profile name.

### Notifications

This profile is used to allow Microsoft Defender for Endpoint on macOS and Microsoft Auto Update to display notifications in UI.

Download [**notif.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/notif.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Endpoint Notifications" as profile name, and downloaded **notif.mobileconfig** as Configuration profile name.

### Background Services

   > [!CAUTION]
   > macOS 13 (Ventura) contains new privacy enhancements. Beginning with this version, by default, applications cannot run in background without explicit consent. Microsoft Defender for Endpoint must run its daemon process in background.
   >
   > This configuration profile grants Background Service permissions to Microsoft Defender for Endpoint. If you previously configured Microsoft Defender for Endpoint through Microsoft Intune, we recommend you update the deployment with this configuration profile.

Download [**background_services.mobileconfig**](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/background_services.mobileconfig) from [our GitHub repository](https://github.com/microsoft/mdatp-xplat/tree/master/macos/mobileconfig/profiles).

Follow the instructions for [Onboarding blob](#onboarding-blob) from above, using "Defender for Background Services" as profile name, and downloaded **background_services.mobileconfig** as Configuration profile name.

### View Status

Once the Intune changes are propagated to the enrolled devices, you can see them listed under **Monitor** \> **Device status**:

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/mdatp-7-devicestatusblade.png" alt-text="The view of the device status" lightbox="images/mdatp-7-devicestatusblade.png":::

## Publish application

This step enables deploying Microsoft Defender for Endpoint to enrolled machines.

1. In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), open **Apps**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-8-app-before.png" alt-text="The application's overview page" lightbox="images/mdatp-8-app-before.png":::

1. Select By platform > macOS > Add.
1. Choose **App type**=**macOS**, click **Select**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-9-app-type.png" alt-text="The specific application type" lightbox="images/mdatp-9-app-type.png":::

1. Keep default values, click **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-10-properties.png" alt-text="The application properties page" lightbox="images/mdatp-10-properties.png":::

1. Add assignments, click **Next**.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-11-assignments.png" alt-text="The Intune assignments information page" lightbox="images/mdatp-11-assignments.png":::

1. Review and **Create**.
1. You can visit **Apps** \> **By platform** \> **macOS** to see it on the list of all applications.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-12-applications.png" alt-text="The application lists page" lightbox="images/mdatp-12-applications.png":::

For more information, see [Add Microsoft Defender for Endpoint to macOS devices using Microsoft Intune](/mem/intune/apps/apps-advanced-threat-protection-macos).)

   > [!CAUTION]
   > You have to create all required configuration profiles and push them to all machines, as explained above.

## Client device setup

You don't need any special provisioning for a Mac device beyond a standard [Company Portal installation](/intune-user-help/enroll-your-device-in-intune-macos-cp).

1. Confirm device management.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-3-confirmdevicemgmt.png" alt-text="The Confirm device management page" lightbox="images/mdatp-3-confirmdevicemgmt.png":::

    Select **Open System Preferences**, locate **Management Profile** on the list, and select **Approve...**. Your Management Profile would be displayed as **Verified**:

    :::image type="content" source="images/mdatp-4-managementprofile.png" alt-text="The Management profile page" lightbox="images/mdatp-4-managementprofile.png":::

2. Select **Continue** and complete the enrollment.

   You may now enroll more devices. You can also enroll them later, after you have finished provisioning system configuration and application packages.

3. In Intune, open **Manage** \> **Devices** \> **All devices**. Here you can see your device among those listed:

   > [!div class="mx-imgBorder"]
   > :::image type="content" source="images/mdatp-5-alldevices.png" alt-text="The All Devices page" lightbox="images/mdatp-5-alldevices.png":::

## Verify client device state

1. After the configuration profiles are deployed to your devices, open **System Preferences** \> **Profiles** on your Mac device.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-13-systempreferences.png" alt-text="The System preferences page" lightbox="images/mdatp-13-systempreferences.png":::

   :::image type="content" source="images/mdatp-14-systempreferencesprofiles.png" alt-text="The System Preferences Profiles page" lightbox="images/mdatp-14-systempreferencesprofiles.png":::

2. Verify that the following configuration profiles are present and installed. The **Management Profile** should be the Intune system profile. _Wdav-config_ and _wdav-kext_ are system configuration profiles that were added in Intune:

   :::image type="content" source="images/mdatp-15-managementprofileconfig.png" alt-text="The Profiles page" lightbox="images/mdatp-15-managementprofileconfig.png":::

3. You should also see the Microsoft Defender for Endpoint icon in the top-right corner:

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-icon-bar.png" alt-text="The icon for Microsoft Defender for Endpoint in the status bar" lightbox="images/mdatp-icon-bar.png":::

<br>
</br>

## Troubleshooting

Issue: No license found.

Solution: Follow the steps above to create a device profile using WindowsDefenderATPOnboarding.xml.

## Logging installation issues

For more information on how to find the automatically generated log that is created by the installer when an error occurs, see [Logging installation issues](mac-resources.md#logging-installation-issues).

## Uninstallation

See [Uninstalling](mac-resources.md#uninstalling) for details on how to remove Microsoft Defender for Endpoint on macOS from client devices.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
