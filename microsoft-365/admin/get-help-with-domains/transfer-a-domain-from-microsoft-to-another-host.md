---
title: "Transfer a domain from Microsoft to another host"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: mnirkhe
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
> A *Whois* query shows a Microsoft purchased domain registrar as Wild West Domains LLC. However, only Microsoft should be contacted regarding your Microsoft 365 purchased domain.

Follow these steps to get a code at Microsoft 365, and then go to the other domain registrar website to set up transferring your domain name to the new registrar.

## Transfer a domain

1. In the admin center, go to the  **Settings** > **Domains** page.

2. On the   **Domains**  page, select the Microsoft 365 domain that you want to transfer to another domain registrar, and then select  **Domain Transfer** > **Enable domain transfer**.

3. Follow the steps to prepare for transferring your domain.

4. After you get the code, go to the website of the domain registrar you want to manage your domain name going forward. Follow directions for transferring a domain (search for help on their website).

5. If you need the code again, on the **Domain settings** page in Microsoft 365, select **View authorization code for domain transfer**.

6. After the transfer is complete, you'll renew your domain at the new domain registrar.

7. To finish the process, go back to the **Domains** page in the admin center, and then select  **Complete Domain Transfer**.

> [!NOTE] 
> Microsoft 365 purchased domains are not eligible for nameserver changes or transferring the domain between Microsoft 365 organizations. If either of these are required, the domain registration must be transferred to another registrar.

## Change DNS management to a DNS host outside of Microsoft 365

1. Sign in to the domain registrar for your domain.

2. Find the area on the registrar's website where you update nameserver records, and update the nameservers to point to your domain's DNS host. (The DNS host is usually the domain registrar.).

3. Follow the link for the Domains setup wizard.

4. In the admin center, go to the  **Settings** >**Domains**  page.

5. On the  **Domains**  page, select the domain you're switching, and select **DNS management**.

6. In the Domains setup wizard, on the  **Set up your online services**  page, select  **I'll manage my own DNS records**, and then select  **Next**.

7. Add the DNS records suggested by the wizard on the **Update DNS settings** page for your registrar website.

8. After you've added the records, go back to Microsoft 365, and then select  **Verify**.

## Change DNS management to Microsoft 365

1. In the admin center, go to  **Settings** > **Domains**  page.

2. On the  **Domains** page, select the domain you're switching, and then select  **DNS Management**.

3. In the Domains setup wizard, on the  **Set up your online services**  page, select **Set up my online services for me. (Recommended)**, and then select  **Next**.

4. If you haven't verified the domain yet, follow the steps to do that first.

5. On the  **Update DNS settings**  page, find the nameservers for Microsoft 365. Go to the domain registrar for your domain, and update the nameservers to the Microsoft 365 nameservers.

6. After you've updated the nameservers, wait at least an hour, and then in the Microsoft 365 wizard, select  **Verify**.