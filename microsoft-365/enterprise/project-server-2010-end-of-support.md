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

Project Server 2010 will reach end of support on **April 13, 2021**. This date was extended from the previous end-of-support date of October 13, 2020. If you're currently using Project Server 2010, note that these related products have the following end-of-support dates:

|Product |End of support date|
|---|---|
|Project 2010 Standard|October 13, 2020|
|Project 2010 Professional|October 13, 2020|

For more information about reaching end of support, see [Upgrade from Office 2010 servers and client products](plan-upgrade-previous-versions-office.md).

## What does *end of support* mean?

Almost all Microsoft products have a support lifecycle, during which they get new features, bug fixes, and security updates. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. After Project Server 2010 reaches its end of support on April 13, 2021, Microsoft will no longer provide:

- Technical support for problems that may occur.

- Bug fixes for issues that are discovered and that may impact the stability and usability of the server.

- Security fixes for vulnerabilities that are discovered and that may make the server vulnerable to security breaches.

- Time zone updates.

Your installation of Project Server 2010 will continue to run after this date. But, because of the changes listed previously, we strongly recommend that you migrate from Project Server 2010 as soon as possible.

## What are my options?

Your migration options are:

- Migrate to Project Online

- Migrate to a newer on-premises version of Project Server (preferably Project Server 2019)

Here are the two paths you can take to avoid the end of support for Project Server 2010.

![Project Server 2010 upgrade paths](../media/project-server-2010-end-of-support/project-server-2010-end-of-support-timeline.png)

|Why would I prefer to migrate to Project Server 2019?|Why would I prefer to migrate to Project Online?|
|---|---|
|Business rules restrict me from operating my business in the cloud.  <br/><br/>  I need control of updates to my environment.|I have mobile or remote users.<br/><br/>  Costs to migrate on-premises servers are a significant concern (hardware, software, time and effort to implement, and so on.). <br/><br/>  After migration, costs to maintain my environment are a concern (for example, automatic updates, guaranteed uptime, and so on).|

> [!NOTE]
> For more information about your migration options, see [Resources to help you upgrade from Office 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md). Note that Project Server doesn't support hybrid configuration because Project Server and Project Online can't share the same resource pool.

### What are my options for Project client?

If you're using Project Professional 2010 or Project Standard 2010, your options are:

- Move to a newer version of Project Professional or Project Standard
- Move to an online solution, such as Project Online or Project for the web

#### Move to a newer version of Project client

If you're migrating from Project Standard 2010, you can move to a newer version of Project Standard (Project Standard 2016 or Project Standard 2019). We recommend you move to the newest version to take advantage of the latest features. Migrating to a less-current version (Project Standard 2016) also means you'll need to migrate again sooner.

Similarly, if you're migrating from Project Professional 2010, you can move to a newer version (Project Professional 2019 or Project Professional 2016). Again, move to the newest version if possible. If you use Project Professional to connect to Project Server, make sure you migrate to a version of Project Professional that connects with the version of Project Server that you use.

Project Professional 2010 users can also migrate to the Project Online Desktop client, which is a subscription-based version of Project Professional 2019. It's included in Project Plan 3 and Project Plan 5 subscriptions.

#### Move to an online solution

