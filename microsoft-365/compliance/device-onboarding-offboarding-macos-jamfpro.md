---
title: Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 04/12/2023
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

# Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro

You can use JAMF Pro to onboard macOS devices into Microsoft Purview solutions like Endpoint data loss prevention.

> [!IMPORTANT]
> Use this procedure if you ***do not*** have Microsoft Defender for Endpoint (MDE) deployed to your macOS devices

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

**REQUIRED:** Make sure your [macOS devices are managed through JAMF pro](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) and are associated with an identity (Azure AD joined UPN) through [JAMF Connect](https://www.jamf.com/products/jamf-connect) or Intune. <br><br>
**OPTIONAL:** Install the v95+ Microsoft Edge browser on your macOS devices for native Endpoint DLP support on Microsoft Edge.

The three most recent major releases of macOS are supported.


## Onboard devices into Microsoft Purview solutions using JAMF Pro

Onboarding a macOS device into Microsoft Purview solutions is a multi-phase process:
1. [Deploy onboarding packages](#deploy-onboarding-packages)
2. [Configure application preferences](#configure-application-preferences)
3. [Deploy a configuration profile for Microsoft AutoUpdate](#deploy-a-configuration-profile-for-microsoft-autoupdate)
4. [Deploy a Grant Full Access configuration profile](#deploy-a-grant-full-access-configuration-profile)
5. [Deploy a System Extensions configuration profile](#deploy-a-system-extensions-configuration-profile)
6. [Deploy System Configuration Profiles](#deploy-system-configuration-profiles)
7. [Upload the installation package](#upload-the-installation-package)

### Prerequisites

Download the following files.

|File | Description|
|-----|------------|
| [mdatp-nokext.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) | This bundled file contains: <br> - accessibility.mobileconfig <br> - fulldisk.mobileconfig <br> - netfilter.mobileconfig <br> - sysext.mobileconfig |
| [schema.json](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/schema.json)| MDE preference file |
| [com.microsoft.autoupdate2.plist](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/microsoft_auto_update/com.microsoft.autoupdate2.plist)|MAU preference file|

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

### Get the device onboarding and installation packages
:::image type="content" source="../media/device-macos-dnld-install-package-inline.png" alt-text="Screenshot of the Microsoft Intune Configuration settings tab with all fields populated." lightbox="../media/device-macos-dnld-install-package-expanded.png":::

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.

2. For **Select operating system to start onboarding process** choose **macOS**

3. For **Deployment method** choose **Mobile Device Management/Microsoft Intune** and then

4. Choose **Download onboarding package** and then extract the contents of the device onboarding package. In the JAMF folder, you should see the *DeviceComplainceOnboarding.plist* file.

5. Choose **Download installation package**

### Deploy onboarding packages

1. Create a new configuration profile in JAMF Pro. Refer to the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: *MDATP onboarding for macOS*
    - Description: **MDATP EDR onboarding for macOS*
    - Category: *none*
    - Distribution method: *`*install automatically*
    - Level: *computer level*

2. In the JAMF Pro console, select **New**.

3. In the navigation pane, select **Application and Custom Settings** and then choose **Upload**.

4. Choose **Add**.

5. In the **Preference Domain** field, enter `com.microsoft.wdav.atp`. (The `com.microsoft.wdav.atp` file is the onboarding package that you downloaded earlier.)

6. In the **Property List** field, paste the contents of the `com.microsoft.wdav.atp` file.

7. Choose **Save**.

8. Enter a name for the configuration profile and then choose **Save**.

9. On the next page, choose the **scope** tab, select the appropriate targets for this configuration profile, and then choose **Save.

10. Choose **Done**.

### Configure application preferences

> [!IMPORTANT]
> You must use ***com.microsoft.wdav*** as the **Preference Domain** value. Microsoft Defender for Endpoint uses this name and `com.microsoft.wdav.ext`***` to load its managed settings.

1. Sign in to JAMF Pro to create a new configuration profile in JAMF Pro. Refer to the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/) for more information. Use these values:
    - Name: *MDATP MDAV configuration settings*
    - Description: **Leave this blank**
    - Category: *none*
    - Distribution method: *install automatically*
    - Level: *computer level*

2. In the JAMF Pro console, select **New**.

3. In the navigation pane, select **Application and Custom Settings** and then choose **External Applications**.

4. Choose **Add** and then choose **Custom Schema** for the preference domain. Use this value:
    - **Preference domain**: `com.microsoft.wdav`

5. Choose **Add Schema** and then select the `schema.json` file you downloaded from GitHub.

6. Choose **Save**.

7. Under **Preference Domain Properties** manually update the settings as follows:
    - **Antivirus engine** <br>
        If you are *only* deploying data loss protection, and not MDE, take the following steps:
        - Choose **Real-time** Protection.
        - Choose **Passive mode**.
        - Choose **Apply**.

    - **Features**
        - For **Data Loss Prevention**, select *enabled* and then choose **Save**.

8. Enter a name for the configuration profile, and then choose **Save**.
 
9. On the next page, choose the **Scope** tab, select the appropriate targets for this configuration profile, and then choose **Save**.

### Deploy a configuration profile for Microsoft AutoUpdate

1. Create a JAMF Pro configuration file using the `com.microsoft.autoupdate2.plist`. For more information, refer to the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use the following values:
    - Name: *MDATP MDAV MAU settings*
    - Description: *Microsoft AutoUPdate settings for MDATP for macOS*
    - Category: *none*
    - Distribution method: *install automatically*
    - Level: *computer level*

2. For **Application & Custom Settings** choose **Upload** and then **Add**.

3. For the **Preferences Domain** enter *com.microsoft.autoupdate2* and then choose **Upload**.

4. Choose the `com.microsoft.autoupdate2.plist` file and then choose **Save**.

5. Choose the **Scope** tab, choose the target computers, and then choose **Save**.

7. Choose **Done**.

### Deploy a Grant Full Access configuration profile

1. Upload the `fulldisk.mobileconfig` file to JAMF. For more information, refer to [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).

### Deploy a System Extensions configuration profile

1. Create a JAMF Pro configuration file using the procedures in the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: *MDATP MDAV System Extensions*
    - Description: *MDATP system extensions*
    - Category: *none*
    - Distribution method: *install automatically*
    - Level: *computer level*

2. In **System extensions** profile, enter these values:
    - Display Name: *Microsoft Corp. System Extensions*
    - System Extension Types: *Allowed System Extensions*
    - Team Identifier: *UBF8T346G9*
    - Allowed System Extensions: *com.microsoft.wdav.epsext*, and *com.microsoft.wdav.netext*

3. Choose the **Scope** tab, select the target computers, and then choose **Save**.

4. Choose **Done**.

### Deploy System Configuration Profiles

1. On the **Configuration Profiles** page of the JAMF Pro console, select **Upload** and then **Choose File**.
 
2. Select the `mdatp-nokext.mobileconfig` file, choose **Open** and then choose **Upload**.

## Upload the installation package

1. In the JAMF Pro console, navigate to **Management Settings** > **Packages** and then choose **New**.
 
2. Enter a display name for the package, and (optionally) select a category.

3. Under **Filename** select **Choose File**.

4. Select the `wdav.pkg` installation package file and then choose **Save**.

5. Navigate to **Computers** > **Policies** and choose **New**.

6. In the left navigation pane, choose **Packages**.

7. From the **Packages** list, select the installation package from Step 4.

8. For the **Action** choose **Install**.
 
9. Choose the **Scope** tab, choose the target computers, and then choose **Save**.
 
10. On the **General** page, enter a name for the new policy.

## Offboard macOS devices using JAMF Pro

1. If not using MDE, uninstall the application.  See the Package Deployment section in the [JAMF Pro documentation](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/).

2. Restart the macOS device. Some applications may lose printing functionality until they're restarted.

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.
