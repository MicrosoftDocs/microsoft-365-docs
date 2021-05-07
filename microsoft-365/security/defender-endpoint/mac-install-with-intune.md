---
title: Intune-based deployment for Microsoft Defender for Endpoint on Mac
description: Install Microsoft Defender for Endpoint on Mac, using Microsoft Intune.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, uninstallation, intune, jamf, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Intune-based deployment for Microsoft Defender for Endpoint on macOS


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


> [!NOTE]
> This documentation explains the legacy method for deploying and configuring Microsoft Defender for Endpoint on macOS devices. The native experience is now available in the MEM console. The release of the native UI in the MEM console provide admins with a much simpler way to configure and deploy the application and send it down to macOS devices. <br> <br>
>The blog post [MEM simplifies deployment of Microsoft Defender for Endpoint for macOS](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/microsoft-endpoint-manager-simplifies-deployment-of-microsoft/ba-p/1322995) explains the new features. To configure the app, go to [Settings for Microsoft Defender for Endpoint on macOS in Microsoft InTune](https://docs.microsoft.com/mem/intune/protect/antivirus-microsoft-defender-settings-macos). To deploy the app, go to [Add Microsoft Defender for Endpoint to macOS devices using Microsoft Intune](https://docs.microsoft.com/mem/intune/apps/apps-advanced-threat-protection-macos).

**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)

This topic describes how to deploy Microsoft Defender for Endpoint on macOS through Intune. A successful deployment requires the completion of all of the following steps:

