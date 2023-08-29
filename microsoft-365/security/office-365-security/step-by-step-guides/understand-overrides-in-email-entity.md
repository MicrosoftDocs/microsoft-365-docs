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
| 3rd Party Filter  |We detected you are using a third party for your MX record and have an SCL-1 transport rule, overriding filtering and Secure by Default.||
|Admin initiated time travel|Admin triggered investigation which lead to zero-hour auto-purge (ZAP) modifying the delivery location of messages.|[Learn more about ZAP](/microsoft-365/security/office-365-security/zero-hour-auto-purge)|
|Antimalware policy block by file type|The file extension for an attachment within the message matched a banned file type listed in the anti-malware policy for the recipient|You may wish to tweak the file extensions listed in the Common attachments filter section of the anti-malware policy. [Learn more](/microsoft-365/security/office-365-security/anti-malware-policies-configure)|
|Antispam policy settings|The message matched a custom option in the anti-spam policy for the recipient. For example: "SPF record: hard fail" or "Empty messages".|Check the "Mark as spam" options in the anti-spam policy for the affected recipient. [Learn more](/microsoft-365/security/office-365-security/anti-spam-policies-configure)|
|Connection policy|The message originated from an allowed / blocked IP within your connection filter policy.|Check the "Connection filter policy" within the anti-spam policies section of the security portal. [Learn more](/microsoft-365/security/office-365-security/connection-filter-policies-configure)|
|Exchange transport rule|The message matched a custom transport rule which affected the final delivery location.|You can use the email entity page, or Exchange message trace to highlight which transport rule was triggered. [Learn more](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)|
|Exclusive mode (User override)|The recipient has chosen to mark all messages as spam unless they are recieved from a sender in their trusted contact list.|The recipient has likely configured: "Don't trust email unless it comes from someone in my Safe Senders and Recipients list" within the Junk email settings in Outlook or OWA. [Learn more](/powershell/module/exchange/set-mailboxjunkemailconfiguration?view=exchange-ps)|
|Filtering skipped due to on-prem organization|The message was marked as non-spam by your Exchange on-premises enviroment before being delivered to Exchange Online|You should review your on-premises enviroment to locate the source of the override.|
|IP region filter from policy|The message was detected as coming from a country / region which an admin has selected to block in the anti-spam policy for the recipient.|Modify the "From these countries" option within the anti-spam policy applied to the affected recipient. [Learn more](/microsoft-365/security/office-365-security/anti-spam-policies-configure)|
|Language filter from policy|The message was detected as containing a language which an admin has selected to block in the anti-spam policy for the recipient.|Modify the "Contains specific languages" option within the anti-spam policy to the affected recipient. [Learn more](/microsoft-365/security/office-365-security/anti-spam-policies-configure)|
|Phishing simulation|The message met the criteria defined by an administrator to be considered a phishing simulation message.|Criteria is within the "Phishing simulation" tab within Advanced delivery in the security portal. [Learn more](/microsoft-365/security/office-365-security/skip-filtering-phishing-simulations-sec-ops-mailboxes)|
|Quarantine release|The message was released from quarantine by an the recipient or an administrator.|[Learn more](/microsoft-365/security/office-365-security/quarantine-end-user)|
|SecOps Mailbox|The message was sent to the specific security operations mailbox defined by an administrator.|Mailboxes are defined within the "SecOps mailbox" tab within Advanced delivery in the security portal. [Learn more](/microsoft-365/security/office-365-security/skip-filtering-phishing-simulations-sec-ops-mailboxes)|
|Sender address list (Admin Override)|The message matched an entry in the allowed/blocked senders within the anti-spam policy for the recipient.|Check the "Allowed and blocked senders and domains" section of the relevant anti-spam policy. (allows with this method are not reccomended). [Learn more](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Sender address list (User override)|The recipient has manually set this sender address to be delivered to the inbox (allowed) or junk email folder (blocked).|The recipient has likely configured "Safe senders and domains" or "Blocked senders and domains" within the Junk email settings in Outlook or OWA. [Learn more](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Sender domain list (Admin Override)|The message matched an entry in the allowed/blocked domains within the anti-spam policy for the recipient.|Check the "Allowed and blocked senders and domains" section of the relevant anti-spam policy. (allows with this method are not reccomended). [Learn more](/microsoft-365/security/office-365-security/create-safe-sender-lists-in-office-365)|
|Sender domain list (User override)|The recipient has manually set the sending domain to be delivered to the inbox (allowed) or junk email folder (blocked).|The recipient has likely configured "Safe senders and domains" or "Blocked senders and domains" within the Junk email settings in Outlook or OWA. [Learn more](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Tenant Allow/Block List file|An entry was matched for a file hash listed in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Tenant Allow/Block List sender email address|An entry was matched for a sender address listed in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Tenant Allow/Block List spoof|An entry was matched for spoof detection in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Tenant Allow/Block List URL| An entry was matched for a URL listed in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Trusted contact list (User override)|The recipient has chosen to mark contacts in their contacts folder as trusted senders automatically.|The recipient has likely configured: "Trust email from my contacts" within the Junk email settings in Outlook or OWA. [Learn more](/powershell/module/exchange/set-mailboxjunkemailconfiguration?view=exchange-ps)|
|Trusted domain (User override)|The recipient has added this domain to their safe recipients list within Outlook, emails sent to this domain will never be treated as junk email.|The recipient has likely configured "Safe Recipients" within Outlook's Junk email options. [Learn more](https://support.microsoft.com/en-us/office/block-or-allow-junk-email-settings-48c9f6f7-2309-4f95-9a4d-de987e880e46)|
|Trusted recipient (User override)|The recipient has added this sender to their safe recipients list within Outlook, emails sent to this sender will never be treated as junk email.|The recipient has likely configured "Safe Recipients" within Outlook's Junk email options. [Learn more](https://support.microsoft.com/en-us/office/block-or-allow-junk-email-settings-48c9f6f7-2309-4f95-9a4d-de987e880e47)|
|Trusted senders only (User override)|This override has same behaviour as the Exclusive mode (User override), primarily used in outlook.com.|See "Exclusive mode (User override)"|


