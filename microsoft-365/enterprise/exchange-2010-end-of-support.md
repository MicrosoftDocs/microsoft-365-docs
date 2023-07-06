---
title: "Exchange 2010 end of support roadmap"
ms.author: v-aiyengar
author: dstrome
manager: scotv
ms.date: 08/10/2020
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
ms.assetid: e150e7b9-c432-4c8d-a0ae-c11847129a7d
f1.keywords:
- NOCSH
description: "Exchange 2010 has reached end of support. Use this planning roadmap to prepare to upgrade to Exchange Online or a newer version of Exchange Server on-premises."
---

# Exchange 2010 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Exchange Server 2010 reached its end of support on **October 13, 2020**. If you haven't already begun your migration from Exchange 2010 to Microsoft 365, Office 365, or Exchange 2016, now's the time to start planning.

## What does *end of support* mean?

Most Microsoft products have a support lifecycle during which they get new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. Because Exchange 2010 reached its end of support on October 13, 2020, Microsoft no longer provides:

- Technical support for problems that may occur.
- Bug fixes for issues that may impact the stability and usability of the server.
- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.
- Time zone updates.

Your installation of Exchange 2010 will continue to run after this date. But because of the changes listed above, we strongly recommend that you migrate from Exchange 2010 as soon as possible.

For more information about nearing the end of support, see [Resources to help you upgrade from Office 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md).

## What are my options?

It's a great time to explore your options and prepare a migration plan. You can:

- Migrate fully to Microsoft 365. Migrate mailboxes using cutover, minimal hybrid, or full hybrid migration. Then remove on-premises Exchange servers and Active Directory.
- Migrate your Exchange 2010 servers to Exchange 2016 on your on-premises servers.

> [!IMPORTANT]
> If your organization chooses to migrate mailboxes to Microsoft 365 but plans to keep DirSync or Azure AD Connect in place to continue managing user accounts from on-premises Active Directory, you need to keep at least one Microsoft Exchange server on-premises. If you remove all Exchange servers, you won't be able to make changes to Exchange recipients in Exchange Online because the source of authority remains in your on-premises Active Directory. Changes need to be made there. In this scenario, you have the following options:
>
> - *Recommended:* If you migrated your mailboxes to Microsoft 365 and upgraded your servers by October 13, 2020, use Exchange 2010 to connect to Microsoft 365 and migrate mailboxes. Next, migrate Exchange 2010 to Exchange 2016, and decommission any remaining Exchange 2010 servers.
> - If you didn't complete the mailbox migration and on-premises server upgrade by October 13, 2020, upgrade your on-premises Exchange 2010 servers to Exchange 2016 first. Then use Exchange 2016 to connect to Microsoft 365 and migrate mailboxes.

> [!NOTE]
> It's little more complicated, but you can also migrate mailboxes to Microsoft 365 while migrating your on-premises Exchange 2010 servers to Exchange 2016.

Here are the three paths you can take to avoid the end of support for Exchange Server 2010.

![Exchange Server 2010 upgrade paths.](../media/exchange-2010-end-of-support/exchange-2010-end-of-support-options.png)

The following sections explore each option in more detail.

## Migrate to Microsoft 365

Migrating your email to Microsoft 365 is the best and simplest option to help you retire your Exchange 2010 deployment. With a migration to Microsoft 365, you can make a single hop from old technology to current features, including:

- Compliance capabilities such as Retention Policies, In-Place and Litigation Hold, in-place eDiscovery, and more.
- Microsoft Teams.
- Power BI.
- Focused Inbox.
- MyAnalytics.

Microsoft 365 also gets new features and experiences first, so your organization can start using them right away. Also, you won't have to worry about:

- Purchasing and maintaining hardware.
- Paying to heat and cool your servers.
- Keeping up to date on security, product, and time-zone fixes.
- Maintaining storage and software to support compliance requirements.
- Upgrading to a new version of Exchange. You're always on the latest version of Exchange in Microsoft 365.

### How should I migrate to Microsoft 365?

Depending on your organization, you have a few options to get to Microsoft 365. First, you need to consider a few things, such as:

- The number of seats or mailboxes you need to move.
- How long you want the migration to last.
- Whether you need a seamless integration between your on-premises installation and Microsoft 365 during the migration.

This table shows your migration options and the most important factors that determine which method to use.

