---
title: Onboard trusted vendors to collaborate in Microsoft 365
author: DaniEASmith
ms.author: danismith
manager: jtremper
ms.date: 08/14/2023
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
ms.localizationpriority: medium
f1.keywords: NOCSH
recommendations: false
description: Learn how to onboard trusted vendors to collaborate in Microsoft 365.
---

# Onboard trusted vendors to collaborate in Microsoft 365

If your organization has an approval process for external vendors or other organizations, you can use features in Microsoft Entra ID and Teams to block access from people in unapproved organizations and add new organizations as they're approved.

By using domain allowlists, you can block the domains of organizations that haven't been approved through your internal processes. This can help ensure that users in your organization to only collaborate with approved vendors.

This article describes the features you can use as part of your approval process for onboarding new vendors.

If you haven't configured guest sharing for your organization, see [Collaborate with guests in a site](collaborate-in-site.md) or [Collaborate with guests in a team (IT Admins)](collaborate-as-team.md).

<a name='sharepoint-and-onedrive-integration-with-azure-ad-b2b'></a>

#### SharePoint and OneDrive integration with Microsoft Entra B2B

The procedures in this article assume that you've enabled [SharePoint and OneDrive integration with Microsoft Entra B2B](/sharepoint/sharepoint-azureb2b-integration). If you haven't enabled Microsoft Entra B2B integration for SharePoint and OneDrive, Microsoft Entra B2B domain allowlists and blocklists don't affect file and folder sharing. In this case, use [Restrict sharing of SharePoint and OneDrive content by domain](/sharepoint/restricted-domains-sharing).

<a name='allow-the-vendors-domain-in-azure-ad-external-collaboration-settings'></a>

## Allow the vendor's domain in Microsoft Entra external collaboration settings

With Microsoft Entra external collaboration settings, you can allow or block invites to certain domains. By creating an allowlist, you allow guest invitations only to those domains and all others are blocked. You can use this to allow guest invitations to vendors that you've approved while blocking those to vendors you haven't.

