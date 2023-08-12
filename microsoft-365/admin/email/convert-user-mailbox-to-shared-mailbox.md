---
title: "Convert a user mailbox to a shared mailbox"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkEXCHANGE
- business_assist
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 2e122487-e1f5-4f26-ba41-5689249d93ba
description: "Learn to convert a private mailbox to a shared mailbox that can be accessed by several people instead of by just one person. "
---

# Convert a user mailbox to a shared mailbox

When you convert a user's mailbox to a shared mailbox, all of the existing email and calendar is retained. Only now it's in a shared mailbox where several people will be able to access it instead of one person. At a later date, you can convert a shared mailbox back to a user (private) mailbox.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

**Here are some really important things that you need to know**:

- The user mailbox needs a license assigned to it before you convert it to a shared mailbox. Otherwise, you won't see the option to convert the mailbox. If you've removed the license, add it back so you can convert the mailbox. After converting the user mailbox to a shared mailbox, you can remove the license from the user's account.

- Without a license, shared mailboxes are limited to 50 GB. You might need to delete a bunch of large messages (say, messages with attachments) from the shared mailbox to shrink it down so you can remove the license.

  To increase the size limit to 100 GB, assign an Exchange Online Plan 2 license to the shared mailbox.

  If you assign an Exchange Online Plan 1 license and an Exchange Online Archiving add-on license to the shared mailbox, you can enable auto-expanding archiving for additional archive storage capacity.

- Don't delete the old user's account, because the account is required to anchor the shared mailbox. If you've already deleted the user account, see [Convert the mailbox of a deleted user](#convert-the-mailbox-of-a-deleted-user).

- You don't need to reset the account password of the user mailbox. However, if you don't reset the password, **the original username and password will continue to work on the shared mailbox** after the conversion is finished.

- Inbox rules are preserved after the user mailbox is converted to a shared mailbox.

- To put an In-Place Hold or a Litigation Hold on a shared mailbox, you must assign an Exchange Online Plan 2 license *or* an Exchange Online Plan 1 license and an Exchange Online Archiving add-on license to the shared mailbox.

## Use the Classic Exchange admin center to convert a mailbox

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Classic Exchange admin center</a>.

2. Select **Recipients** \> **Mailboxes**.

3. Select the user mailbox. Under **Convert to Shared Mailbox**, select **Convert**.

4. If the mailbox is smaller than 50 GB, you can remove the [license from the user](../manage/remove-licenses-from-users.md), and stop paying for it. Don't delete the user's account. The shared mailbox needs it there as an anchor. If you're converting the mailbox of an employee that's leaving your organization, you should take additional steps to make sure that they can no longer log in. For more information, see [Remove a former employee from Microsoft 365](../add-users/remove-former-employee.md).

For everything else you need to know about shared mailboxes, see [About shared mailboxes](about-shared-mailboxes.md) and [Create a shared mailbox](create-a-shared-mailbox.md).

## Use the New Exchange admin center to convert a mailbox

1. Go to the <a href="https://admin.exchange.microsoft.com/#/homepage" target="_blank"> Exchange admin center</a>.

2. Select **Recipients** \> **Mailboxes**.

3. Select the user mailbox. In the **Others** tab, select **Convert to shared mailbox**.

4. If the mailbox is smaller than 50 GB, you can remove the [license from the user](../manage/remove-licenses-from-users.md), and stop paying for it. Don't delete the user's account. The shared mailbox needs it there as an anchor. If you are converting the mailbox of an employee that is leaving your organization, you should take additional steps to make sure that they cannot log in anymore. Please see [Remove a former employee from Microsoft 365](../add-users/remove-former-employee.md).

For everything else you need to know about shared mailboxes, see [About shared mailboxes](about-shared-mailboxes.md) and [Create a shared mailbox](create-a-shared-mailbox.md).

## Convert the mailbox of a deleted user

After deleting a user account, follow these steps to convert their old mailbox to a share mailbox:

1. [Restore the user's account](../add-users/restore-user.md).

2. Make sure a Microsoft 365 license is assigned to it.

3. Reset the user's password.

4. Wait 20-30 minutes for their mailbox to be re-created.

5. Once the mailbox is re-created, remove the license from the user's mailbox. Don't delete the user's old mailbox. The shared mailbox needs it there as an anchor.

6. Add members to the shared mailbox.

## Convert a shared mailbox back to a user's (private) mailbox

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>.

2. Select **Recipients** \> **Mailboxes**.

3. Select the shared mailbox. Under **Convert to Regular Mailbox**, select **Convert**.

4. Go back to the admin center. Under **Users**, choose the user account associated with the old shared mailbox. Assign a license to the account, and then reset the password.

   It will take a few minutes for the mailbox to get set up, but after that, the person who's going to use that account is ready to go. When they sign in, they'll see the email and calendar items that used to be in the shared mailbox.

## Convert a user's mailbox in a hybrid environment

For more info about converting a user mailbox to a shared mailbox in an Exchange Hybrid environment, see:

- [Cmdlets to create or modify a remote shared mailbox in an on-premises Exchange environment](https://support.microsoft.com/office/cmdlets-to-create-or-modify-a-remote-shared-mailbox-in-an-on-premises-exchange-environment-9e83fb59-c001-729c-a4c0-b2964c154b49)
- [Shared mailboxes are unexpectedly converted to user mailboxes after directory synchronization runs in an Exchange hybrid deployment](/exchange/troubleshoot/user-and-shared-mailboxes/shared-mailboxes-unexpectedly-converted-to-user-mailboxes)

> [!NOTE]
> If you're a member of the Organization Management or Recipient Management role group, you can use the Exchange Management Shell to change a user mailbox to a shared mailbox on-premises. For example, `Set-Mailbox -Identity mailbox1@contoso.com -Type Shared`.

## Related content

[About shared mailboxes](about-shared-mailboxes.md) (article)\
[Create a shared mailbox](create-a-shared-mailbox.md) (article)\
[Configure a shared mailbox](configure-a-shared-mailbox.md) (article)\
[Remove a license from a shared mailbox](remove-license-from-shared-mailbox.md) (article)\
[Resolve issues with shared mailboxes](resolve-issues-with-shared-mailboxes.md) (article)
