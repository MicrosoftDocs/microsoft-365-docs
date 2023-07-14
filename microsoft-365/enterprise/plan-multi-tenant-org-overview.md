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

Multi-tenant organizations are configured in the Microsoft 365 admin center.


To set up a new multi-tenant organization where your tenant is the owner, see [Set up a multi-tenant organization in Microsoft 365](set-up-multi-tenant-org.md).

To join an existing multi-tenant organization as a member tenant, see [Join or leave a multi-tenant organization in Microsoft 365](join-leave-multi-tenant-org.md).


## User synchronization between tenants

Multi-tenant organizations synchronize users between tenants using Azure AD B2B collaboration users. Users from your tenant are provisioned in the other tenants in the multi-tenant organization as B2B collaboration users, but with a user type of member rather than guest.

We recommend synchronizing all users across all tenants in your multi-tenant organization for the best user experience. However you can synchronize a subset of users if you want, including different users to different tenants. (Synchronizing different users to different tenants must be configure in Azure AD.)


## Cross-tenant access settings in Azure AD

Multi-tenant organizations use [cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration). If you already have an organizational relationship configured in Azure AD with a tenant that you're adding to a multi-tenant organization, check the B2B collaboration settings to ensure the appropriate users and apps are allowed.


## The new Microsoft Teams desktop client

For the best experience in multi-tenant organizations, users need [the new Microsoft Teams desktop client](/microsoftteams/new-teams-desktop-admin). With the new Teams desktop client, users can:

- Receive real-time notifications from all the tenants in your multi-tenant organization
- Participate in chats, meetings, and calls across all of the tenants without dropping from a call or meeting to switch tenants.
- Set their status for each account and organization individually.

To control which users can use the new Teams desktop client, use the Teams update policies. For more information, see [Deploy the new Teams using policies](/microsoftteams/new-teams-deploy-using.-policies)

## Trusted organizations in external access

External access is required for chats and calls between tenants. External access for Teams and Skype for Business users in external organizations must be configured for each tenant in your multi-tenant organization and must allow the domains of all the tenants in your multi-tenant organization. Additionally, all the users that you synchronize between tenants must be enabled for external access with Teams and Skype for Business users in external organizations. For details, see [Manage external meetings and chat with people and organizations using Microsoft identities](/microsoftteams/trusted-organizations-external-meetings-chat).

## Shared channels in multi-tenant organizations

Using [shared channels in Teams](/microsoftteams/shared-channels) with other tenants in a multi-tenant organizations works the same as using shared channels with any other external organization. While the organizational relationship in Azure AD is configured as part of multi-tenant organization configuration, you must still enable shared channels in Teams and configure the B2B direct connect settings in Azure AD. For details, see [Collaborate with external participants in a shared channel](/microsoft-365/solutions/collaborate-teams-direct-connect).

## Limitations

The following are limitations of the multi-tenant organizations in Microsoft 365 preview:

- Teams on the web, MacOS, Microsoft Teams Rooms (MTR), and VDI/AVD are not supported.
- The ability to grant or revoke permission to receive notifications from other tenants and to switch between tenants is not supported on mobile.

## Related topics


