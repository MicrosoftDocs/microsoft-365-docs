---
title: "Limit guest sharing to specific organizations"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection: 
- highpri
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

## Configure cross-tenant access settings

If your allowed domains are other Azure AD organizations, cross-tenant access settings also affect how guests access your organization.

If the defaults have changed, add an organization

If you want to limit who in the organization can be added as a guest, see


[Limit organizations where users can have guest accounts](limit-organizations-where-users-have-guest-accounts.md)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)



If your allowed domains are other Azure AD organizations, you can use cross-tenant access settings to further restrict access by specifying which users in your organization can be invited as guests to the other organization.

Additionally, cross-tenant access settings work at the time of authentication, whereas the external collaboration settings discussed above block invitations. By setting up 

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.


### Add the organization from which you want to allow guests

Next, add the organizations from which you want to allow guests to the Azure AD cross-tenant access list.

To add an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list.

At this point, all access settings for this organization are inherited from your default settings.

### Configure inbound settings for the organization to allow all users

Once you have added the organization, you need to update the organization's inbound settings to allow B2B collaboration users access as guests. Do this for each organization where you want to allow guests.

1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the inbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose to allow all users.
1. Select **Save** and close the **Outbound access settings** blade.

## Related topics

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Limit organizations where users can have guest accounts](limit-organizations-where-users-have-guest-accounts.md)
