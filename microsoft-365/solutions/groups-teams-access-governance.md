---
title: "Governing access in Microsoft 365 groups, Teams, and SharePoint"
ms.reviewer: rahulnayak
ms.date: 07/28/2023
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: "Learn about governing access in Microsoft 365 groups, Teams, and SharePoint."
---

# Governing access in Microsoft 365 groups, Teams, and SharePoint

There are many controls that enable you to govern how people access resources in groups, teams, and SharePoint. Review these options and consider how they map to your business needs, the sensitivity of your data, and the scope of people that your users need to collaborate with.

The following table provides a quick reference for the access controls available in Microsoft 365. Further information is provided in the following sections.

|Category|Description|Reference|
|:-------|:----------|:--------|
|Membership|||
||Dynamic group membership based on rules|[Create or update a dynamic group in Microsoft Entra ID](/azure/active-directory/users-groups-roles/groups-create-rule)|
||Control who can share files, folders, and sites.|[Set up and manage access requests](https://support.microsoft.com/office/94b26e0b-2822-49d4-929a-8455698654b3)|
|Conditional access|||
||Multifactor authentication|[Microsoft Entra multifactor authentication](/azure/active-directory/authentication/concept-mfa-howitworks)|
||Control device access based on group, team, or site sensitivity.|[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)|
||Limit site access for unmanaged devices.|[Control SharePoint access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices)|
||Control site access based on location|[Control access to SharePoint and OneDrive data based on network location](/sharepoint/control-access-based-on-network-location)|
||Enforce more stringent access conditions when users access SharePoint sites.|[Conditional access policy for SharePoint sites and OneDrive](/sharepoint/authentication-context-example)|
|Guest access|||
||Allow or block SharePoint sharing from specified domains.|[Restrict sharing of SharePoint and OneDrive content by domain](/sharepoint/restricted-domains-sharing)|
||Allow or block team or group membership from specified domains.|[Allow or block invitations to B2B users from specific organizations](/azure/active-directory/b2b/allow-deny-list)|
||Prevent anonymous sharing.|[Turn off Anyone links](./share-limit-accidental-exposure.md#turn-off-anyone-links)|
||Control the permissions for anonymous access links.|[Set link permissions for Anyone links](./best-practices-anonymous-sharing.md#set-link-permissions)|
||Control the expiration of anonymous sharing links.|[Set an expiration date for Anyone links](./best-practices-anonymous-sharing.md#set-an-expiration-date-for-anyone-links)|
||Control the type of sharing link shown to users by default.|[Change the default link type for a site](/sharepoint/change-default-sharing-link)|
||Limit external sharing to specific people.|[Limit external sharing to specified security groups](./share-limit-accidental-exposure.md#limit-sharing-of-files-folders-and-sites-with-people-outside-your-organization-to-specified-security-groups)|
||Control guest access to a group, team, or site based on information sensitivity.|[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)|
||Turn off sharing options.|[Limit sharing in Microsoft 365](./microsoft-365-limit-sharing.md)|
|User management|||
||Review team and group membership regularly.|[What are Microsoft Entra access reviews?](/azure/active-directory/governance/access-reviews-overview)|
||Automate access management to groups and teams.|[What is Microsoft Entra entitlement management?](/azure/active-directory/governance/entitlement-management-overview)|
||Limit OneDrive access to members of a specific security group.|[Restrict OneDrive access by security group](/sharepoint/limit-access)|
||Restrict teams or site access to members of a group.|[Restrict SharePoint site access to members of a group](/sharepoint/restricted-access-control)|
|Information classification|||
||Classify groups and teams|[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)|
||Automatically classify sensitive content|[Apply a sensitivity label to content automatically](../compliance/apply-sensitivity-label-automatically.md)|
||Encrypt sensitive content|[Restrict access to content by using sensitivity labels to apply encryption](../compliance/encryption-sensitivity-labels.md)|
|User segmentation|||
||Restrict communication between user segments|[Information barriers](../compliance/information-barriers.md)|
|Data residency|||
||Store data in specific geo-locations|[Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)|

## Membership

You can manage membership of a group or team dynamically based on some criteria, such as department. In this case, members and owners can't invite people to the team. Dynamic groups use metadata that you define in Microsoft Entra ID to control who is a member of the group. Be sure the metadata that you're using is complete and up to date as incorrect metadata can lead to users being left out of groups or incorrect users being added.

- [Create or update a dynamic group in Microsoft Entra ID](/azure/active-directory/users-groups-roles/groups-create-rule)

SharePoint sites provide the ability to add owners, members, and visitors apart from group or team membership. Depending on your requirements, you may want to restrict who can invite people to the site. Also, depending on the sensitivity of the information in a given site, you may want to restrict who can share files and folder. These restrictions are configured by the team, group, or site owner:

- [Set up and manage access requests](https://support.microsoft.com/office/94b26e0b-2822-49d4-929a-8455698654b3)


## Conditional access

With Microsoft 365, you can require multifactor authentication for both people inside and outside your organization. There are many options for the circumstances when people are prompted for a second factor of authentication. We highly recommend that you deploy multifactor authentication for your organization:

- [Microsoft Entra multifactor authentication](/azure/active-directory/authentication/concept-mfa-howitworks)

If you have sensitive information in some of your groups and teams, you can enforce device management policies based on a group or team's sensitivity label. You can block access entirely from unmanaged devices, or allow limited, web only access:

- [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)

In SharePoint, you can restrict access to sites from specified network locations.

- [Control access to SharePoint and OneDrive data based on network location](/sharepoint/control-access-based-on-network-location)


Additional resources:

- [Plan a Conditional Access deployment](/azure/active-directory/conditional-access/plan-conditional-access)

- [Microsoft Intune overview](/mem/intune/fundamentals/what-is-intune)

- [Control SharePoint access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices)


## Guest access

You can restrict guests based on the domain of their email address. SharePoint offers organization-wide and site-specific domain restriction settings. Groups and Teams use the domain allowlists or blocklists in Microsoft Entra ID. Be sure to configure both settings to avoid unwanted sharing and ensure a consistent user experience:

- [Restrict sharing of SharePoint and OneDrive content by domain](/sharepoint/restricted-domains-sharing)

- [Allow or block invitations to B2B users from specific organizations](/azure/active-directory/b2b/allow-deny-list)

Microsoft 365 allows anonymous sharing of files and folders by using *Anyone* sharing links. *Anyone* links can be forwarded and anyone with the link can access the shared item. Depending on the sensitivity of your data, consider governing how *Anyone* links are used - including turning them off entirely, restricting link permissions to read-only, or setting an expiration time for them:

- [Turn off Anyone links](./share-limit-accidental-exposure.md#turn-off-anyone-links)

- [Set link permissions for Anyone links](./best-practices-anonymous-sharing.md#set-link-permissions)

- [Set an expiration date for Anyone links](./best-practices-anonymous-sharing.md#set-an-expiration-date-for-anyone-links)

When sharing files or folders, users have several link types to choose from. To reduce the risk of accidental inappropriate sharing, you can change the default link type presented to users when they share. For example, changing the default from *Anyone* links - which allow anonymous access - to *People in your organization* links can reduce the risk of unwanted external sharing of sensitive information:

- [Change the default link type for a site](/sharepoint/change-default-sharing-link)

If your organization has sensitive data that you need to share with guests, but you're concerned about inappropriate sharing, you can limit external sharing of files and folders to the members of specified security groups. In this way, you can restrict sharing externally to a specific group of people, or require your users to take training around appropriate external sharing before adding them to the security group:

- [Limit external sharing to specified security groups](./share-limit-accidental-exposure.md#limit-sharing-of-files-folders-and-sites-with-people-outside-your-organization-to-specified-security-groups)

Groups and Teams have organization-level settings that allow or deny guest access. While you can [restrict guest access to specific teams or groups by using Microsoft PowerShell](per-group-guest-access.md), we recommend doing this by means of a sensitivity label. With sensitivity labels you can automatically allow or deny guest access based on the label applied:

- [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)

In an environment where you frequently invite guests to groups and teams, consider setting up regularly scheduled guest access reviews. Owners can be prompted to review guests in their groups and teams and approve or deny access.

- [Set up guest access reviews](/microsoft-365/solutions/create-secure-guest-sharing-environment#set-up-guest-access-reviews)

Microsoft 365 offers many different methods of sharing information. If you have sensitive information and you want to restrict how it's shared, review the options for limiting sharing:

- [Limit sharing in Microsoft 365](./microsoft-365-limit-sharing.md)

Additional resources:

- [Set up secure collaboration with Microsoft 365](./setup-secure-collaboration-with-teams.md)

- [Best practices for sharing files and folders with unauthenticated users](./best-practices-anonymous-sharing.md)

- [Limit accidental exposure to files when sharing with people outside your organization](./share-limit-accidental-exposure.md)

- [Create a more secure guest sharing environment](./create-secure-guest-sharing-environment.md)

- [Enable B2B external collaboration and manage who can invite guests](/azure/active-directory/b2b/delegate-invitations)

## User management

As groups and teams evolve in your organization, a good practice is to review team and group membership on a regular basis. This may be particularly useful for teams and groups with a changing membership, those that contain sensitive information, or those that include guests. Consider setting up access reviews for these teams and groups:

- [What are Microsoft Entra access reviews?](/azure/active-directory/governance/access-reviews-overview)

Many organizations have business partnerships with other organizations or key vendors with whom they collaborate in depth. User management and access to resources can be challenging to manage in these scenarios. Consider automating some of the user management tasks and even transitioning some of them to your partner organization:

- [What is Microsoft Entra entitlement management?](/azure/active-directory/governance/entitlement-management-overview)

Private channels in Teams allow for scoped conversations and file sharing between a subset of team members. Depending on your specific business needs, you may want to allow or block this capability.

- [Private channels in Microsoft Teams](/MicrosoftTeams/private-channels)

Shared channels allow you to invite people who are outside the team or outside the organization. Depending on your specific business needs and external sharing policies, you may want to allow or block this capability.

- [Shared channels in Microsoft Teams](/MicrosoftTeams/shared-channels)

OneDrive provides an easy way for users to store and share content that they're working on. Depending on your business needs, you may want to restrict access to this content to full-time company employees or other groups within the company. If so, you can limit access to OneDrive content to members of a security group.

- [Restrict OneDrive access by security group](/sharepoint/limit-access)

For some more sensitive teams or sites, you might want to limit access to team or site content to members of the team or to members of a security group.

- [Restrict SharePoint site access to members of a group](/sharepoint/restricted-access-control)

Additional resources:

- [Microsoft Entra ID Governance](/azure/active-directory/governance)

## Information classification

You can use sensitivity labels to govern guest access, group and team privacy, and access by unmanaged devices for groups and teams. When a user applies the label, these settings are automatically configured as specified by the label settings.

- [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md)

You can configure Microsoft 365 to auto-apply sensitivity labels to files and emails based on the criteria that you specify, including detecting sensitive information types or pattern matching with trainable classifiers.

- [Apply a sensitivity label to content automatically](../compliance/apply-sensitivity-label-automatically.md)

You can use sensitivity labels to encrypt files, allowing only those with permissions to decrypt and read them.

- [Restrict access to content by using sensitivity labels to apply encryption](../compliance/encryption-sensitivity-labels.md)

Additional resources:

- [Learn about sensitivity labels](../compliance/sensitivity-labels.md)

## User segmentation

With information barriers, you can segment your data and users to restrict unwanted communication and collaboration between groups and avoid conflicts of interest in your organization. Information barriers let you create policies to allow or prevent file collaboration, chatting, calling, or meeting invitations between groups of people in your organization.

- [Information barriers](../compliance/information-barriers.md)

- [Information barriers in Microsoft Teams](/microsoftteams/information-barriers-in-teams)

- [Use information barriers with SharePoint](/sharepoint/information-barriers)

## Data residency

With Microsoft 365 Multi-Geo, you can provision and store data at rest in the geo locations that you've chosen to meet data residency requirements. In a Multi-Geo environment, your Microsoft 365 tenant consists of a central location (where your Microsoft 365 subscription was originally provisioned) and one or more satellite locations where you can store data.

- [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo)

- [Plan for Microsoft 365 Multi-Geo](/microsoft-365/enterprise/plan-for-multi-geo)

## Related topics

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Security and compliance in Microsoft Teams](/microsoftteams/security-compliance-overview)

[Manage sharing settings in SharePoint](/sharepoint/turn-external-sharing-on-or-off)

[Configure Teams with three tiers of protection](./configure-teams-three-tiers-protection.md)
