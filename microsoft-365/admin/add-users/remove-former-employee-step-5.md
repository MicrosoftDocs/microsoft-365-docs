---
title: "Step 5 - Give another employee access to OneDrive and Outlook data"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 09/30/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
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

When an employee leaves your organization, you'll want to access their OneDrive and Outlook data, back it up, and choose whether to give it to another employee.
  
## Access a former user's OneDrive documents

If you remove a user's license but don't delete the account, you can give yourself access to the content in the user's OneDrive. If you delete the user's account, you have 30 days by default to access the former user's OneDrive data. [Learn how to set the OneDrive retention for deleted users](/onedrive/set-retention). If you don't [restore a user account](/office365/admin/add-users/restore-user) within this time, their OneDrive content is deleted.

To preserve a former user's OneDrive files, first give yourself access to their OneDrive, and then move the files you want to keep.

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.  

2. Select a user.

3. On the user properties page, select **OneDrive**. Under **Get access to files**, select **Create link to files**.

4. Select the link to open the file location. Download the files to your computer, or select **Move to** or **Copy to** to move or copy them to your own OneDrive or to a shared library.

> [!NOTE]
> - You can move or copy up to 500 MB of files and folders at a time.<br/>
> - When you move or copy documents that have version history, only the latest version is moved.
> - Administrative options for an active user under the OneDrive tab in the Microsoft 365 admin center are currently not supported for multi-geo tenants.

You can also grant access to another user to access a former employee's OneDrive.

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a> as a SharePoint admin.

    If you get a message that you don't have permission to access the admin center, then you don't have administrator permissions in your organization.

2. In the left pane, select **Admin centers** \> **SharePoint**. (You might need to select **Show all** to see the list of admin centers.)

3. If the classic SharePoint admin center appears, select **Open it now** at the top of the page to open the SharePoint admin center.

4. In the left pane, select **More features**.

5. Under **User profiles**, select **Open**.

6. Under **People**, select **Manage User Profiles**.

7. Enter the former employee's name and select **Find**.

8. Right-click the user, and then choose **Manage site collection owners**.

9. Add the user to **Site collection administrators** and select **OK**.

10. The user will now be able to access the former employee's OneDrive using the OneDrive URL. 

### Revoke admin access to a user's OneDrive

You can give yourself access to the content in a user's OneDrive, but you may want to remove your access when you no longer need it.

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a> as a SharePoint admin.

    If you get a message that you don't have permission to access the admin center, then you don't have administrator permissions in your organization.

2. In the left pane, select **Admin centers** \> **SharePoint**. (You might need to select **Show all** to see the list of admin centers.)

3. If the classic SharePoint admin center appears, select **Open it now** at the top of the page to open the SharePoint admin center.

4. In the left pane, select **More features**.

5. Under **User profiles**, select **Open**.

6. Under **People**, select **Manage User Profiles**.

7. Enter the user's name and select **Find**.

8. Right-click the user, and then choose **Manage site collection owners**.

9. Remove the person who no longer needs access to the user's data, and then select **OK**.

## Access the Outlook data of a former user

To save the email messages, calendar, tasks, and contacts of the former employee, export the information to an Outlook Data File (.pst). For steps on exporting Outlook data, see [Export emails, contacts, and calendar items to a .pst file](https://support.microsoft.com/office/14252b52-3075-4e9b-be4e-ff9ef1068f91).

## Give another user access to a former user's email

To give access to the email messages, calendar, tasks, and contacts of the former employee to another employee, import the information to another employee's Outlook inbox. For steps on exporting Outlook data, see [Import email, contacts, and calendar from an Outlook .pst file](https://support.microsoft.com/topic/431a8e9a-f99f-4d5f-ae48-ded54b3440ac).

> [!NOTE]
> You can also [convert the former user's mailbox to a shared mailbox](/office365/admin/email/convert-user-mailbox-to-shared-mailbox) or [forward a former employee's email to another employee](/office365/admin/add-users/remove-former-employee#forward-a-former-employees-email-to-another-employee-or-convert-to-a-shared-mailbox).

## Related content

[Add and remove admins on a OneDrive account](/sharepoint/manage-user-profiles#add-and-remove-admins-for-a-users-onedrive) (article)

[Restore a deleted OneDrive](/onedrive/restore-deleted-onedrive) (article)

[OneDrive retention and deletion](/onedrive/retention-and-deletion) (article)

[Share OneDrive files and folders](https://support.microsoft.com/office/share-onedrive-files-and-folders-9fcc2f7d-de0c-4cec-93b0-a82024800c07)
