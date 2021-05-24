---
title: "Add a domain to a client tenancy with Windows PowerShell for DAP partners"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid: 
- MET150
ms.collection: 
- Ent_O365
- M365-subscription-management
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.assetid: f49b4d24-9aa0-48a6-95dd-6bae9cf53d2c
description: "Summary: Use PowerShell for Microsoft 365 to add an alternate domain name to an existing customer tenant."
---

# Add a domain to a client tenancy with Windows PowerShell for Delegated Access Permission (DAP) partners

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can create and associate new domains with your customer's tenancy with PowerShell for Microsoft 365 faster than using the Microsoft 365 admin center.
  
Delegated Access Permission (DAP) partners are Syndication and Cloud Solution Providers (CSP) Partners. They are frequently network or telecom providers to other companies. They bundle Microsoft 365 subscriptions into their service offerings to their customers. When they sell a Microsoft 365 subscription, they are automatically granted Administer On Behalf Of (AOBO) permissions to the customer tenancies so they can administer and report on the customer tenancies.
## What do you need to know before you begin?

The procedures in this topic require you to connect to [Connect to Microsoft 365 with PowerShell](connect-to-microsoft-365-powershell.md).
  
You also need your partner tenant administrator credentials.
  
You also need the following information:
  
- You need the fully qualified domain name (FQDN) that your customer wants.
    
- You need the customer's **TenantId**.
    
- The FQDN must be registered with an Internet domain name service (DNS) registrar, such as GoDaddy. For more information on how to publically register a domain name, see [How to buy a domain name](../admin/get-help-with-domains/buy-a-domain-name.md).
    
- You need to know how to add a TXT record to the registered DNS zone for your DNS registrar. For more information on how to add a TXT record, see [Add DNS records to connect your domain](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md). If those procedures don't work for you, you will need to find the procedures for your DNS registrar.
    
## Create domains

 Your customers will likely ask you to create additional domains to associate with their tenancy because they don't want the default <domain>.onmicrosoft.com domain to be the primary one that represents their corporate identities to the world. This procedure walks you through creating a new domain associated with your customer's tenancy.
  
> [!NOTE]
> To perform some of these operations, the partner administrator account you sign in with must be set to **Full administration** for the **Assign administrative access to companies you support** setting found in the details of the admin account in the Microsoft 365 admin center. For more information on managing partner administrator roles, see [Partners: Offer delegated administration](https://go.microsoft.com/fwlink/p/?LinkId=532435). 
  
### Create the domain in Azure Active Directory

This command creates the domain in Azure Active Directory but does not associate it with the publicly registered domain. That comes when you prove that you own the publicly registered domain to Microsoft Microsoft 365 for enterprises.
  
```powershell
New-MsolDomain -TenantId <customer TenantId> -Name <FQDN of new domain>
```

>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

### Get the data for the DNS TXT verification record

 Microsoft 365 will generate the specific data that you need to place into the DNS TXT verification record. To get the data, run this command.
  
```powershell
Get-MsolDomainVerificationDNS -TenantId <customer TenantId> -DomainName <FQDN of new domain> -Mode DnsTxtRecord
```

This will give you output like:
  
 `Label: domainname.com`
  
 `Text: MS=ms########`
  
 `Ttl: 3600`
  
> [!NOTE]
> You will need this text to create the TXT record in the publicly registered DNS zone. Be sure to copy and save it. 
  
### Add a TXT record to the publically registered DNS zone

Before Microsoft 365 will start accepting traffic that is directed to the publicly registered domain name, you must prove that you own and have administrator permissions to the domain. You prove you own the domain by creating a TXT record in the domain. A TXT record doesn't do anything in your domain, and it can be deleted after your ownership of the domain is established. To create the TXT records, follow the procedures at [Add DNS records to connect your domain](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md). If those procedures don't work for you , you need to find the procedures for your DNS registrar.
  
Confirm the successful creation of the TXT record via nslookup. Follow this syntax.
  
```console
nslookup -type=TXT <FQDN of registered domain>
```

This will give you output like:
  
 `Non-authoritative answer:`
  
 `FQDN of the registered domain`
  
 `text=MS=ms########`
  
### Validate domain ownership in Microsoft 365

In this last step, you validate to Microsoft 365 that you own the publically registered domain. After this step, Microsoft 365 will begin accepting traffic routed to the new domain name. To complete the domain creation and registration process, run this command. 
  
```powershell
Confirm-MsolDomain -TenantId <customer TenantId> -DomainName <FQDN of new domain>
```

This command won't return any output, so to confirm that this worked, run this command.
  
```powershell
Get-MsolDomain -TenantId <customer TenantId> -DomainName <FQDN of new domain>
```

This will return something like this

```console
Name                   Status      Authentication
--------------------   ---------   --------------
FQDN of new domain     Verified    Managed
```

   
## See also

#### 

[Help for partners](https://go.microsoft.com/fwlink/p/?LinkID=533477)