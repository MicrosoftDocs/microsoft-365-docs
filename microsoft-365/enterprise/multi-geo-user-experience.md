---
title: "User experience in a multi-geo environment"
ms.reviewer:
ms.date: 02/14/2025
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
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

Here's what your users see in a OneDrive Multi-Geo configuration:

## Exchange Online mailbox

A user's Exchange Online mailbox is provisioned to their preferred data location, and is automatically relocated if their PDL changes. Users can use Outlook and Outlook on the web normally with no change in user experience in a Multi-Geo environment.

## Hub sites

SharePoint Hub sites enhance the discovery and engagement with content for employees, while creating a complete and consistent representation of projects, departments or regions. In a Multi-Geo environment, sites from satellite locations can easily be associated with a hub site regardless the hub site's _Geography_ location. Users can search and get results across the hub through a single search experience, regardless of the geo location of the sites.

## Microsoft 365 app launcher

The app launcher is multi-geo aware and will direct each tile to the appropriate geo location of the workload. The SharePoint and OneDrive tiles point the user to the location corresponding to the user's provisioned geo location. This means that if the user has a OneDrive in the central location, their SharePoint tile points them to SP Home in the central location but their group site will be provisioned in the location corresponding to their PDL. 

## Office applications

Office applications such as Microsoft Word, Excel, and PowerPoint will automatically detect the correct OneDrive geo-location for each user when they sign in. Users don't need to enter the geo-specific URL for their OneDrive or SharePoint sites.

## OneDrive sync app

The OneDrive sync app (version 17.3.6943.0625 and later) will automatically detect the correct OneDrive _Geography_ location for the user. Sync app support includes the ability to sync groups-based sites regardless of their _Geography_ location. The Groove sync client isn't supported for Multi-Geo. 

## OneDrive location

Users have their OneDrive provisioned in their preferred data location. If a user navigates to a OneDrive URL that contains an incorrect _Geography_ location (such as a bookmark from a previous geo location), they're automatically redirected to the OneDrive in the appropriate geo location.

## OneDrive iOS and Android 

The OneDrive iOS and Android mobile apps show you your OneDrive files and files shared with you regardless of their _Geography_ location. Searches from the OneDrive mobile apps show relevant results from all _Geography_ locations. Download the latest version of these apps.

