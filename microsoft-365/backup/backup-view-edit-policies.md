---
title: Create, view, and edit backup policies in Microsoft 365 Backup
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/06/2024
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - essentials-manage
ms.localizationpriority:  medium
description: Learn how to create, view, and edit backup policies for OneDrive, SharePoint, and Exchange in Microsoft 365 Backup.
---

# Create, view, and edit backup policies in Microsoft 365 Backup

## Create backup policies

To use Microsoft 365 Backup for OneDrive, SharePoint, or Exchange, you need to create a backup policy for each product. A *policy* represents the backup plan defined by admins for protecting the Microsoft 365 data of an organization.

A policy contains details of what data (OneDrive accounts, SharePoint sites, and Exchange mailboxes) to protect. Although you see the retention period and backup frequency (which defines the restore point objective), those settings aren't currently variable or modifiable.

Select the **OneDrive**, **SharePoint**, or **Exchange** tab for steps to create a backup policy for that product.

# [OneDrive](#tab/onedrive)

Follow these steps to set up a backup policy for OneDrive accounts using Microsoft 365 Backup.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

4. On the **Microsoft 365 Backup** page, in the **OneDrive** section, select **Set up policy**.

    ![Screenshot of the Microsoft 365 Backup page with OneDrive highlighted.](../media/m365-backup/backup-setup-backup-page-onedrive.png)

5. On the **Overview** page, review the backup features for OneDrive, and then select **Next**.

    ![Screenshot of the Overview page for OneDrive.](../media/m365-backup/backup-overview-page-onedrive.png)

6. On the **Choose selection method** page, you can set up OneDrive user accounts using any or all three ways. A protection scope is the scope of user accounts within OneDrive that you want to protect with Microsoft 365 Backup.

    ![Screenshot of the Choose selection method page for OneDrive.](../media/m365-backup/backup-choose-selection-method-onedrive.png)

    a. Under **Upload a list of accounts in a CSV file**, you can upload a list of accounts to back up via a CSV file.

    The CSV upload feature for bulk addition of sites or user accounts in the backup policy creation workflow can accommodate a maximum of 50,000 entries per CSV file.

    b. Under **Back up accounts that match specific filters**, you can select **Distribution lists** or **Security groups**, or both. The distribution list and security group are flattened when added, meaning the policy won't update dynamically if the groups or distribution list are updated later.

    The rule-based feature for bulk addition of user accounts via security groups or distribution lists can accommodate a maximum of three groups at a time. These rules are static and applied one time only. That is, the security groups or distribution lists are flattened at the time of adding to the backup configuration policy. For example, groups or lists won't be dynamically updated in the system if users are added or removed from the original security group.

    > [!NOTE]
    > The site last modified feature is in preview.

    c. Under **Select accounts individually**, you can search and select accounts you want to add to a backup policy.

7. Once you've made the right selections, select **Next** to create the backup policy for OneDrive.

8. On the **Review OneDrive backup policy** page, review the information to make sure it's how you want it, and then select **Create policy** (or **Update policy** if it's an update).

9. The backup policy for OneDrive is created.

    ![Screenshot of the OneDrive backup policy created page.](../media/m365-backup/backup-policy-created-onedrive.png)

    Once the sites are added to a backup policy, it might take up to 15 minutes per 1,000 sites for restore points to become available for restore.

# [SharePoint](#tab/sharepoint)

Follow these steps to set up a backup policy for SharePoint sites using Microsoft 365 Backup.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

4. On the **Microsoft 365 Backup** page, in the **SharePoint** section, select **Set up policy**.

    ![Screenshot of the Microsoft 365 Backup page with SharePoint highlighted.](../media/m365-backup/backup-setup-backup-page-sharepoint.png)

5. On the **Overview** page, review the backup features for SharePoint, and then select **Next**.

    ![Screenshot of the Overview page for SharePoint.](../media/m365-backup/backup-overview-page-sharepoint.png)

