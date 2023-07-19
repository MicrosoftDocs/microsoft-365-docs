---
title: Set up web content filtering in Microsoft Defender for Business            
description: Learn how to set up, view, and edit your web content filtering policy in Microsoft Defender for Business.            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 06/28/2023
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
search.appverid: MET150 
audience: Admin
---

# Web content filtering in Microsoft Defender for Business

Web content filtering enables your security team to track and regulate access to websites based on content categories. When you set up your web content filtering policy, you enable web protection for your organization. 

Web content filtering is available on the major web browsers, with blocks performed by Windows Defender SmartScreen (Microsoft Edge) and Network Protection (Chrome, Firefox, Brave, and Opera). For more information, see [Prerequisites for web content filtering](../defender-endpoint/web-content-filtering.md#prerequisites).

In Defender for Business, you can have one web content filtering policy and it's applied to all users.


## Set up web content filtering

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), go to **Settings** > **Endpoints** > **Rules** > **Web content filtering**, and then select **+ Add policy**.

2. Specify a name and description for your policy.

3. Select the [categories](#categories-for-web-content-filtering) to block (do not select **Uncategorized**). Use the expand icon to fully expand each parent category, and then select specific web content categories. 

   To set up an audit-only policy that doesn't block any websites, don't select any categories. 

4. Apply the policy to all users. (Scoping to specific devices is not available in Defender for Business.)

5. Review the summary and save the policy. The policy refresh might take up to two hours to apply to your selected devices.

> [!TIP]
> To learn more about web content filtering, see [Web content filtering](../defender-endpoint/web-content-filtering.md).

## Categories for web content filtering

Not all websites in the categories that are listed below are malicious; however, these websites could be problematic for your company because of compliance regulations, bandwidth usage, or other concerns. 

You can start with an audit-only policy to get a better understanding of whether your security team should block any website categories, and edit your policy later.

The following table describes web content categories you can choose for your web content filtering policy:

| Category | Description |
|:---|:---|
| **Adult content** | Sites that are related to cults, gambling, nudity, pornography, sexually explicit material, or violence |
| **High bandwidth** | Download sites, image sharing sites, or peer-to-peer hosts |
| **Legal liability** | Sites that include child abuse images, promote illegal activities, foster plagiarism or school cheating, or that promote harmful activities |
| **Leisure** | Sites that provide web-based chat rooms, online gaming, web-based email, or social networking |
| **Uncategorized** | Sites that have no content or that are newly registered. <br/><br/>*As a best practice, do not select **Uncategorized**.* |


## Next steps

- [Set up controlled folder access](mdb-controlled-folder-access.md)
- [Enable your attack surface reduction rules](mdb-asr.md).
- [Review settings for advanced features and the Microsoft 365 Defender portal](mdb-portal-advanced-feature-settings.md).
