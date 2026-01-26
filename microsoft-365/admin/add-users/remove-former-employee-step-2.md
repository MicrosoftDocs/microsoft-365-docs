---
title: "Step 2 - Save the contents of a former employee's mailbox"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 10/28/2025
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
description: "Once you've blocked a user from being able to log into your organization, learn two ways you can save the contents of the former employee's mailbox."
---

# Step 2 - Save the contents of a former employee's mailbox

If a former employee is subject to a litigation hold or in-place hold, you can export their Outlook content to a `.pst` file. 

You must have appropriate permissions through a role, such as [Microsoft 365 Backup Administrator](/entra/identity/role-based-access-control/permissions-reference#microsoft-365-backup-administrator) or [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator) to perform the tasks in this article. 

## Place hold or export user's data to a .pst file

If a former employee is blocked from signing into your organization's Microsoft 365 subscription, and it's important that you don't lose their data, you can save the contents of the former employee's mailbox. There are two ways you can save the contents of the former employee's mailbox.
  
- **Place a litigation hold or an in-place hold on the mailbox** before the deleting the user account. This is much more complicated than the other option, but is worth doing if your Enterprise plan includes archiving and legal hold, litigation is a possibility, and you have a technically strong IT department.

   After you convert the mailbox to an inactive mailbox, administrators, compliance officers, or records managers can use In-Place eDiscovery tools in Exchange Online to access and search the contents.

   Inactive mailboxes can't receive email and aren't displayed in your organization's shared address book or other lists.

   To learn how to place a hold on a mailbox, see [Manage inactive mailboxes in Exchange Online](../../compliance/create-and-manage-inactive-mailboxes.md).

**OR**

- **Add the former employee's email address to your version of Outlook** (desktop app), and then export the data to a `.pst` file. You can import the data to another email account as needed. See [Step 4 - Give another employee access to OneDrive and Outlook data](remove-former-employee-step-4.md).

## Related content

- [Exchange admin center in Exchange Online](/exchange/exchange-admin-center)

- [Restore a user](restore-user.md)

- [Security and compliance for Exchange Online](/exchange/security-and-compliance/security-and-compliance)
