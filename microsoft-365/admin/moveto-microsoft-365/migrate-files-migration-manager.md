---
title: "Migrate Google files to Microsoft 365 for business"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 05/31/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- highpri
- M365-subscription-management 
- Adm_O365
- must-keep
ms.custom: 
- VSBFY23
- AdminSurgePortfolio
- adminvideo
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to migrate Google files to Microsoft 365 for business by using the SharePoint Migration Manager."
---

# Migrate Google files to Microsoft 365 for business with Migration Manager

> [!NOTE]
> When you move to Microsoft 365 for business from Google Workspace, you'll want to migrate your files from Google Drive. You can use the SharePoint Migration Manager to move files from personal and shared Drives. This video and summary of the required steps gives you an overview of how to do this. For more information, see [**Migrate Google Workspace to Microsoft 365 with Migration Manager**](/sharepointmigration/mm-google-overview).

## Watch: Migrate Google files to Microsoft 365 for business

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198217).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=521941e5-33c4-402c-85c2-1abee2d3854b]

> [!NOTE]
> Migration Manager will make a copy of the files and move the copies to Microsoft 365 for business. The original files will stay in Google Drives also.

## Before you start

All the users should have signed in to Microsoft 365 for business and set up their OneDrive. To do this, go to [office.com](https://office.com), sign in with your Microsoft 365 for business credentials, and then choose OneDrive.

> [!NOTE]
> Currently, Migration Manager isn't available for Google on any of the Government clouds.

## Install the Microsoft 365 Migration App

Use the following steps to install the Microsoft 365 Migration app in your Google Workspace environment.

1. In the SharePoint Admin Center, select **Migration**.
1. On the **Migration** page, in the **Google Workspace** section, select **Get Started**.
1. On the **Google Drive migration** page, select **Connect to Google Workspace**.
1. On the **Install the migration app** page, select **Install and authorize**.
1. On the **Google Workspace Marketplace** page, select **Sign in** and enter your Google Workspace admin credentials.
1. Select **Admin Install**.
1. Select **Continue**.
1. Select the checkbox, then select **Finish**.
1. When the installation completes, select **Done**.
1. Return to the **Install the migration app** page, and select **Next**.
1. Select **Sign in to Google Workspace**, and then enter your Google Workspace admin credentials.
1. Select **Finish**.

## Select and scan your drives

After installing the Microsoft 365 Migration App in your Google environment, you can now select the drives you want to migrate and then scan them to make sure that they're safe to copy to Microsoft 365.

1. On the **Drives** tab, select the Google drives you want to copy to Microsoft 365.
2. Select **Scan**. When the scan completes, the drives will show a scan status of **Ready to migrate**.
3. Select **Copy to migration**.

## Start the migration

After selecting and scanning the drives you want to migrate, use the following steps to migrate them.

1. On the **Drive migrations** tab, verify the destination paths of the drives you want to migrate. Edit them if needed.
2. Select the drives you want to migrate, then select **Migrate**.
3. When migration successfully completes, each drive will show a **Migration status** of **Completed**.
