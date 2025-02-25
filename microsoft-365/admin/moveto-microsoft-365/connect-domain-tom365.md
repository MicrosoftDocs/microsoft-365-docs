---
title: "Connect your domain to Microsoft 365"
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
ms.date: 01/07/2021
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- highpri
- M365-subscription-management 
- Adm_O365
ms.custom: 
- VSBFY23
- AdminSurgePortfolio
- adminvideo
- admindeeplinkMAC
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to connect your domain to Microsoft 365."
---

# Connect your domain to Microsoft 365 for business

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

## Watch: Connect your domain to Microsoft 365

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198216).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=b9007f8d-dd2b-4ceb-bf40-6529c45ad321]

Once you’ve set up Microsoft 365 and moved your email data from Google Workspace, you can connect your domain to Microsoft 365. 

First you will need to delete existing DNS records from Google, and then we can add new DNS records from Microsoft 365.

1. Sign into your Google Workspace admin console at [admin.google.com](https://admin.google.com).
1. Select **Domains**, **Manage domains**, **View details**, **Manage domain**, then **DNS** in the left nav.
1. Scroll down to **Synthetic records**, open **Google Workspace**, select **Delete**, then **Delete** again.
1. Scroll down to **Custom resource records** and delete any existing DNS records that appear, including any you may have created previously for Microsoft 365.
1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
1. In the left nav, choose, **Show all** > **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.
1. Then choose your default domain.
1. Select **Continue setup**, then, to connect your domain, choose  **Continue**.
1. Scroll down to view the DNS records that need to be copied to Google.
1. Open **MX Records**, and under **Points to address or value**, copy the record.
1. Return to Google, and in the **Custom resource records** section, open the record type dropdown and select **MX**.
1. In the **Data** field, paste the record you copied.
1. Then select **Add**.
1. Repeat the process for CNAME and TXT records and add the values in the Google DNS management page.
1. Return to the Microsoft 365 admin center and select **Continue**.

    Your domain setup is complete.