6. On the **Choose selection method** page, you can set up SharePoint sites using any or all three ways. A protection scope is the scope of user accounts within OneDrive that you want to protect with Microsoft 365 Backup.

    ![Screenshot of the Choose selection method page for SharePoint.](../media/m365-backup/backup-choose-selection-method-sharepoint.png)

    a. Under **Upload a list of sites in a CSV file**, you can upload a list of accounts to back up via a CSV file.

    The CSV upload feature for bulk addition of sites or user accounts in the backup policy creation workflow can accommodate a maximum of 50,000 entries per CSV file.

    b. Under **Back up sites that match specific filters**, you can select **Site name or URL contains** or **Site last modified**, or both.

    The rule-based feature for bulk addition of sites via site names or URL in the backup policy creation workflow can accommodate a maximum of 10 keywords at a time. Each keyword can have a minimum of three characters and maximum of 255 characters.

    > [!NOTE]
    > The site last modified feature is in preview.

    c. Under **Select sites individually**, you can search and select sites you want to add to a backup policy.

7. Once you've made the right selections, select **Next** to create the backup policy for SharePoint.

8. On the **Review SharePoint backup policy** page, review the information to make sure it's how you want it, and then select **Create policy** (or **Update policy** if it's an update).

    ![Screenshot of the Review SharePoint backup policy page.](../media/m365-backup/backup-policy-review-policy-sharepoint.png)

9. The backup policy for SharePoint is created.

    ![Screenshot of the SharePoint backup policy created page.](../media/m365-backup/backup-policy-created-sharepoint.png)

    Once the sites are added to a backup policy, it might take up to 15 minutes per 1,000 sites for restore points to become available for restore.

# [Exchange](#tab/exchange)

Follow these steps to set up a backup policy for Exchange mailboxes sites using Microsoft 365 Backup.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home).

2. Select **Settings**.

3. Select **Microsoft 365 Backup** from the list of products.

4. On the **Microsoft 365 Backup** page, in the **Exchange** section, select **Set up policy**.

    ![Screenshot of the Microsoft 365 Backup page with Exchange highlighted.](../media/m365-backup/backup-setup-backup-page-exchange.png)

5. On the **Overview** page, review and verify the backup policy attributes for Exchange, such as backup frequency, backup retention, cost details, and then select **Next**.

    ![Screenshot of the Overview page for Exchange.](../media/m365-backup/backup-overview-page-exchange.png)

6. On the **Choose selection method** page, you can set up shared or user mailboxes using any or all three ways. Other Exchange recipient types, such as room mailboxes, are not supported at this time. A protection scope is the scope of mailboxes within Exchange that you want to protect with Microsoft 365 Backup.

    > [!NOTE]
    > Adding a mailbox to the backup policy will back up the primary and archive mailboxes.

    ![Screenshot of the Choose selection method page for Exchange.](../media/m365-backup/backup-choose-selection-method-exchange.png)

    a. Under **Upload a list of mailboxes in a CSV file**, you can upload a list of accounts to back up via a CSV file.

    The CSV upload feature for bulk addition of mailboxes in the backup policy creation workflow can accommodate a maximum of 50,000 entries per CSV file.

    b. Under **Back up mailboxes that match specific filters**, you can select **Distribution lists** or **Security groups**, or both. The distribution list and security group are flattened when added, meaning the policy won't update dynamically if the groups or distribution list are updated later.

    The rule-based feature for bulk addition of mailboxes via security groups or distribution lists can accommodate a maximum of three groups at a time. These rules are static and applied one time only. That is, the security groups or distribution lists are flattened at the time of adding to the backup configuration policy. For example. groups or list won't be dynamically updated in the system if users are added or removed from the original security group.

    c. Under **Select mailboxes individually**, you can search and select mailboxes you want to add to a backup policy.

    > [!NOTE]
    > Hybrid deployments, where a user's primary mailbox resides on premises while their archive has been migrated to Exchange Online, are not supported.
    
7. Once you've made the right selections, select **Next** to create the backup policy for Exchange.

8. On the **Review Exchange backup policy** page, review the information to make sure it's how you want it, and then select **Create policy** (or **Update policy** if it's an update).

    ![Screenshot of the Review Exchange backup policy page.](../media/m365-backup/backup-policy-review-policy-exchange.png)

9. Wait for status of your policy to show as **Active** in the home screen. This might take between 15 and 60 minutes. The backup policy for Exchange is created. Select **View scope** at any time to verify the details.

    ![Screenshot of the Exchange backup policy created page.](../media/m365-backup/backup-policy-created-exchange.png)

    Once the mailboxes are added to a backup policy, it might take up to 15 minutes per 1,000 mailboxes for restore points to become available for restore.
---

## View and edit backup policies

