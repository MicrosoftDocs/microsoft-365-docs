---
title: Plan for multi-tenant organizations in Microsoft 365 (Preview)
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 07/30/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn about multi-tenant organizations in Microsoft 365.
---

# Plan for multi-tenant organizations in Microsoft 365 (Preview)

If your organization manages multiple Microsoft 365 tenants, you can set up a multi-tenant organization in Microsoft 365 to facilitate collaboration and resource access between tenants.





Multi-tenant organizations use [cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration). If you already have an organizational relationship configured in Azure AD with a tenant that you're adding to a multi-tenant organization, check the B2B collaboration settings to ensure the appropriate users and apps are allowed.

To set up a new multi-tenant organization where your tenant is the owner, see [Set up a multi-tenant org in Microsoft 365](set-up-multi-tenant-org.md).

To join an existing multi-tenant organization as a member tenant, see [Join or leave multi-tenant orgs in Microsoft 365](join-leave-multi-tenant-org.md).

## User synchronization between tenants

Note: As part of the setup, to maximize the benefits of collaboration for users in a multitenant org environment, it is necessary to have a full mesh user synchronization, where users from all tenants are synced over. Without full mesh user sync, the user experience can become bifurcated, leading to limitations in multitenant org collaboration effectiveness.



A full mesh network offers the best user experience for all users in a multitenant org environment. With partial user synchronization, not all users may have access to the new capabilities, which could compromise the effectiveness of multitenant org collaboration and result in differences in user experience

Multi-tenant organizations synchronize users between tenants using Azure AD B2B collaboration users. Users from your tenant are provisioned in the other tenants in the multi-tenant organization as B2B collaboration users, but with a user type of member rather than guest.



## Collaboration scenarios in Teams

The following are user collaboration scenarios.
People & Search	Search for any multitenant org user by name (either partial or full name)
People search returns single result and establish chat with org user’s home tenant identity
Multitenant org profile view	Multitenant org user profile will show org name, email address, and initials avatars
Multitenant org users will be represented with “External” tag
Multitasking	Side-by-side multitasking across tenants
Cross tenant chat notifications (for enabled tenants)
Chat & Call	New Chats and Calls use real identities
Existing Chats with B2B identities show a banner
Meetings	Access to in-meeting content
Multitenant org Management	Users will be able to collaborate with other users in the tenants that are part of the multitenant org.  (see detailed description below)

 

### The new Microsoft Teams desktop client

[The new Microsoft Teams desktop client](/microsoftteams/new-teams-desktop-admin)

The new Teams client now supports collaboration in multitenant organizations. Users can now easily search for coworkers in other tenants, engage in single chat threads with users from different tenants, receive notifications, join meetings and calls, and multitask seamlessly. These capabilities are designed to improve the overall user experience and collaboration experience between users across the multitenant.

How to install the new Teams Client
 
To control which users can see the toggle, use the Teams admin setting UseNewTeamsClient under the TeamsUpdateManagement policy.

[Deploy the new Teams using policies](/microsoftteams/new-teams-deploy-using-policies)

## Trusted organizations in external access

[Manage external meetings and chat with people and organizations using Microsoft identities](/microsoftteams/trusted-organizations-external-meetings-chat)

Enabling External Access supports scenarios such as chats and calls. For cases when external access is not configured correctly, chat and calls with users from multitenant org will fail.

 
Please refer to the above references for additional information.
3.	External Access Settings (Teams Admin Center)
Additionally, it is required to enable the External Access policy in Teams Admin Center for tenants that are part of the multitenant org.  If External Access is not allowed between participating tenants, user collaboration across the multitenant may be limited.


## Shared channels in multi-tenant orgs

Using [shared channels in Teams](/microsoftteams/shared-channels) with other tenants in a multi-tenant organizations works the same as using shared channels with any other external organization. While the organizational relationship in Azure AD is configured as part of multi-tenant organization configuration, you must still enable shared channels in Teams and configure the B2B direct connect settings in Azure AD. For details, see [Collaborate with external participants in a shared channel](/microsoft-365/solutions/collaborate-teams-direct-connect).

## Limitations

The following are limitations of the multi-tenant organizations in Microsoft 365 preview:

- Teams on the web, MacOS, Microsoft Teams Rooms (MTR), and VDI/AVD are not supported
- The ability to grant or revoke permission to receive notifications from other tenants and to switch between tenants is not supported on mobile.

## Related topics


