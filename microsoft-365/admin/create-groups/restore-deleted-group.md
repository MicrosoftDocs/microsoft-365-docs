---
title: "Restore a deleted Microsoft 365 group"
ms.reviewer: rahulnayak
ms.date: 06/26/2024
f1.keywords: CSH
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
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
description: "A deleted group is retained for 30 days and you can still restore the group. After 30 days, the group and its content are permanently deleted."
---

# Restore a deleted Microsoft 365 group

If you delete a group, by default, it's retained for 30 days. This 30-day period is considered a "soft-delete" because you can still restore the group. After 30 days, the group and its associated contents are permanently deleted and can't be restored.

When a group is restored, the following content is restored:
  
- Microsoft Entra Microsoft 365 Groups object, properties, and members
- Group's e-mail addresses
- Exchange Online shared Inbox and calendar
- SharePoint Online team site and files
- OneNote notebook
- Planner
- Teams
- Viva Engage group and group content (If the Microsoft 365 group was created from Viva Engage)
- Power BI [Classic workspace](/power-bi/collaborate-share/service-create-workspaces)

> [!NOTE]
> This article describes restoring only Microsoft 365 groups. All other groups cannot be restored once deleted.

## Restore a group

# [Outlook](#tab/outlook)

If you're the owner of a Microsoft 365 group, you can restore the group yourself in Outlook on the web by following these steps:

1. On the [deleted groups page](https://outlook.office.com/people/group/deleted), select the **Manage groups** option under the **Groups** node, and then choose **Deleted**.

2. Select the **Restore** tab next to the group you want to restore.

If the deleted group doesn't appear here, contact an administrator.

# [Admin center](#tab/admin-center)

If you're a groups administrator, you can restore a deleted group in the Microsoft 365 admin center:

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
2. Expand **Groups**, and then select **Deleted groups**.
3. Select the group that you want to restore, and then select **Restore group**.

> [!NOTE]
> In some cases, it may take as long as 24 hours for the group and all of its data to be restored. 

---

## Got questions about Microsoft 365 Groups?

Visit the [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-groups/bd-p/Microsoft365Groups) to post questions and participate in conversations about Microsoft 365 groups.
  
## Related content

[Restore deleted email conversations](/Exchange/recipients-in-exchange-online/restore-deleted-items-group) (article)\
[Manage Microsoft 365 Groups with PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md) (article)\
[Delete groups using the Remove-UnifiedGroup cmdlet](/powershell/module/exchange/remove-unifiedgroup) (article)\
[Manage your group-connected team site settings](https://support.microsoft.com/office/8376034d-d0c7-446e-9178-6ab51c58df42) (article)\
[Delete a group in Outlook](https://support.microsoft.com/office/ca7f5a9e-ae4f-4cbe-a4bc-89c469d1726f) (article)
