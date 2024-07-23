---
title: Restore data in Microsoft 365 Backup
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 07/31/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - essentials-manage
ms.localizationpriority:  medium
description: Learn how to restore data using restore points and express restore points in Microsoft 365 Backup.
---

# Restore data in Microsoft 365 Backup

Once you back up your data, you might need to restore the data if there was an accidental deletion, ransomware attack, or other event. The restore feature in Microsoft 365 Backup is created to help you restore backed up data.

As part of restoring data from backup, admin needs to choose a *restore point* manually or from a recommended *express restore point* by the tool.

- **Restore point**. A prior point in time from which you can restore a healthy version of your content or metadata. If the data from a prior point in time is identical to the present state of your data, then there will be no items restored, including **Restore to a new folder** for Exchange Online.

- **Express restore point**. A set of recommended restore points that offers faster restore of data from the backup than a regular restore point.

    **We recommend you choose express restore point for faster restore performance.**

Currently, you can restore OneDrive accounts, SharePoint sites, and Exchange mailbox content from specific prior points in time from the backups. Site restores to a prior point in time, if restored to the same URL, overwrite the state and the content of the site to match the exact state at the prior point in time. This is commonly referred to as a rollback versus a roll-forward.

Mailbox restores only change items that have been modified since the desired restore point, leaving unchanged items unmodified and not overwritten. Mailbox restores follow a roll-forward process. You can restore sites, OneDrive accounts, and mailboxes in place. For SharePoint sites, you can also restore to a new URL, and for mailbox items, you can restore to a new folder. Restoring to a new location prevents any unwanted overwriting of existing data.

Restores started serially for each of three services execute in parallel. There's no need to wait for one service’s restore to finish before starting another.

## Restore point frequency

