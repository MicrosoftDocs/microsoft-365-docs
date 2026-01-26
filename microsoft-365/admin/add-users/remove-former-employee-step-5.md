---
title: "Step 5 - Give another employee access to OneDrive and Outlook data"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 10/28/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- AdminTemplateSet
- m365solution-removeemployee
description: "Follow the steps in this article to access a former employee's OneDrive and Outlook data, back it up, and choose whether to give access to another employee."
---

# Step 5 - Give another employee access to OneDrive and Outlook data

When an employee leaves your organization, you can access their OneDrive and Outlook data, back it up, and choose whether to grant access to that content to another employee.

> [!NOTE]
> You must have appropriate permissions through a role, such as [Microsoft 365 Backup Administrator](/entra/identity/role-based-access-control/permissions-reference#microsoft-365-backup-administrator) or [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator) to perform the tasks in this article. 
  
## Access a former user's OneDrive documents

If you remove a user's license but don't delete the account, you can give yourself access to the content in the user's OneDrive. If you delete the user's account, you have 30 days by default to access the former user's OneDrive data. [Learn how to set the OneDrive retention for deleted users](/onedrive/set-retention). If you don't [restore a user account](/office365/admin/add-users/restore-user) within this time, their OneDrive content is deleted.

## Preserve a former user's OneDrive files

To preserve a former user's OneDrive files, first give yourself access to their OneDrive, and then move the files you want to keep.

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), go to **Users** > **Active users**. (Or, go directly to the [Active users page](https://go.microsoft.com/fwlink/p/?linkid=834822).)

2. Select a user.

3. On the user properties page, select **OneDrive**. Under **Get access to files**, select **Create link to files**.

4. Select the link to open the file location. Download the files to your computer, or select **Move to** or **Copy to** to move or copy them to your own OneDrive or to a shared library.

> [!NOTE]
> - You can move or copy up to 500 MB of files and folders at a time.
> - When you move or copy documents that have version history, only the latest version is moved.
> - Administrative options for an active user under the OneDrive tab in the Microsoft 365 admin center are currently not supported for multi-geo tenants.

## Grant access to a former user's OneDrive files to another user

You can also grant access to another user to access a former employee's OneDrive.

1. Sign in to the [Microsoft 365 admin center](https://admin.cloud.microsoft/) as a SharePoint admin.

   If you get a message that you don't have permission to access the admin center, then you don't have administrator permissions in your organization.

2. In the navigation pane, select **Admin centers** \> **SharePoint**. (You might need to select **Show all** to see the list of admin centers.)

3. In the navigation pane, select **More features**. Then, under **User profiles**, select **Open**.

4. Under **People**, select **Manage User Profiles**.

5. In the **Find profiles** box, type the former employee's name, and then select **Find**.

6. Right-click the former employee's user account, and then choose **Manage site collection owners**.

7. Add the new user to **Site collection administrators** and select **OK**. The user can now access the former employee's OneDrive using their OneDrive URL. 

## Revoke admin access to a user's OneDrive

You can give yourself access to the content in a user's OneDrive, but you may want to remove your access when you no longer need it.

1. Sign in to the [Microsoft 365 admin center](https://admin.cloud.microsoft/) as a SharePoint admin.

   If you get a message that you don't have permission to access the admin center, then you don't have administrator permissions in your organization.

2. In the left pane, select **Admin centers** \> **SharePoint**. (You might need to select **Show all** to see the list of admin centers.)

3. In the navigation pane, select **More features**. Then, under **User profiles**, select **Open**.

4. Under **People**, select **Manage User Profiles**.

5. In the **Find profiles** box, type the former employee's name, and then select **Find**.

6. Right-click the former employee's user account, and then choose **Manage site collection owners**.

7. Remove the person who no longer needs access to the user's data, and then select **OK**.

## Access the Outlook data of a former user

To save the email messages, calendar, tasks, and contacts of the former employee, export the information to an Outlook Data File (`.pst`). For steps on exporting Outlook data, see [Export emails, contacts, and calendar items to a .pst file](https://support.microsoft.com/office/14252b52-3075-4e9b-be4e-ff9ef1068f91).

## Give another user access to a former user's email

To give access to the email messages, calendar, tasks, and contacts of the former employee to another employee, import the information to another employee's Outlook inbox. For steps on exporting Outlook data, see [Import email, contacts, and calendar from an Outlook .pst file](https://support.microsoft.com/topic/431a8e9a-f99f-4d5f-ae48-ded54b3440ac).

> [!NOTE]
> You can also [convert the former user's mailbox to a shared mailbox](/office365/admin/email/convert-user-mailbox-to-shared-mailbox) or [forward a former employee's email to another employee](/office365/admin/add-users/remove-former-employee#forward-a-former-employees-email-to-another-employee-or-convert-to-a-shared-mailbox).

## Related content

- [Add and remove admins on a OneDrive account](/sharepoint/manage-user-profiles#add-and-remove-admins-for-a-users-onedrive)

- [Restore a deleted OneDrive](/onedrive/restore-deleted-onedrive)

- [OneDrive retention and deletion](/onedrive/retention-and-deletion)

- [Share OneDrive files and folders](https://support.microsoft.com/office/share-onedrive-files-and-folders-9fcc2f7d-de0c-4cec-93b0-a82024800c07)
