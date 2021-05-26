---
title: Configure Teams with three tiers of file sharing security
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- M365-security-compliance
- m365solution-securecollab
- m365solution-scenario
ms.custom:
- Ent_Architecture
- seo-marvel-jun2020
ms.assetid: 1d51bd87-17bf-457c-b698-61821de3afa0
recommendations: false
description: Learn how to configure Teams for better file sharing security using three tiers of protection, balancing security with ease of collaboration.
---

# Configure Teams with three tiers of protection

The articles in this series provide recommendations for configuring teams in Microsoft Teams and their associated SharePoint sites for file protection that balances security with ease of collaboration.

This article defines four different configurations, starting with a public team with the most open sharing policies. Each additional configuration represents a meaningful step up in protection, while the ability to access and collaborate on files stored within teams is reduced to the relevant set of team members. 

The configurations in this article align with Microsoft's recommendations for three tiers of protection for data, identities, and devices:

- Baseline protection

- sensitive protection

- Highly sensitive protection

For more information about these tiers and capabilities recommended for each tier, see [Microsoft cloud for enterprise architects illustrations](./cloud-architecture-models.md)


## Three tiers at a glance

The following table summarizes the configurations for each tier. Use these configurations as starting point recommendations and adjust the configurations to meet the needs of your organization. You may not need every tier.

|-|Baseline (Public)|Baseline (Private)|Sensitive|Highly sensitive|
|:-----|:-----|:-----|:-----|:-----|
|Private or public team|Public|Private|Private|Private|
|Who has access?|Everybody in the organization, including B2B users.|Only members of the team. Others can request access to the associated site.|Only members of the team.|Only members of the team.|
|Private channels|Owners and members can create private channels|Owners and members can create private channels|Only owners can create private channels|Only owners can create private channels|
|Site-level guest access|**New and existing guests** (default).|**New and existing guests** (default).|**New and existing guests** or **Only people in your organization** depending on team needs.|**New and existing guests** or **Only people in your organization** depending on team needs.|
|Site sharing settings|**Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**.|**Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**.|**Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**.|**Only site owners can share files, folders, and the site**.<br>Access requests **Off**.|
|Site-level unmanaged device access|**Full access from desktop apps, mobile apps, and the web** (default).|**Full access from desktop apps, mobile apps, and the web** (default).|**Allow limited, web-only access**.|**Block access**.|
|Default sharing link type|**Only people in your organization**|**Only people in your organization**|**Specific people**|**People with existing access**|
|Sensitivity labels|None|None|Sensitivity label used to classify the team and control guest sharing and unmanaged device access.|Sensitivity label used to classify the team and control guest sharing and unmanaged device access. Label can also be used on files to encrypt files.|

A variation of the Highly sensitive option, [Teams with security isolation](secure-teams-security-isolation.md) uses a unique sensitivity label for one team, which provides additional security. You can use this label to encrypt files, and only members of that team will be able to read them.

Baseline protection includes public and private teams. Public teams can be discovered and accessed by anybody in the organization. Private teams can only be discovered and accessed by members of the team. Both of these configurations restrict sharing of the associated SharePoint site to team owners to assist in permissions management.

Teams for sensitive and highly sensitive protection are private teams in which sharing and the requesting of access for the associated site is limited and sensitivity labels are used to set policies around guest sharing, device access, and content encryption.

## Sensitivity labels

The sensitive and highly sensitive tiers use sensitivity labels to help secure the team and its files. To implement these tiers, you must enable [sensitivity labels to protect content in Microsoft Teams, Office 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md).

While the baseline tier does not require sensitivity labels, consider creating a "general" label and then requiring that all teams be labeled. This will help ensure that users make a conscious choice about sensitivity when they create a team. If you plan to deploy the sensitive or highly sensitive tiers, we do recommend creating a "general" label that you can use for baseline teams and for files that are not sensitive.

If you're new to using sensitivity labels, we recommend reading [Get started with sensitivity labels](../compliance/get-started-with-sensitivity-labels.md) to get started. 

If you have already rolled out sensitivity labels in your organization, consider how the labels used in the sensitive and highly sensitive tiers fit with your overall label strategy. 

## Sharing the SharePoint site

Each team has an associated SharePoint site where documents are stored. (This is the **Files** tab in a teams channel.) The SharePoint site retains its own permission management, but is linked to team permissions. Team owners are included as site owners and team members are included as site members in the associated site.

