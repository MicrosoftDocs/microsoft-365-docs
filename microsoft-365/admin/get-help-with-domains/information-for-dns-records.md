---
title: "Gather the information you need to create DNS records"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
ms.custom: 
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 77f90d4a-dc7f-4f09-8972-c1b03ea85a67
description: "Learn to find the values/information you need to create DNS records for Microsoft 365. "
---

# Gather the information you need to create DNS records

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
### Step 1: Find the TXT record value and verify

::: moniker range="o365-worldwide"

1. In the Microsoft 365 admin center, go to the **Setup** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Setup** > <a href="https://go.microsoft.com/fwlink/p/?linkid=854615" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Setup** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end
    
2. On the **Domains** page, select your domain, then select **Start setup**. You'll go back to the domains setup wizard to see the specific value you need to add.
    
3. On the **Verify domain** page, select **Add a TXT record instead**, then select **Next**.
    
4. Copy the **TXT value** shown. It looks like this: **MS=msXXXXXXXX**. 
    
5. Go to [Create DNS records at any DNS hosting provider](create-dns-records-at-any-dns-hosting-provider.md), and select your DNS host from the list of registrars to see the step-by-step instructions.
    
6. Follow the steps for creating the TXT record (or MX record) at your DNS host, then verify the domain back in Microsoft 365.

7. Remove the TXT record (or MX record) from your DNS host once the domain is verified in Microsoft 365.
    
### Step 2: Find the MX record value for email and more

::: moniker range="o365-worldwide"

1. In the Microsoft 365 admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end
    
::: moniker range="o365-germany"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=854615" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end
    
2. On the **Domains** page, select your domain. 
    
3. Choose  **Manage DNS**, select **More Options** > **Add your own DNS** and select **Continue** to see the DNS records to add.
    
    You'll want to keep this information available while you make changes at your DNS host, so you can copy and paste the values.
    
    The groups of DNS records that are listed on the page depend on your choices listed under **Domain purpose**.
    
4. Go to [Create DNS records at any DNS hosting provider](create-dns-records-at-any-dns-hosting-provider.md), and then select your DNS host from the list of registrars to see step-by-step instructions for adding records at that DNS host's website.
    
5. Follow the steps for creating the records at your DNS host.
