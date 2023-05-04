---
title: Set up web content filtering in Microsoft Defender for Business            
description: Learn how to set up, view, and edit your web content filtering policy in Microsoft Defender for Business.            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 05/04/2023
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.reviewer: jomaun
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
search.appverid: MET150 
audience: Admin
---

# Web content filtering in Microsoft Defender for Business

## Set up web content filtering

Web content filtering enables your security team to track and regulate access to websites based on content categories. When you set up your web content filtering policy, you enable web protection for your organization. 

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), choose **Settings** > **Web content filtering** > **+ Add policy**.

2. Specify a name and description for your policy.

3. Select the categories to block. Use the expand icon to fully expand each parent category, and then select specific web content categories. To set up an audit-only policy that doesn't block any websites, don't select any categories.

   Don't select **Uncategorized**.

4. Specify the policy scope by selecting device groups to apply the policy to. Only devices in the selected device groups will be prevented from accessing websites in the selected categories.

5. Review the summary and save the policy. The policy refresh might take up to two hours to apply to your selected devices.

> [!TIP]
> To learn more about web content filtering, see [Web content filtering](../defender-endpoint/web-content-filtering.md).

## Categories for web content filtering

The following table describes web content categories you can choose for your web content filtering policy:

| Category | Description |
|:---|:---|
| **Adult content** | Sites that are related to cults, gambling, nudity, pornography, sexually explicit material, or violence |
| **High bandwidth** | Download sites, image sharing sites, or peer-to-peer hosts |
| **Legal liability** | Sites that include child abuse images, promote illegal activities, foster plagiarism or school cheating, or that promote harmful activities |
| **Leisure** | Sites that provide web-based chat rooms, online gaming, web-based email, or social networking |
| **Uncategorized** | Sites that have no content or that are newly registered |

Not all websites in these categories are malicious, but they could be problematic for your company because of compliance regulations, bandwidth usage, or other concerns. You can create an audit-only policy to get a better understanding of whether your security team should block any website categories.

Web content filtering is available on the major web browsers, with blocks performed by Windows Defender SmartScreen (Microsoft Edge) and Network Protection (Chrome, Firefox, Brave, and Opera). For more information, see [Prerequisites for web content filtering](../defender-endpoint/web-content-filtering.md#prerequisites).

## Next steps

- [Attack surface reduction capabilities in Microsoft Defender for Business](mdb-asr.md)

