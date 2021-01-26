---
title: Secure by default in Office 365
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - M365-security-compliance
description: Learn more about the secure by default setting in Exchange Online Protection (EOP)
ms.technology: mdo
ms.prod: m365-security
---

# Secure by default in Office 365

[!INCLUDE [Prerelease information](../includes/prerelease.md)]
[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

"Secure by default" is a term used to define the default settings that are most secure as possible.

However, security needs to be balanced with productivity. This can include balancing across:

- **Usability**: Settings should not get in the way of user productivity.
- **Risk**: Security might block important activities.
- **Legacy settings**: Some configurations for older products and features might need to be maintained for business reasons, even if new, modern settings are improved.

Microsoft 365 organizations with mailboxes in Exchange Online are protected by Exchange Online Protection (EOP). This protection includes:

- Email with suspected malware will automatically be quarantined and recipients will be notified. See [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).
- Email identified as high confidence phishing will be handled according to the anti-spam policy action. See [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

For more information about EOP, see [Exchange Online Protection overview](exchange-online-protection-overview.md).

Because Microsoft wants to keep our customers secure by default, some tenants overrides are not applied for malware or high confidence phishing. These overrides include:

- Allowed sender lists or allowed domain lists (anti-spam policies)
- Outlook Safe Senders
- IP Allow List (connection filtering)

More information on these overrides can be found in [Create safe sender lists](create-safe-sender-lists-in-office-365.md).

Secure by default is not a setting that can be turned on or off, but is the way our filtering works out of the box to keep potentially dangerous or unwanted messages out of your mailboxes. Malware and high confidence phishing messages should be quarantined. Only admins can manage messages that are quarantined as malware or high confidence phishing, and they can also report false positives to Microsoft from there. For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md)

## More on why we're doing this

The spirit of being secure by default is: we're taking the same action on the message that you would take if you knew the message malicious, even if there was an allow in place. This is the same approach that we've used on malware, and now we're extending this same behavior to high confidence phishing messages. Our data indicates that the false positive rate for high confidence phishing messages is very low, and admins can resolve any false positives with admin submissions. Our data also indicates that the allowed sender lists and allowed domain lists in anti-spam policies and Safe Senders in Outlook were too broad and causing more harm than good.

To put it another way: as a security service, we're acting on your behalf to prevent your users from being compromised. In addition, secure by default is not a full takeover of your available options for high confidence phishing messages in anti-spam policies. Although we recommend Quarantine, the other actions that have always been available are still available (Move to Junk Email folder or Redirect to an email address).

## Exceptions

The only override that allows high confidence phishing message to bypass filtering is Exchange mail flow rules (also known as transport rules). To use mail flow rules to bypass filtering, see [Use mail flow rules to set the SCL in messages](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md).

You should only consider using overrides in the following scenarios:

- Phishing simulations: Simulated attacks can help you identify vulnerable users before a real attack impacts your organization.
- Security/SecOps mailboxes: Dedicated mailboxes used by security teams to get unfiltered messages (both good and bad). Teams can then review to see if they contain malicious content.
- Third-party filters: Secure by default does not apply when the domain's MX record does not point to Office 365.
- False positives: You might want to temporarily allow certain messages that are still being analyzed by Microsoft [via Admin submissions](admin-submission.md). As with all overrides, it is recommended that they are temporary.
