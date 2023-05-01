---
title: "Retrieve customer tenant reporting data with Windows PowerShell for DAP partners"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.assetid: 893e5275-30b3-433f-8ecd-644f78f513e2
description: "Summary: Use remote Windows PowerShell for Microsoft Exchange Online to retrieve reports from individual customer tenants."
---

# Retrieve customer tenant reporting data with Windows PowerShell for Delegated Access Permissions (DAP) partners

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Use remote Windows PowerShell for Microsoft Exchange Online to retrieve reports from individual customer tenants.

Syndication and Cloud Solution Provider (CSP) partners can access the data that makes up customer tenant reports directly via remote Windows PowerShell for Exchange Online PowerShell. This method lets partners collect and save the reporting data and then perform other operations on it. After you open a remote connection, retrieving reporting data about a customer tenancy is identical to running any cmdlet against a customer tenancy.

This article describes how you can use remote Windows PowerShell for Exchange Online to connect to a single customer tenancy and retrieve a report. By default, Windows PowerShell does not support aggregating reporting data from multiple customer tenancies. The reports you retrieve with this procedure are only for the  _DelegatedOrg_ that you connect to.

## Before you begin

- Connect to your Exchange Online tenant by using remote Windows PowerShell. For instructions, see [Connect to Exchange Online tenants with remote Windows PowerShell for Delegated Access Permissions (DAP) partners](/powershell/exchange/connect-to-exchange-online-powershell)

## Run the Get-StaleMailboxReport sample

After you have opened a remote session to Exchange Online, run the following command to retrieve the **Get-StaleMailboxReport** for the date range 03/25/2015 through 03/31/2015.

```powershell
Get-StaleMailboxReport -StartDate 03/25/2015 -EndDate 03/31/2015
```

There are many other reporting cmdlets available for Exchange Online, Lync Online, SharePoint Online, and other services for message tracing that you can use. To learn more about the available reporting cmdlets, see the articles listed in the following section.

## See also

[Office 365 Reporting web service](/previous-versions/office/developer/o365-enterprise-developers/jj984325(v=office.15))

[Reporting cmdlets in Exchange Online](/powershell/module/exchange/get-csclientdevicedetailreport)

[Help for partners](https://go.microsoft.com/fwlink/p/?LinkID=533477)
