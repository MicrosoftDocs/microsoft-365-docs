---
title: Microsoft Intune device management and application management in Microsoft 365 Business Premium
description: Admin can learn how to use Microsoft Intune to in Microsoft 365 Business Premium to secure company owned devices and personal devices (also known as bring your own device or BYOD).
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 08/14/2025
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.localizationpriority: medium
ms.collection:
- M365-Campaigns
- m365solution-smb
- highpri
- m365-security
- tier2
- trust-pod
ms.reviewer: efratka
search.appverid: MET150
f1.keywords: NOCSH
audience: Admin
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium" target="_blank">Microsoft 365 Business Premium</a>
  - ✅ <a href="https://m365forcampaigns.microsoft.com/" target="_blank">Microsoft 365 for Campaigns</a>
---

# Device management and application management in Microsoft 365 Business Premium

An important part of your security strategy in Microsoft 365 Business Premium is protecting the computers, tablets, and phones that are used to access company data. Business Premium includes Microsoft Intune Plan 1, a comprehensive device management solution that allows you to enroll, monitor, and manage devices. For more information, see [Microsoft Intune overview](/intune/intune-service/fundamentals/what-is-intune).

Devices managed by Intune are typically **company-owned devices**, but they can also be **personal devices (also known as bring your own device or BYOD**). In Microsoft 365 for Campaigns, most devices are likely to be BYOD.

Intune provides two basic strategies for managing devices that access company data:

