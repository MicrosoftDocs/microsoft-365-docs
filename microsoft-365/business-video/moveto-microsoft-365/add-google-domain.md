---
title: "Add your Google Workspace domain"
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
description: "Learn how to move your domain from Google Workspace to Microsoft 365 for business."
---

# Add your Google Workspace domain to Microsoft 365

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4LWKT?autoplay=false]

Add your Google Workspace domain to Microsoft 365 for business so you can keep using your business email address.

## Try it!

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com).
1. In the Microsoft 365 Admin Center, in the left nav, select **Show all**, **Settings** and then **Domains**.
1. Choose **Add domain**, enter your domain name then select **Use this domain**. 
1. Choose, **Add a TXT record to the domains DNS records**, select **Continue**, and copy the TXT value. 
1. Go back to the [Google Admin Console](https://admin.google.com), choose **Domains**, **Manage domains**, **View Details**, **Manage domain**, **DNS**, and  then scroll down to **Custom resource records**. 
1. Open the record type drop-down, choose **TXT**, paste the TXT value you copied then select **Add**. 

    The update usually takes a fact within a few minutes but may take up to 48 hours. 
1. Return to the Microsoft 365 Admin Center, select **Verify**,and then **Close**. 
1. To set your domain as the primary email for your users, in the left nav, select **Users** > **Active users**. 
1. Choose a user, select **Manage username and email**, **Edit**, select your domain from the dropdown, then select **Done** and **Save changes**. 
1. Repeat this process for each user. 

    When you're finished, you'll be ready to install Office apps and migrate your email and calendar items to Microsoft 365. 