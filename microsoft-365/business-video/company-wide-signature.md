---
title: "Create a company-wide signature"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
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
description: "Learn how to create a company-wide email signature."
---

# Create a company-wide email signature

## Watch: Create a company-wide email signature

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1IEWf?autoplay=false]

A company-wide email signature appears on every email sent by people in your organization. You can use it to display important details, like your company contact information or a legal disclaimer. 

## Try it!

1. In the Microsoft 365 admin center, select **Exchange**.
1. Select **Mail flow**.
1. Select **Add +**, and then select **Apply disclaimers**.
1. On the **New rule** page:
    1. Enter a name for the rule.
    1. From the **Apply this rule if** drop-down list, select **Apply to all messages**.
    1. In the **Do the following** drop-down list, verify that **Append the disclaimer** is displayed.
    1. On the right side of the page, select **Enter text**, and then enter the text for your email signature in the **Specify disclaimer** text box. You can improve the look of your signature by formatting the text with HTML.
    1. If you want an image to appear in your signature, you'll need to use a publicly available URL for that image. Browse to the image on the web, right-click it, and select **Copy image address**. Paste the address into the **Specify disclaimer** text box. Select **OK**, then scroll down.
    1. To make sure the signature works with encrypted emails, add a fallback option. On the right of the page, choose **Select one**, choose **Wrap**, and then select **OK**.
    1. Scroll down and leave the mode set to **Enforce**, and then select **Save**.
1. A warning message will appear. Select **Yes** to apply the rule to all future messages.

    Your signature has been created. When you send your next email, you won't see the signature you just created, but the email recipients will see it.