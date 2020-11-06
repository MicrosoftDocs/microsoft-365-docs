---
title: "Project Server 2010 end-of-support roadmap"
ms.author: efrene
author: efrene
manager: pamg
ms.date: 04/14/2020
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
description: "Support ends for Project Server 2010 ends on April 13, 2021. Use this article as a guide to upgrade to Project Online or a newer version of Project Server on-premises."
---

# Project Server 2010 end of support roadmap

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Project Server 2010 will reach end of support on **April 13, 2021**. This date has been extended from the previous end of support date of October 13, 2020. If you are currently using Project Server 2010, note that these other related products have the following end of support dates:

|Product |End of support date|
|---|---|
|Project 2010 Standard|October 13, 2020|
|Project 2010 Professional|October 13, 2020|

For more information about Office 2010 servers reaching end of support, see [Upgrade from Office 2010 servers and client products](plan-upgrade-previous-versions-office.md).

## What does end of support mean?

Project Server, like almost all Microsoft products, has a support lifecycle during which we provide new features, bug fixes, and security updates. This lifecycle typically lasts for 10 years from the date of the product's initial release, and the end of this lifecycle is known as the product's end of support. When Project Server 2010 reaches its end of support on April 13, 2021, Microsoft will no longer provide:

- Technical support for problems that may occur.

- Bug fixes for issues that are discovered and that may impact the stability and usability of the server.

- Security fixes for vulnerabilities that are discovered and that may make the server vulnerable to security breaches.

- Time zone updates.

Your installation of Project Server 2010 will continue to run after this date. However, because of the changes listed above, we strongly recommend that you migrate from Project Server 2010 as soon as possible.

## What are my options?

If you are using Project Server 2010, you need to explore your migration options, which are:

- Migrate to Project Online

- Migrate to a newer on-premises version of Project Server (preferably Project Server 2019).

Here are the two paths you can take to avoid the end of support for Project Server 2010.

![Project Server 2010 upgrade paths](../media/project-server-2010-end-of-support/project-server-2010-end-of-support-timeline.png)

|Why would I prefer to migrate to Project Server 2019?|Why would I prefer to migrate to Project Online?|
|---|---|
|Business rules restrict me from operating my business in the cloud.  <br/>  I need control of updates to my environment.|I have mobile or remote users.  <br/>  Costs to migrate on-premises servers are a big concern (hardware, software, hours and effort to implement, etc.).  <br/>  After migration, costs to maintain my environment are a big concern (for example, automatic updates, guaranteed uptime, etc.).|

> [!NOTE]
> For more information about options for moving from your Office 2010 servers, see [Resources to help you upgrade from Office 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md). Note that Project Server does not support a hybrid configuration since Project Server and Project Online cannot share the same resource pool.

### What are my options for Project client?

If you are using Project Professional 2010 or Project Standard 2010 and want to explore your migration options, you have the choice of:

- Moving to a newer version of Project Professional or Project Standard.
- Moving to an online solution such as Project Online or Project for the web.

#### Moving to a newer version of Project client

If you are migrating from Project Standard 2010, you can migrate to a newer version of Project Standard (Project Standard 2016 or Project Standard 2019).  We recommend moving to the newest version to take advantage of the latest features and functionality. Also, migrating to a less current version (Project Standard 2016) means that you will need to migrate from this version sooner as its end of support date comes up.

Similarly, if you are migrating from Project Professional 2010, you can choose to migrate to a newer version (Project Professional 2019 or Project Professional 2016). We recommend moving to the newest version if possible.  If you are using Project Professional to connect to Project Server, make sure that you migrate to a version of Project Professional that is supported to connect with the version of Project Server that you are using.

Project Professional 2010 users can also choose to migrate to the Project Online Desktop client. It is a subscription-based version of Project Professional 2019, and is included in Project Plan 3 and Project Plan 5 subscriptions.

#### Moving to an online solution

You can also choose to migrate from Project Professional 2010 or Project Standard 2010 to Project's subscription-based online solutions. Both Project Plan 3 and Plan 5 include Project Online and the latest cloud offering, [Project for the web](https://support.office.com/article/what-can-you-do-with-project-for-the-web-b30f5442-be5f-43d2-9072-c95bff778ea1). Both offer a number of new features and benefits that are worth exploring.