The resulting permissions allow:

- Team owners to administer the site and have full control over the site contents.
- Team members to create and edit files on the site. 

By default, team owners and members can share the site itself with people outside the team without actually adding them to the team. We recommend against this as it complicates user management and can lead to people who are not team members having access to team files without team owners realizing it. To help prevent this, starting in the baseline level of protection, we recommend that only owners be allowed to share the site directly.

While teams do not have a read-only permission option, the SharePoint site does. If you have stakeholders of partner groups who need to be able to view team files but not edit them, consider adding them directly to the SharePoint site with Read permissions.

## Sharing files and folders

By default, both owners and members of the team can share files and folders with people outside the team. This may include people outside your organization, if you have allowed guest sharing. In all three tiers, we update the default sharing link type to help avoid accidental oversharing. In the highly sensitive tier, we restrict such sharing to team owners only.

## Guest sharing

If you need to collaborate with people outside your organization, we recommend configuring [SharePoint and OneDrive integration with Azure AD B2B](/sharepoint/sharepoint-azureb2b-integration-preview) for the best sharing and administration experience.

Teams guest sharing is off by default, though sharing for Office 365 groups (where team membership is stored) and SharePoint is on. We turn Teams sharing on in the baseline tier, and you can turn it off if needed in the sensitive and highly sensitive tiers by using a sensitivity label.

The sensitivity label only affects guest sharing for the team. Guest sharing settings for the associated SharePoint site are controlled separately, and we have you align the two settings for both the sensitive and highly sensitive tiers.

In the highly sensitive tier, we configure the sensitivity label to encrypt files to which it is applied. If you need guests to have access to these files, you must give them permissions when you create the label.

We highly recommend that you leave guest sharing on for the baseline tier and for the sensitive or highly sensitive tiers if you need to collaborate with people outside your organization. The guest sharing features in Microsoft 365 provide a much more secure and governable sharing experience than sending files as attachments in email messages. It also reduces the risk of shadow IT where users use ungoverned consumer products to share with legitimate external collaborators.

See the following references to create a secure and productive guest sharing environment for your organization:

- [Best practices for sharing files and folders with unauthenticated users](best-practices-anonymous-sharing.md)
- [Limit accidental exposure to files when sharing with people outside your organization](share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)

## Access from unmanaged devices

For the sensitive and highly sensitive tiers, we restrict access to SharePoint content with sensitivity labels. Azure AD conditional access offers many options for determining how people access Microsoft 365, including limitations based on location, risk, device compliance, and other factors. We recommend you read [What is Conditional Access?](/azure/active-directory/conditional-access/overview) and consider which additional policies might be appropriate for your organization.

Note that guests often don't have devices that are managed by your organization. If you allow guests in any of the tiers, consider what kinds of devices they'll be using to access teams and sites and set your unmanaged device policies accordingly.

### Control device access across Microsoft 365

The unmanaged devices setting in sensitivity labels only affect SharePoint access. If you want to expand control of unmanaged devices beyond SharePoint, you can [Create an Azure Active Directory conditional access policy for all apps and services in your organization](/azure/active-directory/conditional-access/howto-conditional-access-policy-compliant-device) instead. To configure this policy specifically for [Microsoft 365 services](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#office-365), select the **Office 365** cloud app under **Cloud apps or actions**.

![Screenshot of the Office 365 cloud app in an Azure Active Directory conditional access policy](/sharepoint/sharepointonline/media/azure-ca-office365-policy)

Using a policy that affects all Microsoft 365 services can lead to better security and a better experience for your users. For example, when you block access to unmanaged devices in SharePoint only, users can access the chat in a team with an unmanaged device, but will lose access when they try to access the **Files** tab. Using the Office 365 cloud app helps avoid issues with [service dependencies](/azure/active-directory/conditional-access/service-dependencies).

## Next step

Start by [configuring the baseline level of protection](configure-teams-baseline-protection.md). If needed you can add [sensitive protection](configure-teams-sensitive-protection.md) and [highly sensitive protection](configure-teams-highly-sensitive-protection.md) on top of the baseline.

## See also

[Security and compliance in Microsoft Teams](/microsoftteams/security-compliance-overview)

[Alert policies in the security and compliance center](../compliance/alert-policies.md)
