---
title: "How to reduce spam email in Office 365"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MOE150
- MET150
ms.assetid: 07824c51-2c45-4005-8596-03c0d7c4ff2a
ms.collection:
- Strat_O365_IP
- M365-security-compliance
- Strat_O365_IP
description: "Learn the most common ways to help reduce spam and junk mail in Office 365."
---

# How to reduce spam email in Office 365

 **Are you getting too much spam in Office 365? Do this.**

We strongly recommend that you report False Negative messages by [using the Report Message add-in](https://support.office.com/article/b5caa9f1-cdf3-4443-af8c-ff724ea719d2) to help us improve our filters. Additionally, you can submit the message using [Submissions Explorer](admin-submission.md).

> [!TIP]
> If you think the message is junk and it is in the Junk Email folder, that should not be a problem. If you don't want to see it at all in the mailbox, you should change the antispam policy to quarantine the message. More information on quarantining a message can be found in [Quarantine email messages in Office 365](quarantine-email-messages.md).

## Fixing allowed spam

We often see that customers get junk mail into their inbox because of incorrect configurations. The most common of which is configuring your domains in a mail flow rule (also known as a transport rule) to bypass filters or listing your domain(s) in the allowed/safe-senders list. This is not good because these messages skip spam filtering and could have otherwise been caught, so creation of [safe sender lists](create-safe-sender-lists-in-office-365.md) must be considered as a temporary solution.

## Solutions to other common causes of getting too much spam

In order to protect you from getting too much spam, Exchange Online Protection (EOP) requires that administrators complete a few tasks. If you are not the administrator for your Office 365 tenant and you are getting too much spam, then you may want to work with your administrator on these tasks. Otherwise, you can skip to the user section.

### For admins

- **Point your DNS records to Office 365**: In order for EOP to provide the best protection, your mail exchanger (MX) DNS record(s) for all domains must be pointed to Office 365 -- and only to Office 365. See [Create DNS records for Office 365 when you manage your DNS records](https://support.office.com/article/b0f3fdca-8a80-4e8e-9ef3-61e8a2a9ab23).

- **Enable the junk mail rule on all mailboxes** By default, the spam filtering action is set to **Move message to Junk Email folder**. If this is the preferred and current spam policy action, then each mailbox [must also have the junk mail rule enabled](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089). To check, you can run the **Get-MailboxJunkEmailConfiguration** cmdlet on one or more mailboxes. For example, you might check all mailboxes by running the following command in [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell):

  ```powershell
  Get-MailboxJunkEmailConfiguration -Identity * | Where {$_.Enabled -eq $false}
  ```

  When viewing the output, the **Enabled** property value should be `True`. If it's `False`, you can run the following command to change it:

  ```powershell
  Set-MailboxJunkEmailConfiguration -Identity $values.UserPrincipalName -Enabled $true
  ```

- **Create mail flow rules in on-premises Exchange Server**: If you are using Exchange Online Protection, but your mailboxes are located in on-premises Exchange Server, then you will need to create a couple of mail flow rules in on-premises Exchange Server. See the [instructions for EOP-only](https://docs.microsoft.com/previous-versions/exchange-server/exchange-150/jj900470(v=exchg.150)).

- **Mark bulk email as spam**: Bulk email is email which users may have signed up for, but may still be undesirable. In the message header, find the BCL (Bulk Confidence Level) property in the X-Microsoft-Antispam header. If the BCL value is less than the threshold set in the spam filter, you may want to adjust the threshold to instead mark these types of bulk messages as spam. Different users have different tolerances and preferences for [how bulk email](https://docs.microsoft.com/office365/SecurityCompliance/bulk-complaint-level-values) is handled. You can create different policies or rules for different user preferences.

- **Immediately block a sender**: In the case where you need to immediately block a sender, you can block by email address, domain, or IP address. See [Create block sender lists in Office 365](create-block-sender-lists-in-office-365.md). An entry in an end-user allow list can override a block set by the administrator.

- **Turn on the report message add-in for users**: We strongly recommend that you [enable the report message add-in for you users](enable-the-report-message-add-in.md).

- **Use [Submissions Explorer](admin-submission.md)**: Admins can now send emails by using file or network message ID, URLs, and files for scanning by Microsoft in Office 365. As an administrator, you may also be able to view the feedback your users are sending and use any patterns to adjust any settings that may be causing problems.

- **Enable [DKIM](use-dkim-to-validate-outbound-email.md)**: to sign all your outbound messages to increase the security in your domain and tenant.

  > [!TIP]
  > After you enable DKIM you must enable [DMARC](use-dkim-to-validate-outbound-email.md) since this record will validate if DKIM and SPF are working correctly and, generally, spoofing emails don't have the signature, since O365 manages your private and public symmetric key.

### For users

- **Enable the junk mail rule and check your allow list** Check that the junk mail action rule is enabled and that the sender or sender's domain is not set to bypass in your personal allow list. The best way to access these settings is from [Block or allow (junk email settings)](https://support.office.com/article/48c9f6f7-2309-4f95-9a4d-de987e880e46). While you are there, you may also choose to block the sender's email address or domain.

- **Report spam to Microsoft** Report spam messages to Microsoft by using the [Use the Report Message add-in](https://support.office.com/article/b5caa9f1-cdf3-4443-af8c-ff724ea719d2).

- **Unsubscribe from bulk email** If the message was something that you signed up for (newsletters, product announcements, etc.) and contains an unsubscribe link from a reputable source, you may want to simply unsubscribe. Office 365 does not typically treat these messages as spam. You can also choose to block the sender, or ask your administrator to make a change that will cause all bulk mail to be treated as spam.
