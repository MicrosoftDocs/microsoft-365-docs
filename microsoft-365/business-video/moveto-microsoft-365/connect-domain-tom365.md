---
title: "Connect your domain to Microsoft 365"
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
- okr_smb
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to connect your domain to Microsoft 365."
---

# Connect your domain to Microsoft 365 for business

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4LFpy?autoplay=false]

Once you’ve set up Microsoft 365 and moved your email data from Google Workspace, you can connect your domain to Microsoft 365. 

First you will need to delete existing DNS records from Google, then we can add new DNS records from Microsoft 365.

## Try it!

1. Sign into your Google Workspace admin console at [admin.google.com](https://admin.google.com).
1. Select **Domains**, **Manage domains**, **View details**, **Manage domain**, then **DNS** in the left nav.
1. Scroll down to **Synthetic records**, open **Google Workspace**, select **Delete**, then **Delete** again.
1. Scroll down to **Custom resource records** and delete any existing DNS records that appear, including any you may have created previously for Microsoft 365.
1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com).
1. In the left nav, choose, **Show all**, **Settings**, **Domains**.
1. Then choose your default domain.
1. Select **Continue setup**, then, to connect your domain, choose  **Continue**.
1. Scroll down to view the DNS records that need to be copied to Google.
1. Open **MX Records**, and under **Points to address or value**, copy the record.
1. Return to Google, and in the **Custom resource records** section, open the record type dropdown and select **MX**.
1. In the **Data** field, paste the record you copied.
1. Then select **Add**.
1. Repeat the process for CNAME and TXT records and add the values in the Google DNS management page.
1. Return to the Microsoft 365 Admin center and select **Continue**.

    Your domain setup is complete.