---
title: Collaborate with external participants in a shared channel (IT Admins)
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 05/30/2024
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection:
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
ms.custom: 
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to enable shared channels in Microsoft Teams for collaboration with people outside your organization.
---

# Collaborate with external participants in a shared channel (IT Admins)

If you want to enable your users to collaborate with people in other Microsoft 365 organizations in [shared channels](/MicrosoftTeams/shared-channels), you need to configure B2B direct connect for each organization that you want to collaborate with. (Alternatively, you can [Enable shared channels with all external organizations](/microsoft-365/solutions/allow-direct-connect-with-all-organizations).)

When you enable shared channels in Teams with another organization:

- Team owners in your organization can invite people from other organizations to participate in shared channels.
- Your organization's custom (line of business) apps are available in shared channels and external participants can access them.
- Your organization's apps list is available in shared channels and external participants can access them.

Note that the organizations that you want to connect to must also follow the steps in this article to enable external shared channels for their organization.

## Prerequisites

Collaborating with external participants in a shared channel requires that guest access be turned on for SharePoint and Microsoft 365 Groups. These settings are enabled by default, but if your organization has made changes to them, confirm the following settings before configuring shared channels:

- [Microsoft 365 Groups sharing settings](/microsoft-365/solutions/microsoft-365-guest-settings#microsoft-365-groups) must both be enabled.
- SharePoint [organization level](/microsoft-365/solutions/microsoft-365-guest-settings#sharepoint-and-onedrive-organization-level) and [site level](/microsoft-365/solutions/microsoft-365-guest-settings#sharepoint-site-level) sharing settings must allow guests. The domains you're sharing with must not be blocked.

> [!NOTE]
> Shared channels between Commercial and GCC clouds are not supported.

## Video demonstration

This video shows the configuration steps described in this document.
<br>

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=11b6aeb6-a9ed-4af3-bfbc-887d9dd3f457]

## Enable shared channels in Teams

Shared channels is enabled by default in Teams. Follow this procedure to confirm the settings.

To configure shared channels
1. In the [Teams admin center](https://admin.teams.microsoft.com/), expand **Teams**, and then select **Teams policies**.
1. Select the policy for which you want to enable shared channels, and then select **Edit**.
1. Select the options you want to enable:
    - To allow team owners to create shared channels, turn **Create shared channels** on.
    - To allow team owners to share shared channels with people outside the organization, turn **Invite external users to shared channels** on.
    - To allow users to be invited to shared channels in other organizations, turn **Join external shared channels** on.
1. Select **Apply**.

In order for external channel participants to participate in meetings, external access must be enabled. This is also required to be able to see external participants' presence in the channel.

#### Enable external access

To enable external access
1. In the [Teams admin center](https://admin.teams.microsoft.com/), expand **Users**, and then select **External access**.
1. Under **Teams and Skype for Business users in external organizations**, ensure that the organizations that you want to collaborate with are not blocked.

#### Specify a link to your internal process for requesting new external organizations

For users to invite people from outside your organization to a shared channel, both organizations must set up an organizational relationship in Microsoft Entra B2B direct connect. (This is covered in the following sections.)

You can specify an internal link for users who try to share a channel with people in an organization where a two-way Microsoft Entra B2B direct connect relationship has not been set up. This link appears when they try to share the channel. Use this link to direct your users to your internal support page or request form for setting up shared channels with other organizations.

To specify an internal help link for shared channel users
1. In the [Teams admin center](https://admin.teams.microsoft.com/), expand **Teams**, and then select **Teams settings**.
1. Under **Shared channels**, turn **Provide a link to my support request page** on.
1. Type the URL to your support page in the **Support request page link** box.
1. Select **Save**.

<a name='configure-cross-tenant-access-settings-in-azure-ad'></a>

## Configure cross-tenant access settings in Microsoft Entra External ID

Microsoft Entra External ID B2B direct connect is disabled by default. To enable collaboration in shared channels with people from other organizations, you must:

1. [Add an organization](#add-an-organization).
1. [Configure inbound settings](#configure-inbound-settings) for the organization to allow users from the organization to be invited to your shared channels.
1. [Configure outbound settings](#configure-outbound-settings) for the organization to allow your users to be invited to the other organization's shared channels.

As part of this configuration, we enable the **Office 365** application, which includes Teams and Teams-integrated services such as SharePoint.

> [!NOTE]
> Changes to cross-tenant access settings may take up to six hours to take effect.

### Add an organization

Add each organization with which you want to participate in shared channels.

To add an organization
1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com/) using a Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization and press Enter.
1. Select **Add**.
1. The organization appears in the organizations list. At this point, all access settings for this organization are inherited from your default settings.

### Configure inbound settings

Follow this procedure for each organization where you want to invite external participants.

To configure inbound settings for an organization
1. In the [Microsoft Entra admin center](https://entra.microsoft.com/), select **External Identities**, and then select **Cross-tenant access settings**.
1. Select the inbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. On the **External users and groups** tab, choose **Allow access** and **All external users and groups**. (You can choose **Select external users and groups** if you want to limit access to specific users and groups, such as those who have signed a non-disclosure agreement.)
1. On the **Applications** tab, choose **Allow access** and **Select applications**.
1. Select **Add Microsoft applications**.
1. Select the **Office 365** application, and then choose **Select**.
1. Select **Save** and close the **Inbound access settings** blade.

### Configure outbound settings

Follow this procedure for each organization where you want your users to be able to participate in external shared channels.

To configure outbound settings for an organization
1. In the [Microsoft Entra admin center](https://entra.microsoft.com/), select **External Identities**, and then select **Cross-tenant access settings**.
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. On the **External users and groups** tab, choose **Allow access** and set an **Applies to** of all users.
1. On the **External applications** tab, choose **Allow access** and **Select external applications**.
1. Select **Add Microsoft applications**.
1. Select the **Office 365** application, and then choose **Select**.
1. Select **Save**, choose **Yes** to confirm, and close the **Outbound access settings** blade.

## Related topics

[B2B direct connect overview](/entra/external-id/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/entra/external-id/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Shared channels limits](/microsoftteams/limits-specifications-teams#limits-for-shared-channels)
