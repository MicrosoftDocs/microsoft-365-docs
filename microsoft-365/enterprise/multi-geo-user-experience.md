---
title: "User experience in a multi-geo environment"
ms.reviewer: adwood
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection:
- SPO_Content
- Strat_SP_gtc
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
localization_priority: Normal
description: Learn about the SharePoint, OneDrive, and Exchange user experience in a multi-geo environment for Microsoft 365.
---

# User experience in a multi-geo environment

Here's what your users will see in a OneDrive Multi-Geo configuration:

## Exchange mailbox

A user's Exchange mailbox is provisioned to their preferred data location, and is automatically relocated if their PDL changes. Users can use Outlook and Outlook on the web normally with no change in user experience in a multi-geo environment.

## Hub sites

SharePoint Hub sites enhances the discovery and engagement with content for employees, while creating a complete and consistent representation of projects, departments or regions. In a multi-geo environment, sites from satellite locations can easily be associated with a hub site regardless the hub site's geo location. Users can search and get results across the hub through a single search experience, regardless of the geo location of the sites.

## Microsoft 365 app launcher

The app launcher is multi-geo aware and will direct each tile to the appropriate geo location of the workload. The SharePoint and OneDrive tiles will point the user to the location corresponding to the user's provisioned geo location. This means that is the user has a OneDrive in the central location, their SharePoint tile will point them to SP Home in the central location but their group site will be provisioned in the location corresponding to their PDL. 

## Office applications

Office applications such as Word, Excel, and PowerPoint will automatically detect the correct OneDrive for Business geo-location for each user when they log in. Users do not need to enter the geo-specific URL for their OneDrive or SharePoint sites.

## OneDrive for Business Sync Client

The OneDrive for Business Sync Client (version 17.3.6943.0625 and later) will automatically detect the correct OneDrive for Business geo location for the user. Sync client support includes the ability to sync groups-based sites regardless of their geo location. Note that the Groove sync client is not supported for multi-geo. 

## OneDrive for Business location

Users will have their OneDrive for Business provisioned in their preferred data location. If a user navigates to a OneDrive URL that contains an incorrect geo location (such as a bookmark from a previous geo location), they are automatically redirected to the OneDrive in the appropriate geo location.

## OneDrive iOS and Android 

The OneDrive iOS and Android mobile apps will show you your OneDrive files and files shared with you regardless of their geo location. Search from the OneDrive mobile apps will show relevant results from all geo locations. Please download the latest version of these apps.

See Use [OneDrive on iOS](https://support.office.com/article/08d5c5b2-ccc6-40eb-a244-fe3597a3c247) and [Use OneDrive for Android](https://support.office.com/article/eee1d31c-792d-41d4-8132-f9621b39eb36) for more information.

## OneDrive Mobile Client 

The OneDrive Mobile Client is multi-geo aware and will display pertinent content and results from all geo locations.

## Search

Each geo location has its own search index and Search Center. When a user searches, the query is sent to all the geo locations, and the returned results are merged and then ranked so the user gets unified results. Users get results from all geo locations regardless of their own geo location. See [Configure Search for OneDrive for Business Multi-Geo](configure-search-for-multi-geo.md) for specifics.

The following search clients are supported:

-   OneDrive for Business

-   Delve

-   SharePoint Home

-   The Search Center

-   Custom search applications that use the SharePoint Search API

## SharePoint Home 

In SharePoint Multi-Geo your SharePoint home is hosted in the location where the user resides as determined by their OneDrive for business location. For example: if the user has their OneDrive hosted in an European satellite location, their SharePoint Home will be rendered from Europe. SharePoint home includes all content relevant to the user regardless of its geo location. 

**Followed Sites, News from Sites, Recent Sites, Frequent Sites, and Suggested sites**

All of these components will show up for the user regardless of the geo location where the content is hosted, so long as the user has permissions to said content. 

**Features Links**

Admins may configure Featured links in SharePoint home as appropriate to each geo location. This allows the admin to feature in the SP Home for each region the links that are appropriate for users in the region. 

## SharePoint Mobile Client 

The SharePoint Mobile Client is multi-geo aware and will display pertinent content and results from all geo locations.

## Sharing

The People Picker experience shows all users regardless of their geo location. This allows a user to share with another user in their same geo or in any other of your tenant's geo locations. Content from different geo locations will show up in the **Shared with Me** view in the user's OneDrive for Business and can be accessed with Single Sign-On experience regardless of which geo location it is hosted in.

## Teams Experience

Teams is multi-geo aware. OneDrive files and recently viewed files are shown regardless of the user's geo location. @ mentions work with users from all geo-locations.

## User profiles

User profile information is mastered in the user's geo location. When selecting a user, you will be directed to the appropriate geo location for the user, where you will see their full profile details.

If Delve is turned off, you will see the classic profile experience in SharePoint, which is not multi-geo aware.


