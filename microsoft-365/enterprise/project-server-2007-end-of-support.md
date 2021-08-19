---
title: "Project Server 2007 end of support roadmap"
ms.author: efrene
author: efrene
manager: laurawi
ms.date: 1/31/2018
audience: ITPro
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: IT_ProjectAdmin
search.appverid:
- MET150
- ZPJ120
- PJU120
- PJW120
ms.assetid: d379018f-72b7-4284-b40a-6c23c8ae38fe
description: "On October 10, 2017, support ended for Project Server 2007, Project Portfolio Server, and Project 2007. Use this article to plan your upgrade now."
---

# Project Server 2007 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Support ended for Office 2007 servers and applications in 2017, and you need to consider plans for migration. If you're currently using Project Server 2007 and related products, note the following end-of-support dates:
  
|**Product**|**End of support date**|
|:-----|:-----|
|Project Server 2007  <br/> |October 10, 2017  <br/> |
|Project Portfolio Server 2007  <br/> |October 10, 2017  <br/> |
|Project 2007 Standard  <br/> |October 10, 2017  <br/> |
|Project 2007 Professional  <br/> |October 10, 2017  <br/> |
   
For more information about Office 2007 servers reaching retirement, see [Upgrade from Office 2007 servers and client products](upgrade-from-office-2007-servers-and-products.md).
  
## What does *end of support* mean?

Most Microsoft products have a support lifecycle during which they get new features, bug fixes, security fixes, and so on. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. Because Project Server 2007 reached its end of support on October 10, 2017, Microsoft no longer provides:
  
- Technical support for problems that may occur.
    
- Bug fixes for issues that may impact the stability and usability of the server.
    
- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.
    
- Time zone updates.
    
Your installation of Project Server 2007 will continue to run after this date. But because of the changes listed previously, we strongly recommend that you migrate from Project Server 2007 as soon as practical.
  
## What are my options?

If you're using Project Server 2007, you need to explore your migration options, which are:
  
- Migrate to Project Online
    
- Migrate to a newer on-premises version of Project Server (preferably Project Server 2016)
    
|**Why would I prefer to migrate to Project Online**|**Why would I prefer to migrate to Project Server 2016**|
|:-----|:-----|
| I have mobile users.  <br/> <br/>Costs to migrate are a significant concern (hardware, software, hours, and effort to implement). <br/><br/>  After migration, costs to maintain my environment are a major concern (for example, automatic updates, guaranteed uptime, and so on).  <br/> | Business rules restrict me from operating my business in the cloud.<br/><br/>  I need control of updates to my environment.  |
   
> [!NOTE]
> For more information about options for moving from your Office 2007 servers, see [Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md). Note that Project Server doesn't support a hybrid configuration, because Project Server and Project Online can't share the same resource pool. 
  
## Important considerations when you migrate from Project Server 2007

Consider the following when you plan to migrate from Project Server 2007:
  
- **Get help from a Microsoft Partner** - Upgrading from Project Server 2007 can be challenging and requires much preparation and planning. It might be especially challenging if you weren't the person who set up Project Server 2007 originally. Fortunately, there are Microsoft Partners who can help, whether you plan to migrate to Project Server 2016 or to Project Online. Search for a Microsoft Partner to help with your migration on the [Microsoft Partner Center](https://go.microsoft.com/fwlink/p/?linkid=841249). Search on the term  *Gold Project and Portfolio Management* to view a list of all Microsoft Partners who have expertise in Project. 
    
- **Plan for your customizations** - Many of the customizations you made in your Project Server 2007 environment might not work when you migrate to Project Server 2016 or Project Online. There are significant differences in Project Server architecture between versions. The required operating systems, database servers, and client web browsers that are supported also differ. Plan how to test or rebuild your customizations for the new environment. Planning also provides a good opportunity to consider whether each customization is still needed. For more information, see [Create a plan for current customizations during upgrade to SharePoint 2013](/SharePoint/upgrade-and-update/create-a-communication-plan-for-the-upgrade-to-sharepoint-2013). 
    
- **Time and patience** - Upgrade planning, execution, and testing will take time and effort, especially if you upgrade to Project Server 2016. For example, if you migrate from Project Server 2007 to Project Server 2016, you first need to migrate to Project Server 2010, check your data, and then do the same thing when you migrate to each successive version. You might want to check with a Microsoft Partner to get estimates of how long it will take and what it will cost.
    
## Migrate to Project Online

If you choose to migrate from Project Server 2007 to Project Online, you can do the following to manually migrate your project plan data:
  
1. Save your project plans from Project Server 2003 to .mpp format.
    