You can also migrate from Project Professional 2010 or Project Standard 2010 to a Project subscription-based online solution. Both Project Plan 3 and Plan 5 include Project Online and the latest cloud offering, [Project for the web](https://support.office.com/article/what-can-you-do-with-project-for-the-web-b30f5442-be5f-43d2-9072-c95bff778ea1). Both offer new features and benefits that are worth exploring.

For more information about features and licenses, see [Microsoft Project service description](/office365/servicedescriptions/project-online-service-description/project-online-service-description).

## Important considerations for migrating from Project Server 2010

Consider the following when you plan to migrate from Project Server 2010:

- **Get help from a Microsoft solution provider** - An upgrade from Project Server 2010 can be a challenge. It requires much preparation and planning. It can be especially challenging if you weren't the person who originally set up Project Server 2010. Microsoft solution providers are available to help, whether you plan to migrate to Project Server 2019 or to Project Online. Search for a solution provider in the [Microsoft solution provider center](https://go.microsoft.com/fwlink/p/?linkid=841249).

- **Plan for your customizations** - Customizations  in your Project Server 2010 environment might not work when you migrate to Project Server 2019 or Project Online. There are significant differences in Project Server architecture between versions. Also, the required operating systems, database servers, and web browsers that work with the versions differ. Have a plan on how to test or rebuild your customizations in the new environment. Take this opportunity to determine if specific customizations are still needed. For more information, see [Create a plan for current customizations during upgrade to SharePoint 2013](/SharePoint/upgrade-and-update/create-a-plan-for-current-customizations-during-upgrade-to-sharepoint-2013).

- **Time and patience** - Upgrade planning, execution, and testing will take considerable time and effort, especially for an upgrade to Project Server 2019. If you're migrating from Project Server 2010 to Project Server 2019, you must first migrate to Project Server 2013, check your data, then migrate to Project Server 2016, and then to Project Server 2019. You might want to check with a Microsoft solution provider for a time frame and estimated cost for them to assist.

## Migrate to Project Online

If you choose to migrate from Project Server 2010 to Project Online, you can follow these steps to manually migrate your project plan data:

1. Save your project plans from Project Server 2010 to .mpp format.

2. Using Project Professional 2016, Project Professional 2019, or the Project Online Desktop Client, open each .mpp file, and then save and publish it to Project Online.

You can manually create your PWA configuration in Project Online (for example, recreate any needed custom fields or enterprise calendars). Microsoft solution providers can also help with this process.

Key resources:

|Resource|Description|
|---|---|
|[Get started with Project Online](https://support.office.com/article/e3e5f64f-ada5-4f9d-a578-130b2d4e5f11)|How to set up and use Project Online|
|[Project Online Service Description](/office365/servicedescriptions/project-online-service-description/project-online-service-description)|Information about the different Project Online plans available|

## Migrate to a newer on-premises version of Project Server

We strongly believe that you get the best value and user experience by migrating to Project Online. But we also understand some organizations need to keep project data on-premises. If you choose to keep your project data on-premises, you can migrate your Project Server 2010 environment to Project Server 2013, Project Server 2016, or Project Server 2019.

If you can't migrate to Project Online, we recommend that you migrate to Project Server 2019. Project Server 2019 includes most of the key features in previous releases of Project Server. And it most closely matches the experience available with Project Online, although some features are available only in Project Online.

After you complete each migration, make sure that your data migrated successfully.

> [!NOTE]
> If you're limited to an on-premises solution and considering only migrating to Project Server 2013, beware that this version only has a few more years of support left. The end of support date for Project Server 2013 with Service Pack 2 October 13, 2023. For more information about end-of-support dates, see [Microsoft Product Lifecycle Policy](/lifecycle/).

### How do I migrate to Project Server 2019?

The architectural differences between Project Server 2010 and Project Server 2019 prevent a direct migration path. So you'll need to migrate your Project Server 2010 data to each successive version of Project Server until you reach Project Server 2019. Steps to upgrade Project Server 2010 to Project Server 2019:

1. Migrate to Project Server 2013.

2. Migrate from Project Serve 2013 to Project Server 2016.

3. Migrate from Project Server 2016 to Project Server 2019.

After you complete each migration, make sure that your data migrated successfully.

### Step 1: Migrate to Project Server 2013

For a comprehensive information about upgrading from Project Server 2010 to Project Server 2013, see [Upgrade to Project Server 2013](/project/upgrade-to-project-server-2016).

Key resources:

- [Overview of the Project Server 2013 upgrade process](/project/upgrade-to-project-server-2016)

  Get a high-level overview of how to upgrade from Project Server 2010 to Project Server 2013.
- [Plan to upgrade to Project Server 2013](/project/plan-for-upgrade-to-project-server-2016)

  Look at planning considerations when upgrading from Project Server 2010 to Project Server 2013, including system requirements.

- [What's new in Project Server 2013 upgrade](/project/what-s-new-in-project-server-2013-upgrade) covers important changes for this version, including:

   - There's no in-place upgrade to Project Server 2013. The database-attach method is the only supported way to upgrade from Project Server 2010 to Project Server 2013.

   - The upgrade process will not only convert your Project Server 2010 data to Project Server 2013 format but will also consolidate the four Project Server 2010 databases into a single Project Web App database.

   - Both SharePoint Server 2013 and Project Server 2013 changed to claims-based authentication from the previous version. If you're using classic authentication, you'll need to consider this when you upgrade. For more information, see [Migrate from classic-mode to claims-based authentication in SharePoint 2013]( https://docs.microsoft.com/sharepoint/upgrade-and-update/migrate-from-classic-mode-to-claims-based-authentication-in-sharepoint-2013).

Key resources:

- [Overview of the upgrade process to Project Server 2013](/project/overview-of-the-project-server-2016-upgrade-process)

- [Upgrade your databases and Project Web App site collections (Project Server 2013)](/project/upgrading-to-project-server-2016)

- [Microsoft Project Server upgrade process diagram](https://go.microsoft.com/fwlink/p/?linkid=841270)

- [The Great Database Consolidation, Project Server 2010 to 2013 Migration in 8 Easy Steps](https://go.microsoft.com/fwlink/p/?linkid=841271)

### Step 2: Migrate to Project Server 2016

After you move to Project Server 2013 and verify that your data has migrated successfully, the next step is to migrate to Project Server 2016.

For more information, see [Upgrade to Project Server 2016](/Project/upgrade-to-project-server-2016).

Key resources:

- [Overview of the Project Server 2016 upgrade process](/Project/overview-of-the-project-server-2016-upgrade-process)

  Understand what you need to do to upgrade from Project Server 2013 to Project Server 2016.

- [Plan for upgrade to Project Server 2016](/Project/plan-for-upgrade-to-project-server-2016)

  Look at  the planning considerations to make when upgrading from Project Server 2013 to Project Server 2016.

[Things you need to know about Project Server 2016 upgrade](/project/plan-for-upgrade-to-project-server-2016#thingknow) covers important changes for upgrading to this version, which include:

- When you create your Project Server 2016 environment, note that the Project Server 2016 installation files are included in SharePoint Server 2016. For more information, see [Deploy Project Server 2016](/project/deploy-project-server-2016).

- Resource plans are deprecated in Project Server 2016. Your Project Server 2013 resource plans will be migrated to Resource Engagements in Project Server 2016 and in Project Online. See [Overview: Resource engagements](https://support.office.com/article/73eefb5a-81fe-42bf-980e-9532b1bdc870) for more information.

### Step 3: Migrate to Project Server 2019

After you migrate to Project Server 2016 and verify that your data migrated successfully, the next step is to migrate your data to Project Server 2019.

To learn what you need to do to upgrade from Project Server 2016 to Project Server 2019, see [Upgrade to Project Server 2019](/Project/upgrade-to-project-server-2016).

Key resources:

- [Overview of the Project Server 2019 upgrade process](/project/overview-of-the-project-server-2019-upgrade-process)

  Get a high-level understanding of what you need to do to upgrade from Project Server 2013 to Project Server 2016.

- [Plan for upgrade to Project Server 2019](/project/plan-for-upgrade-to-project-server-2019)

  Look at planning considerations for upgrading from Project Server 2016 to Project Server 2019.

- [Things you need to know about Project Server 2019 upgrade](/project/plan-for-upgrade-to-project-server-2016)<br/><br/>Learn about important changes for upgrading to this version, which include:

   - The upgrade process will migrate your data from your Project Server 2016 database to the SharePoint Server 2019 Content database.  Project Server 2019 will no longer create its own Project Server database in the SharePoint Server farm.

   - After the upgrade, be aware of several changes in Project Web App.  For details, see [What's new in Project Server 2019](/project/what-s-new-for-it-pros-in-project-server-2019#PWAChanges).

**Other resources**:

- [Project Online Service Descriptions](/office365/servicedescriptions/project-online-service-description/project-online-service-description): See the portfolio management features included with Project Server 2016 and Project Online Premium.

- [Microsoft Office Project Portfolio Server 2010 migration guide](https://go.microsoft.com/fwlink/p/?linkid=841279)

## Summary of options for Office 2010 client and servers and Windows 7

For a visual summary of the upgrade, migrate, and move-to-the-cloud options for Office 2010 clients and servers and Windows 7, see the [end of support poster](../downloads/Office2010Windows7EndOfSupport.pdf).

[![End of support for Office 2010 clients and servers and Windows 7 poster](../media/upgrade-from-office-2010-servers-and-products/office2010-windows7-end-of-support.png)](../downloads/Office2010Windows7EndOfSupport.pdf)

This poster illustrates the various paths you can take to avoid end of support for Office 2010 client and server products and Windows 7, with preferred paths and option support in Microsoft 365 Enterprise highlighted.

You can also [download](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/Office2010Windows7EndOfSupport.pdf) this poster and print it in letter, legal, or tabloid (11 x 17) format.

## Related topics

[Upgrading from SharePoint 2010](upgrade-from-sharepoint-2010.md)

[Upgrade from Office 2010 servers and clients](upgrade-from-office-2010-servers-and-products.md)