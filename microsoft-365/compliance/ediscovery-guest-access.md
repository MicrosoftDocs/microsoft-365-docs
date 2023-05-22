---
title: "Guest access in eDiscovery (Premium) (preview)"
description: "Learn about guest access in eDiscovery (Premium)."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.reviewer: swethaiyer
ms.date: 05/22/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
---

# Guest access in eDiscovery (Premium) (preview)

With guest access you can provide access to an eDiscovery Premium case to people outside your organization. You can invite guests users to eDiscovery (Premium) cases just like you can invite guests into your Teams environment.

A guest is someone who doesn't have a work or school account with your organization. For example, guests may include external partners, vendors, suppliers, or consultants. Anyone who isn't part of your organization can be added as guest for an eDiscovery (Premium) case. This access means that anyone with an Azure Active Directory account or personal email account (Outlook, Gmail, or others) can participate as a guest in eDiscovery and have access to specific eDiscovery (Premium) cases.

Guest access in eDiscovery uses [Azure B2B technology](/azure/active-directory/external-identities/what-is-b2b), which depends on an organization-wide Azure collaboration setting. When you invite a guest to eDiscovery, a guest account is created for them in Azure Active Directory. They're covered by the same compliance and auditing protection as other Microsoft 365 users. Guest access is subject to Azure AD and Microsoft 365 service limits.

> [!NOTE]
> eDiscovery guests are currently limited to *Reviewer* role group permission only. For more information about the reviewer role, see [Assign eDiscovery permissions in the Microsoft Purview compliance portal](/microsoft-365/compliance/ediscovery-assign-permissions#rbac-roles-related-to-ediscovery).

## Set up guest access

Setting up guest access in eDiscovery requires configuring other settings in Azure AD. To enable access to invite guests to eDiscovery cases, complete the following steps:

1. Check the [B2B external collaboration settings](/microsoft-365/solutions/collaborate-as-team#azure-external-collaboration-settings) to ensure that collaboration with guests isn't blocked. If the **Guest invite settings** is set to *No one in the organization can invite guest users including admins* then inviting guest into eDiscovery won't work. Contact your system administrator to ensure [this setting is properly configured](/azure/active-directory/external-identities/external-collaboration-settings-configure). You can view and update the collaboration setting using the *Authorization Policy* [API](/graph/api/resources/authorizationpolicy).

2. Depending on the specific configuration in Step 1, eDiscovery administrators may or may not need additional roles to approval a guest access request submitted from the eDiscovery user.

    - If the *Anyone in the organization can invite guest users including guests and non-admins (most inclusive)* or *Member users and users assigned to specific admin roles can invite guest users including guests with member permission* options are selected, then eDiscovery administrators can approve invitation requests without additional roles.
    - If *Only users assigned to specific admin roles can invite guest users* is selected, then the eDiscovery administrator who would approve the invitation request requires the *Invite guest* role to approve and trigger the invitation email to the guest. Refer to [Assign Azure AD roles to users - Microsoft Entra | Microsoft Learn](https://learn.microsoft.com/en-us/azure/active-directory/roles/manage-roles-portal) on how to add the ‘Guest Inviter’ role to users or refer this link to add the Guest Inviter role to the user through PowerShell – [Assign the Guest Inviter role to a user](https://learn.microsoft.com/en-us/azure/active-directory/external-identities/external-collaboration-settings-configure#assign-the-guest-inviter-role-to-a-user).
## How to enable Guest access inside eDiscovery
3. eDiscovery admins must enable guest access in eDiscovery (Premium) global settings. In the [compliance portal](https://compliance.microsoft.com), navigate to **eDiscovery** > **Premium** > **eDsicovery (Premium) settings** > **Guest users (preview)** and toggle **Guest access** to *On*.

Now eDiscovery managers and admins can initiate the guest invitation process within any eDiscovery (Premium) case.

## Invite guests to an eDiscovery (Premium) case

To invite guests to an eDiscovery (Premium) case, complete the following steps:

1. In the [compliance portal](https://compliance.microsoft.com), navigate to **eDiscovery** > **Premium** > **eDiscovery (Premium) cases** and select the case you want to invite guests to.
2. In the selected case, select the **Settings** tab and then select **Access & permissions**.
3. In the **Guest users** section, select **Add**.
4. On the **Invite guest** flyout pane, complete the following fields:

    - **Full name**: Enter the full name of the guest you want to invite.
    - **Email address**: Enter the email address of the guest you want to invite.
    - **Organization**: Enter the organization of the guest you want to invite.
    - **Guest role**: Select the role you want to assign to the guest. The guest is currently limited to *Reviewer* role group permission only.
    - **Justification**: Explain why this person needs access to the case.
5. Select **Invite** to submit the invitation request for review and approval by an eDiscovery admin.


## Approve guest access requests

After guest invitations are submitted, eDiscovery admins must approve the requests before the guest can access the case. To approve guest access requests, eDiscovery managers will complete the following steps:

1. eDiscovery managers are notified of pending invitation requests on the **Overview** tab in eDiscovery (Premium).
2. To review and approve or deny the request, navigate to **eDiscovery** > **Premium** > **eDsicovery (Premium) settings** > **Guest users (preview)**. Select the guest request and select **Create account** or **Deny**. 4.	If the guest user is being added to the tenant for the first time, eDiscovery admin will need to perform a 2-step approval process. They will first need to approve creation of an account which will take up to 24 hours. After 24 hours, eDiscovery Admin can approve access to the guest user to the case. For future access requests to other cases for the same guest user, only one step approval is required.

In you encounter an error when approving the guest user access to a case, check the following:

- The guest user’s email is not disabled, blocked or deleted by the tenant admin.
- If there are any members in the *Reviewer* role group whose AAD account has been deleted. Currently, an error will occur when adding a new member to a role group that has any deleted users. If the *Reviewer* role group has any deleted users, [remove them from the role group](/microsoft-365/compliance/microsoft-365-compliance-center-permissions#remove-users-or-groups-from-a-microsoft-purview-built-in-role-group) and retry the guest user approval.

## Accepting guest user invitations

After the request is approved by the eDiscovery admin, the guest user receives a welcome email from *Microsoft Invitations*. This email contains information about the eDiscovery invitation and a link where the guest can accept the invite and sign in. The guest user must select the unique link provided in the email or copy/paste the link in a browser to log into the specific eDiscovery organization.

![Email invitation for guest access to an eDiscvoery (Premium case).](..\media\ediscovery-guest-user-invite-email.png) 

Guests that have a work or school account in Azure Active Directory can accept the invitation and authenticate immediately. Other users are sent a one-time passcode to validate their identity. You must ensure that the [one-time passcode setting](/azure/active-directory/external-identities/one-time-passcode) is enabled in your organization.```

After accepting the invitation and authenticating, the guest can participate in the eDiscovery case like an internal reviewer of the case and perform review activities such as querying, filtering, tagging, redaction, downloading single items for review, and more.

## Removing guest access

An eDiscovery admin can remove a guest user’s access to a case from eDiscovery Premium settings page. To remove guest access for a user, eDiscovery admins will complete the following steps:

1. To review and approve or deny the request, navigate to **eDiscovery** > **Premium** > **eDsicovery (Premium) settings** > **Guest users (preview)**. 
2. Select the guest user and select **Remove** from the flyput pane.

The guest user will continue to have access to other cases that they have been added to. When a guest user is removed from the last case they have access to, they are removed from the *Reviewer* role group and won't have access to any cases in eDiscovery (Premium).

The guest user will continue to have an AAD guest account in the organization. A regular review and clean-up of guest user accounts from AAD is recommended.