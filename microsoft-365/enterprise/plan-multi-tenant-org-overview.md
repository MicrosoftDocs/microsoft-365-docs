---
title: Plan for multitenant organizations in Microsoft 365
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/24/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn how to plan for multitenant organizations in Microsoft 365.
---

# Plan for multitenant organizations in Microsoft 365

> [!NOTE]
> Multitenant organizations is not available in Microsoft 365 China (operated by 21Vianet).
If your organization manages multiple Microsoft 365 tenants, you can set up a multitenant organization in Microsoft 365 to facilitate collaboration and resource access between tenants. Creating a multitenant organization and synchronizing users between tenants provides a more seamless collaboration experience between the users in different tenants when [searching for each other](/microsoft-365/enterprise/multi-tenant-people-search), using Microsoft Teams and meetings, and collaborating on files.

The tenant that creates the multitenant organization is known as the *owner* while other tenants that join the multitenant organization are known as *members*. Once the global administrator in the owner tenant creates the multitenant organization, they can invite member tenants. A global administrator in each member tenant can then join the multitenant organization.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

While you configure Microsoft 365 multitenant organizations in the Microsoft 365 admin center, much of the supporting infrastructure is in Microsoft Entra ID. For details about how multitenant organizations work in Microsoft Entra ID, see [What is a multitenant organization in Microsoft Entra ID?](/azure/active-directory/multi-tenant-organizations/multi-tenant-organization-overview) and [Topologies for cross-tenant synchronization](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-topology).

## User synchronization between tenants

Multitenant organizations synchronize users between tenants using Microsoft Entra B2B collaboration users. Users from your tenant are provisioned in the other tenants in the multitenant organization as B2B collaboration users, but with a user type of member rather than guest. (See [What are the default user permissions in Microsoft Entra ID?](/azure/active-directory/fundamentals/users-default-permissions) for the differences between these roles.) The member user type is required by Teams in multitenant organizations.

We recommend starting with a small set of users before rolling out to the entire organization. When you do the complete rollout, we highly recommend synchronizing all users across all tenants in your multitenant organization for the best user experience. However you can synchronize a subset of users if you need to, including different users to different tenants.

When you configure user synchronization in the Microsoft 365 admin center, the same users are synchronized to all tenants in the multitenant organization. Synchronizing different users to different tenants must be configured in Microsoft Entra ID.

Once user synchronization has been configured, you can adjust the synchronization settings, including user scope and attribute mapping, in Microsoft Entra ID. (While you can create multiple cross-tenant synchronization configurations for a single external tenant, we recommend that you only use one for ease of administration.) For more information, see [Configure cross-tenant synchronization](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure).

#### Existing cross-tenant synchronization configurations

