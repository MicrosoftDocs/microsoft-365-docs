---
title: "Add a domain"
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
ms.custom: 
- AdminSurgePortfolio
- adminvideo
monikerRange: 'o365-worldwide'
search.appverid:
- BCS160
- MET150
- MOE150
description: "Your organization might need multiple domains so customers can find you. Learn how to add another domain to your subscription."
---

# Add another domain

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4dN8c?autoplay=false]

Your company might need multiple domain names for different purposes. For example, you might want to add a different spelling of your company name because customers are already using it and their communications have failed to reach you.

## Try it!

1. In the Microsoft 365 admin center, choose **Setup**.
1. Under **Get your custom domain set up**, select **View**.
1. Choose **Manage**, and then **Add domain**.
1. Enter the new domain name that you want to add, and then select **Next**.
1. Sign in to your domain registrar, in this case GoDaddy, and then select **Next**.
1. If prompted, sign in to your registrar, and then choose **Authorize**.
1. Choose **Add the DNS records for me**, and then select **Next**.
1. Choose the services for your new domain and clear the check boxes for any services that will be handled by a different domain. For example, if you just want to use the new domain for email, choose **Exchange**, and clear the check boxes for **Skype for Business** and **Mobile Device Management for Office 365**.
1. Select **Next**, **Authorize**, **Next**,and then **Finish**. Your new domain has been added.

To receive email at your new domain, you'll need to add a new email alias for each user:

1. Select **Users**, **Active users**, and then select the user who will be assigned the new alias.
1. Choose **Manage email aliases**, and then **Add an alias**.
1. Enter the username, and then choose the new domain from the drop-down list.
1. Select **Save changes**, and then close the window.
1. Repeat these steps for each user who should receive email at the new domain.

## Related content

[Add a domain to Microsoft 365](../admin/setup/add-domain.md) (article)\
[Add DNS records to connect your domain](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md) (article)\
[Change nameservers to set up Microsoft 365 with any domain registrar](../admin/get-help-with-domains/change-nameservers-at-any-domain-registrar.md) (article)\
[Domains FAQ](../admin/setup/domains-faq.yml) (article)