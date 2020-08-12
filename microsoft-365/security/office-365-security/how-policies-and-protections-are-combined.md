---
title: Order and precedence of email protection
keywords: security, malware, Microsoft 365, M365, security center, ATP, Microsoft Defender ATP, Office 365 ATP, Azure ATP
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn about the application order of protections in Exchange Online Protection (EOP), and how the priority value in protection policies determines which policy is applied."
---

# Order and precedence of email protection

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email may be flagged by multiple forms of protection. For example, the built-in EOP anti-phishing policies that are available to all Microsoft 365 customers, and the more robust ATP anti-phishing policies that are also available to Office 365 Advanced Threat Protection (Office 365 ATP) customers. Messages also pass through multiple detection scans for malware, spam, phishing, etc. Given all this activity, there may be some confusion as to which policy is applied.

In general, a policy that's applied to a message is identified in the **X-Forefront-Antispam-Report** header in the **CAT (Category)** property. For more information, see [Anti-spam message headers](anti-spam-message-headers.md).

There are two major factors that determine which policy is applied to a message:

- **The priority of the email protection type**: This order is not configurable, and is described in the following table:

  ****

  |Priority|Email protection|Category|Where to manage|
  |---|---|---|---|
  |1|Malware|CAT:MALW|[Configure anti-malware policies in EOP](configure-anti-malware-policies.md)|
  |2|Phishing|CAT:PHSH|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |3|High confidence spam|CAT:HSPM|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |4|Spoofing|CAT:SPOOF|[Configure spoof intelligence in EOP](learn-about-spoof-intelligence.md)|
  |5|Spam|CAT:SPM|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |6|Bulk|CAT:BULK|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |7<sup>\*</sup>|Domain impersonation (protected users)|DIMP|[Configure ATP anti-phishing policies](configure-atp-anti-phishing-policies.md)|
  |8<sup>\*</sup>|User impersonation (protected domains)|UIMP|[Configure ATP anti-phishing policies](configure-atp-anti-phishing-policies.md)|
  |

  <sup>\*</sup> These features are only available in ATP anti-phishing policies.

- **The priority of the policy**: For each protection type (anti-spam, anti-malware, anti-phishing, etc.), there's a default policy that applies to everyone, but you can create custom policies that apply to specific users. Each custom policy has a priority value that determines the order that the policies are applied in. The default policy is always applied last.

  If a user is defined in multiple policies of the same type, only the policy with the highest priority is applied to them. Any remaining policies of that type are not evaluated for the user (including the default policy).

For example, consider the following ATP anti-phishing policies **that apply to the same users**, and a message that's identified as both user impersonation and spoofing:

  ****

  |ATP anti-phishing policy|Priority|User impersonation|Anti-spoofing|
  |---|---|---|---|
  |Policy A|1|On|Off|
  |Policy B|2|Off|On|
  |

1. The message is marked and treated as spoof, because spoofing has a higher priority (4) than user impersonation (8).
2. Policy A is applied to the users because it has a higher priority than Policy B.
3. Based on the settings in Policy A, no action is taken on the message, because anti-spoofing is turned off in the policy.
4. Policy processing stops, so Policy B is never applied to the users.

Because it's possible that the same users are intentionally or unintentionally included in multiple custom policies of the same type, use the following design guidelines for custom policies:

- Assign a higher priority to policies that apply to a small number of users, and a lower priority to policies that apply to a large number of users. Remember, the default policy is always applied last.
- Configure your higher priority policies to have stricter or more specialized settings than lower priority policies.
- Consider using fewer custom policies (only use custom policies for users who require stricter or more specialized settings).
