---
title: "Overview of inactive mailboxes"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 1fbd74e8-7a60-4157-afe8-fe79f05d2038
ms.custom:
- seo-marvel-apr2020
description: Learn how to retain mailbox content for former employees by turning the mailbox into an inactive mailbox.
---

# Overview of inactive mailboxes

Your organization might need to retain former employees' email after they leave the organization. Depending on your organization's retention requirements, you might need to retain mailbox content for a few months or years after employment ends, or you might need to retain mailbox content indefinitely. Regardless of how long you need to retain email, you can create inactive mailboxes to retain the mailbox of former employees.

## What are inactive mailboxes?

When an employee leaves your organization (or goes on an extended leave of absence), you can remove their Microsoft 365 account. The employee's mailbox data is retained for 30 days after the account is removed. During this period, you can still recover the mailbox data by undeleting the account. After 30 days, the data is permanently removed.

But if any type of hold is applied to the mailbox prior to deleting the Microsoft 365 account, the mailbox will be converted into an inactive mailbox.

Inactive mailboxes are useful when your organization needs to retain mailbox content of former employees for regulatory or other reasons. While any type of hold listed in this document will force a mailbox to be made inactive when a user object is deleted, we recommend doing this by applying a Microsoft 365 retention policy or retention labels, confirm the retention settings are applied, and then remove the corresponding Microsoft 365 account. At that point, the contents of the inactive mailbox are retained for the duration of the retention period specified before the user account was deleted. You can still recover the corresponding user account for a 30-day period, however after 30 days, the mailbox is retained in Microsoft 365 as an inactive mailbox until the retention policy or retention labels are removed.

> [!IMPORTANT]
> As we mentioned above, we recommend you use Microsoft 365 retention to create an inactive mailbox:
> - We previously announced the retirement of In-Place Holds in the Exchange admin center. As of July 1, 2020, new In-Place Holds were unable to be created in Exchange Online. As of October 1, 2020, the hold duration of in-place holds could no longer be changed. Any inactive mailbox that has an In-Place Hold applied can only be deleted by removing the In-Place Hold. Existing inactive mailboxes that are on In-Place Hold will continue to be preserved until the hold is removed. For more information about In-Place Holds retirement, see [Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md).
> 
> - [Litigation hold](create-a-litigation-hold.md) remains supported as an alternative method to retain content in a mailbox and make it inactive after a user account is deleted. However, as an older technology, we recommend you use Microsoft 365 retention instead.

## Inactive mailboxes and Microsoft 365 retention

If a Microsoft 365 retention policy is applied to a mailbox, or one or more email items in a mailbox have a retention label applied, and then the Microsoft 365 user account is deleted, the mailbox will be converted into an inactive mailbox. For the inactive mailbox to be created:

