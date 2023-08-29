---
title: Manage data for Microsoft Whiteboard
ms.author: alexfaulkner
author: alexsfaulkner
manager: alexfaulkner
ms.reviewer: 
ms.date: 03/08/2023
audience: admin
ms.topic: article
ms.custom: 
ms.service: microsoft-365-enterprise
search.appverid: MET150
ms.collection: 
ms.localizationpriority: medium
description: Learn about data retention for Microsoft Whiteboard in Azure and OneDrive for Business.
---

# Manage data for Microsoft Whiteboard

Whiteboard content is stored in OneDrive for Business and Azure. OneDrive for Business is the default storage for all new whiteboards. Whiteboards that were originally created in Azure, and whiteboards that were initiated on a Surface Hub or a Microsoft Teams Rooms device, are stored in Azure.

In order to manage data, you must first ensure that Whiteboard is enabled for your organization. For more information, see [Manage access to Whiteboard](manage-whiteboard-access-organizations.md).

## Azure storage overview

> [!NOTE]
> The following information applies to whiteboards that are stored in Azure.

Whiteboard currently stores content securely in Azure. Data might be stored in different locations, depending on the country/region and when Whiteboard switched to storing new content in those locations. To check where new data is created, see [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations).

Content in Azure doesn't support Data Loss Prevention (DLP), eDiscovery, retention policies, and similar features. This content can be managed using [Whiteboard PowerShell cmdlets](/powershell/module/whiteboard/). Eventually, whiteboards stored in Azure will need to be migrated to OneDrive for Business or deleted.

### If a user account is deleted in Azure

We're changing how whiteboards are stored when a user's account is deleted in Azure. Prior to the change, any whiteboards that were owned by a deleted user's account were also deleted. However, whiteboards that were shared with others weren't deleted.

> [!NOTE]
> Whiteboards stored in OneDrive for Business will be handled like any other content in OneDrive for Business. For more information, see [Set the OneDrive retention for deleted users](/onedrive/set-retention).

As of **June 1, 2022**, the behavior of whiteboards on Azure has changed. Any whiteboards shared with other users will be deleted.

If you want to retain a deleted user's whiteboards, *before* you delete the account, you can transfer ownership. You can transfer a single whiteboard or all of them to another user.

- Follow these instructions to [transfer all whiteboards](/powershell/module/whiteboard/invoke-transferallwhiteboards).

- For more information about how to delete user accounts, see [Delete a user from your organization](/microsoft-365/admin/add-users/delete-a-user).

Ensure that any deletion process or script handles this change. If you're fine with the whiteboards being deleted, then no action is required.

## OneDrive for Business storage overview

Whiteboards will be created in the OneDrive for Business folder of the person who starts the whiteboard. SharePoint isn't yet supported. This process applies to all whiteboards created in the standalone Whiteboard applications, and in Microsoft Teams meetings, chats, and channels. The only exception is whiteboards started from a Surface Hub will be stored in Azure, though they'll be moved to OneDrive for Business in the future.

Any users who don't have OneDrive for Business provisioned will no longer be able to create new whiteboards when this change is implemented. However, they can still edit their previously created boards. They can also collaborate on any whiteboards that are shared with them by others who have OneDrive for Business.

An average whiteboard might be anywhere from 50 KB to 1 MB in size and located wherever your OneDrive for Business content resides. To check where data for your tenant is stored, see [Where your Microsoft 365 customer data is stored](/microsoft-365/enterprise/o365-data-locations). Then look at the location for OneDrive for Business.

### Controls for OneDrive for Business storage

You can manage Whiteboard data using existing OneDrive for Business controls. For more information, see [OneDrive guide for enterprises](/onedrive/plan-onedrive-enterprise).

You can use existing OneDrive for Business tooling to satisfy data subject requests (DSRs) for General Data Protection Regulation (GDPR). If you want to ensure all previous changes are removed from the file, you must delete the entire file.

Whiteboard files can be moved in the same way as other content in OneDrive for Business. However, share links and permissions might not move.

Data controls supported today:

- Retention policies
- Quota
- Legal hold
- DLP
- Basic eDiscovery – The .whiteboard files are stored as files in the creator's OneDrive for Business. They're indexed for keyword and file type search, but aren't available to preview or review. Upon export, an admin needs to upload the file back to OneDrive for Business to view the content. More support is planned for the future.

Data controls planned for future releases:

- Sensitivity labels
- Analytics
- More eDiscovery support

### Transfer whiteboard when a user leaves the company

To preserve a former user's OneDrive files, including .whiteboard files, first give yourself access to their OneDrive, and then move the files you want to keep. 

1. In the admin center, go to the **Users** > [Active users](https://go.microsoft.com/fwlink/p/?linkid=834822) page. 
2. Select a user. 
3. On the user properties page, select **OneDrive**. Under **Get access to files**, select **Create link to files**. 
4. Select the link to open the file location.  
5. Select the files or folders that you want to move, and then select **Move to**. 

Learn more about preserving a former user’s content: [Step 5 - Give another employee access to OneDrive and Outlook data - Microsoft 365 admin | Microsoft Learn](/admin/add-users/remove-former-employee-step-5)

### Manage moved whiteboards

Once the .whiteboard file appears in the OneDrive for Business of the new owner, they can open, edit, rename, or delete the files. 

1. Open office.com and in the app launcher, select **OneDrive**. 
2. In the left-hand navigation pane, select **My Files**. 
3. Open the folder named **Whiteboards**. 
4. In the list of files, select the moved file and select the **...** button to get rename, delete, and other options.

### Auditing

Whiteboard files stored in ODB are included in file audit log activities for create, modify, share and delete activities. Learn more about file activities at [Audit log activities - Microsoft Purview](/microsoft-365/compliance/audit-log-activities?view=o365-worldwide#file-and-page-activities&preserve-view=true).

## See also

[Manage access to Whiteboard](manage-whiteboard-access-organizations.md)

[Manage sharing for Whiteboard](manage-sharing-organizations.md)

[Deploy Whiteboard on Windows](deploy-on-windows-organizations.md)

