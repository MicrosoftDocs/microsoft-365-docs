---
title: "Limit who can be invited by an organization"
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
description: Learn how to limit which of your users can be invited as a guest or shared channel participant to a specific organization.
---

# Limit who can be invited by an organization

If you collaborate with another organization and want to limit who can be invited to that organization as a guest or a shared channel member in Teams, you can specify who can be invited in the cross-tenant access settings in Azure Active Directory.

> [!NOTE]
> Changes to cross-tenant access settings may take six hours to take effect.

## Create a security group

The easiest way to specify who can be invited to another organization is to use a security group. You can use a security group with a defined membership or a dynamic security group. You can use an existing security group or create a new one for this purpose.

To create a security group
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. On the **Active Directory** page, select **Groups** and then select **New group**.
1. Choose **Security** for the **Group type**.
1. Type a **Group name.** 
1. Optionally, add a description for the group.
1. For **Azure AD roles can be assigned to the group**, choose **No**.
1. Select a pre-defined **Membership type (required)**.
1. Add group owners and members or a [dynamic query](/azure/active-directory/enterprise-users/groups-dynamic-membership) if you're using dynamic user membership.
1. Select **Create**. Your group is created and ready for you to add members.

## Add an organization

To define collaboration rules with another organization, you have to add that organization to the Azure AD cross-tenant access settings. If you haven't already added the organization, follow this procedure to add it.

To add an organization
1. In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.
1. The organization appears in the **Organizational settings** list. At this point, all access settings for this organization are inherited from your default settings.

## Choose who can be invited by an organization

There are two options for limiting who can be invited to an organization:

- Limit who can be invited as a guest. This prevents users from being added to the other organization's Azure AD as a guest. It prevents sharing of files, folders, sites, teams, and Microsoft 365 groups with people who aren't in the security group.
- Limit who can be added to an external shared channel. This prevents people who aren't in the security group from being added to shared channels in the other organization.

In [Azure Active Directory](https://aad.portal.azure.com), select **External Identities**, and then select **Cross-tenant access settings (preview)**.

To limit who can be invited as a guest
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B collaboration** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose **Select external users and groups**.
1. Select the link to add users and groups.
1. Search for and select the security group that you want to use.
1. Choose **Select**.
1. Select **Save** and close the **Outbound access settings** blade.


To limit who can be invited as a shared channel participant
1. Select the outbound access link for the organization that you want to modify.
1. On the **B2B direct connect** tab, choose **Customize settings**.
1. Under **Access status**, choose **Allow access**.
1. Under **Target**, choose **Select external users and groups**.
1. Select the link to add users and groups.
1. Search for and select the security group that you want to use.
1. Choose **Select**.
1. Select **Save** and close the **Outbound access settings** blade.

## Related topics

[B2B direct connect overview](/azure/active-directory/external-identities/b2b-direct-connect-overview)

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

[Limit organizations where users can have guest accounts](limit-organizations-where-users-have-guest-accounts.md)

[Limit guest sharing to specific organizations](limit-guest-sharing-to-specific-organization.md)