1. [Download installation and onboarding packages](#download-installation-and-onboarding-packages)
1. [Client device setup](#client-device-setup)
1. [Approve system extensions](#approve-system-extensions)
1. [Create System Configuration profiles](#create-system-configuration-profiles)
1. [Publish application](#publish-application)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.


## Overview

The following table summarizes the steps you would need to take to deploy and manage Microsoft Defender for Endpoint on Macs, via Intune. More detailed steps are available below.

| Step | Sample file names | BundleIdentifier |
|-|-|-|
| [Download installation and onboarding packages](#download-installation-and-onboarding-packages) | WindowsDefenderATPOnboarding__MDATP_wdav.atp.xml | com.microsoft.wdav.atp |
| [Approve System Extension for Microsoft Defender for Endpoint](#approve-system-extensions) | MDATP_SysExt.xml | N/A |
| [Approve Kernel Extension for Microsoft Defender for Endpoint](#download-installation-and-onboarding-packages) | MDATP_KExt.xml | N/A |
| [Grant full disk access to Microsoft Defender for Endpoint](#create-system-configuration-profiles-step-8) | MDATP_tcc_Catalina_or_newer.xml | com.microsoft.wdav.tcc |
| [Network Extension policy](#create-system-configuration-profiles-step-9) | MDATP_NetExt.xml | N/A |
| [Configure Microsoft AutoUpdate (MAU)](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/mac-updates#intune) | MDATP_Microsoft_AutoUpdate.xml | com.microsoft.autoupdate2 |
| [Microsoft Defender for Endpoint configuration settings](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/mac-preferences#intune-profile-1)<br/><br/> **Note:** If you're planning to run a third-party AV for macOS, set `passiveMode` to `true`. | MDATP_WDAV_and_exclusion_settings_Preferences.xml | com.microsoft.wdav |
| [Configure Microsoft Defender for Endpoint and MS AutoUpdate (MAU) notifications](#create-system-configuration-profiles-step-10) | MDATP_MDAV_Tray_and_AutoUpdate2.mobileconfig | com.microsoft.autoupdate2 or com.microsoft.wdav.tray |

## Download installation and onboarding packages

Download the installation and onboarding packages from Microsoft Defender Security Center:

1. In Microsoft Defender Security Center, go to **Settings** > **Device Management** > **Onboarding**.

2. Set the operating system to **macOS** and the deployment method to **Mobile Device Management / Microsoft Intune**.

    ![Onboarding settings screenshot](images/atp-mac-install.png)

3. Select **Download installation package**. Save it as _wdav.pkg_ to a local directory.

4. Select **Download onboarding package**. Save it as _WindowsDefenderATPOnboardingPackage.zip_ to the same directory.

5. Download **IntuneAppUtil** from [https://docs.microsoft.com/intune/lob-apps-macos](https://docs.microsoft.com/intune/lob-apps-macos).

6. From a command prompt, verify that you have the three files.
  

    ```bash
    ls -l
    ```

    ```Output
    total 721688
    -rw-r--r--  1 test  staff     269280 Mar 15 11:25 IntuneAppUtil
    -rw-r--r--  1 test  staff      11821 Mar 15 09:23 WindowsDefenderATPOnboardingPackage.zip
    -rw-r--r--  1 test  staff  354531845 Mar 13 08:57 wdav.pkg
    ```
7. Extract the contents of the .zip files:

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

8. Make IntuneAppUtil an executable:

    ```bash
    chmod +x IntuneAppUtil
    ```

9. Create the wdav.pkg.intunemac package from wdav.pkg:

    ```bash
    ./IntuneAppUtil -c wdav.pkg -o . -i "com.microsoft.wdav" -n "1.0.0"
    ```
    ```Output
    Microsoft Intune Application Utility for Mac OS X
    Version: 1.0.0.0
    Copyright 2018 Microsoft Corporation

    Creating intunemac file for /Users/test/Downloads/wdav.pkg
    Composing the intunemac file output
    Output written to ./wdav.pkg.intunemac.

    IntuneAppUtil successfully processed "wdav.pkg",
    to deploy refer to the product documentation.
    ```

## Client device setup

You don't need any special provisioning for a Mac device beyond a standard [Company Portal installation](https://docs.microsoft.com/intune-user-help/enroll-your-device-in-intune-macos-cp).

1. Confirm device management.

   ![Confirm device management screenshot](images/mdatp-3-confirmdevicemgmt.png)

    Select **Open System Preferences**, locate **Management Profile** on the list, and select **Approve...**. Your Management Profile would be displayed as **Verified**:

    ![Management profile screenshot](images/mdatp-4-managementprofile.png)

2. Select **Continue** and complete the enrollment.

   You may now enroll more devices. You can also enroll them later, after you have finished provisioning system configuration and application packages.

3. In Intune, open **Manage** > **Devices** > **All devices**. Here you can see your device among those listed:

   > [!div class="mx-imgBorder"]
   > ![Add Devices screenshot](images/mdatp-5-alldevices.png)

## Approve System Extensions

To approve the system extensions:

1. In Intune, open **Manage** > **Device configuration**. Select **Manage** > **Profiles** > **Create Profile**.

2. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Extensions**. Select **Create**.

3. In the **Basics** tab, give a name to this new profile.

4. In the **Configuration settings** tab, add the following entries in the **Allowed system extensions** section:

    Bundle identifier         | Team identifier
    --------------------------|----------------
    com.microsoft.wdav.epsext | UBF8T346G9
    com.microsoft.wdav.netext | UBF8T346G9

    > [!div class="mx-imgBorder"]
    > ![Screenshot of the extension settings in Configuration settings on the Basics tab](images/mac-system-extension-intune2.png)

5. In the **Assignments** tab, assign this profile to **All Users & All devices**.

6. Review and create this configuration profile.

## Create System Configuration profiles

1. In Intune, open **Manage** > **Device configuration**. Select **Manage** > **Profiles** > **Create Profile**.

2. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Custom**. Select **Configure**.

3. Open the configuration profile and upload intune/kext.xml. This file was created in one of the preceding sections.

4. Select **OK**.

    ![Import a configuration from a file for Custom Configuration Profile](images/mdatp-6-systemconfigurationprofiles.png)

5. Select **Manage** > **Assignments**. In the **Include** tab, select **Assign to All Users & All devices**.

6. Repeat steps 1 through 5 for more profiles.

7. Create another profile, give it a name, and upload the intune/WindowsDefenderATPOnboarding.xml file.

8. Download **fulldisk.mobileconfig** from [our GitHub repository](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) and save it as **tcc.xml**. Create another profile, give it any name and upload this file to it.<a name="create-system-configuration-profiles-step-8" id = "create-system-configuration-profiles-step-8"></a>

   > [!CAUTION]
   > macOS 10.15 (Catalina) contains new security and privacy enhancements. Beginning with this version, by default, applications are not able to access certain locations on disk (such as Documents, Downloads, Desktop, etc.) without explicit consent. In the absence of this consent, Microsoft Defender for Endpoint is not able to fully protect your device.
   >
   > This configuration profile grants Full Disk Access to Microsoft Defender for Endpoint. If you previously configured Microsoft Defender for Endpoint through Intune, we recommend you update the deployment with this configuration profile.

9. As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on macOS inspects socket traffic and reports this information to the Microsoft Defender Security Center portal. The following policy allows the network extension to perform this functionality. Download **netfilter.mobileconfig** from [our GitHub repository](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/netfilter.mobileconfig), save it as netext.xml and deploy it using the same steps as in the previous sections. <a name = "create-system-configuration-profiles-step-9" id = "create-system-configuration-profiles-step-9"></a>

10. To allow Microsoft Defender for Endpoint on macOS and Microsoft Auto Update to display notifications in UI on macOS 10.15 (Catalina), download `notif.mobileconfig` from [our GitHub repository](https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/notif.mobileconfig) and import it as a custom payload. <a name = "create-system-configuration-profiles-step-10" id = "create-system-configuration-profiles-step-10"></a>

11. Select **Manage > Assignments**.  In the **Include** tab, select **Assign to All Users & All devices**.

Once the Intune changes are propagated to the enrolled devices, you can see them listed under **Monitor** > **Device status**:

> [!div class="mx-imgBorder"]
> ![View of Device Status in Monitor](images/mdatp-7-devicestatusblade.png)

## Publish application

1. In Intune, open the **Manage > Client apps** blade. Select **Apps > Add**.

2. Select **App type=Other/Line-of-business app**.

3. Select **file=wdav.pkg.intunemac**. Select **OK** to upload.

4. Select **Configure** and add the required information.

5. Use **macOS High Sierra 10.14** as the minimum OS.

6. Set *Ignore app version* to **Yes**. Other settings can be any arbitrary value.

    > [!CAUTION]
    > Setting *Ignore app version* to **No** impacts the ability of the application to receive updates through Microsoft AutoUpdate. See [Deploy updates for Microsoft Defender for Endpoint on macOS](mac-updates.md) for additional information about how the product is updated.
    >
    > If the version uploaded by Intune is lower than the version on the device, then the lower version will be installed, effectively downgrading Microsoft Defender for Endpoint. This could result in a non-functioning application. See [Deploy updates for Microsoft Defender for Endpoint on macOS](mac-updates.md) for additional information about how the product is updated. If you deployed Microsoft Defender for Endpoint with *Ignore app version* set to **No**, please change it to **Yes**. If Microsoft Defender for Endpoint still cannot be installed on a client device, then uninstall Microsoft Defender for Endpoint and push the updated policy.
     
    > [!div class="mx-imgBorder"]
    > ![Display of App information in App add](images/mdatp-8-intuneappinfo.png)

7. Select **OK** and **Add**.

    > [!div class="mx-imgBorder"]
    > ![Device status shown in Notifications window](images/mdatp-9-intunepkginfo.png)

8. It may take a few moments to upload the package. After it's done, select the package from the list and go to **Assignments** and **Add group**.

    > [!div class="mx-imgBorder"]
    > ![Client apps screenshot](images/mdatp-10-clientapps.png)

9. Change **Assignment type** to **Required**.

10. Select **Included Groups**. Select **Make this app required for all devices=Yes**. Select **Select group to include** and add a group that contains the users you want to target. Select **OK** and **Save**.

    > [!div class="mx-imgBorder"]
    > ![Intune assignments info screenshot](images/mdatp-11-assignments.png)

11. After some time the application will be published to all enrolled devices. You can see it listed in **Monitor** > **Device**, under **Device install status**:

    > [!div class="mx-imgBorder"]
    > ![Intune device status screenshot](images/mdatp-12-deviceinstall.png)

## Verify client device state

1. After the configuration profiles are deployed to your devices, open **System Preferences** > **Profiles** on your Mac device.

    ![System Preferences screenshot](images/mdatp-13-systempreferences.png)<br/>
    ![System Preferences Profiles screenshot](images/mdatp-14-systempreferencesprofiles.png)

2. Verify that the following configuration profiles are present and installed. The **Management Profile** should be the Intune system profile. _Wdav-config_ and _wdav-kext_ are system configuration profiles that were added in Intune:
    ![Profiles screenshot](images/mdatp-15-managementprofileconfig.png)

3. You should also see the Microsoft Defender icon in the top-right corner:

    > [!div class="mx-imgBorder"]
    > ![Microsoft Defender icon in status bar screenshot](images/mdatp-icon-bar.png)

## Troubleshooting

Issue: No license found

Solution: Follow the steps above to create a device profile using WindowsDefenderATPOnboarding.xml

## Logging installation issues

For more information on how to find the automatically generated log that is created by the installer when an error occurs, see [Logging installation issues](mac-resources.md#logging-installation-issues).

## Uninstallation

See [Uninstalling](mac-resources.md#uninstalling) for details on how to remove Microsoft Defender for Endpoint on macOS from client devices.
