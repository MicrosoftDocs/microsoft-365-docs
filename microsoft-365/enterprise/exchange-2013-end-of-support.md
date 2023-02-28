---
title: "Exchange 2013 end of support roadmap"
ms.author: jhendr
author: JoanneHendrickson
manager: serdars
ms.date: 08/10/2020
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: Ent_O365
ms.assetid: e150e7b9-c432-4c8d-a0ae-c11847129a7d
f1.keywords:
- NOCSH
description: "Exchange 2013 will reach its end of support in April 2023. Use this planning roadmap to prepare to upgrade to Exchange Online or to a later version of Exchange Server on-premises."
---

# Exchange 2013 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Exchange Server 2013 will reach its end of support on **April 11, 2023**. If you haven't already begun your migration from Exchange 2013 to Microsoft 365, Office 365, or Exchange 2019, now's the time to start planning.

## What does *end of support* mean?

Most Microsoft products have a support lifecycle during which they get new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. Because Exchange 2013 reaches its end of support on April 11, 2023, Microsoft will no longer provide the following after this date:

- Technical support for problems that may occur.
- Bug fixes for issues that may impact the stability and usability of the server.
- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.
- Time zone updates.

Your installation of Exchange 2013 will continue to run after this date. But because of the changes listed above, we strongly recommend that you migrate from Exchange 2013 to Exchange 2019 as soon as possible.


## What are my options?

It's a great time to explore your options and prepare a migration plan. You can:

- Migrate to Microsoft 365. Migrate mailboxes, public folders, and other data using cutover, minimal hybrid, or full hybrid migration. Then, remove on-premises Exchange servers and Active Directory.
- Upgrade Exchange 2013. Move to Exchange 2019 for your on-premises servers.

> [!IMPORTANT]
> If your organization chooses to migrate mailboxes to Microsoft 365 but plans to keep using Azure AD Connect to manage user accounts in Active Directory, you need to keep at least one Microsoft Exchange server on-premises. If you remove all Exchange servers, you won't be able to make changes to Exchange recipients in Exchange Online because the source of authority is your on-premises Active Directory. In this scenario, you have the following options:
>
>- *Recommended:* Migrate your mailboxes to Microsoft 365 and upgrade your environment to Exchange 2019 by April 11, 2023. Use Exchange 2013 to connect to Microsoft 365 and migrate mailboxes. Next, upgrade from Exchange 2013 to Exchange 2019, and decommission servers running Exchange 2013.
>- If you can't complete a migration to Exchange Online and upgrade your on-premises servers by April 11, 2023, upgrade from Exchange 2013 to Exchange 2019 first and then use  Exchange 2019 to migrate mailboxes to Microsoft 365.

Here are the three paths you can take to avoid the end of support for Exchange Server 2013.

## Migrate to Microsoft 365

Migrating to Microsoft 365 is the best and simplest option to help you retire your Exchange 2013 deployment. With a migration to Microsoft 365, you can make a single hop from old technology to current features, including:

- Larger mailboxes with greater data resilience;
- Security capabilities such as anti-spam and antimalware protection, 
- Compliance capabilities such as Data Loss Prevention, Retention Policies, In-Place and Litigation Hold, in-place eDiscovery, and more;
- Integration with SharePoint Online, OneDrive, Teams, Power BI, and other Microsoft 365 services;
- Focused Inbox; and
- Advanced analytics and Viva Insights.

Microsoft 365 also gets new features and experiences first, so your organization can start using them right away. Also, you won't have to worry about:

- Purchasing and maintaining hardware;
- Paying to run and cool your servers;
- Keeping servers up to date on security, product, and time-zone fixes;
- Maintaining server storage and software to support compliance requirements; or
- Upgrading to a new version of Exchange; you're always on the latest version with Microsoft 365.

### How should I migrate to Microsoft 365?

Depending on your organization, you have a few options to get to Microsoft 365. First, you need to consider a few things, such as:

- The number of mailboxes you need to move;
- How long you want the migration to last; and
- Whether you need a seamless integration between your on-premises environment and Microsoft 365 during the migration.

This table shows your migration options and the most important factors that determine which method to use.

<br>

****

|Migration option|Organization size|Duration|
|---|---|---|
|Cutover migration|Fewer than 150 mailboxes|A week or less|
|Minimal hybrid migration|Fewer than 150 mailboxes|A few weeks or less|
|Full hybrid migration|More than 150 mailboxes|A few weeks or more|
|

