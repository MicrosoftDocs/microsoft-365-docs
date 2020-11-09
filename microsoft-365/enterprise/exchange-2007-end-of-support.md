---
title: "Exchange 2007 end of support roadmap"
ms.author: dstrome
author: dstrome
manager: laurawi
ms.date: 1/31/2018
audience: ITPro
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: Ent_O365
ms.assetid: c3024358-326b-404e-9fe6-b618e54d977d
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
description: "Learn about your options after Exchange Server 2007 reached end of support and start planning migration to Microsoft 365, Office 365 or Exchange 2016."
---

# Exchange 2007 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

On **April 11, 2017**, Exchange Server 2007 reached end of support. If you haven't already begun your migration from Exchange 2007 to Microsoft 365, Office 365, or Exchange 2016, now's the time to start your planning. 
  
## What does end of support mean?

Exchange Server, like almost all Microsoft products, has a support lifecycle during which we provide new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the date of the product's initial release, and the end of this lifecycle is known as the product's end of support. Since Exchange 2007 reached its end of support on April 11, 2017, Microsoft no longer provides:
  
- Technical support for problems that may occur;
    
- Bug fixes for issues that are discovered and that may impact the stability and usability of the server;
    
- Security fixes for vulnerabilities that are discovered and that may make the server vulnerable to security breaches;
    
- Time zone updates.
    
Your installation of Exchange 2007 will continue to run after this date. However, because of the changes listed above, we strongly recommend that you migrate from Exchange 2007 as soon as possible.
  
For more information about Office 2007 servers nearing the end of support, see [Plan your upgrade from Office 2007 servers and products](upgrade-from-office-2007-servers-and-products.md).
  
## What are my options?

Now that Exchange 2007 has reached its end of support, we strongly recommend that you explore your options and prepare a migration plan. You can:
  
- Migrate to Microsoft 365 using cutover, staged, or hybrid migration;
    
- Migrate your Exchange 2007 servers to a newer version of Exchange on your on-premises servers.
    
The following sections explore each option in more detail.
  
### Migrate to Microsoft 365

Migrating your email to Microsoft 365 is your best and simplest option to help you retire your Exchange 2007 deployment. With a migration to Microsoft 365, you can make a single hop from 10-year-old technology to state-of-the-art features, like:
  
- Compliance capabilities such as Retention Policies, In-Place and Litigation Hold, in-place eDiscovery, and more;
    
- Microsoft 365 Groups;
    
- Focused Inbox;
    
- MyAnalytics;
    
- REST APIs for programmatic access to email, calendars, contacts, and so on.
    
Microsoft 365 also gets new features and experiences first and you and your users can usually start using them right away. In addition to new features, you won't have to worry about:
  
- Purchasing and maintaining hardware;
    
- Paying for heating and cooling of your servers;
    
- Keeping up to date on security, product, and time zone fixes;
    
- Maintaining storage and software to support compliance requirements;
    
- Upgrading to a new version of Exchange - you're always on the latest version of Exchange in Microsoft 365.
    
#### How should I migrate to Microsoft 365?

Depending on your organization, you have a few options that will help you get to Microsoft 365. When choosing a migration option, you need to consider a few things like the number of seats or mailboxes you need to move, how long you want the migration to last, and whether you need a seamless integration between your on-premises installation and Microsoft 365 during the migration. This table shows your migration options and the most important factors that will determine which method you'll use.
  
|
|
|**Migration option**|**Organization size**|**Duration**|
|:-----|:-----|:-----|
|Cutover migration  <br/> |Fewer than 150 seats  <br/> |A week or less  <br/> |
|Staged migration  <br/> |More than 150 seats  <br/> |A few weeks  <br/> |
|Full hybrid migration  <br/> |Several hundred to thousands of seats  <br/> |A few months or more  <br/> |
   
