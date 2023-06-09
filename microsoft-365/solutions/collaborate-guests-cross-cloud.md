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



## Prerequisites


See one of the following depending on your scenario:
- [Collaborate with guests on a document](collaborate-on-documents)
- [Collaborate with guests in a site](collaborate-in-site.md)
- [Collaborate with guests in a team](collaborate-as-team.md)


- **Obtain the partner's tenant ID.** To enable B2B collaboration with a partner's Azure AD organization in another Microsoft Azure cloud, you'll need the partner's tenant ID. Using an organization's domain name for lookup isn't available in cross-cloud scenarios.
- **Decide on inbound and outbound access settings for the partner.** Selecting a cloud in your Microsoft cloud settings doesn't automatically enable B2B collaboration. Once you enable another Microsoft Azure cloud, all B2B collaboration is blocked by default for organizations in that cloud. You'll need to add the tenant you want to collaborate with to your Organizational settings. At that point, your default settings go into effect for that tenant only. You can allow the default settings to remain in effect. Or, you can modify the inbound and outbound settings for the organization.
- **Obtain any required object IDs or app IDs.** If you want to apply access settings to specific users, groups, or applications in the partner organization, you'll need to contact the organization for information before configuring your settings. Obtain their user object IDs, group object IDs, or application IDs (*client app IDs* or *resource app IDs*) so you can target your settings correctly.

> [!NOTE]
> Users from another Microsoft cloud must be invited using their user principal name (UPN). [Email as sign-in](../authentication/howto-authentication-use-email-signin.md#b2b-guest-user-sign-in-with-an-email-address) is not currently supported when collaborating with users from another Microsoft cloud.

## Enable the cloud in your Microsoft cloud settings

In your Microsoft cloud settings, enable the Microsoft Azure cloud you want to collaborate with.

1. Sign in to [Azure Active Directory](https://aad.portal.azure.com) using a Global administrator or Security administrator account.
1. Select **External Identities**, and then select **Cross-tenant access settings**.
1. Select **Microsoft cloud settings**.
1. Select the checkboxes next to the external Microsoft Azure clouds you want to enable.

   ![Screenshot showing Microsoft cloud settings.](../media/cross-cloud-settings.png)

### Add an organization

Once you've enabled the clouds you want to collaborate with, you need to add the specific organizations with which you want to enable B2B collaboration.

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

[Configure cross-tenant access settings for B2B direct connect](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-direct-connect)

