---
title: Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro
f1.keywords:
    NOCSH
ms.author: v-katykoenen
author: kmkoenen
manager: laurawi
ms.date: 04/24/2023
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro
---

# Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro #

You can use JAMF Pro to onboard macOS devices into Microsoft Purview solutions such as Endpoint data loss prevention (DLP).

> [!IMPORTANT]
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices.

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin ##

- Make sure your [macOS devices are managed through JAMF pro](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) and are associated with an identity (Azure AD joined UPN) through [JAMF Connect](https://www.jamf.com/products/jamf-connect) or Microsoft Intune.
- OPTIONAL: Install the v95+ Microsoft Edge browser on your macOS devices for native Endpoint DLP support on Microsoft Edge.

> [!NOTE]
> The three most recent major releases of macOS are supported.

## Onboard devices into Microsoft Purview solutions using JAMF Pro ##

Onboarding a macOS device into Microsoft Purview solutions is a multi-phase process:
1. [Deploy onboarding packages](#deploy-onboarding-packages)
2. [Configure application preferences](#configure-application-preferences)
3. [Upload the installation package](#upload-the-installation-package)
4. [Deploy System Configuration Profiles](#deploy-system-configuration-profiles)

### Prerequisites

Download the following files.

|File | Description|
|-----|------------|
| [mdatp-nokext.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) | This is the bundled file. |
| [schema.json](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/schema.json)| This is the MDE preference file.|

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

> [!NOTE]
> To download the files:
> 1. Right-click the link and select **Save link as...**. 
> 2. Choose a folder and save the file.

### Get the device onboarding and installation packages
:::image type="content" source="../media/device-macos-dnld-install-package-inline.png" alt-text="Screenshot of the Microsoft Intune Configuration settings tab with all fields populated." lightbox="../media/device-macos-dnld-install-package-expanded.png":::

1. In the compliance portal, open **Settings** > **Device Onboarding** and then choose **Onboarding**.

2. For the **Select operating system to start onboarding process** value, choose **macOS**.

3. For **Deployment method**, choose **Mobile Device Management/Microsoft Intune**.

4. Choose **Download onboarding package** and then extract the contents of the device onboarding package. the *DeviceComplianceOnboarding.plist* file is downloaded to the JAMF folder.

5. Choose **Download installation package**.

### Deploy onboarding packages

1. Create a new configuration profile in JAMF Pro. Refer to the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use the following values:
    - **Name:** *MDATP onboarding for macOS*
    - **Description:** **MDATP EDR onboarding for macOS*
    - **Category:** *none*
    - **Distribution method:** *`*install automatically*
    - **Level:** *computer level*

2. In the JAMF Pro console, select **New**.

3. In the navigation pane, select **Application and Custom Settings** and then choose **Upload**.

### Configure application preferences

> [!IMPORTANT]
> You must use *com.microsoft.wdav* as the **Preference Domain** value. Microsoft Defender for Endpoint uses this name and *com.microsoft.wdav.ext* to load the managed settings.

1. Sign in to JAMF Pro to create a new configuration profile in JAMF Pro. Refer to the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/) for more information. Use these values:
    - **Name:** *MDATP MDAV configuration settings*
    - **Description:** *Leave this blank*
    - **Category:** *none*
    - **Distribution method:** *install automatically*
    - **Level:** *computer level*

2. In the JAMF Pro console, select **New**.

3. In the navigation pane, select **Application and Custom Settings** and then choose **External Applications**.

4. Choose **Add** and then choose **Custom Schema**. For **Preference domain**, enter `com.microsoft.wdav`.

    :::image type="content" source="../media/macos-onboarding-jamf-external-apps-config-profile-inline.png" alt-text="Screenshot of the  External Applications page.":::

5. Choose **Add Schema** and then select the `schema.json` file you downloaded from GitHub.

6. Choose **Save**.

7. Under **Preference Domain Properties** manually update the settings as follows:
    - **Features**
        - For **Data Loss Prevention**, select `enabled` and then choose **Save**.

    - **Data Loss Prevention**
        - **Features** 
            - Use DLP_browser_only_cloud_egress: `enabled` if you want to monitor the browser.
            - Use DLP_ax_only_cloud_egress: `enabled` if you want to monitor only the URL in the browser address bar.
    -  **Antivirus engine** <br>
        If you are *only* deploying data loss prevention, and not MDE, take the following steps:
        - Choose **Real-time Protection**.
        - Choose **Passive mode**.
        - Choose **Apply**.

8. Enter a name for the configuration profile and then choose **Save**.

9. On the next page, choose the **Scope** tab, select the appropriate targets for this configuration profile, and then choose **Save**.

[!INCLUDE [device-macos-check-browser-vs-end-url](../includes/device-macos-check-browser-vs-end-url.md)] 

### Deploy System Configuration Profiles

1. On the **Configuration Profiles** page of the JAMF Pro console, select **Upload** and then choose **File**.
 
2. Select the `mdatp-nokext.mobileconfig` file, choose **Open**, and then choose **Upload**.

## Upload the installation package

1. In the JAMF Pro console, navigate to **Management Settings** > **Packages** and then choose **New**.
 
2. Enter a display name for the package, and (optionally) select a category.

3. Under **Filename** select **Choose File**.

4. Select the `wdav.pkg` installation package file and then choose **Save**.

5. Navigate to **Computers** > **Policies** and choose **New**.

6. In the left navigation pane, choose **Packages**.

7. From the **Packages** list, select the installation package from Step 4.

8. For the **Action** choose **Install**.
 
9. Choose the **Scope** tab and then target computers before choosing **Save**.
 
10. On the **General** page, enter a name for the new policy.


## Offboard macOS devices using JAMF Pro ##

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal. However,  data from the device, including references to any alerts it has had, will be retained for up to six months.

1. If you are not using MDE, uninstall the application.  See the **Package Deployment** section in the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/).

2. Restart the macOS device. (Some applications may lose printing functionality until they're restarted.)
