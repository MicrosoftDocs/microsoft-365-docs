---
title: "Zero-hour auto purge - protection against spam and malware"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 11/21/2019
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

Zero-hour auto purge (ZAP) is an email protection feature that detects messages with phish, spam, or malware that have already been delivered to your users' inboxes, and then renders the malicious content harmless. How ZAP does this depends on the type of malicious content detected. Mail can be zapped due to mail content, URLs, or attachments.

ZAP is available with the default Exchange Online Protection that is included with any Office 365 subscription that contains Exchange Online mailboxes.

## How ZAP works

Office 365 updates anti-spam engine and malware signatures in real-time on a daily basis. However, your users might still get malicious messages delivered to their inboxes for a variety of reasons, including if content is weaponized after being delivered to users. ZAP addresses this by continually monitoring updates to the Office 365 spam and malware signatures. ZAP can find and remove previously delivered messages that are already in users' inboxes.

The ZAP action is seamless for the mailbox user; they are not notified if an email message is moved. Message must not be older than 2 days.

Allow lists, [mail flow rules](use-transport-rules-to-configure-bulk-email-filtering.md) (also known as transport rules), and end user rules or additional filters take precedence over ZAP.

### Malware ZAP

For newly detected malware, ZAP moves the entire message, including its attachment, to malware Quarantine. Messages are moved regardless of the read status of the mail. If we get a malware signal for a message in the process of Dynamic Delivery scanning, ZAP will take a Move to Junk action on the message. Then it will allow Dynamic Delivery to finish the Time of Delivery scanning and take the appropriate action.

Malware ZAP is enabled by default in the Malware Policy. You can disable Malware ZAP by using the *ZapEnabled* parameter on the [Set-MalwareFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-malwarefilterpolicy) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell. Malware ZAP can also be enabled or disabled by editing the Malware Policy in the Security and Compliance Center.

### Phish ZAP

For mail that is identified as phish after delivery, ZAP takes action according to the Spam policy that covers a specific user, regardless of the read status of the mail. If the policy Phish action is set to *not* take action (Add X-header, Modify subject, No action) then ZAP will not take any action on the mail. If the Phish action is set to Move to Junk then ZAP will move the message to the Junk mail folder of the user's inbox. **For any other Phish action (Redirect, Delete, Quarantine) ZAP will move the message to phish Quarantine**. Read below for configuration requirements and exclusions. Learn more about how to [configure your spam filter policies](https://docs.microsoft.com//office365/securitycompliance/configure-your-spam-filter-policies) here.

Phish ZAP is enabled by default in the Spam Policy. Phish ZAP can be disabled using the *PhishZapEnabled* parameter of [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/Set-HostedContentFilterPolicy), an EOP cmdlet.

### Spam ZAP

For mail that is identified as spam after delivery, ZAP takes action according to the Spam policy that covers the specific user, only if the message is unread.  If the policy Spam action is set to not take action (Add X-header, Modify subject, No action) then ZAP won't take any action on the mail. If the Spam action is set to Move to Junk then ZAP will move the message to the Junk mail folder of the user's inbox. **For any other Spam action (Redirect, Delete, Quarantine) ZAP will move the message to spam Quarantine**. Read below for configuration requirements and exclusions. Learn more about how to [configure your spam filter policies](https://docs.microsoft.com//office365/securitycompliance/configure-your-spam-filter-policies) here.

Spam ZAP is enabled by default in the Spam Policy. You can disable Spam ZAP by using the *SpamZapEnabled* parameter of [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/Set-HostedContentFilterPolicy) cmdlet in Exchange Online PowerShell or Exchange Online Protection PowerShell.

### Phish and Spam ZAP requirements, exclusions, and notices

> [!IMPORTANT]
> the previous *ZapEnabled* cmdlet parameter which controlled both Phish and Spam ZAP will be **deprecated February 1, 2020**. If you have written any scripts which use the ZapEnabled parameter, we recommend updating them to use SpamZapEnabled and PhishZapEnabled. In the transitional period all 3 parameters (ZapEnabled, PhishZapEnabled, and SpamZapEnabled) will be available through the cmdlet. Until explicitly set via UI or PowerShell, PhishZapEnabled and SpamZapEnabled will show an inherited value from the ZapEnabled parameter. Once the new parameters are set, they will no longer inherit from the ZapEnabled parameter. After it is deprecated setting ZapEnabled will have no affect on the PhishZapEnabled or SpamZapEnabled properties and ZapEnabled will be removed from the list of parameters in cmdlets.

ZAP will not move any message to Quarantine which is in the process of Dynamic Delivery scanning, or which already has a Malware verdict with a replaced attachment. If a phish or spam signal is received for these types of messages and the Spam policy / Phish action is set to take some action (Move to Junk, Redirect, Delete, Quarantine) then ZAP will default to a 'Move to Junk' action. For ZAP to take a 'Move to Junk' action on a message, the user must have their junk email protection enabled, with the default junk mail settings. (See [Change the level of protection in the Junk Email Filter](https://support.office.com/article/e89c12d8-9d61-4320-8c57-d982c8d52f6b) for details about user options in Outlook.)

## How to see if ZAP moved your message

To determine if ZAP moved your message, you can use either the [Threat Protection Status report](view-email-security-reports.md#threat-protection-status-report) or [Threat Explorer (and real-time detections)](threat-explorer.md).

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

You should follow the normal reporting process for [false-positives](../../compliance/prevent-email-from-being-marked-as-spam.md). The only reason the message would be moved from the inbox to the junk mail folder would be because the service has determined that the message was spam or malicious.

### What if I use the Office 365 quarantine instead of the junk mail folder?

ZAP will take action according to the configuration of the Phish and Spam action settings in your Anti-spam policy. See above for more details on Malware, Phish, and Spam ZAP.

### What if I have a custom mail flow rule (Block/ Allow Rule)?

Rules created by admins (mail flow rules) or Block and Allow rules take precedence. Such messages are excluded from the feature criteria so the mail flow will follow the rule action (Block/Allow Rule).

### What if a message is moved to another folder (e.g. Inbox rule)?

ZAP still works in this case, unless the message has been deleted or is in Junk.

## Related Topics

[Office 365 Email Anti-Spam Protection](anti-spam-protection.md)

[Block email spam with the Office 365 spam filter to prevent false negative issues](reduce-spam-email.md)
