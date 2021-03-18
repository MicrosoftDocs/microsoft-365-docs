---
title: "Overview of Microsoft 365 Groups for administrators"
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
ms.custom: 
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about Microsoft 365 Groups."
---

# Overview of Microsoft 365 Groups for administrators

Microsoft 365 Groups is the foundational membership service that drives all teamwork across Microsoft 365. With Microsoft 365 Groups, you can give a group of people access to a collection of shared resources. These resources include:

- A shared Outlook inbox
- A shared calendar
- A SharePoint document library
- A Planner
- A OneNote notebook
- Power BI
- Yammer (if the group was created from Yammer)
- A Team (if the group was created from Teams)
- Roadmap (if you have Project for the web)
- Stream

With a Microsoft 365 group, you don't have to manually assign permissions to each of these resources. Adding people to the group automatically gives them the permissions they need.

Any user can create a group unless you [limit group creation to a specific set of people](../../solutions/manage-creation-of-groups.md). If you limit group creation, users who cannot create groups will not be able to create SharePoint sites, Planners, or teams. These services require the people creating them to be able to create a group. Users can still participate in group activities, such as creating tasks in Planner or using Teams chat, provided they are a member of the group.

Groups have the following roles:

- **Owners** - Group owners can add or remove members and have unique permissions like the ability to delete conversations from the shared inbox or change different settings about the group. Group owners can rename the group, update the description or picture and more.
- **Members** - Members can access everything in the group, but can't change group settings. By default group members can invite guests to join your group, though you can [control that setting](manage-guest-access-in-groups.md).
- **Guests** - Group guests are members who are from outside your organization.

Only global admins, user admins, and groups admins can create and manage groups in the Microsoft 365 admin center. You can't be a delegated admin (for example, a consultant who is an admin on behalf of).

As an administrator, you can:

- [Specify who can create groups](../../solutions/manage-creation-of-groups.md)
- [Create a naming policy for groups in your organization](../../solutions/groups-naming-policy.md)
- [Choose which domain to use when creating a group](../../solutions/choose-domain-to-create-groups.md)
- [Manage guest access to groups](manage-guest-access-in-groups.md)
- [Recover a deleted group](restore-deleted-group.md) (within 30 days of deletion)

If you prefer a more automated way to manage the lifecycle of your Microsoft 365 groups, you can use expiration policies to expire groups at a specific time interval. The group's owners will get an email 30, 15, and 1 day before the group expiration that allows them to renew the group if it's still needed. See: [Microsoft 365 group Expiration Policy](../../solutions/microsoft-365-groups-expiration-policy.md).

You can administer your groups from the Microsoft 365 admin center or [by using PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md).

If you have many users, such as in a large corporation or enterprise, you may have many users who create groups for various purposes. We highly recommend that you review [Plan for governance in Microsoft 365 groups](../../solutions/collaboration-governance-overview.md) for best practices.

## Group limits

The following limits apply to Microsoft 365 Groups:

|Maximum...|Value|
|:---------|:----|
|Owners per group|100|
|Groups a user can create|250|
|Groups an admin can create|Up to default tenant limit of 500 K|
|Number of members|More than 1,000, though only 1,000 can access the Group conversations concurrently. <br>Users might notice delays when accessing the calendar and conversations in large groups in Outlook.|
|Number of Groups a user can be a member of|7,000|
|File storage|1 Terabyte + 10 GB per subscribed user + any other storage purchased. You can purchase an unlimited amount of extra storage.|
|Group Mailbox size|50 GB|

The default maximum number of Microsoft 365 groups that an organization can have is 500,000. To go beyond the default limit, you must contact Microsoft Support. For more information on Microsoft 365 Groups limits, see [Microsoft 365 Groups - Admin help](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2).

Managing your Microsoft 365 groups is more effective when you have actionable information about groups usage. The Microsoft 365 admin center has a reporting tool that lets you see storage use, how many active groups you have, and how users are using the groups. See: [Microsoft 365 Reports in the admin center](../activity-reports/office-365-groups.md) for more information.

## Sensitivity labels

You can create sensitivity labels that the users in your organization can set when they create a Microsoft 365 group. With sensitivity labels, you can configure: 

- Privacy (public or private)
- External users access
- Unmanaged device access

For example, you can create a label called *Highly Confidential* and specify that any group created with this label will be private and not allow external users. When users in your organization select this label during group creation, the group will be set to private and group members will not be allowed to add external users to the group.

> [!IMPORTANT]
> If you are currently using classification labels, they will no longer be available to users who create groups once sensitivity labels are enabled. 

For information about creating, managing, and using sensitivity labels, see [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../../compliance/sensitivity-labels-teams-groups-sites.md).

## Which Microsoft 365 plans include groups?

Any Microsoft 365 subscription that has Exchange Online and SharePoint Online will support groups. That includes the Business Essentials and Business Premium plans, and the Enterprise E1, E3, and E5 plans. The group takes on the licensing of the person who creates the group (also known as the "organizer" of the group). As long as the organizer has the proper license for whatever features you want the group to have, that license will convey to the group.

> [!NOTE]
> For more details about Microsoft 365 service families and plans, see [Microsoft 365 plan options](/office365/servicedescriptions/office-365-platform-service-description/office-365-plan-options).

If you have an Exchange-only plan you can still get the shared inbox and shared calendar features of groups in Outlook but you won't get the document library, Planner or any of the other capabilities.

Microsoft 365 groups work with Azure Active Directory. The groups features you get depends on which Azure Active Directory subscription you have, and what licenses are assigned to the organizer of the group.

> [!IMPORTANT]
> For all the groups features, if you have an Azure AD Premium subscription, users can join the group whether or not they have an AAD P1 license assigned to them. Licensing isn't enforced.
> Periodically we will generate usage reports that tell you which users are missing a license, and need one assigned to them to be compliant with the licensing requirements. For example, let's say a user doesn't have a license and they are added to a group where the naming policy is enforced. The report will flag for you that they need a license.

## Related articles

[Learn about Microsoft 365 Groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2)

[Upgrade distribution lists to Microsoft 365 Groups](../manage/upgrade-distribution-lists.md)

[Manage Microsoft 365 Groups with PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md)

[SharePoint Online Limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits)

[Organize groups and channels in Microsoft Stream](/stream/groups-channels-organization)