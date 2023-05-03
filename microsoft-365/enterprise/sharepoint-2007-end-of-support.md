---
title: SharePoint Server 2007 end of support roadmap
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
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
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- scotvorg
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
description: Support for SharePoint Server 2007 ended in October 2017. In this article, learn about your upgrade, migration, and support options.
---

# SharePoint Server 2007 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

On **October 10, 2017**, Microsoft Office SharePoint Server 2007 reached end of support. If you haven't migrated from SharePoint Server 2007 to Microsoft 365 or a newer version of SharePoint Server on-premises, now's the time to start planning. This article provides resources to help you migrate data to SharePoint Online or upgrade your SharePoint Server on-premises.
  
## What does *end of support* mean?

SharePoint Server, like most Microsoft products, has a support lifecycle, during which Microsoft provides new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. After the end of support, Microsoft no longer provides:
  
- Technical support for problems that may occur.
    
- Bug fixes for issues that may impact the stability and usability of the server.
    
- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.
    
- Time zone updates.
    
Your SharePoint Server 2007 farm will still be operational after October 10, 2017, but no further updates, patches, or fixes will be released for the product, including security patches/fixes. Microsoft Support has fully shifted its support efforts to more-recent versions of the product. Because your installation is no longer supported or patched, you should upgrade the product or migrate important data.
  
> [!TIP]
> If you haven't already planned for upgrade or migration, see: [SharePoint 2007 migration options to consider](sharepoint-2007-migration-options.md) for some examples of where to begin. You can also search for [Microsoft Partners](https://go.microsoft.com/fwlink/?linkid=841249) who can help with upgrade or Microsoft 365 migration (or both).
  
For more information about Office 2007 servers and the end of support, see [Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md).
  
## What are my options?

Your first stop should be the [Product Lifecycle site](/lifecycle/products/?alpha=Microsoft+Office+SharePoint+Server+2007). If you have an on-premises Microsoft product that's aging, check its end of support date so that you have a year or so to schedule an upgrade or migration. When you choose the next step, consider what product features would be good enough, better, and best. Here's an example: 
  
|**Good**|**Better**|**Best**|
|:-----|:-----|:-----|
|SharePoint Server 2010  <br/> |SharePoint Server 2013  <br/> |SharePoint Online  <br/> |
||SharePoint Hybrid  <br/> |SharePoint Server 2016  <br/> |
| | |SharePoint Hybrid  <br/> |
   
If you choose a "good enough" option, you'll soon need to begin planning for another upgrade after migration from SharePoint Server 2007 is completed. 

