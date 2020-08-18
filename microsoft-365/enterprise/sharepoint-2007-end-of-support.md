---
title: "SharePoint Server 2007 end of support roadmap"
ms.author: tracyp
author: MSFTTracyP
manager: laurawi
ms.date: 01/28/2019
audience: ITPro
ms.topic: conceptual
f1.keywords:
- CSH
ms.custom:
- 'vsemail'
- 'MS_WSS_DirectoryManagement'
- 'MS_WSS_ConfigEmail'
- 'globalemailconfig'
- 'configssc'
- 'AppDefToBDC'
- seo-marvel-apr2020
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- Ent_O365
- SPO_Content
search.appverid:
- MET150
- OFU120
- SPS150
- OSU140
- WSU120
- OSR120
- SPO160
- PJW120
- SPB160
- OSI150
- OSI160
- BSA160
- OSU160
ms.assetid: ba124775-d5c0-4d68-b88d-8458ad4c3717
description: On October 10, 2017, support ended for SharePoint Server 2007. In this article, learn about your upgrade, migration, and support options.
---

# SharePoint Server 2007 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

On **October 10, 2017**, Microsoft Office SharePoint Server 2007 reached end of support. If you haven't begun your migration from SharePoint Server 2007 to Microsoft 365 or a newer version of SharePoint Server on-premises, now's the time to start planning. This article details resources to help people migrate data to SharePoint Online, or upgrade your SharePoint Server on-premises. 
  
## What does end of support mean?

SharePoint Server, like almost all Microsoft products, has a support lifecycle during which Microsoft provides new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the date of the product's initial release, and the end of this lifecycle is known as the product's end of support. At end of support, Microsoft no longer provides:
  
- Technical support for problems that may occur;
    
- Bug fixes for issues that are discovered and that may impact the stability and usability of the server;
    
- Security fixes for vulnerabilities that are discovered and that may make the server vulnerable to security breaches; and 
    
- Time zone updates.
    
Though your SharePoint Server 2007 farm will still be operational after October 10, 2017, no further updates, patches, or fixes will be shipped for the product (including security patches/fixes), and Microsoft Support will have fully shifted its support efforts to more recent versions of the product. Because your installation will no longer supported or patched, as end of support approaches you should upgrade the product, or migrate important data.
  
> [!TIP]
> If you haven't already planned for upgrade or migration, please see: [SharePoint 2007 migration options to consider](sharepoint-2007-migration-options.md), for some examples of where to begin. You can also search for [Microsoft Partners](https://go.microsoft.com/fwlink/?linkid=841249) who can help with upgrade or Microsoft 365 migration (or both). 
  
For more information about Office 2007 servers reaching the end of support, see [Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md).
  
## What are my options?

