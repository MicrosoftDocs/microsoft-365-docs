---
title: "Upgrading from SharePoint 2010"
ms.author: tracyp
author: MSFTTracyP
manager: laurawi
ms.date: 04/13/2020
audience: ITPro
ms.topic: conceptual
ms.prod: office-online-server
localization_priority: Normal
ms.collection:
- Ent_O365
- SPO_Content
search.appverid:
- MET150
- WSU140
- OSU140
ms.assetid: 985a357f-6db7-401f-bf7a-1bafdf1f312c
f1.keywords:
- NOCSH
description: Find information and resources to upgrade from SharePoint 2010 and Sharepoint Server 2010, as support for both ends on April 13, 2021.
ms.custom: seo-marvel-apr2020
---

# Upgrading from SharePoint 2010

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Microsoft SharePoint 2010 and SharePoint Server 2010 will reach end of support on **April 13, 2021**. This article details resources to help you migrate your existing SharePoint Server 2010 data to SharePoint Online in Microsoft 365, or upgrade your on-premises SharePoint Server 2010 environment.

## What is end of support?

When your SharePoint Server 2010, and SharePoint Foundation 2010 software reaches the end of its support lifecycle (the time during which Microsoft provides new features, bug fixes, security fixes, and so on), this is called the software's 'end of support', or, sometimes, its 'Retirement'. Upon the end of support (or EOS) of a product, nothing actually shuts down or stops working; however, at the end of support of software, Microsoft no longer provides:

- Technical support for problems that may occur;

- Bug fixes for issues that are discovered and that may impact the stability and usability of the server;

- Security fixes for vulnerabilities that are discovered and that may make the server vulnerable to security breaches;

- Time zone updates.

That means, there will be no further updates, patches, or fixes will be shipped for the product (including security patches/fixes), and Microsoft Support will have fully shifted its support efforts to more recent versions. As the end of support of SharePoint Server 2010 approaches, you should take advantage of opportunities to trim data you no longer need prior to upgrading the product, and/or migrating your important data.

> [!NOTE]
> A software lifecycle typically lasts for ten years from the date of the product's initial release. You can search for [Microsoft solution providers](https://go.microsoft.com/fwlink/?linkid=841249) who can help with upgrading to the next version of your software, or with Microsoft 365 migration (or both). Be certain you're aware of end of support dates on critical underlying technologies as well, particularly of the version of SQL Server you're using with SharePoint. See [Fixed Lifecycle Policy](https://support.microsoft.com/help/14085) to understand product lifecycle in detail.

## What are my options?

