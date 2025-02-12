---
title: "Overview of Microsoft 365 Groups for administrators"
ms.reviewer: rahulnayak
ms.date: 02/18/2020
f1.keywords: NOCSH
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
- okr_smb
- AdminTemplateSet
- admindeeplinkMAC
- campaignIDs-batch1
search.appverid:
- BCS160
- MET150
- MOE150
description: "With Microsoft 365 Groups, you can drive teamwork across Microsoft 365 by giving a group of people access to a collection of shared resources."
---

# Overview of Microsoft 365 Groups for administrators

Microsoft 365 Groups is the foundational membership service that drives all teamwork across Microsoft 365. With Microsoft 365 Groups, you can give a group of people access to a collection of shared resources. These resources include:

- A shared Outlook inbox
- A shared calendar
- A SharePoint document library
- A Planner
- A OneNote notebook
- Power BI
- Viva Engage (if the group was created from Viva Engage)
- A Team (if the group was created from Teams)
- Roadmap (if you have Project for the web)
- Stream

With a Microsoft 365 group, you don't have to manually assign permissions to each of these resources. Adding people to the group automatically gives them the permissions they need.

Any user can create a group unless you [limit group creation to a specific set of people](../../solutions/manage-creation-of-groups.md). If you limit group creation, users who can't create groups won't be able to create SharePoint sites, Planners, teams, Outlook group calendars, Stream groups, Viva Engage groups, Shared libraries in OneDrive, or shared Power BI workspaces. These services require the people creating them to be able to create a group. Users can still participate in group activities, such as creating tasks in Planner or using Teams chat, provided they're a member of the group.

Groups have the following roles:

- **Owners** - Group owners can add or remove members and have unique permissions like the ability to delete conversations from the shared inbox or change different settings about the group. Group owners can rename the group, update the description or picture and more.
- **Members** - Members can access everything in the group, but can't change group settings. By default group members can invite guests to join your group, though you can [control that setting](manage-guest-access-in-groups.md).
- **Guests** - Group guests are members who are from outside your organization.

User admins and groups admins can create and manage groups in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Microsoft 365 admin center</a>. You can't be a delegated admin (for example, a consultant who is an admin on behalf of).

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
|Groups an admin can create|There are no Microsoft 365 group specific limits. There's an overall Microsoft Entra object limit specific to each organization. A Microsoft Entra admin who can manage groups in the organization can create an unlimited number of Microsoft 365 groups up to the Microsoft Entra object limit. See [Microsoft Entra service limits and restrictions](/azure/active-directory/enterprise-users/directory-service-limits-restrictions).|
|Number of members|More than 1,000, though only 1,000 can access the group conversations concurrently. <br>Users might notice delays when accessing the calendar and conversations in large groups in Outlook.|
|Number of groups a user can be an owner of|7,000|
|Number of groups a user can be a member of|7,000|
|File storage|1 Terabyte + 10 GB per subscribed user + any other storage purchased. You can purchase an unlimited amount of extra storage.|
|Group Mailbox size|50 GB|


Managing your Microsoft 365 groups is more effective when you have actionable information about groups usage. The Microsoft 365 admin center has a reporting tool that lets you see storage use, how many active groups you have, and how users are using the groups. See: [Microsoft 365 Reports in the admin center](../activity-reports/office-365-groups.md) for more information.

## Sensitivity labels

You can create sensitivity labels that the users in your organization can set when they create a Microsoft 365 group. With sensitivity labels, you can configure: 

- Privacy (public or private)
- Guest access
- Unmanaged device access

For example, you can create a label called *Highly Confidential* and specify that any group created with this label will be private and not allow guests. When users in your organization select this label during group creation, the group will be set to private and group members won't be allowed to add guests users to the group.

> [!IMPORTANT]
> If you're currently using classification labels, they'll no longer be available to users who create groups once sensitivity labels are enabled. 

For information about creating, managing, and using sensitivity labels, see [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../../compliance/sensitivity-labels-teams-groups-sites.md).

## Which Microsoft 365 plans include groups?

Any Microsoft 365 subscription that has Exchange Online and SharePoint Online will support groups. That includes the Business Essentials and Business Premium plans, and the Enterprise E1, E3, and E5 plans. The group takes on the licensing of the person who creates the group. As long as they have the proper license for whatever features you want the group to have, that license will convey to the group.

> [!NOTE]
> For more details about Microsoft 365 service families and plans, see [Microsoft 365 plan options](/office365/servicedescriptions/office-365-platform-service-description/office-365-plan-options).

If you have an Exchange-only plan you can still get the shared inbox and shared calendar features of groups in Outlook but you won't get the document library, Planner or any of the other capabilities.

Microsoft 365 groups work with Microsoft Entra ID. The groups features you get depends on which Microsoft Entra subscription you have, and what licenses are assigned to the person who created the group.

> [!IMPORTANT]
> For all the groups features, if you have a Microsoft Entra ID P1 or P2 subscription, users can join the group whether or not they have a Microsoft Entra ID P1 license assigned to them. Licensing isn't enforced.
> Periodically we'll generate usage reports that tell you which users are missing a license, and need one assigned to them to be compliant with the licensing requirements. For example, let's say a user doesn't have a license and they're added to a group where the naming policy is enforced. The report will flag for you that they need a license.

## Related content

[Learn about Microsoft 365 Groups](https://support.microsoft.com/office/b565caa1-5c40-40ef-9915-60fdb2d97fa2) (article)\
[Manage Microsoft 365 Groups with PowerShell](../../enterprise/manage-microsoft-365-groups-with-powershell.md) (article)\
[SharePoint Online Limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits) (article)\
