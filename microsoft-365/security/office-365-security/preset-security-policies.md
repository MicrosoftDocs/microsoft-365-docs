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
ms.localizationpriority: medium
ms.assetid:
ms.collection:
  - M365-security-compliance
ms.custom:
description: Admins can learn how to apply Standard and Strict policy settings across the protection features of Exchange Online Protection (EOP) and Microsoft Defender for Office 365
ms.technology: mdo
ms.prod: m365-security
---

# Preset security policies in EOP and Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Preset security policies provide a centralized location for applying all of the recommended spam, malware, and phishing policies to users at once. The policy settings are not configurable. Instead, they are set by us and are based on our observations and experiences in the datacenters for a balance between keeping harmful content away from users and avoiding unnecessary disruptions.

The rest of this article describes preset security policies and how to configure them.

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

  for **Standard protection** and **Strict protection**, you use rules with conditions and exceptions that determine who the profiles are or are not applied to.

  The available conditions and exceptions are:

  - **Users**: The specified mailboxes, mail users, or mail contacts in your organization.
  - **Groups**: The specified distribution groups, mail-enabled security groups, or Microsoft 365 Groups in your organization.
  - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

  You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

- **Built-in protection** (Defender for Office 365 only): A profile that enables Safe Links and Safe Attachments protection only. This setting effectively provide default policies for Safe Links and Safe Attachments, which never had default policies.

  > [!NOTE]
  > The **Built-in protection** preset security policy is currently in General Availability, available to all organizations.

  For **Built-in protection**, the preset security policy is on by default for all Defender for Office 365 customers. Although we don't recommend it, you can also configure exceptions based on **Users**, **Groups**, and **Domains** so the protection isn't applied to specific users.

Until you assign the policies to users, the **Standard** and **Strict** preset security policies are assigned to no one. In contrast, the **Built-in protection** preset security policy is assigned to all recipients by default, but you can configure exceptions.

### Policies in preset security policies

Preset security policies use the corresponding policies from the various protection features in EOP and Microsoft Defender for Office 365. These policies are created _after_ you assign the **Standard protection** or **Strict protection** preset security policies to users. You can't modify the settings in these policies.

