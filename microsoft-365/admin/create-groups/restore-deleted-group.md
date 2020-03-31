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
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: b7c66b59-657a-4e1a-8aa0-8163b1f4eb54
description: "Learn how to restore a deleted Office 365 group."
---

# Restore a deleted Group

If you've deleted a group, it will be retained for 30 days by default. This 30-day period is considered a "soft-delete" because you can still restore the group. After 30 days, the group and its associated contents are permanently deleted and cannot be restored.

When a group is restored, the following content is restored:
  
- Azure Active Directory (AD) Office 365 Groups object, properties, and members.
    
- Group's e-mail addresses.
    
- Exchange Online shared Inbox and calendar.
    
- SharePoint Online team site and files.
    
- OneNote notebook
    
- Planner
    
- Teams

- Yammer group and group content (If the Office 365 group was created from Yammer)

## Restore a group that you own by using Outlook

If you are the owner of an Office 365 group, you can restore the group yourself in Outlook by following these steps:

1. On the [deleted groups page](https://outlook.office.com/people/group/deleted), select the **Manage groups** option under the **Groups** node, and then choose **Deleted**.

2. Click on the **Restore** tab next to the group you want to restore.

If the deleted group doesn't appear here, contact an administrator.

## Restore a group in the Microsoft 365 admin center

If you are a global administrator or a groups admin, you can restore a deleted group in the Microsoft 365 admin center:

1. Go to the admin center at [https://admin.microsoft.com](Go to the admin center at https://admin.microsoft.com).
2. Expand **Groups**, and then click **Deleted groups**.
3. Select the group that you want to restore, and then click **Restore group**.
  
## Permanently delete an Office 365 group

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
  
## Got questions about Office 365 Groups?

Visit the [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/Office-365-Groups/ct-p/Office365Groups) to post questions and participate in conversations about Office 365 groups. 
  
## Related articles

[Manage Office 365 Groups with PowerShell](https://support.office.com/article/aeb669aa-1770-4537-9de2-a82ac11b0540)
  
[Delete groups using the Remove-UnifiedGroup cmdlet](https://technet.microsoft.com/library/mt238270%28v=exchg.160%29.aspx)
  
[Manage your group-connected team site settings](https://support.office.com/article/8376034d-d0c7-446e-9178-6ab51c58df42.aspx)
  
[Delete a group in Outlook](https://support.office.com/article/ca7f5a9e-ae4f-4cbe-a4bc-89c469d1726f.aspx)
