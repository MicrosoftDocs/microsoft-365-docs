---
title: Enable and manage access to Microsoft Whiteboard for your organization
ms.author: chucked
author: chuckedmonson
manager: alexfaulkner
ms.reviewer: 
audience: admin
ms.topic: article
ms.custom: 
ms.prod: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn how to set up Microsoft Whiteboard for your organization in the Microsoft 365 admin center.
ROBOTS: NOINDEX, NOFOLLOW

---

# Enable and manage access to Microsoft Whiteboard for your organization

Microsoft Whiteboard is a visual collaboration canvas where people, content, and ideas come together. Today, Whiteboard runs on Azure for Enterprise and Education customers. Whiteboard is transitioning to be run on top of OneDrive for Business. This will bring many new capabilities and allow you to create, share, discover, and manage whiteboards as easily as any Office document.

>[!NOTE]
> This article applies to Enterprise or Education organizations who use Whiteboard. For US Government Community Cloud (GCC) environments, see [Enable Whiteboard on OneDrive for Business admin guidance](https://support.microsoft.com/office/enable-microsoft-whiteboard-on-onedrive-for-business-2fae9707-0c9b-42f8-a85f-9628b698ac82). For US Government GCC High environments, see [Enable and manage access to Microsoft Whiteboard for GCC High environments](enable-whiteboard-access-gcc-high.md).

## Manage Whiteboard Access

Whiteboard is automatically enabled for applicable Microsoft 365 tenants. 

Whiteboard conforms to global standards including SOC 1, SOC 2, ISO 27001, HIPAA, and EU Model Clauses. 

Required admin settings for Whiteboard

Whiteboard must be enabled globally in the Microsoft 365 Admin Center

In addition, isWBFluidEnabled must be enabled using the SharePoint Online PowerShell cmdlet

Note: The roll out of ODB storage is in progress. When you go to the Microsoft 365 Admin Center, the option to opt in or out of ODB storage is disabled if your tenant has already been transitioned to ODB.

Controlling access to Whiteboard

Enable or disable Whiteboard for your entire tenant using the Microsoft 365 Admin Center

Show or hide Whiteboard for specific users in meetings using a Teams meeting policy – it’s still visible via web, native clients and Teams tab app

Require Conditional Access policies for accessing Whiteboard using Azure Active Directory Admin Center

Note: Teams policy (#2 listed above) only hides Whiteboard entry points, it does not prevent the users from using Whiteboard. Conditional Access (#3 listed above) prevents any access to Whiteboard, but does not hide the entry points.

To enable or disable Whiteboard for your tenant

Go to the Microsoft 365 Admin Center.

On the Admin Center home page, go to the Search box in the top right, and then type Whiteboard.

In the search results, click or tap Whiteboard settings.

On the Whiteboard panel, toggle Turn Whiteboard on or off for your entire organization to On.

Click or tap Save.

Connect to SharePoint Online PowerShell.

Enable Whiteboard using the Set-SPOTenant cmdlet.

Set-SPOTenant -IsWBFluidEnabled $true

To show or hide Whiteboard for meetings 

Use meeting policy settings.

To prevent access to Whiteboard for specific users

Use Conditional Access policies.

Manage Whiteboard Data
Whiteboard content is stored in both Azure


