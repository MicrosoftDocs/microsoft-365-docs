---
title: Preset security policies
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.date: 

localization_priority: Normal
ms.assetid: 
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to apply Standard and Strict policy settings across the protection features of Exchange Online Protection (EOP) and Microsoft Defender for Office 365
ms.technology: mdo
ms.prod: m365-security
---

# Preset security policies in EOP and Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

Preset security policies provide a centralized location for applying all of the recommended spam, malware, and phishing policies to users at once. The policy settings are not configurable. Instead, they are set by us and are based on our observations and experiences in the datacenters for a balance between keeping harmful content away from users without disrupting their work.

The rest of this topic describes preset security policies and how to configure them.

## What preset security policies are made of

Preset security policies consist of the following elements:

- Profiles
- Policies
- Policy settings

In addition, the order of precedence is important if multiple preset security policies and other policies apply to the same person.

### Profiles in preset security policies

A profile determines the level of protection. The following profiles are available:

- **Standard protection**: A baseline protection profile that's suitable for most users.
- **Strict protection**: A more aggressive protection profile for selected users (high value targets or priority users).

You use rules with conditions and exceptions that determine who the profiles are or are not applied to.

You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

The available conditions and exceptions are:

- **The recipients are**: Mailboxes, mail users, or mail contacts in your organization.
- **The recipients are members of**: Groups in your organization.
- **The recipient domains are**: Accepted domains that are configured in Microsoft 365.

### Policies in preset security policies

Preset security policies use the corresponding policies from the various protection features in EOP and Microsoft Defender for Office 365. These policies are created _after_ you assign the **Standard protection** or **Strict protection** preset security policies to users. You can't modify these policies.

- **Exchange Online Protection (EOP) policies**: This includes Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:

  - [Anti-spam policies](configure-your-spam-filter-policies.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [Anti-malware policies](configure-anti-malware-policies.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [EOP Anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings) named **Standard Preset Security Policy** and **Strict Preset Security Policy** (spoof settings).

- **Microsoft Defender for Office 365 policies**: This includes organizations with Microsoft 365 E5 or Defender for Office 365 add-on subscriptions:

  - Anti-phishing policies in Microsoft Defender for Office 365 named **Standard Preset Security Policy** and **Strict Preset Security Policy**, which include:

    - The same [spoof settings](set-up-anti-phishing-policies.md#spoof-settings) that are available in the EOP anti-phishing policies.
    - [Impersonation settings](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
    - [Advanced phishing thresholds](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)

  - [Safe Links policies](set-up-safe-links-policies.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.

  - [Safe Attachments policies](set-up-safe-attachments-policies.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.

Note that you can apply EOP protections to different users than Microsoft Defender for Office 365 protections.

### Policy settings in preset security policies

You can't modify the policy settings in the protection profiles. The **Standard** and **Strict** policy setting values are described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

### Order of precedence for preset security policies and other policies

When multiple policies are applied to a user, the following order is applied from highest priority to lowest priority:

1. **Strict protection** preset security policy
2. **Standard protection** preset security policy
3. Custom security policies
4. Default security policies

In other words, the settings of the **Strict protection** policy override the settings of the **Standard protection** policy, which overrides the settings from a custom policy, which overrides the settings from the default policy.

## Assign preset security policies to users

### What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Preset security policies** page, use <https://protection.office.com/presetSecurityPolicies>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To configure preset security policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to preset security policies, you need to be a member of the **Global Reader** role group.

  For more information, see [Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo).

  **Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

### Use the Security & Compliance Center to assign preset security policies to users

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Preset security policies**.

2. Under **Standard protection** or **Strict protection**, click **Edit**.

3. The **Apply Standard protection** or **Apply Strict protection** wizard starts. On the **EOP protections apply to** step, identify the internal recipients that the [EOP protections](#policies-in-preset-security-policies) apply to:

   1. Click **Add a condition**. In the dropdown that appears, select a condition under **Applied if**:

      - **The recipients are**
      - **The recipients are members of**
      - **The recipient domains are**

      You can only use a condition once, but you can specify multiple values for the condition. Multiple values of the same condition use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_).

   2. The condition that you selected appears in a shaded section. In that section, click in the **Any of these** box. If you wait a moment, a list will appear so you can select a value. Or, you can start typing a value to filter the list and select a value. Repeat this step as many times as necessary. To remove an individual value, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the value. To remove the entire condition, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the condition.

   3. To add another condition, click **Add a condition** and select from the remaining conditions. Different conditions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

      Repeat the previous step to add values to the condition, and repeat this step as many times as necessary or until you run out of conditions.

   4. To add an exception, click **Add a condition**. In the dropdown that appears, select a condition under **Except when**. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

4. If your organization has Microsoft Defender for Office 365, you're taken to the **ATP protections apply to** step to identify the internal recipients that the [Microsoft Defender for Office 365 protections](#policies-in-preset-security-policies) apply to.

   The settings and behavior are exactly like the **EOP protections apply to** step.

   When you're finished, click **Next**.

5. On the **Confirm** step, verify your selections, and then click **Confirm**.

### Use the Security & Compliance Center to modify the assignments of preset security policies

The steps to modify the assignment of the **Standard protection** or **Strict protection** security policy are the same as when you initially [assigned the preset security policies to users](#use-the-security--compliance-center-to-assign-preset-security-policies-to-users).

To disable the **Standard protection** or **Strict protection** security policies while still preserving the existing conditions and exceptions, slide the toggle to **Disabled**. To enable the policies, slide the toggle to **Enabled**.

### How do you know these procedures worked?

To verify that you've successfully assigned the **Standard protection** or **Strict protection** security policy to a user, use a protection setting where the default value is different than the **Standard protection** setting, which is different that the **Strict protection** setting.

For example, for email that's detected as spam (not high confidence spam) verify that the message is delivered to the Junk Email folder for **Standard protection** users, and quarantined for **Strict protection** users.

Or, for [bulk email](bulk-complaint-level-values.md), verify that the BCL value 6 or higher delivers the message to the Junk Email folder for **Standard protection** users, and the BCL value 4 or higher quarantines the message for **Strict protection** users.