To allow sharing invitations only from specified domains:

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as an [External Identity Provider Administrator](/entra/identity/role-based-access-control/permissions-reference#external-identity-provider-administrator).
1. Expand **Identity**, and then expand **External Identities**.
1. Select **External collaboration settings**.
1. Under **Collaboration restrictions**, select **Allow invitations only to the specified domains**, and then type the domains that you want to allow.
1. Select **Save**.

    ![Screenshot of collaboration restrictions settings in Microsoft Entra ID.](../media/azure-ad-allow-only-specified-domains.png)

For more information about using allowlists or blocklists in Microsoft Entra ID, see [Allow or block invitations to B2B users from specific organizations](/azure/active-directory/external-identities/allow-deny-list)

## Allow domains for other Microsoft 365 organizations

If your approved vendor also uses Microsoft 365, there are additional settings in Microsoft Entra ID and Teams that you can configure to manage these domains and create a more integrated experience for your users.

By adding the vendor organization to Microsoft Entra cross-tenant access settings, you can specify:

- Which users in the vendor organization can be invited to your organization
- Which users in the vendor organization can participate in shared channels in Microsoft Teams
- Which applications those users have access to in your organization
- Whether your conditional access policies will accept claims from other Microsoft Entra organizations when users from the other organization access your resources.

By adding the vendor organization to the allowlist for Teams external access:

- Users in your organization and the vendor organization can chat and meet without the vendor having to log in as a guest.

<a name='allow-the-vendors-domain-in-azure-ad-cross-tenant-access-settings'></a>

### Allow the vendor's domain in Microsoft Entra cross-tenant access settings

To specify settings such as who can be invited from the vendor organization and what applications they can use, first add the organization in Microsoft Entra cross-tenant access settings.

To add an organization:

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as an [External Identity Provider Administrator](/entra/identity/role-based-access-control/permissions-reference#external-identity-provider-administrator).
1. Expand **Identity**, and then expand **External Identities**.
1. Select **Cross-tenant access settings**.
1. Select **Organizational settings**.
1. Select **Add organization**.
1. On the **Add organization** pane, type the full domain name (or tenant ID) for the organization.
1. Select the organization in the search results, and then select **Add**.

    ![Screenshot of cross-tenant access settings in Microsoft Entra ID with two external organizations configured.](../media/cross-tenant-access-settings.png)

To specify who your users can invite as guests from the vendor organization:

1. On the **Organizational settings** tab, select the **Inbound access** link for the organization you want to configure.
1. On the **B2B collaboration** tab, select **Customize settings**
1. On the **External users and groups** tab, choose **Select \<organization\> users and groups**, and then select **Add external users and groups**.
1. Add the IDs of the users and groups that you want to include, and then select **Submit**.
1. Select **Save**.

    ![Screenshot of an allowed group in the inbound cross-tenant access settings for an external organization.](../media/cross-tenant-inbound-allow-group.png)

To specify which applications guests from the vendor organization can use:

1. On the **Organizational settings** tab, select the **Inbound access** link for the organization you want to configure.
1. On the **B2B collaboration** tab, select **Customize settings**
1. On the **Applications** tab, choose **Select applications**, and then select **Add Microsoft applications** or **Add other applications**.
1. Select the applications that you want to allow, and then choose **Select**.
1. Select **Save**.

    ![Screenshot of an allowed application in the inbound cross-tenant access settings for an external organization.](../media/cross-tenant-inbound-allow-application.png)

For more information about the options available in cross-tenant access settings, including accepting conditional access claims from other organizations, see [Configure cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration).

If you plan to use Teams shared channels with the vendor organization, both organizations must set up cross-tenant access settings for Microsoft Entra B2B direct connect. For details, see [Collaborate with external participants in a shared channel](/microsoft-365/solutions/collaborate-teams-direct-connect).

#### Allow the vendor's domain in Teams external access

To allow users in your organization and the vendor organization to chat and meet without the vendor having to log in as a guest, allow the domain in Teams external access.

To allow an organization in Teams external access:

1. In the Teams admin center, expand **Users**, and then select **External access**.
1. Under **Choose which domains your users have access to**, choose **Allow only specific external domains**.
1. Select **Allow domains**.
1. In the **Domain** box, type the domain that you want to allow and then select **Done**.
1. If you want to allow another domain, select **Add a domain**.
1. Select **Save**.

    ![Screenshot of Teams external access settings for Teams and Skype for Business users in external organizations with one allowed domain.](../media/teams-external-access-allowed-domain.png)

The external access settings page in the Teams admin center includes settings for Teams accounts not managed by an organization and Skype users. You can turn these off if these accounts don't meet your organization's requirements for approved vendors.

For more information about Teams external access options, see [Manage external meetings and chat with people and organizations using Microsoft identities](/microsoftteams/trusted-organizations-external-meetings-chat).

## Limit who can invite guests

You can restrict which users in your organization can invite guests from your trusted vendors. This can be useful if guest invites require approval or if you want your users to do a training course before being allowed to invite guests. For information on how to do this, see [Limit who can invite guests](limit-who-can-invite-guests.md).

## Prevent unauthenticated access

There are two features that allow someone from outside your organization to access resources in your organization without signing in:

- Anonymous meeting join
- Unauthenticated file and folder sharing

If your requirements for trusted vendors require everyone to sign in before accessing your organization's resources, you can turn these options off.

To prevent people from joining meetings as anonymous participants, you can turn off **Anonymous users can join a meeting** in Teams meeting policies. For more information, see [Manage anonymous participant access to Teams meetings (IT admins)](/microsoftteams/anonymous-users-in-meetings).

To prevent unauthenticated file and folder sharing, you must prevent the use of *Anyone* sharing links. You can do this for your entire organization or for specific SharePoint sites. For more information, see [Manage sharing settings for SharePoint and OneDrive in Microsoft 365](/sharepoint/turn-external-sharing-on-or-off) and [Change the sharing settings for a site](/sharepoint/change-external-sharing-site).

## Related topics

[Microsoft Entra External ID documentation](/azure/active-directory/external-identities/)

[Use guest access and external access to collaborate with people outside your organization](/microsoftteams/communicate-with-users-from-other-organizations)

[Microsoft Entra terms of use](/azure/active-directory/conditional-access/terms-of-use)

[Allow only members in specific security groups to share SharePoint and OneDrive files and folders externally](/sharepoint/manage-security-groups)
