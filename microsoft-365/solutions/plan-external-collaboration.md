---
title: "Plan external collaboration with channel conversations, file collaboration, and shared apps"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 03/10/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection:
- highpri
- Tier1
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.custom:
- seo-marvel-apr2020
- seo-marvel-jun2020
localization_priority: Normal
f1.keywords: NOCSH
recommendations: false
description: Learn the difference between guest collaboration and shared channels in Teams and how to choose which one to use.
---

# Plan external collaboration with channel conversations, file collaboration, and shared apps

Microsoft 365 offers several options for collaborating with people outside your organization:

- 1:1 and group chat in Teams with people outside your organization
- Teams meetings with people outside your organization
- Sharing individual files or folders with people outside your organization
- Collaboration in a team, with channel conversations, file collaboration, and shared apps

This article covers the fourth option, group collaboration with channel conversations, file collaboration, and shared apps. (For an overview of all the options, see [Overview of external collaboration options in Microsoft 365](/microsoft-365/enterprise/external-guest-access).)

## Terms

- **Azure AD B2B collaboration** – A feature that allows users to share files, folders, sites, groups, and teams with people from outside your organization. These people access shared resources by using guest accounts in your directory.
- **Azure AD B2B direct connect** – A feature that allows users to share resources in your organization with people from other Azure AD organizations. These people access the shared resources by using their own work or school account. No guest account is created in your organization.
- **External participant** – A person from outside your organization who is participating in a resource – such as a shared channel – using their own identity and not a guest account in your directory.
- **External organization** – Another organization that you are sharing resources with.
- **Guest** – A person from outside your organization who accesses shared resources by signing in to a guest account in your directory.
- **Host organization** – The organization that is hosting a shared resource, such as a shared channel.
- **Shared channel** – A Teams channel that can be shared with people outside the team. These people can be inside your organization or from other Azure AD organizations.
- **Sharing links** – Links with permissions to a file or folder that are used to share that file or folder with others. The people being shared with can be inside or outside your organization.

## Options for collaboration in a team

When collaborating in a team with people outside your organization, there are two options for how those people access the resources that you share with them.

### Guest sharing

Guest sharing uses Azure AD B2B collaboration to allow sharing and collaboration with people outside your organization by adding a guest account in Azure AD for each person. Guest accounts can be used for the following:

- Guest membership in teams, SharePoint sites, and Microsoft 365 groups
- Individual file and folder sharing

Guests in a team have similar capabilities to regular team members.

### External participants in shared channels

External participants access shared resources in your organization by using their own Azure AD or Microsoft 365 identity. This is enabled by Azure AD B2B direct connect through an organizational relationship configured by both organizations. Guest accounts are not used in this relationship.

The primary advantage of external participants in shared channels versus guest sharing is that people outside your organization can collaborate with your users in Teams without having to change their user context. When using guest accounts, users must sign out of Teams with their work or school account and sign in again using the guest account. Alternatively, they can have a separate copy of Teams running in a private browser session. This switching between organizations takes time and can cause users to miss important communications while signed out of a given organization.

With shared channels, users can remain signed in to their organization and access channels shared with them from other organizations. Shared channels from other organizations are available in Teams alongside the teams and channels in your organization. There is no need to switch organizations.

## Feature comparison

The following table describes the experiences available depending on the type of account used.

|Feature|User (your organization)|Guest (Azure AD collaboration)|External participant (Azure AD direct connect)|
|:-----|:-----|:------|:-------|
|Team access|Y|Y|N|
|Shared channel access|Y|N|Y|
|Permissions through file sharing links|Y|Y|N|
|Use shared channels|Y|N|Y|
|Use private channels|Y|Y|N|
|Account in your directory|Y|Y|N|
|Access reviews|Y|Y|Y|

## Planning considerations

Most organizations will use both guest sharing and shared channels with external participants.

