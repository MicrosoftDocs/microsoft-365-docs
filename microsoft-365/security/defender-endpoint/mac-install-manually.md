---
title: Manual deployment for Microsoft Defender for Endpoint on macOS
description: Install Microsoft Defender for Endpoint on macOS manually, from the command line.
ms.service: defender-endpoint
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 12/15/2023
---

# Manual deployment for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink).

This article describes how to deploy Microsoft Defender for Endpoint on macOS manually. A successful deployment requires the completion of all of the following steps:

- [Download installation and onboarding packages](#download-installation-and-onboarding-packages)
- [Application installation (macOS 11 and newer versions)](#application-installation-macos-11-and-newer-versions)
- [Onboarding Package](#onboarding-package)
- [Grant Full Disk Access](#allow-full-disk-access)
- [Ensure Background Execution](#background-execution)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.

## Download installation and onboarding packages

Download the installation and onboarding packages from Microsoft Defender portal.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

1. In <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender portal</a>, go to **Settings > Endpoints > Device management > Onboarding**.
2. In Section 1 of the page, set operating system to **macOS** and Deployment method to **Local script**.
3. In Section 2 of the page, select **Download installation package**. Save it as wdav.pkg to a local directory.
4. In Section 2 of the page, select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.
   :::image type="content" source="images/onboarding-package-step4.png" alt-text="Screenshot that shows the options to download the installation and onboarding packages.":::

5. From a command prompt, verify that you have the two files.
    - Type *cd Downloads* and press **Enter**.
    - Type *ls* and press **Enter**.
     :::image type="content" source="images/Terminal-image-step5.png" alt-text="Screenshot that displays the two download files.":::
6. Copy the *wdav.pkg* and *MicrosoftDefenderATPOnboardingMacOs.sh* to the device where you want to deploy the Microsoft Defender for Endpoint on macOS.

## Application installation (macOS 11 and newer versions)

To complete this process, you must have admin privileges on the device.

1. - Navigate to the downloaded *wdav.pkg* in **Finder** and open it.
    
     Or
    - You can download the *wdav.pkg*- from **Terminal**
    
      *sudo installer -store -pkg /Users/admin/Downloads/wdav.pkg -target /*

   :::image type="content" source="images/monterey-install-1.png" alt-text="Screenshot that shows the installation process for the application":::

2. Select **Continue**.

3. Read through the **Software License Agreement** and select **Continue** to agree with the terms.
    :::image type="content" source="images/software-license-agreement.png" alt-text="Screenshot that shows the Software License Agreement.":::

4. Read through the *End-User License Agreement (EULA)* and select **Agree**.
    :::image type="content" source="images/agree-license.png" alt-text="Screenshot that shows the acceptance of the agreement.":::

5. From **Destination Select**, select the disk where you want to install the Microsoft Defender Software, for example, *Macintosh HD* and select **Continue**.
    :::image type="content" source="images/destination-select.png" alt-text="Screenshot that shows the selection of destination for installation.":::

> [!Note]
> The amount of disk space required for installation is around 777 MB.

6. To change the installation destination, select **Change Install Location...**.
    :::image type="content" source="images/installation-type.png" alt-text="Screenshot that shows the final installation step.":::

7. Click **Install**.

8. Enter the password, when prompted.
    :::image type="content" source="images/password-2g.png" alt-text="Screenshot that shows the password dialog box.":::

9. Click **Install Software**.

3. At the end of the installation process, for macOS Big Sur (11.0) or latest version, you're prompted to approve the system extensions used by the product. Select **Open Security Preferences**.

   :::image type="content" source="images/monterey-install-2.png" alt-text="Screenshot that shows the system extension approval":::

11. To enable system extention, select **Details**.
    :::image type="content" source="images/system-extention-image.png" alt-text="Screenshot that shows the system extention.":::

4. From the **Security & Privacy** window, select the checkboxes next to **Microsoft Defender** and select **OK**.
    :::image type="content" source="images/security-privacy-window-updated.png" alt-text="Screenshot that shows the security and privacy window.":::

5. Repeat steps 11 and 12 for all system extensions distributed with Microsoft Defender for Endpoint on Mac.

6. As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on Mac inspects socket traffic and reports this information to the Microsoft Defender portal. When prompted to grant Microsoft Defender for Endpoint permissions to filter network traffic, select **Allow**.

   :::image type="content" source="images/monterey-install-4.png" alt-text="Screenshot that shows the system extension security preferences2":::

    To troubleshoot System Extension issues, refer [Troubleshoot System Extension](mac-support-sys-ext.md).

## Allow Full Disk Access

The macOS Catalina (10.15) and newer versions require full disk access to be granted to **Microsoft Defender for Endpoint** in order to be able to protect and monitor.

> [!Note]
> Full disk access grant to **Microsoft Defender for Endpoint** is a new requirement for all the third-party software by Apple for files and folders containing personal data.

To grant full disk access:

1. Open **System Preferences** \> **Security & Privacy** \> **Privacy** \> **Full Disk Access**. Click the lock icon to make changes (bottom of the dialog box).
1. Grant **Full Disk Access** permission to **Microsoft Defender** and **Microsoft Defenders Endpoint Security Extension**.

   :::image type="content" source="images/full-disk-access-security-privacy.png" alt-text="The screenshot shows the full disk access's security and privacy.":::
1. Select **General** \> **Restart** for the new system extensions to take effect.

   :::image type="content" source="images/restart-fulldisk.png" alt-text="Screenshot that allows you to restart the system for new system extensions to be enabled.":::
1. Enable *Potentially Unwanted Application* (PUA) in block mode.

   To enable PUA, refer [configure PUA protection](mac-pua.md).
1. Enable *Network Protection*.

   To enable *Network protection*, refer [manual deployment](network-protection-macos.md).
1. Enable *Device Control*.

   To enable *Device Control*, refer [device control for macOS](mac-device-control-overview.md).
1. Enable *Tamper Protection* in block mode.

   To enable *Tamper Protection*, refer [Protect MacOS security settings with tamper protection](tamperprotection-macos.md).
1. If you have the *Microsoft Purview – Endpoint data loss prevention license*,  you can review [Get started with Microsoft Purview - Endpoint data loss prevention](/purview/endpoint-dlp-getting-started).

## Background execution

Starting with macOS 13, a user must explicitly allow an application to run in background.
macOS will pop a prompt up, telling the user that Microsoft Defender can run in background.

:::image type="content" source="images/background-items-notification.png" alt-text="Screenshot that shows background items notification":::

You can view applications permitted to run in background in System Settings => Login Items => Allow in the Background at any time:

:::image type="content" source="images/background-items.png" alt-text="Screenshot that shows background items":::

Make sure all Microsoft Defender and Microsoft Corporation items are enabled. If they are disabled then macOS will not start Microsoft Defender after a machine restart.

## Onboarding Package

Once you have installed the MDE on macOS client, you must now onboard the package, which registers to your Microsoft Defender for Endpoint tenant and licenses it.

1. Verify if MDE on macOS has already been onboarded.

   Copy *wdav.pkg* and *MicrosoftDefenderATPOnboardingMacOs.sh* to the device where you have deployed Microsoft Defender for Endpoint on macOS.

    The client device isn't associated with *org_id*. The *org_id* attribute is blank.

    ```bash
    mdatp health --field org_id
    ```

2. Run the Bash script to install the onboarding package:

    ```bash
    sudo bash -x MicrosoftDefenderATPOnboardingMacOs.sh
    ```

3. Verify that the device is now associated with your organization and reports a valid org ID:

    ```bash
    mdatp health --field org_id
    ```

    After installation, you'll see the Microsoft Defender icon in the macOS status bar in the top-right corner.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-icon-bar.png" alt-text="Screenshot that shows the Microsoft Defender icon in status bar":::

   You can [troubleshoot license issues for Microsoft Defender for Endpoint on macOS](mac-support-license.md).

4. Run the connectivity test.

  ```bash
  mdatp connectivity test 
  ```

 You can [troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on macOS](troubleshoot-cloud-connect-mdemac.md).

## Verifying anti-malware detection

See the following article to test for anti-malware detection review: [Antivirus detection test to verify device onboarding and reporting services](validate-antimalware.md)

## Verifying EDR detection
See the following article to test for an EDR detection review: [EDR detection test to verify device onboarding and reporting services](/microsoft-365/security/defender-endpoint/edr-detection.md)

## Logging installation issues

For more information on how to find the automatically generated log that's created by the installer, see [Logging installation issues](mac-resources.md#logging-installation-issues).

For information on troubleshooting procedures, see:

- [Troubleshoot system extension issues in Microsoft Defender for Endpoint on macOS](mac-support-sys-ext.md)

- [Troubleshoot installation issues for Microsoft Defender for Endpoint on macOS](mac-support-install.md)

- [Troubleshoot license issues for Microsoft Defender for Endpoint on macOS](mac-support-license.md)

- [Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on macOS](troubleshoot-cloud-connect-mdemac.md)

- [Troubleshoot performance issues for Microsoft Defender for Endpoint on macOS](mac-support-perf.md)

## Uninstallation

See [Uninstalling](mac-resources.md#uninstalling) for details on how to remove Microsoft Defender for Endpoint on macOS from client devices.

  > [!Tip]
  > - Do you want to learn more? Engage with the Microsoft Security community in our Tech Community: [Microsoft Defender for Endpoint Tech Community](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bd-p/MicrosoftDefenderATP).  
  > - If you have any feedback that you will like to share, submit it by opening Microsoft Defender Endpoint on Mac on your device and navigate to **Help** \> **Send feedback**.

## Recommended content

- [Learn how to install, configure, update, and use Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md).
- [Learn how to set up the Microsoft Defender for Endpoint on macOS policies in Jamf](mac-jamfpro-policies.md).
- [Learn how to deploy Microsoft Defender for Endpoint on macOS with Jamf Pro](mac-install-with-jamf.md).
- [Learn how to troubleshoot license issues in Microsoft Defender for Endpoint on Mac](mac-support-license.md).
- [Learn how to use resources for Microsoft Defender for Endpoint on Mac, including how to uninstall it, how to collect diagnostic logs, CLI commands, and known issues with the product](mac-resources.md).
- [Learn how to configure Microsoft Defender for Endpoint on Mac in enterprise organizations](mac-preferences.md).
- [Learn how to install Microsoft Defender for Endpoint on Mac on other management solutions](mac-install-with-other-mdm.md).
- [Learn how to detect and block Potentially Unwanted Applications (PUA) using Microsoft Defender for Endpoint on macOS](mac-pua.md).

