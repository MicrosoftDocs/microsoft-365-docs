---
title: "Manage Safe Links"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
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
description: "Learn how to manage Safe Links to protect your business from malicious sites."
---

# Manage Safe Links

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWvdwy?autoplay=false]

Microsoft Defender for Office 365 , formerly called Microsoft 365 ATP, or Advanced Threat Protection, helps protect your business against malicious sites when people click links in Office apps.

## Try it!

1. Go to the [admin center](https://admin.microsoft.com), and select **Setup**.
2. Scroll down to **Increase protection from advanced threats**. Select **Manage**,and then **Safe Links**.
3. Select **Global Settings** and in **Block the following URLs**, enter the URL that you want to block.
4. Select **Use Safe Links in Office 365 app**, select **Do not track when users click protected links in Office 365 apps**, and select **Do not let users click through to the original URL in Office 365 apps**. These might already be selected if you set up the default policy. Select **Save**.

Safe Links are now configured. Allow up to 30 minutes for your changes to take effect.

When a user receives an email with links, the links will be scanned. If the links are deemed safe, they'll be clickable. However, if the link is on the blocked list, users will see a message that it's been blocked.
