---
title: "Step 4 - Forward a former employee's email to another employee or convert to a shared mailbox"
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
description: "Forward a former employee's email to another employee or convert it to a shared mailbox where several people are able to access it instead of one person."
---

# Step 4 - Forward a former employee's email to another employee or convert to a shared mailbox

If an employee leaves your organization, and you don't want to lose existing email or calendar information, you can either assign the former employee's email address to another employee, or convert the former employee's mailbox to a shared mailbox.

> [!NOTE]
> You must have appropriate permissions through a role, such as [Microsoft 365 Backup Administrator](/entra/identity/role-based-access-control/permissions-reference#microsoft-365-backup-administrator) or [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator) to perform the tasks in this article. 

## Convert former employee's mailbox to a shared mailbox

When you convert a user's mailbox to a shared mailbox, all of the existing email and calendar are retained in a shared mailbox that several people can acess. You can convert a shared mailbox back to an individual user's private mailbox later if needed.

- Creating a shared mailbox can be a less expensive way to go because you don't have to pay for a license **as long as the mailbox is smaller than 50 GB**. If it is over 50 GB, you need to assign a license to it.
- If you convert the mailbox to a shared mailbox, all the old email is available, too. This configuration can take up a lot of space.
- If you set up email forwarding, only *new* emails sent to the former employee's email address are sent to the current employee.

Follow these steps to [convert the user's mailbox to a shared mailbox](../email/convert-user-mailbox-to-shared-mailbox.md).

## Forward a former employee's email to another employee

 > [!IMPORTANT]
 > If you're setting up email forwarding or a shared mailbox, don't delete the former employee's account. The account needs to be there to anchor the email forwarding or shared mailbox.

1. In the [Microsoft 365 admin center](https://admin.cloud.microsoft/), go to **Users** > **Active users**. (Or, go directly to the [Active users page](https://go.microsoft.com/fwlink/p/?linkid=834822).)

2. Select the name of the former employee, and then select the **Mail** tab.

3. Under **Email Forwarding**, select **Manage email forwarding**.

4. Select **Forward all emails sent to this mailbox**. In the **Forwarding email address** box, type the email address of the current employee who's going to get the email. Choose whether to keep a copy of the forwarded email in the former employee's mailbox.

5. Select **Save changes**. Remember not to delete the former employee's account.

> [!IMPORTANT]
> In scenarios where the mailbox is inactive due to compliance reasons, mail forwarding or converting the mailbox to a shared mailbox doesn't work.

### Cancel Outlook meetings

Make sure to cancel all meetings that the former user had on their calendar. This lets people remove the meetings created by the former user.

If the person had meetings that booked equipment or rooms, they won't be available to be booked until those meetings are canceled. Read [Delete an appointment or a meeting](https://support.microsoft.com/office/delete-an-appointment-or-a-meeting-2703bfdb-9a07-4396-be3b-a9f79438455b) for the steps.

## Related content

- [Open and use a shared mailbox in Outlook](https://support.microsoft.com/office/open-and-use-a-shared-mailbox-in-outlook-d94a8e9e-21f1-4240-808b-de9c9c088afd)

- [Access another person's mailbox](https://support.microsoft.com/office/access-another-person-s-mailbox-a909ad30-e413-40b5-a487-0ea70b763081)

- [Exchange admin center in Exchange Online](/exchange/exchange-admin-center)

- [Manage another person's mail and calendar items](https://support.microsoft.com/office/manage-another-person-s-mail-and-calendar-items-afb79d6b-2967-43b9-a944-a6b953190af5)
