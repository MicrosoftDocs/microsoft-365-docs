---
title: Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 10/06/2020
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance 
search.appverid:
- MET150 
description: Learn how to onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro for Microsoft Defender for Endpoint customers
---
# Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers

You can use JAMF Pro to onboard macOS devices into Microsoft Purview solutions.

> [!IMPORTANT]
> Use this procedure ***if you have*** deployed Microsoft Defender for Endpoint (MDE) to your macOS devices

**Applies to:**

- Customers who have MDE deployed to their macOS devices.
- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)


[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

**REQUIRED:** Make sure your [macOS devices are managed through JAMF pro](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) and are associated with an identity (Azure AD joined UPN) through [JAMF Connect](https://www.jamf.com/products/jamf-connect) or Intune. <br><br>
**OPTIONAL:** Install the v95+ Microsoft Edge browser on your macOS devices for native Endpoint DLP support on Microsoft Edge.

The three most recent major releases of macOS are supported.

## Onboard devices into Microsoft Purview solutions using JAMF Pro

Onboarding a macOS device into Compliance solutions is a multiphase process:

1. [Update the existing MDE Preference domain profile](#update-the-existing-mde-preference-domain-profile)
2. [Update *.mobileconfig files](#update-mobileconfig-files)
3. [Grant accessibility access to DLP](#grant-accessibility-access-to-dlp)
4. [Grant full disk access](#grant-full-disk-access)
5. [Check the macOS device](#check-the-macos-device)

### Prerequisites

Download the following files.

> [!NOTE]
> To download the files:
> 1. Right-click the link and select **Save link as...**. 
> 2. Chose a folder and save the file.

|File|Description |
|---------|---------|
|[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)| Required for accessibility |
|[fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) | Required for full disk access |
|[schema.json](https://github.com/microsoft/mdatp-xplat/blob/master/macos/schema/schema.json)| MDE preference file |

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

### Update the existing MDE Preference domain profile

Update the schema.xml profile with the `schema.json` file you just downloaded.

1. Open the `schema.json` file and copy the contents.
2. In the left navigation pane of the JAMF Pro console, select **Configuration Profiles**.
3. Select the profile you want to update.
4. In the left navigation pane, choose **Application and Custom Settings** and then choose **External Applications**.
5. Choose **Edit**.
6. Choose **Edit Schema**.
7. Replace the existing content with the content you copied in step 1 above and then choose **Save**.
8. Under **Features**, select **Add/Remove properties**.
9. Choose **Data Loss Prevention** and then choose **Apply**.
10. Under **Use Data Loss Prevention** select **enabled**.

## Update *.mobileconfig files
If you originally onboarded your macOS device using the individual `*.mobileconfig` files, to update your deployment, you must manually configure each of those files individually.

### Grant accessibility access to DLP

1. Use the [accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig) file you previously downloaded.

2. Upload it to JAMF as described in [Deploying Custom Configuration Profiles using Jamf Pro](https://www.jamf.com/jamf-nation/articles/648/deploying-custom-configuration-profiles-using-jamf-pro).

### Grant full disk access

To update the [fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) file, take the following steps:

1. Update the existing full disk access profile with the `fulldisk.mobileconfig` file.

2. Upload the `fulldisk.mobileconfig` file to JAMF. Refer to [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).

### Check the macOS device 

1. Restart the macOS device.

1. Open **System Preferences** > **Profiles**.

1. You should see:
    - Accessibility
    - Full Disk Access

## Offboard macOS devices using JAMF Pro

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

To offboard a macOS device, follow these steps

 1. Under **MDE Preference Domain Properties** remove the values for these settings
    - Features 
        - Use System Extensions
        - Use Data Loss Prevention

1. Choose **Save**.