If you have existing cross-tenant synchronization configurations in Microsoft Entra ID, they continue to operate after you set up a multitenant organization in Microsoft 365. You can continue to use these configurations to synchronize users for your Microsoft 365 multitenant organization. (Note that the Microsoft 365 admin center won't recognize these configurations and the outbound sync status will show as not configured.)

If you already have B2B member users synchronized with tenants that are part of the MTO, those users will immediately become MTO members upon MTO formation.

You can synchronize users between tenants using the Microsoft 365 admin center. This will create new cross-tenant synchronization configurations in Microsoft Entra ID. Both the new and previously existing configurations will run and synchronize the users that you've specified.

We recommend that you only have a single configuration to synchronize users to a given tenant. If you want to synchronize the same users to every tenant, [configure synchronization in the Microsoft 365 admin center](sync-users-multi-tenant-orgs.md). If you want to synchronize different users to different tenants, [configure synchronization in Microsoft Entra ID](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure).

<a name='cross-tenant-access-settings-in-azure-ad'></a>

## Cross-tenant access settings in Microsoft Entra ID

When you create a new multitenant organization or join an existing one, the other organizations in the multitenant organization are added to the [Microsoft Entra cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) in your tenant.

If you already have an organizational relationship configured in Microsoft Entra ID with a tenant that you're adding to a multitenant organization, the existing configuration is updated as follows:

- The inbound cross-tenant sync settings are updated to allow users to sync into your tenant.
- The outbound trust settings are updated so users from this tenant don't have to accept the consent prompt the first time they access the other tenant using cross-tenant synchronization, B2B collaboration, or B2B direct connect (shared channels).

We recommend that you check the B2B collaboration settings for pre-existing organizational relationships to ensure the appropriate users and apps are allowed.

## The new Microsoft Teams desktop client

For the best experience in multitenant organizations, users need [the new Microsoft Teams desktop client](/microsoftteams/new-teams-desktop-admin). With the new Teams desktop client, users can:

- Receive real-time notifications from all the tenants in your multitenant organization
- Participate in chats, meetings, and calls across all of the tenants without dropping from a call or meeting to switch tenants.
- Set their status for each account and organization individually.
- User profile card shows organization name and email address

To control which users can use the new Teams desktop client, use the Teams update policies. For more information, see [Deploy the new Teams using policies](/microsoftteams/new-teams-deploy-using-policies)

## Trusted organizations in external access

External access is required for chats and calls between tenants. External access for Teams and Skype for Business users in external organizations must be configured for each tenant in your multitenant organization and must allow the domains of all the tenants in your multitenant organization. Additionally, all the users that you synchronize between tenants must be enabled for external access with Teams and Skype for Business users in external organizations. For details, see [Manage external meetings and chat with people and organizations using Microsoft identities](/microsoftteams/trusted-organizations-external-meetings-chat).

## Shared channels in multitenant organizations

Using [shared channels in Teams](/microsoftteams/shared-channels) with other tenants in a multitenant organization works the same as using shared channels with any other external organization. While the organizational relationship in Microsoft Entra ID is configured as part of multitenant organization configuration, you must still enable shared channels in Teams and configure the B2B direct connect settings in Microsoft Entra ID. For details, see [Collaborate with external participants in a shared channel](/microsoft-365/solutions/collaborate-teams-direct-connect).

## License requirements
Use of the multitenant organization feature requires Microsoft Entra ID P1 licenses or above in all multitenant organization tenants. For additional details, see [Entra multitenant organization licensing requirements](/entra/identity/multi-tenant-organizations/multi-tenant-organization-overview#license-requirements). If you plan on utilizing [Entra cross-tenant sync](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview) via the Microsoft 365 admin center or Microsoft Entra ID, also see [Entra cross-tenant sync licensing requirements](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview#license-requirements).

## Limitations for multitenant organizations in Microsoft 365

The following are limitations of the multitenant organizations in Microsoft 365:

- A maximum of 100 tenants in the multitenant organization is supported.
- Teams on the web, Microsoft Teams Rooms (MTR), and VDI/AVD aren't supported.
- The ability to grant or revoke permission to receive notifications from other tenants and to switch between tenants isn't supported on mobile.
- *People in your organization* links may not work for users from another tenant if their account had originally been a guest and they had previously accessed SharePoint resources.
- It might take up to seven days for a user to appear in search once they've been synchronized. Contact Microsoft support if users aren't searchable after seven days.
- Support for a guest UserType of member in Power BI is currently in preview. For more information, see [Distribute Power BI content to external guest users with Microsoft Entra B2B](/power-bi/enterprise/service-admin-azure-ad-b2b#who-can-you-invite).

If you want to add more than 100 tenants, contact Microsoft support.

For additional limitations, see [Limitations in multitenant organizations](/azure/active-directory/multi-tenant-organizations/multi-tenant-organization-known-issues).

## Set up or join a multitenant organization

To set up a new multitenant organization where your tenant is the owner, see [Set up a multitenant organization in Microsoft 365](set-up-multi-tenant-org.md).

To join an existing multitenant organization as a member tenant, see [Join or leave a multitenant organization in Microsoft 365](join-leave-multi-tenant-org.md).

## Related topics

[Configure cross-tenant synchronization using PowerShell or Microsoft Graph API](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure-graph)

[Synchronize users in multitenant organizations in Microsoft 365](sync-users-multi-tenant-orgs.md)
