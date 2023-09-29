---
title:       Understanding overrides within the email entity page in Microsoft Defender for Office 365
description: Shows the different overrides in the email entity page in Microsoft Defender for Office 365 to help admins troubleshoot configurations.
author:      MSFTBen 
ms.author:   benharri
manager: dansimp
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

Within the Microsoft Defender for Office 365 *[email entity page](/microsoft-365/security/office-365-security/mdo-email-entity-page)*, there's a wealth of useful information about an email, including if applicable the **overrides** which affected that message, and potentially the location that the message was delivered or moved to post delivery.   
  
This article is all about helping you **understand the different overrides**, how they're triggered, and helpful information for diagnosing when the effect of an override was unexpected, such as an email being blocked when no threats were found.

## Overrides details table

The following table lists all overrides, a description of what that override means and some starting points for troubleshooting. Not all overrides are honored, depending on the circumstance. For example an email that contains malware is automatically blocked regardless if an end user set the sender as a "safe sender". To learn more about how overrides are applied see [this table](/microsoft-365/security/office-365-security/how-policies-and-protections-are-combined).

| Override |Description|Notes|
| -------- | -------- | -------- |
| Third Party Filter  |We detected you're using a third party for your MX record and have an SCL-1 transport rule, overriding filtering and Secure by Default.||
|Admin initiated time travel|Admin triggered investigation, which leads to zero-hour autopurge (ZAP) modifying the delivery location of messages.|[Learn more about ZAP.](/microsoft-365/security/office-365-security/zero-hour-auto-purge)|
|Antimalware policy block by file type|The file extension for an attachment within the message matched a banned file type listed in the anti-malware policy for the recipient|You may wish to tweak the file extensions listed in the Common attachments filter section of the anti-malware policy. [Learn more.](/microsoft-365/security/office-365-security/anti-malware-policies-configure)|
|Antispam policy settings|The message matched a custom option in the anti-spam policy for the recipient. For example: "SPF record: hard fail" or "Empty messages".|Check the "Mark as spam" options in the anti-spam policy for the affected recipient. [Learn more.](/microsoft-365/security/office-365-security/anti-spam-policies-configure)|
|Connection policy|The message originated from an allowed / blocked IP within your connection filter policy.|Check the "Connection filter policy" within the anti-spam policies section of the security portal. [Learn more.](/microsoft-365/security/office-365-security/connection-filter-policies-configure)|
|Exchange transport rule|The message matched a custom transport rule that affected the final delivery location.|You can use the email entity page, or Exchange message trace to highlight which transport rule was triggered. [Learn more.](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)|
|Exclusive mode (User override)|The recipient has chosen to mark all messages as spam unless they're received from a sender in their trusted contact list.|The recipient has likely configured: "Don't trust email unless it comes from someone in my Safe Senders and Recipients list" within the Junk email settings in Outlook or OWA. [Learn more.](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Filtering skipped due to on-premises organization|The message was marked as nonspam by your Exchange on-premises environment before being delivered to Exchange Online|You should review your on-premises environment to locate the source of the override.|
|IP region filter from policy|The message was detected as coming from a country/region that an admin has selected to block in the anti-spam policy for the recipient.|Modify the "From these countries/regions" option within the anti-spam policy applied to the affected recipient. [Learn more.](/microsoft-365/security/office-365-security/anti-spam-policies-configure)|
|Language filter from policy|The message was detected as containing a language that an admin has selected to block in the anti-spam policy for the recipient.|Modify the "Contains specific languages" option within the anti-spam policy to the affected recipient. [Learn more.](/microsoft-365/security/office-365-security/anti-spam-policies-configure)|
|Phishing simulation|The message met the criteria defined by an administrator to be considered a phishing simulation message.|Criteria are within the "Phishing simulation" tab within Advanced delivery in the security portal. [Learn more.](/microsoft-365/security/office-365-security/skip-filtering-phishing-simulations-sec-ops-mailboxes)|
|Quarantine release| The recipient or an administrator released this message from quarantine.|[Learn more.](/microsoft-365/security/office-365-security/quarantine-end-user)|
|SecOps Mailbox|The message was sent to the specific security operations mailbox defined by an administrator.|Mailboxes are defined within the "SecOps mailbox" tab within Advanced delivery in the security portal. [Learn more.](/microsoft-365/security/office-365-security/skip-filtering-phishing-simulations-sec-ops-mailboxes)|
|Sender address list (Admin Override)|The message matched an entry in the allowed/blocked senders within the anti-spam policy for the recipient.|Check the "Allowed and blocked senders and domains" section of the relevant anti-spam policy. (allows with this method aren't recommended). [Learn more.](/microsoft-365/security/office-365-security/create-safe-sender-lists-in-office-365)|
|Sender address list (User override)|The recipient has manually set this sender address to be delivered to the inbox (allowed) or junk email folder (blocked).|The recipient has likely configured "Safe senders and domains" or "Blocked senders and domains" within the Junk email settings in Outlook or OWA. [Learn more.](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Sender domain list (Admin Override)|The message matched an entry in the allowed/blocked domains within the anti-spam policy for the recipient.|Check the "Allowed and blocked senders and domains" section of the relevant anti-spam policy. (allows with this method aren't recommended). [Learn more.](/microsoft-365/security/office-365-security/create-safe-sender-lists-in-office-365)|
|Sender domain list (User override)|The recipient has manually set the sending domain to be delivered to the inbox (allowed) or junk email folder (blocked).|The recipient has likely configured "Safe senders and domains" or "Blocked senders and domains" within the Junk email settings in Outlook or OWA. [Learn more.](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Tenant Allow/Block List file|An entry was matched for a file hash listed in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more.](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Tenant Allow/Block List sender email address|An entry was matched for a sender address listed in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal.[ Learn more.](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Tenant Allow/Block List spoof|An entry was matched for spoof detection in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more.](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Tenant Allow/Block List URL| An entry was matched for a URL listed in the Tenant allow/block list.|Review the entires within the "Tenant Allow/Block Lists" page within the security portal. [Learn more.](/microsoft-365/security/office-365-security/tenant-allow-block-list-about)|
|Trusted contact list (User override)|The recipient has chosen to mark contacts in their contacts folder as trusted senders automatically.|The recipient has likely configured: "Trust email from my contacts" within the Junk email settings in Outlook or OWA. [Learn more.](/powershell/module/exchange/set-mailboxjunkemailconfiguration)|
|Trusted domain (User override)|The recipient has added this domain to their safe recipients list within Outlook, emails sent to this domain aren't treated as junk email.|The recipient has likely configured "Safe Recipients" within Outlook's Junk email options. [Learn more.](https://support.microsoft.com/office/block-or-allow-junk-email-settings-48c9f6f7-2309-4f95-9a4d-de987e880e46)|
|Trusted recipient (User override)|The recipient has added this sender to their safe recipients list within Outlook, emails sent to this sender aren't treated as junk email.|The recipient has likely configured "Safe Recipients" within Outlook's Junk email options. [Learn more.](https://support.microsoft.com/office/block-or-allow-junk-email-settings-48c9f6f7-2309-4f95-9a4d-de987e880e46)|
|Trusted senders only (User override)|This override has same behavior as the Exclusive mode (User override), primarily used in outlook.com.|See "Exclusive mode (User override)"|

## Next steps

You can find a similar detailed table covering all the different detection technologies at [aka.ms/emailtech](/microsoft-365/security/office-365-security/step-by-step-guides/understand-detection-technology-in-email-entity).