For more information, see [Use OneDrive on iOS](https://support.office.com/article/08d5c5b2-ccc6-40eb-a244-fe3597a3c247) and [Use OneDrive for Android](https://support.office.com/article/eee1d31c-792d-41d4-8132-f9621b39eb36) for more information.

## OneDrive mobile client

The OneDrive mobile client is Multi-Geo aware and will display pertinent content and results from all _Geography_ locations.

## Search

Each _Geography_ location has its own search index and Search Center. When a user searches, the query is sent to all the _Geography_ locations, and the returned results are merged and then ranked so the user gets unified results. Users get results from all _Geography_ locations regardless of their own _Geography_ location. See [Configure Search for OneDrive Multi-Geo](configure-search-for-multi-geo.md) for specifics.

The following search clients are supported:

-   OneDrive

-   Office Delve

-   SharePoint Home

-   The Search Center

-   Custom search applications that use the SharePoint Search API

## SharePoint Home 

In SharePoint Multi-Geo, your SharePoint home is hosted in the location where the user resides as determined by their OneDrive location. For example: if the user has their OneDrive hosted in a European satellite location, their SharePoint Home is rendered from Europe. SharePoint home includes all content relevant to the user regardless of its _Geography_ location. 

**Followed Sites, News from Sites, Recent Sites, Frequent Sites, and Suggested sites**

All of these components show up for the user regardless of the _Geography_ location where the content is hosted, so long as the user has permissions to said content. 

**Featured Links**

Admins can configure Featured links in SharePoint home as appropriate to each _Geography_ location. This allows the admin to feature in the SP Home for each region the links that are appropriate for users in the region. 

## SharePoint mobile client

The SharePoint mobile client is multi-geo aware and will display pertinent content and results from all geo locations.

## Sharing

The people picker experience shows all users regardless of their _Geography_ location. This allows a user to share with another user in their same geo or in any other of your _Tenant's_ _Geography_ locations. Content from different _Geography_ locations shows up in the **Shared with Me** view in the user's OneDrive, Word, Excel, PowerPoint, and Office.com and can be accessed with single sign-On experience regardless of which _Geography_ location it's hosted in.

## Microsoft Teams experience

Microsoft Teams is a Multi-Geo service. OneDrive files and recently viewed files are shown regardless of the user's _Geography_ location. @ mentions work with users from all _Geography_ locations.

## Microsoft 365 Person experience

The **Microsoft 365 Person** encompasses the complete set of properties, attributes and associated people contacts that are representative of a user in the Microsoft 365 tenant. The Microsoft 365 Person dataset is mastered and stored in the Primary Data Location of the user.

There are two constituents of the Microsoft 365 Person data:

- Microsoft 365 Profile ([profile resource type](/graph/api/resources/profile?view=graph-rest-beta&preserve-view=true)), which constitutes the information that can be viewed by other users within the tenant about the Microsoft 365 person. This includes the user's Microsoft Entra ID details along with other information like position and photo ([Get profilePhoto](https://aka.ms/profileimage)). The fields and attributes that are exposed can be controlled by the tenant admin ([Add or remove custom attributes on a profile card using the profile card API](/graph/add-properties-profilecard)).

- My Microsoft 365 People dataset ([contact resource type](/graph/api/resources/contact?view=graph-rest-1.0&preserve-view=true)), which represents the list of the user's Microsoft 365 contacts along with the user’s version of their contacts' Microsoft 365 profile. This edited or unedited version of another user’s profile will always remain private in the current user’s mailbox and won't be replicated anywhere.

To enable discovery, organizational structure exploration, rich people search, and full fidelity collaboration experiences, the Global Address List (GAL) and the Microsoft 365 Profile of users in the tenant is replicated and kept in sync across geos both when a Multi-Geo tenant is first set up and in response to certain user actions. Examples of user actions include direct and indirect interactions with one or more users in the tenant via activities like becoming part of the Organization, creating and/or joining Teams meetings, sharing and/or co-editing files, profile card lookup, and adding of contacts as described in [Add, find, edit, or delete a contact in Outlook](https://support.microsoft.com/office/add-find-edit-or-delete-a-contact-in-outlook-e1dc4548-3bd6-4644-aecd-47b5728f7b0d#:~:text=information%20any%20time.-,Select%20the%20contact%20from%20the%20list%2C%20then%20select%20Edit%20contact,and%20begin%20adding%20more%20information.&text=someone's%20profile%20card-,In%20Mail%2C%20open%20an%20email%20message%20in%20the%20reading%20pane,card%2C%20select%20Add%20to%20contacts.). 

In addition to the central GAL, replicated Microsoft 365 Profiles of other users from an interaction or collaboration are stored in the Microsoft 365 People dataset of the target user's mailbox.

## Search and Collaboration Experience  

The Multi-Geo SKU supports full fidelity search and collaboration experiences across all key content types in Exchange Online Mailbox (email, calendar), SharePoint and OneDrive Files, Microsoft Connectors and so forth.  

When users interact directly or indirectly with content they have access to, the activities performed on the content (such as edits, permission updates, mentions) and the associated content updates are copied into respective associated stores and kept in sync, across geos where required. Examples of content include: 

- User-owned and Shared documents  
- Tenant owned content like company-wide SharePoint site and company published files.  

The seamless synchronization of the file content and associated updates of the content and access modifications allows users to collaborate on the latest version across geographies. It ensures that search and other M365 experiences like My Content in M365, Recently Opened or Shared in various applications, always reflect the latest version of the file and associated user activities. Access to the file is guarded by the source file content access controls. 

An individual user’s personal interactions which include pinning documents, marking as favorites, following sites and Copilot prompts and responses with an item are not shared with others and remain private. Both admins and users can configure their search capabilities by using the article [Configure Search for OneDrive Multi-Geo](configure-search-for-multi-geo.md).