- **Exchange Online Protection (EOP) policies**: This includes Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:

  - [Anti-spam policies](configure-your-spam-filter-policies.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [Anti-malware policies](configure-anti-malware-policies.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [EOP Anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings) named **Standard Preset Security Policy** and **Strict Preset Security Policy** (spoof settings).

- **Microsoft Defender for Office 365 policies**: This includes organizations with Microsoft 365 E5 or Defender for Office 365 add-on subscriptions:
  - Anti-phishing policies in Microsoft Defender for Office 365 named **Standard Preset Security Policy** and **Strict Preset Security Policy**, which include:
    - The same [spoof settings](set-up-anti-phishing-policies.md#spoof-settings) that are available in the EOP anti-phishing policies.
    - [Impersonation settings](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
    - [Advanced phishing thresholds](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Links policies](set-up-safe-links-policies.md) named **Standard Preset Security Policy**, **Strict Preset Security Policy**, and **Built-in Protection Policy**.
  - [Safe Attachments policies](set-up-safe-attachments-policies.md) named **Standard Preset Security Policy**, **Strict Preset Security Policy**, and **Built-in Protection Policy**.

You can apply EOP protections to different users than Microsoft Defender for Office 365 protections.

### Policy settings in preset security policies

You can't modify the policy settings in the protection profiles. The **Standard**, **Strict**, and **Built-in protection** policy setting values are described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

### Order of precedence for preset security policies and other policies

When multiple policies are applied to a user, the following order is applied from highest priority to lowest priority:

1. **Strict protection** preset security policy
2. **Standard protection** preset security policy
3. Custom security policies
4. **Built-in protection** preset security policy and default security policies

In other words, the settings of the **Strict protection** policy override the settings of the **Standard protection** policy, which overrides the settings from a custom policy, which overrides the settings from the **Built-in protection** preset security policy (Safe Links and Safe Attachments) and the default policy (anti-spam, anti-malware, and anti-phishing).

For example, if a security setting exists in **Standard protection** and an admin has enabled the **Standard protection** for a user, then the **Standard protection** setting will be applied instead of what is configured for that setting in a custom policy or in the default policy (for the same user). Note that you might have some portion of your organization to whom you want to apply only the **Standard** or **Strict protection** policy while applying a custom policy to other users in your organization to meet specific needs.

**Built-in protection** does not affect recipients in existing Safe Links or Safe Attachments policies. If you've already configured **Standard protection**, **Strict protection** or custom Safe Links or Safe Attachments policies, those policies are _always_ applied _before_ **Built-in protection**, so there's no impact to the recipients who are already defined in those existing preset or custom policies.

## Assign preset security policies to users

### What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To configure preset security policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to preset security policies, you need to be a member of the **Global Reader** role group.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

### Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

2. On the **Preset security policies** page, click **Manage** in the **Standard protection** or **Strict protection** sections.

3. The **Apply Standard protection** or **Apply Strict protection** wizard starts in a flyout. On the **EOP protections apply to** page, identify the internal recipients that the [EOP protections](#policies-in-preset-security-policies) apply to (recipient conditions):
   - **Users**
   - **Groups**
   - **Domains**

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   - **Exclude these users, groups, and domains**: To add exceptions for the internal recipients that the policy applies to (recipient exceptions), select this option and configure the exceptions. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

4. In Microsoft Defender for Office 365 organizations, you're taken to the **Defender for Office 365 protections apply to** page to identify the internal recipients that the [Microsoft Defender for Office 365 protections](#policies-in-preset-security-policies) apply to (recipient conditions).

   The settings and behavior are exactly like the **EOP protections apply to** page in the previous step.

   When you're finished, click **Next**.

5. On the **Review and confirm your changes** page, verify your selections, and then click **Confirm**.

### Use the Microsoft 365 Defender portal to modify the assignments of Standard and Strict preset security policies

The steps to modify the assignment of the **Standard protection** or **Strict protection** preset security policy are the same as when you initially [assigned the preset security policies to users](#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

To disable the **Standard protection** or **Strict protection** preset security policies while still preserving the existing conditions and exceptions, slide the toggle to **Disabled** ![Toggle Off.](../../media/scc-toggle-off.png). To enable the policies, slide the toggle to **Enabled** ![Toggle On](../../media/scc-toggle-on.png).

### Use the Microsoft 365 Defender portal to modify the assignments of the Built-in protection preset security policy

Remember, the **Built-in protection** preset security policy is assigned to all recipients, and doesn't affect recipients who are defined in the **Standard protection** or **Strict protection** preset security policies, or custom Safe Links or Safe Attachments policies.

Therefore, we typically don't recommend exceptions to the **Built-in protection** preset security policy.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

2. On the **Preset security policies** page, select **Add exclusions (not recommended)** in the **Built-in protection** section.

3. On the **Exclude from Built-in protection** flyout that appears, identify the internal recipients that are excluded from the built-in Safe Links and Safe Attachments protection:
   - **Users**
   - **Groups**
   - **Domains**

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   When you're finished, click **Save**.

### How do you know these procedures worked?

To verify that you've successfully assigned the **Standard protection** or **Strict protection** security policy to a user, use a protection setting where the default value is different than the **Standard protection** setting, which is different that the **Strict protection** setting.

For example, for email that's detected as spam (not high confidence spam) verify that the message is delivered to the Junk Email folder for **Standard protection** users, and quarantined for **Strict protection** users.

Or, for [bulk mail](bulk-complaint-level-values.md), verify that the BCL value 6 or higher delivers the message to the Junk Email folder for **Standard protection** users, and the BCL value 4 or higher quarantines the message for **Strict protection** users.
