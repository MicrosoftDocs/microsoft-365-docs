---
title: "Step 6 - Remove and delete a Microsoft 365 for business license from a former employee"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/05/2026
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- m365solution-removeemployee
description: "You can remove a former employee's Microsoft 365 license, and then delete it from your subscription or assign the license to another user."
---

# Step 6 - Remove and delete a Microsoft 365 for business license from a former employee

If an employee leaves your organization, and you don't want to continue to pay for their Microsoft 365 license, you can unassign that license and then delete it from your subscription. You can reassign a license to another user if you don't want to delete it. This article describes how to remove a license from a user and delete it.

Before you remove a license, you _must_ remove all holds for the user. For more information about holds, see [Remove an In-Place Hold in Exchange Online](/exchange/security-and-compliance/create-or-remove-in-place-holds).

If the mailbox needs to be accessed by authorized people who have been granted eDiscovery permissions for compliance or legal reasons, it must be assigned an Exchange Online Plan 2 license (or an Exchange Online Plan 1 license with an Exchange Online Archiving add-on license) so that a hold can be applied to the mailbox before it's deleted. After the user account is deleted, any Exchange Online license associated with the user account will be available to assign to a new user.
  
When you remove a license, that user's data is held for 30 days. You can [access](get-access-to-and-back-up-a-former-user-s-data.md) the data, or [restore](restore-user.md) the account if need be. 

After 30 days, the user's content (except for documents stored in SharePoint) is permanently deleted from Microsoft 365 and can't be recovered.

> [!NOTE]
> You must have appropriate permissions through a role, such as [License Administrator](/entra/identity/role-based-access-control/permissions-reference#license-administrator) or [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator) to perform the tasks in this article. 

## Remove licenses

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), go to **Users** > **Active users**. (Or go directly to the [Active users page](https://go.microsoft.com/fwlink/p/?linkid=834822).)

2. Select the name of the former employee, and then select the **Licenses and Apps** tab.

3. Clear the check boxes for the licenses you want to remove, and then select **Save changes**.

## Reduce the number of licenses

To reduce the number of licenses you're paying for until you hire another person, do the following steps:

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), go to **Billing** > **Your products**. (Or, go directly to the [Your products page](https://go.microsoft.com/fwlink/p/?linkid=842054).)

2. Select the subscription from which you want to remove licenses.

3. On the subscription page, select **Remove licenses**.

4. In the **Remove licenses** pane, specify when the following information:

   - When the change could take effect
   - What the new total license quantity should be

5. Select **Save**.
  
## How the deleted employee account affects their PSTN number

When you remove a user's license from your Microsoft 365 subscription, and your organization is using [Public Switched Telephone Network (PSTN) connectivity](/microsoftteams/pstn-connectivity), the PSTN calling number associated with the former employee is released. You can then assign it to another user. See [Manage phone numbers for users](/microsoftteams/assign-change-or-remove-a-phone-number-for-a-user?tabs=assign-by-number-list).
  
If the user belongs to a queue group, they're no longer a viable target of the call queue agents. We recommend removing that user from any groups that are associated with the call queue.

## Set up call forwarding to people in your organization

If you need to set up call forwarding for the terminated employee's phone number, the call forwarding setting under calling policies can be set up forwarding. Incoming calls can be forwarded to other users or can ring another person at the same time. For more information, see [Calling policies in Microsoft Teams](/microsoftteams/teams-calling-policy).

## Related content

- [Add users and assign licenses in Microsoft 365](add-users.md)

- [Assign or unassign licenses for users in the Microsoft 365 admin center](../manage/assign-licenses-to-users.md)

- [Teams calling overview](/microsoftteams/cloud-voice-landing-page)

- [Enterprise user management (Microsoft Entra ID)](/entra/identity/users/directory-overview-user-model)