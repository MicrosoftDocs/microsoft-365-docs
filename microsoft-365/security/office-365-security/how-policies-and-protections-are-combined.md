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
ms.date: 6/20/2023
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
  |8|Spam|CAT:SPM|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|
  |9|Bulk|CAT:BULK|[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|

  <sup>\*</sup> These features are only available in anti-phishing policies in Microsoft Defender for Office 365.

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

  The priority order matters if you have the same recipient intentionally or unintentionally defined in multiple policies, because *only* the first policy of that type (anti-spam, anti-malware, anti-phishing, etc.) is applied to that recipient, regardless of how many other policies that the recipient is specified in. There's never a merging or combining of the settings in multiple policies for the recipient. The recipient is unaffected by the settings of the remaining policies of that type.

For example, the group named "Contoso Executives" is specified in the following policies:

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
