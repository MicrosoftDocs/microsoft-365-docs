---
title: "Restore a deleted Microsoft 365 group"
ms.reviewer: arvaradh
f1.keywords: CSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: b7c66b59-657a-4e1a-8aa0-8163b1f4eb54
description: "A deleted group is retained for 30 days and you can still restore the group. After 30 days, the group and its content is permanently deleted."
---

# Restore a deleted Microsoft 365 group

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

- Power BI [Classic workspace](/power-bi/collaborate-share/service-create-workspaces)

> [!NOTE]
> This article describes restoring only Microsoft 365 groups. All other groups cannot be restored once deleted.

## Restore a group

# [Outlook](#tab/outlook)

If you are the owner of a Microsoft 365 group, you can restore the group yourself in Outlook on the web by following these steps:

1. On the [deleted groups page](https://outlook.office.com/people/group/deleted), select the **Manage groups** option under the **Groups** node, and then choose **Deleted**.

2. Click on the **Restore** tab next to the group you want to restore.

If the deleted group doesn't appear here, contact an administrator.

# [Admin center](#tab/admin-center)

If you are a global administrator or a groups administrator, you can restore a deleted group in the Microsoft 365 admin center:

1. Go to the [admin center](https://admin.microsoft.com).
2. Expand **Groups**, and then click **Deleted groups**.
3. Select the group that you want to restore, and then click **Restore group**.

> [!NOTE]
> In some cases, it may take as long as 24 hours for the group and all of its data to be restored. 

---

## Got questions about Microsoft 365 Groups?

Visit the [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/Office-365-Groups/ct-p/Office365Groups) to post questions and participate in conversations about Microsoft 365 groups. 
  
## Related content

[Manage Microsoft 365 Groups with PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md) (article)\
[Delete groups using the Remove-UnifiedGroup cmdlet](/powershell/module/exchange/remove-unifiedgroup) (article)\
[Manage your group-connected team site settings](https://support.microsoft.com/office/8376034d-d0c7-446e-9178-6ab51c58df42) (article)\
[Delete a group in Outlook](https://support.microsoft.com/office/ca7f5a9e-ae4f-4cbe-a4bc-89c469d1726f) (article)