The following sections give you an overview of these methods. For more information, see [Decide on a migration path](https://support.office.com/article/Decide-on-a-migration-path-0d4f2396-9cef-43b8-9bd6-306d01df1e27).

### Cutover migration

In a cutover migration, you migrate all your mailboxes, distribution groups, contacts, and so on, to Office 365 at a set date and time. When you're done, you shut down your on-premises Exchange servers and start using Microsoft 365 exclusively.

Cutover migration is great for small organizations that don't have many mailboxes, want to get to Microsoft 365 quickly, and don't want to deal with the complexity of the other methods. But it should be completed in a week or less. And it requires users to reconfigure their Outlook profiles. Cutover migration can migrate up to 2,000 mailboxes, but we recommend you use it for a maximum of 150. If you try to migrate more, you could run out of time to transfer all the mailboxes before your deadline, and your IT support staff may get overwhelmed with requests to help users reconfigure Outlook.

Here are things to consider about cutover migration:

- Microsoft 365 will need to connect to your Exchange 2013 servers by using Outlook Anywhere over TCP port 443.
- All on-premises mailboxes will be moved to Microsoft 365.
- You'll need an on-premises administrator account that has read access to your users' mailboxes.
- The Exchange 2013 accepted domains that you want to use in Microsoft 365 need to be added as verified domains in the service.
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
> If your organization chooses to migrate mailboxes to Microsoft 365 but plans to keep Azure AD Connect to manage user accounts in Active Directory, you need to keep at least one Exchange server on-premises. If all Exchange servers are removed, you won't be able to make changes to Exchange recipients. This is because the source of authority is  Active Directory and changes need to be made there.

If a full hybrid migration sounds right for you, see the following helpful resources:

- [Exchange Deployment Assistant](/exchange/exchange-deployment-assistant)
- [Exchange Server Hybrid Deployments](/exchange/exchange-hybrid)
- [Hybrid Configuration wizard](/exchange/hybrid-configuration-wizard)
- [Hybrid Configuration wizard FAQs](/exchange/hybrid-configuration-wizard-faqs)
- [Hybrid deployment prerequisites](/exchange/hybrid-deployment-prerequisites)

## Upgrade to a newer version of Exchange Server on-premises

We strongly believe that you get the best value and user experience by migrating fully to Microsoft 365. But we understand that some organizations need to keep some Exchange servers on-premises. This might be because of regulatory requirements, to guarantee data isn't stored in a foreign datacenter, because you have unique settings or requirements that can't be met in the cloud, or because you need Exchange to manage cloud mailboxes because you still use Active Directory on-premises. In any case, if you keep Exchange on-premises, you should ensure your Exchange 2013 environment is upgraded.

For the best experience, we recommend that you upgrade your remaining on-premises environment to Exchange 2019. You don't need to install Exchange Server 2016 because you can go directly from Exchange Server 2013 to Exchange Server 2019. Exchange 2019 most closely matches the experience available with Microsoft 365, although some features are available only in Microsoft 365.



****
Below are important things to know about upgrading Exchange 2013:

|Item|More information|
|---|---|
|End of support dates|Like Exchange 2013, each version of Exchange has its own end-of-support date: <p> Exchange 2013 - April 2023 <p> April 2023 is a lot closer than you think!|
|Migration path to Exchange 2019|The migration path from Exchange 2013 to a newer version is simple: <p> Install Exchange 2019 into your existing Exchange 2013 organization. <p> Move services and data from Exchange 2013 to Exchange 2019 and decommission Exchange 2013 servers.|
|Server hardware|Server hardware requirements have changed from Exchange 2013. Make sure your hardware is compatible. Find out more about hardware requirements here: <p> [Exchange 2019 system requirements](/exchange/plan-and-deploy/system-requirements?view=exchserver-2019&preserve-view=true) <p>With the significant improvements in Exchange performance and the increased computing power and storage capacity in newer servers, you'll likely need fewer servers to support the same number of mailboxes.|
|Operating system version|The minimum supported operating system version for Exchange 2019 is Windows Server 2019. Windows Server 2022 support is coming soon <p> You can find more information about operating system support at [Exchange Supportability Matrix](/exchange/plan-and-deploy/supportability-matrix).|
|Active Directory forest functional level|The minimum supported Active Directory forest functional level is Windows Server 2012 R2. You can find more information about forest functional level support at [Exchange Supportability Matrix](/exchange/plan-and-deploy/supportability-matrix).|
|Office client versions|The minimum supported Office client version is also documented in the [Exchange Supportability Matrix](/exchange/plan-and-deploy/supportability-matrix?view=exchserver-2019#clients&preserve-view=true).|
|

Use the following resources to help with your migration:

- [Exchange Deployment Assistant](/exchange/exchange-deployment-assistant)
- Active Directory [schema changes for Exchange 2019](/exchange/plan-and-deploy/active-directory/ad-schema-changes?view=exchserver-2019&preserve-view=true)
- System [requirements for Exchange 2019](/exchange/plan-and-deploy/system-requirements?view=exchserver-2019&preserve-view=true)


## What if I need help?

If you're migrating to Microsoft 365, you might be eligible to use our Microsoft FastTrack service. FastTrack provides best practices, tools, and resources to make your migration to Microsoft 365 as seamless as possible. Best of all, you'll have a support engineer walk you through from planning and design to migrating your last mailbox. For more about FastTrack, see [Microsoft FastTrack](https://fasttrack.microsoft.com/).

If you run into problems during your migration to Microsoft 365 and you aren't using FastTrack, or you're migrating to a newer version of Exchange Server, here are some resources you can use:

- [Technical community](https://social.technet.microsoft.com/Forums/office/home?category=exchangeserver)
- [Customer support](https://support.microsoft.com/gp/support-options-for-business)
