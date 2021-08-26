---
title: "Create sensitivity labels"
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
description: "Learn how to create and manage sensitivity labels."
---

# Protect documents with sensitivity labels

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE3VRGT?autoplay=false]

Sensitivity labels allow you to classify and protect content that is sensitive to your business.

## Try it!

1. In the [admin center](https://admin.microsoft.com), select the **Compliance** admin center.
1. Select **Classification**, and then **Sensitivity labels**.
1. Select **Create a label**, and when the warning appears, select **Yes**.
1. Enter a **Label name**, **Tooltip**, and **Description**. Select **Next**.
1. Turn on **Encryption**. Choose when you want to assign permissions, whether you want your users' access to the content to expire, and whether you want to allow offline access.
1. **Select Assign permissions**, and then **Add these email addresses or domains**.
1. Enter an email address or domain name (such as Contoso.org).  Select **Add**, and repeat for each email address or domain you want to add.
1. Select **Choose permissions from preset or custom**.
1. Use the drop-down list to select preset permissions, such as **Reviewer** or **Viewer**, or select **Custom** permissions. If you chose **Custom**, select the permissions from the list. Select **Save**, **Save**, and then **Next**.
1. Turn on **Content marking**, and choose the markings you want to use.
1. For each marking that you choose, select **Customize text**. Enter the text you want to appear on the document, and set the font and layout options. Select **Save**, and then repeat for any additional markings. Select **Next**.
1. Optionally, turn on **Endpoint data loss prevention**. Select **Next**.
1. Optionally, turn on **Auto labeling**. Add a condition. For example, under **Detect content that contains**, select **Add a condition**. Enter the condition; for example, add a condition that if passport, Social Security, or other sensitive information is detected, the label will be added. Select **Next**.
1. Review your settings, and select **Create**. Your label has been created. Repeat this process for any additional labels you want.
1. By default, labels appear in Office apps in this order: **Confidential**, **Internal**, and **Public**. To change the order, for each label, select the three dots (more actions), and then move the label up or down. Typically, permissions are listed from the lowest to highest level of permissions.
1. To add a sub-label to a label, select the three dots (more actions), then **Add sub level**.
1. When finished, choose **Publish labels**, **Choose labels to publish**, and then **Add**. Select the labels you want to publish, and then select **Add**, **Done**, and then **Next**.
1. By default, the new label policy is applied to everyone. If you want to limit who the policy is applied to, select **Choose users or groups**, and then **Add**. Select who you want the policy to apply to, and then select **Add**, **Done**, and then **Next**.
1. If you want a default label for documents and email, select the label you want from the drop-down list. Review the remaining settings, adjust as needed, and then select **Next**.
1. Enter a **Name** and **Description** for your policy. Select **Next**.
1. Review your settings, then select **Publish**.

In order for your labels to work, each user needs to download the Azure Information Protection unified labeling client. Search the web for **AzinfoProtection_UL.exe**, then download it from the Microsoft Download Center, and run it on your users' computers.

The next time you open an Office app like Word, you'll see the sensitivity labels that were created. To change or apply a label, select Sensitivity, and choose a label.

