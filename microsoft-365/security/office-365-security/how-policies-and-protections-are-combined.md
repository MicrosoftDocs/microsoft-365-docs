---
title: Order and precedence of email protection
keywords: security, malware, Microsoft 365, M365, security center, Microsoft 365 Defender portal, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
ms.collection: 
  - m365-security
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the application order of protections in Exchange Online Protection (EOP), and how the priority value in protection policies determines which policy is applied.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
---

# Order and precedence of email protection

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email may be flagged by multiple forms of protection. For example, the built-in anti-phishing policies in EOP that are available to all Microsoft 365 customers, and the more robust anti-phishing policies that are available to Microsoft Defender for Office 365 customers. Messages also pass through multiple detection scans for malware, spam, phishing, etc. Given all this activity, there may be some confusion as to which policy is applied.

In general, a policy that's applied to a message is identified in the **X-Forefront-Antispam-Report** header in the **CAT (Category)** property. For more information, see [Anti-spam message headers](message-headers-eop-mdo.md).

There are two major factors that determine which policy is applied to a message:

- **The order of processing for the email protection type**: This order is not configurable, and is described in the following table:

  |Order|Email protection|Category|Where to manage|
  |:---:|---|---|---|
  |1|Malware|CAT:MALW|[Configure anti-malware policies in EOP](configure-anti-malware-policies.md)|
  |2|Phishing|CAT:PHSH|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |3|High confidence spam|CAT:HSPM|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |4|Spoofing|CAT:SPOOF|[Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md)|
  |5<sup>\*</sup>|User impersonation (protected users)|UIMP|[Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md)|
  |6<sup>\*</sup>|Domain impersonation (protected domains)|DIMP|[Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md)|
  |7|Spam|CAT:SPM|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
  |8|Bulk|CAT:BULK|[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|

  <sup>\*</sup> These features are only available in anti-phishing policies in Microsoft Defender for Office 365.

- **The priority of the policy**: For each type of policy (anti-spam, anti-malware, anti-phishing, etc.), there's a default policy that applies to everyone, but you can create custom policies that apply to specific users (recipients). Each custom policy has a priority value that determines the order that the policies are applied in. The default policy is always applied last.

  > [!IMPORTANT]
  > If a recipient is defined in multiple policies of the same type (anti-spam, anti-phishing, etc.), only the policy with the highest priority is applied to the recipient. Any remaining policies of that type are not evaluated for the recipient (including the default policy).

For example, consider the following **anti-phishing policies** in Microsoft Defender for Office 365 **that apply to the same users**, and a message that's identified as **both user impersonation and spoofing**:

|Policy name|Priority|User impersonation|Anti-spoofing|
|---|:---:|:---:|:---:|
|Policy A|1|On|Off|
|Policy B|2|Off|On|

1. The message is identified as spoofing, because spoofing (4) is evaluated before user impersonation (5).
2. Policy A is applied first because it has a higher priority than Policy B.
3. Based on the settings in Policy A, no action is taken on the message because anti-spoofing is turned off.
4. The processing of anti-phishing policies stops for all included recipients, so Policy B is never applied to recipients who are also in Policy A.

Because the same users might be intentionally or unintentionally included in multiple policies of the same type, use the following design guidelines for custom policies:

- Assign a higher priority to policies that apply to a small number of users, and a lower priority to policies that apply to a large number of users. Remember, the default policy is always applied last.
- Configure your higher priority policies to have stricter or more specialized settings than lower priority policies.
- Consider using fewer custom policies (only use custom policies for users who require stricter or more specialized settings).
