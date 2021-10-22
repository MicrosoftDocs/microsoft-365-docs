---
title: Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Microsoft Intune for Microsoft Defender for Endpoint customers (preview)
---

# Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)

You can use JAMF Pro to onboard macOS devices into Microsoft 365 compliance solutions like Endpoint data loss prevention.

> [!IMPORTANT]
> Use this procedure ***if you have*** deployed Microsoft Defender for Endpoint (MDE) to your macOS devices

**Applies to:**

- Customers who have MDE deployed to their macOS devices.
- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
<!--- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)-->

<!-- DON'T KNOW IF THIS IS NEEDED You can use mobile device management (MDM) solutions to configure devices. Microsoft 365 information protection supports MDMs by providing OMA-URIs to create policies to manage devices.-->

## Before you begin

- Make sure your [macOS devices are Azure AD joined](https://docs.jamf.com/10.30.0/jamf-pro/administrator-guide/Azure_AD_Integration.html)
- Make sure your [macOS devices are managed through JAMF pro](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) 
<!--- Edge browser v93 and higher installed.-->

## Onboard devices into Microsoft 365 Compliance solutions using JAMF Pro

Onboarding a macOS device into Compliance solutions is a multi phase process.

> [!TIP]
> You can download the individual configuration files from a single folder or download a single archive file that contains:
> - accessibility.mobileconfig
> - fulldisk.mobileconfig
> - netfilter.mobileconfig
> - system extensions
> - schema.xml
>
>combined into a single file. If any of these individual files is updated, you'd need to download the either the combined file again or the single updated file individually.

<!--### Get the device onboarding package

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**
 
1. Choose **Download onboarding package**
 
1. Extract the contents of the device onboarding package. In the **JAMF** folder you should see the *DeviceComplainceOnboarding.plist* file.

### Create a JAMF Pro configuration profile for the onboarding package

1. Create a new configuration profile in JAMF Pro. Refer to the [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: `MDATP onboarding for macOS`
    - Description: `MDATP EDR onboarding for macOS`
    - Category: `none`
    - Distribution method: `install automatically`
    - Level: `computer level`

2. In the JAMF Pro console > **Application & Custom settings**, choose **upload** and then **add**. Use this value:
    - Preference Domain: `com.microsoft.wdav.atp`

3. Choose **upload** and select the onboarding file **DeviceComplianceOnboarding.plist**.

4. Choose the **scope** tab.

5. Choose the target computers.

6. Choose **Save**.

7. Choose **Done**.
-->
### Download the configuration files

1. Download the configuration files from [Github](https://github.com/microsoft/endpointdlp)

### Configure existing Preference domain profile using the JAMF PRO console

<!--
> [!IMPORTANT]
> You must use ***com.microsoft.wdav*** as the Preference Domain value. Microsoft Defender uses this name and ***com.microsoft.wdav.ext*** to load its managed settings.

1. Download the schema.json file HENRY TO PROVIDE LINK

1. Create a new configuration profile in JAMF Pro. Refer to the [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: `MDATP MDAV configuration settings`
    - Description: leave this blank
    - Category: `none`
    - Distribution method: `install automatically`
    - Level: `computer level`

1. On the **Application & Custom Settings** tab, choose **External Applications**, choose **Add** and choose **Custom Schema** for the preference domain. Use this value:
    - Preference domain: `com.microsoft.wdav`

1. Choose **Add Schema** and **Upload** to upload the schema.json file.

1. Choose **Save**.
-->
1. Update the schema.xml profile with the **schema.xml** file you jsut downloaded.

1. Under **Preference Domain Properties** choose these settings
    - Features 
        - Use System Extensions: `enabled` - required for network extensions on Catalina
        - Use Data Loss Prevention: `enabled`
    - EDR preferences > 
        - Group IDs: `DLP_Enable`

1. Choose the **Scope** tab.

1. Choose the groups to deploy this configuration profile to.

1. Choose **Save**. 

<!--### Create and deploy a configuration profile for notification settings

Create a JAMF Pro configuration file using the NOTIFICATION SETTINGS file. Refer to the [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: `MDATP MDAV notification settings`
    - Description: `macOS 10.15 (Catalina) or newer
    - Category: `none`
    - Distribution method: `install automatically`
    - Level: `computer level`

1. Choose the **Notifications** tab, and choose **Add** to configure these settings
    - Bundle ID: `com.microsoft.wdav.tray`
    - Critical Alerts: `disable`
    - Notifications: `enable`
    - Banner alert type: `include` and `temporary`
    - Notifications on lock screen: `hide`
    - Notifications in Notification center: `display`
    - Badge app icon: `display`

1. Choose **Add**, scroll down to **New Notification Settings**
    - Bundle ID: `com.microsoft.autoupdate2`
    - Critical Alerts: `disable`
    - Notifications: `enable`
    - Banner alert type: `include` and `temporary`
    - Notifications on lock screen: `hide`
	- Notifications in Notification Center: `display`
    - Badge app icon: `display`
-->
<!--### Create and deploy a configuration profile for Microsoft AutoUpdate (MAU)

1. Create a JAMF Pro configuration file using the **MDATP_MDAV_MAU_settings.plist** file. Refer to the [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: `MDATP MDAV MAU settings`
    - Description: `Microsoft AutoUPdate settings for MDATP for macOS`
    - Category: `none`
    - Distribution method: `install automatically`
    - Level: `computer level`

1. In **Application & Custom Settings** choose **Upload** and **Add**.

1. In **Preferences Domain** enter `com.microsoft.autoupdate2` and then choose **Upload**.

1. Choose the *DeviceComplianceOnboarding.plist* file.

1. Choose **Save**.

1. Choose the **Scope** tab.

1. Choose the target computers.

1. Choose **Save**.

1. Choose **Done**.
-->

### Create and deploy a configuration profile for Grant full disk access

1. Update the existing full disk access profile with the **fulldisk.mobileconfig** file.

1. Upload the **fulldisk.mobileconfig** file to JAMF. Refer to [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).

<!--### Create and deploy a configuration profile for Kernel extension

1. Download the **kext.mobileconfig** file HENRY TO PROVIDE LINK

1. Upload the **kext.mobileconfig** file to JAMF. Refer to [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).
-->
<!--### Create and deploy a configuration profile for System extensions

1. Create a JAMF Pro configuration file using the procedures in [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/). Use these values:
    - Name: `MDATP MDAV System Extensions`
    - Description: `MDATP system extensions`
    - Category: `none`
    - Distribution method: `install automatically`
    - Level: `computer level`

1. In **System extentions** profile, enter these values:
    - Display Name: `Microsoft Corp. System Extensions`
    - System Extenstion Types: `Allowed System Extensions`
    - Team Identifier: `UBF8T346G9`
    - Allowed System Extensions: `com.microsoft.wdav.epsext`, and `com.microsoft.wdav.netext`

1. Choose the **Scope** tab.

1. Choose the target computers.

1. Choose **Save**.

1. Choose **Done**.
-->
<!--### Configure Network extension

1.	Download **netfilter.mobileconfig** HENRY TO PROVIDE LINK

2.	Upload to JAMF as described in [Deploying Custom Configuration Profiles using Jamf Pro](https://www.jamf.com/jamf-nation/articles/648/deploying-custom-configuration-profiles-using-jamf-pro).
-->

### Grant accessibility access to DLP

1. Download **accessibility.mobileconfig**.

2.	Upload to JAMF as described in [Deploying Custom Configuration Profiles using Jamf Pro](https://www.jamf.com/jamf-nation/articles/648/deploying-custom-configuration-profiles-using-jamf-pro).

<!--### Get the installation package

1. In **Compliance center** open **Settings** > **Device Onboarding** and choose **Onboarding**.
 
1. For **Select operating system to start onboarding process** choose **macOS**
 
1. For **Deployment method** choose **Mobile Device Management/Microsoft Intune**
 
1. Choose **Download installation package**. This will give you the *wdav.pkg* file.


### Deploy the installation package

1. Navigate to where you saved teh `wdav.pkg` file.

1. Open the JAMF Pro dashboard.

1. Select your computer and click the gear at the top, then choose **Computer Management**.

1. In **Packages** choose **+New**. Enter these details:
    - Display Name: leave blank because it will be reset when you choose the .pkg file.
    - Category: None (default)
    - Filname: Choose file, in this case the `wdav.pkg` file.

1. Choose **Open**. Set:
    - **Display Name**: `Microsoft Defender Advanced Threat Protection and Microsoft Defender Antivirus`
    - **Manifest File**: not required
    - **Options tab**: leave default values
    - **Limitations tab**: leave default values

1. Choose **Save**. This uploads the package to JAMF Pro.

1. Open the **Policies** page.

1. Choose **+New** to create a new policy.

1. Enter these values
    - **Display name**: `MDATP Onboarding200329 v100.86.92 or later`

1. Choose **Recurring Check-in**.

1. Choose **Save**.

1. Choose **Packages** > **Configure**.

1. Choose **Add**.

1. Choose **Save**. 

1. Choose the **Scope** tab.

1. Select the target computers.

1. Choose **Add**.

1. Choose **Self service**.

1. Choose **Done**.

### Check the macOS device 

1. Restart the macOS device.

1. Open **System Preferences** > **Profiles**.

1. You should see:
    - Accessiblity
    - Full Disk Access
    - Kernel Extension Profile
    - MAU
    - MDATP Onboarding
    - MDE Preferences
    - Management profile
    - Network filter
    - Notifications
    - System extension profile
-->
## Offboard macOS devices using JAMF Pro


1. Uninstall the application (if not using MDE)
    1. See JAMF Pro Docs - Package Deployment - [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/)Jamf Pro Administrator's Guide

1. Restart the macOS device - some applications may lose printing functionality until they are restarted

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

