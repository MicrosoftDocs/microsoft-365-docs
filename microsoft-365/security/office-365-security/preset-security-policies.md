---
title: "Preset security policies"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Admins can learn how to apply Standard and Strict policy settings across the protection features of Exchange Online Protection (EOP) and Office 365 Advanced Threat Protection (ATP)"
---

# Preset security policies in EOP and Office 365 ATP

Preset security policies provide a centralized location for applying the different built-in spam, malware, and phishing policies to users. The policy settings are not configurable. Instead, they are based on experience learned in the datacenters for a balance between keeping harmful content away from users without disrupting their work.

The rest of this topic describes preset security policies and how to configure them.

## What preset security policies are made of

Preset security policies consist of the following elements:

- Profiles
- Policies
- Policy settings

In addition, the order of precedence is important if multiple protection polices and other policies apply to the same person.

### Profiles in preset security policies

A profile determines the level of protection. The following profiles are available:

- **Standard protection**: A baseline protection profile that's suitable for most users.
- **Strict protection**: A more aggressive protection profile for selected users (high value targets).

You use rules with conditions and exceptions that determine who the profiles are or are not applied to.

You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Applied if**: Identifies internal recipients that the preset security policy applies to:

  - **The recipients are**: One or more mailboxes, mail users, or mail contacts in your organization.
  - **The recipients are members of**: One or more groups in your organization.
  - **The recipient domains are**: One or more of the configured accepted domains in Microsoft 365.

- **Except when**: Exceptions for the preset security policy. The settings and behavior are exactly like the conditions:

  - **The recipients are**
  - **The recipients are members of**
  - **The recipient domains are**

### Policies in preset security policies

The policies that are applied to users via preset security policies are the *built-in* policies, not any custom policies that you create.

- **Exchange Online Protection (EOP) policies**: This includes Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:
  
  - [Anti-spam policies](configure-your-spam-filter-policies.md)
  - [Outbound spam policies](configure-the-outbound-spam-policy.md)
  - [Anti-malware policies](configure-anti-malware-policies.md)
  - [Spoof settings in EOP anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings)

- **Office 365 Advanced Threat Protection (ATP) policies**: This includes organizations with Microsoft 365 E5 or Office 365 ATP add-on subscriptions:

  - ATP anti-phishing policies, which include:

    - The same [Spoof settings](set-up-anti-phishing-policies.md#spoof-settings) that are available in EOP anti-phishing policies.
    - [Impersonation settings](set-up-anti-phishing-policies.md#impersonation-settings-in-atp-anti-phishing-policies)
    - [Advanced phishing thresholds](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-atp-anti-phishing-policies)

  - [Safe Links policy settings in the default policy](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-the-default-policy-for-all-users)

  - [Safe Attachments policy settings in the default policy](recommended-settings-for-eop-and-office365-atp.md#safe-attachments-policy-settings-in-the-default-policy-for-all-users)

Note that you can apply the settings in EOP policies to different users than the settings in ATP policies

### Policy settings in preset security policies

You can't modify the policy settings in the protection profiles. The **Standard** and **Strict** policy setting values are described in [Recommended settings for EOP and Office 365 ATP security](recommended-settings-for-eop-and-office365-atp.md).

### Order of precedence for preset security policies and other policies

When multiple policies are applied to a user, the following order is applied from highest priority to lowest priority:

1. **Strict protection** policy
2. **Standard protection** policy
3. Any other types of related custom policies.

In other words, the settings of the **Strict protection** policy override the settings of the **Standard protection** policy, which overrides the settings from any other related custom policies.

## Assign preset security policies to users

### What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Preset security policies** page, use <https://protection.office.com/presetSecurityPolicies>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this topic:

  - To configure preset security policies, you need to be a member of one of the following role groups:

    - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

  - For read-only access to preset security policies, you need to be a member of one of the following role groups:

    - **Security Reader** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
    - **View-Only Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).