|Migration option|Organization size|Duration|
|---|---|---|
|Cutover migration|Fewer than 150 seats|A week or less|
|Minimal hybrid migration|Fewer than 150 seats|A few weeks or less|
|Full hybrid migration|More than 150 seats|A few weeks or more|

The following sections give you an overview of these methods. For more information, see [Decide on a migration path](https://support.office.com/article/Decide-on-a-migration-path-0d4f2396-9cef-43b8-9bd6-306d01df1e27).

### Cutover migration

In a cutover migration, you migrate all your mailboxes, distribution groups, contacts, and so on, to Office 365 at a set date and time. When you're done, you shut down your on-premises Exchange servers and start using Microsoft 365 exclusively.

Cutover migration is great for small organizations that don't have many mailboxes, want to get to Microsoft 365 quickly, and don't want to deal with the complexity of the other methods. But it should be completed in a week or less. And it requires users to reconfigure their Outlook profiles. Cutover migration can migrate up to 2,000 mailboxes, but we recommend you use it for a maximum of 150. If you try to migrate more, you could run out of time to transfer all the mailboxes before your deadline, and your IT support staff may get overwhelmed with requests to help users reconfigure Outlook.

Here are things to consider about cutover migration:

- Microsoft 365 will need to connect to your Exchange 2010 servers by using Outlook Anywhere over TCP port 443.
- All on-premises mailboxes will be moved to Microsoft 365.
- You'll need an on-premises administrator account that has read access to your users' mailboxes.
- The Exchange 2010 accepted domains that you want to use in Microsoft 365 need to be added as verified domains in the service.
- Between when you start the migration and when you begin the completion phase, Microsoft 365 will periodically synchronize the Microsoft 365 and on-premises mailboxes. This lets you complete the migration without worrying about email being left behind in your on-premises mailboxes.
- Users will receive new temporary passwords for their Microsoft 365 account. They'll need to change those when they sign in to their mailboxes for the first time.
- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate.
- Users will need to set up a new Outlook profile on each of their devices and download their email again. The amount of email that Outlook will download can vary. For more information, see [Work offline in Outlook](https://support.microsoft.com/office/f3a1251c-6dd5-4208-aef9-7c8c9522d633).

To learn more about cutover migration, see:

- [What you need to know about a cutover email migration](/Exchange/mailbox-migration/what-to-know-about-a-cutover-migration)
- [Perform a cutover migration of email to Office 365](/Exchange/mailbox-migration/cutover-migration-to-office-365)

### Minimal hybrid migration

In a minimal hybrid, or express, migration you move a few hundred mailboxes to Microsoft 365 within a few weeks. This method doesn't support advanced hybrid-migration features like shared free/busy calendar information.

Minimal hybrid migration is great for organizations that need to take more time to migrate their mailboxes to Microsoft 365, but still plan to complete the migration within a few weeks. You get some of the benefits of the more advanced *full-hybrid migration* without much of the complexity. You can control how many and which mailboxes to migrate at a given time. Microsoft 365 mailboxes will be created with the user names and passwords of the on-premises accounts. And, unlike cutover migrations, your users don't have to recreate their Outlook profiles.

Here are things to consider about minimal hybrid migration:

- You'll need to do a one-time directory synchronization between your on-premises Active Directory servers and Microsoft 365.
- Users will be able to sign in to their Microsoft 365 mailbox with the same user name and password as before their mailbox.
- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox that you migrate.
- Users won't need to set up a new Outlook profile on most of their devices, though some older Android phones might need a new profile. Users won't need to redownload their email.

For more information, see [Use Minimal Hybrid to quickly migrate Exchange mailboxes to Office 365](/Exchange/mailbox-migration/use-minimal-hybrid-to-quickly-migrate).

### Full hybrid

In a full hybrid migration, you have many hundreds, up to tens of thousands, of mailboxes, and you move some or all to Microsoft 365. Because these migrations are typically longer-term, hybrid migrations make it possible to:

- Show on-premises users the free/busy calendar information for users in Microsoft 365, and vice versa.
- See a unified global address list that contains recipients in both on-premises and Microsoft 365.
- View full Outlook recipient properties for all users, regardless of whether they're on-premises or in Microsoft 365.
- Secure email communication between on-premises Exchange servers and Office 365 using TLS and certificates.
- Treat messages sent between on-premises Exchange servers and Microsoft 365 as internal, enabling them to:
  - Be properly evaluated and processed by transport and compliance agents targeting internal messages.
  - Bypass anti-spam filters.

Full hybrid migrations are best for organizations that expect to stay in a hybrid configuration for many months or more. You get the features listed earlier in this section, plus directory synchronization, better integrated compliance features, and the ability to move mailboxes to and from Microsoft 365 using online mailbox moves. Microsoft 365 becomes an extension of your on-premises organization.

Things to consider about full-hybrid migration:

- They aren't suited to all organizations. Due to the complexity of full hybrid migrations, organizations with less than a few hundred mailboxes don't typically see benefits that justify the effort and cost involved. In such cases, we recommend that you consider cutover or minimal hybrid migration instead.
- You need to set up directory synchronization using Azure Active Directory (Azure AD) Connect between your on-premises Active Directory servers and Microsoft 365.
- Users will be able to sign in to their Microsoft 365 mailbox with same user name and password they use when they sign in to the local network. (This functionality requires Azure AD Connect with password synchronization and/or Active Directory Federation Services).
- You need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate.
- Users don't need to set up a new Outlook profile on most of their devices, although some older Android phones might need a new profile. Users won't need to redownload their email.

> [!IMPORTANT]
> If your organization chooses to migrate mailboxes to Microsoft 365 but plans to keep DirSync or Azure AD Connect in place to continue managing user accounts from on-premises Active Directory, you need to keep at least one Exchange server on-premises. If all Exchange servers are removed, you won't be able to make changes to Exchange recipients in Exchange Online. This is because the source of authority remains in your on-premises Active Directory and changes need to be made there.

If a full hybrid migration sounds right for you, see the following helpful resources:

- [Exchange Deployment Assistant](/exchange/exchange-deployment-assistant)
- [Exchange Server Hybrid Deployments](/exchange/exchange-hybrid)
- [Hybrid Configuration wizard](/exchange/hybrid-configuration-wizard)
- [Hybrid Configuration wizard FAQs](/exchange/hybrid-configuration-wizard-faqs)
- [Hybrid deployment prerequisites](/exchange/hybrid-deployment-prerequisites)

## Upgrade to a newer version of Exchange Server on-premises

We strongly believe that you get the best value and user experience by migrating fully to Microsoft 365. But we understand that some organizations need to keep some Exchange Servers on-premises. This might be because of regulatory requirements, to guarantee data isn't stored in a foreign datacenter, because you have unique settings or requirements that can't be met in the cloud, or because you need Exchange to manage cloud mailboxes because you still use Active Directory on-premises. In any case, if you keep Exchange on-premises, you should ensure your Exchange 2010 environment is upgraded to at least Exchange 2013 or Exchange 2016.

For the best experience, we recommend that you upgrade your remaining on-premises environment to Exchange 2016. You don't need to install Exchange Server 2013 if you want to go straight from Exchange Server 2010 to Exchange Server 2016.

Exchange 2016 includes all the features of previous releases of Exchange. It most closely matches the experience available with Microsoft 365, although some features are available only in Microsoft 365. Check out just a few of the things you've been missing:

|Exchange release|Features|
|---|---|
|**Exchange 2013**|Simplified architecture reduces the number of server roles to three (Mailbox, Client Access, Edge Transport)|
||Data loss prevention policies (DLP) that help keep sensitive information from leaking|
||Improved Outlook Web App experience|
|**Exchange 2016**|*Features from Exchange 2013 and ...*|
||Further simplified server roles to just Mailbox and Edge Transport|
||Improved DLP along with integration with SharePoint|
||Improved database resilience|
||Online document collaboration|


|Consideration|More information|
|---|---|
|End of support dates|Like Exchange 2010, each version of Exchange has its own end-of-support date: <br/><br/> Exchange 2013 - April 2023 <br/><br/> Exchange 2016 - October 2025 <br/><br/> The earlier the end-of-support date, the sooner you'll need to perform another migration. April 2023 is a lot closer than you think!|
|Migration path to Exchange 2013 or 2016|The migration path from Exchange 2010 to a newer version is the same whether you choose Exchange 2013 or Exchange 2016: <br/><br/> Install Exchange 2013 or 2016 into your existing Exchange 2010 organization. <br/><br/> Move services and other infrastructure to Exchange 2013 or 2016. <br/><br/> Move mailboxes and public folders to Exchange 2013 or 2016 Decommission remaining Exchange 2010 servers.|
|Version coexistence|When migrating to Exchange 2013 or Exchange 2016, you can install either version into an existing Exchange 2010 organization. This enables you to install one or more Exchange 2013 or Exchange 2016 servers and do your migration.|
|Server hardware|Server hardware requirements have changed from Exchange 2010. Make sure your hardware is compatible. Find out more about hardware requirements for each version here: <br/><br/> [Exchange 2016 system requirements](/Exchange/plan-and-deploy/system-requirements?view=exchserver-2016&preserve-view=true) <br/><br/> [Exchange 2013 system requirements](/Exchange/exchange-2013-system-requirements-exchange-2013-help) <br/><br/> With the significant improvements in Exchange performance and the increased computing power and storage capacity in newer servers, you'll likely need fewer servers to support the same number of mailboxes.|
|Operating system version|The minimum supported operating system versions for each version are: <br/><br/> Exchange 2016 - Windows Server 2012 <br/><br/> Exchange 2013 - Windows Server 2008 R2 SP1 <br/><br/> You can find more information about operating system support at [Exchange Supportability Matrix](/exchange/plan-and-deploy/supportability-matrix).|
|Active Directory forest functional level|The minimum supported Active Directory forest functional levels for each version are: <br/><br/> Exchange 2016 - Windows Server 2008 R2 SP1 <br/><br/> Exchange 2013 - Windows Server 2003 <br/><br/> You can find more information about forest functional level support at [Exchange Supportability Matrix](/exchange/plan-and-deploy/supportability-matrix).|
|Office client versions|The minimum supported Office client versions for each version are: <br/><br/> Exchange 2016 - Office 2010 (with the latest updates) <br/><br/> Exchange 2013 - Office 2007 SP3 <br/><br/> Find more information about Office client support at [Exchange Supportability Matrix](/exchange/plan-and-deploy/supportability-matrix).|

Use the following resources to help with your migration:

- [Exchange Deployment Assistant](/exchange/exchange-deployment-assistant)
- Active Directory schema changes for Exchange [2016](/exchange/plan-and-deploy/active-directory/ad-schema-changes?view=exchserver-2016&preserve-view=true), [2013](/Exchange/exchange-2013-active-directory-schema-changes-exchange-2013-help)
- System requirements for Exchange [2016](/exchange/plan-and-deploy/system-requirements?view=exchserver-2016&preserve-view=true), [2013](/Exchange/exchange-2013-system-requirements-exchange-2013-help)
- Prerequisites for Exchange [2016](/exchange/plan-and-deploy/prerequisites?view=exchserver-2016&preserve-view=true), [2013](/Exchange/exchange-2013-prerequisites-exchange-2013-help)

## Summary of options for Office 2010 client and servers and Windows 7

For a visual summary of the upgrade, migrate, and move-to-the-cloud options for Office 2010 clients and servers and Windows 7, see the [end of support poster](../downloads/Office2010Windows7EndOfSupport.pdf).

[![End of support for Office 2010 clients and servers and Windows 7 poster.](../media/microsoft-365-overview/office2010-windows7-end-of-support.png)](../downloads/Office2010Windows7EndOfSupport.pdf)

This one-page poster illustrates the various paths you can take to respond to Office 2010 client and server products and Windows 7 reaching end of support, with preferred paths and option support in Microsoft 365 Enterprise highlighted.

You can also [download](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/Office2010Windows7EndOfSupport.pdf) this poster and print it in letter, legal, or tabloid (11 x 17) format.

## What if I need help?

If you're migrating to Microsoft 365, you might be eligible to use our Microsoft FastTrack service. FastTrack provides best practices, tools, and resources to make your migration to Microsoft 365 as seamless as possible. Best of all, you'll have a support engineer walk you through from planning and design to migrating your last mailbox. For more about FastTrack, see [Microsoft FastTrack](https://fasttrack.microsoft.com/).

If you run into problems during your migration to Microsoft 365 and you aren't using FastTrack, or you're migrating to a newer version of Exchange Server, here are some resources you can use:

- [Technical community](https://social.technet.microsoft.com/Forums/office/home?category=exchangeserver)
- [Customer support](https://support.microsoft.com/gp/support-options-for-business)

## Related articles

[Resources to help you upgrade from Office 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md)