- **Mobile device management (MDM)**: The organization controls all aspects of the device. After the device is enrolled in Intune, admins can install apps, allow or block enrollment by platform, block personal devices, and more. If the device is ever lost or stolen, you can remotely wipe the device. The enrolled device is said to be *managed*.

  We always recommend MDM for company-owned devices. For instructions in this article, see [Mobile device management in Intune for device protection](#mobile-device-management-using-intune-for-device-protection)

- **Mobile application management (MAM)**: The user controls the device, but the organization controls access to company data on the device. You need to create policies that block users from enrolling their personal devices in MDM. Application management policies prevent users from copying business data from Microsoft 365 Apps to personal apps. If a device is ever lost or stolen, you can remotely remove all *organization data* from managed apps. The device is said to be *unmanaged*.

  You can use MDM or MAM for personal devices. For MAM instructions in this article, see [Mobile app management in Intune for data protection](#mobile-app-management-in-intune-for-data-protection).

Based on the nature of devices in your organization, you might choose one or both methods to protect access to data in your organization.

The rest of this article describes the recommended options for MDM and MAM in Business Premium.

## Mobile device management using Intune for device protection

In Business Premium, we recommend enrolling company-owned devices in Microsoft Intune as described in the following subsections.

### Step 1: Configure device enrollment restrictions for Intune

You might need to block users from enrolling certain types of eligible devices in Intune. For example, you intend to use MAM for personal iOS and Android phones, so you want to prevent users from enrolling those devices in Intune.

For instructions, see [Create device platform restrictions](/intune/intune-service/enrollment/create-device-platform-restrictions).

### Step 2: Configure device enrollment prerequisites for Intune

For the device types that you intend to enroll in MDM, you need to take care of some prerequisites:

- **Apple**: [Get an Apple MDM push certificate](/intune/intune-service/enrollment/apple-mdm-push-certificate-get)
- **Android**: [Connect your Intune account to your managed Google Play account](/intune/intune-service/enrollment/connect-intune-android-enterprise)
- **Windows**: [Set up automatic enrollment for Windows devices](/intune/intune-service/enrollment/windows-enroll)
  - Enterprise State Roaming gives users a unified experience across their Windows devices by synchronizing and storing specific user settings. For more information, see [Enable Enterprise State Roaming in Microsoft Entra ID](/entra/identity/devices/enterprise-state-roaming-enable).

    > [!TIP]
    > To configure Microsoft Edge enterprise sync to synchronize Microsoft Edge data, see [Configure Microsoft Edge enterprise sync](/deployedge/microsoft-edge-enterprise-sync).

  - Configure Intune to automatically install Microsoft 365 Apps on Windows devices. For instructions, see [Add Microsoft 365 Apps to Windows 10/11 devices with Microsoft Intune](/intune/intune-service/apps/apps-add-office365).

  - Windows Autopilot uses a supported version of Windows Semi-Annual Enterprise Channel to set up PCs with business critical apps, policies, and features (for example, BitLocker) before you give the PCs to users. Autopilot can also reset, repurpose, and recover Windows devices. For more information, see [Overview of Windows Autopilot](/autopilot/overview).

  - Business Premium includes free upgrades to Windows 10 Pro or Windows 11 Pro from the following versions of Windows:
    - Windows 7 Pro
    - Windows 8 Pro
    - Windows 8.1 Pro

    For more information, see [Upgrade Windows devices to Windows 10 or 11 Pro](/microsoft-365/business-premium/m365bp-upgrade-windows-pro).

### Step 2: Configure compliance policy settings in Intune

Compliance policy settings are organization-wide and determine how Intune treats devices with no device compliance policies (also known as compliance policies) assigned. Possible values are:

- **Mark devices with no compliance policy assigned as** \> **Compliant**: Devices are considered compliant until verified as not compliant after a device compliance policy is assigned. This value is the default.
- **Mark devices with no compliance policy assigned as** \> **Not compliant**: Devices are considered not compliant until verified as compliant after a device compliance policy is assigned.

Typically, we recommend the default value **Compliant**. But, if you're using device-based Conditional Access policies as described in the next section, and you want to ensure that only compliant devices are ever allowed to access company resources, use the value **Mark devices with no compliance policy assigned as** \> **Not compliant**.

For more information, see [Compliance policy settings](/intune/intune-service/protect/device-compliance-get-started#compliance-policy-settings).

### Step 4: Create device compliance policies in Intune

We recommend creating a device compliance policy (also known as a compliance policy) for every type of device you plan on enrolling in MDM. The compliance policy for each device type specifies the minimum configuration that allows access to company data. The policies aren't enforced until a corresponding device-based Conditional Access policy is applied to the device.

Here are our recommendations:

- **Windows devices**:
  - **Compliance settings**:
    - **Device health**: Set the following options to **Require**:
      - **BitLocker**
      - **Secure Boot**
      - **Code integrity**
    - **System security**:
      - **Device security**: Set the following options to **Require**:
        - **Firewall**
        - **Trusted platform module (TPM)**
        - **Antivirus**
        - **Antispyware**
      - **Defender**: Set the following options to **Require**:
        - **Microsoft Defender Antimalware**
        - **Microsoft Defender Antimalware security intelligence up-to-date**
        - **Real-time protection**
  - **Actions for non-compliance**:
    - **Mark device noncompliant**: Change the **Schedule (days after noncompliance)** value from **Immediately** to **1**.
  - **Assignments**: For **Included groups**, select **Add all users**.

- **Other device types**: Select the following options where available:
  - Require a password to unlock the device.
  - Require device encryption.
  - Require code integrity.

For more information, see [Create a compliance policy in Microsoft Intune](/intune/intune-service/protect/create-compliance-policy).

### Step 5: Create device-based Conditional Access policies

We recommend the following device-based Conditional Access policies for Intune:

- [Require MFA for Intune device enrollment](/intune/intune-service/enrollment/multi-factor-authentication)
- [Block unknown or unsupported device platforms](/entra/identity/conditional-access/policy-all-users-device-unknown-unsupported)
- [Require approved client apps or an app protection policy](/entra/identity/conditional-access/policy-all-users-approved-app-or-app-protection)
- [Require a compliant device, Microsoft Entra hybrid joined device, or MFA for all users](/entra/identity/conditional-access/policy-alt-all-users-compliant-hybrid-or-mfa)

### Step 6: Enroll devices in Intune

After you do the previous steps to prepare and configure Intune, now users can enroll their devices. For instructions, see the following articles:

- **iOS/iPadOS**: [Set up personal iOS device for work or school](/intune/intune-service/user-help/enroll-your-device-in-intune-ios)
- **Android**: [Enroll device with Android work profile](/intune/intune-service/user-help/enroll-device-android-work-profile)
- **Linux**: [Enroll Linux device in Intune](/intune/intune-service/user-help/enroll-device-linux)
- **macOS**: [Enroll your macOS device using the Company Portal app](/intune/intune-service/user-help/enroll-your-device-in-intune-macos-cp)
- **Windows**: [Enroll Windows 10/11 devices in Intune](/intune/intune-service/user-help/enroll-windows-10-device)

### More options for MDM

- **View and monitor device health in the Defender portal**: In Defender for Business or Intune in Business Premium, you can view device details, such as health state and exposure level for all onboarded devices. You can also take actions on devices, such as running an antivirus scan or starting an automated investigation. For more information, see [Manage devices in Microsoft Defender for Business](/defender-business/mdb-manage-devices) and [Review detected threats](/defender-endpoint/review-detected-threats).

On managed devices, users can take the following steps to protect their devices:

- **Set active hours on Windows devices**: Antivirus, anti-malware, and other threat protection capabilities are automatically installed, configured, and regularly updated on onboarded devices. Updates that require device restarts can be done after your working hours as defined by the active hours setting on Windows devices. For more information, [Keep your PC up to date](https://support.microsoft.com/windows/keep-your-pc-up-to-date-de79813c-7919-5fed-080f-0871c7bd9bde).

## Mobile app management in Intune for data protection

In Business Premium, mobile app management (MAM) is available to protect access to company data on personal devices without the full device management of MDM. The following subsections describe the requirements for configuring MAM.

### Step 1: Configure device enrollment restrictions for MAM

Personal devices that you plan on protecting with MAM can't be enrolled in Intune (MDM). To prevent specific device types from enrolling in MDM, see [Create device platform restrictions](/intune/intune-service/enrollment/create-device-platform-restrictions).

### Step 2: Deploy app protection policies in MAM

App protection policies (APP) enable MAM on iOS/iPadOS and Android devices without requiring enrollment of the devices in Intune (MDM). For example:

- Require a PIN to open Microsoft Outlook on the device.
- Prevent saving company data locally on the device.

For more information, see [How to create and assign app protection policies](/intune/intune-service/apps/app-protection-policies).

Our basic recommendations include:

- Create policies for both **iOS/iPadOS** and **Android** devices.
- **Target policy to**: Select **Core Microsoft Apps** (which includes Outlook).
- **Backup org data to iTunes and iCloud backups**: Select **Block**.
- **Send org data to other apps**: Select **Policy managed apps**.
  - **Save copies of org data**: Select **Block**.
  - **Allow user to save copies to selected services**: Select **OneDrive** and **SharePoint**.

Our recommendations for distinct security tiers are described in [Data protection framework using app protection policies](/intune/intune-service/apps/app-protection-framework).

### More options for MAM

Multifactor authentication (MFA) and a supported authenticator app like the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/351498fc-850a-45da-b7b6-27e523b8702a) are required by default for all Business Premium accounts. For more information, see [Multifactor authentication for Microsoft 365](multi-factor-authentication-microsoft-365.md).

Otherwise, the device owner is responsible for protecting and maintaining their own device in MAM scenarios. They can take the following steps:

- **Turn on encryption and firewall protection**. Disk encryption protects data when devices are lost or stolen. Firewall protection helps protect devices from unwanted contact by other computers on the internet or other networks. For more information, see [Protect unmanaged devices](m365bp-devices-enrollment.md#more-options-for-mam).

- **Make sure antivirus/antimalware software is installed and up to date**: For more information, see [Stay protected with Windows Security](https://support.microsoft.com/windows/2ae0363d-0ada-c064-8b56-6a39afb6a963).

- **Keep up with operating system and application updates**: To learn more, see [Keep your PC up to date](https://support.microsoft.com/windows/de79813c-7919-5fed-080f-0871c7bd9bde).

## Next steps

- [Set up information protection capabilities](m365bp-information-protection.md)
- [Protect users against phishing and other attacks in Microsoft 365 for business](m365b-users-phishing-spam-malware.md)
- [Collaborate and share securely](/microsoft-365/business-premium/m365bp-collaborate-share-securely)