The restore point frequency, also known as the [recovery point objective](backup-faq.md#what-is-the-service-recovery-point-objective) (RPO), defines the maximum amount of time during which data is lost after an attack. Stated differently, it’s the time between the most recent backup of the healthy state of data and the time of the attack. The RPOs for each of the protected services are summarized in the following table.

|Type  |RPO for 0-14 days in the past  |RPO for 15-365 days in the past  |
|---------|---------|---------|
|Full OneDrive account and full SharePoint site restore    |15 minutes     |One week     |
|Exchange Online   |10 minutes         |10 minutes         |

## Restore data from backup for OneDrive, SharePoint, and Exchange

Once you back up your data, you might need to restore the data if there was an accidental deletion, ransomware attack, or other event. The restore feature in Microsoft 365 Backup is created to help you restore backed up data.

> [!NOTE]
> We recommend choosing an express restore point for full account, site, or mailbox restores as it will provide the fastest restore experience.

Select the **OneDrive**, **SharePoint**, or **Exchange** tab for steps to restore data from backup for that product.

# [OneDrive](#tab/onedrive)

Follow these steps to restore data backed up for OneDrive.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **OneDrive** section, select **Restore**.

2. On the **Select type of content** page, **OneDrive accounts** is preselected. Select **Next**.

    ![Screenshot showing the Select type of content page with OneDrive accounts selected.](../media/m365-backup/backup-onedrive-select-type.png)

3. From the list of backed up OneDrive accounts, select the accounts to restore, and then select **Next**.

4. On the **Select the date and time** page, select the date and time from which you want to restore the content.

    ![Screenshot showing the Select the date and time page for OneDrive.](../media/m365-backup/backup-onedrive-select-date-time.png)

    Choose a recommended restore point from **Select a faster restore point**, which offers a faster restore compared to standard restore points.

    ![Screenshot showing the Select a faster restore point option for OneDrive.](../media/m365-backup/backup-onedrive-select-faster-restore.png)

    Backup restores the closest backed up content *before* the specified date and time. Select **Next**.

    For example, assume backup is taken October 2, 2023 8:00 AM and October 2, 10:00 AM PST. If you select date and time as October 2, 2023 9:00 AM PST, Microsoft 365 Backup will restore the OneDrive and its content to its state on October 2, 2023 8:00 AM PST.

5. On the **Confirm restore points** page, you see a list of available express restore points that restore with better performance than nonexpress restore points. We highly recommend that you choose an express restore point all else equal.

    ![Screenshot showing the Confirm restore points page for OneDrive.](../media/m365-backup/backup-onedrive-confirm-restore.png)

6. Confirm the restore point in time to which the data will be restored from backup. If the restore point is correct, select **Next**.

7. On the **Select another backup** panel, choose another backup for the account selected, if needed.

    ![Screenshot showing the Select another backup panel for OneDrive.](../media/m365-backup/backup-onedrive-select-another-backup.png)

8. On the **Set destination** page, selected OneDrive accounts can be restored by choosing  either the **Restore to the original OneDrive accounts** or **Create new SharePoint sites and restore to a new URL** option.

    ![Screenshot showing the Select destination page and options for OneDrive.](../media/m365-backup/backup-onedrive-set-destination.png)

    a. **Restore to the original OneDrive accounts**. The entire OneDrive is replaced by the backed-up version chosen based on the restore point. File and folder permissions are also reverted to the selected date and time.

    b. **Create new SharePoint sites and restore to a new URL**. The entire OneDrive will restore to a new SharePoint site where you can then copy or move data into the original OneDrive to create a roll-forward type of restore and avoid overwriting currently healthy data.<br><br>When you restore using this option, the new site URL will have an "R" followed by a number concatenated to the end. For example, if the original URL was `https://contoso-my.sharepoint.com/personal/user1_contoso_com` the restored site could be `https://contoso-my.sharepoint.com/personal/user1_contoso_comR0`. The number at the end increments to avoid URL name conflicts up to 1,000 total restores. After that you should delete some of those new URLs to clear namespace for future new-URL restores.

9. On the **Review and Finish** page, review and finish all your choices. If everything looks as you want it, select **Restore OneDrive accounts**.

    ![Screenshot showing the Review and finish page for OneDrive.](../media/m365-backup/backup-onedrive-review-finish.png)

# [SharePoint](#tab/sharepoint)

Follow these steps to restore data backed up for SharePoint.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **SharePoint** section, select **Restore**.

2. On the **Select type of content** page, you see **SharePoint site content** preselected. Select **Next**.

    ![Screenshot showing the Select type of content page with SharePoint site content selected.](../media/m365-backup/backup-sharepoint-select-type.png)

3. From the list of backed up SharePoint sites, select the sites to restore, and then select **Next**.

4. On the **Select the date and time** page, select the date and time from which you want to restore the content.

    ![Screenshot showing the Select the date and time page for SharePoint.](../media/m365-backup/backup-sharepoint-select-date-time.png)

    Choose a recommended restore point from **Select a faster restore point**, which provides a faster restore compared to standard restore points.

    ![Screenshot showing the Select a faster restore point option for SharePoint.](../media/m365-backup/backup-sharepoint-select-faster-restore.png)

    Backup restores the closest backed up content *before* the specified date and time. Select **Next**.

    For example, assume backup is taken October 2, 2023 8:00 AM and October 2, 2023 10:00 AM PST. If you select date and time as October 2, 2023, 9:00 AM PST, Microsoft 365 Backup will restore the site and its content to the state present on October 2, 2023 8:00 AM PST.

5. On the **Confirm restore points** page, you see a list of available express restore points that restore with better performance than nonexpress restore points. We highly recommend that you choose an express restore point all else equal.

    ![Screenshot showing the Confirm restore points page for SharePoint.](../media/m365-backup/backup-sharepoint-confirm-restore.png)

6. Confirm the restore point in time to which the data will be restored from backup. If the restore point is correct, select **Next**.

7. On the **Select another backup** panel, choose another backup for the site selected, if needed.

    ![Screenshot showing the Select another backup panel for SharePoint.](../media/m365-backup/backup-sharepoint-select-another-backup.png)

8. On the **Set destination** page, selected SharePoint sites can be restored by choosing  either the **Restore to original sites** or **Create new sites and restore to a new URL** option.

    ![Screenshot showing the Select destination page and options for SharePoint.](../media/m365-backup/backup-sharepoint-set-destination.png)

    a. **Restore to original sites**. The entire original site is replaced by the backed-up version chosen based on the restore point. File and folder permissions and all metadata states are also reverted to the selected date and time.

    b. **Create new sites and restore to a new URL**. The entire site will restore to a new SharePoint site where you can then copy or move data into the original site or a different site to create a roll-forward type of restore and avoid overwriting currently healthy data.<br><br>When you restore using this option, the new site URL will have an "R" followed by a number concatenated to the end. For example, if the original URL was `https://contoso.sharepoint.com/sites/originalSite` the restored site could be `https://contoso.sharepoint.com/sites/originalSiteR0`. The number at the end increments to avoid URL name conflicts up to 1,000 total restores. After that you should delete some of those new URLs to clear namespace for future new-URL restores.

9. On the **Review and Finish** page, review and finish your choices. If everything looks as you want it, select **Restore sites**.

    ![Screenshot showing the Review and finish page for SharePoint.](../media/m365-backup/backup-sharepoint-review-finish.png)
  

# [Exchange](#tab/exchange)

Follow these steps to restore data backed up for Exchange.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **Exchange** section, select **Restore**.

2. On the **Select type of content** page, you see **Exchange mailbox content (emails, notes, contacts, calendars, and tasks)** preselected. Select **Next**.

3. From the list of backed up Exchange accounts, select the accounts to restore, and then select **Next**.

4. On the **Content scope** page, you see two options to choose from:

    - [Option 1: All emails, notes, contacts, calendars, and tasks](#option-1-all-emails-notes-contacts-calendars-and-tasks)
    - [Option 2: Selected content only](#option-2-selected-content-only)

### Option 1: All emails, notes, contacts, calendars, and tasks

1. Use this option to perform a full mailbox restore, On the **Content scope** page, the **All emails, notes, contacts, calendars, and tasks** option lets you restore all emails, notes, contacts, and tasks, and modified calendar items for that user account. Select the last known good (LKG) date and time from which you want to restore the content. Make sure that the time zone in the dropdown menu reflects your intention, and select **Next**.

    ![Screenshot showing the Content scope page with the All emails, notes, contacts, calendars, and tasks option selected.](../media/m365-backup/backup-exchange-content-scope-all.png)

    For example, the last time the end user remembers seeing their mailbox in a "good state" was October 2, 2023 8:00 AM. However, on October 2, 2023 9:00 AM they saw all of their emails were encrypted (possible ransomware attack), choose the last known good time as October 2, 2023 8:00 AM.

2. Confirm the restore point in time to which the data will be restored from backup. The page informs you whether there are any backups to restore from the LKG time chosen. If you see no errors, you can proceed. If there are errors, you can choose another LKG time. Select **Next**.

3. The destination of restored items can be chosen from two options, then select **Next**.

    a. **Restore to a new folder** where the content will be restored to a newly created folder named *Restored Items YYYY-DD-MM, HH:MM*.

    b. **Restore in place** where current version of the item will be overwritten by the restored content.

4. On the **Review and Finish** page, review and finish all your choices. If everything looks as you want it, select **Restore user mailboxes**.

5. Track the progress of your newly created task on the **Restoration tasks** tab.

### Option 2: Selected content only

1. Use this option to perform a partial mailbox restore. On the **Content scope** page, the **Selected content only** option gives the admin the ability to do a granular restore (not full mailbox restore).

    ![Screenshot showing the Content scope page with the Selected content only option selected.](../media/m365-backup/backup-exchange-content-scope-selected.png)

    The search for items is based on four options:

    - Sender
    - Recipient
    - Has attachment
    - Keywords

    Choose the time period, then filter and value that you want to do a granular search on to find matching items.
  
2. Confirm the restore point in time to which the data will be restored from backup. If the restore point is what you want, select **Next**.

3. The destination of restored items can be chosen from two options, then select **Next**.

    a. **Restore to a new folder** where the content will be restored to a newly created folder named *Recovered Items YYYY-MM-DD, HH:MM*.

    Example:

    ![Screenshot showing an example of newly create folder where content has been restored.](../media/m365-backup/backup-restore-to-new-folder.png)

    b. **Restore in place** where the current version of the item will be overwritten by the restored content.

4. On the **Review and Finish** page, review and finish all your choices. If everything looks as you want it, select **Restore user mailboxes**.

5. Track the progress of your newly created task on the **Restoration tasks** tab.

### States of backup

|States  |Definition  |
|---------|---------|
|Active     | Protection scope selected under backup policy is being actively backed up. |
|Paused     | No further backups will be taken but already taken backups will be preserved. |
|Not set up | No backup policy is set up for this scope.  |
|Processing | A change to backup policy or a restore is in progress.  |

---

## Multi-geo environments

Microsoft 365 Backup supports restoring sites and user accounts from both central and satellite locations if the multi-geo feature is enabled on your tenant. This lets you:

- View sites or accounts from all the geos while selecting sites or accounts during the restore operation.

- Add or remove sites or accounts from all the geos during the restore operation.

Microsoft 365 Backup supports the backup and restoration of any site and user account even if that site or user account has moved from one geo to another geo. If the site or user account has moved to a new geo, and you’re restoring data from a prior point back in time when the site or user account was in older geo, then the restored site or user account will be available in the new geo.

## Considerations about restoring data

- Site search is case-sensitive and is a prefix-type search.

- SharePoint sites and OneDrive accounts being restored to a prior point in time aren't locked in a read-only state. Therefore, users might not realize their current edits will be imminently rolled back and lost.

- For restores to a new URL, it might take up to 15 minutes for the destination URL to be displayed in the tool once a SharePoint site or OneDrive account restore to a new URL session completes.

- For restores to a new URL, only the admin who executed the restore has ownership permissions for the restored SharePoint sites or OneDrive accounts in the new URLs. Restores to the same URL reverts permissions to their original state.

- A site or OneDrive account that is under the strict SEC 17a-4(f) hold policy will fail any in-place restores so as to honor that immutability promise. For sites under that type of hold, you'll have to restore to a new URL or remove the hold. Any other type of preservation hold that does not have a strict admin lockout will allow an in-place restore. Restoring these types of sites as the preservation hold library will be reverted to the prior point in time. A new URL restore is recommended for that type of site as the cleanest option.
	
- The restore point frequency dictates the points in time from which you can recover a prior state of your data. Restore points will start being generated when you enable the Backup policy for a given OneDrive account, SharePoint site, or Exchange Online mailbox. Based on the defined and currently invariable backup frequency setting previously described, the following example highlights what is possible.
	
    Megan, the Backup admin, enables a policy for the SharePoint site “HR Hub” on February 1, 2025, at 8:00 AM PST. At 10:00 AM PST, she has the option of rolling back the state of the site to any 10-minute period between 8:00 AM and 10:00 AM PST.

    On April 1, 2025, she has the option to roll back the site to any 10-minute period in the prior 14 days (that is, any 10-minute period between March 18 and the current date-time). If she wants to choose an earlier prior point in time, she would need to choose March 15, 8, or 1, and so on, back through February 1.

- While OneDrive account and mailbox backups of deleted users are maintained and after the user’s Microsoft Entra ID is deleted are restorable, search in the people picker UI for that user won't work. The user is displayed as an empty user in results, requiring a guess-and-check methodology.

- Mailbox draft items aren't backed up or restorable.

- Calendar item backup and restore is limited to modified items only and doesn't cover deleted items. This action includes the following specific limitations:

- For calendar item item restore, restoring organizer copy doesn't automatically make attendee copies catch up, it only allows future updates by organizer to work for all users added on the calendar item.

- To restore OneDrive account and Exchange mailbox for a user who is deleted from Microsoft Entra ID, here is how to do it:  

    > [!NOTE]
    > Within 30 days of deletion, deleted users will appear as "–" in the user interface.

    For OneDrive, if within 30 days of being deleted, you can restore the OneDrive to the original URL or a new URL. At that time, the OneDrive is in an "orphaned" state. To connect the OneDrive to a user, see [Fix site user ID mismatch in SharePoint or OneDrive](/sharepoint/troubleshoot/sharing-and-permissions/fix-site-user-id-mismatch).

    For Exchange, a user account will be in a soft-deleted state for 30 days after it's deleted. To restore the user, see [Restore a user in the Microsoft 365 admin center](/microsoft-365/admin/add-users/restore-user). Once you restore the user, you can use the restore feature in Microsoft 365 Backup to restore as usual.

    For Exchange, if the user account is permanently deleted, Microsoft 365 Backup retains the inactive mailbox for the duration of the backup policy. To recover and restore the inactive mailbox, see the following guidance:

    - [Recover an inactive mailbox](/purview/recover-an-inactive-mailbox)
    - [Restore an inactive mailbox](/purview/restore-an-inactive-mailbox)

- While restoring Exchange mailboxes at a granular level, the search feature provides several search parameters. These parameters allow you to enter up to a maximum of five keywords each. For example, the parameters "from" and "to" allow you to enter up to a maximum of five email addresses each.

- OneDrive accounts and SharePoint sites that undergoes the following types of changes won't be undoable via restore: tenant rename, tenant move, and site URL change.  

- If there are no differences between the current state of a mailbox and the prior point in time from which you're attempting a restore, a restore isn't performed and no new folders are created when a "restore to a new location" request is made. We don't plan to modify this behavior in the future.

- SharePoint sites and OneDrive accounts being restored to a new URL have a read-only lock on that new URL until the restore completes. The [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) can still download documents or remove the read-only lock manually.

    [!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]
