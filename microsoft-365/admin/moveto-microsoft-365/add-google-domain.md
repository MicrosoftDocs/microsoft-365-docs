---
title: "Add your Google Workspace domain"
f1.keywords:
- NOCSH
ms.author: twerner
author: twernermsft
manager: scotv
ms.date: 08/29/2024
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
description: "Learn how to move your domain from Google Workspace to Microsoft 365 for business."
---

# Add your Google Workspace domain to Microsoft 365

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

## Watch: Add Google Workspace domain

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198105).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=0ede3d98-5bb2-4f48-81d8-3d5634125446]

Add your Google Workspace domain to Microsoft 365 for business so you can keep using your business email address.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
1. In the Microsoft 365 admin center, in the left nav, select **Show all** > **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">**Domains**</a>.
1. Choose **Add domain**, enter your domain name then select **Use this domain**. 
1. Choose, **Add a TXT record to the domains DNS records**, select **Continue**, and copy the TXT value. 
1. Go back to the **_formerly Google Admin_**, now [Squarespace Console](https://domains.squarespace.com), choose **Domains**, **Manage domains**, **View Details**, **Manage domain**, **DNS**, and  then scroll down to **Custom resource records**. 
1. Open the record type drop-down, choose **TXT**, paste the TXT value you copied then select **Add**. 

    The update usually takes effect within a few minutes but may take up to 48 hours. 
1. Return to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, select **Verify**, and then **Close**. 
1. To set your domain as the primary email for your users, in the left nav, select **Users** > [**Active users**](https://go.microsoft.com/fwlink/p/?linkid=834822). 
1. Choose a user, select **Manage username and email**, **Edit**, select your domain from the dropdown, then select **Done** and **Save changes**. 
1. Repeat this process for each user. 

    When you're finished, you'll be ready to install apps in Microsoft 365 and migrate your email and calendar items to Microsoft 365. 
