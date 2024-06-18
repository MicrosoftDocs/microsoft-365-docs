---
title: "Step 1. Confirm users, devices, and groups"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 05/07/2024
description: Step 1. Confirm users, devices, and groups.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Confirm users, devices, and groups

Before you assign apps to users, groups, or devices at your organization, you should review and confirm the list of users and devices at your organization, as well as the groups of users and devices that you have already set up in your Intune tenant.

The way you assign an app depends on whether you are [managing only the enrolled devices](/microsoft-365/solutions/apps-assign-management#app-management-using-managed-devices) (MDM), [managing only apps](apps-assign-management.md#app-management-using-unmanaged-devices) (MAM) where the devices are unmanaged, or managing both the devices and apps (MAM+MDM). For more infomraiton about these configurations, see [Mobile Application Management configurations](apps-guide-overview.md#mobile-application-management-configurations).

You can view a list of end users that have been added to Microsoft Intune by selecting the **User** workload on the left of the Intune portal. These users are members of your organization that have devices and/or apps associated with your Intune tenant. 

> [!NOTE]
> A workload is a main area of a service. When you sign in to Intune, you see these workloads in the left navigation paine. For example, **Devices**, **Apps**, **Users**, and **Groups** are all workloads.

You can also give users [additional permissions](/mem/intune/fundamentals/users-add#grant-admin-permissions) to access Intune.

:::image type="content" alt-text="Screenshot of the Microsoft Intune admin center - Users." source="../media/assign-managed-apps/assign-managed-apps-07.png" lightbox="../media/assign-managed-apps/assign-managed-apps-07.png":::

Groups of users and devices are displayed and managed by selecting the **Groups** workload. The **Groups** workload displays details about the Microsoft Entra groups included in Intune. As an Intune admin, you use groups to manage users and devices.

:::image type="content" alt-text="Screenshot of the Microsoft Intune admin center - Groups." source="../media/assign-managed-apps/assign-managed-apps-08.png" lightbox="../media/assign-managed-apps/assign-managed-apps-08.png":::

The devices you have enrolled in Intune are displayed and managed in the **Devices** workload. This section of Intune allows you to quickly see the number of devices that are managed for each platform. Selecting a platform allows you to see additional details. Also, you can check wither you have any profiles with errors or conflicts, see a count of noncompliant devices for your tenant, and see if there are any Windows device with update errors or conflicts.

:::image type="content" alt-text="Screenshot of the Microsoft Intune admin center - Devices." source="../media/assign-managed-apps/assign-managed-apps-05.png" lightbox="../media/assign-managed-apps/assign-managed-apps-05.png":::

> [!IMPORTANT]
> Users are stored in Microsoft Entra ID. Microsoft Entra ID controls access to resources and authenticates users. If you haven't already added users to your Intune tenant, you can add them using several different methods.

As part of setting up Intune, you may have added users, created groups, and enrolled devices into your Intune tenant. If not, do this now:
- [Add users to Intune](#add-users-to-intune)
- [Enroll devices with Intune]() 

## Add users to Intune

As part of setting up Intune, you may have already added users to your Intune tenant. If not, add users now:
- [Add multiple users to Intune](#add-multiple-users-to-intune)
- [Add a single users to Intune](#add-single-users-to-intune)

### Add multiple users to Intune

The most efficient way to add users is in bulk in the Intune admin center. Adding users to your Intune tenant involves creating and uploading a *.csv* file containing the full list of members for your organization. For more information about downloading the *.csv* file, understanding the fields within the *.csv* file, and uploading the *.csv* file, see [Add multiple Intune users in the Microsoft Intune admin center](/intune/fundamentals/users-add#add-multiple-intune-users-in-the-microsoft-intune-admin-center).

Other ways to add users to your tenant include the following methods:
- [Add multiple users from your on-premises Active Directory](/mem/intune/fundamentals/users-add#sync-active-directory-and-add-users-to-intune).
- [Invite multiple Microsoft Entra B2B users](/entra/external-id/tutorial-bulk-invite).

### Add single users to Intune

If you need to add individual users to your Intune tenant, you can create a new user. For more information, see [Add individual Intune users in the Microsoft Intune admin center](/mem/intune/fundamentals/users-add#add-individual-intune-users-in-the-microsoft-intune-admin-center). 

## Enroll devices with Intune

Much like reviewing the list of users you have in Intune, you can review the list of enrolled devices you have in Intune. The devices are listed in the **Devices** workload. For more information about device enrollment, see [Enrollment guide: Microsoft Intune enrollment](/mem/intune/fundamentals/deployment-guide-enrollment).

> [!NOTE]
> [Assign Intune licenses to multiple users](/mem/intune/fundamentals/quickstart-create-user#assign-intune-licenses-to-multiple-users)

## Create groups for Intune

As part of setting up Intune, you may have created groups for your Intune tenant. If not, create groups now:
- [Create groups of users for Intune](#create-groups-of-users-for-intune)
- [Create groups of devices for Intune](#create-groups-of-devices-for-intune)

### Create groups of users for Intune


### Create groups of devices for Intune



## Next step

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-02.png" alt-text="Step 2. Apply enhanced data protection." border="false" :::](apps-assign-step-2.md)

Continue with [Step 2](apps-assign-step-2.md) to assign apps to groups using Microsoft Intune.