---
title: Order and precedence of email protection
keywords: security, malware, Microsoft 365, M365, security center, Microsoft 365 Defender portal, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
ms.collection: 
  - m365-security
  - tier3
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn how the order of protection settings and the priority order of security policies affect the application of security policies in Microsoft 365.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 8/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Order and precedence of email protection

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email might be flagged by multiple forms of protection. For example, anti-spoofing protection that's available to all Microsoft 365 customers, and impersonation protection that's available to Microsoft Defender for Office 365 customers only. Messages also pass through multiple detection scans for malware, spam, phishing, etc. Given all this activity, there might be some confusion as to which policy is applied.

In general, a policy that's applied to a message is identified in the **X-Forefront-Antispam-Report** header in the **CAT (Category)** property. For more information, see [Anti-spam message headers](message-headers-eop-mdo.md).

There are two major factors that determine which policy is applied to a message:

- **The order of processing for the email protection type**: This order isn't configurable, and is described in the following table:

  |Order|Email protection|Category|Where to manage|
  |:---:|---|---|---|
  |1|Malware|CAT:MALW|[Configure anti-malware policies in EOP](anti-malware-policies-configure.md)|
  |2|High confidence Phish|CAT:HPHSH|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|
  |3|Phishing|CAT:PHSH|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|
  |4|High confidence spam|CAT:HSPM|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|
  |5|Spoofing|CAT:SPOOF|[Spoof intelligence insight in EOP](anti-spoofing-spoof-intelligence.md)|
  |6<sup>\*</sup>|User impersonation (protected users)|UIMP|[Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)|
  |7<sup>\*</sup>|Domain impersonation (protected domains)|DIMP|[Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)|
  |8<sup>\*</sup>|Mailbox intelligence (contact graph)|GIMP|[Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)|
  |9|Spam|CAT:SPM|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|
  |10|Bulk|CAT:BULK|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|

  <sup>\*</sup> These features are available only in anti-phishing policies in Microsoft Defender for Office 365.

