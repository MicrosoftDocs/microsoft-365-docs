---
title: "Change your email address to use your custom domain"
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
- MSStore_Link
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: f4d8cae9-6d06-4c4b-b4e5-6581fd05ea82
description: "Change your email address to a friendly email address like tom@fourthcoffee.com by buying a domain name and adding it to Microsoft 365."
---

# Change your email address to use your custom domain

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
::: moniker range="o365-worldwide"

Your initial email address in Microsoft 365 includes .onmicrosoft.com, like tom@fourthcoffee.onmicrosoft.com. You can change it to a friendlier address like tom@fourthcoffee.com. You'll need your own domain name, like fourthcoffee.com first. If you already have one, great! If not, you can learn how to [buy one from a domain registrar](../get-help-with-domains/buy-a-domain-name.md).

::: moniker-end

::: moniker range="o365-germany"

Your initial email address in Office 365 Germany includes .onmicrosoft.de, like tom@fourthcoffee.onmicrosoft.de. You can change it to a friendlier address like tom@fourthcoffee.de. You'll need your own domain name, like fourthcoffee.de first. If you already have one, great! If not, you can learn how to [buy one from a domain registrar](../get-help-with-domains/buy-a-domain-name.md).

::: moniker-end

::: moniker range="o365-21vianet"

Your initial email address in Office 365 operated by 21Vianet includes partner.onmschina.cn, like tom@fourthcoffee.partner.onmschina.cn. You can change it to a friendlier address like tom@fourthcoffee.cn. You'll need your own domain name, like fourthcoffee.cn first. If you already have one, great! If not, you can learn how to [buy one from a domain registrar](../get-help-with-domains/buy-a-domain-name.md).

::: moniker-end

When you change your domain's email to come to Microsoft 365, by updating your domain's MX record during setup, ALL email sent to that domain will start coming to Microsoft 365. Make sure you've added users and created mailboxes in Microsoft 365 for everyone who has email on your domain BEFORE you change the MX record. Don't want to move email for everyone on your domain to Microsoft 365? You can take steps to [pilot Microsoft 365 with just a few email addresses instead](../misc/pilot-microsoft-365-from-my-custom-domain.md?view=o365-worldwide).
  
## Change your email address to use your custom domain using the Microsoft 365 admin center

You must have a global admin account to perform these steps. 

::: moniker range="o365-worldwide"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>. 

::: moniker-end
   
::: moniker range="o365-germany"
    
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">https://portal.office.de/adminportal</a>. 
    
::: moniker-end

::: moniker range="o365-21vianet"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank"> https://portal.partner.microsoftonline.cn</a>. 

::: moniker-end 

2. Go to the **Setup** > **Domains** page. 

3. On the **Domains** page, select **Add domain**.
    
4. Follow the steps to confirm that you own your domain and to change your email address.
    
You'll be guided to get everything set up correctly with your domain in Microsoft 365.

> [!NOTE]
> If you are not using an Exchange license, you cannot use the domain to send or receive emails from the Microsoft 365 tenant.
  
## Related content

[Buy a custom domain using Microsoft 365](../get-help-with-domains/buy-a-domain-name.md) (article)
