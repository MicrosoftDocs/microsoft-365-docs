---
title: "Manage admin role group permissions in EOP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 125834f4-1024-4325-ad5a-d2573cfb005e
description: "Admins can learn how to assign or remove permissions in the Exchange admin center (EAC) in Exchange Online Protection."
---

# Manage admin role group permissions in EOP

In Microsoft Exchange Online Protection (EOP), you can use the Exchange admin center (EAC) to make a user a member of a role group or groups in order to assign them permissions to perform specific administrative tasks. You can also remove a user from a role group or groups by using the EAC.

## What do you need to know before you begin?

- Estimated time to complete: 5-10 minutes

- To open the Exchange admin center, see [Exchange admin center in Exchange Online Protection](exchange-admin-center-in-exchange-online-protection-eop.md).

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Users, Contacts, and Role Groups" entry in the [Feature permissions in EOP](feature-permissions-in-eop.md) topic.

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351) forum.

## Use the EAC to assign members to admin role groups

1. In the EAC, go to **Permissions** \> **Admin roles**, click the role group that you want to add the user or users to, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.gif).

2. Under Members, click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.gif). The Select Members window will appear.

3. Search for the user or users that you wish to add, or select them from the list.

4. When you have selected the user or users that you want to add, click **Add**, and then click **OK**. The Select Members window will close.

5. You will see that the user has been added to the **Members** pane. Click **Save**.

   > [!NOTE]
   > Users may have to sign out and sign in again to see the change in their administrative rights after you add or remove members from the role group.

## Use the EAC to remove members from admin role groups

1. In the EAC, go to **Permissions** \> **Admin Roles**, click the role group that you want to remove a user or users from, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.gif).

2. Under Members, select the user or users that you want to remove and click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif).

3. Click **Save** to save the change to the role group and return to the **Admin Roles** page. To verify that you've successfully removed the user from the administrator role group, make sure the member is no longer displayed under Members in the details pane for the selected role group.

   > [!NOTE]
   > Users may have to sign out and sign in again to see the change in their administrative rights after you add or remove members from the role group.

## For more information

[Feature permissions in EOP](feature-permissions-in-eop.md)
