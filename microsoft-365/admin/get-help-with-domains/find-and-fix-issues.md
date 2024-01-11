---
title: "Find and fix issues after adding your domain or DNS records"
f1.keywords:
- NOCSH
ms.author: nkagole
author: nataliekagole
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
ms.custom: 
- VSBFY23
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 40398b0b-bdd0-4afd-ab5e-b5ae6b7990bf
description: "Learn to track down any problems you run into while setting up a custom domain by making sure the DNS records are set up correctly."
---

# Find and fix issues after adding your domain or DNS records

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for. 
  
Getting your domain set up to work with Microsoft 365 can be challenging. The DNS system is nitpicky to work with, and the DNS setup for your domain affects important business activities, like email!

> [!NOTE]
> You can check for problems with your domain by checking its status. Go to **Setup** > **Domains** and view the notifications in the **Status** column. If you see an issue, select the three dots (more actions), and then choose **Check health**. The pane that opens will describe any issues occurring with your domain.
  
## What's going on?

- [Can't verify your domain?](#cant-verify-your-domain)
    
- [Outlook isn't working?](#outlook-isnt-working)
    
- [Everyone's email got switched to Microsoft 365 and you only wanted YOUR email to switch?](#everyones-email-got-switched-to-microsoft-365-and-you-only-wanted-your-email-to-switch)

- [Can't confirm non-profit or school account status?](#cant-confirm-non-profit-or-school-account-status)

- [Services not working with your domain?](#services-not-working-with-your-domain)
    
- [Accessing your website isn't working?](#accessing-your-website-isnt-working)

## Can't verify your domain?

There are a couple of common reasons that domain verification doesn't work as it should:
  
1. **The verification record value isn't quite correct.** Doublecheck that you've copied and pasted the exact value into the TXT verification record at your DNS host. One common issue is not including the "MS=" part of the record. We need that too! 
    
2. **The record hasn't been saved.** At some DNS hosts, you have to take an extra step to save the zone file (where the DNS record is stored) so that it will update across the Internet. Make sure you've saved your changes so Microsoft 365 can see and verify the record. 
    
3. **The record hasn't updated across the Internet.** It typically only takes a few minutes for us to be able to see the new record, but occasionally it can take as long as a few hours. 
    
## Outlook isn't working?

If you've set up your MX record and other DNS records correctly for your domain, but mail doesn't work, let us help you [fix your Outlook problems](/exchange/troubleshoot/outlook-connectivity/outlook-connection-issues).
  
## Everyone's email got switched to Microsoft 365 and you only wanted YOUR email to switch?
<a name="BKMK_EmailSwitched"> </a>

When you add your domain to Microsoft 365, typically your domain's MX record is updated (by you or Microsoft 365) to point to Microsoft 365, and ALL email sent to that domain will start coming to Microsoft 365. Make sure you've created mailboxes in Microsoft 365 for everyone who has email on your domain BEFORE you change the MX record.
  
What if you don't want to move email for everyone on your domain to Microsoft 365? You can take steps to [pilot Microsoft 365 with just a few email addresses instead](../setup/domains-faq.yml).
  
## Can't confirm non-profit or school account status?
<a name="BKMK_validateAcct"> </a>

There are a couple of scenarios when you just need to verify your organization's domain and not set up any services. For example, to prove to Microsoft 365 that your organization qualifies for a school subscription.
  
Check out the guidance in [Verify your Microsoft 365 domain to prove ownership, nonprofit or education status, or to activate Viva Engage](../setup/domains-faq.yml) to make sure you've completed all the required steps. It's a little different for each situation. 
  
## Services not working with your domain?

We can help you track down issues with your domain's DNS setup. The domains troubleshooter in Microsoft 365 will show you any records that need fixing, and exactly what the records need to be set to. 

> [!TIP]
> Got your DNS set up correctly, but mail doesn't work in Outlook on your desktop? Check out the [different mail flow scenarios you can have with Microsoft 365](/exchange/mail-flow-best-practices/mail-flow-best-practices) to make sure you've got things set up correctly for your business. Or get more troubleshooting help with email here: [Fix Outlook problems](/exchange/troubleshoot/outlook-connectivity/outlook-connection-issues). 
  
## Accessing your website isn't working?

If you've fixed any DNS issues and you're still having trouble, try one of the following.
  
- People can't get to your website at *contoso.com*: [Track down website issues](../setup/add-domain.md)
    
- You can't update your A record or CNAME record to point to your website: [Update custom DNS records in Microsoft 365](../setup/add-domain.md)

## Related content

[Troubleshoot: Audit data on verified domain change](/azure/active-directory/reports-monitoring/troubleshoot-audit-data-verified-domain) (article)\
[Domains FAQ](../setup/domains-faq.yml) (article)
