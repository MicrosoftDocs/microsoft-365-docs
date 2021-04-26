---
title: "Manage devices enrolled in Mobile Device Management in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Basic Mobility and Security can help you secure and manage mobile devices."
---

# Manage devices enrolled in Mobile Device Management in Microsoft 365

The built-in mobile device management for Microsoft 365 helps you secure and manage your users' mobile devices like iPhones, iPads, Androids, and Windows phones. The first step is to sign in to Microsoft 365 and set up Basic Mobility and Security. For more info, see [Set up Basic Mobility and Security](set-up.md).

After you've set it up, the people in your organization must enroll their devices in the service. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md). Then you can use Basic Mobility and Security to help manage devices in your organization. For example, you can use device security policies to help limit email access or other services, view devices reports, and remotely wipe a device. You'll typically go to the Security & Compliance Center to do these tasks. For more info, see [Microsoft 365 compliance center](../../compliance/microsoft-365-compliance-center.md).

## Device management tasks

To get to the device management panel, follow these steps:

1. Go to the [Microsoft 365 admin center](../../admin/admin-overview/about-the-admin-center.md).

2. Type Mobile Device Management into the search field, and select **Mobile Device Management** from the list of results.

    :::image type="content" source="../../media/basic-mobility-security/bms-6-mobile-device-management-option.png" alt-text="Mobile device management option":::

3. Select  **Let's get started**.

## Manage mobile devices

After you've got Basic Mobility and Security set up, here are some ways you can manage the mobile devices in your organization.

|**To do this**|**Do this**|
|:----------------|:------------------------------------------------------------------------------|
|Wipe a device |In the Device Management panel, select *device name*, then  **Full wipe**  to delete all information or  **Selective wipe**  to delete only organizational information on the device. For more info, see [Wipe a mobile device in Basic Mobility and Security](wipe-mobile-device.md).|
|Block unsupported devices from accessing Exchange email using Exchange ActiveSync |In the Device Management panel, select  **Block**. |
|Set up device policies like password requirements and security settings |In the Device Management panel, select **Device security policies** > **Add +**. For more info, see [Create device security policies in Basic Mobility and Security](create-device-security-policies.md).|
|View list of blocked devices  |In the Device Management panel, under  **Select a view**  select  **Blocked**. |
|Unblock noncompliant or unsupported device for a user or group of users  |Pick one of the following to unblock devices:<br/>- Remove the user or users from the security group the policy has been applied to. Go to Microsoft 365 admin center > **Groups**, and then select group name. Select **Edit members and admins**.<br/>- Remove the security group the users are a member of from the device policy. Go to Security & Compliance Center > **Security policies** > **Device security policies**. Select device policy name, and then select **Edit** > **Deployment**.<br/>- Unblock all noncompliant devices for a device policy. Go to Security & Compliance Center > **Security policies** > **Device security policies**. Select device policy name and then select **Edit** > **Access requirements**. Select  **Allow access and report violation**.<br/>- To unblock a noncompliant or unsupported device for a user or a group of users, go to Security & Compliance Center > **Security policies** > **Device management** > **Manage device access settings**. Add a security group with the members you want to exclude from being blocked access to Microsoft 365. For more info, see [Create, edit, or delete a security group in the Microsoft 365 admin center](../../admin/email/create-edit-or-delete-a-security-group.md).|
|Remove users so their devices are no longer managed by Basic Mobility and Security |To remove the user, edit the security group that has device management policies for Basic Mobility and Security. For more info, see  [Create, edit, or delete a security group in the Microsoft 365 admin center](../../admin/email/create-edit-or-delete-a-security-group.md).<br/>To remove Basic Mobility and Security from all your Microsoft 365 users, see [Turn off Basic Mobility and Security](turn-off.md).|

Live (v14)