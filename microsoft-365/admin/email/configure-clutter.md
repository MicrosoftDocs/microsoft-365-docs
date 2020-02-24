---
title: "Configure Clutter for your organization"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 832276bd-d024-47b6-a80a-a6b884907a5b
description: "Learn to enable or disable the Clutter feature for all or specific users in your organization, using Exchange PowerShell. "
---

# Configure Clutter for your organization

> [!TIP]
> [Focused Inbox](../setup/configure-focused-inbox.md) is going to replace Clutter. Learn more: [Update on Focused Inbox and our plans for Clutter](https://techcommunity.microsoft.com/t5/Outlook-Blog/Update-on-Focused-Inbox-and-our-plans-for-Clutter/ba-p/136448)
  
As an admin, you may have to manage the Clutter feature in Office 365. To turn the Clutter feature on/off for users in your organization, you must use Exchange PowerShell. (Individuals can turn it on/off using these instructions: [Turn off/on Clutter in Outlook](https://support.office.com/article/a9c72a77-1bc4-40e6-ba6d-103c1d1aba4c.aspx).) 
  
Check out [Using PowerShell with Exchange Online](https://go.microsoft.com/fwlink/?LinkID=402831) and [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/?LinkID=722415) for details on using Exchange PowerShell. You need to have an account that has at least the Exchange Service administrator role and the ability to connect to Exchange Online with PowerShell. 
  
## Turn Clutter on using Exchange PowerShell

You can enable Clutter manually for a mailbox by running the [Set-Clutter](https://go.microsoft.com/fwlink/?LinkID=834446) cmdlet. You can also view Clutter settings for mailboxes in your organization by running the [Get-Clutter](https://go.microsoft.com/fwlink/?LinkID=834759) cmdlet. 
  
Turn on Clutter for a single user named Allie Bellew
    
`Set-Clutter -Identity "Allie Bellew" -Enable $true`


## Turn Clutter off using Exchange PowerShell

You can disable Clutter manually for a mailbox by running the [Set-Clutter](https://go.microsoft.com/fwlink/?LinkID=834446) cmdlet. You can also view **Clutter** settings for mailboxes in your organization by running the [Get-Clutter](https://go.microsoft.com/fwlink/?LinkID=834759) cmdlet. 
  
Turn off Clutter for a single user named Allie Bellew:
    
`Set-Clutter -Identity "Allie Bellew" -Enable $false`

If you use PowerShell to bulk create your users, then you'll need to run [Set-Clutter](https://go.microsoft.com/fwlink/?LinkID=834446) against each user's mailbox to manage Clutter. 
  
## When does the Clutter on/off switch appear to users in Outlook on the web?
<a name="bkmk_onoff"> </a>

As an admin, you can re-enable Clutter using Exchange PowerShell. Once this is done, Focused Inbox will be turned off and Clutter will be active again. 
  
 **If you're using Outlook on the web with an Office 365 business subscription:**
  
- If user currently has Clutter enabled: 
    
  - Clutter settings appear
    
- If user currently has Focused Inbox enabled: 
    
  - Clutter settings will not appear
    
- If neither Clutter or Focused Inbox is enabled: 
    
  - Both Clutter and Focused Inbox appear as options in the user's Mail Settings
    
 **If you're using Outlook.com:**
  
- If user currently has Clutter enabled: 
    
  - Clutter settings appear
    
- If user currently has Focused Inbox enabled: 
    
  - Clutter settings will not appear
    
- If neither Clutter or Focused Inbox is enabled: 
    
  - Both Clutter and Focused Inbox appear as options in the user's Mail Settings
    
- If user enabled Focused Inbox at some point in the past:
    
  - Clutter settings will never appear
    
    Otherwise, 
    
  - Clutter settings will appear
    
## Related articles
<a name="bkmk_onoff"> </a>

[Use Clutter to sort low priority messages in Outlook](https://support.office.com/article/7755ebf5-4585-469b-b1ab-8b12425c6b6b.aspx)
    
[Use Clutter to sort low priority messages in OWA](https://support.office.com/article/fe4d64ca-bf73-48f1-91b4-9a659e008bce.aspx)
    
[Turn off Clutter in Outlook](https://support.office.com/article/a9c72a77-1bc4-40e6-ba6d-103c1d1aba4c.aspx)
    

