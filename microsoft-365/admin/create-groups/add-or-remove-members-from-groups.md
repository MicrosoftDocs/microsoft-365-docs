---
title: "Add or remove members from Microsoft 365 groups"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
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
- MET150
ms.assetid: e186d224-a324-4afa-8300-0e4fc0c3000a
description: "Learn how to add a member to a group, remove member from group, and manage group owner status in the Microsoft 365 admin center."
---

# Add or remove members from Microsoft 365 groups using the admin center

In Microsoft 365, group members typically create their own groups, add themselves to groups they want to join, or are invited by group owners. If group ownership changes, or if you determine that a member should be added or removed, as the admin you can also make that change. Only a global administrator, Exchange administrator, Groups administrator, or user administrator can make these changes. [What is a Microsoft 365 group?](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2)

> [!TIP]
> If you're not an admin, you can [add or remove members using Outlook](https://support.microsoft.com/office/3b650f4a-5c9b-4f94-a1bb-0cca4b1091de).
  
## Add a member to a group in the admin center

1. In the admin center, go to the [**Active groups**](https://admin.microsoft.com/Adminportal/Home?#/groups) page.  

2. Click a group name.

3. In the details pane, on the **Members** tab, select **View all and manage members**, and then select **Add members**.

4. Search for or select the name of the member you want to add.

5. Select **Save**.

## Add a group to a member in the admin center

1. In the admin center, go to the [**Active users**](https://admin.microsoft.com/Adminportal/Home?#/users) page.  

2. Click a user.

3. In the details pane, on the **Account** tab, select **Manage groups**.

4. Search for or select the name of the group you want to add.

5. Select **Save**.

## Remove a member from a group in the admin center

> [!NOTE]
> When you remove a member from a private group, it takes 5 minutes for the person to be blocked from the group.

1. In the admin center, go to the [**Active groups**](https://admin.microsoft.com/Adminportal/Home?#/groups) page.  

2. Click a group name.

3. In the details pane, on the **Members** tab, select **View all and manage members**.

4. Next to the member you want to remove, select the X.

5. Select **Save** to remove the member.

## Manage group owner status

By default, the person who created the group is the group owner. Often a group will have multiple owners for backup support or other reasons. Members can be promoted to owner status and owners can be demoted to member status.
  
### Promote a member to owner status in the admin center

1. In the admin center, go to the [**Active groups**](https://admin.microsoft.com/Adminportal/Home?#/groups) page.  

2. Click a group name.

3. In the details pane, on the **Members** tab, select **View all and manage owners**.

4. Select **Add owners**.

5. Select the check box next to the name of the member you want to add.

6. Select **Save**, and then **Close**.

### Remove owner status in the admin center

1. In the admin center, go to the [**Active groups**](https://admin.microsoft.com/Adminportal/Home?#/groups) page.  

2. Click a group name.

3. In the details pane, on the **Members** tab, select **View all and manage owners**.

4. Select the X next to the owner's name.

5. Select **Save**.

## More on managing membership

- [Manage groups dynamically in Azure Active Directory](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal): see the section "How can I manage the membership of a group dynamically?"

- To add hundreds or thousands of users to groups, use the [Add-UnifiedGroupLinks](/powershell/module/exchange/add-unifiedgrouplinks).

- [Assign a new owner to an orphaned group](https://support.microsoft.com/office/86bb3db6-8857-45d1-95c8-f6d540e45732)

## Related content

[Upgrade distribution lists to Microsoft 365 groups in Outlook](../manage/upgrade-distribution-lists.md) (article)

[Why you should upgrade your distribution lists to groups in Outlook](https://support.microsoft.com/office/7fb3d880-593b-4909-aafa-950dd50ce188) (article)

[Manage guest access in Microsoft 365 groups](manage-guest-access-in-groups.md) (article)

[Manage Microsoft 365 groups with PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md): this article introduces you to key cmdlets and provides examples (article)

[Microsoft 365 groups naming policy](../../solutions/groups-naming-policy.md) (article)