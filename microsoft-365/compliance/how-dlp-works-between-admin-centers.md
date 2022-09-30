---
title: How DLP works with Compliance portal & Exchange admin center
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.collection: 
- tier1
- purview-compliance
ms.localizationpriority: medium
search.appverid: 
- MOE150
- MET150
ms.assetid: a7e4342a-a0a1-4b43-b166-3d7eecf5d2fd
description: "Learn how DLP in the Security & compliance portal works with DLP and mail flow rules (transport rules) in the Exchange admin center."
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkEXCHANGE
---

# How DLP works between the Compliance portal and Exchange admin center

In Microsoft Purview, you can create a data loss prevention (DLP) policy in two different admin centers:
  
- In the **Microsoft Purview compliance portal**, you can create a single DLP policy to help protect content in SharePoint, OneDrive, Exchange, Teams, and now Endpoint Devices. We recommend that you create a DLP policy here. For more information, see [Data Loss Prevention reference](data-loss-prevention-policies.md).
    
- In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>, you can create a DLP policy to help protect content only in Exchange. This policy can use Exchange mail flow rules (also known as transport rules), so it has more options specific to handling email. For more information, see [DLP in the Exchange admin center](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention).
    
DLP policies created in these admin centers work side by side - this article explains how.
 
  
[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## How DLP in the Compliance portal works with DLP and mail flow rules in the Exchange admin center

After you create a DLP policy in the Compliance portal, the policy is deployed to all of the locations included in the policy. If the policy includes Exchange Online, the policy's synced there and enforced in exactly the same way as a DLP policy created in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>. 
  
If you've created DLP policies in the Exchange admin center, those policies will continue to work side by side with any policies for email that you create in the Compliance portal. But note that rules created in the Exchange admin center take precedence. All Exchange mail flow rules are processed first, and then the DLP rules from the Compliance portal are processed.
  
It means:
  
- Messages that are blocked by Exchange mail flow rules won't get scanned by DLP rules created in the Compliance portal.
- Messages that are quarantined by Exchange mail flow rules or any other filters run before DLP won't be scanned by DLP. 
- If an Exchange mail flow rule modifies a message in a way that causes it to match a DLP policy in the Compliance portal, such as adding external users, then the DLP rules will detect it and enforce the policy as needed.
    
Also note that Exchange mail flow rules that use the "stop processing" action don't affect the processing of DLP rules in the Compliance portal - they'll still be processed.
  
## Policy tips in the Compliance portal vs. the Exchange admin center

Policy tips can work either with DLP policies and mail flow rules created in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>, or with DLP policies created in the Compliance portal, but not both. It is because these policies are stored in different locations, but policy tips can draw only from a single location.
  
If you've configured policy tips in the Exchange admin center, any policy tips that you configure in the Compliance portal won't appear to users in Outlook on the web, and Outlook 2013 and later until you turn off the tips in the Exchange admin center. This ensures that your current Exchange mail flow rules will continue to work until you choose to switch over to the Compliance portal.
  
>[!Note]
>While policy tips can draw only from a single location, email notifications are always sent, even if you're using DLP policies in both the Compliance portal and the Exchange admin center.
