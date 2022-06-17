---
title: Manage data for Microsoft Whiteboard
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
description: Learn about data retention for Microsoft Whiteboard in Azure and OneDrive for Business.
ROBOTS: NOINDEX, NOFOLLOW

---

# Manage data for Microsoft Whiteboard

Whiteboard content is stored in both Azure and OneDrive for Business. New whiteboards will be stored in OneDrive for Business; the only exception is whiteboards started from a Surface Hub will be stored in Azure (this will be moved to OneDrive for Business in the future). For more information, see [Manage Whiteboard sharing](enable-whiteboard-access-organizations.md#manage-whiteboard-sharing) later in this article.

## Azure storage overview

Whiteboard currently stores content securely in Azure. Data might be stored in different locations, depending on the country and when Whiteboard switched to storing new content in those locations. To check where new data is created, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide). 

Content in Azure does not support Data Loss Prevention (DLP), eDiscovery, retention policies, and similar features. Content can be managed using [Whiteboard PowerShell cmdlets](https://docs.microsoft.com/en-us/powershell/module/whiteboard/?view=whiteboard-ps) and over time, this content will need to be either migrated to OneDrive for Business or deleted.

### If a user account is deleted in Azure

We are changing how whiteboards are stored when a user's account is deleted in Azure. Prior to the change, when a user's account was deleted, whiteboards that they own were also deleted but whiteboards that were shared with others were not deleted.

>[!NOTE]
> Whiteboards stored in OneDrive for Business will be handled like any other content in OneDrive for Business. For more information, see [Set the OneDrive retention for deleted users](https://docs.microsoft.com/en-us/onedrive/set-retention).

As of **June 1, 2022**, the behavior of whiteboards on Azure has changed. Any whiteboards shared with other users will be deleted.

If you want to retain a deleted user’s whiteboards, *before* you delete the account, you can transfer ownership. You can transfer a single whiteboard or all of them to another user. 

- Follow these instructions to [transfer all whiteboards](https://docs.microsoft.com/en-us/powershell/module/whiteboard/invoke-transferallwhiteboards?view=whiteboard-ps).

- For more information about how to delete user accounts, see [Delete a user from your organization](https://docs.microsoft.com/en-us/microsoft-365/admin/add-users/delete-a-user?view=o365-worldwide).

Ensure that any deletion process or script handles this change. If you are fine with the whiteboards being deleted, then no action is required. 

## OneDrive for Business storage overview

Whiteboards will be created in the OneDrive for Business folder of the person who starts the whiteboard (SharePoint is not yet supported). This applies to all whiteboards created in the standalone Whiteboard applications, and in Microsoft Teams meetings, chats, and channels. The only exception is whiteboards started from a Surface Hub will be stored in Azure (this will be moved to OneDrive for Business in the future).

Any users who do not have OneDrive for Business provisioned will no longer be able to create new whiteboards when this change is implemented. However, they can still edit their previously created boards. They can also collaborate on any whiteboards that are shared with them by others who have OneDrive for Business.

An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where data for your tenant is stored, see [Where your Microsoft 365 customer data is stored](https://docs.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations?view=o365-worldwide), and look at the location for OneDrive for Business.

### Controls for OneDrive for Business storage 

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](https://docs.microsoft.com/en-us/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). If you want to ensure that all previous changes are removed from the file, you must delete the entire file.

Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

Data controls supported today:

- Retention policies
- Quota
- Legal hold
- DLP
- Basic eDiscovery – .whiteboard files are stored as files in the creator's OneDrive for Business. They are indexed for keyword and file type search, but are not available to preview or review. Upon export, an admin needs to upload the file back to OneDrive for Business to view the content. Additional support is planned for the future.

Data controls planned for future releases:

- Sensitivity labels
- Analytics
- Additional eDiscovery support

## See also

[Enable and manage access to Whiteboard](enable-whiteboard-access-organizations.md)
[Manage sharing for Whiteboard](manage-sharing-organizations)
[Deploy Whiteboard on Windows](deploy-on-windows-organizations.md)


