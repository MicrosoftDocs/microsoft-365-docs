---
title: Assign existing Microsoft Syntex per-user licenses
ms.author: chucked
author: chuckedmonson
ms.reviewer: ssquires, kkameth
ms.date: 06/20/2024
manager: jtremper
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.collection: 
    - essentials-get-started
    - m365initiative-syntex
    - Tier1
ms.custom: 
- admindeeplinkMAC
search.appverid: MET150
ms.localizationpriority: medium
description: Set up Microsoft Syntex per-user licensing.
---

# Assign existing Microsoft Syntex per-user licenses

> [!NOTE]
> As of July 1, 2023, per-user licenses are no longer available for purchase. You will need to [set up pay-as-you-go billing](syntex-azure-billing.md).<br><br>
> **Per-user licenses purchased before July 1, 2023, can still be assigned to new users.** After existing per-user licenses expire, you will need to opt-in to Syntex [pay-as-you-go billing](syntex-azure-billing.md).

This article is for organizations who have existing per-user licenses for Microsoft Syntex and want to assign them to users. For an overview of licensing options, see [Licensing for Microsoft Syntex](syntex-licensing.md).

<!---
## Plan for per-user licenses

To use Microsoft Syntex per-user licensing, your organization must have a subscription to Microsoft Syntex, and each user must have a license assigned. Licenses include the following apps, which must all be assigned:

- Microsoft Syntex
- Microsoft Syntex - SPO type
- Common Data Service for Microsoft Syntex

To use structured document processing or freeform document processing models, you also need AI Builder credits. For each licensed user of Microsoft Syntex, an allocation of AI Builder credits is provided each month.

Consider the following before you start:

- In which SharePoint sites will you enable structured document processing? All of them, some, or select sites?
- What will you name your default content center?

You can change your settings after initial setup in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

Prior to setup, make sure to plan for the best way to set up and configure content understanding in your environment. For example, you need to make the following decisions:

- The SharePoint sites in which you want to enable document processing — all of them, some, or selected sites
- The name and admins for your content center
--->

## Requirements

> [!NOTE]
> You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up Syntex.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

As an admin, you can also make changes to your selected settings anytime after setup, and throughout the content understanding management settings in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

<!---
### Custom Power Platform environments

If you plan to use a custom Power Platform environment, you must install the *AI Builder for Project Cortex* app in this environment. See [Manage Dynamics 365 apps](/power-platform/admin/manage-apps#install-an-app-in-the-environment-view) for details and look for the *AI Builder for Project Cortex* app in the list of Dynamics 365 apps. The environment must not be of the Sandbox type.

You also need to [allocate AI Builder credits](/power-platform/admin/capacity-add-on) to the custom environment before you can create document processing models. 

When using a custom environment, model creators must be assigned the Environment Maker security role and model users must be assigned the Basic User security role. See [Assign a security role to a user](/power-platform/admin/assign-security-roles) for more information.

Users creating models in a [content center site](/microsoft-365/contentunderstanding/create-a-content-center) must be site members. Users creating models locally outside the content center must be site owners of those sites.
--->
## Assign licenses

You must assign licenses for the users who will be using per-user Microsoft Syntex features.

To assign licenses:

1. In the Microsoft 365 admin center, under **Users**, select <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.

2. Select the users that you want to license, and choose **Manage product licenses**.

3. Choose **Apps** from the dropdown menu.

4. Select **Show apps for  Syntex**. Under **Apps**, make sure **Common Data Service for Syntex**, **Syntex**, and **Syntex - SPO type** are all selected.

5. Select **Save changes**.

