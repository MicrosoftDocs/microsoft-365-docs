---
title: "Create, edit, or delete a security group in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
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
ms.assetid: 55c96b32-e086-4c9e-948b-a018b44510cb
description: "Learn to create, edit,or delete a security group."
---

# Create, edit, or delete a security group in the Microsoft 365 admin center

On the Office 365 **Groups** page, you can create groups of user accounts that you can use to assign the same permissions to in SharePoint Online and CRM Online. For example, an administrator can create a security group to grant a certain group of people access to a SharePoint site. Only global and user management administrators have permissions to create, edit, or delete security groups; for more information about administrator roles, see [Assigning admin roles](../add-users/assign-admin-roles.md). 
  
There are also [Groups in Exchange Online and SharePoint Online](#groups-in-exchange-online-and-sharepoint-online) that you can use to send email or assign permissions to a group of users, and [Groups in Exchange Online and SharePoint Online](#groups-in-exchange-online-and-sharepoint-online) that grant users rights and access to sites and site collections. 
  
> [!IMPORTANT]
>  Planning on using site mailboxes? All the users that are added to a SharePoint site via a security group rather than being added individually can use only the site mailbox from SharePoint. These users won't be able to access the site mailbox from Outlook. For more information, see [Use Office 365 Groups instead of Site Mailboxes](https://support.office.com/article/737d6b1f-67cc-41fe-8db8-f2d09dd1673b.aspx). 
  
## Manage security groups in the admin center

### Add a security group

1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.
  
2. On the **Groups** page, select **Add a group**.
    
3. On the **Choose a group type** page, choose **Security**. 
    
4. Follow the steps to complete creation of the group. 
 
### Add members to a security group

::: moniker range="o365-worldwide"

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.
    
1. Select the security group name on the **Groups** page, and on the **Members** tab, select **View all and manage members**. 
    
2. In the group pane, select **Add members** and choose the person from the list or type the name of the person you want to add in the **Search** box, and then select **Save**.
    
    To remove members, select the X next to their name. 
  
::: moniker-end

::: moniker range="o365-germany"

1. Select the security group name on the **Groups** page, and then select **Edit** next to **Members**. 
    
2. In the group pane, select **Add members** and choose the person from the list or type the name of the person you want to add in the **Search** box, and then select **Save**.
    
    To remove members, select the X next to their name. 
  
::: moniker-end

::: moniker range="o365-21vianet"


1. Select the security group name on the **Groups** page, and then select **Edit** next to **Members**. 
    
2. In the group pane, select **Add members** and choose the person from the list or type the name of the person you want to add in the **Search** box, and then select **Save**.
    
    To remove members, select the X next to their name.

::: moniker-end

### Edit a security group

::: moniker range="o365-worldwide"

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.

1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.
  
2. On the **Groups** page, select the group's name. 
    
3. In the settings pane, select the **General** tab or the **Members** tab to edit either group details or members.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.
  
2. On the **Groups** page, select the group's name. 
    
3. In the security group pane, select **Edit** next to either **Name** or **Members** tab to edit either group details or members.
    
4. After you've made changes, select **Save** \> **Close**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.
  
2. On the **Groups** page, select the group's name. 
    
3. In the security group pane, select **Edit** next to either **Name** or **Members** tab to edit either group details or members.
    
4. After you've made changes, select **Save** \> **Close**.

::: moniker-end


### Delete a security group

1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.
    
2. On the **Groups** page, select the group's name. 
    
3. Select **Delete group** (wasetbin icon), and then confirm by selecting **Delete**.
    
    Select **Close** once the group is deleted. 
    
## Groups in Exchange Online and SharePoint Online

If you want to create groups of users so you can send email to them all at the same time, you can do that in the Exchange admin center by going to **Admin** \> **Exchange** \> **Recipients** \> **Groups**. Next, select **New**![Add](../../media/328ffb57-5f31-430a-b653-4a6b8e76d338.png), and select the kind of group you want to create: 
  
- **Distribution group**: Used to distribute messages to a group of users. It's also called a  *mail-enabled distribution group*, or, a  *distribution list*. For more information, see [Manage distribution groups](https://technet.microsoft.com/library/bb124513.aspx).
    
- **Security group**: Can be used to distribute messages to a group of users, or to grant access permissions to resources. This group is also called a *mail-enabled security group*. For more information, see [Manage mail-enabled security groups](https://technet.microsoft.com/library/bb123521.aspx).
    
- **Dynamic distribution group**: A type of distribution group whose list of recipients is recalculated every time you send a message based on filters and conditions that you define. For more information, see [Manage dynamic distribution groups](https://technet.microsoft.com/library/bb123722.aspx).
    
After you create distribution groups and mail-enabled security groups in the Exchange admin center, their names and user lists appear on the **Security groups** page. You can delete these groups in both locations, but you can edit them only in the Exchange admin center. Dynamic distribution groups don't show up on the **Security groups** page. 
  
 SharePoint groups are created automatically when you make a site collection. The default groups use the default permission levels in SharePoint—sometimes called SharePoint roles—to grant users rights and access. For more information, see [Default SharePoint groups in SharePoint Online](https://support.office.com/article/13bb2b6b-dd8c-447e-b71b-0e4bb9efe1d3.aspx).
  
## How is a security group different from security groups I create in SharePoint?

Security groups can be used with SharePoint, Exchange, MDM, Windows, and more. A security group you create in SharePoint is only recognized by that SharePoint site collection.
  
## Do I have to use security groups for my organization to be secure?

No. This is just one more way you can manage security for your organization. You can always grant user permissions and access to sites individually. But with security groups, you can easily manage larger groups of users.
  
## Can I send email to a security group?

Yes. But if you want to use groups for email and collaboration, we recommend that you [create an Office 365 group](../create-groups/create-groups.md) instead. 
  
