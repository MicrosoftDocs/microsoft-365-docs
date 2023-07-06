---
title: "Limit organizations where users can have guest accounts"
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
description: Learn how to specify which organizations your users can have guest accounts in.
---

# Limit organizations where users can have guest accounts

By default, other Microsoft 365 and Azure Active Directory organizations can invite your users to participate in their organization as guests. This includes inviting them to teams in Microsoft Team, SharePoint sites, and sharing individual files and folders with them.

If you only want your users to participate as guests with specific organizations, you can specify these organizations in the Azure Active Directory cross-tenant access settings for [B2B collaboration](/azure/active-directory/external-identities/what-is-b2b).

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

## Set the default B2B collaboration settings to block users from being guests

Because participating as guests is enabled by default, limiting guest participation to certain organizations requires blocking outbound B2B collaboration by default.

To block outbound B2B collaboration by default
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Default settings** tab.
1. Under **Outbound access settings**, select **Edit outbound defaults**.
1. Select the **B2B collaboration** tab and the **Users and groups** tab.
1. Under **Access status**, choose **Block access**.
1. Select the **External access** tab.
1. Under **Access status**, choose **Block access**.
1. Select **Save**.
1. Close the **Default settings** blade.

## Add an organization

Next, add the organizations where you want to allow your users to collaborate as guests to the Azure AD cross-tenant access list.

To add an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list.

At this point, all access settings for this organization are inherited from your default settings.

## Configure the organization's outbound setting to allow all users

Once you have added the organization, you need to update the organization's outbound settings to allow B2B collaboration users to be added as guests. Do this for each organization where you want to allow your users to be added as guests.

To allow users to B2B collaboration guests in an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose to allow all users.
1. Select **Save** and close the **Outbound access settings** blade.

## Related topics

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Limit guest sharing to specific organizations](limit-guest-sharing-to-specific-organization.md)
