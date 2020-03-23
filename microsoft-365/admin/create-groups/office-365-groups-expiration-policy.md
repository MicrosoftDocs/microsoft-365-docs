---
title: "Office 365 Group Expiration Policy"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: Admin
ms.topic: get-started-article
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
description: "Learn about Office 365 Groups expiration policies."
---

# Office 365 group expiration policy

With the increase in usage of Office 365 groups, administrators and users need a way to clean up unused groups. Expiration policies can help remove inactive groups from the system and make things cleaner.

When a group expires, all of its associated services (the mailbox, Planner, SharePoint site, team, etc.) are also deleted.

When a group expires it is "soft-deleted" which means it can still be recovered for up to 30 days.

Administrators can specify an expiration period and any inactive group that reaches the end of that period, and is not renewed, will be deleted. The expiration period begins when the group is created, or on the date it was last renewed. Group owners will automatically be sent an email before the expiration that allows them to renew the group for another expiration interval. Teams users will see persistent notifications in Teams.

Groups that are actively in use are renewed automatically. Any of the following actions will auto-renew a group:
- SharePoint - view, edit, download, move, share, or upload files.
- Outlook - join group, read or write group message from the group, and like a message (Outlook on the web).
- Teams - visiting a teams channel.

> [!IMPORTANT]
> When you change the expiration policy, the service recalculates the expiration date for each group. It always starts counting from the date when the group was created, and then applies the new expiration policy.

It's important to know that expiration is turned off by default. Administrators will have to enable it for their organization if they want to use it.

> [!NOTE]
> Configuring and using the expiration policy for Office 365 groups requires you to possess but not necessarily assign Azure AD Premium licenses for the members of all groups to which the expiration policy is applied. For more information see [Getting started with Azure Active Directory Premium](https://docs.microsoft.com/azure/active-directory/active-directory-get-started-premium).

## Who can configure and use the Office 365 groups expiration policy?

|Role|What they can do|
|---------|---------|
|Office 365 global admin (in Azure, the Company administrator), User administrator|Create, read, update, or delete the Office 365 groups expiration policy settings.|
|User|Renew or [restore](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-restore-deleted) an Office 365 group that they own|

## How to set the expiration policy

As noted above, expiry is turned off by default. An administrator will have to enable the expiration policy and set the properties for it to take effect. To enable it go to **Azure Active Directory (AAD)** > **Groups** > **Expiration**. Here you can set the default group lifetime and specify how far in advance you want the first and second expiration notifications to go to the group owner.

The group lifetime is specified in days and can be set to 180, 365 or to a custom value that you specify. The custom value has to be at least 30 days.

If the group does not have an owner, the expiration emails will go to a specified administrator.

You can set the policy for all of your groups, only selected groups, or turn it off completely by selecting **None**. Note that currently you can't have different policies for different groups.

![Screenshot of Groups expiration settings in Azure Active Directory](../../media/azure-groups-expiration-settings.png)

## How expiry works with the retention policy

If you have setup retention policy in Security and Compliance center for groups, expiration policy works seamlessly with retention policy. When a group expires, the group's conversations in mail box and files in the group site are retained in the retention container for the specific number of days defined in the retention policy. Users will not see the group, or its content, after expiration however.

## How and when a group owner learns if their groups are going to expire

Group owners will only be notified via email. If the group was created via Planner, SharePoint, or any other app, the expiration notifications will always come via email. If the group was created via Teams, the group owner will receive a notification to renew through the activity section. It's not recommended that you enable expiration on a group if your group owner doesn't have a valid email address.

30 days before the group expires, the group owners (or the email addresses that you specified for groups that don't have an owner) will receive an email allowing them to easily renew the group. If they don't renew it, they'll receive another renewal email 15 days before expiration. If they still haven't renewed it, they will receive one more email notification the day before expiration.

If for some reason none of the owners or admins renew the group before it expires, the admin can still restore the group for up to 30 days after expiration. For details see: [Restore a deleted Office 365 group](https://support.office.com/article/restore-a-deleted-office-365-group-b7c66b59-657a-4e1a-8aa0-8163b1f4eb54).

## Related articles

[Overview of retention policies](https://support.office.com/article/5e377752-700d-4870-9b6d-12bfc12d2423)

[Assign a new owner to an orphaned group](https://support.office.com/article/86bb3db6-8857-45d1-95c8-f6d540e45732)

[Configure Office 365 groups expiration](https://docs.microsoft.com/azure/active-directory/active-directory-groups-lifecycle-azure-portal)
