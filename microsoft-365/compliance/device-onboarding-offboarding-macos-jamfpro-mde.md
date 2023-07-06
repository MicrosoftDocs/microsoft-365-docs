---
title: Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers
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

## Before you begin ##

- Make sure your [macOS devices are managed through JAMF pro](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) and are associated with an identity (Azure AD joined UPN) through JAMF Connect or Microsoft Intune.
- OPTIONAL: Install the v95+ Edge browser on your macOS devices to have native Endpoint DLP support on Edge.
 
> [!NOTE]
> The three most recent major releases of macOS are supported.

## Onboard devices into Microsoft Purview solutions using JAMF Pro

Onboarding a macOS device into Compliance solutions is a multi-phase process.

1. [Update the existing MDE Preference domain profile using the JAMF PRO console](#update-the-existing-mde-preference-domain-profile-using-the-jamf-pro-console)
2. [Enable full-disk access](#enable-full-disk-access)
3. [Enable accessibility access to Microsoft Purview data loss prevention](#enable-accessibility-access-to-microsoft-purview-data-loss-prevention)
4. [Check the macOS device](#check-the-macos-device)

### Prerequisites

Download the following files:

|File |Description |
|---------|---------|
[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)| Accessibility |
|[fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)| Full disk access (FDA) |
|[schema.json](https://github.com/microsoft/mdatp-xplat/blob/master/macos/schema/schema.json) | MDE preference |

If any of these individual files are updated, you must download the updated bundled file and redeploy as described.

[!INCLUDE [devices-macos-onboarding-tip](../includes/devices-macos-onboarding-tip.md)]

> [!NOTE]
> To download the files:
> 1. Right-click the link and select **Save link as...**. 
> 2. Choose a folder and save the file.

### Update the existing MDE Preference domain profile using the JAMF PRO console

1. Update the schema.xml profile with the **schema.json** file you just downloaded.

1. Under **MDE Preference Domain Properties** choose these settings:
    - **Features**
        - Use Data Loss Prevention: `enabled`
    - **Data Loss Prevention**
        - **Features**
            - Use DLP_browser_only_cloud_egress: `enabled` if you want to only monitor browser
            - Use DLP_ax_only_cloud_egress: `enabled` if you want to only monitor URL on the browser address bar

1. Choose the **Scope** tab.

1. Choose the groups to deploy this configuration profile to.

1. Choose **Save**. 

### Enable full-disk access 

To update the existing full disk access profile with the `fulldisk.mobileconfig` file, upload `fulldisk.mobileconfig` to JAMF. For more information, refer to [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).

### Enable accessibility access to Microsoft Purview data loss prevention ###
To grant accessibility access to DLP, upload the `accessibility.mobileconfig` file you downloaded previously to JAMF, as described in [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).

[!INCLUDE [device-macos-check-browser-vs-end-url](../includes/device-macos-check-browser-vs-end-url.md)]

### Check the macOS device

1. Restart the macOS device.

1. Open **System Preferences** > **Profiles**.

1. The following profiles are now listed:
    - Accessibility
    - Full Disk Access
    - Kernel Extension Profile
    - MAU
    - MDATP Onboarding
    - MDE Preferences
    - Management profile
    - Network filter
    - Notifications
    - System extension profile

## Offboard macOS devices using JAMF Pro

> [!IMPORTANT]
> Offboarding causes the device to stop sending sensor data to the portal. However, data from the device, including references to any alerts it has had, will be retained for up to six months.

To offboard a macOS device, follow these steps

 1. Under **MDE Preference Domain Properties** remove the values for these settings
    - **Features**
        - Use System Extensions
        - Use Data Loss Prevention

1. Choose **Save**.
