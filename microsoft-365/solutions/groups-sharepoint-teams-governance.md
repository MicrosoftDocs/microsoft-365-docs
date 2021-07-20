---
title: "Settings interactions between Microsoft 365 Groups, Teams and SharePoint"
ms.reviewer: 
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
description: "Learn about settings interactions between Microsoft 365 Groups, Teams and SharePoint"
---

# Settings interactions between Microsoft 365 Groups, Teams and SharePoint

Some settings for Microsoft 365 Groups, Microsoft Teams, and SharePoint in Microsoft 365, particularly related to sharing and group/team and SharePoint site creation, overlap with each other. This article provides descriptions of these interactions and best practices for how to work with these settings.

![Venn diagram of SharePoint, Teams, and groups features](../media/teams-groups-sharepoint-venn.png)

## The effects of SharePoint settings on groups and teams

|SharePoint setting|Description|Effect on Microsoft 365 groups and Teams|Recommendation|
|:-----------------|:----------|:---------------------------------------|:-------------|
|External sharing for organization and site|Determines if sites, files, and folders can be shared with people outside the organization.|If SharePoint, groups, and Teams settings don't match, guests in the team may be blocked from accessing the site, or unexpected external access may occur.|When changing sharing settings, check Groups settings, Teams settings, and SharePoint site settings for group-connected team sites.<br><br> See [Collaborate with guests in a team](./collaborate-as-team.md)|
|Domain allow/block|Allows or prevents content being shared with specified domains.|Groups and Teams do not recognize SharePoint allow or block lists. Users from domains disallowed in SharePoint could gain access to SharePoint sites or content through a team.|Manage domain allow/block lists for Azure AD and SharePoint together. Create an org-wide governance process for allowing and blocking domains.<br><br>See [SharePoint domain settings](/sharepoint/restricted-domains-sharing) and [Azure AD domain settings](/azure/active-directory/b2b/allow-deny-list)|
|Allow only users in specific security groups to share externally|Specifies security groups who can share SharePoint sites, folders, and files externally.|This setting does not prevent team owners from sharing teams externally. Team guests have access to the associated SharePoint site.||
|SharePoint site sharing settings|Determines who can share the site directly outside of team membership. This is configured by the team or site owner.|This setting does not affect the team directly, but it can allow users to be added to a site and not have access to the team itself or other Teams resources|Consider using this setting to limit sharing of the site directly and manage site access through the team.|
|Let users create sites from the SharePoint start page and OneDrive|Specifies if users can create new SharePoint sites.|If this setting is turned off, users can still create group-connected team sites by creating a team.||

## The effects of groups settings on teams

|Microsoft 365 groups setting|Description|Effect on Teams|Recommendation|
|:---------------------------|:----------|:--------------|:-------------|
|Naming policies|Specifies group name prefixes and suffixes, and blocked words for group creation|Policies are enforced for users creating teams.||
|Group guest access|Specifies if people outside the organization can be added to groups.|If either the groups or Teams guest sharing settings are off, the team cannot be shared with guests.|When changing guest sharing settings, check the settings for Teams, Groups, and the SharePoint site associated with the team.<br><br> See [Collaborate with guests in a team](./collaborate-as-team.md)|
|Group creation by security group|Groups can only be created by members of a specific security group.|Users who are not members of the security group will not be able to create a team.|Be sure your process for requesting a group includes instructions for requesting a team or a SharePoint site.|
|Group expiration policy|Specifies a time period after which groups that are not actively used will be automatically deleted.|When the group is deleted, the team and associated SharePoint site are also deleted. Content protected by retention policies is retained.|Use expiration policies to avoid sprawl of unused teams, groups and sites.|

## Related topics

[Collaboration governance planning step-by-step](collaboration-governance-overview.md#collaboration-governance-planning-step-by-step)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Collaborating with people outside your organization](./collaborate-with-people-outside-your-organization.md)

[Manage site creation in SharePoint](/sharepoint/manage-site-creation)