---
title: Isolated SharePoint Online team sites
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/15/2017
audience: ITPro
ms.topic: overview

localization_priority: Priority
ms.collection: 
  - Ent_O365
  - Strat_O365_Enterprise
ms.custom: 
  - Ent_Solutions
  - seo-marvel-apr2020
ms.assetid: 71250a04-fd2d-4c3c-a32b-b8a838b19a54
description: Learn about isolated SharePoint Online team sites, including uses, requirements, and features they can be used with.
ms.technology: mdo
ms.prod: m365-security
---

# Isolated SharePoint Online team sites

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1](office-365-atp.md)
- SharePoint Online 

 **Summary:** Learn about the uses for isolated SharePoint Online team sites.

SharePoint Online team sites are an easy way to quickly create a space for collaboration. Users can work together on notes, documents, articles, a calendar, and other resources in Microsoft Office 365. SharePoint Online team sites are based on a Microsoft 365 group and have a simplified administration model to allow open collaboration with a private set of group members or the entire organization. A default SharePoint Online team site allows members of the Microsoft 365 group to invite other users and control permissions settings.

However, you'll sometimes need site access to be controlled by group memberships, and SharePoint Online permission levels managed by SharePoint administrators. We call this an isolated site, which is isolated to the set of users that are either collaborating, viewing its contents, or administering the site. You might need an isolated site for the following:

- A secret project within your organization.

- The location for highly-sensitive or valuable intellectual property for your organization.

- The resources for a legal action taken by your organization or that to which it is being subjected.

- To share a Microsoft 365 subscription between multiple organizations that have some overlap, but for the most part exist as separate business entities.

Here are the requirements of an isolated site:

- Only SharePoint Online administrators can perform site administration, which includes group membership for access to the site and configuring custom permissions.

- Members of the site cannot invite other members to the team site.

- Users who are not members of the isolated site cannot request access to the site. They will receive an access denied web page when they attempt to access any URL associated with the site.

The tradeoff of requiring centralized access control and custom permissions by SharePoint Online administrators is that the site remains isolated over time. For example, current members cannot, either intentionally or accidentally, invite or configure custom permissions for other users within the Microsoft 365 subscription who should not be members of the site.

An isolated site can be used with other features, such as:

- Information Rights Management to ensure that the resources on the site remain encrypted, even if they are downloaded locally and uploaded to another site that is available to the entire organization.

- Data loss prevention to prevent users from sending the resources of the site, such as files, in email.

## Next steps

To try out an isolated SharePoint Online team site in a trial subscription, see the step-by-step instructions in [Isolated SharePoint Online team site dev/test environment](isolated-sharepoint-online-team-site-dev-test-environment.md).

When you are ready to deploy an isolated SharePoint Online team site in production, see the step-by-step design considerations in [Design an isolated SharePoint Online team site](design-an-isolated-sharepoint-online-team-site.md).

## Related topics

[Design an isolated SharePoint Online team site](design-an-isolated-sharepoint-online-team-site.md)

[Manage an isolated SharePoint Online team site](manage-an-isolated-sharepoint-online-team-site.md)

[Deploy an isolated SharePoint Online team site](deploy-an-isolated-sharepoint-online-team-site.md)
