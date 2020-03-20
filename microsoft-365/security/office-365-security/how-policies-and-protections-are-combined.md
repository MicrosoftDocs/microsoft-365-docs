---
title: Order and precedence of email protection in Office 365
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
description: Describes the application order of Office 365 protections, and how the priority value in protection policies determines which policy is applied.
---

# Order and precedence of email protection in Office 365

As Office 365 user, your inbound email may be flagged by multiple forms of protection. For example, the built-in EOP anti-phishing policies that are available to all Office 365 customers, and the more robust ATP anti-phishing policies that are also available to Office 365 Advanced Threat Protection customers. Messages also pass through multiple detection scans for malware, spam, phishing, etc. Given all this activity, there may be some confusion as to which policy is applied.

In general, a policy that's applied to a message is identified in the **X-Forefront-Antispam-Report** header in the **CAT (Category)** property. For more information, see [Anti-spam message headers](anti-spam-message-headers.md).

There are two major factors that determine which policy is applied to a message:

- **The priority of the email protection type**: This order is not configurable, and is described in the following table:

  |||||
  |---|---|---|---|
  |**Priority**|**Email protection**|**Category**|**Where to manage**|
  |1|Malware|CAT:MALW|[Configure anti-malware policies in Office 365](configure-anti-malware-policies.md)|
  |2|Phishing|CAT:PHSH|[Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md)|
  |3|High confidence spam|CAT:HSPM|[Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md)|
  |4|Spoofing|CAT:SPOOF|[Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md) <Br/><br/> [Learn more about spoof intelligence](learn-about-spoof-intelligence.md)|
  |5|Spam|CAT:SPM|[Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md)|
  |6|Bulk|CAT:BULK|[Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md)|
  |7<sup>\*</sup>|Domain Impersonation|DIMP|[Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md)|
  |8<sup>\*</sup>|User Impersonation|UIMP|[Set up Office 365 ATP anti-phishing and anti-phishing policies](set-up-anti-phishing-policies.md)|
  |

  <sup>\*</sup> These features are only available in ATP.

- **The priority of the policy**: For each protection type (anti-spam, anti-malware, anti-phishing, etc.), there's a default policy that applies to everyone, but you can create custom policies that apply to specific users. Each custom policy has a priority value that determines the order that the policies are applied in. The default policy is always applied last.

  If a user is defined in multiple custom policies, only the policy with the highest priority is applied to them. Any remaining policies are not evaluated for the user (including the default policy).

For example, consider the following anti-phishing policies **that apply to the same users**, and a message that's identified as both user impersonation and spoofing:

  |||||
  |---|---|---|---|
  |**Anti-spam policy**|**Priority**|**User Impersonation (ATP)**|**Anti-spoofing (EOP)**|
  |Policy A|1|On|Off|
  |Policy B|2|Off|On|
  |

1. The message is marked and treated as spoof, because spoofing has a higher priority (4) than user impersonation (8).
2. Policy A is applied to the users because it has the higher priority value than Priority B.
3. Based on the settings in Policy A, no action is taken on the message, because anti-spoofing is turned off.
4. Anti-spam policy processing stops, so Policy B is never applied to the users.

Because there's a potential to have many users in many custom policies of the same type, consider the following design guidelines for custom policies:

- Assign a higher priority to policies that apply to a small number of users, and a lower priority to policies that apply to a large number of users. Remember, the default policy is always applied last.
- Configure your higher priority policies to have stricter or more specialized settings than lower priority policies.
- Consider using fewer custom policies (only use custom policies for users who require stricter or more specialize settings).
