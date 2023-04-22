---
title: "Limit guest sharing to specific organizations"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 12/08/2021
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection: 
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-securecollab
- m365solution-scenario
- m365initiative-externalcollab
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to limit guest sharing to specific Azure AD or Microsoft 365 organizations.
---

# Limit guest sharing to specific organizations

By default, users can invite people outside the organization as guests. This includes adding them to teams in Microsoft Team, SharePoint sites, and sharing individual files and folders with them.

If you only want to allow guests from specific organizations, you can specify these organizations in the Azure Active Directory external collaboration settings and cross-tenant access settings for [B2B collaboration](/azure/active-directory/external-identities/what-is-b2b).

> [!NOTE]
> This article assumes that you have [SharePoint and OneDrive integration with Azure AD B2B](/sharepoint/sharepoint-azureb2b-integration) turned on.

## Configure external collaboration settings

With Azure AD external collaboration settings, you can specify the domains that you want to allow for external collaboration. Guest invitations to all other domains - including non-Azure AD domains - will be blocked. (Guests from blocked domains that are already in your directory will remain.)

To allow guest invitations to a specific organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **External collaboration settings**.
1. Under **Collaboration restrictions**, choose **Allow invitations only to the specified domains**.
1. Type the domains that you want to allow, and then select **Save**.

## Cross-tenant access settings

If your allowed domains are other Azure AD organizations, cross-tenant access settings also affect how guests access your organization. By default, all domains are allowed for B2B collaboration with guest accounts. If you've changed your default settings, check to make sure the domains that you want to collaborate with are allowed. For more information, see [Overview: Cross-tenant access with Azure AD External Identities](/azure/active-directory/external-identities/cross-tenant-access-overview).

You can use cross-tenant access settings to limit which of your users can be invited to another Azure AD organization. See [Limit who can be invited by an organization](limit-invitations-from-specific-organization.md) for more information.

You can also limit which organizations where your users can have a guest account. See [Limit organizations where users can have guest accounts](limit-organizations-where-users-have-guest-accounts.md) for more information.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

## Related topics

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Limit organizations where users can have guest accounts](limit-organizations-where-users-have-guest-accounts.md)
