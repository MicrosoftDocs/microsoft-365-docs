---
title: "Compare groups"
ms.reviewer: arvaradh
f1.keywords: CSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 758759ad-63ee-4ea9-90a3-39f941897b7d
description: "Microsoft 365 group members get a group email and shared workspace for conversations, files, and calendar events, Stream and a Planner."
---

# Compare groups

In the **Groups** section of the Microsoft 365 admin center, you can create and manage these types of groups: 

- **Microsoft 365 groups** (formerly Office 365 groups) are used for collaboration between users, both inside and outside your company.
- **Distribution groups** are used for sending email notifications to a group of people.
- **Security groups** are used for granting access to resources such as SharePoint sites.
- **Mail-enabled security groups** are used for granting access to resources such as SharePoint, and emailing notifications to those users.
- **Shared mailboxes** are used when multiple people need access to the same mailbox, such as a company information or support email address.

## Microsoft 365 groups

Microsoft 365 groups are used for collaboration between users, both inside and outside your company. With each Microsoft 365 group, members get a group email and shared workspace for conversations, files, and calendar events, Stream and a Planner.

You can add people from outside your organization to a group as long as this has been [enabled by the administrator](manage-guest-access-in-groups.md). You can also allow external senders to send email to the group email address.

Microsoft 365 groups can be [configured for dynamic membership in Azure Active Directory](/azure/active-directory/users-groups-roles/groups-change-type), allowing group members to be added or removed automatically based on user attributes such as department, location, title, etc.

Microsoft 365 groups can be accessed through mobile apps such as Outlook for iOS and Outlook for Android.

Group members can send as or send on behalf of the group email address if this has been [enabled by the administrator](../../solutions/allow-members-to-send-as-or-send-on-behalf-of-group.md).

## Distribution groups

[Distribution groups](/exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups) are used for sending notifications to a group of people. They can receive external email if enabled by the administrator.

Distribution groups are best for situations where you need to broadcast information to a set group of people, such as "People in Building A" or "Everyone at Contoso."

Distribution groups can be [upgraded to Microsoft 365 groups](../manage/upgrade-distribution-lists.md).

Distribution groups can be added to a team in Microsoft Teams.

## Security groups

[Security groups](../email/create-edit-or-delete-a-security-group.md) are used for granting access to Microsoft 365 resources, such as SharePoint. They can make administration easier because you need only administer the group rather than adding users to each resource individually.

Security groups can contain users or devices. Creating a security group for devices can be used with mobile device management services, such as Intune.

Security groups can be [configured for dynamic membership in Azure Active Directory](/azure/active-directory/users-groups-roles/groups-change-type), allowing group members or devices to be added or removed automatically based on user attributes such as department, location, or title; or device attributes such as operating system version.

Security groups can be added to a team.

## Mail-enabled security groups

Mail-enabled security groups function the same as regular security groups, except that they cannot be dynamically managed through Azure Active Directory and cannot contain devices.

They include the ability to send mail to all the members of the group.

Mail-enabled security groups can be added to a team.

## Shared mailboxes

[Shared mailboxes](../email/create-a-shared-mailbox.md) are used when multiple people need access to the same mailbox, such as a company information or support email address, reception desk, or other function that might be shared by multiple people.

Shared mailboxes can receive external emails if the administrator has enabled this.

Shared mailboxes include a calendar that can be used for collaboration.

Users with permissions to the group mailbox can send as or send on behalf of the mailbox email address if the administrator has given that user permissions to do that. This is particularly useful for help and support mailboxes because users can send emails from "Contoso Support" or "Building A Reception Desk."

Currently it's not possible to migrate a shared mailbox to a Microsoft 365 group. Is this something you want? Let us know. **[Vote here](https://go.microsoft.com/fwlink/?linkid=871518)**.

## Related content

[Learn about Microsoft 365 groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2) (article)\
[Why you should upgrade your distribution lists to groups in Outlook](https://support.microsoft.com/office/7fb3d880-593b-4909-aafa-950dd50ce188) (article)
