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
1. Scroll down to **Increase protection from advanced threats**. Select **View**, **Manage**,and then **ATP Safe Links**.
1. Under **Policies that apply to the entire organization**, choose the **Default** policy, and then select the **Edit** icon.
1. Enter a URL that you want to block.
1. Select **Use safe links in Office apps, Office for iOS and Android**; select **Do not track when users click safe links**; and select **Do not let users click through safe links to original URL**. These might already be selected if you set up the default policy. Select **Save**.
1. Under **Policies that apply to specific recipients**, choose **Recommended safe links rule**, and then select the **Edit** icon.
1. Select **settings**, scroll down, enter the URL that you do not want to be checked, and then select the **Add** icon.
1. Select **applied to**, and then select your domain name. Select any additional domains that you want the rule applied to. Select **add**, **OK**, and then **Save**.

ATP Safe Links are now configured. Allow up to 30 minutes for your changes to take effect.

When a user receives an email with links, the links will be scanned. If the links are deemed safe, they'll be clickable. However, if the link is on the blocked list, users will see a message that it's been blocked.