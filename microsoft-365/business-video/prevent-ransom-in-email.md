---
title: "Create email rules for ransomware"
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
description: "Learn how to create email rules to prevent ransomware."
---

# Create email rules to prevent ransomware

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWrWGt?autoplay=false]

Microsoft 365 helps protect your business against ransomware by preventing potentially dangerous files, like JavaScript, batch, and executables, from being opened in Outlook. To increase this level of protection by adding rules that block or warn you of additional types of files, follow these steps.

## Try it!

1. From the admin center at [https://admin.microsoft.com](https://admin.microsoft.com), choose **Exchange** under **Admin centers**.
1. From the menu on the left, choose **mail flow**.
1. On the rules tab, choose the arrow next to the plus (+) symbol, and then choose **Create a new rule**.
1. On the **new rule** page, enter a name for your rule, scroll to the bottom, and then choose **More options**.
1. Under **Apply this rule if**, select **Any attachment**, and then select **file extension includes these words**.
1. In the box under **specify words or phrases**, enter the file extensions that you want the rule to be applied to, such as file extensions that can contain macros. Use the plus (+) symbol to add them one at a time.

    Learn more about file types by reading [Protect against ransomware](../admin/security-and-compliance/secure-your-business-data.md#ransomware).

1. Scroll down to review your list, and then choose **OK**.
1. On the **new rule** page, choose **add condition**, and then choose a condition under **Do the following**.
1. You have many rule options to choose from, but in this example we'll choose to **Notify the recipient with a message**.
1. Enter message text for your notification, and then chose **OK**.
1. Optional: On the **new rule** page, choose **add exception**, and enter any details for exceptions to your rule, such as messages from trusted senders.
1. On the new rule page, choose **Save**, and review the rule summary information provided.