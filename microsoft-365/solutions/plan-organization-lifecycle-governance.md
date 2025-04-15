---
title: Plan organization and lifecycle governance for Microsoft 365 groups and Microsoft Teams
ms.reviewer: rahulnayak
ms.date: 07/28/2023
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: Lean about lifecycle governance options for collaboration tools in Microsoft 365
---

# Plan organization and lifecycle governance for Microsoft 365 groups and Microsoft Teams

Microsoft 365 Groups has a rich set of tools to implement the governance capabilities your organization requires.

The following section describes the capabilities, recommends best practices, and provides guidance to ask the right questions to determine the requirements for governance, and how to meet them.

## Control who can create Microsoft 365 groups

Microsoft 365 groups can be created by end users from multiple end-points including Outlook, SharePoint, Teams, and other environments. Creating a team always creates a Microsoft 365 group, so governing the Microsoft 365 Groups lifecycle also governs the lifecycle of teams in Microsoft Teams.

![image desc.](../media/04.png)

We highly recommend self-service to empower group owners and help users get their work done more easily. Limiting group and team creation can slow users productivity because many Microsoft 365 services require that groups be created for the service to function.

Consider the following governance options for groups creation:

- To limit group sprawl, use [groups expiration policies](microsoft-365-groups-expiration-policy.md) to automatically delete groups that aren't being used.
- Limit group creation to members of a [security groups with dynamic membership](/azure/active-directory/users-groups-roles/groups-create-rule) containing, for example, all full-time employees.
- Limit group creation to a security group and require users to complete training in your organization's group usage policies in order to become members of the security group.

If you want to limit who can create groups, see [Manage who can create Microsoft 365 groups](manage-creation-of-groups.md) for information on how to configure this.

## Group delete, restore, and archiving

When a Microsoft 365 group is deleted, by default it's retained for 30 days. This 30-day period is called "soft-delete" because you can still restore the group. After 30 days, the group and associated content are permanently deleted and can't be restored.

If you have retention policies in place to retain chat, files, or mail, those items will be preserved after the group is deleted. See [Learn about retention policies](../compliance/retention.md) for details.

If you want to delete a group but preserve the content from one or more of the group-connected services, see [Archive groups, teams, and Viva Engage](end-life-cycle-groups-teams-sites-viva-engage.md) for information.

## Group naming policy

A groups naming policy can help you govern groups in two ways:

- A prefix/suffix naming policy can be used to enforce fixed strings or Microsoft Entra attributes at the beginning or end of a group name and its associated email address. By doing this, you can ensure the inclusion of, for example, department names or regions in group names.
- A blocked words policy can ensure that certain words, such as the names of executives, aren't used in group names.

Naming policies are applied when groups are created from any of the group-connected services.

If you want to use naming policies for groups, see [Microsoft 365 Groups naming policy](groups-naming-policy.md).

## Group expiration policy

You can specify an expiration period and any group that reaches the end of that period, and isn't renewed, will be deleted. The expiration period begins when the group is created, or on the date it was last renewed.

Once you set groups to expire:
- Owners of the group are notified to renew the group as the expiration nears.
- Active groups are renewed automatically.
- Any group that isn't renewed is deleted.
- Any group that is deleted can be restored within 30 days by the group owners or a global administrator.

Expiration policies are a good way to limit group sprawl by ensuring that groups that are no longer in use are deleted. If you want to create a group expiration policy, see [Microsoft 365 Groups Expiration Policy](microsoft-365-groups-expiration-policy.md).

## Related topics

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Remove a former employee and secure data](/microsoft-365/admin/add-users/remove-former-employee)
