---
title: "Step 1. Configure the Company Portal"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 03/29/2024
description: Step 1. Configure the Company Portal
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Customize and configure the Company Portal

The Company Portal app, Company Portal website, and Intune app on Android are where end users access company data and do common tasks related to their managed devices and apps. Based on your Intune settings, common task may include enrolling devices, installing and updating apps, locating information about your organization, and performing device actions. Intune allow you to customize and configure the Company Portal. The Company Portal app supports iOS/iPadOS, Linux, macOS, and Windows devices. The Intune app supports Android devices.

> [!NOTE]
> The "Company Portal" is commonly used as the descriptor for the Intune app, Company portal app, and the Company portal website. The Company Portal exists on each end user's device.

End users can use the Company Portal to view details about their managed devices and available apps used with Intune at your organization. In addition, end users can perform self-service device actions from the Company Portal, including the following device actions:

- Retire
- Wipe
- Rename
- Sync
- Remote Lock
- Reset Passcode
- Key Recovery

> [!IMPORTANT]
> Before end users can use the Company Portal, you must set up their work account. Your organization must also have a subscription to Microsoft Intune.

Company Portal helps simplify the tasks your end users need to do for work. For example, end users may use the Company Portal to do the following:

- Enroll their device to access corporate resources, including Office, email, and OneDrive for Business.
- Quickly reset the password to their work account if they should forget it
- Find apps that help them with daily tasks as provided by your organization
- View and manage all of their enrolled devices – and wipe them if they get lost or stolen
- Get help from their IT department with easy-to-find contact information

> [!IMPORTANT]
> Every organization has different access requirements, and will use Intune in ways that they determine will best manage their information. Some functionality might be unavailable in certain countries. It is important to note that Microsoft, your network provider, and your device’s manufacturer do not know how Intune will be used by your organization.

## Customize the Company Portal

You can customize the end user experience for the Company Portal. Customizing the Company Portal is different from configuring the Company Portal. Customization helps provide a familiar and helpful experience for your end users. You can customize the Company Portal so that it supports specific details about your organization, such as the following:

- [Add branding information](#add-branding-information) for the end users at your organization
- [Add support information](#add-support-information) for your organization
- [Configure the Company Portal](#configure-the-company-portal) experience for enrollment, privacy, notifications, device categories, app sources, and self-service actions

Navigate to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and select **Tenant Administration** > **Customization**, where you can either edit the default policy or create up to 10 group targeted policies. These settings apply to the Company Portal apps, Company Portal website, and Intune app on Android.

### Add branding information

Adding branding information for your Intune tenant allows you to customize the experience end users have when using the Company Portal. Branding involves setting fields in Intune, such as:

- Organization name
- Color
- Theme color
- Show in header
- Upload logo for theme color background
- Upload logo for white or light background
- Upload brand image

For more information, such as branding best practices and examples, see [Branding](/mem/intune/apps/company-portal-app#branding) in Intune.

### Add support information

Adding support information for your Intune tenant will also allow you to customize the end users experience. By providing your organization's support information, your end users can reach out with questions. This support information is displayed on **Support**, **Help & Support**, and **Helpdesk** pages across the end user experience.

Support fields in Intune include the following:

- Contact name
- Phone number
- Email address
- Website name
- Website URL
- Additional information

For more information, see [Support Information](/mem/intune/apps/company-portal-app#support-information) in Intune.

## Configure the Company Portal

You can configure the Company Portal experience specifically for enrollment, privacy, notifications, device categories, app sources, and self-service actions. The Company Portal app can be configured for each of the device platforms that your organization uses.

:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-09.png" alt-text="Edit customization policy" border="false" :::

### Understand enrollment and the Company Portal

You can protect resources and devices by using mobile device management (MDM) and mobile application management (MAM) services and tools from Intune. MDM enables organizations to protect and secure their resources and data based on enrolled devices. Organization can make sure that only authorized people and devices get access to proprietary information. Similarly, device users can feel at ease accessing work data from their device, such as a phone, because they know their device meets their organization's security requirements. MAM enables organizations to manage and protect their data within an application.

If you choose to enroll users devices to be managed by Intune, in most enrollment scenarios the Company Portal will automatically be installed on the end user's device. The Company Portal is used to authenticate the end user within your organization when they launch the Company Portal. For more information, see [Set up automated device enrollment in Intune](/mem/intune/enrollment/device-enrollment-program-enroll-ios).

> [!NOTE]
> On personal or BYOD non-Windows client devices, end users must install the Company Portal app from the Microsoft Store. Once installed, end users open the Company Portal app and sign in with their organization credentials. For example, `user@contoso.com`.

### Understand privacy

Your organization's privacy statement can be configured for the Company Portal. You can include the privacy statement URL. For iOS/iPadOS, you can also include a privacy message about what can and can't be seen.

### Understand device categories

Device categories allow you to easily manage and group devices in Microsoft Intune. Create a category, such as sales or accounting, and Intune will automatically add all devices that fall within that category to the corresponding device group in Intune. To enable categories in your tenant, you must create a category in the Microsoft Intune admin center and set up dynamic Microsoft Entra security groups.

You can allow or block the device category prompt in Intune Company Portal. For more information about device categories, see [Categorize devices into groups](/mem/intune/enrollment/device-group-mapping).

### App sources

You can choose which additional app sources will be shown in Company Portal to end users at your organization. You can choose to hide or show Microsoft Entra Enterprise Applications, Office Online Applications, or Configuration Manager Applications. You can find these settings in [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) by selecting **Tenant administration** > **Customization**. For more information, see [App source setting options](/mem/intune/apps/company-portal-app#app-source-setting-options).

### Remove and reset device actions

You can customize the visibility of specific self-service device actions for Windows and iOS devices. The **Remove** and **Reset** device actions can be customized for end users in the Company Portal. These actions can be used to restrict device actions in the Company Portal app and website, however don't implement any device restriction policies. To prevent users from removing or resetting corporate Windows and iOS devices, you can hide these actions from the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) by selecting **Tenant Administration** > **Customization**. For more information, see [Customizing Remove and Reset device actions](/mem/intune/apps/company-portal-app#customizing-remove-and-reset-device-actions).

### Configure the Company Portal for iOS/iPadOS ADE

Apple's Automated Device Enrollments (ADE) aren't compatible with the app store version of the Company Portal app by default. However, you can configure the Company Portal app to support iOS/iPadOS ADE devices even when users have downloaded the Company Portal from the App Store. You can create an app configuration policy that uses the Company Portal on an ADE device enrolled with user affinity, or enrolled without user affinity. For more information, see [Configure the Company Portal app to support iOS and iPadOS devices enrolled with Automated Device Enrollment](/mem/intune/apps/app-configuration-policies-use-ios#configure-the-company-portal-app-to-support-ios-and-ipados-devices-enrolled-with-automated-device-enrollment).

## Next step

[:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-02.png" alt-text="Step 2 - Configure Microsoft Outlook" border="false" :::](apps-config-step-2.md)

Continue with [Step 2](apps-config-step-2.md) to configure Microsoft Outlook in Microsoft Intune.
