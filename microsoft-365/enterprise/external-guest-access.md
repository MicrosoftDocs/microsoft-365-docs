---
title: IT Admins - Overview of external collaboration options in Microsoft 365
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 01/17/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
f1.keywords:
- NOCSH
ms.custom: 
ms.collection: 
- SPO_Content
ms.localizationpriority: medium
description: Learn about how people outside your organization can access your Microsoft 365 resources for meetings, guest sharing, chat, and collaboration.
---

# IT Admins - Overview of external collaboration options in Microsoft 365

With Microsoft 365, your users can collaborate with people outside your organization in a variety of ways. Users can share files, invite guests to teams, have meetings with external participants, and chat with people from other organizations. This article covers the external collaboration options available and links to the content you need to configure each.

The following table shows the primary ways people from outside your organization can access your Microsoft 365 resources:

|Activity|Account type|Default setting|
|:-------|:-----------|:--------------|
|Authenticated file and folder sharing|Guest account|Enabled|
|Site sharing|Guest account|Enabled|
|Team sharing|Guest account|Enabled|
|Cross-cloud sharing|Guest account|Disabled|
|Multitenant organization sharing|Guest account|Disabled|
|Shared channel in Teams|Existing Microsoft 365 external account|Disabled|
|External chat and meetings|Existing Microsoft 365 external account|Enabled|
|Cross-cloud meetings|Existing Microsoft 365 external account|Disabled|
|Anonymous meeting join|None|Enabled|
|Unauthenticated file and folder sharing|None|Enabled|

People outside your organization don't have access unless a user in your organization initiates one of these activities. You can disable any of these settings if you don't want to allow that activity in your organization.

If you have business processes or requirements around allowing collaboration with external organizations, see [Onboard trusted vendors to collaborate in Microsoft 365](/microsoft-365/solutions/trusted-vendor-onboarding).

## Document, site, and team sharing with guest accounts

