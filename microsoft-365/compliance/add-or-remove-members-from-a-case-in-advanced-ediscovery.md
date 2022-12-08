---
title: "Add or remove members from a case"
description: "Learn how to add or remove the members who can access a case when managing an eDiscovery (Premium) case."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-mar2020
---
# Add or remove members from a case

You can add or remove members to manage who can access the case. However, before a member can access an eDiscovery (Premium) case (and perform tasks in the case), you must add the user to the eDiscovery Manager role group on the **Permissions** page in the Microsoft Purview compliance portal. For more information, see [Assign eDiscovery permissions](./assign-ediscovery-permissions.md).

1. On the **eDiscovery (Premium)** page, go to the case that you want to add a member to.

2. Click the **Settings** tab and then click **Select** in the **Access & permissions** tile.

3. Under **Manage members**, click **Add** to add members to the case. You can also choose to add a role group to the case by clicking  **Add** under **Manage role groups**.

4. In the list of people or role groups that can be added as members of the case, select the check box next to the names of the people or role groups that you want to add.

   > [!NOTE]
   > When adding a role group to a case, you can only add the role groups that you are a member of.

5. After you've selected the people or role groups to add as members of the case, click **Add**.

6. In the **Manage this case** flyout page, click **Save** to save the new list of case members.

> [!IMPORTANT]
> If a role is added or removed from a role group that you've added as a member of a case, then the role group will be automatically removed as a member of the case (or any case the role group is a member of). The reason for this is to protect your organization from inadvertently providing additional permissions to members of a case. Similarly, if a role group is deleted, it will be removed from all cases it was a member of. For more information, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md#adding-role-groups-as-members-of-ediscovery-cases).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Removing members from a case

Only an [eDiscovery Administrator](assign-ediscovery-permissions.md) can remove members from a case. Even if you are assigned to the eDiscovery Manager role group or initially created the case, you won't be able to remove yourself or other members from a case unless you are also an eDiscovery Administrator. To remove yourself or other members from a case, contact an eDiscovery Administrator in your organization.
