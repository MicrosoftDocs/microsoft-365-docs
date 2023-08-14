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
| 3rd Party Filter  | this is some test text|thanks|
|Admin initiated time travel| Cell 4   ||
|Antimalware policy block by file type| Cell 4   ||
|Antispam policy settings| Cell 4   ||
|Connection policy| Cell 4   ||
|Exchange transport rule| Cell 4   ||
|Exclusive mode (User override)| Cell 4   ||
|Filtering skipped due to on-prem organization| Cell 4   ||
|IP region filter from policy| Cell 4   ||
|Language filter from policy| Cell 4   ||
|Phishing simulation| Cell 4   ||
|Quarantine release| Cell 4   ||
|SecOps Mailbox| Cell 4   ||
|Sender address list (Admin Override)| Cell 4   ||
|Sender address list (User override)| Cell 4   ||
|Sender domain list (Admin Override)| Cell 4   ||
|Sender domain list (User override)| Cell 4   |https://learn.microsoft.com/microsoft-365/security/office-365-security/create-safe-sender-lists-in-office-365|
|Tenant Allow/Block List file| Cell 4   ||
|Tenant Allow/Block List sender email address|dfgfdgfdg||
|Tenant Allow/Block List spoof| Cell 4   ||
|Tenant Allow/Block List URL| Cell 4   ||
|Trusted contact list (User override)| Cell 4   ||
|Trusted domain (User override)| Cell 4   ||
|Trusted recipient (User override)| Cell 4   ||
|Trusted senders only (User override)| dfgdgfd  ||


