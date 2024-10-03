---
title: "Create, edit, or delete a security group in the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/02/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
- admindeeplinkEXCHANGE
description: "Learn to create, edit, or delete a security group."
---

# Create, edit, or delete a security group in the Microsoft 365 admin center

On the Microsoft 365 **Active teams and groups** page, you can create groups of user accounts that you can use to assign the same permissions to in SharePoint Online and CRM Online. For example, an administrator can create a security group to grant a certain group of people access to a SharePoint site.

## Before you begin

User management administrators have permissions to create, edit, or delete security groups; for more information about administrator roles, see [Assigning admin roles](../add-users/assign-admin-roles.md).
  
There are also [Groups in Exchange Online and SharePoint Online](#groups-in-exchange-online-and-sharepoint-online) that you can use to send email or assign permissions to a group of users, and [Groups in Exchange Online and SharePoint Online](#groups-in-exchange-online-and-sharepoint-online) that grant users rights and access to sites and site collections.
  
> [!IMPORTANT]
> Planning on using site mailboxes? All the users that are added to a SharePoint site via a security group rather than being added individually can use only the site mailbox from SharePoint. These users won't be able to access the site mailbox from Outlook. For more information, see [Use Microsoft 365 Groups instead of Site Mailboxes](https://support.microsoft.com/office/737d6b1f-67cc-41fe-8db8-f2d09dd1673b).
  
## Manage security groups in the admin center

### Add a security group

1. In the Microsoft 365 admin center, go to **Team & groups** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Active teams and groups</a> page.
  
2. Go to the **Security groups** page, select **Add a security group**.

3. On the **Set up the basics** page, add your group name and a description and choose **Next**.

4. On the **Edit settings** page, select whether you want to allow Microsoft Entra roles to be assigned to the group and select **Next**.

5. Review your selections and choose **Create group** and **Close**.

### Add owners or members to a security group

1. Select the security group name on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Active teams and groups</a>.

2. On the **General** tab, select **Add group owners**, **Add owners** to add group owners.

3. On the **Members** tab, select **View all and manage members** and choose the person from the list or use the **Search** box. Select **Add** and close.

### Remove members from a security group

1. Select the security group name on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Active teams and groups</a> page, and on the **Members** tab, select **View all and manage members**.

2. To remove members, select the user, choose the ellipsis and choose **Remove members**.
  
### Edit a security group

1. Select the security group name on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Active teams and groups</a> page, and on the **Members** tab, select **View all and manage members**.
  
2. Select the group's name and make your changes.

### Delete a security group

1. In the Microsoft 365 admin center, go to **Team & groups** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Active teams and groups</a> page.

2. Select the security group and on the **General** tab, select **Delete group** and then confirm by selecting **Delete group**. Then **Close** once the group is deleted.

## Groups in Exchange Online and SharePoint Online

If you want to create groups of users so you can send email to them all at the same time, you can do that in the Exchange admin center by going to **Admin** \> **Exchange** \> **Recipients** \> <a href="https://go.microsoft.com/fwlink/?linkid=2183233" target="_blank">**Groups**</a>. Next, select **New**![Add.](../../media/328ffb57-5f31-430a-b653-4a6b8e76d338.png), and select the kind of group you want to create:
  
- **Distribution group**: Used to distribute messages to a group of users. It's also called a  *mail-enabled distribution group*, or, a  *distribution list*. For more information, see [Manage distribution groups](/exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups).

- **Security group**: Can be used to distribute messages to a group of users, or to grant access permissions to resources. This group is also called a *mail-enabled security group*. For more information, see [Manage mail-enabled security groups](/Exchange/recipients/mail-enabled-security-groups).

- **Dynamic distribution group**: A type of distribution group whose list of recipients is recalculated every time you send a message based on filters and conditions that you define. For more information, see [Manage dynamic distribution groups](/Exchange/recipients/dynamic-distribution-groups/dynamic-distribution-groups).

After you create distribution groups and mail-enabled security groups in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>, their names and user lists appear on the **Security groups** page. You can delete these groups in both locations, but you can edit them only in the Exchange admin center. Dynamic distribution groups don't show up on the **Security groups** page.
  
 SharePoint groups are created automatically when you make a site collection. The default groups use the default permission levels in SharePoint—sometimes called SharePoint roles—to grant users rights and access. For more information, see [Default SharePoint groups in SharePoint Online](/sharepoint/default-sharepoint-groups).

## Frequently asked questions about groups

### How is a security group different from security groups I create in SharePoint?

Security groups can be used with SharePoint, Exchange, MDM, Windows, and more. A security group you create in SharePoint is only recognized by that SharePoint site collection.

### Do I have to use security groups for my organization to be secure?

No. This is just one more way you can manage security for your organization. You can always grant user permissions and access to sites individually. But with security groups, you can easily manage larger groups of users.

### Can I send email to a security group?

Yes. But if you want to use groups for email and collaboration, we recommend that you [create a Microsoft 365 group](../create-groups/create-groups.md) instead.

## Related content

[Create a group in the Microsoft 365 admin center](../create-groups/create-groups.md) (article)\
[Explaining Microsoft 365 Groups to your users](../create-groups/explain-groups-knowledge-worker.md) (article)\
[Manage a group in the Microsoft 365 admin center](../create-groups/manage-groups.md) (article)
