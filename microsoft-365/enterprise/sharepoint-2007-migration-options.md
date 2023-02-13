---
title: "SharePoint 2007 migration options to consider"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 1/31/2018
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- SPO_Content
search.appverid:
- MET150
- SPS150
- OSU140
- SPO160
- SPB160
- OSI150
- OSI160
- BSA160
- OSU160
ms.assetid: 66325a43-5816-4f8e-81ba-c11b71345b7c
f1.keywords:
- NOCSH
ms.custom:
- seo-marvel-apr2020
description: "This article contains information for users using SharePoint Server 2007 to help them plan their upgrade."
---

# SharePoint 2007 migration options to consider

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Microsoft SharePoint 2007 and SharePoint Server 2007 have reached end of support. It's time to upgrade! This article provides information about your migration options.
  
## Common upgrade strategies for SharePoint

There are multiple methods to upgrade a SharePoint Server environment. If you have a Microsoft Office SharePoint Server 2007 farm, here are some examples of the upgrade methods:
  
- Database attach
    
- Side by side upgrade
    
- In-place upgrade
    
- Hybrid upgrade (in-place with detached databases / separate database attach)
    
- SharePoint hybrids (connect online to on-premises SharePoint)
    
- Manually move data between site collections or libraries
    
- FastTrack Wizard upgrade to Microsoft 365 ([SharePoint Online deployment advisor](https://aka.ms/spoguidance))
    
- Migration API to SharePoint Online (SPO) in Microsoft 365
    
What works best for you?
  
Your knowledge of what your farm does and is used for is a tactical strength when it comes to upgrade. The way people use the SharePoint Farm will help you choose from your options.
  
> [!TIP]
> Microsoft Office SharePoint Server 2007 also has a gradual upgrade not covered here. To see a list of step-specific upgrade articles see the [SharePoint Server 2007 end of support Roadmap](sharepoint-2007-end-of-support.md). 
  
Remember to check the [Product Lifecycle](https://support.microsoft.com/lifecycle/search) and System Requirements for whatever version of SharePoint you're upgrading to. This is so you'll be aware when the next upgrade will be necessary (for example, if you pause at a legacy product like SharePoint Server 2010 to plan for more upgrades, be sure you know its end of support date), and to be certain you have hardware that supports your plan. 
  
If you're planning to transition some, or all, of your SharePoint sites to Microsoft 365 in the Cloud, this is a time to bookmark a link to the [Microsoft 365 and Office 365 service descriptions](/office365/servicedescriptions/office-365-service-descriptions-technet-library). You'll need the Service Descriptions to learn about SharePoint Online features and how they might differ from on-premises SharePoint Server. Upgrade functional Microsoft Office SharePoint Server 2007 farms. If your installation has sites that are broken, fix them prior to upgrade.
  
## A note about managing risk

Methods like 'side-by-side' are important in the scheme of upgrade logic. When you upgrade side by side, you maintain your Microsoft Office SharePoint Server 2007 farm, but build up a farm the next version from it (SharePoint Server 2010) on new hardware. This helps in three ways:
  
1. You have a place to take backups of your Microsoft Office SharePoint Server 2007 databases to upgrade them separately, by using database attach.
    
2. If you figure out that only a few critical document libraries and other information are in use on your Microsoft Office SharePoint Server 2007 farm, you can choose to manually move data from Microsoft Office SharePoint Server 2007 to SharePoint Server 2010, or take only specific sites and webs to the next version (which can make your job easier).
    
3. The less you do to the Microsoft Office SharePoint Server 2007 server farm, directly, the safer the data that farm contains as you upgrade.
    
Methods like In-Place upgrade will act directly on your Microsoft Office SharePoint Server 2007 farm, giving you fewer easy options to abandon a path and begin again with your pristine environment. As much as possible, build in some safety measures (like taking and testing backups of the original environment). For example, if your Microsoft Office SharePoint Server 2007 farm is virtual, and is duplicated for the purposes of backup and restore, then back-up and restore the most current databases prior to your service window for the upgrade. Knowing that you have the option to restore database backups will not only give you a failsafe, it can give you peace of mind.
  
> [!TIP]
> Best practices documents for upgrade exist for [Microsoft Office SharePoint Server 2007](/previous-versions/office/sharepoint-2007-products-and-technologies/cc261992(v=office.12)), [SharePoint Server 2010](/previous-versions/office/sharepoint-server-2010/cc261992(v=office.14)), [SharePoint Server 2013](/SharePoint/upgrade-and-update/best-practices-for-upgrading-from-sharepoint-2010-to-sharepoint-2013), and [SharePoint Server 2016](/SharePoint/upgrade-and-update/best-practices-for-upgrade). You can also search for [Microsoft Partners](https://partnercenter.microsoft.com/pcv/search) who have experience with upgrades or Microsoft 365 migrations. 
  
## Make your plan

If you need to upgrade, you need a plan, and one-size doesn't fit all in these cases. Your plan may be as simple as 'Create a Microsoft 365 subscription with SharePoint Online, register a domain, and redirect people to save their files there'. And it may not be. That decision is yours, and it's down to what you and your users really need.
  
> [!NOTE]
> It's risky to run on software whose lifecycle has ended. Products that are out of support are no longer patched when issues are found. This also means that if new security threats arise, there will be no security patches or fixes because the end-of-lifecycle products are no longer supported. Please avoid that situation! 
  
### First, know your farm

When upgrading, your decision-making should be based on what your farm does for your organization. What need does it satisfy? What's its role? Each farm in your company may have a different role. Some of your SharePoint farms may be  *critical*, some may be file archives--there for safe-keeping. Or, if your farm fills many roles at once, then you may need to know what site collections, webs, or even document libraries do, any customizations, and how important they are. Analyzing your data at this level may seem like much work, but it saves time and effort to master your domain before you upgrade, or migrate, it. Once you know all the moving parts, and the most important bits, you'll also know what you've outgrown and can leave behind. That knowledge will only benefit you going forward. 
  
So, what are users saying is most important about your SharePoint Server farm?
  
- Built-in SharePoint features
    
- The large data corpus (such as an archive of files)
    
- Availability
    
- Critical apps, web parts, or docs in the farm (Mission critical farm)
    
- The Compliance standards met
    
- Customizations
    
If you run something essential to your business from your SharePoint farm, say it acts like a large catalog of critical data about client service requirements, you may put a tick beside 'Critical apps', but also 'Availability'--that is, your business would be impacted if you couldn't use SharePoint for a while. Likewise, you might check 'Customizations' because the critical services your farm offers are based on custom code, site definitions, or many customizations that work together.
  
If SharePoint met those needs without your involvement outside of using what's built in to the software, and you generally update it and carry out normal administration and maintenance, you may have chosen 'Built-in SharePoint'--this may also be your reason for sitting on an older version of SharePoint. In other words, it already does what you need it to and you haven't needed to upgrade until now, at Microsoft Office SharePoint Server 2007 end of support.
  
When you bullet-list these things, you create criteria for your upgrade. In other words, any upgrade would have to meet this bar to be considered. This gives you a way to rule out methods that don't currently fit your needs.
  
### A simple sample plan

There may need to be wider consensus with leadership and other admins on the path your SharePoint Upgrade will take. SharePoint Server Administrators often cooperate with Microsoft SQL Server admins, work with Networking and Security teams, and more. Where there are many stakeholders, you may need to build agreement for, or adjust, your upgrade and migration plan. For example, if you migrate data so that part of your company uses SharePoint Online in Microsoft 365, there will likely need to be performance tuning or testing inside your network. Affected teams should be informed ahead of time.
  
In my simple sample, I show a SharePoint administrator's proposal and then list out the plan that all the stakeholders agreed upon. For clarity, document your agreements and decisions.
  
The plan starts after an in-depth analysis of a farm, and tries to identify the role of the farm, pain points, and other important information that will lead to narrowing down some upgrade options. Afterward, an upgrade proposal is made by SharePoint administrator, and stakeholders agree on an action plan.
  
My 'most important' bullet list:
  
- Availability, features built-in to SharePoint, and Compliance standards.
    
- Most of the data is on three site collections, with one Meeting Workspace used by a Dev team important and in heavy use in multiple time-zones worldwide.
    
- There are 17 other sites that are widely used.
    
- Two document libraries (Meeting Workspace and Documents on the root site collection) are largest (over 8000 docs each). We have a large number of archived docs and list with spreadsheet attachments.
    
- There are 14 lists of libraries that have sensitive data that MUST stay in Compliance.
    
- We MUST have the ability to do holds and e-discovery wherever we go.
    
- Some of this data MUST stay on-premises, due to InfoSec rules.
    
 **My upgrade and migration choices:**
  
| Yes | No |
|:-----|:-----|
|Upgrade databases with database attach  <br/> |In-place upgrade  <br/> |
|Upgrade with farms side by side  <br/> |Hybrid Upgrade  <br/> |
|Migration API to SPO in Microsoft 365 (for personal site data)  <br/> |SharePoint Hybrid (not needed yet)  <br/> |
|Some manual data migrations to SharePoint Online for critical data  <br/> |FastTrack wizard upgrade to Microsoft 365  <br/> |
   
 **My proposed plan:**
  
Upgrade on-premises, with versions of SharePoint side-by-side, some virtualized, so that we can upgrade the databases first. Go from SharePoint 2007 to SharePoint 2010. Admins and Devs test the resulting farm. Users test the resulting farm. Fix any show-stopping issues during this time. Again, side-by-side, upgrade SharePoint 2010 databases to SharePoint 2013. Test. User test/pilot. Fix any show-stopping issues during this time.
  
- Consider if a Search Federated Hybrid with SPO meets your needs.
    
- Consider [FastTrack assistance](https://fasttrack.microsoft.com) if you would like to upgrade to SharePoint Online from here. 
    
- Determine if any site collections can be offloaded to a Microsoft 365 Subscription. (Microsoft 365 meets many [Compliance standards](/compliance/regulatory/offering-home). Microsoft 365 has [eDiscovery](https://support.office.com/article/edea80d6-20a7-40fb-b8c4-5e8c8395f6da) and can do [Holds](https://support.office.com/article/A18F8975-AA7F-43B4-A7D6-001D14744D8E) through the Compliance Centre.) 
    
Otherwise, continue with a side-by-side upgrade to SharePoint Server 2016.
  
> [!NOTE]
> In between recommendations made by the administrators planning the upgrade and the actual process are the conversations that happen with other stakeholders on which the upgrade relies. For example, sometimes economics force administrators to change their plans. Whatever the final decision is, you should document what the agreed-upon plan is, going forward. It might look something like this: 
  
 **My action plan:**
  
On-premises, we use a virtual environment to build default SharePoint Server 2010, and 2013. SharePoint Server 2016 will be built on new hardware that meets system requirements for 2016. We will do database attaches to upgrade databases from SharePoint 2007 through all versions between it and SharePoint Server 2016. Core customizations are being recreated for and tested in the SharePoint Server 2016 environment at this time, if native features don't already meet our needs. If we are successful, we will have an on-premises farm on new hardware with upgraded databases, and fewer customizations. We'll attach the upgraded content databases to new site collections in SharePoint Server 2013, test, user test/pilot, and then do a DNS cut-over to the new SharePoint Server 2016 environment for live use.
  
- We will not consider Federated Hybrid between SharePoint Server 2016 and SharePoint Online right now.
    
- An estimated 35% of our sites can be turned into new SPO sites with vanity domains, or, ultimately, become OneDrive for Business storage. Looking for other opportunities to convert sites, or route new sites to SPO.
    
- Some of this part of the migration will be manual, by drag-and-drop to OneDrive for Business personal sites, and some by migration API.
    
More detailed steps, or a number of links to specific upgrade directions should follow a plan. The MOSS 2007 computer should not be decommissioned, and virtual environments should be maintained for the sake of comparison; however, the upgrade will be complete when users are redirected to SharePoint Server 2016.
  
Often major factors in choosing a method are the total cost of the upgrade and the cost in time (you'll see more on this in the SharePoint Migration Roadmap article). However, planning ahead will benefit you greatly in setting expectations, choosing wisely, and framing what success will look like.
  
## Related links

[Resources to help you upgrade from Office 2007 servers and clients](upgrade-from-office-2007-servers-and-products.md)
  
[Microsoft Lifecycle Policy and Lifecycle search](https://support.microsoft.com/lifecycle)
  
[Search for Microsoft Partners who can help with upgrade or migration](https://partnercenter.microsoft.com/pcv/search)
