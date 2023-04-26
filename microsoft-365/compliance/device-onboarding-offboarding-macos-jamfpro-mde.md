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

- Make sure your [macOS devices are managed through JAMF pro](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) and are associated with an identity (Azure AD joined UPN) through JAMF Connect or Intune.
- OPTIONAL: Install the v95+ Edge browser on your macOS devices to have native Endpoint DLP support on Edge.

## Onboard devices into Microsoft Purview solutions using JAMF Pro

Onboarding a macOS device into Compliance solutions is a multiphase process.

### Download the configuration files

1. You'll need these files for this procedure.

|file needed for |source |
|---------|---------|
|accessibility |[accessibility.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)|
full disk access     |[fulldisk.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)|
|MDE preference |[schema.json](https://github.com/microsoft/mdatp-xplat/blob/master/macos/schema/schema.json)

> [!TIP]
> You can download the *.mobileconfig* files individually or in [single combined file](https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/combined/mdatp-nokext.mobileconfig) that contains:
> - accessibility.mobileconfig
> - fulldisk.mobileconfig
>
>If any of these individual files is updated, you'd need to download the either the combined file again or the single updated file individually.

### Update the existing MDE Preference domain profile using the JAMF PRO console

1. Update the schema.xml profile with the **schema.json** file you just downloaded.

1. Under **MDE Preference Domain Properties** choose these settings
1. Under **Preference Domain Properties** choose these settings
    - Features
        - Use System Extensions: `enabled` - required for network extensions in the previous three major releases of macOS.
        - Use Data Loss Prevention: `enabled`.
        - Use DLP_browser_only_cloud_egress: `enabled` if you want to monitor sensitive data traveling through a browser. See [OPTIONAL: Allow sensitive data to pass through forbidden domains](#optional-allow-sensitive-data-to-pass-through-forbidden-domains) for more information.
        - Use DLP_ax_only_cloud_egress: `enabled` if you want to monitor the final destination of sensitive data traveling through a browser (i.e. the URL in the browser address bar). See [OPTIONAL: Allow sensitive data to pass through forbidden domains](#optional-allow-sensitive-data-to-pass-through-forbidden-domains) for more information.
    - Antivirus engine > Passive mode: `true|false`. Use `true` if deploying DLP only. Use `false` or do not assign a value if deploying DLP and Microsoft Defender for Endpoint (MDE).

1. Choose the **Scope** tab.

1. Choose the groups to deploy this configuration profile to.

1. Choose **Save**. 

### OPTIONAL: Allow sensitive data to pass through forbidden domains

Microsoft Purview DLP checks for sensitive data through all stages of its travels. So, if sensitive data is getting posted or sent to an allowed domain, but travels through a forbidden domain, it will be blocked. Let's take a closer look.

Say that sending sensitive data via Outlook Live (*outlook.live.com*)is permissible, but that sensitive data must not be exposed to *microsoft.com*. However, when a user accesses Outlook Live, the data passes through *microsoft.com* in the background, as shown:

:::image type="content" source="../media/devices-macos-cloud-dataflow.png" alt-text="Screenshot showing the flow of data from source to destination URL.":::

By default, because the sensitive data passes through microsoft.com on its way to outlook.live.com, DLP automatically blocks the data from being shared.

In some cases, however, you may not be concerned with the domains that data passes through on the back end, but only with where the data ultimately ends up, as indicated by the URL that shows up in the address bar. In this case, *outlook.live.com*. To prevent sensitive data from being blocked in our example case, you need to specifically change the default setting.

So, if you only want to monitor the browser and the final destination of the data (the URL in the browser address bar), you can enable *DLP_browser_only_cloud_egress* and *DLP_ax_only_cloud_egress*. Here's how.

To change the settings to allow sensitive data to pass through forbidden domains on its way to a permitted domain:

1. Open the [com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/cloud_egress/com.microsoft.wdav.mobileconfig) file.

2. Under the `dlp` key, Set `DLP_browser_only_cloud_egress` to *enabled* and set ` DLP_ax_only_cloud_egress` to *enabled* as shown in the following example.

```xml

<key>dlp</key>
     <dict>
         <key>features</key>
         <array>
            <dict>
                <key>name</key>
                <string>DLP_browser_only_cloud_egress</string>
                <key>state</key>
                <string>enabled</string>
            </dict>
     <dict>
                <key>name</key>
                 <string>DLP_ax_only_cloud_egress</string>
                <key>state</key>
                <string>enabled</string>
    </dict>

```

### Update the configuration profile for Grant full disk access

1. Update the existing full disk access profile with the **fulldisk.mobileconfig** file.

1. Upload the **fulldisk.mobileconfig** file to JAMF. Refer to [Deploying Custom Configuration Profiles using JAMF Pro](https://docs.jamf.com/technical-articles/Deploying_Custom_Configuration_Profiles_Using_Jamf_Pro.html).

### Grant accessibility access to DLP

1. Use the accessibility.mobileconfig file you previously downloaded.

1. Upload to JAMF as described in [Deploying Custom Configuration Profiles using Jamf Pro](https://www.jamf.com/jamf-nation/articles/648/deploying-custom-configuration-profiles-using-jamf-pro).

### Check the macOS device 

1. Restart the macOS device.

1. Open **System Preferences** > **Profiles**.

1. You should see:
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
> Offboarding causes the device to stop sending sensor data to the portal but data from the device, including reference to any alerts it has had will be retained for up to 6 months.

To offboard a macOS device, follow these steps

 1. Under **MDE Preference Domain Properties** remove the values for these settings
    - Features 
        - Use System Extensions
        - Use Data Loss Prevention

1. Choose **Save**.
