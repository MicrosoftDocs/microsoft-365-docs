---
title: "Give users access to the Security & Compliance Center"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.PermissionsHelp'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid:
- MOE150
- MET150
ms.assetid: 2cfce2c8-20c5-47f9-afc4-24b059c1bd76
description: "Users need to be assigned permissions in the Security & Compliance Center before they can manage any of its security or compliance features."
---

# Give users access to the Security & Compliance Center

Users need to be assigned permissions in the Security & Compliance Center before they can manage any of its security or compliance features. As a global admin or member of the OrganizationManagement role group in the Security & Compliance Center, you can give these permissions to users. Users will only be able to manage the security or compliance features that you give them access to.

For more information about the different permissions you can give to users in the Security & Compliance Center, check out [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## What do you need to know before you begin?

- You need to be a global admin, or a member of the OrganizationManagement role group in the Security & Compliance Center, to complete the steps in this article.

- Role groups for the Security & Compliance Center might have similar names to the role groups in Exchange Online, but they're not the same.

- Role group memberships aren't shared between Exchange Online and the Security & Compliance Center.

- Delegated Access Permission (DAP) partners with Administer On Behalf Of (AOBO) permissions can't access the Security & Compliance Center.

## Use the admin center to give another user access to the Security & Compliance Center

1. [Sign in to Office 365 and go to the Admin center](https://docs.microsoft.com/microsoft-365/compliance/go-to-the-securitycompliance-center).

2. In the Microsoft 365 admin center, open **Admin centers** and then click **Security & Compliance**.

3. In the Security & Compliance Center, go to **Permissions**.

4. From the list, choose the role group that you want to add the user to and click **Edit** ![Edit icon](../../media/O365-MDM-CreatePolicy-EditIcon.gif).

5. In the role group's properties page under **Members**, click **Add**![Add Icon](../../media/ITPro-EAC-AddIcon.gif) and select the name of the user (or users) you want to add.

6. When you've selected all of the users you want to add to the role group, click **add-\>** and then **OK**.

7. Click **Save** to save the changes to the role group.

### How do you know this worked?

1. In the Security & Compliance Center, go to **Permissions**.

2. From the list, select the role group to view the members.

3. On the right, in the role group details, you can view the members of the role group.

## Use PowerShell to give another user access to the Security & Compliance Center

1. [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell).

2. Use the **Add-RoleGroupMember** command to add a user to the Organization Management Role, as shown in the following example.

   ```PowerShell
   Add-RoleGroupMember -Identity "Organization Management" -Member MatildaS
   ```

   **Parameters**:

   - _Identity_ is the role group to add a member to.

   - _Member_ is the mailbox, universal security group (USG), or computer to add to the role group. You can specify only one member at a time.

For detailed information on syntax and parameters, see [Add-RoleGroupMember](https://docs.microsoft.com/powershell/module/exchange/role-based-access-control/Add-RoleGroupMember).

### How do you know this worked?

To verify that you've given users access to the Security & Compliance Center, use the **Get-RoleGroupMember** cmdlet to view the members in the Organization Management role group, as shown in the following example.

```PowerShell
Get-RoleGroupMember -Identity "Organization Management"
```

For detailed information on syntax and parameters, see [Get-RoleGroupMember](https://docs.microsoft.com/powershell/module/exchange/role-based-access-control/Get-RoleGroupMember).
