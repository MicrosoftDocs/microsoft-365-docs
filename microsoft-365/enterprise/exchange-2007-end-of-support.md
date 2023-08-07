---
title: "Exchange 2007 end of support roadmap"
ms.author: v-aiyengar
author: dstrome
manager: serdars
ms.date: 1/31/2018
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
ms.assetid: c3024358-326b-404e-9fe6-b618e54d977d
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
description: "Learn about your options after Exchange Server 2007 end of support, and start planning migration to Microsoft 365, Office 365, or Exchange 2016."
---

# Exchange 2007 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Exchange Server 2007 reached end of support in April 2017. If you haven't started your migration from Exchange 2007 to Microsoft 365, Office 365, or Exchange 2016, now's the time to start planning.

## What does *end of support* mean?

Exchange Server, like almost all Microsoft products, has a support lifecycle during which we provide new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. Since Exchange 2007 reached its end of support on April 11, 2017, Microsoft no longer provides:

- Technical support for problems that may occur.

- Bug fixes for issues that may impact the stability and usability of the server.

- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.

- Time zone updates.

Your installation of Exchange 2007 will continue to run after the end-of-support date. But because there are no new updates or support, we strongly recommend that you migrate from Exchange 2007 as soon as possible.

For more information about Office 2007 servers nearing the end of support, see [Plan your upgrade from Office 2007 servers and products](upgrade-from-office-2007-servers-and-products.md).

## What are my options?

You can:

- Migrate to Microsoft 365 by using cutover, staged, or hybrid migration.

- Migrate your Exchange 2007 servers to a newer version of Exchange on your on-premises servers.

The following sections explore each option in more detail.

### Migrate to Microsoft 365

Migrating your email to Microsoft 365 is the best and simplest option to help retire your Exchange 2007 deployment. With a migration to Microsoft 365, you can make a single hop from 10-year-old technology to state-of-the-art features, including:

- Compliance capabilities such as Retention Policies, In-Place and Litigation Hold, in-place eDiscovery, and more

- Microsoft 365 Groups

- Focused Inbox

- MyAnalytics

- REST APIs for programmatic access to email, calendars, contacts, and so on

Microsoft 365 also gets new features and experiences first, so you and your users can usually start using them right away. And you won't have to worry about:

- Purchasing and maintaining hardware.

- Paying to heat and cool your servers.

- Keeping up to date on security, product, and time-zone fixes.

- Maintaining storage and software to support compliance requirements.

- Upgrading to a new version of Exchange. With Microsoft 365, you're always on the latest version of Exchange.

#### How should I migrate to Microsoft 365?

You have a few migration options. You need to consider a few things, including:

- The number of seats or mailboxes you need to move.
- How long you want the migration to last.
- Whether you need seamless integration between your on-premises installation and Microsoft 365 during the migration.

This table shows your migration options and the most important factors that determine which method to use:

|Migration option|Organization size|Duration|
|---|---|---|
|Cutover migration|Fewer than 150 seats|A week or less|
|Staged migration|More than 150 seats|A few weeks|
|Full hybrid migration|Several hundred to thousands of seats|A few months or more|

