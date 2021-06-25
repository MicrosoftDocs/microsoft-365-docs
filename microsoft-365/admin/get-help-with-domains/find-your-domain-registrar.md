---
title: "Find your domain registrar"
f1.keywords:
- CSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: b5b633ba-1e56-4a98-8ff5-2acaac63a5c8
description: "Learn to find your domain registrar and DNS hosting provider using InterNIC search."
---

# Find your domain registrar

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
## Domain registrar
  
### Find your domain name registrar

>[!NOTE]
> Only domains ending in *.COM*, *.NET*, and *.EDU* work with this tool.
  
1. On the [InterNIC search page](https://go.microsoft.com/fwlink/p/?LinkId=402770), in the **Whois Search** box, type your domain. For example,  *contoso.com.* 
    
2. Select the **Domain** option, and then select **Submit**.
    
3. On the **Whois Search Results** page, locate the **Registrar** entry. This entry lists the organization that provides registrar service for your domain. 
    
## DNS hosting provider
  
### Find your DNS hosting provider

>[!NOTE]
> Only domains ending in *.COM*, *.NET*, and *.EDU* work with this tool.
  
1. On the [InterNIC search page]( https://go.microsoft.com/fwlink/p/?LinkId=402770), in the **Whois Search** box, type your domain. For example, contoso.com. 
    
2. Select the **Domain** option, and then select **Submit**.
    
3. On the **Whois Search Results** page, locate the first **Name Server** entry. 
    
4. Copy the name server (NS) information that appears after the colon (:), and then paste it into the **Search** box at the top of the page. Select **Nameserver**, and then select **Submit**.
    
5. On the **Whois Search Results** page, locate the **Registrar** entry. This entry lists your DNS hosting provider, the DNS provider who owns the name server for your domain. 
    
---