For more information about features included in both, as well as Project Plan licenses they are included in, see the [Microsoft Project service description](https://docs.microsoft.com/office365/servicedescriptions/project-online-service-description/project-online-service-description).

## Important considerations you need to make when planning to migrate from Project Server 2010

You need to consider the following when planning to migrate from Project Server 2010:

- **Get help from a Microsoft solution provider** - Upgrading from Project Server 2010 can be a challenge and requires much preparation and planning. It can be especially challenging if you were not the one to setup and configure Project Server 2010 originally. Luckily, there are Microsoft solution providers you can turn to who do this for a living, whether you plan on migrating to Project Server 2019 or to Project Online. You can search for a Microsoft solution provider to help with your migration on the [Microsoft solution provider center](https://go.microsoft.com/fwlink/p/?linkid=841249).

- **Plan for your customizations** - Be aware that many of the customizations you have working in your Project Server 2010 environment might not work when migrating to Project Server 2019 or to Project Online. There are big differences in Project Server architecture between versions, as well as the required operating systems, database servers, and client web browsers that are supported to work with the newer version. Have a plan in place on how to test or rebuild your customizations as needed in your new environment. Planning for your upgrade will also be a good opportunity to verify if a specific customization is really needed as you move forward. [Create a plan for current customizations during upgrade to SharePoint 2013]( https://docs.microsoft.com/SharePoint/upgrade-and-update/create-a-plan-for-current-customizations-during-upgrade-to-sharepoint-2013) has some great general information about evaluating and planning for your current customizations when upgrading.

- **Time and patience** - Upgrade planning, execution, and testing will take much time and effort, especially if you are upgrading to Project Server 2019. For example, if you are migrating from Project Server 2010 to Project Server 2019, you will first need to migrate from Project Server 2010 to Project Server 2013, and then check your data, and then do the same thing when you migrate to each successive version (to Project Server 2016 and then to Project Server 2019). You might want to check with a Microsoft solution provider to compare your estimated costs with their estimates of how long it will take for them to do it, and at what cost.

## Migrate to Project Online

If you choose to migrate from Project Server 2010 to Project Online, you can do the following to manually migrate your project plan data:

1. Save your project plans from Project Server 2010 to .MPP format.

2. Using Project Professional 2016, Project Professional 2019, or the Project Online Desktop Client, open each .mpp file, and then save and publish it to Project Online.

You can manually create your PWA configuration in Project Online (for example, recreate any needed custom fields or enterprise calendars). Microsoft solution providers can also help you with this.

Key resources:

|Resource|Description|
|---|---|
|[Get started with Project Online](https://support.office.com/article/e3e5f64f-ada5-4f9d-a578-130b2d4e5f11)|How to setup and use Project Online.|
|[Project Online Service Description](https://go.microsoft.com/fwlink/p/?linkid=829088)|Information about the different Project Online plans that are available to you.|

## Migrate to a newer on-premises version of Project Server

While we strongly believe that you can achieve the best value and user experience by migrating to Project Online, we also understand that some organizations need to keep project data in an on-premises environment. If you choose to keep your project data on-premises, you can migrate your Project Server 2010 environment to Project Server 2013, Project Server 2016, or Project Server 2019.

We recommend that you migrate to Project Server 2019 if you can't migrate to Project Online. Project Server 2019 includes most of the key the features and advancements included with previous releases of Project Server, and it most closely matches the experience available with Project Online (although some features are available only in Project Online).

After completing each migration, you should check your data to make sure that it has migrated successfully.

> [!NOTE]
> If you are considering only migrating to Project Server 2013 if you are limited to an on-premises solution, it is important to note that it only has a few more years of support left. Project Server 2013 with Service Pack 2 end of support date is 10/13/2023. For more information about end of support dates, see [Microsoft Product Lifecycle Policy](https://go.microsoft.com/fwlink/p/?linkid=842066).

### How do I migrate to Project Server 2019?

The architectural differences between Project Server 2010 and Project Server 2019 prevents a direct migration path. This means that you will need to migrate your Project Server 2010 data to the next successive version of Project Server until you upgrade to Project Server 2019.

You will need to do the following steps to upgrade Project Server 2010 to Project Server 2019:

1. Migrate to Project Server 2013.

2. Migrate from Project Serve 2013 to Project Server 2016.

3. Migrate from Project Server 2016 to Project Server 2019.

After completing each migration, you should check your data to make sure that it has migrated successfully.


### Step 1: Migrate to Project Server 2013

Your first step in migrating your Project Server 2010 data to Project Server 2019 is to first migrate to Project Server 2013.

For a comprehensive understanding of what you need to do to upgrade from Project Server 2010 to Project Server 2013, see [Upgrade to Project Server 2013](https://go.microsoft.com/fwlink/p/?linkid=841822).

Key resources:

- [Overview of the Project Server 2013 upgrade process](https://go.microsoft.com/fwlink/p/?linkid=841822)

  Get a high-level understanding of what you need to do to upgrade from Project Server 2010 to Project Server 2013.
- [Plan to upgrade to Project Server 2013](https://go.microsoft.com/fwlink/p/?linkid=841823)

  Look at planning considerations you need to make when upgrading from Project Server 2010 to Project Server 2013, including System Requirements.

[What's new in Project Server 2013 upgrade](https://go.microsoft.com/fwlink/p/?linkid=841824) tells you some important changes for upgrade for this version, the most notable being:

- There is no in-place upgrade to Project Server 2013. The database-attach method is the only supported method for upgrading from Project Server 2010 to Project Server 2013.

- The upgrade process will not only convert your Project Server 2010 data to Project Server 2013 format, but will also consolidate the four Project Server 2010 databases to a single Project Web App database.

- Both SharePoint Server 2013 and Project Server 2013 changed to claims-based authentication from the previous version. You will need to make considerations when upgrading if you are using classic authentication. For more information, see [Migrate from classic-mode to claims-based authentication in SharePoint 2013]( https://docs.microsoft.com/sharepoint/upgrade-and-update/migrate-from-classic-mode-to-claims-based-authentication-in-sharepoint-2013).

Key resources:

- [Overview of the upgrade process to Project Server 2013](https://go.microsoft.com/fwlink/p/?linkid=841274)

- [Upgrade your databases and Project Web App site collections (Project Server 2013)](https://go.microsoft.com/fwlink/p/?linkid=841272)

- [Microsoft Project Server upgrade process diagram](https://go.microsoft.com/fwlink/p/?linkid=841270)

- [The Great Database Consolidation, Project Server 2010 to 2013 Migration in 8 Easy Steps](https://go.microsoft.com/fwlink/p/?linkid=841271)

### Step 2: Migrate to Project Server 2016

After migrating to Project Server 2013 and verifying that your data has migrated successfully, the next step is to migrate your data to Project Server 2016.

For a comprehensive understanding of what you need to do to upgrade from Project Server 2013 to Project Server 2016, see [Upgrade to Project Server 2016](https://docs.microsoft.com/Project/upgrade-to-project-server-2016).

Key resources:

- [Overview of the Project Server 2016 upgrade process](https://docs.microsoft.com/Project/overview-of-the-project-server-2016-upgrade-process)

  Get a high-level understanding of what you need to do to upgrade from Project Server 2013 to Project Server 2016.

- [Plan for upgrade to Project Server 2016](https://docs.microsoft.com/Project/plan-for-upgrade-to-project-server-2016)

  Look at planning considerations you need to make when upgrading from Project Server 2013 to Project Server 2016.

[Things you need to know about Project Server 2016 upgrade](https://docs.microsoft.com/project/plan-for-upgrade-to-project-server-2016#thingknow) tells you some important changes for upgrading to this version, which include:

- When you create your Project Server 2016 environment to which you will migrate your Project Server 2013 data, note that the Project Server 2016 installation files are included in SharePoint Server 2016. For more information, see [Deploy Project Server 2016](https://go.microsoft.com/fwlink/p/?linkid=841829).

- Resource plans are deprecated in Project Server 2016. Your Project Server 2013 resource plans will be migrated to Resource Engagements in Project Server 2016 and in Project Online. See [Overview: Resource engagements](https://support.office.com/article/73eefb5a-81fe-42bf-980e-9532b1bdc870) for more information.

### Step 3: Migrate to Project Server 2019

After migrating to Project Server 2016 and verifying that your data has migrated successfully, the next step is to migrate your data to Project Server 2019.

For a comprehensive understanding of what you need to do to upgrade from Project Server 2016 to Project Server 2019, see [Upgrade to Project Server 2019](https://docs.microsoft.com/Project/upgrade-to-project-server-2016).

Key resources:

- [Overview of the Project Server 2019 upgrade process](https://docs.microsoft.com/project/overview-of-the-project-server-2019-upgrade-process)

  Get a high-level understanding of what you need to do to upgrade from Project Server 2013 to Project Server 2016.

- [Plan for upgrade to Project Server 2019](https://docs.microsoft.com/project/plan-for-upgrade-to-project-server-2019)

  Look at planning considerations you need to make when upgrading from Project Server 2016 to Project Server 2019.

[Things you need to know about Project Server 2019 upgrade](https://go.microsoft.com/fwlink/p/?linkid=841827) tells you some important changes for upgrading to this version, which include:

- The upgrade process will migrate your data from your Project Server 2016 database to the SharePoint Server 2019 Content database.  Project Server 2019 will no longer create its own Project Server database in the SharePoint Server farm.

- After upgrade, be aware of several changes in Project Web App.  For a description of these, see [What's new in Project Server 2019](https://docs.microsoft.com/project/what-s-new-for-it-pros-in-project-server-2019#PWAChanges).

**Other resources**:

- [Project Online Service Descriptions](https://go.microsoft.com/fwlink/p/?linkid=841280): See the portfolio management features that are included with Project Server 2016 and Project Online Premium.

- [Microsoft Office Project Portfolio Server 2010 migration guide](https://go.microsoft.com/fwlink/p/?linkid=841279)

## Summary of options for Office 2010 client and servers and Windows 7

For a visual summary of the upgrade, migrate, and move-to-the-cloud options for Office 2010 clients and servers and Windows 7, see the [end of support poster](../downloads/Office2010Windows7EndOfSupport.pdf).

[![Image for the end of support for Office 2010 clients and servers and Windows 7 poster](../media/upgrade-from-office-2010-servers-and-products/office2010-windows7-end-of-support.png)](../downloads/Office2010Windows7EndOfSupport.pdf)

This one-page poster is a quick way to understand the various paths you can take to prevent Office 2010 client and server products and Windows 7 from reaching end of support, with preferred paths and option support in Microsoft 365 Enterprise highlighted.

You can also [download](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/Office2010Windows7EndOfSupport.pdf) this poster and print it in letter, legal, or tabloid (11 x 17) formats.

## Related topics

[Upgrading from SharePoint 2010](upgrade-from-sharepoint-2010.md)

[Upgrade from Office 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md)
