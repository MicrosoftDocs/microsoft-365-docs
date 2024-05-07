---
title: "Domain Name System (DNS) records for Office 365 Government Community Cloud (GCC) High"
ms.author: dzazzo
author: dzazzo-msft
manager: dzazzo
ms.date: 05/19/2020
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:
  - Adm_O365
  - has-azure-ad-ps-ref
search.appverid:
- OGA150
- OGC150
- OGD150
- MOE150
ms.assetid: 
description: "Summary: DNS records for Office 365 GCC High"
hideEdit: true
---

# DNS records for Office 365 GCC High

*This article applies to Office 365 GCC High and Microsoft 365 GCC High*

As part of onboarding to Office 365 GCC High, you need to add your Simple Mail Transfer Protocol (SMTP) and SIP domains to your Online Services tenant. You do this using the New-MsolDomain cmdlet in Azure AD PowerShell or use the [Azure Government Portal](https://portal.azure.us) to start the process of adding the domain and proving ownership.

Once you have your domains added to your tenant and validated, use the following guidance to add the appropriate DNS records for the following services. You might need to modify the below table to fit your organization’s needs with respect to the inbound MX record(s) and any existing Exchange Autodiscover records you have in place. We strongly recommend coordinating these DNS records with your messaging team to avoid any outages or mis-delivery of email.
[!INCLUDE [Azure AD PowerShell deprecation note](~/../microsoft-365/reusable-content/msgraph-powershell/includes/aad-powershell-deprecation-note.md)]

## Exchange Online

| Type | Priority | Host name | Points to address or value | TTL |
| --- | --- | --- | --- | --- |
| MX | 0 | @ | *tenant*.mail.protection.office365.us (for more information, see below) | One Hour |
| TXT | - | @ | v=spf1 include:spf.protection.office365.us -all | One Hour |
| CNAME | - | autodiscover | autodiscover.office365.us | One Hour |

### Exchange Autodiscover record

If you have Exchange Server on-premises, we recommend leaving your existing record in place while you migrate to Exchange Online, and update that record once you complete your migration.

### Exchange Online MX Record

The MX record value for your accepted domains follows a standard format as noted previously: *tenant*.mail.protection.office365.us, replacing *tenant* with the first part of your default tenant name.

For example, if your tenant name is contoso.onmicrosoft.us, you’d use **contoso.mail.protection.office365.us** as the value for your MX record.

## External DNS records required for Teams

### SRV records

| Type | Service | Protocol | Port | Weight | Priority | Name | Target | TTL |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| SRV | \_sipfederationtls | \_tcp | 5061 | 1 | 100 | @ | sipfed.online.gov.skypeforbusiness.us | One Hour |

## Other DNS records

> [!IMPORTANT]
> If you have an existing *msoid* CNAME record in your DNS zone, you must **remove** the record from DNS at this time. The msoid record is incompatible with Microsoft 365 Enterprise Apps *(formerly Office 365 ProPlus)* and will prevent activation from succeeding.