First, check the date at which support ends on the [Product Lifecycle site](https://support.microsoft.com/lifecycle/search?alpha=SharePoint%20Server%202010). Next, be sure to plan your upgrade or migration time with knowledge of this date. Remember that your product  *won't stop working*  at the date listed, and you can continue its use, but that, since your installation will no longer be patched after that date, you'll want a strategy that will help you more smoothly transition to the next version of the product.

This matrix helps plot a course when it comes to migrating product features and user data:

|End of support product|Good |Best|
|---|---|---|
|SharePoint Server 2010|SharePoint Server 2013 (on-premises)|SharePoint Online|
||SharePoint Server 2013 hybrid with SharePoint Online|SharePoint Server 2016 (on-premises)|
|||SharePoint Cloud Hybrid Search|

If you choose options on the low end of the scale (good options), you'll need to start planning for another upgrade soon after migration from SharePoint Server 2010 completes.

Here are the three paths you can take to avoid the end of support for SharePoint Server 2010.

![SharePoint Server 2010 upgrade paths](../media/upgrade-from-sharepoint-2010/upgrade-from-sharepoint-2010-paths.png)

> [!NOTE]
> End of support for SharePoint Server 2010 and SharePoint Foundation 2010 are scheduled for April 13, 2021, but *please be aware* that you should always check the [Product Lifecycle site](https://support.microsoft.com/lifecycle) for the most current dates.

## Where should I go next?

SharePoint Server 2013 and SharePoint Foundation 2013 can be installed on-premises on your own servers. Otherwise, you can use SharePoint Online, which is an online service that is part of Microsoft Microsoft 365. You can choose to:

- Migrate to SharePoint Online

- Upgrade SharePoint Server or SharePoint Foundation on-premises

- Do both of the above

- Implement a [SharePoint hybrid](https://docs.microsoft.com/sharepoint/hybrid/hybrid) solution

Be aware of hidden costs associated with maintaining a server farm going forward, maintaining or migrating customizations, and upgrading the hardware upon which SharePoint Server depends. If you're aware and have accounted for all of these, it will be easier to continue upgrading on-premises. Otherwise, if you run your farm on legacy SharePoint Servers without heavy customization, you could benefit from a planned migration to SharePoint Online. It's also possible that for your on-premises SharePoint Server environment, you might opt to put some data in SharePoint Online to reduce the amount of hardware management that keeping that all your data on-premises involves. It may be more economical to move some of your data into SharePoint Online.

> [!NOTE]
> SharePoint Administrators may create a Microsoft 365 Subscription, set up a brand new SharePoint Online site, and then cut away from SharePoint Server 2010, cleanly, taking only the most essential documents to the fresh SharePoint Online sites. From there, any remaining data may be drained from the SharePoint Server 2010 site into on-premises archives.

|SharePoint Online|SharePoint Server on-premises|
|---|---|
|High cost in time (plan / execution / verification)|High cost in time (plan / execution / verification)|
|Lower cost in funds (no hardware purchases)|Higher cost in funds (hardware purchases)|
|One-time cost in migration|One-time cost repeated per future migration|
|Low total cost of ownership / maintenance|High total cost of ownership / maintenance|

When you migrate to Microsoft 365, the one-time move will have a heavier cost in time spent planning, up-front (while you're organizing data and deciding what to take to the cloud and what to leave behind). However, once your data is migrated, upgrades will be automatic from that point, seeing as you will no longer need to manage hardware and software updates, and the up-time of your farm will be backed by a Microsoft Service Level Agreement ([SLA](https://go.microsoft.com/fwlink/?linkid=843153)).

### Migrate to SharePoint Online

Be sure SharePoint Online offers all the features you need by reviewing its [service description](https://docs.microsoft.com/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-service-description).

There isn't currently a means by which you can directly migrate from SharePoint Server 2010 (or SharePoint Foundation 2010) to SharePoint Online, so much of the work is manual. This does give you the opportunity to archive and prune data and sites that are no longer needed, before the move. You can archive other data into storage. Also remember that neither SharePoint Server 2010 nor SharePoint Foundation 2010 will stop working at end of support, so administrators can have a period during which SharePoint is still running if their customers forget to move some of their data.

If you upgrade to SharePoint Server 2013 or SharePoint Server 2016, and decide to put data into SharePoint Online, your move might also involve using the [SharePoint Migration API](https://support.office.com/article/Upload-on-premises-content-to-SharePoint-Online-using-PowerShell-cmdlets-555049c6-15ef-45a6-9a1f-a1ef673b867c?ui=en-US&amp;rs=en-US&amp;ad=US) (to migrate information into OneDrive for Business).

|SharePoint Online advantage|SharePoint Online disadvantage|
|---|---|
|Microsoft supplies SPO hardware and all hardware administration.|Available features may be different between SharePoint Server on-premises and SPO.|
|You are the global administrator of your subscription and may assign administrators to SPO sites.|Some actions available to a Farm Administrator in SharePoint Server on-premises do not exist (or are not necessary) in the SharePoint Administrator role in Microsoft 365, but SharePoint Administration, Site Collection Administration, and Site Ownership are local to your org.|
|Microsoft applies patches, fixes and updates to underlying hardware and software (including SQL servers on which SharePoint Online runs).|Because there is no access to the underlying file system in the service, some customizations are limited.|
|Microsoft publishes [Service Level Agreements](https://go.microsoft.com/fwlink/?linkid=843153) and moves quickly to resolve service level incidents.|Backup and restore and other recovery options are automated by the service in SharePoint Online - backups are overwritten if not used.|
|Security testing and server performance tuning are carried out on an ongoing basis in the service by Microsoft.|Changes to the user interface and other SharePoint features are installed by the service and may need to be toggled on or off.|
|Microsoft 365 meets many industry standards: [Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165).|[FastTrack](https://go.microsoft.com/fwlink/?linkid=518597) assistance for migration is limited.  <br/> Much of the upgrade will be manual, or via the SPO Migration API described in the [SharePoint Online and OneDrive Migration Content Roadmap](https://go.microsoft.com/fwlink/?linkid=843184).|
|Neither Microsoft Support Engineers nor employees in the datacenter have unrestricted admin access to your subscription.|There can be additional costs if hardware infrastructure needs to be upgraded to support the newer version of SharePoint, or if a secondary farm is required for upgrade.|
|Solution providers can assist with the one-time job of migrating your data to SharePoint Online.|Not all changes to SharePoint Online are within your control. After migration, design differences in menus, libraries, and other features may temporarily affect usability.|
|Online products are updated automatically across the service meaning that though features may deprecate, there is no true end of support Lifecycle.|There is an end of support Lifecycle for SharePoint Server (or SharePoint Foundation) as well as underlying SQL servers.|

If you've decided to create a new Microsoft 365 site, and will manually migrate data to it as is needed, you can look at your [Microsoft 365 options](https://www.microsoft.com/microsoft-365/).

### Upgrade SharePoint Server on-premises

As of the latest version of the SharePoint on-premises product (SharePoint Server 2019), SharePoint Server upgrades must go  *serially*, that means there is no way to upgrade from SharePoint Server 2010 to SharePoint Server 2016 or to SharePoint 2019, directly.

Serial upgrade path:

- SharePoint Server 2010 \> SharePoint Server 2013 \> SharePoint Server 2016

If you choose to follow the entire path from SharePoint 2010 to SharePoint Server 2016, this will take time and planning. Upgrades involve a cost in terms of upgraded hardware (be aware that SQL servers must also be upgraded), software, and administration. Also, customizations may need to be upgraded, or even abandoned. Be sure that you collect notes on all of your critical customizations before you upgrade your SharePoint Server farm.

> [!NOTE]
> It's possible to maintain your end of support SharePoint 2010 farm, install a SharePoint Server 2016 farm on new hardware (so the separate farms run side-by-side), and then plan and execute a manual migration of content (for downloading and re-uploading content, for example). There are potential pitfalls to these manual moves (such as documents coming from 2010 having a current last modified account with the alias of the account doing the manual move), and some work must be done ahead of time (recreating sites, sub-sites, permissions and list structures). It's a good time to consider what data you can move into storage, or no longer need. This can reduce the impact of migration. Either way, clean your environment prior to upgrade. Be certain your existing farm is functional before you upgrade, and (for sure) before you decommission!

Remember to review the **supported and unsupported upgrade paths**:

- [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843156)

- [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843157)

If you have **customizations**, it's critical you have a plan your upgrade for each step in the migration path:

- [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843160)

- [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843162)

|On-premises advantage|On-premises disadvantage|
|---|---|
|Full control of all aspects of your SharePoint Farm (and it's SQL), from the server hardware up.|All breaks and fixes are the responsibility of your company (but you can engage paid Microsoft Support if your product is not at end of support):|
|Full feature set of SharePoint Server on-premises with the option to connect your on-premises farm to a SharePoint Online subscription via hybrid.|Upgrade, patches, security fixes, hardware upgrades, and all maintenance of SharePoint Server and it's SQL farm are managed on-premises.|
|Full access for greater customization options than with SharePoint Online.|[Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165) must be manually configured on-premises.|
|Security testing, and server performance tuning, carried out on your premises (under your control).|Microsoft 365 may make features available to SharePoint Online that do not interoperate with SharePoint Server on-premises|
|Solution providers can assist with migrating data to the next version of SharePoint Server (and beyond).|Your SharePoint Server sites will not automatically use [SSL/TLS](https://go.microsoft.com/fwlink/?linkid=843167) certificates as is seen in SharePoint Online.|
|Full control of naming conventions, backup and restore and other recovery options in SharePoint Server on-premises.|SharePoint Server on-premises is sensitive to Product Lifecycles.|

### Upgrade Resources

Begin by comparing hardware and software requirements. If you don't meet basic requirements for the upgrade on current hardware, that can mean you need to upgrade the hardware in the farm or SQL servers first, or that you may decide to move some percentage of your sites to the 'evergreen' hardware of SharePoint Online. Once you've made your assessment, follow supported upgrade paths and methods.

- **Hardware/software requirements for**:

    [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843204) | [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843206) | [SharePoint Server 2016](https://go.microsoft.com/fwlink/?linkid=843207)

- **Software boundaries and limits for**:

    [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843247) | [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843248) | [SharePoint Server 2016](https://go.microsoft.com/fwlink/?linkid=843249)

- **The upgrade process overview for**:

    [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843251) | [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843252) | [SharePoint Server 2016](https://go.microsoft.com/fwlink/?linkid=843359)

### Create a SharePoint hybrid solution between SharePoint Online and SharePoint Server on-premises

Another option (one that may be the best of both on-premises and online worlds for some migration needs) is a hybrid, you can connect SharePoint Server 2013 or 2016 or 2019 farms to SharePoint Online to create a SharePoint hybrid: [Learn about SharePoint hybrid solutions](https://support.office.com/article/4c89a95a-a58c-4fc1-974a-389d4f195383.aspx).

If you decide a hybrid SharePoint Server farm is your migration goal, be sure to plan what sites and users you should move to online, and which need to remain on-premises. A review and ranking of your SharePoint Server farm's content (determining what data is High, Medium, or Low impact to your company) can be helpful to making this decision. It may be that the only thing you need to share with SharePoint Online is (a) user accounts for login, and (b) the SharePoint Server search index -- this may not be clear until you look at how your sites are used. If your company later decides to migrate all of your content to SharePoint Online, you can move all remaining accounts and data online and decommission your on-premises farm, and management/administration of the SharePoint farm will be done through Microsoft 365 consoles from that point on.

Be sure to familiarize yourself with the existing types of hybrid and how to configure the connection between your on-premises SharePoint farm and your Microsoft 365 subscription.

|Option|Description|
|---|---|
|[Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165).|[FastTrack](https://www.microsoft.com/fasttrack/microsoft-365) assistance for migration is limited.  <br/> Much of the upgrade will be manual, or via the SPO Migration API described in the [SharePoint Online and OneDrive Migration Content Roadmap](https://go.microsoft.com/fwlink/?linkid=843184).|
|Neither Microsoft Support Engineers nor employees in the datacenter have unrestricted admin access to your subscription.|There can be additional costs if hardware infrastructure needs to be upgraded to support the newer version of SharePoint, or if a secondary farm is required for upgrade.|
|Partners can assist with the one-time job of migrating your data to SharePoint Online.||
|Online products are updated automatically across the service meaning that though features may deprecate, there is no true end of support.||

If you've decided to create a new Microsoft 365 site, and will manually migrate data to it as is needed, you can look at your [Microsoft 365 options](https://www.microsoft.com/microsoft-365/).

### Upgrade SharePoint Server on-premises

There is historically no way to skip versions in SharePoint Upgrades, at least not as of the release of SharePoint Server 2016. That means upgrades go serially:

- SharePoint 2007 \> SharePoint Server 2010 \> SharePoint Server 2013 \> SharePoint Server 2016

To take the entire path from SharePoint 2007 to SharePoint Server 2016 will mean a significant investment of time and will involve a cost in terms of upgraded hardware (be aware that SQL servers must also be upgraded), software, and administration. Customizations will need to be upgraded or abandoned, according to the criticality of the feature.

> [!NOTE]
> It's possible to maintain your end-of-life SharePoint 2007 farm, install a SharePoint Server 2016 farm on new hardware (so the separate farms run side-by-side), and then plan and execute a manual migration of content (for downloading and re-uploading content, for example). Be aware of some of the gotchas of manual moves (such as moves of documents replacing the last modified account with the alias of the account doing the manual move), and the work that must be done ahead of time (such as recreating sites, sub-sites, permissions and list structures). Again, this is the time to consider what data you can move into storage, or no longer need, an action that can reduce the impact of migration.

Either way, clean your environment prior to upgrade. Be certain your existing farm is functional before you upgrade, and (for sure) before you decommission!

Remember to review the **supported and unsupported upgrade paths**:

- [SharePoint Server 2007](https://go.microsoft.com/fwlink/?linkid=843156)

- [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843156)

- [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843157)

If you have **customizations**, it's critical you have a plan your upgrade for each step in the migration path:

- [SharePoint 2007](https://go.microsoft.com/fwlink/?linkid=843158)

- [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843160)

- [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843162)

|On-premises Pro|On-premises Con|
|---|---|
|Full control of all aspects of your SharePoint Farm, from the server hardware up.|All breaks and fixes are the responsibility of your company (can engage paid Microsoft Support if your product is not at end of support):|
|Full feature set of SharePoint Server on-premises with the option to connect your on-premises farm to a SharePoint Online subscription via hybrid.|Upgrade, patches, security fixes, and all maintenance of SharePoint Server managed on-premises.|
|Full access for greater customization.|[Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165) must be manually configured on-premises.|
|Security testing, and server performance tuning, carried out on your premises (is under your control).|Microsoft 365 may make features available to SharePoint Online that do not interoperate with SharePoint Server on-premises|
|Partners can assist with migrating data to the next version of SharePoint Server (and beyond).|Your SharePoint Server sites will not automatically use [SSL/TLS](https://go.microsoft.com/fwlink/?linkid=843167) certificates as is seen in SharePoint Online.|
|Full control of naming conventions, backup and restore and other recovery options in SharePoint Server on-premises.|SharePoint Server on-premises is sensitive to product lifecycles.|

### Upgrade Resources

Begin by knowing that you meet hardware and software requirements, then follow supported upgrade methods.

- **Hardware/software requirements for**:

    [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843204) | [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843204) | [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843206) | [SharePoint Server 2016](https://go.microsoft.com/fwlink/?linkid=843207)

- **Software boundaries and limits for**:

    [SharePoint Server 2007](https://go.microsoft.com/fwlink/?linkid=843245) | [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843247) | [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843248) | [SharePoint Server 2016](https://go.microsoft.com/fwlink/?linkid=843249)

- **The upgrade process overview for**:

    [SharePoint Server 2007](https://go.microsoft.com/fwlink/?linkid=843250) | [SharePoint Server 2010](https://go.microsoft.com/fwlink/?linkid=843251) | [SharePoint Server 2013](https://go.microsoft.com/fwlink/?linkid=843252) | [SharePoint Server 2016](https://go.microsoft.com/fwlink/?linkid=843359)

### Create a SharePoint hybrid solution between SharePoint Online and on-premises

If the answer to your migration needs is somewhere between the self-control offered by on-premises, and the lower cost of ownership offered by SharePoint Online, you can connect SharePoint Server 2013 or 2016 farms to SharePoint Online, through hybrids. [Learn about SharePoint hybrid solutions](https://support.office.com/article/4c89a95a-a58c-4fc1-974a-389d4f195383.aspx)

If you decide that a hybrid SharePoint Server farm will benefit your business, familiarize yourself with the existing types of hybrid and how to configure the connection between your on-premises SharePoint farm and your Microsoft 365 subscription.

One good way to see how this works is by creating a Microsoft 365 dev/test environment, which you can set up with [Test Lab Guides](m365-enterprise-test-lab-guides.md). Once you have a trial or purchased Microsoft 365 subscription, you'll be on your way to creating the site collections, webs, and document libraries in SharePoint Online to which you can migrate data (either manually, by use of the Migration API, or - if you want to migrate My Site content to OneDrive for Business - through the hybrid wizard).

> [!NOTE]
> Remember that your SharePoint Server 2010 farm will first need to be upgraded, on-premises, to either SharePoint Server 2013 or SharePoint Server 2016 to use the hybrid option. SharePoint Foundation 2010 and SharePoint Foundation 2013 cannot create hybrid connections with SharePoint Online.

## Summary of options for Office 2010 client and servers and Windows 7

For a visual summary of the upgrade, migrate, and move-to-the-cloud options for Office 2010 clients and servers and Windows 7, see the [end of support poster](../downloads/Office2010Windows7EndOfSupport.pdf).

[![Image for the end of support for Office 2010 clients and servers and Windows 7 poster](../media/upgrade-from-office-2010-servers-and-products/office2010-windows7-end-of-support.png)](../downloads/Office2010Windows7EndOfSupport.pdf)

This one-page poster is a quick way to understand the various paths you can take to prevent Office 2010 client and server products and Windows 7 from reaching end of support, with preferred paths and option support in Microsoft 365 Enterprise highlighted.

You can also [download](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/Office2010Windows7EndOfSupport.pdf) this poster and print it in letter, legal, or tabloid (11 x 17) formats.

## Related topics

[Resources to help you upgrade from Office 2007 or 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md)

[Overview of the upgrade process from SharePoint 2010 to SharePoint 2013](https://technet.microsoft.com/library/mt493301%28v=office.16%29.aspx)

[Best practices for upgrading from SharePoint 2010 to SharePoint 2013](https://technet.microsoft.com/library/mt493305%28v=office.16%29.aspx)

[Troubleshoot database upgrade issues in SharePoint 2013](https://go.microsoft.com/fwlink/?linkid=843195)

[Search for Microsoft solution providers to help with your upgrade](https://go.microsoft.com/fwlink/?linkid=841249)

[Updated Product Servicing Policy for SharePoint 2013](https://technet.microsoft.com/library/mt493253%28v=office.16%29.aspx)

[Updated Product Servicing Policy for SharePoint Server 2016](https://technet.microsoft.com/library/mt782882%28v=office.16%29.aspx)
