---
title: "Add or replace your onmicrosoft.com fallback domain in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
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
- business_assist
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 
description: "Learn how to create a new onmicrosoft.com domain and make it your new fallback domain."
---

# Add or replace your onmicrosoft.com fallback domain in Microsoft 365

When you sign up for Microsoft 365, Microsoft provides an *onmicrosoft.com* domain - your **fallback domain** - in case you don't own a domain, or don't want to connect it to Microsoft 365 (for example, tailspintoys.onmicrosoft.com). Your fallback domain is used by default in:

- Usernames and email addresses
- Microsoft 365 teams & groups email aliases
- Automatic domain dependency moves

It serves as a default email routing address for your Microsoft 365 environment. When a user is setup with a mailbox, email is routed to the fallback domain.  Even if a custom domain is used (for example, tailspintoys.com), if that custom domain is deleted from your Microsoft 365 environment, the fallback domain ensures that your users email is successfully routed.

While you can add additional onmicrosoft.com domains (limit of three), only one onmicrosoft.com domain can be used as your fallback domain. The steps in this article describes how to:
- Create a new onmicrosoft.com domain
- Assign it as your fallback domain
  
## Before you begin

To add, modify, or remove domains, you **must** be a **Domain Name Administrator** or **Global Administrator** of a [business or enterprise plan](https://products.office.com/business/office). These changes affect the whole tenant; *Customized administrators* or *regular users* won't be able to make these changes.


## Add a new onmicrosoft.com domain

1. In the Microsoft 365 admin center, in the left nav bar select **Settings**, and then select **Domains**.

    ![Screenshot of Domains page.](../../media/onmicrosoft-domains.png)
  
2. On the domain properties page, in the **About this domain** section, select **Add onmicrosoft domain**.

    ![Screenshot of Domains page.](../../media/add-onmicrosoft-domain-link.png)

3. In the **Add onmicrosoft domain** page, in the **Domain name** box, type the name for your new onmicrosoft.com domain.

    ![Screenshot of Add onmicrosoft domain page.](../../media/add-an-onmicrosoftcom-domain-page.png)
    
4. Select **Add domain**. When successfully added, you will see a message stating this. 
    
    ![Screenshot of domain added successfully.](../../media/domain-added.png)



## Make your new onmicrosoft.com domain your fallback domain


> [!NOTE]
> Before changing your fallback domain to a new onmicrosoft.com domain, you may want to consider changing your onmicrosoft.com SharePoint domain. Creating an additional onmicrosoft domain and using it as your fallback domain will not do a rename for SharePoint Online. Your SharePoint and OneDrive URLs will remain the same.  You are able to change your.onmicrosoft SharePoint domain through the PowerShell steps provided in [SharePoint domain rename preview](/sharepoint/change-your-sharepoint-domain-name) (currently available to any tenant with less than 1,000 sites).

After you have created your new onmicrsoft.com domain, do the following to change it to your fallback domain.

1. In the Microsoft 365 admin center, in the left nav bar select **Settings**, and then select **Domains**. 

2. Select the new onmicrosoft.com domain you had created.

    ![Screenshot of Domains page.](../../media/onmicrosoft-domains-added.png) 

3. On the domain's property page, select **Make fallback domain**.
 
    ![Screenshot of selecting a new fallback domain.](../../media/new-fallback.png) 

4. A message will display on the page stating that your fallback domain has changed to the new domain.

    ![Screenshot of selecting a new fallback domain.](../../media/fallback-success.png) 





## Related content

[Domains FAQ](domains-faq.yml) (article)</br>
[What is a domain?](../get-help-with-domains/what-is-a-domain.md) (article)</br>
[Buy a domain name in Microsoft 365](../get-help-with-domains/buy-a-domain-name.md) (article)</br>
[Add DNS records to connect your domain](../get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md) (article)</br>
[Change nameservers to set up Microsoft 365 with any domain registrar](../get-help-with-domains/change-nameservers-at-any-domain-registrar.md) (article)