2. In Project Professional 2013, Project Professional 2016, or the Project Online Desktop Client, open each .mpp file, and then save and publish it to Project Online.
    
You can manually create your Microsoft Project Web App (PWA) configuration in Project Online. For example, recreate any needed custom fields or enterprise calendars. Microsoft Partners can also help with this process.
  
Key resources:
  
|**Resource**|**Description**|
|:-----|:-----|
|[Get started with Project Online](https://support.office.com/article/e3e5f64f-ada5-4f9d-a578-130b2d4e5f11) <br/> |How to set up and use Project Online <br/> |
|[Project Online Service Descriptions](/office365/servicedescriptions/project-online-service-description/project-online-service-description) <br/> |Information about the different Project Online plans that are available to you <br/> |
   
## Migrate to a newer on-premises version of Project Server

We strongly believe that you get the best value and user experience by migrating to Project Online. But we also understand that some organizations need to keep project data in an on-premises environment. If you choose to keep your project data on-premises, you can migrate your Project Server 2007 environment to Project Server 2010, Project Server 2013, or Project Server 2016.
  
If you can't migrate to Project Online, we recommend that you migrate to Project Server 2016. Project Server 2016 includes all the features of previous releases of Project Server. It most closely matches the experience available with Project Online, although some features are available only in Project Online.
  
After each migration, you should check that your data migrated successfully.
  
> [!NOTE]
>
  
### How do I migrate to Project Server 2016?

Architectural differences between Project Server 2007 and Project Server 2016 prevent a direct migration path. So you have to migrate your Project Server 2007 data to each successive version of Project Server until you reach Project Server 2016.
  
Follow these steps to Project Server 2016:
  
1. Migrate from Project Server 2007 to Project Server 2010.
    
2. Migrate from Project Serve 2010 to Project Server 2013.
    
3. Migrate from Project Server 2013 to Project Server 2016.
    
After each migration, make sure that your data migrated successfully.
  
### Step 1: Migrate from Project Server 2007 to Project Server 2010

For a comprehensive description of what you need to do to upgrade from Project Server 2007 to Project Server 2010, see [Upgrade to Project Server 2010](/previous-versions/office/project-server-2010/gg502590(v=office.14)).
  
Key resources:
  
|**Resource**|**Description**|
|:-----|:-----|
|[Project Server 2010 upgrade overview](/previous-versions/office/project-server-2010/ee662496(v=office.14)) <br/> |A high-level view of what you need to do to upgrade from Project Server 2007 to Project Server 2010 <br/> |
|[Plan to Upgrade to Project Server 2010](/previous-versions/office/project-server-2010/ff603505(v=office.14)) <br/> |Planning considerations when you upgrade from Project Server 2007 to Project Server 2010, including System Requirements  <br/> |
   
#### How do I upgrade?

For details, see [Upgrade to Project Server 2010](/previous-versions/office/project-server-2010/gg502590(v=office.14)). But it's important to understand that there are two distinct methods you can use to upgrade:
  
- **Database-attach upgrade:** This method only upgrades the content for your environment, not the configuration settings. It's required if you're upgrading from Office Project Server 2007 deployed on hardware that only supports a 32-bit server operating system. There are two types of database-attach upgrade methods:
    
  - **Database-attach *full upgrade*** - Migrates the project data stored in the Office Project Server 2007 databases, plus the Microsoft Project Web App site data stored in a SharePoint content database.
    
  - **Database-attach *core upgrade*** - Migrates only the project data stored in the Project Server databases.
    
- **In-place upgrade**: The configuration data for the farm and all content on the farm is upgraded on the existing hardware in a fixed order. When you start the upgrade process, setup takes the entire farm offline. The web sites and Microsoft Project Web App sites are unavailable until the upgrade is finished, and then setup restarts the server. After you begin an in-place upgrade, you can't pause the upgrade or roll back to the previous version. It's best to make a mirrored image of your production environment and do the in-place upgrade to this environment, not in your production environment. 
    
Additional resources:
  
- [SuperFlow for Microsoft Project Server 2010 Upgrade](/samples/browse/?redirectedfrom=TechNet-Gallery)
    
- [Migration from Project Server 2007 to Project Server 2010](/samples/browse/?redirectedfrom=TechNet-Gallery)
    
- [Upgrade considerations for Project Web App Web Parts](/previous-versions/office/project-server-2010/gg314581(v=office.14))
    
- [Project Software Development Kit (SDK)](/previous-versions/office/developer/office-2010/ms481966(v=office.14))
    
### Step 2: Migrate to Project Server 2013

After you verify that your data migrated successfully, the next step is to migrate to Project Server 2013.
  
For a comprehensive description of what you need to do to upgrade from Project Server 2010 to Project Server 2013, see [Upgrade to Project Server 2013](/project/upgrade-to-project-server-2016). 
  
Key resources:
  
|**Resource**|**Description**|
|:-----|:-----|
|[Overview of the Project Server 2013 upgrade process](/project/upgrade-to-project-server-2016) <br/> |Overview of what you need to do to upgrade from Project Server 2010 to Project Server 2013  <br/> |
|[Plan to upgrade to Project Server 2013](/project/plan-for-upgrade-to-project-server-2016) <br/> |Planning considerations when you upgrade from Project Server 2010 to Project Server 2013, including System Requirements <br/> |
   
#### Things to know about upgrading to this version

[What's new in Project Server 2013 upgrade](/project/what-s-new-in-project-server-2013-upgrade) describes important changes for upgrade for this version. The most notable are: 
  
- There's no in-place upgrade to Project Server 2013. The database-attach method is the only supported method for upgrading from Project Server 2010 to Project Server 2013.
    
- The upgrade process will not only convert your Project Server 2010 data to Project Server 2013 format but will also consolidate the four Project Server 2010 databases into a single Project Web App database.
    
- In the 2013 versions, both SharePoint Server and Project Server changed to claims-based authentication. If you're using classic authentication, you need to consider this factor for your upgrade. For more information, see [Migrate from classic-mode to claims-based authentication in SharePoint 2013](/sharepoint/security-for-sharepoint-server/security-for-sharepoint-server).
    
Additional resources:
  
- [Overview of the upgrade process to Project Server 2013](/project/overview-of-the-project-server-2016-upgrade-process)
    
- [Upgrade your databases and Project Web App site collections (Project Server 2013)](/project/upgrading-to-project-server-2016)
    
- [Microsoft Project Server upgrade process diagram](https://go.microsoft.com/fwlink/p/?linkid=841270)
    
- [The Great Database Consolidation, Project Server 2010 to 2013 Migration in 8 Easy Steps](https://go.microsoft.com/fwlink/p/?linkid=841271)
    
### Step 3: Migrate to Project Server 2016

After you verify that your data migrated successfully, the next step is to migrate to Project Server 2016.
  
For a comprehensive description of what you need to do to upgrade from Project Server 2013 to Project Server 2016, see [Upgrade to Project Server 2016](//project/upgrading-to-project-server-2016).
  
Key resources:
  
|**Resource**|**Description**|
|:-----|:-----|
|[Overview of the Project Server 2016 upgrade process](/previous-versions/office/project-server-2010/ee662104(v=office.14)) <br/> |Overview of what you need to do to upgrade from Project Server 2013 to Project Server 2016 <br/> |
|[Plan for upgrade to Project Server 2016](/project/plan-for-upgrade-to-project-server-2016) <br/> |Planning considerations you upgrade from Project Server 2013 to Project Server 2016 <br/> |
   
#### Things to know about upgrading to this version

[Things you need to know about Project Server 2016 upgrade](/project/plan-for-upgrade-to-project-server-2016) tells you some important changes for upgrade for this version, which include:
  
- When you create your Project Server 2016 environment to which you'll migrate your Project Server 2013 data, the Project Server 2016 installation files are included in SharePoint Server 2016. For more information, see [Deploy Project Server 2016](/project/deploy-project-server-2016).
    
- Resource plans are deprecated in Project Server 2016. Your Project Server 2013 resource plans will be migrated to Resource Engagements in Project Server 2016 and in Project Online. See [Overview: Resource engagements](https://support.office.com/article/73eefb5a-81fe-42bf-980e-9532b1bdc870) for more information. 
    
## Migrate from Portfolio Server 2007

Project Portfolio Server 2007 was used with Project Server 2007 for portfolio strategy, prioritization, and optimization. No additional versions of Project Portfolio Server were created after this version. However, portfolio management features are available in Project Server 2016 and the Premium version of Project Online. But data from Project Portfolio Server 2007 can't be migrated to either. Data such as business drivers will have to be recreated.
  
Other resources:
  
- [Project Online Service Descriptions:](/office365/servicedescriptions/project-online-service-description/project-online-service-description) See the portfolio management features that are included with Project Server 2016 and Project Online Premium.
    
- [Microsoft Office Project Portfolio Server 2007 migration guide.](https://go.microsoft.com/fwlink/p/?linkid=841279)
    
## Related topics

[SharePoint Server 2007 end of support Roadmap](sharepoint-2007-end-of-support.md)
  
[Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)
