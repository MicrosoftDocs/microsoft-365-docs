---
title: "Collaborate with external participants in a shared channel"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 09/09/2021
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
localization_priority: Priority
f1.keywords: NOCSH
recommendations: false
description: Learn how to enable shared channels in Microsoft Teams for collaboration with people outside your organization.
---

# Collaborate with external participants in a shared channel

If you want to enable your users to collaborate with people in other Microsoft 365 organizations in [shared channels](/MicrosoftTeams/shared-channels), you need to configure B2B direct connect for each organization that you want to collaborate with. (Alternatively, you can [Enable shared channels with all external organizations](/microsoft-365/solutions/allow-direct-connect-with-all-organizations).)

When you enable shared channels in Teams with another organization:

- Team owners in your organization will be able to invite people from other organizations to participate in shared channels.
- Your organization's custom (line of business) apps will be available in shared channels and external participants will be able to access them.
- Your organization's apps list will be available in shared channels and external participants will be able to access them.

## Prerequisites

Collaborating with external participants in a shared channel requires that guest access be turned on for SharePoint and Microsoft 365 Groups. These settings are enabled by default, but if your organization has made changes to them, confirm the following settings before configuring shared channels:

- [Microsoft 365 Groups sharing settings](/microsoft-365/solutions/microsoft-365-guest-settings#microsoft-365-groups) must both be enabled.
- SharePoint [organization level](/microsoft-365/solutions/microsoft-365-guest-settings#sharepoint-and-onedrive-organization-level) and [site level](/microsoft-365/solutions/microsoft-365-guest-settings#sharepoint-site-level) sharing settings must allow guests. The domains you're sharing with must not be blocked.

## Video demonstration

This video shows the configuration steps described in this document.
<br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4WRMx?autoplay=false]

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

To enable external access
1. In the [Teams admin center](https://admin.teams.microsoft.com/), expand **Users**, and then select **External access**.
1. Under **Teams and Skype for Business users in external organizations**, ensure that the organizations that you want to collaborate with are not blocked.

## Configure cross-tenant access settings in Azure AD

Azure AD B2B direct connect is disabled by default. To enable collaboration in shared channels with people from other organizations, you must:

1. [Add an organization](#add-an-organization).
1. [Configure inbound settings](#configure-inbound-settings) for the organization to allow users from the organization to be invited to your shared channels.
1. [Configure outbound settings](#configure-outbound-settings) for the organization to allow your users to be invited to the other organization's shared channels.

As part of this configuration, we enable the **Office 365** application, which includes Teams and Teams-integrated services such as SharePoint.

> [!NOTE]
> Changes to cross-tenant access settings may take up to six hours to take effect.

> [!NOTE]
> Shared channels between Commercial and GCC clouds are not supported.

### Add an organization

Add each organization with which you want to participate in shared channels.

To add an organization
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization and press Enter.
1. Select **Add**.
1. The organization appears in the organizations list. At this point, all access settings for this organization are inherited from your default settings.

### Configure inbound settings

Follow this procedure for each organization where you want to invite external participants.

To configure inbound settings for an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings**.
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
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings**.
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. On the **External users and groups** tab, choose **Allow access** and set an **Applies to** of all users.
1. On the **External applications** tab, choose **Allow access** and **Select external applications**.
1. Select **Add Microsoft applications**.
1. Select the **Office 365** application, and then choose **Select**.
1. Select **Save**, choose **Yes** to confirm, and close the **Outbound access settings** blade.

## See also

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Shared channels limits](/MicrosoftTeams/shared-channels#shared-channel-limits)