- The retention settings must be configured to [retain content, or retain and then delete content](retention-settings.md#settings-for-retaining-and-deleting-content). If the retention action is configured to only delete content, the mailbox won't become inactive when the user account is deleted. When you want to use inactive mailboxes, we recommend using the retain and then delete option.

- The retention settings must be applied to a [retention location](retention-settings.md#locations) that is associated with an Exchange mailbox:
    - Exchange email
    - Microsoft 365 Groups
    - Skype for Business
    - Exchange public folders
    - Teams channel messages
    - Teams chats
    - Teams private channel messages
    - Yammer community messages
    - Yammer user messages

For more information about Microsoft retention, see [Learn about retention policies and retention labels](retention.md).

If Microsoft 365 retention is used to create an inactive mailbox, the retention settings from the retention policy or retention labels continue to apply to the inactive mailbox. This means if the retention settings are configured to retain and then delete content, items will be moved to the Recoverable Items folder when the retention duration expires, and then eventually purged from the inactive mailbox. If the retention settings aren't configured to deleted items, then items that haven't been permanently deleted by the user (before the mailbox was made inactive) will not be moved to the Recoverable Items folder and will be retained indefinitely after the mailbox becomes inactive.

> [!TIP]
> You can use the *ComplianceTagHoldApplied* property to identify whether a mailbox has items that have one or more retention labels applied to retain, or retain and then delete content. For more information, see [Identifying mailboxes on hold because a retention label has been applied to a folder or item](identify-a-hold-on-an-exchange-online-mailbox.md#identifying-mailboxes-on-hold-because-a-retention-label-has-been-applied-to-a-folder-or-item).

### Using adaptive policy scopes to manage retention of inactive mailboxes

With [adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention), you can apply retention settings specifically to inactive mailboxes. You might consider doing this for any of the following reasons:

- Your organization has regulations or policies that differ for active employees and former employees.

- You can configure the retention settings to retain mailbox content for only as long as necessary to meet your organization's requirement for former employees.

- You are able to quickly identify the policy for retention that's assigned to inactive mailboxes in your organization. This makes it easier to change the retention settings if necessary. 

- It will also make it easier to permanently delete an inactive mailbox because you can remove it from the policy by [configuring the adaptive scope](retention-settings.md#to-configure-an-adaptive-scope) to exclude it, based on attributes or properties of the inactive mailbox. Otherwise, you must use [Exchange Online PowerShell](delete-an-inactive-mailbox.md#remove-an-inactive-mailbox-from-a-retention-policy) before [deleting the mailbox](delete-an-inactive-mailbox.md#before-you-delete-an-inactive-mailbox).

> [!NOTE]
> Depending on the configuration of your adaptive policy scope, inactive mailboxes might or might not be included.  To specifically target or to exclude inactive mailboxes from an adaptive policy scope, see [configuration information for Exchange email and Exchange public folders](retention-settings.md#locations).

### Using static policy scopes and inactive mailboxes

If you don't use [adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention) with Microsoft 365 retention, and instead use a [static scope](retention.md#adaptive-or-static-policy-scopes-for-retention), consider the following:

- Static policy scopes include inactive mailboxes when you use the default **All recipients** configuration but aren't supported for [specific inclusions or exclusions](retention-settings.md#a-policy-with-specific-inclusions-or-exclusions). However, if you include or exclude a recipient that has an active mailbox at the time the policy is applied and the mailbox later goes inactive, the retention settings continue to be applied or excluded. In this scenario, [specific inclusion and exclusion limits](retention-limits.md) still apply.
    
    > [!NOTE]
    > This also means that any new Microsoft 365 retention settings using a static scope that is applied to the default selection of **All recipients** will automatically include all existing inactive mailboxes.

- If you change the default selection of **All recipients** to include specific recipients, retention settings for the policy will no longer apply to any inactive mailboxes, which now become eligible for automatic deletion.

- If you want to release a retention policy that's applied to an inactive mailbox, see [Releasing a policy for retention](retention.md#releasing-a-policy-for-retention).

> [!CAUTION]
> When you use Microsoft 365 retention to make a mailbox inactive, do not change or remove the user principal name (UPN) for the mailbox before you delete the corresponding user account. Additionally, do not change the primary SMTP address (that's derived from the UPN) or remove this email address from the list of secondary SMTP addresses associated with the mailbox before making the mailbox inactive.
> 
> If you change the UPN or email addresses (that were assigned to the mailbox at the time the retention settings were applied) and then delete the user account to make the mailbox inactive, you won't be able to delete the inactive mailbox if you no longer need to retain it. That's because you can't remove the inactive mailbox from the policy by using a UPN or email address (to identify the inactive mailbox) that's different from the ones that existed when the retention settings were initially applied to the mailbox. For more information about deleting inactive mailboxes, see [Delete an inactive mailbox in Office 365](delete-an-inactive-mailbox.md).

## Inactive mailboxes and eDiscovery case holds

If a hold that's associated with an [eDiscovery case](./get-started-core-ediscovery.md) in Microsoft 365 compliance center is placed on a mailbox and then the mailbox or the user's account is deleted, the mailbox becomes an inactive mailbox. However, we don't recommend using eDiscovery case holds to make a mailbox inactive. That's because eDiscovery cases are intended for specific, time-bound cases related to a legal issue. At some point, a legal case will probably end and the holds associated with the case will be removed and the eDiscovery case will be closed. In fact, if a hold that's placed on an inactive mailbox is associated with an eDiscovery case, and then the hold is released or the eDiscovery case is closed (or deleted), the inactive mailbox will be permanently deleted. Also, you can't create a time-based eDiscovery hold. That's means that content in an inactive mailbox is retained forever or until the hold is removed and the inactive mailbox is deleted. Therefore, we recommend using Microsoft 365 retention for inactive mailboxes.

For more information about the differences between eDiscovery holds and Microsoft 365 retention, see [When to use retention policies and retention labels or eDiscovery holds](retention.md#when-to-use-retention-policies-and-retention-labels-or-ediscovery-holds).

## Inactive mailboxes and auto-expanding archives

An inactive mailbox that's configured with an auto-expanding archive can't be recovered or restored. In situations where it's necessary to recover data from an inactive mailbox with an auto-expanding archive, we recommended that you use the content search tool to export the data from the mailbox and then import to another mailbox. For step-by-step instructions to search an inactive mailbox and export the search results, see:

- [Content search](content-search.md)

- [Export content search results](export-search-results.md)

## Inactive mailboxes and Exchange MRM retention policies

If an Exchange retention policy (the Messaging Records Management, or MRM, feature in Exchange Online) was applied to mailbox when it was made inactive, any deletion policies (which are retention tags configured with a **Delete** retention action) will continue to be processed on the inactive mailbox. That means items that are tagged with a deletion policy will be moved to the Recoverable Items folder when the retention period expires. Those items are purged from the inactive mailbox when the hold duration expires. If a hold duration isn't specified for the inactive mailbox, items in the Recover Items folder will be retained indefinitely.

Conversely, any archive policies (which are retention tags configured with a **MoveToArchive** retention action) that are included in the retention policy assigned to an inactive mailbox are ignored. That means items in an inactive mailbox that are tagged with an archive policy remain in the primary mailbox when the retention period expires. They're not moved to the archive mailbox or to the Recoverable Items folder in the archive mailbox. They will be retained indefinitely.

## Creating an inactive mailbox

To make a mailbox inactive, it must be assigned an Exchange Online Plan 2 license (or an Exchange Online Plan 1 license with an Exchange Online Archiving add-on license) so that a Litigation Hold or Microsoft 365 retention policy can be applied to the mailbox before it's deleted. After the user account is deleted, any Exchange Online license associated with the user account will be available to assign to a new user.

The following table summarizes the process of making an inactive mailbox for different retention scenarios. For more information, see [Manage inactive mailboxes](create-and-manage-inactive-mailboxes.md).

<br/>

|To...|Do this...|Result|
|---|---|---|
|1. Retain mailbox content indefinitely after an employee leaves the organization|Use Microsoft 365 retention settings with retain-only actions for the mailbox (a retention policy) or specific email items (a retention label). <br/> 2. Wait for the retention settings to be applied. <br/> 3. Remove the user's Microsoft 365 account.|All content in the inactive mailbox that has retention settings applied, including items in the Recoverable Items folder, is retained indefinitely.|
|Retain all mailbox content for a specific period after an employee leaves the organization and then delete the mailbox|1. Apply a Microsoft 365 retention policy to the mailbox with retention settings that retain and then delete items when the retention period expires. 2. Wait for the retention settings to be applied. <br/> 3. Remove the user's Microsoft 365 account.|When the retention period for a mailbox item expires, the item is moved to the Recoverable Items folder and then it's permanently deleted (purged) from the inactive mailbox when the deleted item retention period (for Exchange mailboxes) expires. The retention period of the Microsoft 365 retention policy is always based on the original date a mailbox item was received or created.|


> [!NOTE]
> If Microsoft 365 retention settings that are configured to retain, or retain and then delete content, is already applied to the mailbox or mailbox items, or a Litigation hold is already placed on a mailbox, or then all you have to do to create an inactive mailbox is delete the corresponding user account.

## Managing inactive mailboxes

After you make a mailbox inactive, you can perform various management tasks on inactive mailboxes.

- **Change the hold duration for an inactive mailbox.** After a mailbox is made inactive, you can change the hold duration of the Litigation Hold or Microsoft 365 retention policy applied to the inactive mailbox. For step-by-step procedures, see [Change the hold duration for an inactive mailbox](change-the-hold-duration-for-an-inactive-mailbox.md).

  > [!NOTE]
  > You can't apply other retention policies to an inactive mailbox. You can only change the retention duration of an existing retention policy applied to the inactive mailbox.

- **Recover an inactive mailbox.** If a former employee (or an employee on a leave of absence) returns to your organization, or if a new employee is hired to take on the job responsibilities of the former employee, you can recover the contents of the inactive mailbox. When you recover an inactive mailbox, the mailbox is converted to a new mailbox, the contents and the folder structure of the inactive mailbox are retained, and the mailbox is linked to a new user account. After it's recovered, the inactive mailbox no longer exists. For step-by-step procedures and information about what happens when you recover an inactive mailbox, see [Recover an inactive mailbox](recover-an-inactive-mailbox.md).

  > [!NOTE]
  > If you recover an inactive mailbox that was assigned to a retention policy with Preservation Lock (called a *locked retention policy*), the recovered mailbox is assigned to the same locked retention policy. If you recover an inactive mailbox that was assigned to a retention policy without Preservation Lock, the recovered mailbox is removed from the unlocked retention policy. However, Litigation Hold is enabled on the recovered mailbox to prevent the deletion of mailbox content based on any organization-wide retention policies that delete content older than a specific age.

- **Restore an inactive mailbox.** If another employee takes on the job responsibilities of a former employee, or if another person needs access to the contents of the inactive mailbox, you can restore (or merge) the contents of the inactive mailbox to an existing mailbox. When you restore an inactive mailbox, the contents are copied to another mailbox. The inactive mailbox is retained and remains an inactive mailbox. The inactive mailbox can still be searched using eDiscovery tools, its contents can be restored to another mailbox, and it can be recovered or deleted later. For step-by-step procedures, see [Restore an inactive mailbox](restore-an-inactive-mailbox.md).

- **Delete an inactive mailbox.** When you no longer need to retain the contents of an inactive mailbox, you can permanently delete it by removing all holds or Microsoft 365 retention policies applied to the inactive mailbox. If a mailbox was made inactive more than 30 days ago, it will be marked for permanent deletion after you remove the hold. If the mailbox was made inactive within the last 30 days, you can make it active again after removing the hold or retention policy. For step-by-step procedures, see [Delete an inactive mailbox](delete-an-inactive-mailbox.md).
