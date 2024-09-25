---
title: Create a Microsoft 365 Group with a specific preferred data location
ms.reviewer:
ms.date: 05/01/2024
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
f1.keywords:
- NOCSH
ms.collection: 
- Strat_SP_gtc
- scotvorg
- must-keep
ms.localizationpriority: medium
description: Learn how to create a Microsoft 365 group with a specified preferred data location in a multi-geo environment.
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkSPO
---

# Create a Microsoft 365 group with a specific preferred data location

When users in a multi-geo environment create a Microsoft 365 group, the group preferred data location (PDL) is automatically set to that of the user. Global, SharePoint, and Exchange Administrators can create groups in any _Geography_ they select.

If you need to create a group with a specific PDL, you can do that using from the <a href="https://go.microsoft.com/fwlink/?linkid=2185219" target="_blank">SharePoint admin center</a> or through the Exchange Online New-UnifiedGroup Microsoft PowerShell cmdlet. When you do this, both the group mailbox and SharePoint site associated with the group will be provisioned in the specified PDL.

To create a Microsoft 365 group with the PDL that you specify, go to the <a href="https://go.microsoft.com/fwlink/?linkid=2185219" target="_blank">SharePoint admin center</a> in the _Geography_ location where you want to create the group site.

For example:

If you want to create a group site in your Australia location, you can go to `https://ContosoAUS-admin.sharepoint.com/_layouts/15/online/AdminHome.aspx#/siteManagement`

1. Select **+ Create**.
2. Follow the process to create a group site.

Your group site will be provisioned in the _Geography_ location corresponding to the SharePoint admin center from which you initiated the site creation request.

## Using Exchange PowerShell

Connect to Exchange Online PowerShell and pass the parameter _-MailBoxRegion_ with the geo location code.

For example:

```PowerShell
New-UnifiedGroup -DisplayName MultiGeoEUR -Alias "MultiGeoEUR" -AccessType Public -MailboxRegion EUR 
```

![Screenshot of New-UnifiedGroup PowerShell cmdlet with syntax.](../media/multi-geo-new-group-with-pdl-powershell.png)

> [!NOTE]
> SharePoint group site provisioning is on-demand. The site will be provisioned the first time a group owner or member attempts to access it.

## Geo location codes

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

## Related articles

[Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell)

[Create groups with a specific preferred data location using Graph API](/graph/api/group-post-groups)
