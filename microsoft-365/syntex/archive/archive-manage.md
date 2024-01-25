---
title: Manage Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/15/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to archive, reactivate, and manage sites in Microsoft 365 Archive.
---

# Manage Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change. The feature is currently rolling out and might not yet be fully available to all organizations.

## Archive a site

Global admins and SharePoint admins can archive both non-group connected sites and group-connected sites from the SharePoint admin center. Archiving group-connected sites will archive only the site, and the rest of the group will continue being active. As soon as a site is archived, it stops consuming storage from active storage quota, and the storage starts being counted towards Microsoft 365 Archive storage. (There might be a delay in the change in storage being reflected in the admin center.)

To learn more about different archive states, see [Archive states in Microsoft 365 Archive (Preview)](archive-states.md).

When a site is archived, compliance features such as eDiscovery and retention labels continue to be applied to the site.

1. In the SharePoint admin center, go to [**Active sites**](https://go.microsoft.com/fwlink/?linkid=2185220), and sign in with an account that has [admin permissions](/sharepoint/sharepoint-admin-role) for your organization.

   > [!NOTE]
   > If you have Office 365 operated by 21Vianet (China), sign in to the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=850627), then browse to the SharePoint admin center and open the **Active sites** page.

2. In the left column, select one or more sites.

3. Select **Archive**, and to confirm, select **Archive**.

4. Archived sites can be seen on the **Archived sites** page in the SharePoint admin center.

    ![Screenshot of the Archived sites page in the SharePoint admin center.](../../media/content-understanding/archived-sites-page.png)

    > [!NOTE]
    > To archive a hub site, you first need to unregister it as a hub site. Archiving Microsoft Teams-connected sites with private or shared channel sites is not supported. Teams sites with standard channels are supported.

## Manage archived sites

Archived sites can be reactivated or deleted. Deletion of archived sites follows the same behavior as that of active sites; that is, a site doesn't need to be reactivated before being deleted. However, sites in the “Reactivating” state can't be deleted until reactivation completes.

Admins can view details of the site, such as the URL, Archive Status, or Storage, from the **Archived sites** page.

## Reactivate a site

If there's a need to access the site content again, the sites need to be reactivated. After a site is archived, it stays in the “Recently Archived” state for seven days. All reactivations from this state are free of cost and instantaneous. After seven days, the site enters the “Archived” state. Reactivations might take up to 24 hours, and have an associated reactivation cost. To learn more about the costs and how pricing works, see [Pricing model](archive-pricing.md).

After reactivation, the site will move back to the **Active sites** page. The site will resume its normal function, and the users will have the same access rights to the site and its content as they did before the site was archived. After reactivation is complete, the storage consumed by the site will accrue to your storage quota consumption.

1. In the SharePoint admin center, go to [**Active sites**](https://go.microsoft.com/fwlink/?linkid=2185220), and sign in with an account that has [admin permissions](/sharepoint/sharepoint-admin-role) for your organization.

   > [!NOTE]
   > If you have Office 365 operated by 21Vianet (China), sign in to the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=850627), then browse to the SharePoint admin center and open the **Active sites** page.

2. In the left column, select a site that needs to be reactivated.

3. On the command bar, select **Archive**.

4. On the **Archive** pane, select **Reactivate**.

5. If you're trying to reactivate a site from “Archived” state, you'll see a confirmation pop-up that shows an estimated price for reactivation. Select **Confirm** to reactivate. The site will enter the “Reactivating” state. It will move to active sites once reactivation is complete.

    ![Screenshot of an example site that you are reactivating in the SharePoint admin center.](../../media/content-understanding/reactivate-site-example.png)

When you reactivate a site, its permissions, lists, pages, files, folder-structure, site-level policies, and other metadata will revert to the prearchival state, except if files are deleted from archived sites. The only two exceptions are when files are deleted while the site is archived:

- Content in the recycle bin expires naturally, and that expiration continues while archived.
- Content marked to be deleted by retention policies will still be deleted as normal.

Other than these two exceptions, you can expect the site to be unchanged.  

## Change the archive status of site via PowerShell

You can also change the status of an archived site by using the PowerShell cmdlet [**Set-SPOSiteArchiveState**](/powershell/module/sharepoint-online/set-spositearchivestate?view=sharepoint-ps).

## Site templates supported

|Template ID  |Template  |
|---------|---------|
|1     |Document Workspace  |
|4     |Wiki Site           |
|9     |Blog                |
|32    |News Site           |
|64    |Team Site           |
|68    |Communication Site  |

 
<!---
|Template ID  |Template  |
|---------|---------|
|0     |Global         |
|1     |Team Site         |
|2     |Meeting Workspace         |
|4     |Wiki Site         |
|7     |Document Center         |
|53     |Publishing Site         |
|60     |         |
|61     |Visio Process Repository         |
|64     |Group         |
|68     |Site Page Publishing / Comms Site         |
|95     |Developer Site         |
|2009     |Team Site – SharePoint Online configuration         |
|6001     |Content Center         |
|6115     |Project Site         |
|6215     |Microsoft Project Site         |
|14483     |Records Center         |
--->