>[!NOTE] 
>End-of-support dates are subject to change. Check the [Product Lifecycle site](https://support.microsoft.com/lifecycle).
  
## Where can I go next?

SharePoint Server can be installed on-premises on your own servers. Or you can use SharePoint Online, which is an online service that's part of Microsoft 365. Your options are:
  
- Migrate to SharePoint Online.
    
- Upgrade SharePoint Server on-premises.
    
- Do both of the above.
    
- Implement a [SharePoint hybrid](https://support.office.com/article/4c89a95a-a58c-4fc1-974a-389d4f195383.aspx) solution.
    
Be aware of hidden costs associated with maintaining a server farm, maintaining or migrating customizations, and upgrading the hardware that SharePoint Server needs. Having an on-premises SharePoint Server farm is rewarding if it's necessary. But if you run your farm on legacy SharePoint Servers without heavy customization, you can benefit from migration to SharePoint Online.
  
> [!IMPORTANT]
> There's another option if the content in SharePoint 2007 is infrequently used. Some SharePoint Administrators choose to create a Microsoft 365 subscription, set up a new SharePoint Online site, and then cut away from SharePoint 2007 cleanly, taking only essential documents to the fresh SharePoint Online sites. Data can then be drained from the SharePoint 2007 site into archives. Consider how your users work with data from your SharePoint 2007 installation. There may be creative ways to manage your needs.
  
|**SharePoint Online (SPO)**|**SharePoint Server on-premises**|
|:-----|:-----|
|High cost in time (plan / execution/verification)  <br/> |High cost in time (plan / execution/verification)  <br/> |
|Lower cost in funds (no hardware purchases)  <br/> |Higher cost in funds (hardware + devs/admins)  <br/> |
|One-time cost in migration  <br/> |One-time cost repeated per future migration  <br/> |
|Low total cost of ownership/maintenance  <br/> |High total cost of ownership/maintenance  <br/> |
   
When you migrate to Microsoft 365, the one-time move will have a heavier cost up-front, while you organize data and decide what to take to the cloud and what to leave behind. But future upgrades will be automatic, and you'll no longer need to manage hardware and software updates. Also, the up time of your farm will be backed by a Microsoft Service Level Agreement ([SLA](/office365/servicedescriptions/office-365-platform-service-description/service-level-agreement)).
  
### Migrate to SharePoint Online

Make sure that SharePoint Online has all the features you need. See [Microsoft 365 and Office 365 service descriptions](/office365/servicedescriptions/office-365-service-descriptions-technet-library).
  
You can't migrate directly from SharePoint 2007 to SharePoint Online. Your move to SharePoint Online would be done manually. If you upgrade to SharePoint Server 2013 or SharePoint Server 2016, you might use the SharePoint Migration API (to migrate information into OneDrive for Business, for example).
  
|**Online pro**|**Online con**|
|:-----|:-----|
|Microsoft supplies SPO hardware and all hardware administration.  <br/> |Available features may differ between SharePoint Server on-premises and SPO.  <br/> |
|You're the SharePoint admin or global admin of your subscription and can assign administrators to SPO sites.  <br/> |Some actions available to a farm administrator in SharePoint Server on-premises don't exist or aren't necessarily included in the SharePoint Administrator role in Microsoft 365.  <br/> |
|Microsoft applies patches, fixes, and updates to underlying hardware and software. <br/> |Because there's no access to the underlying file system in the service, customization is limited.  <br/> |
|Microsoft publishes [Service level agreements](/office365/servicedescriptions/office-365-platform-service-description/service-level-agreement) and moves quickly to resolve service-level incidents. <br/> |Backup and restore and other recovery options are automated by the service in SharePoint Online. Backups are overwritten if not used. <br/> |
|Security testing and server performance tuning are carried out on an ongoing basis in the service by Microsoft. <br/> |Changes to the user interface and other SharePoint features are installed by the service and may need to be toggled on or off. <br/> |
|Microsoft 365 meets many industry standards: [Microsoft compliance offerings](/compliance/regulatory/offering-home).  <br/> |[FastTrack](https://www.microsoft.com/fasttrack/microsoft-365) assistance for migration is limited.  <br/> Much of the upgrade will be manual or via the SPO Migration API described in the [SharePoint Online and OneDrive Migration Content Roadmap](/sharepointmigration/upload-on-premises-content-to-sharepoint-online-using-powershell-cmdlets).  <br/> |
|Microsoft Support engineers and datacenter employees won't have unrestricted admin access to your subscription. <br/> |There can be additional costs if hardware needs to be upgraded to support the newer version of SharePoint, or if a secondary farm is required for upgrade.  <br/> |
|Partners can assist with the one-time job of migrating your data to SharePoint Online.  <br/> ||
|Online products are updated automatically. Although features may deprecate, there's no true end of support. <br/> ||
   
If you've decided to create a new Microsoft 365 site and will manually migrate data to it as is needed, check your [Microsoft 365 options](https://www.microsoft.com/microsoft-365/).
  
### Upgrade SharePoint Server on-premises

There's no way to skip versions in SharePoint Upgrades. Upgrades go serially:
  
- SharePoint 2007 \> SharePoint Server 2010 \> SharePoint Server 2013 \> SharePoint Server 2016
   
To go from SharePoint 2007 to SharePoint Server 2016 means a significant investment of time and will involve costs in hardware (SQL servers must also be upgraded), software, and administration. Customizations will need to be upgraded or abandoned.
  
> [!NOTE]
> It's possible to maintain your end-of-life SharePoint 2007 farm, install a SharePoint Server 2016 farm on new hardware (so the separate farms run side-by-side), and then plan and execute a manual migration of content (for downloading and re-uploading content, for example). But beware of some of the pitfalls of manual moves, such as moves of documents replacing the last-modified account with the alias of the account doing the manual move. Also consider the work that must be done ahead of time, such as recreating sites, subsites, permissions, and list structures. Consider in advance what data you can move into storage or delete to reduce the impact of migration.
  
It's important to clean up your environment before you upgrade. Be certain your existing farm is functional before you upgrade, and certainly before you decommission!
  
Remember to review the *supported and unsupported upgrade paths*: 
  
- [SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262747(v=office.12))
    
- [SharePoint Server 2010](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262747(v=office.12))
    
- [SharePoint Server 2013](/SharePoint/upgrade-and-update/review-supported-editions-and-products-for-upgrading-to-sharepoint-2013)
    
If you have customizations, it's critical to have a plan for each step in the migration path: 
  
- [SharePoint 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc263203(v=office.12))
    
- [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc263203(v=office.14))
    
- [SharePoint Server 2013](/SharePoint/upgrade-and-update/create-a-communication-plan-for-the-upgrade-to-sharepoint-2013)
    
|**On-premises pro**|**On-premises con**|
|:-----|:-----|
|Full control of all aspects of your SharePoint Farm, from the server hardware up.  <br/> |All breaks and fixes are the responsibility of your company (you can engage paid Microsoft Support if your product is not past end of support).  <br/> |
|Full feature set of SharePoint Server on-premises with the option to connect your on-premises farm to a SharePoint Online subscription via hybrid.  <br/> |Upgrade, patches, security fixes, and all maintenance of SharePoint Server managed on-premises.  <br/> |
|Full access for greater customization.  <br/> |[Microsoft compliance offerings](/compliance/regulatory/offering-home) must be manually configured on-premises.  <br/> |
|Security testing, and server performance tuning is carried out on your premises (under your control).  <br/> |Microsoft 365 may make features available to SharePoint Online that don't interoperate with SharePoint Server on-premises.  <br/> |
|Partners can assist with migrating data to the next version of SharePoint Server (and beyond).  <br/> |Your SharePoint Server sites won't automatically use [SSL/TLS](/SharePoint/security-for-sharepoint-server/enable-tls-1-1-and-tls-1-2-support-in-sharepoint-server-2016) certificates as is seen in SharePoint Online.  <br/> |
|Full control of naming conventions, back up and restore, and other recovery options in SharePoint Server on-premises.  <br/> |SharePoint Server on-premises is sensitive to product lifecycles.  <br/> |
   
### Upgrade resources

Make sure your environment meets hardware and software requirements, and then follow supported upgrade methods.
  
- **Hardware/software requirements for**: 
    
    [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc262485(v=office.14)) | [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc262485(v=office.14)) | [SharePoint Server 2013](/sharepoint/install/hardware-software-requirements-2013) | [SharePoint Server 2016](/SharePoint/install/hardware-and-software-requirements)
    
- **Software boundaries and limits for**: 
    
    [SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262787(v=office.12)) | [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc262787(v=office.14)) | [SharePoint Server 2013](/SharePoint/install/software-boundaries-and-limits) | [SharePoint Server 2016](/sharepoint/install/software-boundaries-limits-2019)
    
- **The upgrade process overview for**: 
    
    [SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc303420(v=office.12)) | [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc303420(v=office.14)) | [SharePoint Server 2013](/SharePoint/upgrade-and-update/upgrade-to-sharepoint-server-2016) | [SharePoint Server 2016](/SharePoint/upgrade-and-update/upgrade-to-sharepoint-server-2016)
    
### Create a SharePoint hybrid solution between SharePoint Online and on-premises

If the answer to your migration needs is somewhere between the self-control offered by on-premises and the lower cost of ownership offered by SharePoint Online, you can connect SharePoint Server 2013 or 2016 farms to SharePoint Online through hybrids. [Learn about SharePoint hybrid solutions](https://support.office.com/article/4c89a95a-a58c-4fc1-974a-389d4f195383.aspx).
  
If you decide that a hybrid SharePoint Server farm will benefit your business, familiarize yourself with the existing types of hybrids and how to configure the connection between your on-premises SharePoint farm and your Microsoft 365 subscription.
  
| Option | Description |
|:-----|:-----|
[Microsoft compliance offerings](/compliance/regulatory/offering-home)  <br/> |[FastTrack](https://www.microsoft.com/fasttrack/microsoft-365) assistance for migration is limited.  <br/> Much of the upgrade will be manual, or via the SPO Migration API described in the [SharePoint Online and OneDrive Migration Content Roadmap](/sharepointmigration/upload-on-premises-content-to-sharepoint-online-using-powershell-cmdlets).  <br/> |
|Microsoft Support engineers and data center employees don't have unrestricted admin access to your subscription.<br/> |There can be additional costs if hardware infrastructure needs to be upgraded to support the newer version of SharePoint, or if a secondary farm is required for upgrade.  <br/> |
|Partners can assist with the one-time job of migrating your data to SharePoint Online.  <br/> ||
|Online products are updated automatically across the service. Though features may deprecate, there's no true end of support.<br/> ||
   
If you've decided to create a new Microsoft 365 site and will manually migrate data to it as is needed, check your [Microsoft 365 options](https://www.microsoft.com/microsoft-365/).
  
### Upgrade SharePoint Server on-premises

There's no way to skip versions in SharePoint Upgrades. Upgrades go serially:
  
- SharePoint 2007 \> SharePoint Server 2010 \> SharePoint Server 2013 \> SharePoint Server 2016
   
To go from SharePoint 2007 to SharePoint Server 2016 will mean a significant investment of time and will involve costs for hardware (SQL servers must also be upgraded), software, and administration. Customizations will need to be upgraded or abandoned.
  
> [!NOTE]
> It's possible to maintain your end-of-life SharePoint 2007 farm, install a SharePoint Server 2016 farm on new hardware (so the separate farms run side-by-side), and then plan and execute a manual migration of content (for downloading and re-uploading content, for example). But beware of potential pitfalls of manual moves, such as moves of documents replacing the last-modified account with the alias of the account doing the manual move, and the work that must be done ahead of time, such as recreating sites, subsites, permissions and list structures. Consider what data you can move into storage or delete to reduce the impact of migration.
  
Clean your environment prior to upgrade. Be certain your existing farm is functional before you upgrade and certainly before you decommission! 
  
Remember to review the *supported and unsupported upgrade paths*: 
  
- [SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262747(v=office.12))
    
- [SharePoint Server 2010](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262747(v=office.12))
    
- [SharePoint Server 2013](/SharePoint/upgrade-and-update/review-supported-editions-and-products-for-upgrading-to-sharepoint-2013)
    
If you have *customizations*, it's critical you have a plan your upgrade for each step in the migration path: 
  
- [SharePoint 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc263203(v=office.12))
    
- [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc263203(v=office.14))
    
- [SharePoint Server 2013](/SharePoint/upgrade-and-update/create-a-communication-plan-for-the-upgrade-to-sharepoint-2013)
    
|**On-premises Pro**|**On-premises Con**|
|:-----|:-----|
|Full control of all aspects of your SharePoint Farm, from the server hardware up.  <br/> |All breaks and fixes are the responsibility of your company. (You can engage paid Microsoft Support if your product isn't past end of support.)  <br/> |
|Full feature set of SharePoint Server on-premises with the option to connect your on-premises farm to a SharePoint Online subscription via hybrid.  <br/> |Upgrade, patches, security fixes, and all maintenance of SharePoint Server managed on-premises.  <br/> |
|Full access for greater customization.  <br/> |[Microsoft compliance offerings](/compliance/regulatory/offering-home) must be manually configured on-premises.  <br/> |
|Security testing and server performance tuning are carried out on your premises under your control.  <br/> |Microsoft 365 may make features available to SharePoint Online that don't interoperate with SharePoint Server on-premises  <br/> |
|Partners can help migrate data to the next version of SharePoint Server (and beyond).  <br/> |Your SharePoint Server sites will not automatically use [SSL/TLS](/SharePoint/security-for-sharepoint-server/enable-tls-1-1-and-tls-1-2-support-in-sharepoint-server-2016) certificates as is seen in SharePoint Online.  <br/> |
|Full control of naming conventions, back up and restore, and other recovery options in SharePoint Server on-premises.  <br/> |SharePoint Server on-premises is sensitive to product lifecycles.  <br/> |
   
### Upgrade resources

Make sure that your environment meets hardware and software requirements. Then follow the supported upgrade methods.
  
- **Hardware/software requirements for:** 
    
    [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc262485(v=office.14)) | [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc262485(v=office.14)) | [SharePoint Server 2013](/sharepoint/install/hardware-software-requirements-2013) | [SharePoint Server 2016](/SharePoint/install/hardware-and-software-requirements)
    
- **Software boundaries and limits for:** 
    
    [SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262787(v=office.12)) | [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc262787(v=office.14)) | [SharePoint Server 2013](/SharePoint/install/software-boundaries-and-limits) | [SharePoint Server 2016](/sharepoint/install/software-boundaries-limits-2019)
    
- **The upgrade process overview for:** 
    
    [SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc303420(v=office.12)) | [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc303420(v=office.14)) | [SharePoint Server 2013](/SharePoint/upgrade-and-update/upgrade-to-sharepoint-server-2016) | [SharePoint Server 2016](/SharePoint/upgrade-and-update/upgrade-to-sharepoint-server-2016)
    
### Create a SharePoint hybrid solution between SharePoint Online and on-premises

If the answer to your migration needs is somewhere between the self-control offered by on-premises and the lower cost of ownership offered by SharePoint Online, you can connect SharePoint Server 2013 or 2016 farms to SharePoint Online through hybrids. [Learn about SharePoint hybrid solutions](https://support.office.com/article/4c89a95a-a58c-4fc1-974a-389d4f195383.aspx)
  
If you decide that a hybrid SharePoint Server farm will benefit your business, familiarize yourself with the existing types of hybrids and how to configure the connection between your on-premises SharePoint farm and your Microsoft 365 subscription.
  
One good way to see how this works is to create a Microsoft 365 dev/test environment, which you can set up with [Test Lab Guides](m365-enterprise-test-lab-guides.md). After you get a trial or purchased Microsoft 365 subscription, you can create the site collections, webs, and document libraries in SharePoint Online to which you can migrate data. You can migrate manually, by use of the Migration API, or, if you want to migrate My Site content to OneDrive for Business, through the hybrid wizard.
  
> [!NOTE]
> Remember that to use the hybrid option, your SharePoint 2007 farm will need to be upgraded, on-premises, to either SharePoint Server 2013 or SharePoint Server 2016.
  
## Related topics

[Troubleshoot and resume upgrade (Office SharePoint Server 2007)](/previous-versions/office/sharepoint-2007-products-and-technologies/cc262967(v=office.12))
  
[Troubleshoot upgrade issues (SharePoint Server 2010)](/previous-versions/office/sharepoint-server-2010/cc262967(v=office.14))
  
[Troubleshoot database upgrade issues in SharePoint 2013](/SharePoint/upgrade-and-update/troubleshoot-database-upgrade-issues-in-sharepoint-2013)
  
[Search for Microsoft Partners to help with Upgrade](https://go.microsoft.com/fwlink/?linkid=841249)
  
[Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)
