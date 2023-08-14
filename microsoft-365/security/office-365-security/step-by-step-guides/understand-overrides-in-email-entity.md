---
title:       Understanding overrides within the email entity page in Microsoft Defender for Office 365
description: Guide to understanding the different overrides shown on the email entity page in Microsoft Defender for Office 365, what they mean, how they're triggered, and useful information for troubleshooting.
author:      MSFTBen 
ms.author:   benharri
ms.service:  microsoft-365-security
ms.topic:    how-to
audience: ITPro
ms.subservice: mdo
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.date:     08/14/2023
---

# Understanding overrides within the email entity page in Microsoft Defender for Office 365

Within the Microsoft Defender for Office 365 *[email entity page](/microsoft-365/security/office-365-security/mdo-email-entity-page)* there is a wealth of useful information about an email, including if applicable the **overrides** which affected that message, and potentially the location that the message was delivered or moved to post delivery.   
  
This article is all about helping you **understand the different overrides**, how they are triggered, and helpful information for diagnosing when the affect of an override was unexpected, such as an email being blocked when no threats were found.

## Overrides details table

The following table lists all overrides, a description of what that override means and some starting points for troubleshooting. Not all overrides will be honoured depending on the circumstance, for example an email containing malware will still be blocked despite any end users who may have the sender specified as a "safe sender".

| Override |Description|Notes|
| -------- | -------- | -------- |
| 3rd Party Filter  |We detected you are using a third party for your MX record and have an SCL-1 transport rule, overriding filtering and Secure by Default.|thanks|
|Admin initiated time travel|Admin triggered investigation which lead to zero-hour auto-purge (ZAP) modifying the delivery location of messages.||
|Antimalware policy block by file type|The file extension for an attachment within the message matched a banned file type listed in the anti-malware policy for the recipient|.|
|Antispam policy settings|The message matched a custom option in the anti-spam policy for the recipient. For example: "SPF record: hard fail" or "Empty messages".||
|Connection policy|The message originated from an allowed / blocked IP within your connection filter policy.||
|Exchange transport rule|The message matched a custom transport rule which affected the final delivery location.||
|Exclusive mode (User override)|The recipient has chosen to mark all messages as spam unless they are recieved from a sender in their trusted contact list.||
|Filtering skipped due to on-prem organization|The message was marked as non-spam by your Exchange on-premises enviroment before being delivered to Exchange Online||
|IP region filter from policy|The message was detected as coming from a country / region which an admin has selected to block in the anti-spam policy for the recipient.||
|Language filter from policy|The message was detected as containing a language which an admin has selected to block in the anti-spam policy for the recipient.||
|Phishing simulation|The message met the criteria defined by an administrator to be considered a phishing simulation message.||
|Quarantine release|The message was released from quarantine by an the recipient or an administrator.||
|SecOps Mailbox|The message was sent to the specific security operations mailbox defined by an administrator.||
|Sender address list (Admin Override)|The message matched an entry in the allowed/blocked senders within the anti-spam policy for the recipient.||
|Sender address list (User override)|The recipient has manually set this sender address to be delivered to the inbox (allowed) or junk email folder (blocked).||
|Sender domain list (Admin Override)|The message matched an entry in the allowed/blocked domains within the anti-spam policy for the recipient.||
|Sender domain list (User override)|The recipient has manually set the sending domain to be delivered to the inbox (allowed) or junk email folder (blocked).||
|Tenant Allow/Block List file|An entry was matched for a file hash listed in the Tenant allow/block list.||
|Tenant Allow/Block List sender email address|An entry was matched for a sender address listed in the Tenant allow/block list.||
|Tenant Allow/Block List spoof|An entry was matched for spoof detection in the Tenant allow/block list.||
|Tenant Allow/Block List URL| An entry was matched for a URL listed in the Tenant allow/block list.||
|Trusted contact list (User override)|The recipient has chosen to mark contacts in their contacts folder as trusted senders automatically.||
|Trusted domain (User override)|The recipient has added this domain to their safe recipients list within Outlook, emails sent to this domain will never be treated as junk email.||
|Trusted recipient (User override)|The recipient has added this sender to their safe recipients list within Outlook, emails sent to this sender will never be treated as junk email.||
|Trusted senders only (User override)|This override has same behaviour as the Exclusive mode (User override), primarily used in outlook.com.||


