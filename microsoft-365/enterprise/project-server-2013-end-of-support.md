---
title: "Project Server 2013 end-of-support roadmap"
ms.author: serdars
author: serdarsoysal
manager: serdars
ms.date: 10/11/2021
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: IT_ProjectAdmin
search.appverid:
- MET150
description: "Support ends for Project Server 2013 on April 11, 2023. Use this article as a guide to upgrade to Project Online or a newer version of Project Server on-premises."
---

# Project Server 2013 end of support roadmap

Project Server 2013 will reach end of support on **April 11, 2023**. If you're currently using Project Server 2013, note that Project 2013 desktop app also has the same end-of-support dates.

## What does *end of support* mean?

Almost all Microsoft products have a support lifecycle, during which they get new features, bug fixes, and security updates. This lifecycle typically lasts for 10 years from the product's initial release. The end of this lifecycle is known as the product's end of support. After Project Server 2013 reaches its end of support on April 11, 2023, Microsoft will no longer provide:

- Technical support for problems that may occur.

- Bug fixes for issues that are discovered and that may impact the stability and usability of the server.

- Security fixes for vulnerabilities that are discovered and that may make the server vulnerable to security breaches.

- Time zone updates.

Your installation of Project Server 2013 will continue to run after this date. But, because of the changes listed previously, we strongly recommend that you migrate from Project Server 2013 as soon as possible.

## What are my options?

Your migration options are:

- Migrate to Project Online

- Migrate to a newer on-premises version of Project Server (preferably Project Server Subscription Edition)

|Why would I prefer to migrate to Project Server 2019?|Why would I prefer to migrate to Project Online?|
|---|---|
|Business rules restrict me from operating my business in the cloud.  <br/><br/>  I need control of updates to my environment.|I have mobile or remote users.<br/><br/>  Costs to migrate on-premises servers are a significant concern (hardware, software, time and effort to implement, and so on.). <br/><br/>  After migration, costs to maintain my environment are a concern (for example, automatic updates, guaranteed uptime, and so on).|

> [!NOTE]
> Project Server doesn't support hybrid configuration because Project Server and Project Online can't share the same resource pool.

## Important considerations for migrating from Project Server 2013

Consider the following when you plan to migrate from Project Server 2013:

- **Get help from a Microsoft solution provider** - An upgrade from Project Server 2013 can be a challenge. It requires much preparation and planning. It can be especially challenging if you weren't the person who originally set up Project Server 2013. Microsoft solution providers are available to help, whether you plan to migrate to Project Server Subscription Edition or to Project Online. Search for a solution provider in the [Microsoft solution provider center](https://go.microsoft.com/fwlink/p/?linkid=841249).

- **Time and patience** - Upgrade planning, execution, and testing will take considerable time and effort, especially for an upgrade to Project Server Subscription Edition. If you're migrating from Project Server 2013 to Project Server Subscription Edition, you must first migrate to Project Server 2016, check your data, and then to Project Server Subscription Edition. You might want to check with a Microsoft solution provider for a time frame and estimated cost for them to assist.

## Migrate to Project Online

If you choose to migrate from Project Server 2013 to Project Online, you can follow these steps to manually migrate your project plan data:

1. Save your project plans from Project Server 2013 to .mpp format.

2. Using Project Professional 2016, Project Professional 2019, or the Project Online Desktop Client, open each .mpp file, and then save and publish it to Project Online.

You can manually create your PWA configuration in Project Online (for example, recreate any needed custom fields or enterprise calendars). Microsoft solution providers can also help with this process.

Key resources:

|Resource|Description|
|---|---|
|[Get started with Project Online](https://support.office.com/article/e3e5f64f-ada5-4f9d-a578-130b2d4e5f11)|How to set up and use Project Online|
|[Project Online Service Description](/office365/servicedescriptions/project-online-service-description/project-online-service-description)|Information about the different Project Online plans available|

## Migrate to a newer on-premises version of Project Server

We strongly believe that you get the best value and user experience by migrating to Project Online. But we also understand some organizations need to keep project data on-premises. If you choose to keep your project data on-premises, you can migrate your Project Server 2013 environment to Project Server 2016, Project Server 2019, or Project Server Subscription Edition.

If you can't migrate to Project Online, we recommend that you migrate to Project Server Subscription Edition which includes most of the key features in previous releases of Project Server. And it most closely matches the experience available with Project Online, although some features are available only in Project Online. Additional factors to consider are:

- Project Server Subscription Edition introduces a continuous update model that eliminates the need to release new major versions of Project Server going forward.
- Both Project Server 2016 and 2019 will reach end of support on July 14, 2026. If you migrate to either version, you will need to plan for another upgrade within three years. For more information, see the support lifecycle pages for both [2016](/lifecycle/products/project-server-2016) and [2019](/lifecycle/products/project-server-2019).

After you complete each migration, make sure that your data migrated successfully.

### How do I migrate to Project Server Subscription Edition?

The architectural differences between Project Server 2013 and Project Server Subscription Edition prevent a direct migration path. So you'll need to migrate your Project Server 2013 data first to Project Server 2016, and then to Project Server Subscription Edition. 

1. Migrate to Project Server 2016.

2. Migrate from Project Server 2016 to Project Server Subscription Edition.

After you complete each migration, make sure that your data migrated successfully.

### Step 1: Migrate to Project Server 2016

For a comprehensive information about upgrading from Project Server 2013 to Project Server 2016, see [Upgrade to Project Server 2016](/project/upgrade-to-project-server-2016).

Key resources:

- [Overview of the Project Server 2016 upgrade process](/project/upgrade-to-project-server-2016): Get a high-level overview of how to upgrade from Project Server 2013 to Project Server 2016.
- [Plan to upgrade to Project Server 2016](/project/plan-for-upgrade-to-project-server-2016): Look at planning considerations when upgrading from Project Server 2013 to Project Server 2016, including system requirements.
- [Upgrading to Project Server 2016](/project/upgrading-to-project-server-2016): See the detailed instructions on the upgrade process.

### Step 2: Migrate to Project Server Subscription Edition

After you move to Project Server 2016 and verify that your data has migrated successfully, the next step is to migrate to Project Server Subscription Edition.

For more information, see [Upgrade to Project Server Subscription Edition](/project/upgrade-project-server-subscription-edition).

Key resources:

- [Overview of the Project Server Subscription Edition upgrade process](/project/overview-project-server-subscription-edition-upgrade-process): Understand what you need to do to upgrade from Project Server 2013 to Project Server 2016.
- [Plan for upgrade to Project Server Subscription Edition](/Project/plan-upgrade-project-server-subscription-edition): Look at  the planning considerations to make when upgrading from Project Server 2013 to Project Server 2016.
- [Upgrading to Project Server Subscription Edition](/project/how-to-upgrade-project-server-subscription-edition): See the detailed instructions on the upgrade process.


