---
title: Enable shared channels with all external organizations
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 06/26/2024
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
description: Learn how to enable shared channels with all other Microsoft 365 and Microsoft Entra organizations.
---

# Enable shared channels with all external organizations

While sharing shared channels externally is enabled by default in Teams, Microsoft Entra cross-tenant access settings for [B2B direct connect](/entra/external-id/b2b-direct-connect-overview) must also be configured to share a channel externally. By default, these settings are set to block all organizations.

You can change the B2B direct connect default settings to allow all organizations. This allows users to collaborate in shared channels without your organization having to create a separate configuration for each organization that you want to collaborate with. (Note that the organizations you collaborate with will also have to configure their B2B direct connect settings.)

If your organization doesn't have a requirement to restrict collaboration with other organizations, enabling all organizations by default can save you time and complexity in managing each organization separately.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

> [!NOTE]
> [Guest settings for Microsoft 365 Groups](/microsoft-365/admin/create-groups/manage-guest-access-in-groups) must be enabled to use shared channels with external participants.

## Allow users to invite people in other organizations to participate in shared channels

You can allow your users to invite people from other organizations to use shared resources - such as shared channels in Teams - by default.

To allow users to invite B2B direct connect participants by default
1. Sign in to [Microsoft Entra ID](https://entra.microsoft.com) using a Security Administrator account.

1. Expand **External Identities**, and then select **Cross-tenant access settings**.
1. On the **Default settings** tab, under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **B2B direct connect** tab.
1. On the **Users and groups** tab, under **Access status**, choose **Allow access**.
1. On the **External applications** tab, under **Access status**, choose **Allow access**.
1. Select **Save**.
1. Select the **Trust settings** tab.
1. Choose if you want to trust multifactor authentication, compliant devices, or Microsoft Entra hybrid joined devices from other organizations.
1. Select **Save**.
1. Close the **Default settings** blade.

## Allow users to participate in shared channels in other organizations

You can allow your users to access resources that are hosted by an external organization - such as shared channels in Teams - by default.

To allow users to access resource from other organizations by default
1. In [Microsoft Entra ID](https://entra.microsoft.com), expand **External Identities**, and then select **Cross-tenant access settings**.
1. On the **Default settings** tab, under **Outbound access settings**, select **Edit outbound defaults**.
1. Select the **B2B direct connect** tab.
1. On the **Users and groups** tab, under **Access status**, choose **Allow access**.
1. On the **External applications** tab, under **Access status**, choose **Allow access**.
1. Select **Save**.
1. Close the **Default settings** blade.

## Related topics

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)
