---
title: "What's the purpose of the Office 365 CNAME record for MSOID?"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.collection:
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- BCS160
- MET150
- MOE150
ROBOTS: NOINDEX
description: "Learn more about the 'MSOID' CNAME record in Office 365 that directs you to the best server for authentication processes, so you'll getter a faster response."
monikerRange: 'o365-21vianet'
---

# What's the purpose of the Office 365 CNAME record for MSOID?

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
> [!NOTE]
> The following only Applies to **Office 365 operated by 21Vianet.
  
You may wonder why you need to add the "MSOID" CNAME record in Office 365. This is a record that has to be added for all custom domains, no matter which subscription you use. Why do you need it? It's a little technical, but essentially, it's so that you'll be directed to the best server for certain authentication processes, so you'll get faster response.
  
Technical details: When you run a client application that works with Office 365 such as Skype for Business Online, Outlook, Windows PowerShell or Microsoft Azure Active Directory Sync tool, your credentials must be authenticated. Office 365 uses a CNAME record to point to the correct authentication endpoint for your location, which ensures rapid authentication response times.
  
If this CNAME record is missing for your domain, these applications will use a default authentication endpoint in the United States, which means authentication might be slower. If this CNAME record isn't configured properly—for example, if you have a typo in the **Points to address**—these applications won't be able to authenticate.
  
 **If Office 365 manages your domain's DNS records,** Office 365 sets up this CNAME record for you. 
  
 **If you are managing DNS records for your domain at your DNS host,** you create this record yourself by [following the instructions for your DNS host](../get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).
  
If you're planning an Office 365 deployment and want to learn more about all the DNS records that you may need to add or update, read about them in [Reference: External Domain Name System records for Office 365](../../enterprise/external-domain-name-system-records.md).
