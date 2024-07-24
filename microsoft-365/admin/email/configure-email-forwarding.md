---
title: "Configure email forwarding"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 05/28/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- must-keep
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- business_assist
description: "Email forwarding lets you forward email messages sent to a Microsoft 365 user mailbox to another mailbox inside or outside of your organization."
---

# Configure email forwarding in Microsoft 365

As the admin of an organization, you might have company requirements to set up email forwarding for a user's mailbox. Email forwarding lets you forward email messages sent to a user's mailbox to another user's mailbox inside or outside of your organization.

> [!IMPORTANT]
> You can use outbound spam filter policies to control automatic forwarding to external recipients. For more information, see [Control automatic external email forwarding in Microsoft 365](/microsoft-365/security/office-365-security/outbound-spam-policies-external-email-forwarding#how-the-outbound-spam-filter-policy-settings-work-with-other-automatic-email-forwarding-controls).
> 
> Email forwarding to recipients outside the organization doesn't prevent messages identified as spam, phishing, or malware from being forwarded. The recipient needs their own email security filter to identify and block these messages.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

Before you set up email forwarding, note the following:

- Allow automatically forwarded messages to be sent to people on the remote domain. See [Manage remote domains](/exchange/mail-flow-best-practices/remote-domains/manage-remote-domains) for details.

- Once you set up email forwarding, only **new** emails sent to the  **from**  mailbox will be forwarded.

- Email forwarding requires that the *from* account has a license unless it's a shared mailbox. If you're setting up email forwarding because the user has left your organization, another option is to [convert their mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md). This way several people can access it. However, a shared mailbox can't exceed 50 GB.

- You must be an Exchange administrator in Microsoft 365 to do these steps. For more information, see the article [About admin roles](../add-users/about-admin-roles.md).

## Configure email forwarding

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> **[Active users](https://go.microsoft.com/fwlink/p/?linkid=834822)** page.

2. Select the name of the user whose email you want to forward and select the **Mail** tab.

3. Select **Manage email forwarding**.

4. On the email forwarding page, select **Forward all emails sent to this mailbox**. Enter the forwarding address, and choose whether you want to keep a copy of forwarded emails. If you don't see this option, make sure a license is assigned to the user account. Select **Save changes**.

5. Don't delete the account of the user who's email you're forwarding or remove their license!  If you do, email forwarding will stop.

**To forward to multiple email addresses**, you can ask this user to set up a rule in Outlook to forward to the addresses. For more info, check out [Turn on automatic forwarding in Outlook](https://support.microsoft.com/office/turn-on-automatic-forwarding-in-outlook-7f2670a1-7fff-4475-8a3c-5822d63b0c8e). For Outlook on the web, see [Use rules to automatically forward messages](https://support.microsoft.com/office/45aa9664-4911-4f96-9663-ece42816d746).

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> **[Active users](https://go.microsoft.com/fwlink/p/?linkid=850628)** page.

2. Select the name of the user whose email you want to forward to open the properties page.

3. Expand **Mail settings**, and then in the **Email forwarding** section, select **Edit**.

4. On the email forwarding page, set the toggle to **On**, enter the forwarding address, and choose whether you want to keep a copy of forwarded emails. If you don't see this option, make sure a license is assigned to the user account. Select **Save**.

   **To forward to multiple email addresses**, you can ask the user to set up a rule in Outlook to forward to the addresses. To learn more, see [Use rules to automatically forward messages](https://support.microsoft.com/office/45aa9664-4911-4f96-9663-ece42816d746).

   Or, in the admin center, [create a distribution group](../setup/create-distribution-lists.md), [add the addresses to it](add-user-or-contact-to-distribution-list.md), and then set up forwarding to point to the DL using the instructions in this article.

5. Don't delete the account of the user who's email you're forwarding or remove their license! If you do, email forwarding will stop.

::: moniker-end

## Related content

[Create a shared mailbox](../email/create-a-shared-mailbox.md) (article)\
[Forward emails that are sent to a shared mailbox](/microsoft-365/admin/email/configure-a-shared-mailbox#forward-emails-that-are-sent-to-a-shared-mailbox) (article)\
[Send email from a different address](https://support.microsoft.com/office/ccba89cb-141c-4a36-8c56-6d16a8556d2e) (article)\
[Change a user name and email address](../add-users/change-a-user-name-and-email-address.md) (article)\
[Control automatic external email forwarding in Microsoft 365](/microsoft-365/security/office-365-security/outbound-spam-policies-external-email-forwarding) (article)
