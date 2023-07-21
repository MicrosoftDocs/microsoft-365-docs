---
title: Manual deployment for Microsoft Defender for Endpoint on macOS
description: Install Microsoft Defender for Endpoint on macOS manually, from the command line.
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
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Manual deployment for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink).

This topic describes how to deploy Microsoft Defender for Endpoint on macOS manually. A successful deployment requires the completion of all of the following steps:

- [Download installation and onboarding packages](#download-installation-and-onboarding-packages)
- [Application installation (macOS 11 and newer versions)](#application-installation-macos-11-and-newer-versions)
- [Client configuration](#client-configuration)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender for Endpoint on macOS page](microsoft-defender-endpoint-mac.md) for a description of prerequisites and system requirements for the current software version.

## Download installation and onboarding packages

Download the installation and onboarding packages from Microsoft 365 Defender portal.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

1. In <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, go to **Settings > Endpoints > Device management > Onboarding**.
2. In Section 1 of the page, set operating system to **macOS** and Deployment method to **Local script**.
3. In Section 2 of the page, select **Download installation package**. Save it as wdav.pkg to a local directory.
4. In Section 2 of the page, select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.

   :::image type="content" source="images/portal-onboarding-macos.png" alt-text="The options to download the installation and onboarding packages" lightbox="images/portal-onboarding-macos.png":::

5. From a command prompt, verify that you have the two files.

## Application installation (macOS 11 and newer versions)

To complete this process, you must have admin privileges on the device.

1. Navigate to the downloaded wdav.pkg in Finder and open it.

   :::image type="content" source="images/monterey-install-1.png" alt-text="The installation process for the application" lightbox="images/monterey-install-1.png":::

2. Select **Continue**, agree with the License terms, and enter the password when prompted.

3. At the end of the installation process, you'll be prompted to approve the system extensions used by the product. Select **Open Security Preferences**.

   :::image type="content" source="images/monterey-install-2.png" alt-text="The system extension approval" lightbox="images/monterey-install-2.png":::

4. From the **Security & Privacy** window, select **Allow**.

   :::image type="content" source="images/monterey-install-3.png" alt-text="The system extension security preferences1" lightbox="images/monterey-install-3.png":::

5. Repeat steps 3 & 4 for all system extensions distributed with Microsoft Defender for Endpoint on Mac.

6. As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on Mac inspects socket traffic and reports this information to the Microsoft 365 Defender portal. When prompted to grant Microsoft Defender for Endpoint permissions to filter network traffic, select **Allow**.

   :::image type="content" source="images/monterey-install-4.png" alt-text="The system extension security preferences2" lightbox="images/monterey-install-4.png":::

7. Open **System Preferences** \> **Security & Privacy** and navigate to the **Privacy** tab. Grant **Full Disk Access** permission to **Microsoft Defender** and **Microsoft Defenders Endpoint Security Extension**.

   :::image type="content" source="images/monterey-install-5.png" alt-text="The full disk access" lightbox="images/monterey-install-5.png":::

## Client configuration

1. Copy wdav.pkg and MicrosoftDefenderATPOnboardingMacOs.sh to the device where you deploy Microsoft Defender for Endpoint on macOS.

    The client device isn't associated with org_id. Note that the *org_id* attribute is blank.

    ```bash
    mdatp health --field org_id
    ```

2. Run the Bash script to install the configuration file:

    ```bash
    Sudo bash -x MicrosoftDefenderATPOnboardingMacOs.sh
    ```

3. Verify that the device is now associated with your organization and reports a valid org ID:

    ```bash
    mdatp health --field org_id
    ```

    After installation, you'll see the Microsoft Defender icon in the macOS status bar in the top-right corner.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/mdatp-icon-bar.png" alt-text="The Microsoft Defender icon in status bar" lightbox="images/mdatp-icon-bar.png":::

## How to Allow Full Disk Access

1. To grant consent, open **System Preferences** \> **Security & Privacy** \> **Privacy** \> **Full Disk Access**. Click the lock icon to make changes (bottom of the dialog box). Select Microsoft Defender for Endpoint.

2. Run an AV detection test to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

    1. Ensure that real-time protection is enabled (denoted by a result of 1 from running the following command):

        ```bash
        mdatp health --field real_time_protection_enabled
        ```

    1. Open a Terminal window. Copy and execute the following command:

        ```bash
        curl -o ~/Downloads/eicar.com.txt https://www.eicar.org/download/eicar.com.txt
        ```

    1. The file should have been quarantined by Defender for Endpoint on Mac. Use the following command to list all the detected threats:

        ```bash
        mdatp threat list
        ```

3. Run an EDR detection test to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

   1. In your browser such as Microsoft Edge for Mac or Safari.

   1. Download MDATP MacOS DIY.zip from https://aka.ms/mdatpmacosdiy and extract.

      You may be prompted:

      > Do you want to allow downloads on "mdatpclientanalyzer.blob.core.windows.net"?<br/>
      > You can change which websites can download files in Websites Preferences.

4. Click **Allow**.

5. Open **Downloads**.

6. You should see **MDATP MacOS DIY**.

   > [!TIP]
   > If you double-click, you will get the following message:
   >
   > > **"MDATP MacOS DIY" cannot be opened because the developer cannot be verifier.**<br/>
   > > macOS cannot verify that this app is free from malware.<br/>
   > > **\[Move to Trash\]** **\[Cancel\]**

7. Click **Cancel**.

8. Right-click **MDATP MacOS DIY**, and then click **Open**.

    The system should display the following message:

    > **macOS cannot verify the developer of MDATP MacOS DIY. Are you sure you want to open it?**<br/>
    > By opening this app, you will be overriding system security which can expose your computer and personal information to malware that may harm your Mac or compromise your privacy.

9. Click **Open**.

    The system should display the following message:

    > Microsoft Defender for Endpoint - macOS EDR DIY test file<br/>
    > Corresponding alert will be available in the MDATP portal.

10. Click **Open**.

    In a few minutes an alert named "macOS EDR Test Alert" should be raised.

11. Go to Microsoft 365 Defender portal (https://security.microsoft.com/).

12. Go to the Alert Queue.

    :::image type="content" source="images/b8db76c2-c368-49ad-970f-dcb87534d9be.png" alt-text="An macOS EDR test alert that shows severity, category, detection source, and a collapsed menu of actions" lightbox="images/b8db76c2-c368-49ad-970f-dcb87534d9be.png":::

    Look at the alert details and the device timeline, and perform the regular investigation steps.

## Logging installation issues

See [Logging installation issues](mac-resources.md#logging-installation-issues) for more information on how to find the automatically generated log that is created by the installer when an error occurs.

## Uninstallation

See [Uninstalling](mac-resources.md#uninstalling) for details on how to remove Microsoft Defender for Endpoint on macOS from client devices.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