The following sections provide an overview of these methods. For more detail, see [Decide on a migration path](https://support.office.com/article/Decide-on-a-migration-path-0d4f2396-9cef-43b8-9bd6-306d01df1e27).

#### Cutover migration

In a cutover migration, you migrate all your mailboxes, distribution groups, contacts, and so on, to Microsoft 365 at a preselected date and time. After the migration is complete, you shut down your on-premises Exchange servers and start using Microsoft 365 exclusively.

Cutover migration is great for small organizations that don't have many mailboxes, want to get to Microsoft 365 quickly, and don't want to deal with some of the complexities of the other methods. But it should be completed in a week or less, and it requires users to reconfigure their Outlook profiles. Cutover migration can handle up to 2,000 mailboxes, but we strongly recommend you use it to migrate a maximum of 150 mailboxes. If you try to migrate more, you could run out of time to transfer all the mailboxes before your deadline, and your IT support staff may get overwhelmed with requests to help users reconfigure Outlook.

If you're thinking about doing a cutover migration, here are things to consider:

- Microsoft 365 will need to connect to your Exchange 2007 servers using Outlook Anywhere over TCP port 443.

- All on-premises mailboxes will be moved to Microsoft 365.

- You'll need an on-premises administrator account that has read access to your users' mailboxes.

- The Exchange 2007 accepted domains that you want to use in Microsoft 365 need to be added as verified domains in the service.

- Between the time you start the migration and when you begin the completion phase, Microsoft 365 will periodically synchronize the Microsoft 365 and on-premises mailboxes. This lets you complete the migration without worrying about email being left behind in your on-premises mailboxes.

- Users will receive new temporary passwords for their Microsoft 365 accounts. They'll need to change their password when they sign in to their mailbox for the first time.

- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate.

- Users will need to set up a new Outlook profile on each of their devices and download their email again. The amount of email that Outlook will download can vary. For more information, see [Change how much mail to keep offline](https://support.office.com/article/Change-how-much-mail-to-keep-offline-f3a1251c-6dd5-4208-aef9-7c8c9522d633?ui=en-US&amp;rs=en-US&amp;ad=US&amp;fromAR=1).

For more information about cutover migration, see:

- [What you need to know about a cutover email migration](https://support.office.com/article/What-you-need-to-know-about-a-cutover-email-migration-to-Office-365-961978ef-f434-472d-a811-1801733869da)

- [Perform a cutover migration of email](https://support.office.com/article/Perform-a-cutover-migration-of-email-to-Office-365-9496e93c-1e59-41a8-9bb3-6e8df0cd81b4)

#### Staged migration

In a staged migration, you have a few hundred or a few thousand mailboxes that you want to migrate to Microsoft 365, need to take a week or more to complete the migration, and don't need any of advanced hybrid migration features like shared Free/Busy calendar information.

Staged migration is great for organizations that need to take more time to migrate their mailboxes to Microsoft 365 but still plan to complete the migration within a few weeks. You can migrate mailboxes in batches. You control how many and which mailboxes are migrated at a given time. You might batch mailboxes of users in the same department, for example, to make sure they're all moved at the same time. Or, you might leave executive mailboxes until the last batch. As with cutover migrations, your users will need to recreate their Outlook profiles.

If you're thinking about doing a staged migration, here are things to consider:

- Microsoft 365 will need to connect to your Exchange 2007 servers by using Outlook Anywhere over TCP port 443.

- You'll need an on-premises administrator account that has read access to your users' mailboxes.

- The Exchange 2007 accepted domains that you plan to use in Microsoft 365 need to be added as verified domains in the service.

- You'll need to create a CSV file with the full name and email address of each mailbox that you plan to migrate in a batch. You'll also need to include a new password for each mailbox that you're migrating, and send that password to each user. The user will be prompted to change the password the first time that they sign in to their new Microsoft 365 mailbox.

- Between the time you start the migration batch and when you begin the completion phase, Microsoft 365 will periodically synchronize the Microsoft 365 and on-premises mailboxes included in the batch. This lets you complete the migration without worrying about email being left behind in your on-premises mailboxes.

- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate.

- Users will need to set up a new Outlook profile on each of their devices and download their email again. The amount of email that Outlook will download can vary. For more information, see [Change how much mail to keep offline](https://support.office.com/article/Change-how-much-mail-to-keep-offline-f3a1251c-6dd5-4208-aef9-7c8c9522d633?ui=en-US&amp;rs=en-US&amp;ad=US&amp;fromAR=1).

For more information about staged migration, see:

- [What you need to know about a staged email migration](https://support.office.com/article/What-you-need-to-know-about-a-staged-email-migration-to-Office-365-7e2c82be-5f3d-4e36-bc6b-e5b4d411e207)

- [Perform a staged migration of email](https://support.office.com/article/Perform-a-staged-migration-of-email-to-Office-365-83bc0b69-de47-4cc4-a57d-47e478e4894e)

#### Full hybrid

In a full hybrid migration, your organization has many hundreds, up to tens of thousands, of mailboxes, and you want to move some or all of them to Microsoft 365. Because these migrations are typically longer-term, hybrid migrations make it possible to:

- Show on-premises users the free/busy calendar information for users in Microsoft 365, and vice versa.

- See a unified global address list that contains recipients in both on-premises and Microsoft 365.

- View full Outlook recipient properties for all users, regardless of whether they're on-premises or in Microsoft 365.

- Secure email communication between on-premises Exchange servers and Microsoft 365 using TLS and certificates.

- Treat messages sent between on-premises Exchange servers and Microsoft 365 as internal, enabling them to:

  - Be properly evaluated and processed by transport and compliance agents targeting internal messages.

  - Bypass anti-spam filters.

Full hybrid migration is best for organizations that expect to stay in a hybrid configuration for many months or more. You'll get the features listed earlier in this section, plus directory synchronization, better integrated compliance features, and the ability to move mailboxes to and from Microsoft 365 by using online mailbox moves. Microsoft 365 becomes an extension of your on-premises organization.

If you're thinking about doing a full hybrid migration, here are things to consider:

- Full hybrid migration isn't suited to all types of organizations. Due to the complexity of full hybrid migrations, organizations with less than a few hundred mailboxes don't typically see benefits that justify the effort and cost needed to set one up. If this sounds like your organization, we recommend that you consider a cutover or staged migration instead.

- You'll need to deploy at least one Exchange 2013 server in your Exchange 2007 organization to act as a "hybrid server." This server will communicate with Microsoft 365 on behalf of your Exchange 2007 servers.

- Microsoft 365 will need to connect to the "hybrid server" using Outlook Anywhere over TCP port 443.

- You'll need to set up directory synchronization using Azure Active Directory (Azure AD) Connect between your on-premises Active Directory servers and Microsoft 365.

- Users will be able to sign in to their Microsoft 365 mailbox using the same user name and password as when they sign in to the local network. (This functionality requires Azure AD Connect with password synchronization and/or Active Directory Federation Services.)

- You'll need a Microsoft 365 license that includes Exchange Online for each user mailbox you migrate.

- Users don't need to set up a new Outlook profile on most of their devices, although some older Android phones might need a new profile. Users won't have to redownload their email.

If full hybrid migration sounds right for you, see the following resources to help with your migration:

- [Exchange Deployment Assistant](/exchange/exchange-deployment-assistant)

- [Exchange Server Hybrid Deployments](/exchange/exchange-hybrid)

- [Hybrid Configuration wizard](/exchange/hybrid-configuration-wizard)

- [Hybrid Configuration wizard FAQs](/exchange/hybrid-configuration-wizard-faqs)

- [Hybrid deployment prerequisites](/exchange/hybrid-deployment-prerequisites)

### Migrate to a newer version of Exchange Server

We strongly believe that you can achieve the best value and user experience by migrating to Microsoft 365. But we also understand that some organizations need to keep their email on-premises. This could be because of regulatory requirements, to guarantee data isn't stored in a datacenter located in another country/region, or similar. If you choose to keep your email on-premises, you can migrate your Exchange 2007 environment to Exchange 2010, Exchange 2013, or Exchange 2016.

If you can't migrate to Microsoft 365, we recommend that you migrate to Exchange 2016. Exchange 2016 includes all the features of previous releases of Exchange. It also most closely matches the experience available with Microsoft 365, although some features are available only in Microsoft 365. Check out just a few of the things you've been missing:

|Exchange release|Features|
|---|---|
|Exchange 2010| Role-Based Access Control (permissions without ACLs) <br/> Outlook Web App mailbox policies <br/> Ability to share free/busy and delegate calendars between organizations|
|Exchange 2013| *Features from Exchange 2010 and ...* <br/> Simplified architecture that reduced the number of server roles to three (Mailbox, Client Access, Edge Transport) <br/> Data loss prevention policies (DLP) that help keep sensitive information from leaking <br/> Improved Outlook Web App experience|
|Exchange 2016| *Features from Exchange 2013 and ...* <br/> Further simplified server roles to just Mailbox and Edge Transport <br/> Improved DLP along with integration with SharePoint <br/> Improved database resilience <br/> Online document collaboration|

#### Which version should I migrate to?

We recommend that you initially assume that you'll migrate to Exchange 2016. Then, use the following information to confirm your assumption or to rule out Exchange 2016. If you can't migrate to Exchange 2016 for some reason, do the same process with Exchange 2013, and so on.

|Consideration|More Info|
|---|---|
|End of support dates| Like Exchange 2007, each version of Exchange has its own end-of-support date: <br/> *Exchange 2010* - January 2020 <br/> *Exchange 2013* - April 2023 <br/> *Exchange 2016* - October 2025 <br/> The earlier the end of support, the sooner you'll need to perform another migration.|
|Migration path to Exchange 2010 and 2013.|Here are the general phases for migrating to Exchange 2010 or Exchange 2013: <br/> - Install Exchange 2010 or 2013 into your existing Exchange 2007 organization. <br/>- Move services and other infrastructure to Exchange 2010 or 2013.<br/>- Move mailboxes and public folders to Exchange 2010 or 2013.<br/>- Decommission remaining Exchange 2007 servers.|
|Migration path to Exchange 2016|Here are the general phases for migrating to Exchange 2016: <br/> - Install Exchange 2013 into your existing Exchange 2007 organization.<br/>- Move services and other infrastructure to Exchange 2013.<br/>- Move mailboxes and public folders to Exchange 2013.<br/>- Decommission remaining Exchange 2007 servers.<br/>- Install Exchange 2016 into your existing Exchange 2013 organization.<br/>- Move mailboxes, public folders, services, and other infrastructure to Exchange 2016 (order doesn't matter). Decommission remaining Exchange 2013 servers.<br/><br/> **Note:** Migrating from Exchange 2013 to Exchange 2016 is simple. The two versions have almost the same hardware requirements, and these versions are very compatible. So you can rebuild a server you bought for Exchange 2013 and install Exchange 2016 on it. For online mailbox moves, most users won't even notice that their mailbox was moved off the server and then back after you've rebuilt it with Exchange 2016.|
|Version coexistence| When migrating to ... <br/> **Exchange 2016:** Exchange 2016 can't be installed in an organization that includes an Exchange 2007 server. You'll first need to migrate to Exchange 2010 or 2013 (we strongly recommend Exchange 2013), remove all Exchange 2007 servers, and then migrate to Exchange 2016. <br/> **Exchange 2010 or Exchange 2013:** You can install Exchange 2010 or Exchange 2013 into an existing Exchange 2007 organization. This enables you to install one or more Exchange 2010 or 2013 servers and perform your migration.|
|Server hardware| Server hardware requirements have changed from Exchange 2007. Make sure your hardware is compatible. For details, see: <br/> [Exchange 2016 System Requirements](/Exchange/plan-and-deploy/system-requirements) <br/> [Exchange 2013 System Requirements](/exchange/exchange-2013-system-requirements-exchange-2013-help) <br/> [Exchange 2010 System Requirements](/previous-versions/office/exchange-server-2010/aa996719(v=exchg.141)) <br/> You'll find that the significant improvements in Exchange performance and the increased computing power and storage capacity in newer servers mean you'll likely need fewer servers to support the same number of mailboxes.|
|Operating system version| The minimum supported operating system versions for each version are: <br/> **Exchange 2016** - Windows Server 2012 <br/> **Exchange 2013** - Windows Server 2008 R2 SP1 <br/> **Exchange 2010** - Windows Server 2008 SP2 <br/> Find more information about operating system support at [Exchange Supportability Matrix](/Exchange/plan-and-deploy/supportability-matrix).|
|Active Directory forest functional level| The minimum supported Active Directory forest functional levels for each version are: <br/> **Exchange 2016** Windows Server 2008 R2 SP1 <br/> **Exchange 2013** Windows Server 2003 <br/> **Exchange 2010** Windows Server 2003 <br/> Find more information about forest functional level support at [Exchange Supportability Matrix](/Exchange/plan-and-deploy/supportability-matrix).|
|Office client versions| The minimum supported Office client versions for each version are: <br/> **Exchange 2016** - Office 2010 (with the latest updates) <br/> **Exchange 2013** - Office 2007 SP3 <br/> **Exchange 2010** - Office 2003 <br/> Find more information about Office client support at [Exchange Supportability Matrix](/Exchange/plan-and-deploy/supportability-matrix).|

#### How do I migrate?

If you decided to keep your email on-premises, use the following resources to help with your migration:

- [Exchange Deployment Assistant](/exchange/exchange-deployment-assistant)

- Active Directory schema changes for Exchange [2016](/Exchange/plan-and-deploy/active-directory/ad-schema-changes), [2013](/exchange/exchange-2013-active-directory-schema-changes-exchange-2013-help), [2010](https://www.microsoft.com/download/en/details.aspx?displaylang=en&amp;id=5401)

- System requirements for Exchange [2016](/Exchange/plan-and-deploy/system-requirements), [2013](/exchange/exchange-2013-system-requirements-exchange-2013-help), [2010](/previous-versions/office/exchange-server-2010/aa996719(v=exchg.141))

- Prerequisites for Exchange [2016](/Exchange/plan-and-deploy/prerequisites), [2013](/exchange/exchange-2013-prerequisites-exchange-2013-help), [2010](/previous-versions/office/exchange-server-2010/bb691354(v=exchg.141))

## Get help

If you're migrating to Microsoft 365, you might be eligible to use our Microsoft FastTrack service. FastTrack provides best practices, tools, and resources to make your migration to Microsoft 365 as seamless as possible. Best of all, a support engineer will walk you through your migration, from planning and design all the way to migrating your last mailbox. For more about FastTrack, see [Microsoft FastTrack](https://fasttrack.microsoft.com/).

If you run into problems during your migration to Microsoft 365 and you aren't using FastTrack, or your migration to a newer version of Exchange Server, we're here to help. Here are some resources you can use:

- [Technical community](https://social.technet.microsoft.com/Forums/office/home?category=exchangeserver)

- [Customer support](https://support.microsoft.com/gp/support-options-for-business)

## Related topics

[Resources to help you upgrade your Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)