Guest sharing is enabled by default in Azure AD and in Microsoft 365 (Teams, Microsoft 365 Groups, and SharePoint). This allows users to invite guests to teams and sites and to share files with them without having to request assistance from IT.

You must use guest sharing if:

- You want to invite people from outside your organization to the team rather than individual channels
- You want to share files or folders in a channel with people outside your organization who are not in the channel
- You want to collaborate with people outside your organization who do not have a work or school account.

While shared channels is turned on by default in Teams, external collaboration with shared channels requires that an Azure AD administrator set up cross-tenant access between your organization and each other organization with which you want to share. Each other organization must set up cross-tenant access on their end as well.

If you plan to use shared channels with other organizations, you can choose between a self-service model and a by-request model.

- Self-service – You can configure cross-tenant access to allow inbound and outbound access to all other Azure AD organizations. Alternatively, you can block a list of organizations that you don't want your users to share with, leaving all other organizations available. This allows your users to invite people outside the organization to participate in shared channels without having to contact your helpdesk or IT department.
- By-request – You can configure cross-tenant access for each individual organization with which you want to allow shared channels. When choosing this model, it's important to have a documented business process that your users can follow to request cross-tenant access with another organization.

## Compliance in shared channels

Shared channels are integrated with Microsoft Purview features.

### Communications compliance

Admins can set policies to monitor content for all users in the channel. All messages content in channels, including shared channels, is covered by [communication compliance policies](/microsoft-365/compliance/communication-compliance). Shared channels inherit the policy of the host organization.

### Conditional access

Supported [conditional access policies](/azure/active-directory/conditional-access/overview) from the host organization can be applied to B2B direct connect users. (The external organization's policies are not used.) The following types of conditional access policies are supported with shared channels:

- Policies that are scoped to **All guest and external users**, and the **Office 365 SharePoint Online** cloud app.
- Grant Access controls that require MFA, a compliant device, or a hybrid Azure AD joined device.

IP-based policies are supported at the SharePoint file level. So an external participant could access shared channel from a restricted location, but be blocked when trying to open a file.

For more information about conditional access for external identities, see [Authentication and Conditional Access for External Identities](/azure/active-directory/external-identities/authentication-conditional-access).

### Data loss prevention (DLP)

Admins can apply [Microsoft Purview DLP policies](/microsoft-365/compliance/dlp-policy-design) to a team where all channels, including shared channels, inherit the policy. Shared channels inherit the policy of the host organization.

### Retention policy

Admins can apply a [retention policy](/microsoft-365/compliance/retention) on a team where all channels, including shared channels, inherit the retention policy. Shared channels inherit the policy of the parent team.

### Sensitivity labels

[Sensitivity labels](/microsoft-365/compliance/sensitivity-labels) available in the host organization are the only labels that can be applied to the documents in a shared channel site. A file that is encrypted by a sensitivity label cannot be opened by external participants unless permissions are granted. Automatic labeling is not used.

Shared channels and their associated SharePoint sites inherit the label from the parent team.

### Information barriers

Users who are not allowed to communicate per [information barrier](/microsoftteams/information-barriers-in-teams) policies can't be part of shared channel. Information barrier policies are only effective for users in the host organization. If users are external participants in another organization's shared channel, information barrier policies don't apply.

### eDiscovery

Admins can perform searches for all users in the channel. All channels, including the shared channel, are discoverable. All message data in the channel regardless of who added the data is discoverable by the compliance admin.

### Legal hold

Admins can place channel-only members from the host organization who are not a part of the team on hold. They can also [place the entire team on hold](/MicrosoftTeams/legal-hold). Admins cannot place an external participant on hold.

### Audit logs

All the actions performed for [existing audit events](/microsoft-365/compliance/detailed-properties-in-the-office-365-audit-log) are audited in shared channels.

## Related topics

[Intro to file collaboration in Microsoft 365](/sharepoint/intro-to-file-collaboration)

[Plan file collaboration in SharePoint with Microsoft 365](/sharepoint/deploy-file-collaboration)
