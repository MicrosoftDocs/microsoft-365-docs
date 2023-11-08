---
title: View and edit backup policies in Microsoft 365 Backup (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/15/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: backup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to view and edit backup policies in Microsoft 365 Backup.
---

# View and edit backup policies in Microsoft 365 Backup (Preview)

> [!NOTE]
> This feature is currently in public preview and subject to change.

## View and edit backup policies for OneDrive

You can edit the scope of OneDrive accounts associated with a backup policy. As part of edit, you can either add new accounts to or remove accounts from backup. Removing accounts from Microsoft 365 Backup does not mean existing backup will be deleted rather it means additional backups will not be taken.

To view and edit backup policies for OneDrive, follow these steps.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **OneDrive** section, select **Edit scope**.
 
Screenshot 23 View/Edit backup policy for OneDrive

2. To edit an existing backup policy, select **Edit Scope**.

3. You can either add new accounts to or remove accounts from an existing OneDrive backup policy.

    a. To add new accounts, select **+ Add accounts**.

    b. Select the accounts from the list. Once you have added accounts to the list, follow the prompts to update the policy.
 
Screenshot 24 Add user accounts to existing OneDrive backup policy

    c. To remove accounts from existing backup policy, select accounts from the list of **Edit scopes** and select **Remove**. Once you have done your changes, follow the prompts and select **Remove**.

4. Once you have done your changes, you can follow the prompts to update the policy.

Screenshot 25 Remove user accounts from OneDrive backup policy

> [!NOTE]
> Removing accounts from backup policy means no future backups will be taken for those removed accounts. Existing backups those accounts will not be deleted.

### View and edit backup policies for SharePoint

You can edit the scope of SharePoint sites associated with a backup policy. As part of edit, you can either add new sites or remove sitess from an existing backup policy. Removing sites from Microsoft 365 Backup does not mean existing backup for these removed sites will be deleted, rather it means future backups for these removed sites will not be taken.

To view and edit backup policies in SharePoint, follow these steps.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **SharePoint** section, select **Edit scope**.

2. In the window that opens, you can:

    a. To add new accounts, select **+ Add sites**.

    b. Select sites by any method as discussed in the creation section. Once you have added sites to the list, follow the prompts to update the policy.

Screenshot 26 Select Add sites to add site(s) to existing backup policy

    c. To remove sites from existing SharePoint backup policy, select the relevant sites, and then select **Remove**. Once you have done your changes, follow the prompts to remove the sites. 

Screenshot 27 Select the sites you want to remove from SharePoint backup policy

> [!NOTE]
> Removing accounts from backup policy means no future backups will be taken for those removed accounts. Existing backups those accounts will not be deleted.

## View and edit backup policies for Exchange

You can edit the scope of Exchange accounts associated with a backup policy. You can either add new accounts or remove accounts from backup. Removing accounts from Microsoft 365 Backup does not mean existing backup will be deleted, it means additional backups will not be taken.

To view and edit backup policies for Exchange, follow these steps.

1. In the Microsoft 365 admin center, on the **Microsoft 365 Backup** page, in the **Exchange** section, select **Edit scope**.

2. In the window that opens, select **Edit Scope**.

3. You can either add new user mailboxes to or remove user mailboxes from the existing Exchange backup policy.

    a. To add new user mailboxes, select **+ Add user mailboxes**.

    b. To remove user mailboxes from existing backup policy, select user mailboxes from the list of **Edit scopes** and select **Remove**.

Screenshot 28 Remove user mailboxes from Exchange backup policy

4. Once you have done your changes, follow the prompts to update the policy.

> [!NOTE]
> Removing accounts from backup policy means no future backups will be taken for those removed accounts. Existing backups those accounts will not be deleted.
