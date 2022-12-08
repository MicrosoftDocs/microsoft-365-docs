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

By default, users can invite people outside the organization as guests. This includes inviting them to teams in Microsoft Team, SharePoint sites, and sharing individual files and folders with them.

If you only want your users to invite guests from specific organizations, you can specify these organizations in the Azure Active Directory cross-tenant access settings for [B2B collaboration](/azure/active-directory/external-identities/what-is-b2b).

## Configure cross-tenant access settings

The first step in limiting guest sharing is to change the default settings in the Azure AD cross-tenant access settings to block inviting guests by default. Then you can allow guest invitations for specific organizations.

> [!NOTE]
> Changes to cross-tenant access settings may take two hours to take effect.

### Set the default B2B collaboration settings to block inviting guests

Because inviting guests is enabled by default, limiting guest invitations to certain organizations requires blocking inbound B2B collaboration by default.

To block inbound B2B collaboration by default
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the **Default settings** tab.
1. Under **Inbound access settings**, select **Edit inbound defaults**.
1. Select the **B2B collaboration** tab and the **Users and groups** tab.
1. Under **Access status**, choose **Block access**.
1. Select the **External access** tab.
1. Under **Access status**, choose **Block access**.
1. Select **Save**.
1. Close the **Default settings** blade.

### Add the organization where you want to allow guest invitations

Next, add the organizations where you want to allow your users to invite guests to the Azure AD cross-tenant access list.

To add an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list.

At this point, all access settings for this organization are inherited from your default settings.

### Configure inbound settings for the organization to allow all users

Once you have added the organization, you need to update the organization's inbound settings to allow B2B collaboration users to be invited as guests. Do this for each organization where you want to allow your users to be able to invite guests.

1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.
1. Select the inbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose to allow all users.
1. Select **Save** and close the **Outbound access settings** blade.

## Turn off one-time passcode authentication

Even after you've limited B2B collaboration to certain organizations, people can still share files and folders with people in other organizations - they just won't be given a guest account in your directory.

If you wish to prevent sharing entirely with other organizations, you have to disable the one-time passcode feature in Azure AD. This will prevent people outside your organization from being sent a one-time passcode for authentication to shared files or folders.

To disable the email one-time passcode feature
1. Sign in to the [Azure portal](https://portal.azure.com/) as an Azure AD global administrator.
1. In the navigation pane, select **Azure Active Directory**.
1. Select **External Identities** > **All identity providers**.
1. Select **Email one-time passcode**, and then under **Email one-time passcode for guests**, select **Disable email one-time passcode for guests** (or **No** if the feature was previously enabled, disabled, or opted into during preview).
1. Select **Save**.

## Related topics

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit who can be invited by an organization](limit-invitations-from-specific-organization.md)

[Limit organizations where users can have guest accounts](limit-organizations-where-users-have-guest-accounts.md)