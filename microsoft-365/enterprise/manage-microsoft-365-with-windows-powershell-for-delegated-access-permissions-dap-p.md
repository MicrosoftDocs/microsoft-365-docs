---
title: "Manage Microsoft 365 with Windows PowerShell for DAP partners"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 07/31/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
- M365-subscription-management
- must-keep
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.assetid: be497751-596f-431d-b256-0a89d36a47ce
description: "How Syndication and Cloud Solution Provider (CSP) partners can use Windows PowerShell to manage Microsoft 365 customer tenants."
---

# How to manage Microsoft 365 with Windows PowerShell for Delegated Access Permissions partners

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Delegated Access Permission (DAP) partners are Syndication and Cloud Solution Providers (CSP) Partners. Many are network or telecom providers. They bundle Microsoft 365 subscriptions into their service offerings. When they sell a Microsoft 365 subscription, they're automatically granted Administer On Behalf Of (AOBO) permissions to the customer's tenancies so they can administer and report on those tenancies. These tasks are difficult to do in the Microsoft 365 admin center. It's much easier to use PowerShell for Microsoft 365 to do administrative tasks such as:

- List all the customer **TenantIds** and their domains
- Identify all users in a customer tenancy and their assigned licenses

> [!NOTE]
> Some administrative tasks can only be done in PowerShell.

The following articles show how Syndication and CSP partners use PowerShell to administer their customer tenancies:

- [Add a domain to a client tenancy with Windows PowerShell for Delegated Access Permission (DAP) partners](add-a-domain-to-a-client-tenancy-with-windows-powershell-for-delegated-access-pe.md)

- [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)
