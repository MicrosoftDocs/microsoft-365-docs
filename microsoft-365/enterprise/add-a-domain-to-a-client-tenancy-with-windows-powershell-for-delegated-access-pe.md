---
title: "Add a domain to a client tenancy with Windows PowerShell for DAP partners"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 02/12/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- M365-subscription-management
f1.keywords:
- NOCSH
ms.custom:
  - seo-marvel-apr2020
  - admindeeplinkMAC
  - has-azure-ad-ps-ref
ms.assetid: f49b4d24-9aa0-48a6-95dd-6bae9cf53d2c
description: "Summary: Use PowerShell for Microsoft 365 to add an alternate domain name to an existing customer tenant."
---

# Add a domain to a client tenancy with Windows PowerShell for Delegated Access Permission (DAP) partners

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can create and associate new domains with your customer's tenancy with PowerShell for Microsoft 365 faster than using the Microsoft 365 admin center.

Delegated Access Permission (DAP) partners are Syndication and Cloud Solution Providers (CSP) Partners. They're frequently network or telecom providers to other companies. They bundle Microsoft 365 subscriptions into their service offerings to their customers. When they sell a Microsoft 365 subscription, they're automatically granted Administer On Behalf Of (AOBO) permissions to the customer tenancies so they can administer and report on the customer tenancies.

## What do you need to know before you begin?

The procedures in this article require you to connect to [Connect to Microsoft 365 with PowerShell](connect-to-microsoft-365-powershell.md).

You also need your partner tenant administrator credentials.

You also need the following information:

- You need the fully qualified domain name (FQDN) that your customer wants.

- You need the customer's **TenantId**.

- The FQDN must be registered with an Internet domain name service (DNS) registrar, such as GoDaddy. For more information on how to publicly register a domain name, see [How to buy a domain name](../admin/get-help-with-domains/buy-a-domain-name.md).

- You need to know how to add a TXT record to the registered DNS zone for your DNS registrar. For more information on how to add a TXT record, see [Add DNS records to connect your domain](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md). If those procedures don't work for you, you'll need to find the procedures for your DNS registrar.

## Create domains

 Your customers will likely ask you to create additional domains to associate with their tenancy because they don't want the default \<domain>.onmicrosoft.com domain to be the primary one that represents their corporate identities to the world. This procedure walks you through creating a new domain associated with your customer's tenancy.

> [!NOTE]
> To perform some of these operations, the partner administrator account you sign in with must be set to **Full administration** for the **Assign administrative access to companies you support** setting found in the details of the admin account in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. For more information on managing partner administrator roles, see [Partners: Offer delegated administration](https://go.microsoft.com/fwlink/p/?LinkId=532435).

<a name='create-the-domain-in-azure-active-directory'></a>

### Create the domain in Microsoft Entra ID

This command creates the domain in Microsoft Entra ID but doesn't associate it with the publicly registered domain. That comes when you prove that you own the publicly registered domain to Microsoft 365 for enterprises.

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, use a **Microsoft Entra DC admin** or **Cloud Application Admin** account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md).

Assigning and removing licenses for a user requires the **Domain.ReadWrite.All** permission scope or one of the other permissions listed in the ['Assign license' Graph API reference page](/graph/api/user-assignlicense).

[!INCLUDE [Azure AD PowerShell deprecation note](~/../microsoft-365/reusable-content/msgraph-powershell/includes/aad-powershell-deprecation-note.md)]

```powershell
Connect-MgGraph -Scopes "Domain.ReadWrite.All"
```

Run the following command to create a new domain:

```powershell
New-MgDomain -Id <customer TenantId> -DomainNameReferences <FQDN of new domain>
```

### Get the data for the DNS TXT verification record

 Microsoft 365 generates the specific data that you need to place into the DNS TXT verification record. To get the data, run this command.

```powershell
Import-Module Microsoft.Graph.Identity.DirectoryManagement
(Get-MgDomainVerificationDnsRecord -DomainId <domain ID, i.e. contoso.com> | Where-Object {$_.RecordType -eq "Txt"}).AdditionalProperties.text
```

This command gives you output like:

 `MS=ms########`

> [!NOTE]
> You will need this text to create the TXT record in the publicly registered DNS zone. Be sure to copy and save it.

### Add a TXT record to the publicly registered DNS zone

Before Microsoft 365 will start accepting traffic that is directed to the publicly registered domain name, you must prove that you own and have administrator permissions to the domain. You prove you own the domain by creating a TXT record in the domain. A TXT record doesn't do anything in your domain, and it can be deleted after your ownership of the domain is established. To create the TXT records, follow the procedures at [Add DNS records to connect your domain](../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md). If those procedures don't work for you, you need to find the procedures for your DNS registrar.

Confirm the successful creation of the TXT record via nslookup. Follow this syntax.

```console
nslookup -type=TXT <FQDN of registered domain>
```

This command gives you output like:

 `Non-authoritative answer:`

 `FQDN of the registered domain`

 `text=MS=ms########`

### Validate domain ownership in Microsoft 365

In this last step, you validate to Microsoft 365 that you own the publicly registered domain. After this step, Microsoft 365 will begin accepting traffic routed to the new domain name. To complete the domain creation and registration process, run this command.

```powershell
Confirm-MgDomain -DomainId <FQDN of new domain> -InputObject @{TenantId=<customer TenantId>}
```

This command doesn't return any output, so to confirm that the command worked, run this command.

```powershell
Get-MgDomain -DomainId <FQDN of new domain>
```

This will return something like this:

```console
Id                            AuthenticationType AvailabilityStatus IsAdminManaged IsDefault IsInitial IsRoot IsVerified Manufact 
                                                                                                                         urer     
--                            ------------------ ------------------ -------------- --------- --------- ------ ---------- -------- 
contoso.com                   Managed                               True           True      True      True   True
```

## See also

[Help for partners](https://go.microsoft.com/fwlink/p/?LinkID=533477)
