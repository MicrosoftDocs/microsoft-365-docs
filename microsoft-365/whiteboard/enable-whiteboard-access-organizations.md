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

# Enable and manage access to Microsoft Whiteboard for organizations

>[!NOTE]
> This article applies to Enterprise or Education organizations who use Whiteboard. For US Government Community Cloud (GCC) environments, see [Enable Whiteboard on OneDrive for Business](https://support.microsoft.com/office/enable-microsoft-whiteboard-on-onedrive-for-business-2fae9707-0c9b-42f8-a85f-9628b698ac82). For US Government GCC High environments, see [Enable and manage access to Microsoft Whiteboard for GCC High environments](enable-whiteboard-access-gcc-high.md).

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
> Teams meeting policies only hide Whiteboard entry points; it doesn't prevent the users from using Whiteboard. Conditional access policies prevent any access to Whiteboard, but doesn't hide the entry points.

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

### Prevent access to Whiteboard

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

### OneDrive for Business storage overview

Whiteboards will be created in the OneDrive for Business folder of the person who starts the whiteboard (SharePoint is not yet supported). This applies to all whiteboards created in the standalone Whiteboard applications, and in Microsoft Teams meetings, chats, and channels. The only exception is whiteboards started from a Surface Hub will be stored in Azure (this will be moved to OneDrive for Business in the future).

Any users who do not have OneDrive for Business provisioned will no longer be able to create new whiteboards when this change is implemented. However, they can still edit their previously created boards. They can also collaborate on any whiteboards that are shared with them by others who have OneDrive for Business.

An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where data for your tenant is stored, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide), and look at the location for OneDrive for Business.

#### Controls for OneDrive for Business storage 

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](https://docs.microsoft.com/en-us/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). If you want to ensure that all previous changes are removed from the file, you must delete the entire file.

Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

Data controls supported today:

- Retention policies
- Quota
- Legal hold
- DLP
- Basic eDiscovery - .whiteboard files are stored as files in the creator's OneDrive for Business. They are indexed for keyword and file type search, but are not available to preview or review. Upon export, an admin needs to upload the file back to OneDrive for Business to view the content. Additional support is planned for the future.

Data controls planned for future releases:

- Sensitivity labels
- Analytics
- Additional eDiscovery support

## Manage Whiteboard sharing

The sharing experience differs based on whether you’re in a Teams meeting, if you're using a shared device, or what tenant-level sharing settings are enabled. The following scenarios apply only to new boards created after Whiteboard switches to using OneDrive for Business storage. There is no change to previously created boards still stored in Azure.

### Sharing in Teams meetings