Your first stop should be the [Product Lifecycle site](https://go.microsoft.com/fwlink/?linkid=843148). If you have an on-premises Microsoft product that is aging, you should check for its end of support date so that, a year or so out - or as long as your migrations generally require - you can schedule upgrade or migrations. When choosing the next step, it might help to think in terms of what would be good enough, better, and best when it comes to product features. Here's an example:
  
|**Good**|**Better**|**Best**|
|:-----|:-----|:-----|
|SharePoint Server 2010  <br/> |SharePoint Server 2013  <br/> |SharePoint Online  <br/> |
||SharePoint Hybrid  <br/> |SharePoint Server 2016  <br/> |
| | |SharePoint Hybrid  <br/> |
   
If you choose options on the low end of the scale (good enough), remember you will need to begin planning for upgrade very soon after migration from SharePoint Server 2007 is complete. (end of support for SharePoint Server 2007 is October 10, 2017. Please note that these dates are subject to change and check the [Product Lifecycle site](https://support.microsoft.com/lifecycle).)
  
## Where can I go next?

SharePoint Server can be installed on-premises on your own servers, or you can use SharePoint Online, which is an online service that is part of Microsoft 365. You can choose to:
  
- Migrate to SharePoint Online
    
- Upgrade SharePoint Server on-premises
    
- Do both of the above
    
- Implement a [SharePoint hybrid](https://support.office.com/article/4c89a95a-a58c-4fc1-974a-389d4f195383.aspx) solution 
    
Be aware of hidden costs associated with maintaining a server farm going forward, maintaining or migrating customizations, and upgrading the hardware upon which SharePoint Server depends. Having an on-premises SharePoint Server farm is rewarding if it is a necessity; otherwise, if you run your farm on legacy SharePoint Servers, without heavy customization, you can benefit from a planned migration to SharePoint Online.
  
> [!IMPORTANT]
> There is another option if the content in SharePoint 2007 is infrequently used. Some SharePoint Administrators may choose to create a Microsoft 365 Subscription, set up a brand new SharePoint Online site, and then cut away from SharePoint 2007, cleanly, taking only the most essential documents to the fresh SharePoint Online sites. From there, data may be drained from the SharePoint 2007 site into archives. Give thought to how users work with data your SharePoint 2007 installation. There may be creative ways to resolve this problem! 
  
|**SharePoint Online (SPO)**|**SharePoint Server on-premises**|
|:-----|:-----|
|High cost in time (plan / execution / verification)  <br/> |High cost in time (plan / execution / verification)  <br/> |
|Lower cost in funds (no hardware purchases)  <br/> |Higher cost in funds (hardware + devs / admins)  <br/> |
|One-time cost in migration  <br/> |One-time cost repeated per future migration  <br/> |
|Low total cost of ownership / maintenance  <br/> |High total cost of ownership / maintenance  <br/> |
   
When you migrate to Microsoft 365, the one-time move will have a heavier cost up-front, while you're organizing data and deciding what to take to the cloud and what to leave behind. However, upgrades will be automatic from that point, you will no longer need to manage hardware and software updates, and the up-time of your farm will be backed by a Microsoft Service Level Agreement ([SLA](https://go.microsoft.com/fwlink/?linkid=843153)).
  
### Migrate to SharePoint Online

Make sure that SharePoint Online has all the features you need by reviewing the associated service description. See [Microsoft 365 and Office 365 service descriptions](https://docs.microsoft.com/office365/servicedescriptions/office-365-service-descriptions-technet-library).
  
There is no direct way to migrate from SharePoint 2007 to SharePoint Online; your move to SharePoint Online would be done manually. If you upgrade to SharePoint Server 2013 or SharePoint Server 2016, your move might also involve using the SharePoint Migration API (to migrate information into OneDrive for Business, for example).
  
|**Online Pro**|**Online Con**|
|:-----|:-----|
|Microsoft supplies SPO hardware and all hardware administration.  <br/> |Available features may be different between SharePoint Server on-premises and SPO.  <br/> |
|You are the global administrator of your subscription, and may assign administrators to SPO sites.  <br/> |Some actions available to a Farm Administrator in SharePoint Server on-premises do not exist (or are not necessary) included in the SharePoint Administrator role in Microsoft 365.  <br/> |
|Microsoft applies patches, fixes and updates to underlying hardware and software.  <br/> |Because there is no access to the underlying file system in the service, some customizations are limited.  <br/> |
|Microsoft publishes [Service Level Agreements](https://go.microsoft.com/fwlink/?linkid=843153) and moves quickly to resolve service level incidents.  <br/> |Backup and restore and other recovery options are automated by the service in SharePoint Online - backups are overwritten if not used.  <br/> |
|Security testing and server performance tuning are carried out on an ongoing basis in the service by Microsoft.  <br/> |Changes to the user interface and other SharePoint features are installed by the service and may need to be toggled on or off.  <br/> |
|Microsoft 365 meets many industry standards: [Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165).  <br/> |[FastTrack](https://www.microsoft.com/fasttrack/microsoft-365) assistance for migration is limited.  <br/> Much of the upgrade will be manual, or via the SPO Migration API described in the [SharePoint Online and OneDrive Migration Content Roadmap](https://go.microsoft.com/fwlink/?linkid=843184).  <br/> |
|Neither Microsoft Support Engineers nor employees in the datacenter have unrestricted admin access to your subscription.  <br/> |There can be additional costs if hardware infrastructure needs to be upgraded to support the newer version of SharePoint, or if a secondary farm is required for upgrade.  <br/> |
|Partners can assist with the one-time job of migrating your data to SharePoint Online.  <br/> ||
|Online products are updated automatically across the service meaning that though features may deprecate, there is no true end of support.  <br/> ||
   
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
    
|**On-premises Pro**|**On-premises Con**|
|:-----|:-----|
|Full control of all aspects of your SharePoint Farm, from the server hardware up.  <br/> |All breaks and fixes are the responsibility of your company (can engage paid Microsoft Support if your product is not at end of support):  <br/> |
|Full feature set of SharePoint Server on-premises with the option to connect your on-premises farm to a SharePoint Online subscription via hybrid.  <br/> |Upgrade, patches, security fixes, and all maintenance of SharePoint Server managed on-premises.  <br/> |
|Full access for greater customization.  <br/> |[Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165) must be manually configured on-premises.  <br/> |
|Security testing, and server performance tuning, carried out on your premises (is under your control).  <br/> |Microsoft 365 may make features available to SharePoint Online that do not interoperate with SharePoint Server on-premises  <br/> |
|Partners can assist with migrating data to the next version of SharePoint Server (and beyond).  <br/> |Your SharePoint Server sites will not automatically use [SSL/TLS](https://go.microsoft.com/fwlink/?linkid=843167) certificates as is seen in SharePoint Online.  <br/> |
|Full control of naming conventions, backup and restore and other recovery options in SharePoint Server on-premises.  <br/> |SharePoint Server on-premises is sensitive to product lifecycles.  <br/> |
   
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
  
| Option | Description |
|:-----|:-----|
[Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165).  <br/> |[FastTrack](https://www.microsoft.com/fasttrack/microsoft-365) assistance for migration is limited.  <br/> Much of the upgrade will be manual, or via the SPO Migration API described in the [SharePoint Online and OneDrive Migration Content Roadmap](https://go.microsoft.com/fwlink/?linkid=843184).  <br/> |
|Neither Microsoft Support Engineers nor employees in the datacenter have unrestricted admin access to your subscription.  <br/> |There can be additional costs if hardware infrastructure needs to be upgraded to support the newer version of SharePoint, or if a secondary farm is required for upgrade.  <br/> |
|Partners can assist with the one-time job of migrating your data to SharePoint Online.  <br/> ||
|Online products are updated automatically across the service meaning that though features may deprecate, there is no true end of support.  <br/> ||
   
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
    
|**On-premises Pro**|**On-premises Con**|
|:-----|:-----|
|Full control of all aspects of your SharePoint Farm, from the server hardware up.  <br/> |All breaks and fixes are the responsibility of your company (can engage paid Microsoft Support if your product is not at end of support):  <br/> |
|Full feature set of SharePoint Server on-premises with the option to connect your on-premises farm to a SharePoint Online subscription via hybrid.  <br/> |Upgrade, patches, security fixes, and all maintenance of SharePoint Server managed on-premises.  <br/> |
|Full access for greater customization.  <br/> |[Microsoft compliance offerings](https://go.microsoft.com/fwlink/?linkid=843165) must be manually configured on-premises.  <br/> |
|Security testing, and server performance tuning, carried out on your premises (is under your control).  <br/> |Microsoft 365 may make features available to SharePoint Online that do not interoperate with SharePoint Server on-premises  <br/> |
|Partners can assist with migrating data to the next version of SharePoint Server (and beyond).  <br/> |Your SharePoint Server sites will not automatically use [SSL/TLS](https://go.microsoft.com/fwlink/?linkid=843167) certificates as is seen in SharePoint Online.  <br/> |
|Full control of naming conventions, backup and restore and other recovery options in SharePoint Server on-premises.  <br/> |SharePoint Server on-premises is sensitive to product lifecycles.  <br/> |
   
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
> Remember that your SharePoint 2007 farm will need to be upgraded, on-premises, to either SharePoint Server 2013 or SharePoint Server 2016 to use the hybrid option 
  
## Related topics

[Troubleshoot and resume upgrade (Office SharePoint Server 2007)](https://go.microsoft.com/fwlink/?linkid=843192)
  
[Troubleshoot upgrade issues (SharePoint Server 2010)](https://go.microsoft.com/fwlink/?linkid=843194)
  
[Troubleshoot database upgrade issues in SharePoint 2013](https://go.microsoft.com/fwlink/?linkid=843195)
  
[Search for Microsoft Partners to help with Upgrade](https://go.microsoft.com/fwlink/?linkid=841249)
  
[Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)
  

