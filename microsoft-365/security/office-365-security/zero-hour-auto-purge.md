---
title: "Zero-hour auto purge - protection against spam and malware"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 04/11/2019
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

# Zero-hour auto purge - protection against spam and malware

## Overview

Zero-hour auto purge (ZAP) is an email protection feature that detects messages with phish, spam, or malware that have already been delivered to your users' inboxes, and then renders the malicious content harmless. How ZAP does this depends on the type of malicious content detected; mail can be zapped due to mail content, URLs, or attachments.
  
ZAP is available with the default Exchange Online Protection that is included with any Office 365 subscription that contains Exchange Online mailboxes.

ZAP is turned on by default, but the following conditions must be met:
  
- **Spam action** is set to **Move message to Junk Email folder**. You can also create a new spam filter policy that applies only to a set of users if you don't want all mailboxes to be screened by ZAP.

- Users have kept their default junk mail settings, and have not turned off junk email protection. (See [Change the level of protection in the Junk Email Filter](https://support.office.com/article/e89c12d8-9d61-4320-8c57-d982c8d52f6b) for details about user options in Outlook.)
  
## How ZAP works

Office 365 updates anti-spam engine and malware signatures in real-time on a daily basis. However, your users might still get malicious messages delivered to their inboxes for a variety of reasons, including if content is weaponized after being delivered to users. ZAP addresses this by continually monitoring updates to the Office 365 spam and malware signatures. ZAP can find and remove previously delivered messages that are already in users' inboxes.

The ZAP action is seamless for the mailbox user; they are not notified if an email message is moved. Message must not be older than 2 days.
  
Allow lists, [mail flow rules](https://go.microsoft.com/fwlink/p/?LinkId=722755) (also known as transport rules), and end user rules or additional filters take precedence over ZAP.

### Malware ZAP

For newly detected malware, ZAP removes attachments from email messages, leaving the body of the message in the user's mailbox. Attachments are removed regardless of the read status of the mail.

Malware ZAP is enabled by default in the Malware Policy. You can disable Malware ZAP by using the *ZapEnabled* parameter on the [Set-MalwareFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-malwarefilterpolicy) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell.

### Phish ZAP

For mail that is identified as phish after delivery, ZAP takes action according to the Spam policy that the user is covered by. If the policy Phish action is set to take action on a mail (Redirect, Delete, Quarantine, Move to Junk) then ZAP will move the message to the Junk mail folder of the user's inbox, regardless of the read status of the mail. If the policy Phish action is not set to take action (Add X-header, Modify subject, No action) then ZAP will not take action on the mail. Learn more about how to [configure your spam filter policies](https://docs.microsoft.com//office365/securitycompliance/configure-your-spam-filter-policies) here.

Phish ZAP is enabled by default in the Spam Policy. You can disable Phish ZAP by using the *ZapEnabled* parameter on the [Set-HostedContentFilterPolicy](https://go.microsoft.com/fwlink/p/?LinkId=722758) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell.

### Spam ZAP

For mail that is identified as spam after delivery, ZAP takes action according to the Spam policy that the user is covered by. If the policy Spam action is set to take action on a mail (Redirect, Delete, Quarantine, Move to Junk) then ZAP will move the message to the Junk mail folder of the user's inbox, if the message is unread. If the policy Spam action is not set to take action (Add X-header, Modify subject, No action) then ZAP will not take action on the mail. Learn more about how to [Configure your spam filter policies](configure-your-spam-filter-policies.md) here.

Spam ZAP is enabled by default in the Spam Policy. You can disable Spam ZAP by using the *ZapEnabled* parameter of [Set-HostedContentFilterPolicy](https://go.microsoft.com/fwlink/p/?LinkId=722758) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell.

> [!NOTE]
> The *ZapEnabled* parameter on the **Set-HostedContentFilterPolicy** cmdlet disables or enables both Phish ZAP and Spam ZAP for the policy. You can't independently enable or disable Phish ZAP and Spam ZAP within the same policy.

## How to see if ZAP moved your message

To determine if ZAP moved your message, you can use either the [Threat Protection Status report](../../compliance/view-email-security-reports.md#threat-protection-status-report) or [Threat Explorer (and real-time detections)](threat-explorer.md).

## Disable ZAP

To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://go.microsoft.com/fwlink/p/?linkid=396554). To connect to Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://go.microsoft.com/fwlink/p/?linkid=627290).

### Disable Malware ZAP**

This example disables ZAP in the malware filter policy named "Test".

```Powershell
Set-MalwareFilterPolicy -Identity Test -ZapEnabled $false
```

For detailed syntax and parameter information, see [Set-MalwareFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-malwarefilterpolicy).

### Disable Phish ZAP and Spam ZAP

This example disables Phish ZAP and Spam ZAP in the content filter policy named "Test".

```Powershell
Set-HostedContentFilterPolicy -Identity Test -ZapEnabled $false
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](https://go.microsoft.com/fwlink/p/?LinkId=722758).

## FAQ

### What happens if a legitimate message is moved to the junk mail folder?
  
You should follow the normal reporting process for [false-positives](../../compliance/prevent-email-from-being-marked-as-spam.md). The only reason the message would be moved from the inbox to the junk mail folder would be because the service has determined that the message was spam or malicious.
  
### What if I use the Office 365 quarantine instead of the junk mail folder?
  
ZAP doesn't move messages into quarantine from the Inbox at this time.
  
### What if I have a custom mail flow rule (Block/ Allow Rule)?
  
Rules created by admins (mail flow rules) or Block and Allow rules take precedence. Such messages are excluded from the feature criteria so the mail flow will follow the rule action (Block/Allow Rule).

### What if a message is moved to another folder (e.g. Inbox rule)?

ZAP still works in this case, unless the message has been deleted or is in Junk.

## Related Topics

[Office 365 Email Anti-Spam Protection](anti-spam-protection.md)
  
[Block email spam with the Office 365 spam filter to prevent false negative issues](reduce-spam-email.md)
