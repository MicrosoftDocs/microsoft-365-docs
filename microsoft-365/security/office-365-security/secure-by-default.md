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
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection:
- M365-security-compliance
description: "Learn more about the secure by default setting in Exchange Online Protection (EOP)"

---

# Secure by default in Office 365

[!INCLUDE [Prerelease information](../includes/prerelease.md)]
[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

"Secure by default" is a term used to define the default settings that are most secure as possible.

However, security needs to be balanced with productivity. This can include balancing across:

- Usability: settings should not get in the way of user productivity.
- Risk: security might block important activities.
- Legacy settings: Some configurations for older products and features might need to be maintained for business reasons, even if new, modern settings are improved.

Microsoft 365 organizations with mailboxes in Exchange Online are protected by Exchange Online Protection (EOP). This protection includes:

1. Email with suspected malware will automatically be quarantined and recipients will be notified. See [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).
1. Phishing email identified as "high confidence" will be handled according to the anti-spam policy action. See [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

Because Microsoft wants to keep our customers secure by default, some tenants overrides are not applied for malware or high confidence phish. These overrides include:

- Allowed sender lists or allowed domain lists (anti-spam policies)
- Outlook Safe senders
- IP Allow List (connection filtering)

More information on these overrides can be found in [Create safe sender lists](https://docs.microsoft.com/microsoft-365/security/office-365-security/create-safe-sender-lists-in-office-365).

Secure by default here is not a setting that could be turned on or off, but the way our filtering works out of the box to keep potentially dangerous or unwanted messages out of your mailboxes. Malware and high confidence phishing should be sent to quarantine. Only admins can manage messages that were quarantined as malware or high confidence phishing and they can also report false positives to Microsoft from there. For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md)

## Exceptions

The only override that allows high confidence phishing message to bypass filtering is Exchange mail flow rules (also known as transport rules). To use mail flow rules to bypass filtering, see [Use mail flow rules to set the SCL in messages](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md).

Overrides should only be used for:

- Phishing simulations: simulated attacks can help you identify vulnerable users before a real attack impacts your organization.
- Security/SecOps mailboxes: dedicated mailboxes used by security teams to get unfiltered messages (both good and bad). Teams can then review to see if they contain malicious content.
- Third-party filters: some third party vendors will recommend turning off EOP (SCL = -1) as the third-party filter will manage the mail filtering. Microsoft does not recommend turning off EOP as EOP is required for Defender for Office 365.
- False positives: you may want to allow certain messages that are still being analyzed by Microsoft [via Admin submissions](admin-submission.md). As with all overrides, it is recommended that they are temporary.
