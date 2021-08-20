---
title: "Use lean popouts to reduce memory used when reading mail messages"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 12/3/2019
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: a6d6ba01-2562-4c3d-a8f1-78748dd506cf
f1.keywords:
- NOCSH
description: This article contains information for using lean popouts to improve message download performance in Outlook on the web.
ms.custom: seo-marvel-apr2020
---

# Use lean popouts to reduce memory used when reading mail messages

This article contains information for improving message download performance in Outlook on the web. This article is part of the [Network planning and performance tuning for Office 365](./network-planning-and-performance.md) project.
  
As an Office 365 global administrator, you can configure Outlook on the web to deliver _lean popouts_, a smaller, less memory-intensive version of certain email messages in Microsoft Edge or Internet Explorer. When lean popouts are configured for Outlook on the web, server-side rendered components are loaded that optimize performance.
  
> [!NOTE]
> As of March 2018, lean popouts are not available for messages that specify usage rights restrictions, such as Information Rights Management (IRM).
  
These features will continue to work in the main window but are not available in lean popouts:
  
- Outlook add-ins
  
- Skype for Business presence
  
## To configure lean popouts for all users within your Office 365 organization
  
1. [Connect to Exchange Online Using Remote PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
  
2. Run the [Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig) cmdlet with the LeanPopoutEnabled parameter as follows:

  ```powershell
  Set-OrganizationConfig -LeanPopoutEnabled <$true |$false >
  ```

  For example, to enable lean popouts for all users in your organization:
  
  ```powershell
  Set-OrganizationConfig -LeanPopoutEnabled $true
  ```

  To disable lean popouts for all users in your organization:

  ```powershell
  Set-OrganizationConfig -LeanPopoutEnabled $false
  ```