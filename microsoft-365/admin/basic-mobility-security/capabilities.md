---
title: "Capabilities of Basic Mobility and Security"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- basic-mobility-security
search.appverid:
- MET150
description: "Basic Mobility and Security helps you secure and manage mobile devices with policies that control access to organization Microsoft 365 email and documents."
---

# Capabilities of Basic Mobility and Security

Basic Mobility and Security can help you secure and manage mobile devices like iPhones, iPads, Androids, and Windows Phones used by licensed Microsoft 365 users in your organization. You can create mobile device management policies with settings that can help control access to your organization’s Microsoft 365 email and documents for supported mobile devices and apps. If a device is lost or stolen, you can remotely wipe the device to remove sensitive organizational information.

## Supported operating systems

Follow the Microsoft Intune operating systems guide for the minimum supported operating systems for devices by Basic Mobility and Security. For more info, see [Intune supported operating systems](/mem/intune/fundamentals/supported-devices-browsers).

You can use Basic Mobility and Security to secure and manage the following devices.

- iOS
- Android (including Samsung Knox)<sup>1</sup>
- Windows<sup>2, 3</sup>

<sup>1</sup>After June 2020, Android versions later than 9 can't manage password settings except on Samsung Knox devices.

<sup>2</sup>Access control for Windows 8.1 RT devices is limited to Exchange ActiveSync.

<sup>3</sup>Access control for Windows 10 requires a subscription that includes Microsoft Entra ID P1 or P2 and the device needs to be joined to Microsoft Entra ID.

> [!NOTE]
> Devices already enrolled with earlier OS versions continue to function although the capabilities might change without notice.

If people in your organization use mobile devices that aren't supported by Basic Mobility and Security, you may want to block Exchange ActiveSync app access to Microsoft 365 email for those devices, to help make your organization's data more secure. For steps to block Exchange ActiveSync, see [Manage device access settings in Basic Mobility and Security](manage-device-access-settings.md).

## Access control for Microsoft 365 email and documents

The supported apps for the different types of mobile devices in the following table prompt users to enroll in Basic Mobility and Security where there is a new mobile device management policy that applies to a user’s device and the user hasn’t previously enrolled the device. If a user’s device doesn’t comply with a policy, depending on how you set the policy up, a user might be blocked from accessing Microsoft 365 resources in these apps, or they might have access but Microsoft 365 reports a policy violation.

|Product|iOS|Android|
|---|---|---|
|**Exchange** Exchange ActiveSync includes built-in email and third-party apps, like TouchDown, that use Exchange ActiveSync Version 14.1 or later.|Mail|Email|
|**Apps in Microsoft 365** and **OneDrive for Business**|Outlook </br>OneDrive </br>Word </br>Excel </br>PowerPoint|**On phones and tablets**:<br/>Outlook <br/> OneDrive <br/> Word <br/> Excel <br/> PowerPoint <br/> **On phones only:** <br/> Microsoft 365 mobile|

> [!NOTE]
>
> - Support for iOS 10.0 and later versions includes iPhone and iPad devices.
> - Management of BlackBerry OS devices isn’t supported by Basic Security and Mobility. Use BlackBerry Business Cloud Services (BBCS) from BlackBerry to manage BlackBerry OS devices. Blackberry devices running Android OS are supported as standard Android devices
> - Users won’t be prompted to enroll and won’t be blocked or reported for policy violation if they use the mobile browser to access Microsoft 365 SharePoint sites, documents in Microsoft 365 on the web, or email in Outlook Web App.

The following diagram shows what happens when a user with a new device signs in to an app that supports access control with Basic Mobility and Security. The user is blocked from accessing Microsoft 365 resources in the app until they enroll their device.

:::image type="content" source="../../media/microsoft-365-bsm-app-diagram.png" alt-text="Basic Mobility and Security access control":::

> [!NOTE]
> Policies and access rules created in Basic Mobility and Security for Microsoft 365 Business Standard will override Exchange ActiveSync mobile device mailbox policies and device access rules created in the Exchange admin center. After a device is enrolled in Basic Mobility and Security for Microsoft 365 Business Standard, any Exchange ActiveSync mobile device mailbox policy or device access rule applied to the device will be ignored. To learn more about Exchange ActiveSync, see [Exchange ActiveSync in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/exchange-activesync/exchange-activesync).

## Policy settings for mobile devices

If you create a policy to block access with certain settings turned on, users are blocked from accessing Microsoft 365 resources when using a supported app that is listed in [Access control for Microsoft 365 email and documents](capabilities.md).

The settings that can block users from accessing Microsoft 365 resources are in these sections:

- Security

- Encryption

- Jail broken

- Managed email profile

For example, the following diagram shows what happens when a user with an enrolled device isn’t compliant with a security setting in a mobile device management policy that applies to their device. The user signs in to an app that supports access control with Basic Mobility and Security. They are blocked from accessing Microsoft 365 resources in the app until their device complies with the security setting.

:::image type="content" source="../../media/basic-mobility-security/bms-2-device-not-compliant.png" alt-text="Basic Mobility and Security compliance message.":::

