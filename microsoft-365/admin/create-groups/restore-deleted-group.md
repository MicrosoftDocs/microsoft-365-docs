---
title: "Restore a deleted group"
ms.reviewer: arvaradh
f1.keywords: CSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: b7c66b59-657a-4e1a-8aa0-8163b1f4eb54
description: "Learn how to restore a deleted Microsoft 365 group."
---

# Restore a deleted Group

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end

If you've deleted a group, it will be retained for 30 days by default. This 30-day period is considered a "soft-delete" because you can still restore the group. After 30 days, the group and its associated contents are permanently deleted and cannot be restored.

When a group is restored, the following content is restored:
  
- Azure Active Directory (AD) Microsoft 365 Groups object, properties, and members.
    
- Group's e-mail addresses.
    
- Exchange Online shared Inbox and calendar.
    
- SharePoint Online team site and files.
    
- OneNote notebook
    
- Planner
    
- Teams

- Yammer group and group content (If the Microsoft 365 group was created from Yammer)

## Restore a group that you own by using Outlook on the web

If you are the owner of a Microsoft 365 group, you can restore the group yourself in Outlook on the web by following these steps:

1. On the [deleted groups page](https://outlook.office.com/people/group/deleted), select the **Manage groups** option under the **Groups** node, and then choose **Deleted**.

2. Click on the **Restore** tab next to the group you want to restore.

If the deleted group doesn't appear here, contact an administrator.

## Restore a group in the Microsoft 365 admin center

If you are a global administrator or a groups administrator, you can restore a deleted group in the Microsoft 365 admin center:

1. Go to the [admin center](https://admin.microsoft.com).
2. Expand **Groups**, and then click **Deleted groups**.
3. Select the group that you want to restore, and then click **Restore group**.

> [!NOTE]
> In some cases, it may take as long as 24 hours for the group and all of its data to be restored. 
  
## Permanently delete a Microsoft 365 group

Sometimes you may want to permanently purge a group without waiting for the 30 day soft-deletion period to expire. To do that, start PowerShell and run this command to get the object ID of the group:
  
```
Get-AzureADMSDeletedGroup
```

Take note of the object ID of the group, or groups, that you want to permanently delete.
  
> [!CAUTION]
> Purging the group removes the group and its data forever. 
  
To purge the group run this command in PowerShell:
  
```
Remove-AzureADMSDeletedDirectoryObject -Id <objectId>
```

To confirm that the group has been successfully purged, run the  *Get-AzureADMSDeletedGroup*  cmdlet again to confirm that the group no longer appears on the list of soft-deleted groups. In some cases it may take as long as 24 hours for the group and all of its data to be permanently deleted. 
  
## Got questions about Microsoft 365 Groups?

Visit the [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/Office-365-Groups/ct-p/Office365Groups) to post questions and participate in conversations about Microsoft 365 groups. 
  
## Related articles

[Manage Microsoft 365 Groups with PowerShell](https://docs.microsoft.com/microsoft-365/enterprise/manage-microsoft-365-groups-with-powershell)
  
[Delete groups using the Remove-UnifiedGroup cmdlet](https://technet.microsoft.com/library/mt238270%28v=exchg.160%29.aspx)
  
[Manage your group-connected team site settings](https://support.microsoft.com/office/8376034d-d0c7-446e-9178-6ab51c58df42)
  
[Delete a group in Outlook](https://support.microsoft.com/office/ca7f5a9e-ae4f-4cbe-a4bc-89c469d1726f)
