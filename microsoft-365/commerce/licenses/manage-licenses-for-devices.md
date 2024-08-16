---
title: "Manage Microsoft 365 Apps licenses for devices"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: shegu, nicholak
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg 
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_licensing
- AdminSurgePortfolio
- okr_SMB
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150
description: "Learn how to assign Microsoft 365 Apps licenses to groups for use with devices."
ms.date: 12/19/2023
---
# Manage Microsoft 365 Apps licenses for devices

If you have Microsoft 365 Apps for enterprise (device) or Microsoft 365 Apps for Education (device), you can assign licenses to devices by using Microsoft Entra groups. When a device has a license, anyone who uses that device can use Microsoft 365 Apps for enterprise. For example, let's say you have 20 laptops and tablets that are used by people in your organization. When you assign a license to each device, each person who logs in to one of the devices uses Microsoft 365 Apps for enterprise without the need for their own license.

> [!IMPORTANT]
> Device-based licensing for Microsoft 365 Apps for enterprise is available only as an add-on license for some commercial customers and some education customers. For commercial customers, the license is *Microsoft 365 Apps for enterprise (device)* and is available only through Enterprise Agreement/Enterprise Agreement Subscription. For education customers, the license is *Microsoft 365 Apps for Education (device)* and is available only through Enrollment for Education Solutions (EES). For more information, read the blog post on [education availability](https://educationblog.microsoft.com/2019/08/attention-it-administrators-announcing-office-365-proplus-device-based-subscription-for-education). For commercial availability, contact your Microsoft account representative.

To begin, you create a group in the Microsoft Entra admin center, and then assign devices to the group. To learn more about device licensing, including device requirements, what types of groups you can use, and how to configure Microsoft 365 Apps for enterprise to use device licensing, see [Device-based licensing for Microsoft 365 Apps for enterprise](/deployoffice/device-based-licensing).

## Before you begin

You must be a Global Administrator to perform the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

## Assign licenses to devices

When you assign licenses to a group, you assign licenses to all devices within the group. You can only assign one subscription to any single group.

[!INCLUDE [O365 21Vianet admin center link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. On the **Licenses** page, choose **Microsoft 365 Apps for Education (device)** or **Microsoft 365 Apps for enterprise (device)**.
3. On the next page, select a subscription, then select **Assign licenses**.
4. In the **Assign licenses to a group** pane, begin typing a group name, and then select it from the results to add it to the list.
5. Select **Assign**, then select **Close**.

## Unassign licenses from devices

When you unassign licenses from a group, you remove the licenses from all devices within the group. All apps and their associated data are then read-only.

[!INCLUDE [O365 21Vianet admin center link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. On the **Licenses** page, choose **Microsoft 365 Apps for Education (device)** or **Microsoft 365 Apps for enterprise (device)**.
3. On the next page, select a subscription, select the three dots (more actions), and then select **Unassign licenses**.
4. In the **Unassign licenses** dialog box, select **Unassign**.
