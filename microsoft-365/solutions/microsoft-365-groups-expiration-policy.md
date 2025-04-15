---
title: "Microsoft 365 group expiration policy"
ms.reviewer: rahulnayak
ms.date: 06/25/2024
f1.keywords: NOCSH
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-subscription-management 
- Adm_O365
- m365solution-collabgovernance
search.appverid:
- MET150
recommendations: false
description: "Learn about Microsoft 365 groups expiration policies."
---

# Microsoft 365 group expiration policy

With the increase in usage of Microsoft 365 groups and Microsoft Teams, administrators and users need a way to clean up unused groups and teams. A Microsoft 365 groups expiration policy can help remove inactive groups from the system and make things cleaner.

When a group expires, [almost all of its associated services (the mailbox, Planner, SharePoint site, team, etc.) are also deleted](/microsoft-365/solutions/end-life-cycle-groups-teams-sites-viva-engage).

When a group expires it is "soft-deleted" which means it can still be recovered for up to 30 days.

Administrators can specify an expiration period and any inactive group that reaches the end of that period, and isn't renewed, will be deleted. (This includes archived teams.) The expiration period begins when the group is created, or on the date it was last renewed. Group owners will automatically be sent a notification before the expiration that allows them to renew the group for another expiration interval. Expiration notices for groups used in Teams appear in the Teams Owners feed.

Groups that are actively in use are renewed automatically around 35 days before the group expires. In this case, the owner doesn't get any renewal notifications. Any of the following actions will automatically renew a group:
- SharePoint - View, edit, download, move, share, or upload files. (Viewing a SharePoint page doesn't count as an action for automatic renewal.)
- Outlook - Join or edit group, read or write group message from the group, and like a message (Outlook on the web).
- Teams - Visit a teams channel.
- Viva Engage - View a post within a Viva Engage community or an interactive email in Outlook.
- Forms - View, create, or edit forms, or submit a response to a form. 

> [!IMPORTANT]
> When you change the expiration policy, the service recalculates the expiration date for each group. It always starts counting from the date when the group was created, and then applies the new expiration policy.

It's important to know that expiration is turned off by default. Administrators have to enable it for their organization if they want to use it.

> [!NOTE]
> Configuring and using the expiration policy for Microsoft 365 groups requires you to possess but not necessarily assign Microsoft Entra ID P1 or P2 licenses for the members of all groups to which the expiration policy is applied. For more information, see [Getting started with Microsoft Entra ID P1 or P2](/azure/active-directory/active-directory-get-started-premium).

## Who can configure and use the Microsoft 365 groups expiration policy?

|Role|What they can do|
|---------|---------|
|Office 365 global admin (in Azure, the Company administrator), User administrator|Create, read, update, or delete the Microsoft 365 groups expiration policy settings.|
|Groups Administrator|Members of this role can create/manage groups, create/manage groups settings like naming and expiration policies, and view groups activity and audit reports.|
|User|Renew or [restore](/azure/active-directory/users-groups-roles/groups-restore-deleted) a Microsoft 365 group that they own|

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

## How to set the expiration policy

As noted above, expiry is turned off by default. An administrator will have to enable the expiration policy and set the properties for it to take effect. To enable it, go to **Microsoft Entra ID** > **Groups** > **Expiration**. Here you can set the default group lifetime.

The group lifetime is specified in days and can be set to 180, 365 or to a custom value that you specify. The custom value has to be at least 30 days.

If the group doesn't have an owner, the expiration emails will go to the specified email.

You can set the policy for all of your groups, only selected groups (up to 500), or turn it off completely by selecting **None**. When You select **None** all groups which are active and pending for verification will have no expiration date. However, the groups that are already expired aren't impacted.

Note that currently you can't have different policies for different groups.

![Screenshot of Groups expiration settings in Microsoft Entra ID.](../media/azure-groups-expiration-settings.png)

## How expiry works with the retention policy

If you have set up a retention policy for groups in the Microsoft Purview compliance portal, the expiration policy works seamlessly with retention policy. When a group expires, the group's mailbox conversations and files in the group site are retained in the retention container for the specific number of days defined in the retention policy. Users won't see the group, or its content, after expiration however.

## How and when a group owner learns if their groups are going to expire

If the group was created via Planner, SharePoint, or any other app, the expiration notifications will always come via email.
If the group was created via Teams, the group owner will receive an email and a notification to renew through the activity section. It's not recommended that you enable expiration on a group if your group owner doesn't have a valid email address.

30 days before the group expires, the group owners (or the email addresses that you specified for groups that don't have an owner) will receive an email allowing them to easily renew the group. If they don't renew it, they'll receive another renewal email 15 days before expiration. If they still haven't renewed it, they'll receive one more email notification the day before expiration.

If for some reason none of the owners or admins renew the group before it expires, the admin can still restore the group for up to 30 days after expiration. For details see: [Restore a deleted Microsoft 365 group](https://support.office.com/article/restore-a-deleted-office-365-group-b7c66b59-657a-4e1a-8aa0-8163b1f4eb54).

## Archiving group contents

If you have a group that you no longer plan to use, but you want to retain its content, see [Archive groups, teams, and Viva Engage](end-life-cycle-groups-teams-sites-viva-engage.md) for information about how to export information from the different groups services.

## Related topics

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Overview of retention policies](https://support.office.com/article/5e377752-700d-4870-9b6d-12bfc12d2423)

[Assign a new owner to an orphaned group](https://support.office.com/article/86bb3db6-8857-45d1-95c8-f6d540e45732)

[Configure Microsoft 365 groups expiration](/azure/active-directory/active-directory-groups-lifecycle-azure-portal)
