---
title: "Collaborate with guests from other Microsoft clouds"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 07/01/2023
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
localization_priority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to enable guest invitations between Microsoft 365 clouds (such as commercial and DoD).
---

# Collaborate with guests from other Microsoft clouds

Microsoft 365 organizations are located in one of three Microsoft clouds:

- Microsoft Azure Commercial - commercial and GCC tenants
- Microsoft Azure Government - GCC-High and DoD tenants
- Microsoft Azure China (operated by 21Vianet)

In order to invite guests from an organization in a different cloud, you must do the following:
1. If the organization you want to collaborate with is in a different cloud (such as GCC and commercial), enable cross-tenant connections with that cloud.
1. Set up cross-tenant access settings with the organization that you want to collaborate with.

## Prerequisites

Inviting guests from organizations in other clouds requires that guest access be configured for your organization. If you haven't previously configured guest access, see one of the following depending on your scenario:
- [Collaborate with guests on a document](collaborate-on-documents)
- [Collaborate with guests in a site](collaborate-in-site.md)
- [Collaborate with guests in a team](collaborate-as-team.md)

To enable B2B collaboration with an organization in another cloud, you need the organization's tenant ID. Using an organization's domain name for lookup isn't available in cross-cloud scenarios. You need to contact the other organization to get their tenant ID.

## Allow cross-tenant connections with other Microsoft 365 clouds

If you're setting up a cross-cloud guest sharing with a tenant that's in a different Microsoft Azure cloud than yours, then you need to enable connections with that cloud before you add the organizational relationship.

The following table shows which cloud each type of tenant is in.

|Tenant type|Cloud|
|:----------|:----|
|Commercial|Microsoft Azure Commercial|
|GCC|Microsoft Azure Commercial|
|GCC High|Microsoft Azure Government|
|DoD|Microsoft Azure Government|
|China (21Vianet)|Microsoft Azure China|

Enable the Microsoft Azure cloud you want to collaborate with in Azure AD cross tenant access settings.

1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings**.
1. Select **Microsoft cloud settings**.
1. Select the checkboxes next to the external Microsoft Azure clouds you want to enable.

   ![Screenshot showing Microsoft cloud settings.](../media/cross-cloud-settings.png)

### Add an organization

Once you've enabled the clouds you want to collaborate with, you need to add the specific organizations with which you want to enable B2B collaboration. Unlike B2B collaboration with organizations in the same cloud, cross-cloud B2B collaboration requires that each organization be added to Azure AD cross-tenant access settings.

To add an organization
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the tenant ID for the organization and press Enter. (Note that you can't search on domain names from other clouds.)
1. Select **Add**.
1. The organization appears in the organizations list. At this point, all access settings for this organization are inherited from your default settings.

New organizations inherit B2B collaboration settings from the default. If your default settings block B2B collaboration or if you want to limit collaboration to specific users or groups, update the organization's inbound and outbound settings.

##### Configure inbound settings for the organization

Use the inbound settings to specify which users or groups from the external organization can access resources in your organization.

To configure inbound settings for an organization
1. Select the inbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. On the **External users and groups** tab, choose **Allow access** and **All <organization> users and groups**. (You can choose **Select <organization> users and groups** if you want to limit access to specific users and groups, such as those who have signed a non-disclosure agreement.)
1. If you want to limit guest access to Microsoft 365, you can select the **Office 365** application on the **Applications** tab.
1. Select **Save** and close the **Inbound access settings** blade.

##### Configure outbound settings for the organization

Use the outbound settings to specify which users or groups from the external organization can access resources in your organization.

To configure outbound settings for an organization
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. On the **Users and groups** tab, choose **Allow access** and set an **Applies to** of all users, or select the users or groups that you want to allow to access the external organization.
1. Select **Save**, choose **Yes** to confirm, and close the **Outbound access settings** blade.

## Related topics

[Configure Microsoft cloud settings for B2B collaboration](/azure/active-directory/external-identities/cross-cloud-settings)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

