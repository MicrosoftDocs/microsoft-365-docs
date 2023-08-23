---
title: Synchronize users in multi-tenant organizations in Microsoft 365 (Preview)
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 08/17/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn how to manage user sync in multi-tenant organizations in Microsoft 365.
---

# Synchronize users in multi-tenant organizations in Microsoft 365 (Preview)

> [!NOTE]
> Multi-tenant organizations in Microsoft 365 is available in [targeted release](/microsoft-365/admin/manage/release-options-in-office-365).

For users in your tenant to be able to collaborate with those in other tenants, you must synchronize your users to the other tenants.

We recommend that you [set up security groups in Azure AD](/azure/active-directory/fundamentals/how-to-manage-groups) and add the users that you want to synchronize. Note that users must be members of the security group - owners of the group aren't synchronized.

There are two ways to set up user synchronization:

- Share your users with other tenants in a multi-tenant organization by using the Microsoft 365 admin center (covered in this article)
- [Configure user synchronization in Azure AD](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure)

Both methods use cross-tenant synchronization in Azure AD.

If you want to synchronize the same users with all the other tenants in a multi-tenant organization, we recommend sharing users in the Microsoft 365 admin center. This will create the necessary configurations in Azure AD for you.

If you want to synchronize different users to different tenants, then you must configure cross-tenant synchronization directly in Azure AD.

While you can create multiple cross-tenant synchronization configurations for a single external tenant, we recommend that you only use one for ease of administration.

> [!NOTE]
> It may take up to 24 hours for synced users to be available in Microsoft 365 services such as Teams and SharePoint.

For more information about cross-tenant synchronization, see [What is cross-tenant synchronization?](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-overview).

If you have issues with user synchronization check the [provisioning logs in Azure Active Directory](/azure/active-directory/reports-monitoring/concept-provisioning-logs).

## User property synchronization

When you set up user synchronization with another tenant in a multi-tenant organization, the following user properties are synchronized:

|Property|Property|
|:-------|:-------|
|accountEnabled|physicalDeliveryOfficeName|
|alternativeSecurityIds|postalCode|
|city|preferredLanguage|
|country|showInAddressList|
|department|state|
|displayName|streetAddress|
|employeeId|surname|
|givenName|telephoneNumber|
|IsSoftDeleted|userPrincipalName|
|jobTitle|UserType (member)|
|mailNickname||

You can change the properties that are synchronized after the synchronization has been configured. For more information, see [Configure cross-tenant synchronization](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure#step-9-review-attribute-mappings).

## Users synchronized to your tenant from other tenants

Users synchronized to your tenant from other tenants in your multi-tenant organization are synchronized as [Azure AD members rather than guests](/azure/active-directory/external-identities/user-properties).

As members, people from other tenants have a more seamless collaboration experience. This includes access to files using [*people in your organization* sharable links](/sharepoint/shareable-links-anyone-specific-people-organization). (Consider using [sensitivity labels](/purview/sensitivity-labels) if you need to limit who can access a file with a *people in your organization* link.)

If some people from the other tenant already have guest accounts in your directory, the synchronization process doesn't change their user type to member. You can change these users' user type to member by [updating the user properties in Azure AD](/azure/active-directory/fundamentals/how-to-manage-user-profile-info).

## Set up initial user synchronization for a multi-tenant organization

To synchronize identities to other tenants in a multi-tenant organization

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Share users**.
1. Select **Select users and groups to share**.
1. Choose the security group that you created, and then select **Save**.
1. Select **Yes** to confirm.

This creates a cross-tenant synchronization configuration in Azure AD for each tenant in your multi-tenant organization. The synchronization configurations are named *MTO_Sync_\<TenantID\>*.

## Set up user synchronization with newly added tenants

If you add additional tenants to your multi-tenant organization, you need to set up user synchronization with those tenants.

To set up user synchronization with newly added tenants

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Share users**.
1. Select **Share current user scope**.
1. Select **Yes** to confirm.

## Change which users are synchronized with other tenants

You can change which users are synchronized to other tenants in your multi-tenant organization.

To change which users are synchronized to other tenants

1. In the Microsoft 365 admin center, expand **Settings**.
1. Select **Org settings**.
1. On the **Organization profile** tab, select **Multitenant collaboration**.
1. Select **Share users**.
1. Select **Edit shared users and groups**.
1. Update the users and groups that you want to sync to other tenants and then select **Save**.
1. Select **Yes** to confirm.

This procedure updates the *MTO_Sync_\<TenantID\>* synchronization configurations in Azure AD for each tenant in your multi-tenant organization.

## Related topics

[Troubleshooting tips for multi-tenant organizations](/azure/active-directory/multi-tenant-organizations/cross-tenant-synchronization-configure#troubleshooting-tips)

[Known issues for provisioning in Azure Active Directory](/azure/active-directory/app-provisioning/known-issues?pivots=cross-tenant-synchronization)

[Plan for multi-tenant organizations in Microsoft 365](plan-multi-tenant-org-overview.md)

[Set up a multi-tenant org in Microsoft 365](set-up-multi-tenant-org.md)

[Join or leave a multi-tenant organization in Microsoft 365](join-leave-multi-tenant-org.md)

[Scoping users or groups to be provisioned with scoping filters](/azure/active-directory/app-provisioning/define-conditional-rules-for-provisioning-user-accounts?pivots=cross-tenant-synchronization)
