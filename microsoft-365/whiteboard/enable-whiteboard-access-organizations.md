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

>[!NOTE]
> This article applies to Enterprise or Education organizations who use Whiteboard. For US Government Community Cloud (GCC) environments, see [Enable Whiteboard on OneDrive for Business admin guidance](https://support.microsoft.com/office/enable-microsoft-whiteboard-on-onedrive-for-business-2fae9707-0c9b-42f8-a85f-9628b698ac82). For US Government GCC High environments, see [Enable and manage access to Microsoft Whiteboard for GCC High environments](enable-whiteboard-access-gcc-high.md).

Microsoft Whiteboard is a visual collaboration canvas where people, content, and ideas come together. Today, Whiteboard runs on Azure for Enterprise and Education customers. Whiteboard is transitioning to be run on top of OneDrive for Business. This will bring many new capabilities and allow you to create, share, discover, and manage whiteboards as easily as any Office document.

## Manage Whiteboard access

Whiteboard is automatically enabled for applicable Microsoft 365 tenants. 

Whiteboard conforms to global standards including SOC 1, SOC 2, ISO 27001, HIPAA, and EU Model Clauses. 

The following admin settings are required for Whiteboard:

- Whiteboard must be enabled globally in the Microsoft 365 admin center.

- The <code>Set-SPOTenant -IsWBFluidEnabled</code> cmdlet must be enabled using [SharePoint Online PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

>[!NOTE]
> The roll out of OneDrive for Business storage is in progress. When you go to the Microsoft 365 admin center, the option to opt in or out of OneDrive for Business storage is disabled if your tenant already has been transitioned to OneDrive for Business.

You can control access to Whiteboard in the following ways:

- Enable or disable Whiteboard for your entire tenant using the Microsoft 365 admin center.

- Show or hide Whiteboard for specific users in meetings using a Teams meeting policy. It will still be visible via the web, native clients, and the Teams tab app.

- Require conditional access policies for accessing Whiteboard using the Azure Active Directory admin center.

>[!NOTE]
> Teams policy (#2 listed above) only hides Whiteboard entry points, it does not prevent the users from using Whiteboard. Conditional Access (#3 listed above) prevents any access to Whiteboard, but does not hide the entry points.

### Enable or disable Whiteboard

To enable or disable Whiteboard for your tenant, do the following steps:

1. Go to the Microsoft 365 admin center.

2. On the home page of the admin center, in the Search box on the top right, type *Whiteboard*.

3. In the search results, select **Whiteboard settings**.

4. On the Whiteboard panel, toggle **Turn Whiteboard on or off for your entire organization** to **On**.

5. Select **Save**.

6. Connect to [SharePoint Online PowerShell](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps).

7. Enable Fluid using the following <code>Set-SPOTenant</code> cmdlet:

   <pre><code class="lang-powershell">Set-SPOTenant -IsWBFluidEnabled $true</code></pre>
 
### Show or hide Whiteboard

To show or hide Whiteboard in meetings, see [Meeting policy settings](https://docs.microsoft.com/en-us/microsoftteams/meeting-policies-content-sharing). 

Prevent access to Whiteboard for specific users

To prevent access to Whiteboard for specific users, see [Building a Conditional Access policy](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-conditional-access-policies).

## Manage Whiteboard data

Whiteboard content is stored in both Azure and OneDrive for Business. New whiteboards will be stored in OneDrive for Business; the only exception is whiteboards started from a Surface Hub will be stored in Azure (this will be moved to OneDrive for Business in the future). For more information, see the tables in the Manage Whiteboard Sharing section later in this article.

### Azure storage overview

Whiteboard currently stores content securely in Azure. Data might be stored in different locations, depending on the country and when Whiteboard switched to storing new content in those locations. To check where new data is created, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide). 

Content in Azure does not support Data Loss Prevention (DLP), eDiscovery, retention policies, and similar features. Content can be managed using [Whiteboard PowerShell cmdlets](https://docs.microsoft.com/en-us/powershell/module/whiteboard/?view=whiteboard-ps) and over time, this content will need to be either migrated to OneDrive for Business or deleted.

#### If a user account is deleted in Azure

We are changing how whiteboards are stored when a user's account is deleted in Azure. Prior to the change, when a user's account was deleted, whiteboards that they own were also deleted but whiteboards that were shared with others were not deleted.

>[!NOTE]
> Whiteboards stored in OneDrive for Business will be handled like any other content in OneDrive for Business. For more information, see [Set the OneDrive retention for deleted users](https://docs.microsoft.com/en-us/onedrive/set-retention).

The behavior of whiteboards on Azure will change as of **June 1, 2022**. Any whiteboards shared with other users will be deleted.

If you want to retain a deleted user’s whiteboards, *before* you delete the account, you can transfer ownership. You can transfer a single whiteboard or all of them to another user. 

- Follow these instructions to [transfer all whiteboards](https://docs.microsoft.com/en-us/powershell/module/whiteboard/invoke-transferallwhiteboards?view=whiteboard-ps).

- For more information about how to delete user accounts, see [Delete a user from your organization](https://docs.microsoft.com/en-us/microsoft-365/admin/add-users/delete-a-user?view=o365-worldwide).

Ensure that any deletion process or script handles this change. If you are fine with the whiteboards being deleted, then no action is required. 

### ODB storage overview



