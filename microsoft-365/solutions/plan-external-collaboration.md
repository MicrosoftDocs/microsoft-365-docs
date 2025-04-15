---
title: Plan external collaboration with channel conversations, file collaboration, and shared apps
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.reviewer: jasonlewis
ms.date: 12/13/2023
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
ms.localizationpriority: medium
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

- **Microsoft Entra B2B collaboration** – A feature that allows users to share files, folders, sites, groups, and teams with people from outside your organization. These people access shared resources by using guest accounts in your directory.
- **Microsoft Entra B2B direct connect** – A feature that allows users to share resources in your organization with people from other Microsoft Entra organizations. These people access the shared resources by using their own work or school account. No guest account is created in your organization.
- **External participant** – A person from outside your organization who is participating in a resource – such as a shared channel – using their own identity and not a guest account in your directory.
- **External organization** – Another organization that you're sharing resources with.
- **Guest** – A person from outside your organization who accesses shared resources by signing in to a guest account in your directory.
- **Host organization** – The organization that is hosting a shared resource, such as a shared channel.
- **Shared channel** – A Teams channel that can be shared with people outside the team. These people can be inside your organization or from other Microsoft Entra organizations.
- **Sharing links** – Links with permissions to a file or folder that are used to share that file or folder with others. The people being shared with can be inside or outside your organization.

## Options for collaboration in a team

When collaborating in a team with people outside your organization, there are two options for how those people access the resources that you share with them.

### Guest sharing

Guest sharing uses Microsoft Entra B2B collaboration to allow sharing and collaboration with people outside your organization by adding a guest account in Microsoft Entra ID for each person. Guest accounts can be used for the following:

- Guest membership in teams, SharePoint sites, and Microsoft 365 groups
- Individual file and folder sharing

Guests in a team have similar capabilities to regular team members.

### External participants in shared channels

External participants access shared resources in your organization by using their own Microsoft Entra ID or Microsoft 365 identity. This is enabled by Microsoft Entra B2B direct connect through an organizational relationship configured by both organizations. Guest accounts aren't used in this relationship.

The primary advantage of external participants in shared channels versus guest sharing is that people outside your organization can collaborate with your users in Teams without having to change their user context. When using guest accounts, users must add those accounts separately in Teams and switch to those accounts in order to interact with people in your organization.

With shared channels, users can remain signed in to their organization and access channels shared with them from other organizations. Shared channels from other organizations are available in Teams alongside the teams and channels in your organization. There's no need to switch organizations.

## Feature comparison

The following table describes the experiences available depending on the type of account used.

|Feature|User (your organization)|Guest (Microsoft Entra collaboration)|External participant (Microsoft Entra ID direct connect)|
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

You must use guest sharing if:

- You want to invite people from outside your organization to the team rather than individual channels
- You want to share files or folders in a channel with people outside your organization who aren't in the channel
- You want to collaborate with people outside your organization who don't have a work or school account.

While shared channels is turned on by default in Teams, external collaboration with shared channels requires that a Microsoft Entra administrator set up cross-tenant access between your organization and each other organization with which you want to share. Each other organization must set up cross-tenant access on their end as well.

If you plan to use shared channels with other organizations, you can choose between a self-service model and a by-request model.

- Self-service – You can configure cross-tenant access to allow inbound and outbound access to all other Microsoft Entra organizations. Alternatively, you can block a list of organizations that you don't want your users to share with, leaving all other organizations available. This allows your users to invite people outside the organization to participate in shared channels without having to contact your helpdesk or IT department.
- By-request – You can configure cross-tenant access for each individual organization with which you want to allow shared channels. When choosing this model, it's important to have a documented business process that your users can follow to request cross-tenant access with another organization.

## Compliance in shared channels

Shared channels are integrated with Microsoft Entra and Microsoft Purview features. For details, see [Shared channels in Microsoft Teams](/MicrosoftTeams/shared-channels#compliance-in-shared-channels).

## Related articles

[Intro to file collaboration in Microsoft 365](/sharepoint/intro-to-file-collaboration)

[Plan file collaboration in SharePoint with Microsoft 365](/sharepoint/deploy-file-collaboration)
