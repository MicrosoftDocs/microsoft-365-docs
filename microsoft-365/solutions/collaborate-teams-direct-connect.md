---
title: "Collaborate with external participants in a channel"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
ms.custom: 
localization_priority: Priority
f1.keywords: NOCSH
recommendations: false
description: Learn how to use shared channels with people outside your organization.
---

# Collaborate with external participants in a channel

If you want to allow your users to collaborate with people outside your organization in [shared channels](/MicrosoftTeams/shared-channels), you need to configure B2B direct connect for each organization that you want to collaborate with. (Alternatively, you can [Enable shared channels with all external organizations](/microsoft-365/solutions/allow-direct-connect-with-all-organizations).)

When you enable shared channels with another organization:

- Team owners in your organization will be able to invite people from other organizations to participate in shared channels.
- Your organization's custom (line of business) apps will be available in shared channels and external participants will be able to access them.
- Your organization's apps list will be available in shared channels and external participants will be able to access them.

> [!NOTE]
> Shared channels is in preview and requires that you have configured [Microsoft Teams Public Preview](/MicrosoftTeams/public-preview-doc-updates). If you plan to share channels with other organizations, they must also have configured Teams public preview.

## Enable shared channels in Teams

Shared channels is enabled by default in Teams. Follow this procedure to confirm the settings.

To configure shared channels
1. In the [Teams admin center](https://admin.teams.microsoft.com/), expand **Teams**, and then select **Teams policies**.
1. Select the policy for which you want to enable shared channels, and then select **Edit**.
1. Select the options you want to enable:
    - To allow team owners to create shared channels, turn **Create shared channels** on.
    - To allow team owners to share shared channels with people outside the organization, turn **Share shared channels externally** on.
    - To allow users to be invited to shared channels in other organizations, turn **Can be invited to external shared channels** on.
1. Select **Apply**.

## Configure cross-tenant access settings in Azure AD

Azure AD B2B direct connect is disabled by default. To enable collaboration in shared channels with people from other organizations, you must:

1. [Add an organization](#add-an-organization).
1. [Configure inbound settings](#configure-inbound-settings) for the organization to allow users from the organization to be invited to your shared channels.
1. [Configure outbound settings](#configure-outbound-settings) for the organization to allow your users to be invited to the other organization's shared channels.

As part of this configuration, we enable the **Office 365** application, which includes Teams and Teams-integrated services such as SharePoint.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

### Add an organization

Add each organization with which you want to participate in shared channels.

To add an organization
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list. At this point, all access settings for this organization are inherited from your default settings.

### Configure inbound settings

Follow this procedure for each organization where you want to invite external participants.

To configure inbound settings for an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the inbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. On the **External users and groups** tab, choose **Allow access** and **All users and groups**.
1. On the **Applications** tab, choose **Allow access** and **Select applications**.
1. Select **Add Microsoft applications**.
1. Select the **Office 365** application, and then choose **Select**.
1. Select **Save** and close the **Outbound access settings** blade.

### Configure outbound settings

Follow this procedure for each organization where you want your users to be able to participate in external shared channels.

To configure outbound settings for an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. On the **External users and groups** tab, choose **Allow access** and set a **Target** of all users.
1. On the **External applications** tab, choose **Allow access** and **Select external applications**.
1. Select **Add Microsoft applications**.
1. Select the **Office 365** application, and then choose **Select**.
1. Select **Save** and close the **Outbound access settings** blade.

## See also

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Shared channels limits](/MicrosoftTeams/shared-channels#shared-channel-limits)