The following sections list the policy settings you can use to help secure and manage mobile devices that connect to your Microsoft 365 organization resources.

## Security settings

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Require a password|Yes|No|No|
|Prevent simple password|Yes|No|No|
|Require an alphanumeric password|Yes|No|No|
|Minimum password length|Yes|Yes|Yes|
|Number of sign-in failures before device is wiped|Yes|Yes|Yes|
|Minutes of inactivity before device is locked|Yes|No|No|
|Password expiration (days)|Yes|Yes|Yes|
|Remember password history and prevent reuse|Yes|Yes|Yes|

> [!IMPORTANT]
> **Lock devices if they are inactive for this many minutes** is no longer supported for Android and Samsung Knox.

## Encryption settings

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Require data encryption on devices<sup>1</sup>|No|Yes|Yes|

<sup>1</sup>With Samsung Knox, you can also require encryption on storage cards.

## Jail broken setting

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Device cannot be jail broken or rooted|Yes|Yes|Yes|

## Managed email profile option

The following option can block users from accessing their Microsoft 365 email if they’re using a manually created email profile. Users on iOS devices must delete their manually created email profile before they can access their email. After they delete the profile, a new profile is automatically created on the device. For instructions on how end users can get compliant, see [Device already has an email profile installed](/troubleshoot/mem/intune/device-configuration/troubleshoot-email-profiles-in-microsoft-intune#device-already-has-an-email-profile-installed).

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Email profile is managed|Yes|No|No|

## Cloud settings

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Require encrypted backup|Yes|No|No|
|Block cloud backup<sup>1</sup>|Yes|No|No|
|Block document synchronization<sup>1</sup>|Yes|No|No|
|Block photo synchronization|Yes|No|No|
|Allow Google backup|N/A|No|Yes|
|Allow Google account auto sync|N/A|No|Yes|

<sup>1</sup>To function, these settings require supervised iOS devices. 

## System settings

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Block screen capture|Yes|No|Yes|
|Block sending diagnostic data from device|Yes|No|Yes|

## Application settings

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Block video conferences on device<sup>1</sup>|Yes|No|No|
|Block access to application store<sup>1</sup>|Yes|No|Yes|
|Require password when accessing application store|Yes|No|No|

<sup>1</sup>To function, these settings require supervised iOS devices. 

## Device capabilities settings

|Setting name|iOS|Android|Samsung Knox|
|---|---|---|---|
|Block connection with removable storage|No|No|Yes|
|Block Bluetooth connection|No|No|Yes|

## Additional settings

You can set the following additional policy settings by using Security & Compliance PowerShell cmdlets. For more information, see [Security & Compliance PowerShell](/powershell/exchange/scc-powershell).

|Setting name|iOS|Android|
|---|---|---|
|CameraEnabled|Yes|Yes|
|RegionRatings|Yes|No|
|MoviesRatings|Yes|No|
|TVShowsRating|Yes|No|
|AppsRatings|Yes|No|
|AllowVoiceDialing|Yes|No|
|AllowVoiceAssistant|Yes|No|
|AllowAssistantWhileLocked|Yes|No|
|AllowPassbookWhileLocked|Yes|No|
|MaxPasswordGracePeriod|Yes|No|
|PasswordQuality|No|Yes|
|SystemSecurityTLS|Yes|No|
|WLANEnabled|No|No|

## Settings supported by Windows

You can manage Windows 10 devices by enrolling them as mobile devices. After an applicable policy is deployed, users with Windows 10 devices will be required to enroll in Basic Mobility and Security the first time they use the built-in email app to access their Microsoft 365 email (requires Microsoft Entra ID P1 or P2 subscription).

The following settings are supported for Windows 10 devices that are enrolled as mobile devices. These setting won’t block users from accessing Microsoft 365 resources.

### Security settings

- Require an alphanumeric password

- Minimum password length

- Number of sign-in failures before device is wiped

- Minutes of inactivity before device is locked

- Password expiration (days)

- Remember password history and prevent reuse

> [!NOTE]
> The following settings regulating passwords only control local Windows accounts. Windows accounts provided through join a domain or Microsoft Entra ID aren't affected by these settings.

### System settings

Block sending diagnostic data from device.

### Additional settings

You can set these additional policy settings by using PowerShell cmdlets:

- AllowConvenienceLogon

- UserAccountControlStatus

- FirewallStatus

- AutoUpdateStatus

- AntiVirusStatus

- AntiVirusSignatureStatus

- SmartScreenEnabled

- WorkFoldersSyncUrl

## Remotely wipe a mobile device

If a device is lost or stolen, you can remove sensitive organizational data and help prevent access to your Microsoft 365 organization resources by doing a wipe from **Microsoft Purview compliance portal** > **Data loss prevention** > **Device management**. You can do a selective wipe to remove only organizational data or a full wipe to delete all information from a device and restore it to its factory settings.

For more information, see [Wipe a mobile device in Basic Mobility and Security](wipe-mobile-device.md).

## Related content

[Overview of Basic Mobility and Security for Microsoft 365](overview.md) (article)\
[Create device security policies in Basic Mobility and Security](create-device-security-policies.md) (article)
