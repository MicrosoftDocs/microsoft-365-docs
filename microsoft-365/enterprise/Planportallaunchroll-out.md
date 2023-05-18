---
title: "Planning your portal launch roll-out plan in SharePoint Online"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/10/2020
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Ent_O365
- SPO_Content
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid:
- SPO160
- MET150
description: "This article describes how you can plan your portal launch in SharePoint Online and what steps to take for a successful launch"
---

# Planning your portal launch roll-out plan in SharePoint Online

A portal is a SharePoint site on your intranet with many site viewers who consume content on the site. Large organizations could have several portals. For example, a company portal and an HR portal. Typically portals have relatively few people who create and author the site and its content. Most visitors to the portal only read and consume the content.

This article describes how to plan your deployment and roll-out plan to SharePoint Online. It also provides approaches to follow as traditional load testing isn't permitted on SharePoint Online. SharePoint Online is a cloud service and the load capabilities, health, and overall balance of load in the service are managed by Microsoft.

To help in creating a successful portal, follow the basic principles, practices, and recommendations detailed in the [Creating, launching, and maintaining a healthy portal](/sharepoint/portal-health)

The deployment approach is highlighted below.

## Portal Launch Scheduler

Use the portal launch scheduler to release your portal to users in your organization in scheduled phases. Learn more:

![Calendar icon.](../media/calendar.png) [Portal Launch Scheduler](/microsoft-365/enterprise/portallaunchscheduler)

## Overview of capacity planning in SharePoint Online

In order to efficiently use capacity and deal with unexpected growth, in any farm, we have automation that tracks certain usage scenarios. While exact growth is unpredictable for any one tenant in any one farm, the aggregated sum of requests is predictable over time. By identifying the growth trends in SharePoint Online, we can plan for future expansion. For more information on [Capacity planning and load testing SharePoint Online](capacity-planning-and-load-testing-sharepoint-online.md).

A key part of a successful launch is the "wave" or "phased roll-out" approach detailed below.

## Can I load test SharePoint Online?

SharePoint Online is a shared multi-tenanted environment that is balanced across farms and scale is adjusted in an on-going basis. Load testing an environment, like SharePoint Online, whose scale changes continuously won't only  give you unexpected results but it isn't permitted.

Learn more:  [Capacity planning and load testing SharePoint Online](capacity-planning-and-load-testing-sharepoint-online.md)

## Optimize pages by following recommended guidelines

Pages from an on-premises deployment shouldn't simply be moved as they are onto SharePoint Online without reviewing them against recommended guidelines for SharePoint Online. The best approach is to always optimize any home page for any site or portal in SharePoint, as this is where most users in your organization will access as the starting point for your site(s).

A few basic factors should be considered:

- On-premises deployments can use traditional server-side caches like object cache, output cache, and blob cache. With the topology differences in the cloud, these options aren't necessarily available as the sheer scale differences make them less viable approaches.
- Any pages / features / customizations used for cloud consumption should be optimized for higher latency and the distributed locations of users, so that users in different areas or regions have a more consistent experience. Cloud offers optimizations like Content Delivery Networks (CDN) to optimize for a distributed user base and for modern SharePoint, the last known good (LKG) is utilized by our out of the box (OOTB) web parts.

**What to do**:

- For all site pages in SharePoint Online, use the [Page Diagnostics tool](./page-diagnostics-for-spo.md), which is a Chromium extension that assists with analyzing and providing guidance. This tool can be used by site owners, editors, administrators, and developers as it is designed to be a starting point for analysis and optimization.
- Developers should also use development tools like F12 browser developer tool and CTRL-F12 in the browser on modern pages. [Fiddler](https://www.telerik.com/download/fiddler) can also be used to review the size weight (how large the page is in megabytes) of the page and the number of calls and elements impacting the overall page load.

This section was a brief summary for optimizing pages.  To learn more, see:  [Creating, launching, and maintaining a healthy portal](/sharepoint/portal-health).

## Follow a Wave / Phased roll-out approach

The traditional big bang approach for site launches won't allow verification that customizations, external sources, services, or processes have been tested at the right scale. This approach doesn't mean that it will take months to launch, but it's recommended over at least several days dependent on your organization size. Following a wave roll-out plan therefore gives you the option to pause and resolve issues before proceeding with the next phase and therefore lowers the potential number of users impacted by any issues. SharePoint as a service scales your capacity based on usage and predicted usage and whilst we don't need you to notify us of your launch, you should follow the guidelines to ensure success.

As shown in the following image, often the number of users that are invited is significantly higher than those that actually use the site. This image shows a strategy about how to roll out a release. This method helps identify ways to improve the SharePoint site before most the users see it.

![Graph showing invited and active users.](../media/0bc14a20-9420-4986-b9b9-fbcd2c6e0fb9.png)

In the pilot phase, it is good to get feedback from users that the organization trusts and knows will be engaged. This way it is possible to gauge how the system is being used, and how it is performing.

During each of the waves, gather user feedback around the features and the performance during each wave of deployment. Collecting feedback has the advantage of slowly introducing the system and making improvements as the system gets more use. This also allows us to react to the increased load as the site is rolled out to more users and combined with following the guidelines for page optimization ensures a positive experience for your users.

**What to do**:

- Decide on the timing of each phase and ensure that you have a contingency / pause opportunity, should you need to make adjustments before continuing
- Plan your first group of users that you want to enable, to ensure you receive the feedback you need to move forward.  Where possible, select an active group of users that will provide feedback in a timely fashion
- As you plan each wave, try to start with a small user base (less than 5000 users). Increase the group sizes as you proceed with each wave. By creating a staggered approach, it allows for easier pause opportunities as needed.
