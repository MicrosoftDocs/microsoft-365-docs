---
title: Onboard trusted vendors to collaborate in Microsoft 365
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.date: 07/24/2023
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
description: Learn how to onboard trusted vendors to collaborate in Microsoft 365.
---

# Onboard trusted vendors to collaborate in Microsoft 365

If your organization has an approval process for access to Microsoft 365 by external organizations, you can use features in Azure Active Directory and Teams to block access from unapproved organizations and add new organizations as they're approved.




[Collaborate with guests in a team (IT Admins)](collaborate-as-team.md)

#### SharePoint and OneDrive integration with Azure AD B2B

[SharePoint and OneDrive integration with Azure AD B2B](/sharepoint/sharepoint-azureb2b-integration)

[Restrict sharing of SharePoint and OneDrive content by domain](/sharepoint/restricted-domains-sharing)



## Allow the vendor's domain in Azure AD external collaboration settings



To allow sharing invitations only from specified domains
1. In Azure Active Directory, under **Identity**, expand **External identities**, and then choose **External collaboration settings**.
1. Under **Collaboration restrictions**, select **Allow invitations only to the specified domains**, and then type the domains that you want to allow.
1. Select **Save**.

    ![Screenshot of collaboration restrictions settings in Azure Active Directory.](../media/azure-ad-allow-only-specified-domains.png)



[Allow or block invitations to B2B users from specific organizations](/azure/active-directory/external-identities/allow-deny-list)

## Allow domains for other Microsoft 365 organizations

If the external organization you're adding also uses Microsoft 365, there are additional settings you can configure to manage these domains and create a more integrated experience for your users.


#### Allow the vendor's domain in Azure AD cross-tenant access settings

Default on is fine. If already configured, check settings. Only for other AAD organizations.


![Screenshot of cross-tenant access settings in Azure AD with two external organizations configured.](../media/cross-tenant-access-settings.png)


![Screenshot of an allowed group in the inbound cross-tenant access settings for an external organization.](../media/cross-tenant-inbound-allow-group.png)


![Screenshot of an allowed application in the inbound cross-tenant access settings for an external organization.](../media/cross-tenant-inbound-allow-application.png)


[Configure cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration)



#### Allow the vendor's domain in Azure AD B2B direct connect

If you're using shared channels, then configure the shared channel settings.

[Collaborate with external participants in a shared channel (IT Admins)](collaborate-teams-direct-connect.md)

#### Allow the vendor's domain in Teams external access


![Screenshot of Teams external access settings for Teams and Skype for Business users in external organizations with one allowed domain.](../media/teams-external-access-allowed-domain.png)


[Manage external meetings and chat with people and organizations using Microsoft identities](/microsoftteams/trusted-organizations-external-meetings-chat)


**Turn off Unmanaged Teams chat access and Skype chat access**


**People in my org can communicate with Teams users whose accounts aren't managed by an organization**

**Allow users in my organization to communicate with Skype users**

## Prevent unauthenticated access






[Manage sharing settings for SharePoint and OneDrive in Microsoft 365](/sharepoint/turn-external-sharing-on-or-off)

[Manage anonymous participant access to Teams meetings (IT admins)](/microsoftteams/anonymous-users-in-meetings)



## Limit who can invite guests

Create a security group for people allowed to invite guests

The first step is to create a security group for the users who will be allowed to invite guests. Be sure to configure this group to allow an Azure AD role, and then assign it the Guest inviter role.

To create a security group for guest inviters
1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. On the **Active Directory** page, select **Groups** and then select **New group**.
1. Choose **Security** for the **Group type**.
1. Type a **Group name.** 
1. Optionally, add a description for the group.
1. For **Azure AD roles can be assigned to the group**, choose **Yes**.
1. Add group owners and members.
1. Under **Roles**, select **No roles selected**.
1. Search for and select the **Guest inviter** role, and then choose **Select**.
1. Select **Create**, and confirm that you want a group to which roles can be assigned. Your group is created and ready for you to add members.



![Screenshot of Azure AD guest invite settings restricted to specific admin roles.](../media/entra-guest-invite-settings-limited.png)

[Limit who can invite guests](limit-who-can-invite-guests.md)



[Azure Active Directory terms of use](/azure/active-directory/conditional-access/terms-of-use)


## Allow only members in specific security groups to share SharePoint and OneDrive files and folders externally



[Allow only members in specific security groups to share SharePoint and OneDrive files and folders externally](/sharepoint/manage-security-groups)

## Related topics

[Microsoft Entra External ID documentation](/azure/active-directory/external-identities/)

[Use guest access and external access to collaborate with people outside your organization](/microsoftteams/communicate-with-users-from-other-organizations)