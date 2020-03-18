---
title: "Add a domain to Office 365"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
audience: Admin
ms.topic: get-started-article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365_Setup
- Adm_O365
- Adm_TOC
ms.custom:
- TopSMBIssues
- SaRA
- MSStore_Link
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 6383f56d-3d09-4dcb-9b41-b5f5a5efd611
description: "Add your domain to Office 365 in the Microsoft 365 admin center by adding a DNS record at your DNS host. The setup wizard walks you through the process."
---

# Add a domain to Office 365

 **[Check the Domains FAQ](domains-faq.md)** if you don't find what you're looking for. 
  
 *To Add, modify or remove domains you **must** be a **Global Administrator** of a [business or enterprise plan](https://products.office.com/business/office). These changes affect the whole tenant, *Customized administrators* or *regular users* won't be able to make these changes.*  

 Follow these steps to add, set up, or continue setting up a domain. 

::: moniker range="o365-worldwide"
  
::: moniker-end

::: moniker range="o365-germany"

> [!VIDEO https://www.microsoft.com/videoplayer/embed/dda6df6d-37b0-41ff-905b-089448355a31?autoplay=false]
  
::: moniker-end

::: moniker range="o365-worldwide"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

::: moniker-end
::: moniker range="o365-germany"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">https://portal.office.de/adminportal</a>.

::: moniker-end

::: moniker range="o365-21vianet"

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">https://portal.partner.microsoftonline.cn</a>.

::: moniker-end
    
2. Go to the **Settings** > **Domains** page. 

3. Select **Add domain**.
    
4. Enter the name of the domain you want to add, then select **Next**.
    
5. Choose how you want to verify that you own the domain.
    
    1. If your domain is registered at GoDaddy or 1&amp;1, select **Sign in** > **Next** and Office 365 [will set up your records automatically](../get-help-with-domains/domain-connect.md).
    
    2. You can have an email sent to the registered contact for the domain with a verification code. If you don't recognize or have access to the email on record, you can use the third option.
    
    3. You can use a TXT record to verify your domain. Select this and select **Next** to see instructions for how to add this DNS record to your registrar's website. This can take up to 30 minutes to verify after you've added the record. 
    
6. Choose how you want to make the DNS changes required for Office to use your domain.
    
    1. Choose **Add the DNS records for me** if you want Office to configure your DNS automatically. 
    
  
    2. Choose **I'll add the DNS records myself** if you want to attach only specific Office 365 services to your domain or if you want to skip this for now and do this later. **Choose this option if you know exactly what you're doing.**
    
7. If you chose to  *add DNS records yourself*  , select **Next** and you'll see a page with all the records that you need to add to your registrars website to set up your domain. 
    
  
  
    If the portal doesn't recognize your registrar, you can [follow these general instructions.](../get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md)
    
    Check our list of [host-specific instructions](https://support.office.com/article/ae950c9e-e8d9-4108-b0cb-449156998580) to find your host and follow the steps to add all the records you need. 
    
    If you don't know the DNS hosting provider or domain registrar for your domain, see [Find your domain registrar or DNS hosting provider](../get-help-with-domains/find-your-domain-registrar.md).
    
    If you want to wait for later, scroll to the bottom and select **Skip this step**.
    
8. Select **Finish** - you're done! 

## Related articles

[Domains FAQ](domains-faq.md)

[What is a domain?](../get-help-with-domains/what-is-a-domain.md)

[Buy a domain name in Office 365](../get-help-with-domains/buy-a-domain-name.md)

[Set up your domain (host-specific instructions)](../get-help-with-domains/set-up-your-domain-host-specific-instructions.md)

[Get help with Office 365 domains](../get-help-with-domains/get-help-with-domains.yml)
