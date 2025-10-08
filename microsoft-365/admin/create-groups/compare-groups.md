---
title: Compare types of groups in Microsoft 365
ms.reviewer: batre
ms.date: 10/01/2025
f1.keywords: CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: product-comparison
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- trust-pod
ms.custom:
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- admindeeplinkMAC
- campaignIDs-batch2
- m365-groups
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 758759ad-63ee-4ea9-90a3-39f941897b7d
description: Learn about the types of groups that are available in Microsoft 365
---

# Compare types of groups in Microsoft 365

In the Microsoft 365 admin center, in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">**Groups**</a> section, you can create and manage these types of groups: 

- **Microsoft 365 Groups** that are used for collaboration between users, both inside and outside your company. They include collaboration services such as SharePoint and Planner. Microsoft Teams uses Microsoft 365 Groups for membership.
- **Distribution groups** that are used for sending email notifications to a group of people.
- **Security groups** that are used for granting access to resources such as SharePoint sites.
- **Mail-enabled security groups** that are used for granting access to resources such as SharePoint, and emailing notifications to those users.
- **Shared mailboxes** that are used when multiple people need access to the same mailbox, such as a company information or support email address.
- **Dynamic distribution groups** that are created to expedite the mass sending of email messages and other information within an organization.

Some groups allow dynamic membership or email, as listed in the following table:

| Group type | Mail enabled | Dynamic membership <br/>(In Microsoft Entra ID) |
|--|--|
| Microsoft 365 Groups | Yes | Yes |
| Distribution groups | Yes | No |
| Security groups | No | Yes |
| Mail-enabled security groups | Yes | No |
| Shared mailboxes | Yes | No |
| Dynamic distribution groups | Yes | No |

All of these group types can be used with Power Automate.

## Microsoft 365 Groups

Microsoft 365 Groups are used for collaboration between users, both inside and outside your company. With each Microsoft 365 group, members get a group email and shared workspace for conversations, files, and calendar events, Stream, and a Planner. Microsoft 365 Groups can also be connected to Teams or Viva Engage.

You can add people from outside your organization to a group as long as this feature is [enabled by the administrator](/microsoft-365/admin/create-groups/manage-guest-access-in-groups). You can also allow external senders to send email to the group email address.

Microsoft 365 Groups can be [configured for dynamic membership in Microsoft Entra ID](/azure/active-directory/users-groups-roles/groups-change-type), allowing group members to be added or removed automatically based on user attributes such as department, location, title, etc.

Microsoft 365 Groups can be accessed through mobile apps such as Outlook for iOS and Outlook for Android.

Group members can send as or send on behalf of the group email address if this feature is [enabled by the administrator](/microsoft-365/solutions/allow-members-to-send-as-or-send-on-behalf-of-group).

If recipients subscribe to receive group conversations in their inbox, they can delete email messages from the group without removing those messages from the group's shared mailbox. And, if an email is deleted from the group's shared mailbox, it isn't deleted from group members' personal inbox. See [Who can delete email from the Group inbox](/microsoft-365/admin/create-groups/create-groups#who-can-delete-email-from-the-group-inbox).

Microsoft 365 Groups support nesting through [dynamic groups in Microsoft Entra ID](/azure/active-directory/enterprise-users/groups-dynamic-rule-member-of).

Microsoft 365 Groups can be added to one of the three SharePoint groups (Owners, Members, or Visitors) to give people permissions to the site.

## Distribution groups

[Distribution groups](/exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups) are used for sending notifications to a group of people. They can receive external email if enabled by the administrator.

Distribution groups are best for situations where you need to broadcast information to a set group of people, such as "People in Building A" or "Everyone at Contoso."

Distribution groups can be added to a team in Microsoft Teams, though only the members are added and not the group itself.

Microsoft 365 Groups can't be members of distribution groups.

## Dynamic distribution groups 

[Dynamic distribution groups](/exchange/recipients-in-exchange-online/manage-dynamic-distribution-groups/manage-dynamic-distribution-groups) are mail-enabled groups that are used to send mail to people with specific attributes, such as department or location. These attributes are defined in the Exchange admin center rather than Microsoft Entra ID.

Unlike regular distribution groups that contain a defined set of members, the membership list for dynamic distribution groups is determined each time a message is sent to the group, based on the filters and conditions that you define. When an email message is sent to a dynamic distribution group, it's delivered to all recipients in the organization that match the criteria defined for that group.

## Security groups

[Security groups](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) are used for granting access to Microsoft 365 resources, such as SharePoint sites. They can make administration easier because you need only administer the group rather than adding users to each resource individually.

Security groups can contain users or devices. Creating a security group for devices can be used with mobile device management services, such as Microsoft Intune.

Security groups can be [configured for dynamic membership in Microsoft Entra ID](/azure/active-directory/users-groups-roles/groups-change-type), allowing group members or devices to be added or removed automatically based on user attributes such as department, location, or title; or device attributes such as operating system version.

Security groups can be added to a team.

Microsoft 365 Groups can't be members of security groups.

## Mail-enabled security groups

Mail-enabled security groups function the same as regular security groups, except that they can't be dynamically managed through Microsoft Entra ID and can't contain devices.

They include the ability to send mail to all the members of the group.

Mail-enabled security groups can be added to a team.

## Shared mailboxes

[Shared mailboxes](/microsoft-365/admin/email/create-a-shared-mailbox) are used when multiple people need access to the same mailbox, such as a company information or support email address, reception desk, or other function that might be shared by multiple people.

Shared mailboxes can receive external emails if the administrator has enabled this feature.

Shared mailboxes include a calendar that can be used for collaboration.

Users with permissions to the shared mailbox can send as or send on behalf of the mailbox email address, if the administrator has given that user permissions to do that. This feature is especially useful for help and support mailboxes, because users can send emails from mailbox names like "Contoso Support" or "Building A Reception Desk."

It's not possible to migrate a shared mailbox to Microsoft 365 Groups.

## Related content

- [Learn about Microsoft 365 Groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2)
- [Create a group in the Microsoft 365 admin center](/microsoft-365/admin/create-groups/create-groups)
