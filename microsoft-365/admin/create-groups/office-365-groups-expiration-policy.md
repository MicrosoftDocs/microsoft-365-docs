---
title: "Groups expiration policy"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about Microsoft 365 groups expiration policies."
---

# Microsoft 365 group expiration policy

With the increase in usage of Microsoft 365 groups, administrators and users need a way to clean up unused groups. Expiration policies can help remove inactive groups from the system and make things cleaner.

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
> Configuring and using the expiration policy for Microsoft 365 groups requires you to possess but not necessarily assign Azure AD Premium licenses for the members of all groups to which the expiration policy is applied. For more information see [Getting started with Azure Active Directory Premium](https://docs.microsoft.com/azure/active-directory/active-directory-get-started-premium).

## Who can configure and use the Microsoft 365 groups expiration policy?

|Role|What they can do|
|---------|---------|
|Global admin (in Azure, the Company administrator), User administrator|Create, read, update, or delete the Microsoft 365 groups expiration policy settings.|
|User|Renew or [restore](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-restore-deleted) a Microsoft 365 group that they own|

## How to set the expiration policy

As noted above, expiry is turned off by default. An administrator will have to enable the expiration policy and set the properties for it to take effect. To enable it go to **Azure Active Directory (AAD)** > **Groups** > **Expiration**. Here you can set the default group lifetime and specify how far in advance you want the first and second expiration notifications to go to the group owner.

The group lifetime is specified in days and can be set to 180, 365 or to a custom value that you specify. The custom value has to be at least 30 days.

If the group does not have an owner, the expiration emails will go to a specified administrator.

You can set the policy for all of your groups, only selected groups, or turn it off completely by selecting **None**. Note that currently you can't have different policies for different groups.

![Screenshot of Groups expiration settings in Azure Active Directory](../../media/azure-groups-expiration-settings.png)

> [!IMPORTANT]
> Activity-based utomatic group renewal is now enabled by default, and cannot be administratively disabled. For more information on automatic renewal see [Activity-based automatic renewal(https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/groups-lifecycle)

## How expiry works with the retention policy

If you have setup retention policy in Security and Compliance center for groups, expiration policy works seamlessly with retention policy. When a group expires, the group's conversations in mail box and files in the group site are retained in the retention container for the specific number of days defined in the retention policy. Users will not see the group, or its content, after expiration however.

## How and when a group owner learns if their groups are going to expire

Group owners will only be notified via email. If the group was created via Planner, SharePoint, or any other app, the expiration notifications will always come via email. If the group was created via Teams, the group owner will receive a notification to renew through the activity section. It's not recommended that you enable expiration on a group if your group owner doesn't have a valid email address.

30 days before the group expires, the group owners (or the email addresses that you specified for groups that don't have an owner) will receive an email allowing them to easily renew the group. If they don't renew it, they'll receive another renewal email 15 days before expiration. If they still haven't renewed it, they will receive one more email notification the day before expiration.

If for some reason none of the owners or admins renew the group before it expires, and automatic renewal does not occur due to the group not meeting the requirements to be automatically renewed, the admin can still restore the group for up to 30 days after expiration. For details see: [Restore a deleted Microsoft 365 group](https://docs.microsoft.com/microsoft-365/admin/create-groups/restore-deleted-group).

## How automatic renewal fits into the group expiration timeline

Automatic renewal checks occur starting 40 days in advance from the group's expiration date. The service will continually check for activity from this point until the group expires, is manually renewed, or meets the requirements for automatic renewal and is thus renewed. If the service determines the group has been active at any point during the group's lifecycle, the service will begin the automatic renewal process. For example, if activity occurred 60 days from expiration, the activity check performed 40 days from expiration would indicate the group is active, and the automatic group renewal process would immediately begin.

This also means that if no activity is detected within the group's lifecycle when, 40 days from expiration, the automatic renewal service first begins searching for activity meeting the requirements for automatic renewal, the group may not be automatically immediately renewed 40 days from expiration. For example, if the group is inactive until 35 days from renewal, the automatic renewal process would not occur 40 days from expiration, and would instead begin 35 days from renewal.

> [!NOTE]
> The service that checks to see if a group should be automatically renewed can take up to 48 hours to process and finish the automatic renewal procedure. In very rare cases, this can lead to the group failing to automatically renew, if no activity meeting the automatic renewal requirements occurs within the group's lifecycle until < 48 hours of the group's expiration time.

## How email notifications work with automatic group renewal

If a group is renewed prior to the scheduled time for an expiration reminder email being sent to the group owners or administrators, then further reminder emails will not be sent. For example, if the group is automatically renewed 40 days from expiration, then the 30 day, 15 day, and one day reminder emails will not be sent. If the group was renewed 12 days from expiration, both the 30 day and the 15 day reminder emails would be sent, but not the one day reminder.

## Related articles

[Overview of retention policies](https://docs.microsoft.com/microsoft-365/compliance/retention-policies)

[Assign a new owner to an orphaned group](https://support.microsoft.com/office/86bb3db6-8857-45d1-95c8-f6d540e45732)

[Configure Microsoft 365 groups expiration](https://docs.microsoft.com/azure/active-directory/active-directory-groups-lifecycle-azure-portal)
'