Sharing documents, sites, and teams with people outside your organization uses *guest accounts*. Guest accounts are a type of account in Microsoft Entra ID that is managed through [Microsoft Entra B2B collaboration](/entra/external-id/what-is-b2b). They can be used to share resources in your organization with anyone who has an email address, including people in [other Microsoft 365 cloud environments](#cross-cloud-sharing-and-meetings). You can manage guest accounts the same way you manage users in your organization. Guests don't require a license for most features of collaboration.

Guests can only access resources that you specifically share with them.

If the guest has a work or school account in another organization, or a Microsoft account, they can log in with their regular username and password. If they have a different type of account - such as a Gmail account - they can log in by using a one-time passcode that is sent to their email address.

With guests you can:

- Invite them to Microsoft 365 groups, teams, or SharePoint sites where they can collaborate with people in your organization.
- Share a single file or a folder with them which they can view or edit depending on the permissions you give them.

For information about how to plan for collaboration with guests in Microsoft 365, see the following references:

- [Plan external collaboration](/microsoft-365/solutions/plan-external-collaboration)

- [Set up secure file sharing and collaboration with Microsoft Teams](/microsoft-365/solutions/setup-secure-collaboration-with-teams)

For information about how to set up Microsoft 365 for collaboration with guests, see the following references:

- [Collaborate with guests on a document](/microsoft-365/solutions/collaborate-on-documents)

- [Collaborate with guests in a site](/microsoft-365/solutions/collaborate-in-site)

- [Collaborate with guests in a team](/microsoft-365/solutions/collaborate-as-team)

## Shared channels

Shared channels are a type of Teams channel that allows you to share with people outside the team, including people in other Microsoft 365 organizations. While shared channels is turned on by default in Teams, external collaboration with shared channels is disabled by default. External collaboration with shared channels uses [Microsoft Entra B2B direct connect](/entra/external-id/b2b-direct-connect-overview) which allows you to add people from other Microsoft 365 organizations to Teams channels without the need for creating a guest account.

Shared channels have a particular advantage over guest accounts in that they don't require external participants to switch accounts in the Teams desktop client or log into your organization. They can use their regular work or school account and access the channel directly.

Sharing channels with people outside your organization requires that your organization and the external organization both configure an organizational relationship in Microsoft Entra B2B Direct Connect.

For information about how to set up Microsoft 365 for external collaboration with shared channels, see the following references:

- [Plan external collaboration](/microsoft-365/solutions/plan-external-collaboration)

- [Shared channels in Microsoft Teams](/MicrosoftTeams/shared-channels)

- [Collaborate with external participants in a channel](/microsoft-365/solutions/collaborate-teams-direct-connect)

## External chat and meetings

Users in your organization can chat, add users to meetings, and use audio or video conferencing in Teams with users in external Microsoft 365 organizations. By default, users in your organization can communicate in these ways with all other Microsoft 365 domains. People in other organizations can communicate in these ways with your users if they know the user's email address. You can allow or block specific domains or block all domains if you want to disable the feature.

You can also allow users in your organization to communicate with people from outside your organization who are using Teams accounts that aren't managed by an organization, as well as Skype for Business (online and on-premises) and Skype users.

Guest accounts aren't used as part of external chat and meetings. External participants remain signed in to their organization or to Skype and can communicate directly with people in your organization. They don't have access to your teams or channels.

For information about how to set up Microsoft 365 for external chat and meetings, see the following references:

- [Use guest access and external access to collaborate with people outside your organization](/microsoftteams/communicate-with-users-from-other-organizations)

- [Manage external access in Microsoft Teams](/microsoftteams/manage-external-access).

## Anonymous meeting join

People from outside your organization can join meetings in the following ways:

- If they're logged in to your organization with a guest account, they join meetings as a guest.

- If they're logged in to a different organization with a work or school account, and both organizations trust each other in [external access](/microsoftteams/manage-external-access) or are part of [cross-cloud meeting connection](/microsoftteams/cross-cloud-meetings#add-a-new-cross-cloud-meeting-connection), they join meetings as an external participant.

- If they're not a guest or external participant, they must join meetings anonymously.

If the anonymous join setting is enabled for your organization, anonymous users can join a meeting using a meeting link that has been shared with them (such as a link in the meeting invitation). They're prompted to enter a display name of their choosing when joining the meeting anonymously. Depending on the lobby settings, the anonymous user may be automatically admitted to the meeting, or be added to a lobby where the meeting organizer (or meeting participants with the presenter role) can allow or deny access to the meeting. 

It is not possible to verify the identity of anonymous users before, during or after the meeting.

You can control anonymous users' ability to join meetings at the organization level and through meeting policy settings. For information about configuring anonymous join for meetings, see [Manage anonymous participant access to Teams meetings](/microsoftteams/anonymous-users-in-meetings).

## Unauthenticated file and folder access

In Microsoft 365, files and folders in Teams, SharePoint, and OneDrive can be shared using unauthenticated - or *Anyone* - links. Anyone links give access to the shared item to anyone who has the link. Anyone links can be shared with others, giving those people access to the file or folder.

People using an Anyone link don't have to authenticate, and their access can't be audited. File and folder owners can revoke access at any time by deleting the link.

Anyone links can't be used with files in a Teams shared channel site.

For information about working with anonymous file and folder sharing, see the following references:

- [Manage sharing settings](/sharepoint/turn-external-sharing-on-or-off)

- [Best practices for sharing files and folders with unauthenticated users](/microsoft-365/solutions/best-practices-anonymous-sharing)

## Cross-cloud sharing and meetings

You can collaborate with users in other Microsoft Azure cloud environments (such as between Microsoft Azure Commercial and Microsoft Azure Government) in the following ways:

- **Cross-cloud guest access** - You can share documents, sites, and teams with organizations that are in other Microsoft Azure cloud environments.

- **Cross-cloud meetings** - You can meet with people in other Microsoft Azure cloud environments with an authenticated meeting experience that doesn't require guest accounts.

Both options require that you enable connections to the other cloud environment and set up an organizational relationship with the specific organization with which you want to collaborate.

For information about setting up cross-cloud guest access, see [Collaborate with guests from other Microsoft 365 cloud environments](/microsoft-365/solutions/collaborate-guests-cross-cloud).

For information about setting up cross-cloud meetings, see [Meet with people in other Microsoft 365 cloud environments](/microsoftteams/cross-cloud-meetings).

## Multitenant organizations

If your organization manages multiple Microsoft 365 tenants, you can set up a multitenant organization in Microsoft 365 to facilitate collaboration and resource access between tenants. Multitenant organizations synchronize users between tenants using Microsoft Entra B2B collaboration users. With the new Microsoft Teams desktop client, users can search for users in other tenants, receive real-time notifications from all the tenants in the multitenant organization, and participate in chats, meetings, and calls across all of the tenants without needing to switch tenants.

For information about how to set up a multitenant organization, see [Plan for multitenant organizations in Microsoft 365](/microsoft-365/enterprise/plan-multi-tenant-org-overview) and [Set up a multitenant org in Microsoft 365](/microsoft-365/enterprise/set-up-multi-tenant-org).

## Related articles

[Intro to file collaboration in Microsoft 365](/sharepoint/intro-to-file-collaboration)

[File collaboration in SharePoint with Microsoft 365](/sharepoint/deploy-file-collaboration)

[Use guest access and external access to collaborate with people outside your organization](/microsoftteams/communicate-with-users-from-other-organizations)

[Limit organizations where users can have guest accounts](/microsoft-365/solutions/limit-organizations-where-users-have-guest-accounts)

[Control who can bypass the meeting lobby in Microsoft Teams](/microsoftteams/who-can-bypass-meeting-lobby)
