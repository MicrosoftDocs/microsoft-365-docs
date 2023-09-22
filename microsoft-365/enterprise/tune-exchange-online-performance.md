---
title: "Tune Exchange Online performance"
ms.author: krowley
author: MSFTTracyP
manager: laurawi
ms.date: 12/14/2017
audience: Admin
ms.topic: troubleshooting
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
f1.keywords:
- CSH
ms.custom: Adm_O365
ms.assetid: 026e83cb-a945-4543-97b0-a8af6e80ac61
description: "This article contains general tips and links to other resources that tell you how to improve performance of Exchange Online."
---

# Tune Exchange Online performance

This article contains general tips and links to other resources that tell you how to improve performance of Exchange Online, particularly in front of a migration. This article is part of the [Network planning and performance tuning for Office 365](./network-planning-and-performance.md) project.
   
## Things to consider in order to improve Exchange Online performance

To improve the speed of migration and reduce your organization's bandwidth constraints for Exchange Online, consider the following:
  
- **Reduce mailbox sizes.** Smaller mailbox size improves migration speed. 
    
- **Use the mailbox move capabilities with an Exchange hybrid deployment.** With an Exchange hybrid deployment, offline mail (in the form of .OST files) does not require re-download when migrating to Exchange Online. This significantly reduces your download bandwidth requirements. 
    
- **Schedule mailbox moves to occur during periods of low Internet traffic and low on-premises Exchange use.** When scheduling moves, migration requests are submitted to the mailbox replication proxy and may not take place immediately. 
    
- **Use lean popouts for Outlook on the web.** Lean popouts provide smaller, less memory-intensive versions of certain email messages in Microsoft Edge or Internet Explorer by rendering some components on the server. For more information, see [Use lean popouts to reduce memory used when reading mail messages](https://support.office.com/article/a6d6ba01-2562-4c3d-a8f1-78748dd506cf).


## General advice

- Make certain that DNS lookup for outlook.office.com enters the MS-datacenter at a logical entry location for your location.
- Research mailbox caching and choose the appropriate options (re. caching period, shared mailbox caching, et cetera).
- Keep your Outlook data from passing over VPN connections (to a central office) before it goes over the Internet.
- Be sure your mailbox data adheres to the limitations on folder, and item, amounts.
    
For more information about Exchange migration performance, see [Office 365 migration performance and best practices](https://support.office.com/article/d9acb371-fd6c-4c14-aa8e-db5cbe39aa57).