- **The priority order of policies**: The policy priority order is shown in the following list:

  1. The anti-spam, anti-malware, anti-phishing, Safe Links<sup>\*</sup>, and Safe Attachments<sup>\*</sup> policies in the [Strict preset security policy](preset-security-policies.md#profiles-in-preset-security-policies) (when enabled).
  2. The anti-spam, anti-malware, anti-phishing, Safe Links<sup>\*</sup>, and Safe Attachments<sup>\*</sup> policies in the [Standard preset security policy](preset-security-policies.md#profiles-in-preset-security-policies) (when enabled).
  3. Anti-phishing, Safe Links, and Safe Attachments in [Defender for Office 365 evaluation policies](try-microsoft-defender-for-office-365.md#audit-mode-vs-blocking-mode-for-defender-for-office-365) (when enabled).
  4. Custom anti-spam, anti-malware, anti-phishing, Safe Links<sup>\*</sup>, and Safe Attachments<sup>\*</sup> policies (when created).

     Custom policies are assigned a default priority value when you create the policy (newer equals higher), but you can change the priority value at any time. This priority value affects the order that *custom policies* of that type (anti-spam, anti-malware, anti-phishing, etc.) are applied, but doesn't affect where custom policies are applied in the overall order.

  5. Of equal value:
     - The Safe Links and Safe Attachments policies in the [Built-in protection preset security policy](preset-security-policies.md#profiles-in-preset-security-policies)<sup>\*</sup>.
     - The default policies for anti-malware, anti-spam, and anti-phishing.

     You can configure exceptions to the Built-in protection preset security policy, but you can't configure exceptions to the default policies (they apply to all recipients and you can't turn them off).

  <sup>\*</sup> Defender for Office 365 only.

  The priority order matters if you have the same recipient intentionally or unintentionally included in multiple policies, because *only* the first policy of that type (anti-spam, anti-malware, anti-phishing, etc.) is applied to that recipient, regardless of how many other policies that the recipient is included in. There's never a merging or combining of the settings in multiple policies for the recipient. The recipient is unaffected by the settings of the remaining policies of that type.

For example, the group named "Contoso Executives" is included in the following policies:

- The Strict preset security policy
- A custom anti-spam policy with the priority value 0 (highest priority)
- A custom anti-spam policy with the priority value 1.

Which anti-spam policy settings are applied to the members of Contoso Executives? The Strict preset security policy. The settings in the custom anti-spam policies are ignored for the members of Contoso Executives, because the Strict preset security policy is always applied first.

As another example, consider the following custom anti-phishing policies in Microsoft Defender for Office 365 that apply to the same recipients, and a message that contains both user impersonation and spoofing:

|Policy name|Priority|User impersonation|Anti-spoofing|
|---|:---:|:---:|:---:|
|Policy A|1|On|Off|
|Policy B|2|Off|On|

1. The message is identified as spoofing, because spoofing (4) is evaluated before user impersonation (5) in the order of processing for the email protection type.
2. Policy A is applied first, because it has a higher priority than Policy B.
3. Based on the settings in Policy A, no action is taken on the message because anti-spoofing is turned off.
4. The processing of anti-phishing policies stops for all included recipients, so Policy B is never applied to recipients who are also in Policy A.

To make sure that recipients get the protection settings that you want, use the following guidelines for policy memberships:

- Assign a smaller number of users to higher priority policies, and a larger number of users to lower priority policies. Remember, default policies are always applied last.
- Configure higher priority policies to have stricter or more specialized settings than lower priority policies. You have complete control over the settings in custom policies and the default policies, but no control over most settings in preset security policies.
- Consider using fewer custom policies (only use custom policies for users who require more specialized settings than the Standard or Strict preset security policies, or the default policies).

## Appendix

It's important to understand how user allows and blocks, tenant allows and blocks, and filtering stack verdicts in EOP and Defender for Office 365 compliment or contradict each other.

- For information about filtering stacks and how they're combined, see [Step-by-step threat protection in Microsoft Defender for Office 365](protection-stack-microsoft-defender-for-office365.md).
- After the filtering stack determines a verdict, only then are tenant policies and their configured actions evaluated.
- If the same email address or domain exists in a user's Safe Senders list and Blocked Senders list, the Safe Senders list takes precedence.
- If the same entity (email address, domain, spoofed sending infrastructure, file, or URL) exists in an allow entry and a block entry in the Tenant Allow/Block List, the block entry takes precedence.

### User allows and blocks

Entries in a user's _safelist collection_ (the Safe Senders list, the Safe Recipients list, and the Blocked Senders list on each mailbox) are able to override some filtering stack verdicts as described in the following table:

|Filtering stack verdict|User's Safe Senders/Recipients list|User's Blocked Senders list|
|---|---|---|
|Malware|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
|High confidence phishing|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
|Phishing|**User wins**: Email delivered to user's Inbox|**Tenant wins**: The applicable anti-spam policy determines the action|
|High confidence spam|**User wins**: Email delivered to user's Inbox|**User wins**: Email delivered to user's Junk Email folder|
|Spam|**User wins**: Email delivered to user's Inbox|**User wins**: Email delivered to user's Junk Email folder|
|Bulk|**User wins**: Email delivered to user's Inbox|**User wins**: Email delivered to user's Junk Email folder|
|Not spam|**User wins**: Email delivered to user's Inbox|**User wins**: Email delivered to user's Junk Email folder|

For more information about the safelist collection and anti-spam settings on user mailboxes, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).

### Tenant allows and blocks

Tenant allows and blocks are able to override some filtering stack verdicts as described in the following tables:

- [Advanced delivery policy](skip-filtering-phishing-simulations-sec-ops-mailboxes.md) (skip filtering for designated SecOps mailboxes and phishing simulation URLs):

  |Filtering stack verdict|Advanced delivery policy allow|
  |---|---|
  |Malware|**Tenant wins**: Email delivered to mailbox|
  |High confidence phishing|**Tenant wins**: Email delivered to mailbox|
  |Phishing|**Tenant wins**: Email delivered to mailbox|
  |High confidence spam|**Tenant wins**: Email delivered to mailbox|
  |Spam|**Tenant wins**: Email delivered to mailbox|
  |Bulk|**Tenant wins**: Email delivered to mailbox|
  |Not spam|**Tenant wins**: Email delivered to mailbox|

- [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (skip listing):

  |Filtering stack verdict|Enhanced Filtering|
  |---|---|
  |Malware|**Filter wins**: Email quarantined|
  |High confidence phishing|**Tenant wins**: Email delivered to mailbox|
  |Phishing|**Tenant wins**: Email delivered to mailbox|
  |High confidence spam|**Tenant wins**: Email delivered to mailbox|
  |Spam|**Tenant wins**: Email delivered to mailbox|
  |Bulk|**Tenant wins**: Email delivered to mailbox|
  |Not spam|**Tenant wins**: Email delivered to mailbox|

- IP Allow List and IP Block List in [connection filter policies](connection-filter-policies-configure.md):

  |Filtering stack verdict|IP Allow List|IP Block List|
  |---|---|---|
  |Malware|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
  |High confidence phishing|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
  |Phishing|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email silently dropped|
  |High confidence spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email silently dropped|
  |Spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email silently dropped|
  |Bulk|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email silently dropped|
  |Not spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email silently dropped|

- [Exchange mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules):

  |Filtering stack verdict|Mail flow rule allows|Mail flow rule blocks|
  |---|---|---|
  |Malware|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
  |High confidence phishing|**Filter wins**: Email quarantined except in complex routing|**Filter wins**: Email quarantined|
  |Phishing|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Phishing action in the applicable anti-spam policy|
  |High confidence spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|
  |Spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|
  |Bulk|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|
  |Not spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|

- Allow and block settings in [anti-spam policies](anti-spam-policies-configure.md):
  - Allowed sender and domain list.
  - Blocked sender and domain list.
  - Block messages from specific countries or in specific languages.
  - Block messages based on [Advanced Spam Filter (ASF) settings](anti-spam-policies-asf-settings-about.md).

  |Filtering stack verdict|Anti-spam policy allows|Anti-spam policy blocks|
  |---|---|---|
  |Malware|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
  |High confidence phishing|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|
  |Phishing|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Phishing action in the applicable anti-spam policy|
  |High confidence spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|
  |Spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|
  |Bulk|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|
  |Not spam|**Tenant wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to user's Junk Email folder|

- [Allow entries in the Tenant Allow/Block List](tenant-allow-block-list-about.md#allow-entries-in-the-tenant-allowblock-list):

  |Filtering stack verdict|Email address/domain|
  |---|---|
  |Malware|**Filter wins**: Email quarantined|
  |High confidence phishing|**Filter wins**: Email quarantined|
  |Phishing|**Tenant wins**: Email delivered to mailbox|
  |High confidence spam|**Tenant wins**: Email delivered to mailbox|
  |Spam|**Tenant wins**: Email delivered to mailbox|
  |Bulk|**Tenant wins**: Email delivered to mailbox|
  |Not spam|**Tenant wins**: Email delivered to mailbox|

- [Block entries in the Tenant Allow/Block List](tenant-allow-block-list-about.md#block-entries-in-the-tenant-allowblock-list):

  |Filtering stack verdict|Email address/domain|Spoof|File|URL|
  |---|---|---|---|---|
  |Malware|**Filter wins**: Email quarantined|**Filter wins**: Email quarantined|**Tenant wins**: Email quarantined|**Filter wins**: Email quarantined|
  |High confidence phishing|**Tenant wins**: Email quarantined|**Filter wins**: Email quarantined|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|
  |Phishing|**Tenant wins**: Email quarantined|**Tenant wins**: Spoof action in the applicable anti-phishing policy|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|
  |High confidence spam|**Tenant wins**: Email quarantined|**Tenant wins**: Spoof action in the applicable anti-phishing policy|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|
  |Spam|**Tenant wins**: Email quarantined|**Tenant wins**: Spoof action in the applicable anti-phishing policy|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|
  |Bulk|**Tenant wins**: Email quarantined|**Tenant wins**: Spoof action in the applicable anti-phishing policy|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|
  |Not spam|**Tenant wins**: Email quarantined|**Tenant wins**: Spoof action in the applicable anti-phishing policy|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|

### User and tenant settings conflict

The following table describes how conflicts are resolved if an email is affected by both user allow/block settings and tenant allow/block settings:

|Type of tenant allow/block|User's Safe Senders/Recipients list|User's Blocked Senders list|
|---|---|---|
|Block entries in the Tenant Allow/Block List for: <ul><li>Email addresses and domains</li><li>Files</li><li>URLs</li></ul>|**Tenant wins**: Email quarantined|**Tenant wins**: Email quarantined|
|Block entries for spoofed senders in the Tenant Allow/Block List|**Tenant wins**: Spoof intelligence action in the applicable anti-phishing policy|**Tenant wins**: Spoof intelligence action in the applicable anti-phishing policy|
|Advanced delivery policy|**User wins**: Email delivered to mailbox|**Tenant wins**: Email delivered to mailbox|
|Block settings in anti-spam policies|**User wins**: Email delivered to mailbox|**User wins**: Email delivered to user's Junk Email folder|
|Blocks by mail flow rules|**User wins**: Email delivered to mailbox|**User wins**: Email delivered to user's Junk Email folder|
|Allows by: <ul><li>Mail flow rules</li><li>IP Allow List (connection filter policy)</li><li>Allowed sender and domain list (anti-spam policies)</li><li>Tenant Allow/Block List</li></ul>|**User wins**: Email delivered to mailbox|**User wins**: Email delivered to user's Junk Email folder|
