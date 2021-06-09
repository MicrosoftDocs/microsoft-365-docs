---
title: "Settings interactions between Microsoft 365 Groups and SharePoint"
ms.reviewer: mmclean
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: "Learn about settings interactions between Microsoft 365 Groups and SharePoint"
---

# Settings interactions between Microsoft 365 Groups and SharePoint

Some settings for Microsoft 365 Groups and SharePoint in Microsoft 365, particularly related to sharing and group and team site creation, overlap with each other. This article provides descriptions of these interactions and best practices for how to work with these settings.

![Venn diagram of SharePoint, Yammer, and groups features](../media/groups-sharepoint-venn.png)

## The effects of SharePoint settings on Microsoft 365 groups

|SharePoint setting|Description|Effect on Microsoft 365 groups|Recommendation|
|:-----------------|:----------|:-----------------------------|:-------------|
|External sharing for organization and site|Determines if sites, files, and folders can be shared with people outside the organization.|If SharePoint and groups settings don't match, guests in the group may be blocked from accessing the site, or external access may be available in the site but not the group.|When changing sharing settings, check both Groups settings and SharePoint site settings for group-connected team sites.<br><br>See [Collaborate with guests in a site](./collaborate-in-site.md).|
|Domain allow/block|Allows or prevents content being shared with specified domains.|Groups does not recognize SharePoint allow or block lists. Users from domains disallowed in SharePoint could gain access to SharePoint through a group.|Manage domain allow/block lists for Azure AD and SharePoint together. Create an org-wide governance process for allowing and blocking domains.<br><br>See [SharePoint domain settings](/sharepoint/restricted-domains-sharing) and [Azure AD domain settings](/azure/active-directory/b2b/allow-deny-list)|
|Allow only users in specific security groups to share externally|Specifies security groups who can share sites, folders, and files externally.|This setting does not affect group owners sharing groups externally. Group guests have access to the associated SharePoint site.||
|SharePoint site sharing settings|Determines who can share the site directly outside of group membership. This is configured by the group or site owner.|This setting does not affect the group directly, but it can allow users to be added to a site and not have access to other group resources|Consider using this setting to limit sharing of the site directly and manage site access through the group.|
|Let users create sites from the SharePoint start page and OneDrive|Specifies if users can create new SharePoint sites.|If this setting is turned off, users can still create group-connected team sites by creating a group.||

## The effects of Microsoft 365 groups setting on SharePoint

|Microsoft 365 groups setting|Description|Effect on SharePoint|Recommendation|
|:---------------------------|:----------|:-------------------|:-------------|
|Naming policies|Specifies group name prefixes and suffixes, and blocked words for group creation|Policies are enforced for users creating group-connected team sites, but not communication sites or sites with other templates.|Create separate naming guidance for communication sites if needed.|
|Group guest access|Specifies if people outside the organization can be added to groups.|If SharePoint and groups settings don't match, guests in the group may be blocked from accessing the site, or external access may be available in the site but not the group.|When changing sharing settings, check both Groups settings and SharePoint site settings for group-connected team sites.<br><br>See [Collaborate with guests in a site](./collaborate-in-site.md)|
|Group creation by security group|Groups can only be created by members of a specific security group.|Users who are not members of the security group will not be able to create a group-connected team site.|Be sure your process for requesting a group includes instructions for requesting a site.|
|Group expiration policy|Specifies a time period after which groups that are not actively used will be automatically deleted.|When the group is deleted, the associated SharePoint site is also deleted. Content protected by retention policies is retained.|Use expiration policies to avoid sprawl of unused groups and sites.|

## Related topics

[Collaboration governance planning step-by-step](collaboration-governance-overview.md#collaboration-governance-planning-step-by-step)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Collaborating with people outside your organization](./collaborate-with-people-outside-your-organization.md)

[Manage site creation in SharePoint](/sharepoint/manage-site-creation)