You can edit the scope of OneDrive accounts, SharePoint sites, and Exchange mailboxes  associated with a backup policy. As part of edit, you can either add new accounts, sites, or mailboxes to or remove them from backup. Removing accounts, sites, and mailboxes from Microsoft 365 Backup doesn't mean existing backups will be deleted, rather it means additional backups won't be taken.

Select the **OneDrive**, **SharePoint**, or **Exchange** tab for steps to view and edit backup policies for that product.

# [OneDrive](#tab/onedrive)

Follow these steps to view and edit backup policies for OneDrive.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **OneDrive** section, select **Edit scope**.

    ![Screenshot showing the view and edit backup policy for OneDrive in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-onedrive.png)

2. On the **OneDrive accounts backup policy** panel, on the **Policy details** tab, select **Edit scope**.

3. You can either add new accounts to or remove accounts from an existing OneDrive backup policy.

    a. To add new accounts, on the **Backed up accounts** tab, select **+ Add accounts**.

    b. Select the accounts from the list. Once you add accounts to the list, follow the prompts to update the policy.

    ![Screenshot showing how to add user accounts to the existing OneDrive backup policy in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-add-account.png)

    c. To remove accounts from existing backup policy, on the **Backed up accounts** tab,  select the accounts from the list, and then select **Remove**. Once you have done your changes, follow the prompts to remove the accounts.

    ![Screenshot showing how to remove user accounts from OneDrive backup policy in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-remove-account.png)

4. Once you have done your changes, follow the prompts to update the policy.

    ![Screenshot of the updated OneDrive accounts backup policy panel in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-updated-account.png)

    > [!NOTE]
    > Removing accounts from backup policy means no future backups will be taken for those removed accounts. Existing backups for those accounts will not be deleted.

# [SharePoint](#tab/sharepoint)

Follow these steps to view and edit backup policies in SharePoint.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **SharePoint** section, select **Edit scope**.

    ![Screenshot showing the view and edit backup policy for SharePoint in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-sharepoint.png)

2. On the **SharePoint sites backup policy** panel, on the **Policy details** tab, select **Edit scope**.

3. You can either add new sites to or remove sites from an existing SharePoint backup policy.

    a. To add new sites, on the **Backed up sites** tab, select **+ Add sites**.

    b. Select sites by any method as discussed in the creation section. Once you have added sites to the list, follow the prompts to update the policy.

    ![Screenshot showing how to add sites to the existing SharePoint backup policy in the Microsoft 365 admin center.](../media/m365-backup/backup-sharepoint-add-site.png)

    c. To remove sites from existing SharePoint backup policy, on the **Backed up sites** tab, select the relevant sites, and then select **Remove**. Once you have done your changes, follow the prompts to remove the sites.

    ![Screenshot showing how to remove sites from SharePoint backup policy in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-remove-site.png)

4. Once you have done your changes, follow the prompts to update the policy.

    ![Screenshot of the updated SharePoint sites backup policy panel in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-updated-sites.png)

    > [!NOTE]
    > Removing sites from backup policy means no future backups will be taken for those removed sites. Existing backups for the removed sites will not be deleted.

# [Exchange](#tab/exchange)

Follow these steps to view and edit backup policies for Exchange.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **Exchange** section, select **Edit scope**.

    ![Screenshot showing the view and edit backup policy for Exchange in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-exchange.png)

2. On the **Exchange mailbox backup policy** panel, on the **Policy details** tab, select **Edit scope**.

3. You can either add new user mailboxes to or remove user mailboxes from the existing Exchange backup policy.

    a. To add new shared or user mailboxes, select **+ Add user mailboxes**.

    ![Screenshot showing how to add mailboxes to the existing Exchange backup policy in the Microsoft 365 admin center.](../media/m365-backup/backup-exchange-add-mailbox.png)

    b. To remove user mailboxes from existing backup policy, on the **Backed up sites** tab, select the user mailboxes from the list, and select **Remove**.

    ![Screenshot showing how to remove user mailboxes from Exchange backup policy in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-remove-mailbox.png)

4. Once you have done your changes, follow the prompts to update the policy.

    ![Screenshot of the updated Exchange mailbox backup policy panel in the Microsoft 365 admin center.](../media/m365-backup/backup-policy-updated-mailbox.png)

    > [!NOTE]
    > Removing mailboxes from backup policy means no future backups will be taken for those removed mailboxes. Existing backups for those mailboxes will not be deleted.

---
