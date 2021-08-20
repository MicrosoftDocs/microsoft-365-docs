---
title: "Migrate Google files to Microsoft 365 for business "
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- adminvideo
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to Migrate Google files to Microsoft 365 for business by using Mover."
---

# Migrate Google files to Microsoft 365 for business 

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4MhaD?autoplay=false]

When you move to Microsoft 365 for business, you'll want to migrate your files from Google Drive. You can use the Mover app to move files from personal and shared Drives. For more information, see [Mover Cloud Migration](/sharepointmigration/mover-plan-migration).

> [!NOTE]
> Mover will make a copy of the files and move the copies to Microsoft 365 for business. The original files will stay in Google Drives also.

## Before you start

All the users should have signed in to Microsoft 365 for business and set up their OneDrive for Business. To do this, go to [office.com](https://office.com), sign in with your Microsoft 365 for business credentials, and then choose OneDrive.

## Try it!

### Install Mover

1. Sign in to your Google Workspace admin console at [admin.google.com](https://admin.google.com).

1. Choose **Apps** > **Google Workspace Marketplace apps** > **Add app to Domain Install list**.

1. Search for Mover and select it.

1. Choose **Domain Install**, then **Continue**.

1. Review the permissions, select the checkbox to agree to the terms,then select **Allow**, choose **Next**, then **Done**.

### Create Connectors and run the migration

1. Return to **Google Workspace Marketplace apps**.
1. Refresh your browser, and select the **Mover** app.
1. Scroll down and choose the universal navigation link.
1. Select **Authorize New Connector**, locate **G Suite (Admin)**, and choose **Authorize**.
1. Change the **Display Name**, if you want, then select **Authorize**.
1. Choose a Google admin account, review the permissions,then select **Allow**.

    Mover displays the number of team drives and user drives it discovered. 

1. Under **Select destination**, choose **Authorize New Connector**, locate **Office 365**, and select **Authorize**.
1. To grant permissions to the Mover app in your Azure Active Directory, navigate to [aka.ms/Office365MoverAuth](https://aka.ms/Office365MoverAuth).
1. Select **Office 365 Mover**, **Permissions**, **Grant admin consent for your company**.
1. Choose your account, review the permissions, and select **Accept**.
1. Choose **Properties** and verify that **User assignment required?** is turned on.
1. Return to the Mover app, change the **Display Name**, if you want, choose **Authorize**,then select a Microsoft admin account.

    Mover will inform you about the number of SharePoint Online (or SPO) sites and users it discovered.
1. Choose **Continue Migration Setup**, select **Add Users**, then **Automatically Discover and Add Users**.

    The Mover app will attempt to map drives from the Source Path in Google, to the Destination Path in Microsoft 365. 

    If a drive doesn't map automatically, add its destination path to a CSV file, which we'll use later to migrate the shared drive to a SharePoint document library. 

1. In this case, we have added a SharePoint site called Migrated files, and taken note of the URL for the documents page. 
1. We then created a CSV file using the format of Source Path, Destination Path, and Tags. 

    For details see [aka.ms/movercsv](/sharepointmigration/mover-create-migration-csv).

    When adding the Destination Path URL, remove everything after Shared Documents. For example, this full URL won't work:
`https://TENANT01.sharepoint.com/sites/SiteName/Shared Documents/Forms/AllItems.aspx`

    Change it to:
`https://TENANT01.sharepoint.com/sites/SiteName/Shared Documents`

1. Once your CSV file is ready, select **Migration Actions**, **Add to Migration**, **Choose a file to upload**.
1. Navigate to your CSV file, select it,then choose **Open**.
1. Select the user drives whose files you want to migrate, then choose **Start Migrating Users**.
1. Review the migration information, choose when to start the migration, agree to the **Terms and Conditions**, then select **Continue**.

The Mover app will inform you when the migration process is complete.