---
title: "Step 1. Confirm users, devices, and groups"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Step 1. Confirm users, devices, and groups.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Confirm users, devices, and groups

Before you assign apps to users, groups, or devices at your organization, confirm the list of users and devices at your organization, as well as the groups of users and devices, that you have already set up in your Intune tenant. You can use this list to create groups and assign apps.

The way you assign an app depends on whether you are [managing only the enrolled devices](apps-assign-management.md#app-management-using-managed-devices) (MDM), [managing only apps](apps-assign-management.md#app-management-using-unmanaged-devices) (MAM), or managing both the devices and apps (MAM+MDM). For more information about these configurations, see [Mobile Application Management configurations](apps-guide-overview.md#mobile-application-management-configurations).

If you are managing devices at your organiztion (MDM) using Intune, you can assign a managed app to the managed devices using either the **Available for enrolled devices** app assignment or the **Required** app assignment. If you are managing only apps (MAM) without enrolling devices, or need to assign apps to members of your organization that have both managed devices (enrolled) and unmanaged devices (not enrolled), you can assign a managed app to the user using the **Available with or without enrollment** assignment.

You can view a list of end users that have been added to Microsoft Intune by selecting the **User** workload in Intune portal.

:::image type="content" alt-text="Screenshot of the Microsoft Intune admin center - Users." source="../media/assign-managed-apps/assign-managed-apps-07.png" lightbox="../media/assign-managed-apps/assign-managed-apps-07.png":::

> [!NOTE]
> A workload is a main area of a service. When you sign in to Intune, you see these workloads in the left navigation pane. For example, **Devices**, **Apps**, **Users**, and **Groups** are all workloads.

These users are members of your organization that have devices and/or apps associated with your Intune tenant. Users are stored in Microsoft Entra ID. Microsoft Entra ID controls access to resources and authenticates users. For example, a Microsoft Entra user can do such things are seamless sign-on to your on-premises and cloud resources, which include your Intune tenant. Also, you can apply conditional access for Microsoft Entra user. For more information about Microsoft Entra, see [What is Microsoft Entra ID](/entra/fundamentals/whatis) and [Microsoft Entra ID](/entra/identity).

> [!NOTE]
> You can also give individual users [additional permissions](/mem/intune/fundamentals/users-add#grant-admin-permissions) to access Intune. As a best practice, we recommend that only a few people in your organization are assigned the Global administrator role to help prevent unauthorized access.

Groups of users and devices are displayed and managed by selecting the **Groups** workload. The **Groups** workload displays details about the Microsoft Entra groups included in Intune. As an Intune admin, you use groups to manage users and devices.

:::image type="content" alt-text="Screenshot of the Microsoft Intune admin center - Groups." source="../media/assign-managed-apps/assign-managed-apps-08.png" lightbox="../media/assign-managed-apps/assign-managed-apps-08.png":::

The devices you have enrolled in Intune are displayed and managed in the **Devices** workload. This section of Intune allows you to quickly see the number of devices that are managed for each platform. Selecting a platform allows you to see additional details. Also, you can check whether you have any profiles with errors or conflicts, see a count of noncompliant devices for your tenant, and see if there are any Windows device with update errors or conflicts.

:::image type="content" alt-text="Screenshot of the Microsoft Intune admin center - Devices." source="../media/assign-managed-apps/assign-managed-apps-05.png" lightbox="../media/assign-managed-apps/assign-managed-apps-05.png":::

If you haven't already added users to your Intune tenant, you can add them using several different methods within your Intune tenant.

## Add users to Intune

As part of setting up Intune, you may have already added users to your Intune tenant. If not, you can add either mulitple users or single users. Adding a user to Intune creates a new Microsoft Entra ID account.

- [Add multiple users to Intune](#add-multiple-users-to-intune)
- [Add a single users to Intune](#add-single-users-to-intune)

> [!NOTE]
> After adding a user to Intune, you should also assign an Intune licence to the user. For more information, see [Assign Intune licenses to multiple users](/mem/intune/fundamentals/quickstart-create-user#assign-intune-licenses-to-multiple-users) and [Assign a license to an individual user](/mem/intune/fundamentals/quickstart-create-user#assign-a-license-to-an-individual-user).

### Add multiple users to Intune

The most efficient way to add users is in bulk in the Intune admin center. Adding users to your Intune tenant involves creating and uploading a *.csv* file containing the full list of members for your organization. For more information about downloading the *.csv* file, understanding the fields within the *.csv* file, and uploading the *.csv* file, see [Add multiple Intune users in the Microsoft Intune admin center](/mem/intune/fundamentals/users-add#add-multiple-intune-users-in-the-microsoft-intune-admin-center).

Other ways to add users to your tenant include the following methods:

- [Add multiple users from your on-premises Active Directory](/mem/intune/fundamentals/users-add#sync-active-directory-and-add-users-to-intune).
- [Invite multiple Microsoft Entra B2B users](/entra/external-id/tutorial-bulk-invite).

### Add single users to Intune

If you need to add individual users to your Intune tenant, you can create a new user. For more information, see [Add individual Intune users in the Microsoft Intune admin center](/mem/intune/fundamentals/users-add#add-individual-intune-users-in-the-microsoft-intune-admin-center). 

## Enroll devices with Intune

To assign apps to devices managed by Intune, the device must be enrolled with Intune. For more information about device enrollment, see [Enrollment guide: Microsoft Intune enrollment](/mem/intune/fundamentals/deployment-guide-enrollment).

## Create groups for Intune

As part of setting up Intune, you may have created groups for your Intune tenant. By using groups within Intune, you can quickly assign apps to the right members of your organization. Additionally, you can exclude specific members of your organization from recieving an app assignment.

When you create a new group in Intune, you can choose to create a **Security** group or a **Microsoft 365** group. For members of your organization, it is recommended that you create **Security** groups to provide group members access to applications, resources, and assign licenses. Group members can be users, devices, service principals, and other groups. The other group option is a **Microsoft 365** group. **Microsoft 365** groups provide collaboration opportunities when writing documents, creating spreadsheets, working on project plans, scheduling meetings, or sending email. This type of group can include people outside your organization.

You can set the **Mebership type** for your group of users to be either as **Assigned**, **Dynamic User**, or **Dynamic Device**. **Assigned** users and devices must be manually added and removed from a static group. Groups where the **Membership type** is **Dynamic User** or **Dynamic Device** automatically add users or devices to user groups or device groups based on an expression you create.

If you haven't created any Intune groups, create them now. For more information, see [Add groups to organize users and devices](/mem/intune/fundamentals/groups-add).

## Next step

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-02.png" alt-text="Step 2. Apply enhanced data protection." border="false" :::](apps-assign-step-2.md)

Continue with [Step 2](apps-assign-step-2.md) to assign apps to groups using Microsoft Intune.
