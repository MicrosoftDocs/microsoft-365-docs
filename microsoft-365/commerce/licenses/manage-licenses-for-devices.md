---
title: "Manage licenses for devices"
f1.keywords:
- CSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: shegu, nicholak
ms.audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
description: "Learn how to assign licenses to groups for use with devices."
ms.custom: 
- AdminSurgePortfolio
- okr_SMB
- commerce_licensing
search.appverid: MET150
ms.date: 03/17/2021
---
# Manage licenses for devices

If you have Microsoft 365 Apps for enterprise (device) or Microsoft 365 Apps for Education (device), you can assign licenses to devices by using Azure AD groups. When a device has a license, anyone who uses that device can use Microsoft 365 Apps for enterprise (previously named Office 365 ProPlus). For example, let's say you have 20 laptops and tablets that are used by people in your organization. When you assign a license to each device, each person who logs in to one of the devices uses Microsoft 365 Apps for enterprise without the need for their own license.

> [!IMPORTANT]
> Device-based licensing for Microsoft 365 Apps for enterprise is available only as an add-on license for some commercial customers and some education customers. For commercial customers, the license is *Microsoft 365 Apps for enterprise (device)* and is available only through Enterprise Agreement/Enterprise Agreement Subscription. For education customers, the license is *Microsoft 365 Apps for Education (device)* and is available only through Enrollment for Education Solutions (EES). For more information, read the blog post on [education availability](https://educationblog.microsoft.com/2019/08/attention-it-administrators-announcing-office-365-proplus-device-based-subscription-for-education). For commercial availability, contact your Microsoft account representative.

To begin, you create a group in the Azure Active Directory admin center, and then assign devices to the group. To learn more about device licensing, including device requirements, what types of groups you can use, and how to configure Microsoft 365 Apps for enterprise to use device licensing, see [Device-based licensing for Microsoft 365 Apps for enterprise](/deployoffice/device-based-licensing).

> [!IMPORTANT]
> You must be a Global admin to complete the tasks in this article.

## Assign licenses to devices

When you assign licenses to a group, you assign licenses to all devices within the group. You can only assign one subscription to any single group.

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. On the **Licenses** page, choose **Microsoft 365 Apps for Education (device)** or **Microsoft 365 Apps for enterprise (device)**.
3. On the next page, choose a subscription, then choose **Assign licenses**.
4. In the **Assign licenses to a group** pane, begin typing a group name, and then choose it from the results to add it to the list.
5. Choose **Assign**, then choose **Close**.

## Unassign licenses from devices

When you unassign licenses from a group, you remove the licenses from all devices within the group. All apps and their associated data are then read-only.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. On the **Licenses** page, choose **Microsoft 365 Apps for Education (device)** or **Microsoft 365 Apps for enterprise (device)**.
3. On the next page, choose a subscription, select the three dots (more actions), and then choose **Unassign licenses**.
4. In the **Unassign licenses** dialog box, choose **Unassign**.