The following sections give you an overview of these methods. Check out [Decide on a migration path](https://support.office.com/article/Decide-on-a-migration-path-0d4f2396-9cef-43b8-9bd6-306d01df1e27) to learn the details of each method. 
  
#### Cutover migration

A cutover migration is one where, at a pre-selected date and time, you'll migrate all your mailboxes, distribution groups, contacts, and so on, to Microsoft 365; when you've finished, you'll shut down your on-premises Exchange servers and start using Microsoft 365 exclusively.
  
The cutover migration method is great for small organizations that don't have very many mailboxes, want to get to Microsoft 365 quickly, and don't want to deal with some of the complexities of the other methods. But it's also somewhat limited because it should be completed in a week or less and because it requires users to reconfigure their Outlook profiles. While cutover migration can handle up to 2,000 mailboxes, we strongly recommend you migrate a maximum of 150 mailboxes with this method. If you try to migrate more than 150 mailboxes, you could run out of time to transfer all the mailboxes before your deadline, and your IT support staff may get overwhelmed helping users reconfigure Outlook.
  
If you're thinking about doing a cutover migration, here are a few things to consider:
  
- Microsoft 365 will need to connect to your Exchange 2007 servers using Outlook Anywhere over TCP port 443;
    
- All on-premises mailboxes will be moved to Microsoft 365;
    
- You'll need an on-premises administrator account that has access to read the contents of your users' mailboxes;
    
- The Exchange 2007 accepted domains that you want to use in Microsoft 365 need to be added as verified domains in the service;
    
- Between the time you start the migration and when you begin the completion phase, Microsoft 365 will periodically synchronize the Microsoft 365 and on-premises mailboxes. This lets you complete the migration without worrying about email being left behind in your on-premises mailboxes;
    
- Users will receive new temporary passwords for their Microsoft 365 account that they'll need to change when they log in to their mailboxes for the first time;
    
- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate;
    
- Users will need to set up a new Outlook profile on each of their devices and download their email again. The amount of email that Outlook will download can vary. For more information, take a look at [Change how much mail to keep offline](https://support.office.com/article/Change-how-much-mail-to-keep-offline-f3a1251c-6dd5-4208-aef9-7c8c9522d633?ui=en-US&amp;rs=en-US&amp;ad=US&amp;fromAR=1).
    
To learn more about cutover migration, take a look at:
  
- [What you need to know about a cutover email migration](https://support.office.com/article/What-you-need-to-know-about-a-cutover-email-migration-to-Office-365-961978ef-f434-472d-a811-1801733869da)
    
- [Perform a cutover migration of email](https://support.office.com/article/Perform-a-cutover-migration-of-email-to-Office-365-9496e93c-1e59-41a8-9bb3-6e8df0cd81b4)
    
#### Staged migration

A staged migration is one where you have a few hundred or a few thousand mailboxes that you want to migrate to Microsoft 365, need to take a week or more to complete the migration, and don't need any of the advanced hybrid migration features like shared Free/Busy calendar information.
  
Staged migration is great for organizations that need to take more time to migrate their mailboxes to Microsoft 365, but still plan to complete the migration within a few weeks. You can migrate mailboxes in "batches" that enable you to control how many, and which, mailboxes are migrated at a given time. You might batch mailboxes of users in the same department, for example, to make sure they're all moved at the same time. Or, you might leave executive mailboxes until the last batch. As with cutover migrations, your users will need to recreate their Outlook profiles.
  
If you're thinking about doing a staged migration, here are a few things to consider:
  
- Microsoft 365 will need to connect to your Exchange 2007 servers using Outlook Anywhere over TCP port 443;
    
- You'll need an on-premises administrator account that has access to read the contents of your users' mailboxes;
    
- The Exchange 2007 accepted domains that you want to use in Microsoft 365 need to be added as verified domains in the service;
    
- You'll need to create a CSV file with the full name and email address of each mailbox you want to migrate in a batch. You'll also need to include a new password for each mailbox that you're migrating, and then send their password to each user. The user will be prompted to change the password the first time they log in to their new Microsoft 365 mailbox;
    
- Between the time you start the migration batch and when you begin the completion phase, Microsoft 365 will periodically synchronize the Microsoft 365 and on-premises mailboxes included in the batch. This lets you complete the migration without worrying about email being left behind in your on-premises mailboxes;
    
- Users will receive new temporary passwords for their Microsoft 365 account that they'll need to change when they log into their mailbox for the first time;
    
- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate;
    
- Users will need to set up a new Outlook profile on each of their devices and download their email again. The amount of email that Outlook will download can vary. For more information, take a look at [Change how much mail to keep offline](https://support.office.com/article/Change-how-much-mail-to-keep-offline-f3a1251c-6dd5-4208-aef9-7c8c9522d633?ui=en-US&amp;rs=en-US&amp;ad=US&amp;fromAR=1).
    
To learn more about staged migration, take a look at:
  
- [What you need to know about a staged email migration](https://support.office.com/article/What-you-need-to-know-about-a-staged-email-migration-to-Office-365-7e2c82be-5f3d-4e36-bc6b-e5b4d411e207)
    
- [Perform a staged migration of email](https://support.office.com/article/Perform-a-staged-migration-of-email-to-Office-365-83bc0b69-de47-4cc4-a57d-47e478e4894e)
    
#### Full hybrid

A full hybrid migration is one where your organization has many hundreds, up to tens of thousands, of mailboxes and you want to move some or all of them to Microsoft 365. Because these migrations are typically longer-term, hybrid migrations make it possible to:
  
- Show on-premises users the free/busy calendar information for users in Microsoft 365, and vice versa;
    
- See a unified global address list that contains recipients in both on-premises and Microsoft 365;
    
- View full Outlook recipient properties for all users, regardless of whether they're on-premises or in Microsoft 365;
    
- Secure email communication between on-premises Exchange servers and Microsoft 365 using TLS and certificates;
    
- Treat messages sent between on-premises Exchange servers and Microsoft 365 as internal, enabling them to:
    
  - Be properly evaluated and processed by transport and compliance agents targeting internal messages;
    
  - Bypass anti-spam filters.
    
Full hybrid migrations are best for organizations that expect to stay in a hybrid configuration for many months or more. You'll get the features listed earlier in this section, plus directory synchronization, better integrated compliance features, and the ability to move mailboxes to and from Microsoft 365 using online mailbox moves. Microsoft 365 becomes an extension of your on-premises organization.
  
If you're thinking about doing a full hybrid migration, here are a few things to consider:
  
- Full hybrid migrations aren't suited to all types of organizations. Due to the complexity of full hybrid migrations, organizations with less than a few hundred mailboxes don't typically see benefits that justify the effort and cost needed to set one up. If this sounds like your organization, we strongly recommend that you consider Cutover or Staged migrations instead;
    
- You'll need to deploy at least one Exchange 2013 server in your Exchange 2007 organization to act as a "hybrid server". This server will communicate with Microsoft 365 on behalf of your Exchange 2007 servers;
    
- Microsoft 365 will need to connect to the "hybrid server" using Outlook Anywhere over TCP port 443;
    
- You'll need to set up directory synchronization using Azure Active Directory (Azure AD) Connect between your on-premises Active Directory servers and Microsoft 365;
    
- Users will be able to log in to their Microsoft 365 mailbox using the same username and password they use when they log into the local network (requires Azure AD Connect with password synchronization and/or Active Directory Federation Services);
    
- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate;
    
- Users don't need to set up a new Outlook profile on most of their devices (some older Android phones might need a new profile) and won't need to re-download their email.
    
If a full hybrid migration sounds right for you, take a look at the following resources to help you with your migration:
  
- [Exchange Deployment Assistant](https://aka.ms/exdeploy)
    
- [Exchange Server Hybrid Deployments](https://technet.microsoft.com/library/jj200581%28v=exchg.150%29.aspx)
    
- [Hybrid Configuration wizard](https://technet.microsoft.com/library/hh529921%28v=exchg.150%29.aspx)
    
- [Hybrid Configuration wizard FAQs](https://technet.microsoft.com/library/mt488940%28v=exchg.150%29.aspx)
    
- [Hybrid deployment prerequisites](https://technet.microsoft.com/library/hh534377%28v=exchg.150%29.aspx)
    
### Migrate to a newer version of Exchange Server

While we strongly believe that you can achieve the best value and user experience by migrating to Microsoft 365, we also understand that some organizations need to keep their email on-premises. This could be because of regulatory requirements, to guarantee data isn't stored in a datacenter located in another country, and so on. If you choose to keep your email on-premises, you can migrate your Exchange 2007 environment to Exchange 2010, Exchange 2013, or Exchange 2016.
  
We recommend that you migrate to Exchange 2016 if you can't migrate to Microsoft 365. Exchange 2016 includes all the features and advancements included with previous releases of Exchange, and it most closely matches the experience available with Microsoft 365 (although some features are available only in Microsoft 365). Check out just a few of the things you've been missing:
  
|**Exchange release**|**Features**|
|:-----|:-----|
|Exchange 2010  <br/> | Role-Based Access Control (permissions without ACLs)  <br/>  Outlook Web App mailbox policies  <br/>  Ability to share free/busy and delegate calendars between organizations  <br/> |
|Exchange 2013  <br/> | *Features from Exchange 2010 and…*  <br/>  Simplified architecture reducing the number of server roles to three (Mailbox, Client Access, Edge Transport)  <br/>  Data loss prevention policies (DLP) that help keep sensitive information from leaking  <br/>  Significantly improved Outlook Web App Experience  <br/> |
|Exchange 2016  <br/> | *Features from Exchange 2013 and…*  <br/>  Further simplified server roles to just Mailbox and Edge Transport  <br/>  Improved DLP along with integration with SharePoint  <br/>  Improved database resilience  <br/>  Online document collaboration  <br/> |
   
#### Which version should I migrate to?

We recommend that you initially assume that you'll migrate to Exchange 2016. Then, use the following information to confirm your assumption or to rule out Exchange 2016. If you can't migrate to Exchange 2016 for one reason or another, do the same process with Exchange 2013, and so on.
  
|**Consideration**|**More Info**|
|:-----|:-----|
|End of support dates  <br/> | Like Exchange 2007, each version of Exchange has its own end of support date:  <br/> **Exchange 2010** - January 2020  <br/> **Exchange 2013** - April 2023  <br/> **Exchange 2016** - October 2025  <br/>  The earlier the end of support date, the sooner you'll need to perform another migration. January 2020 is a lot closer than you think!  <br/> |
|Migration path to Exchange 2010 and 2013  <br/> |Here are the general phases for migrating to Exchange 2010 or Exchange 2013:  <br/> Install Exchange 2010 or 2013 into your existing Exchange 2007 organization Move services and other infrastructure to Exchange 2010 or 2013 Move mailboxes and public folders to Exchange 2010 or 2013 Decommission remaining Exchange 2007 servers |
|Migration path to Exchange 2016  <br/> |Here are the general phases for migrating to Exchange 2016:  <br/> Install Exchange 2013 into your existing Exchange 2007 organization Move services and other infrastructure to Exchange 2013 Move mailboxes and public folders to Exchange 2013 Decommission remaining Exchange 2007 servers Install Exchange 2016 into your existing Exchange 2013 organization. Move mailboxes, public folders, services, and other infrastructure to Exchange 2016 (order doesn't matter). Decommission remaining Exchange 2013 servers > [!NOTE]> Migrating from Exchange 2013 to Exchange 2016 is simple. Both versions have almost the same hardware requirements. This, and the fact these versions are so compatible, means you can rebuild a server you bought for Exchange 2013 and install Exchange 2016 on it. And, with online mailbox moves, most users will never notice their mailbox being moved off the server and then back after you've rebuilt it with Exchange 2016.           |
|Version coexistence  <br/> | When migrating to:  <br/> **Exchange 2016** Exchange 2016 can't be installed in an organization that includes an Exchange 2007 server. You'll first need to migrate to Exchange 2010 or 2013 (we strongly recommend Exchange 2013), remove all Exchange 2007 servers, and then migrate to Exchange 2016.  <br/> **Exchange 2010 or Exchange 2013** You can install Exchange 2010 or Exchange 2013 into an existing Exchange 2007 organization. This enables you to install one or more Exchange 2010 or 2013 servers and perform your migration.  <br/> |
|Server hardware  <br/> | Server hardware requirements have changed from Exchange 2007. You'll need to make sure the hardware you're going to use is compatible. You can find out more about hardware requirements for each version here:  <br/> [Exchange 2016 System Requirements](https://technet.microsoft.com/library/aa996719%28v=exchg.160%29.aspx) <br/> [Exchange 2013 System Requirements](https://technet.microsoft.com/library/aa996719%28v=exchg.150%29.aspx) <br/> [Exchange 2010 System Requirements](https://technet.microsoft.com/library/aa996719%28v=exchg.141%29.aspx) <br/>  You'll find that with the significant improvements in Exchange performance, and the increased computing power and storage capacity in newer servers, you'll likely need fewer servers to support the same number of mailboxes.  <br/> |
|Operating system version  <br/> | The minimum supported operating system versions for each version are:  <br/> **Exchange 2016** Windows Server 2012  <br/> **Exchange 2013** Windows Server 2008 R2 SP1  <br/> **Exchange 2010** Windows Server 2008 SP2  <br/>  You can find more information about operating system support at [Exchange Supportability Matrix](https://technet.microsoft.com/library/ff728623%28v=exchg.150%29.aspx).  <br/> |
|Active Directory forest functional level  <br/> | The minimum supported Active Directory forest functional levels for each version are:  <br/> **Exchange 2016** Windows Server 2008 R2 SP1  <br/> **Exchange 2013** Windows Server 2003  <br/> **Exchange 2010** Windows Server 2003  <br/>  You can find more information about forest functional level support at [Exchange Supportability Matrix](https://technet.microsoft.com/library/ff728623%28v=exchg.150%29.aspx).  <br/> |
|Office client versions  <br/> | The minimum supported Office client versions for each version are:  <br/> **Exchange 2016** Office 2010 (with the latest updates)  <br/> **Exchange 2013** Office 2007 SP3  <br/> **Exchange 2010** Office 2003  <br/>  You can find more information about Office client support at [Exchange Supportability Matrix](https://technet.microsoft.com/library/ff728623%28v=exchg.150%29.aspx).  <br/> |
   
#### How do I migrate?

If you've decided that you want to keep your email on-premises, you can use the following resources to help you with your migration:
  
- [Exchange Deployment Assistant](https://aka.ms/exdeploy)
    
- Active Directory schema changes for Exchange [2016](https://technet.microsoft.com/library/bb738144%28v=exchg.160%29.aspx), [2013](https://technet.microsoft.com/library/bb738144%28v=exchg.150%29.aspx), [2010](https://www.microsoft.com/download/en/details.aspx?displaylang=en&amp;id=5401)
    
- System requirements for Exchange [2016](https://technet.microsoft.com/library/aa996719%28v=exchg.160%29.aspx), [2013](https://technet.microsoft.com/library/aa996719%28v=exchg.150%29.aspx), [2010](https://technet.microsoft.com/library/aa996719%28v=exchg.141%29.aspx)
    
- Prerequisites for Exchange [2016](https://technet.microsoft.com/library/bb691354%28v=exchg.160%29.aspx), [2013](https://technet.microsoft.com/library/bb691354%28v=exchg.150%29.aspx), [2010](https://technet.microsoft.com/library/bb691354%28v=exchg.141%29.aspx)
    
## What if I need help?

If you're migrating to Microsoft 365, you might be eligible to use our Microsoft FastTrack service. FastTrack provides best practices, tools, and resources to make your migration to Microsoft 365 as seamless as possible. Best of all, you'll have a real support engineer that will walk you through your migration, from planning and design all the way to migrating your last mailbox. If you want to know more about FastTrack, take a look at [Microsoft FastTrack](https://fasttrack.microsoft.com/).
  
If you run into any problems during your migration to Microsoft 365 and you aren't using FastTrack, or your migration to a newer version of Exchange Server, we're here to help. Here are some resources you can use:
  
- [Technical community](https://social.technet.microsoft.com/Forums/office/home?category=exchangeserver)
    
- [Customer support](https://support.microsoft.com/gp/support-options-for-business)
    
## Related topics

[Resources to help you upgrade your Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)