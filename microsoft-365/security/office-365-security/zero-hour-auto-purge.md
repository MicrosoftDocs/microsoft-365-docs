---
title: "Zero-hour auto purge (ZAP) - protection against spam and malware"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MOE150
- MED150
- MBS150
- MET150
ms.assetid: 96deb75f-64e8-4c10-b570-84c99c674e15
ms.collection:
- M365-security-compliance
description: "Zero-hour auto purge (ZAP) is an email protection feature that detects messages with spam or malware that have already been delivered to your users' inboxes, and then renders the malicious content harmless. How ZAP does this depends on the type of malicious content detected."
---

# Zero-hour auto purge (ZAP) - protection against spam and malware in Office 365

## Overview

Zero-hour auto purge (ZAP) is an email protection feature in Office 365 that retroactively detects and neutralizes malicious messages (phish, spam, or malware) that have already been delivered to the Inbox of Exchange Online mailboxes. How ZAP does this depends on the type of malicious content. Messages can be zapped due to content, URLs, or attachments.

ZAP is available with the default Exchange Online Protection (EOP) that's included with any Office 365 subscription that contains Exchange Online mailboxes. ZAP doesn't work in standalone EOP environments that protect on-premises Exchange mailboxes.

## How ZAP works

Office 365 updates spam and malware signatures in real-time on a daily basis. However, users can still receive malicious messages in their Inbox for a variety of reasons, including if content is weaponized after being delivered to users. ZAP addresses this issue by continually monitoring updates to the Office 365 spam and malware signatures. ZAP can find and remove messages that are already in a user's Inbox.

The ZAP action is seamless for the user; they aren't notified if a message is detected and moved.

[Safe sender lists](create-safe-sender-lists-in-office-365.md), mail flow rules (also known as transport rules), Inbox rules, or additional filters take precedence over ZAP.

### Malware ZAP

For **read or unread messages** that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Only admins can view and manage malware messages from quarantine.

Malware ZAP is enabled by default in anti-malware policies. For more information, see [Configure anti-malware policies in Office 365](configure-anti-malware-policies.md).

### Phish ZAP

For **read or unread messages** that are identified as phish after delivery, the ZAP outcome depends on the action that's configured for a **Phishing email** spam filtering verdict in the applicable anti-spam policy. The available spam filtering verdict actions for phish and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder as long as the 

- **Redirect message to email address**, **Delete message**, **Quarantine message**: ZAP quarantines the message. Only admins can view and manage phish messages from quarantine.

By default, phish ZAP is enabled in anti-spam policies, and the default action for the spam filtering verdict **Phishing email** is **Quarantine message**, which means phish ZAP quarantines the message.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

### Spam ZAP

For **unread messages** that are identified as spam after delivery, the ZAP outcome depends on the action that's configured for a **Spam** spam filtering verdict in the applicable anti-spam policy. The available spam filtering verdict actions for spam and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder.

- **Redirect message to email address**, **Delete message**, **Quarantine message**: ZAP quarantines the message. End-users and admins can view and manage spam messages from quarantine.

By default, spam ZAP is enabled in anti-spam policies, and the default action for the spam filtering verdict **Spam** is **Move message to Junk Email folder**, which means spam ZAP moves **unread** messages to the Junk Email folder.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

### ZAP considerations for Office 365 Advanced Threat Protection (ATP)

ZAP will not quarantine any message that's in the process of [Dynamic Delivery](dynamic-delivery-and-previewing.md) scanning, or where malware filtering has already replaced the attachment with the **Malware Alert Text.txt** file. If a phish or spam signal is received for these types of messages and the Spam policy / Phish action is set to take some action (Move to Junk, Redirect, Delete, Quarantine) then ZAP will default to a 'Move to Junk' action.


ZAP to take a 'Move to Junk' action on a message, the user must have their junk email protection enabled, with the default junk mail settings. (See [Change the level of protection in the Junk Email Filter](https://support.office.com/article/e89c12d8-9d61-4320-8c57-d982c8d52f6b) for details about user options in Outlook.)


In Office 365 Advanced Thread Protection (ATP), if we get a malware signal for a message that's in the process of [Dynamic Delivery](dynamic-delivery-and-previewing.md), ZAP will move the message to the Junk Email folder. This allows Dynamic Delivery to finish scanning the message, and to take the appropriate action on the message.


## How to see if ZAP moved your message

To determine if ZAP moved your message, you can use either the [Threat Protection Status report](view-email-security-reports.md#threat-protection-status-report) or [Threat Explorer (and real-time detections)](threat-explorer.md). Note that as a system action, ZAP is not logged in exchange mailbox audit logs.

## Disable ZAP

To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

### Disable Malware ZAP**

Malware ZAP can be disabled through the *ZapEnabled* parameter on the [Set-MalwareFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-malwarefilterpolicy) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell. Malware ZAP can also be enabled or disabled by editing the Malware Policy in the Security and Compliance Center.

This example disables ZAP in the malware filter policy named "Test".

```Powershell
Set-MalwareFilterPolicy -Identity Test -ZapEnabled $false
```

For detailed syntax and parameter information, see [Set-MalwareFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-malwarefilterpolicy).

### Disable Phish ZAP and Spam ZAP

To disable Phish and Spam ZAP for your O365 tenant, or a set of users, use the *PhishZapEnabled* and *SpamZapEnabled* parameters of [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/Set-HostedContentFilterPolicy), an EOP cmdlet.

In the following example, phish and spam ZAP are disabled for a content filter policy named "Test".

```Powershell
Set-HostedContentFilterPolicy -Identity Test -PhishZapEnabled $false -SpamZapEnabled $false
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/Set-HostedContentFilterPolicy).

## FAQ

### What happens if a legitimate message is moved to the junk mail folder?

You should follow the normal reporting process for [false-positives](prevent-email-from-being-marked-as-spam.md). The only reason the message would be moved from the inbox to the junk mail folder would be because the service has determined that the message was spam or malicious.

### What if I use the Office 365 quarantine instead of the junk mail folder?

ZAP will take action according to the configuration of the Phish and Spam action settings in your Anti-spam policy. See above for more details on Malware, Phish, and Spam ZAP.

### What if I have a custom mail flow rule (Block/ Allow Rule)?

Rules created by admins (mail flow rules) or Block and Allow rules take precedence. Such messages are excluded from the feature criteria so the mail flow will follow the rule action (Block/Allow Rule).

### What if a message is moved to another folder (e.g. Inbox rule)?

ZAP still works in this case, unless the message has been deleted or is in Junk.

### Does ZAP change the email header?

A ZAP action does not make any changes to an email's header.

### How does ZAP affect mailboxes on Hold?

ZAP will not remove messages from mailboxes on hold and so will not take a Move to Quarantine action on messages. Messages will still be moved to the Junk folder if specified by the policy.

[Click here for more information on mailbox holds.](https://docs.microsoft.com/exchange/policy-and-compliance/holds/holds?view=exchserver-2019)

## Related Topics

[Office 365 Email Anti-Spam Protection](anti-spam-protection.md)

[Block email spam with the Office 365 spam filter to prevent false negative issues](reduce-spam-email.md)
