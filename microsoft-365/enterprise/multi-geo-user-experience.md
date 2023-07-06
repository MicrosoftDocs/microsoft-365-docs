---
title: "User experience in a multi-geo environment"
ms.reviewer: adwood
ms.date: 08/10/2020
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.collection:
- SPO_Content
- Strat_SP_gtc
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.localizationpriority: medium
description: Learn about the SharePoint, OneDrive, and Exchange user experience in a multi-geo environment for Microsoft 365.
---

# User experience in a Multi-Geo environment

Here's what your users will see in a OneDrive for Business Multi-Geo configuration:

## Exchange Online mailbox

A user's Exchange Online mailbox is provisioned to their preferred data location, and is automatically relocated if their PDL changes. Users can use Outlook and Outlook on the web normally with no change in user experience in a Multi-Geo environment.

## Hub sites

SharePoint Online Hub sites enhance the discovery and engagement with content for employees, while creating a complete and consistent representation of projects, departments or regions. In a Multi-Geo environment, sites from satellite locations can easily be associated with a hub site regardless the hub site's _Geography_ location. Users can search and get results across the hub through a single search experience, regardless of the geo location of the sites.

## Microsoft 365 app launcher

The app launcher is multi-geo aware and will direct each tile to the appropriate geo location of the workload. The SharePoint Online and OneDrive for Business tiles will point the user to the location corresponding to the user's provisioned geo location. This means that is the user has a OneDrive for Business in the central location, their SharePoint Online tile will point them to SP Home in the central location but their group site will be provisioned in the location corresponding to their PDL. 

## Office applications

Office applications such as Microsoft Word, Excel, and PowerPoint will automatically detect the correct OneDrive for Business geo-location for each user when they log in. Users do not need to enter the geo-specific URL for their OneDrive for Business or SharePoint Online sites.

## OneDrive for Business sync app

The OneDrive for Business sync app (version 17.3.6943.0625 and later) will automatically detect the correct OneDrive _Geography_ location for the user. Sync app support includes the ability to sync groups-based sites regardless of their _Geography_ location. The Groove sync client is not supported for Multi-Geo. 

## OneDrive for Business location

Users will have their OneDrive for Business provisioned in their preferred data location. If a user navigates to a OneDrive for Business URL that contains an incorrect _Geography_ location (such as a bookmark from a previous geo location), they are automatically redirected to the OneDrive for Business in the appropriate geo location.

## OneDrive for Business iOS and Android 

The OneDrive iOS and Android mobile apps will show you your OneDrive for Business files and files shared with you regardless of their _Geography_ location. Search from the OneDrive for Business mobile apps will show relevant results from all _Geography_ locations. Download the latest version of these apps.

For more information, see Use [OneDrive on iOS](https://support.office.com/article/08d5c5b2-ccc6-40eb-a244-fe3597a3c247) and [Use OneDrive for Android](https://support.office.com/article/eee1d31c-792d-41d4-8132-f9621b39eb36) for more information.

## OneDrive for Business Mobile Client 

The OneDrive for Business Mobile Client is Multi-Geo aware and will display pertinent content and results from all _Geography_ locations.

## Search

Each _Geography_ location has its own search index and Search Center. When a user searches, the query is sent to all the _Geography_ locations, and the returned results are merged and then ranked so the user gets unified results. Users get results from all _Geography_ locations regardless of their own _Geography_ location. See [Configure Search for OneDrive for Business Multi-Geo](configure-search-for-multi-geo.md) for specifics.

The following search clients are supported:

-   OneDrive for Business

-   Office Delve

-   SharePoint Online Home

-   The Search Center

-   Custom search applications that use the SharePoint Search API

## SharePoint Online Home 

In SharePoint Online Multi-Geo, your SharePoint Online home is hosted in the location where the user resides as determined by their OneDrive for Business location. For example: if the user has their OneDrive for Business hosted in a European satellite location, their SharePoint Online Home will be rendered from Europe. SharePoint Online home includes all content relevant to the user regardless of its _Geography_ location. 

**Followed Sites, News from Sites, Recent Sites, Frequent Sites, and Suggested sites**

All of these components will show up for the user regardless of the _Geography_ location where the content is hosted, so long as the user has permissions to said content. 

**Features Links**

Admins may configure Featured links in SharePoint Online home as appropriate to each _Geography_ location. This allows the admin to feature in the SP Home for each region the links that are appropriate for users in the region. 

## SharePoint Mobile Client

The SharePoint Mobile Client is multi-geo aware and will display pertinent content and results from all geo locations.

## Sharing

The People Picker experience shows all users regardless of their _Geography_ location. This allows a user to share with another user in their same geo or in any other of your _Tenant's_ _Geography_ locations. Content from different _Geography_ locations will show up in the **Shared with Me** view in the user's OneDrive for Business, Word, Excel, PowerPoint, and Office.com and can be accessed with Single Sign-On experience regardless of which _Geography_ location it is hosted in.

## Microsoft Teams Experience

Microsoft Teams is a Multi-Geo service. OneDrive for Business files and recently viewed files are shown regardless of the user's _Geography_ location. @ mentions work with users from all _Geography_ locations.

## User profiles

User profile information is mastered in the user's _Geography_ location. When selecting a user, you will be directed to the appropriate _Geography_ location for the user, where you will see their full profile details.

If Office Delve is turned off, you will see the classic profile experience in SharePoint Online, which is not Multi-Geo aware.
