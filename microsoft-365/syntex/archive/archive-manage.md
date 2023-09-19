---
title: Manage Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/18/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: CSH, archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to archive, reactivate, and manage sites in Microsoft 365 Archive.
---

# Manage Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change. Before you begin, read the [Microsoft 365 preview terms and conditions](archive/archive.preview-terms.md).

## Archive sites

Both global admins and SharePoint admins can archive both non-Group connected, and Group-connected sites from the SharePoint admin center. Archiving Group-connected sites will archive only the site, and the rest of the group will continue being active. As soon as a site is archived, it stops consuming storage from Active storage quota, and the storage starts being counted towards Microsoft 365 Archive storage. (There might be a delay in the change in storage being reflected in the user interface.)

When a site is archived, compliance features such as eDiscovery and retention labels continue to be applied on the site.

1. In the SharePoint admin center, go to [**Active sites**](https://go.microsoft.com/fwlink/?linkid=2185220), and sign in with an account that has [admin permissions](https://learn.microsoft.com/en-us/sharepoint/sharepoint-admin-role) for your organization.

   > [!NOTE]
   > If you have Office 365 operated by 21Vianet (China), sign in to the Microsoft 365 admin center, then browse to the SharePoint admin center and open the **Active sites** page.

2. In the left column, select one or more sites.

3. Select **Archive**, and to confirm, select **Archive**.

4. Archived sites can be seen on the **Archived sites** page in the SharePoint admin center.

    ![Screenshot of the Archived sites page in the SharePoint admin center.](../media/content-understanding/turn-on-archive-admin-center.png)

> [!NOTE]
> To archive a hub site, you first need to unregister it as a hub site. Archiving teams connected sites with private or shared channel sites is not supported. Teams sites with standard channels are supported.

 
## Manage archived sites

Archived sites can be reactivated or deleted. Deletion of archived sites follows the same behavior as that of active sites; that is, a site does not need to be reactivated before being deleted. However, sites in the “Reactivating” state cannot be deleted until reactivation completes.

Admins can view details of the site, such as the URL, Archive Status, or Storage, from the **Archived sites** page.

## Reactivate a site in the SharePoint admin center

If there is a need to access the site contents again, the sites need to be reactivated. After a site is archived, it stays in “Recently Archived” state for 7 days. All reactivations from this state are free of cost and instantaneous. After 7 days, the site enters the “Archived” state. Reactivations might take up to 24 hours, and have an associated reactivation cost. To learn more about the costs and how pricing works, refer to Section ‘Charge Model’.

After reactivation, the site will move back to active sites page. It will be reactivated in-place, and end users will be able to access the site and its contents as per the permissions they had when the site was archived. After reactivation is complete, the storage consumed by the site will accrue to your storage quota consumption.

1. In the SharePoint admin center, go to **Archived sites**, and sign in with an account that has admin permissions for your organization.

> [!NOTE]
> If you have Office 365 operated by 21Vianet (China), sign in to the Microsoft 365 admin center, then browse to the SharePoint admin center and open the **Active sites** page.

1. In the left column, select a site that needs to be reactivated.

2. Select **Archive** in the command bar.

3. In the **Archive** pane, select **Reactivate**.

4. If you are trying to reactivate a site from “Archived” state, you will see a confirmation pop up, showcasing an estimated price for reactivation. Select **Confirm** on the pop up to reactivate. The site will enter the “Reactivating” state. It will move to active sites once reactivation is complete.

When reactivating a site, its permissions, lists, pages, files, folder-structure, site-level policies, and other metadata will all be the same state as they were when the site was archived. The only two exceptions are when files are deleted while the site is archived:

- Content in the recycle bin expires naturally, and that expiration continues while archived.
- Content marked to be deleted by retention policies will still be deleted as normal.

Other than these two exceptions, you can expect the site to be unchanged.  

## Archive States

|Archive state  |Description  |Allowed operations  |
|---------|---------|---------|
|Recently Archived    |This is the first stage after a site is archived and is valid for 7 days. A site in this stage can be reactivated without any cost and will be reactivated instantaneously.         |Reactivate, Delete         |
|Archived    |he site enters this state after 7 days after being archived. In this stage, reactivations will be charged, and may take a few hours.         |Reactivate, Delete         |
|Reactivating     |If a site is reactivated from “Archived” state, it will be in this stage until reactivation is complete. After this, the site will be active, and will be available in Active sites page.         |None         |
