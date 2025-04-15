---
title: Working with device groups in Microsoft 365 Business Premium
description: "Learn about device groups and how to apply policies with Intune in Microsoft 365 Business Premium, and increase protection from cyberattacks."
search.appverid: MET150
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.date: 05/31/2024
ms.localizationpriority: medium
ms.reviewer: nehabha
f1.keywords: NOCSH
ms.collection:
- SMB
- m365-security
- tier2
---

# Device groups and categories in Microsoft 365 Business Premium

Microsoft 365 Business Premium includes endpoint protection through Microsoft Defender for Business and Microsoft Intune. Device protection policies are applied to devices through certain collections that are called device groups. In Intune, devices are grouped into device categories as a different way of organizing them.

## Working with device groups

A device group is a collection of devices that are grouped together because of certain specified criteria, such as the operating system version. Devices that meet the criteria are included in that device group, unless you exclude them.

With Microsoft 365 Business Premium, you have default device groups that you can use. The default device groups include all the devices that are onboarded to Defender for Business. However, you can also create new device groups to assign device protection policies with specific settings to certain devices.

All device groups, including your default device groups and any custom device groups that you define, are stored in [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis).

<a name='create-a-device-group-in-the-microsoft-365-defender-portal'></a>

## Create a device group in the Microsoft Defender portal

You can create a new device group while you are in the process of creating or editing a device protection policy.

1. Go to the [Microsoft Defender portal](https://security.microsoft.com) and sign in.

2. In the navigation pane, choose **Device configuration**.

3. Take one of the following actions:

    1. Select an existing policy, and then choose **Edit**.

    2. Choose **+ Add** to create a new policy.

    > [!TIP]
    > To get help creating or editing a policy, see [View or edit policies in Microsoft Defender for Business](m365bp-view-edit-create-mdb-policies.md).

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **Create new group**.

6. Specify a name and description for the device group, and then choose **Next**.

7. Select the devices to include in the group, and then choose **Create group**.

8. On the **Device groups** step, review the list of device groups for the policy. If needed, remove a group from the list. Then choose **Next**.

9. On the **Configuration settings** page, review and edit settings as needed, and then choose **Next**. For more information about these settings, see [Understand next-generation configuration settings in Microsoft Defender for Business](/defender-business/mdb-next-generation-protection).

10. On the **Review your policy** step, review all the settings, make any needed edits, and then choose **Create policy** or **Update policy**.

## Create a device category in Intune

Create device categories in Intune from which users must choose when they enroll a device.

1. Sign in to the [Microsoft Intune admin center](https://intune.microsoft.com).

2. Choose **Devices** > **Device categories** > **Create device category** to add a new category.

3. On the **Create device category** pane, enter a name for the new category, and an optional description.

4. When you're done, select **Create**. You can see the new category in the list.

Use the device category name when you create the Microsoft Entra ID security groups. When users enroll their devices, they're presented with a list of the categories you configured in Intune. After they choose a category and finish enrollment, their device is added to the Active Directory security group that is associated with it.

## Create dynamic device groups in Microsoft Entra ID

You can also go to the Microsoft Entra ID portal (<https://entra.microsoft.com>) from the Microsoft 365 admin center. In the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com/)), choose **All admin centers**, and then choose **Microsoft Entra**.

In the Microsoft Entra ID portal, you can create dynamic groups based on the device category and device category name. Use dynamic group rules to automatically add and remove devices. If a device's attributes change, the system looks at your dynamic group rules for the directory to see if the device meets the rule requirements (is added) or no longer meets the rules requirements (is removed).

You can create a dynamic group for either devices or users, but not for both. You also can't create a device group based on the device owners' attributes. Device membership rules can only reference device attributions.

## How categories are used when enrolling devices

After categories and device groups are established, people who have iOS and Android devices can enroll their devices in Intune. When they enroll their devices, they'll choose a category from the list of categories that were configured. People who have Windows devices can use either the Company Portal website or the Company Portal app to select a category.

1. After enrolling the device go to the [company portal](https://portal.microsoft.com) and choose **My Devices**.

2. Select the enrolled device from the list, and then select a category.

After choosing a category, the device is automatically added to the corresponding group. If a device is already enrolled before you configure categories, the user sees a notification about the device on the Company Portal website. This lets the user know to select a category the next time they access the Company Portal app on iOS/iPadOS or Android.

> [!NOTE]
>
> - You can edit a device category in the Microsoft Entra ID portal, but you must manually update any security groups that reference this category.
> - If you delete a category, devices assigned to it display the category name **Unassigned**.

## View the categories of devices that you manage

1. Sign in to the [Microsoft Intune admin center](https://intune.microsoft.com), choose **Devices** \> **All devices**.

2. In the list of devices, examine the **Device category** column.

3. If the Device category column isn't shown, select **Columns** \> **Category** \> **Apply**.

## Change the category of a device

1. Sign in to the [Microsoft Intune admin center](https://intune.microsoft.com), choose **Devices** \> **All devices**.

2. Select the category you want from the list, to see its properties.

## Next steps

[Learn how to respond to incidents](m365bp-security-incident-management.md).

[Maintain your environment](m365bp-mdb-maintain-environment.md).
