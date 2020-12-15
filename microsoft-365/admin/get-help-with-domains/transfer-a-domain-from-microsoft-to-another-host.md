---
title: "Transfer a domain from Microsoft to another host"
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
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
description: "Find the steps here to transfer a domain from Microsoft to another registrar. "
---

# Transfer a domain from Microsoft to another host

You can't transfer a Microsoft 365 domain to another registrar for 60 days after you purchase the domain from Microsoft.

> [!NOTE]
> A _Whois_ query shows a Microsoft purchased domain registrar as Wild West Domains LLC. However, only Microsoft should be contacted regarding your Microsoft 365 purchased domain.

Follow these steps to get a code at Microsoft 365, and then go to the other domain registrar website to set up transferring your domain name to the new registrar.

## Transfer a domain

1. In the admin center, go to  **Settings** > **Domains**.

2. On the **Domains** page, select the Microsoft 365 domain that you want to transfer to another domain registrar, and then select **Check health**.

3. At the top of the page, select **Transfer domain**.

4. On the **Choose where to transfer your domain** page, select **A different registrar**, and then click **Next**.

5. On the **Unlock domain transfer** page, select **Unlock transfer for <_your domain_>**, and then select **Next**.

6. Check your domain transfer contact information, and then select **Next**.

7. Copy the authorization code and wait about 30 minutes for your domain transfer status to change to **Unlocked for transfer** on the **Registration** tab before you proceed with next steps.

8. Go to the website of the domain registrar you want to manage your domain name going forward. Follow directions for transferring a domain (search for help on their website). This usually means paying transfer fees and giving the Authcode to the new registrar so they can initiate the transfer. Microsoft will email you to confirm we’ve received the transfer request, and the domain will transfer within 5 days.

    You can find the authorization code **Registration** tab on the  **Domains** page in Microsoft 365.
    
    > [!TIP]
    > .uk domains require a different procedure. Contact Microsoft Support and request an **IPS Tag change** to match the registrar you want to manage your domain going forward. Once the tag changes, the domain immediately transfers to the new registrar. You will then need to work with the new registrar to complete the transfer, likely paying transfer fees and adding the transferred domain to your account with your new registrar.

9. After the transfer is complete, you'll renew your domain at the new domain registrar.

10. To finish the process, go back to the **Domains** page in the admin center, and then select  **Complete domain transfer**. This will mark the domain as no longer purchased from Microsoft 365, and will disable the domain subscription. It will not remove the domain from the tenant, and will not affect existing users and mailboxes on the domain.

> [!NOTE]
> Microsoft 365 purchased domains are not eligible for nameserver changes or transferring the domain between Microsoft 365 organizations. If either of these are required, the domain registration must be transferred to another registrar.
