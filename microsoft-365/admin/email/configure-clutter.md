---
title: "Configure Clutter for your organization"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
description: "Learn to enable or disable the Clutter feature for all or specific users in your organization, using Exchange PowerShell. "
---

# Configure Microsoft 365 Clutter for your organization
  
As an admin, you may have to manage the Clutter feature in Microsoft 365. To turn the Clutter feature on/off for users in your organization, you must use Exchange PowerShell. (Individuals can turn it on/off using these instructions: [Turn off/on Clutter in Outlook](https://support.microsoft.com/office/a9c72a77-1bc4-40e6-ba6d-103c1d1aba4c)).
  
Check out [Using PowerShell with Exchange Online](/powershell/exchange/exchange-online-powershell) and [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) for details on using Exchange PowerShell. You need to have an account that has at least the Exchange Service administrator role and the ability to connect to Exchange Online with PowerShell.
  
## Turn Clutter on using Exchange PowerShell

You can enable Clutter manually for a mailbox by running the [Set-Clutter](/powershell/module/exchange/set-clutter) cmdlet. You can also view Clutter settings for mailboxes in your organization by running the [Get-Clutter](/powershell/module/exchange/get-clutter) cmdlet.
  
Turn on Clutter for a single user named Allie Bellew:

`Set-Clutter -Identity "Allie Bellew" -Enable $true`

## Turn Clutter off using Exchange PowerShell

You can disable Clutter manually for a mailbox by running the [Set-Clutter](/powershell/module/exchange/set-clutter) cmdlet. You can also view **Clutter** settings for mailboxes in your organization by running the [Get-Clutter](/powershell/module/exchange/get-clutter) cmdlet.
  
Turn off Clutter for a single user named Allie Bellew:

`Set-Clutter -Identity "Allie Bellew" -Enable $false`

If you use PowerShell to bulk create your users, then you need to run [Set-Clutter](/powershell/module/exchange/set-clutter) against each user's mailbox to manage Clutter.
  
## When does the Clutter On/Off switch appear to users in Outlook on the web?

As an admin, you can re-enable Clutter using Exchange PowerShell. Focused Inbox is turned off and Clutter will be active again.
  
 **If you're using Outlook on the web with a Microsoft 365 Business Premium subscription:**
  
- If user currently has Clutter enabled:

  - Clutter settings appear

- If user currently has Focused Inbox enabled:

  - Clutter settings won't appear

- If neither Clutter or Focused Inbox is enabled:

  - Both Clutter and Focused Inbox appear as options in the user's Mail Settings

 **If you're using Outlook.com:**
  
- If user currently has Clutter enabled:

  - Clutter settings appear

- If user currently has Focused Inbox enabled:

  - Clutter settings won't appear

- If neither Clutter or Focused Inbox is enabled:

  - Both Clutter and Focused Inbox appear as options in the user's Mail Settings

## Related content

[Use Clutter to sort low priority messages in Outlook](https://support.microsoft.com/office/7b50c5db-7704-4e55-8a1b-dfc7bf1eafa0) (article)\
[Use Clutter to sort low priority messages in OWA](https://support.microsoft.com/office/fe4d64ca-bf73-48f1-91b4-9a659e008bce) (article)
