---
title: Set up Safe Attachments policies in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 078eb946-819a-4e13-8673-fe0c0ad3a775
ms.collection:
  - m365-security
  - tier2
description: Learn about how to define Safe Attachments policies to protect your organization from malicious files in email.
ms.custom: seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 4/12/2023
---

# Set up Safe Attachments policies in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365-whats-new.md). If you're a home user looking for information about attachment scanning in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Attachments is a feature in [Microsoft Defender for Office 365](defender-for-office-365-whats-new.md) that uses a virtual environment to check attachments in inbound email messages after they've been scanned by [anti-malware protection in Exchange Online Protection (EOP)](anti-malware-protection-about.md), but before delivery to recipients. For more information, see [Safe Attachments in Microsoft Defender for Office 365](safe-attachments-about.md).

Although there's no default Safe Attachments policy, the **Built-in protection** preset security policy provides Safe Attachments protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or custom Safe Attachments policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md). You can also use the procedures in this article to create Safe Attachments policies that apply to specific users, group, or domains.

You can configure Safe Attachments policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Defender for Office 365 add-on subscriptions).

The basic elements of a Safe Attachments policy are:

- **The safe attachment policy**: Specifies the actions for unknown malware detections, whether to send messages with malware attachments to a specified email address, and whether to deliver messages if Safe Attachments scanning can't complete.
- **The safe attachment rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Attachments policies in the Microsoft 365 Defender portal:

- When you create a Safe Attachments policy, you're actually creating a safe attachment rule and the associated safe attachment policy at the same time using the same name for both.
- When you modify a Safe Attachments policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe attachment rule. All other settings modify the associated safe attachment policy.
- When you remove a Safe Attachments policy, the safe attachment rule and the associated safe attachment policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Attachments policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-safe-attachments-policies) section later in this article.

> [!NOTE]
> In the global settings area of Safe Attachments settings, you configure features that are not dependent on Safe Attachments policies. For instructions see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md) and [Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): **configuration/security (manage)** or **configuration/security (read)**. Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md) and [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Create, modify, and delete policies_: Membership in the **Organization Management** or **Security Administrator** role groups in Email & collaboration RBAC <u>and</u> membership in the **Organization Management** role group in Exchange Online RBAC.
    - _Read-only access to policies_: Membership in one of the following role groups:
      - **Global Reader** or **Security Reader** in Email & collaboration RBAC.
      - **View-Only Organization Management** in Exchange Online RBAC.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for Safe Attachments policies, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

## Use the Microsoft 365 Defender portal to create Safe Attachments policies

Creating a custom Safe Attachments policy in the Microsoft 365 Defender portal creates the safe attachment rule and the associated safe attachment policy at the same time using the same name for both.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, click ![Create icon.](../../media/m365-cc-sc-create-icon.png) **Create**.

3. The policy wizard opens. On the **Name your policy** page, configure the following settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Users and domains** page that appears, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts.
   - **Groups**:
     - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups are not supported).
     - The specified Microsoft 365 Groups.
   - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   Multiple values in the same condition use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   - **Exclude these users, groups, and domains**: To add exceptions for the internal recipients that the policy applies to (recipient exceptions), select this option and configure the exceptions. The settings and behavior are exactly like the conditions.

   > [!IMPORTANT]
   > Multiple different types of conditions or exceptions are not additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
   >
   > - Users: romain@contoso.com
   > - Groups: Executives
   >
   > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
   >
   > Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

   When you're finished, click **Next**.

5. On the **Settings** page, configure the following settings:

   - **Safe Attachments unknown malware response**: Select one of the following values:
     - **Off**: Typically, we don't recommend this value.
     - **Monitor**
     - **Block**: This is the default value, and the recommended value in Standard and Strict [preset security policies](preset-security-policies.md).
     - **Replace**: This action will be deprecated. For more information, see [MC424901](https://admin.microsoft.com/AdminPortal/Home#/MessageCenter/:/messages/MC424901).
     - **Dynamic Delivery (Preview feature)**

     These values are explained in [Safe Attachments policy settings](safe-attachments-about.md#safe-attachments-policy-settings).

   - **Quarantine policy**: Select the quarantine policy that applies to messages that are quarantined by Safe Attachments (**Block**, **Replace**, or **Dynamic Delivery**). Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

     A blank value means the default quarantine policy for malware detections by Safe Attachments is used (AdminOnlyAccessPolicy). When you later view or edit the Safe Attachments policy settings, the quarantine policy name is shown.

     > [!NOTE]
     > Quarantine notifications are disabled in the policy named AdminOnlyAccessPolicy. To notify recipients that have messages quarantined as malware by Safe Attachments, create or use an existing quarantine policy where quarantine notifications are turned on. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).
     >
     > Users can't release their own messages that were quarantined as malware by Safe Attachments policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

   - **Redirect messages with detected attachments**: If you select **Enable redirect**, you can specify an email address in the **Send messages that contain blocked, monitored, or replaced attachments to the specified email address** box to send messages that contain malware attachments for analysis and investigation.

     > [!NOTE]
     > Redirection will soon be available only for the **Monitor** action. For more information, see [MC424899](https://admin.microsoft.com/AdminPortal/Home?#/MessageCenter/:/messages/MC424899).

   - **Apply the Safe Attachments detection response if scanning can't complete (timeout or errors)**: The action specified by **Safe Attachments unknown malware response** is taken on messages even when Safe Attachments scanning can't complete. If you selected this option, always select **Enable redirect** and specify an email address to send messages that contain malware attachments. Otherwise, messages might be lost.

   When you're finished, click **Next**.

6. On the **Review** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Submit**.

7. On the confirmation page that appears, click **Done**.

## Use the Microsoft 365 Defender portal to view Safe Attachments policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, the following properties are displayed in the list of policies:
   - **Name**
   - **Status**
   - **Priority**

3. When you select a policy by clicking on the name, the policy settings are displayed in a flyout.

## Use the Microsoft 365 Defender portal to modify Safe Attachments policies

1. IIn the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select a policy from the list by clicking on the name.

3. In the policy details flyout that appears, select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [Use the Microsoft 365 Defender portal to create Safe Attachments policies](#use-the-microsoft-365-defender-portal-to-create-safe-attachments-policies) section earlier in this article.

To enable or disable a policy or set the policy priority order, see the following sections.

### Enable or disable Safe Attachments policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select a policy from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see one of the following values:
   - **Policy off**: To turn on the policy, click ![Turn on icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** .
   - **Policy on**: To turn off the policy, click ![Turn off icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off**.

4. In the confirmation dialog that appears, click **Turn on** or **Turn off**.

5. Click **Close** in the policy details flyout.

Back on the main policy page, the **Status** value of the policy will be **On** or **Off**.

### Set the priority of Safe Attachments policies

By default, Safe Attachments policies are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

Safe Attachments policies are displayed in the order they're processed (the first policy has the **Priority** value 0).

**Note**: In the Microsoft 365 Defender portal, you can only change the priority of the Safe Attachments policy after you create it. In PowerShell, you can override the default priority when you create the safe attachment rule (which can affect the priority of existing rules).

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the Microsoft 365 Defender portal). Changing the priority of a policy only makes sense if you have multiple policies.

1. In the Microsoft 365 Defender portal, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section.

2. On the **Safe Attachments** page, select a policy from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see **Increase priority** or **Decrease priority** based on the current priority value and the number of policies:
   - The policy with the **Priority** value **0** has only the **Decrease priority** option available.
   - The policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** option available.
   - If you have three or more policies, the policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** options available.

   Click ![Increase priority icon.](../../media/m365-cc-sc-increase-icon.png) **Increase priority** or ![Decrease priority icon](../../media/m365-cc-sc-decrease-icon.png) **Decrease priority** to change the **Priority** value.

4. When you're finished, click **Close** in the policy details flyout.

## Use the Microsoft 365 Defender portal to remove Safe Attachments policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select a custom policy from the list by clicking on the name of the policy.

3. At the top of the policy details flyout that appears, click ![More actions icon.](../../media/m365-cc-sc-more-actions-icon.png) **More actions** \> ![Delete policy icon](../../media/m365-cc-sc-delete-icon.png) **Delete policy**.

4. In the confirmation dialog that appears, click **Yes**.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Attachments policies

As previously described, a Safe Attachments policy consists of a safe attachment policy and a safe attachment rule.

In PowerShell, the difference between safe attachment policies and safe attachment rules is apparent. You manage safe attachment policies by using the **\*-SafeAttachmentPolicy** cmdlets, and you manage safe attachment rules by using the **\*-SafeAttachmentRule** cmdlets.

- In PowerShell, you create the safe attachment policy first, then you create the safe attachment rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the safe attachment policy and the safe attachment rule separately.
- When you remove a safe attachment policy from PowerShell, the corresponding safe attachment rule isn't automatically removed, and vice versa.

### Use PowerShell to create Safe Attachments policies

Creating a Safe Attachments policy in PowerShell is a two-step process:

1. Create the safe attachment policy.
2. Create the safe attachment rule that specifies the safe attachment policy that the rule applies to.

 **Notes**:

- You can create a new safe attachment rule and assign an existing, unassociated safe attachment policy to it. A safe attachment rule can't be associated with more than one safe attachment policy.

- You can configure the following settings on new safe attachment policies in PowerShell that aren't available in the Microsoft 365 Defender portal until after you create the policy:
  - Create the new policy as disabled (_Enabled_ `$false` on the **New-SafeAttachmentRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-SafeAttachmentRule** cmdlet).

- A new safe attachment policy that you create in PowerShell isn't visible in the Microsoft 365 Defender portal until you assign the policy to a safe attachment rule.

#### Step 1: Use PowerShell to create a safe attachment policy

To create a safe attachment policy, use this syntax:

```PowerShell
New-SafeAttachmentPolicy -Name "<PolicyName>" -Enable $true [-AdminDisplayName "<Comments>"] [-Action <Allow | Block | Replace | DynamicDelivery>] [-Redirect <$true | $false>] [-RedirectAddress <SMTPEmailAddress>] [-ActionOnError <$true | $false>] [-QuarantineTag <QuarantinePolicyName>]
```

This example creates a safe attachment policy named Contoso All with the following values:

- Block messages that are found to contain malware by Safe Documents scanning (we aren't using the _Action_ parameter, and the default value is `Block`).
- The default quarantine policy is used (AdminOnlyAccessPolicy), because we aren't using the _QuarantineTag_ parameter.
- Redirection is enabled, and messages that are found to contain malware are sent to sec-ops@contoso.com for analysis and investigation.
- If Safe Attachments scanning isn't available or encounters errors, don't deliver the message (we aren't using the _ActionOnError_ parameter, and the default value is `$true`).

```PowerShell
New-SafeAttachmentPolicy -Name "Contoso All" -Enable $true -Redirect $true -RedirectAddress sec-ops@contoso.com
```

For detailed syntax and parameter information, see [New-SafeAttachmentPolicy](/powershell/module/exchange/new-safeattachmentpolicy).

> [!TIP]
> For detailed instructions to specify the quarantine policy to use in a safe attachment policy, see [Use PowerShell to specify the quarantine policy in Safe Attachments policies](quarantine-policies.md#safe-attachments-policies-in-powershell).

#### Step 2: Use PowerShell to create a safe attachment rule

To create a safe attachment rule, use this syntax:

```PowerShell
New-SafeAttachmentRule -Name "<RuleName>" -SafeAttachmentPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"] [-Enabled <$true | $false>]
```

This example creates a safe attachment rule named Contoso All with the following conditions:

- The rule is associated with the safe attachment policy named Contoso All.
- The rule applies to all recipients in the contoso.com domain.
- Because we aren't using the _Priority_ parameter, the default priority is used.
- The rule is enabled (we aren't using the _Enabled_ parameter, and the default value is `$true`).

```powershell
New-SafeAttachmentRule -Name "Contoso All" -SafeAttachmentPolicy "Contoso All" -RecipientDomainIs contoso.com
```

For detailed syntax and parameter information, see [New-SafeAttachmentRule](/powershell/module/exchange/new-safeattachmentrule).

### Use PowerShell to view safe attachment policies

To view existing safe attachment policies, use the following syntax:

```PowerShell
Get-SafeAttachmentPolicy [-Identity "<PolicyIdentity>"] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all safe attachment policies.

```PowerShell
Get-SafeAttachmentPolicy
```

This example returns detailed information for the safe attachment policy named Contoso Executives.

```PowerShell
Get-SafeAttachmentPolicy -Identity "Contoso Executives" | Format-List
```

For detailed syntax and parameter information, see [Get-SafeAttachmentPolicy](/powershell/module/exchange/get-safeattachmentpolicy).

### Use PowerShell to view safe attachment rules

To view existing safe attachment rules, use the following syntax:

```PowerShell
Get-SafeAttachmentRule [-Identity "<RuleIdentity>"] [-State <Enabled | Disabled>] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all safe attachment rules.

```PowerShell
Get-SafeAttachmentRule
```

To filter the list by enabled or disabled rules, run the following commands:

```PowerShell
Get-SafeAttachmentRule -State Disabled
```

```PowerShell
Get-SafeAttachmentRule -State Enabled
```

This example returns detailed information for the safe attachment rule named Contoso Executives.

```PowerShell
Get-SafeAttachmentRule -Identity "Contoso Executives" | Format-List
```

For detailed syntax and parameter information, see [Get-SafeAttachmentRule](/powershell/module/exchange/get-safeattachmentrule).

### Use PowerShell to modify safe attachment policies

You can't rename a safe attachment policy in PowerShell (the **Set-SafeAttachmentPolicy** cmdlet has no _Name_ parameter). When you rename a Safe Attachments policy in the Microsoft 365 Defender portal, you're only renaming the safe attachment _rule_.

Otherwise, the same settings are available when you create a safe attachment policy as described in the [Step 1: Use PowerShell to create a safe attachment policy](#step-1-use-powershell-to-create-a-safe-attachment-policy) section earlier in this article.

To modify a safe attachment policy, use this syntax:

```PowerShell
Set-SafeAttachmentPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeAttachmentPolicy](/powershell/module/exchange/set-safeattachmentpolicy).

> [!TIP]
> For detailed instructions to specify the quarantine policy to use in a safe attachment policy, see [Use PowerShell to specify the quarantine policy in Safe Attachments policies](quarantine-policies.md#safe-attachments-policies-in-powershell).

### Use PowerShell to modify safe attachment rules

The only setting that's not available when you modify a safe attachment rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing safe attachment rules, see the next section.

Otherwise, the same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a safe attachment rule](#step-2-use-powershell-to-create-a-safe-attachment-rule) section earlier in this article.

To modify a safe attachment rule, use this syntax:

```PowerShell
Set-SafeAttachmentRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeAttachmentRule](/powershell/module/exchange/set-safeattachmentrule).

### Use PowerShell to enable or disable safe attachment rules

Enabling or disabling a safe attachment rule in PowerShell enables or disables the whole Safe Attachments policy (the safe attachment rule and the assigned safe attachment policy).

To enable or disable a safe attachment rule in PowerShell, use this syntax:

```PowerShell
<Enable-SafeAttachmentRule | Disable-SafeAttachmentRule> -Identity "<RuleName>"
```

This example disables the safe attachment rule named Marketing Department.

```PowerShell
Disable-SafeAttachmentRule -Identity "Marketing Department"
```

This example enables same rule.

```PowerShell
Enable-SafeAttachmentRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Enable-SafeAttachmentRule](/powershell/module/exchange/enable-safeattachmentrule) and [Disable-SafeAttachmentRule](/powershell/module/exchange/disable-safeattachmentrule).

### Use PowerShell to set the priority of safe attachment rules

The highest priority value you can set on a rule is 0. The lowest value you can set depends on the number of rules. For example, if you have five rules, you can use the priority values 0 through 4. Changing the priority of an existing rule can have a cascading effect on other rules. For example, if you have five custom rules (priorities 0 through 4), and you change the priority of a rule to 2, the existing rule with priority 2 is changed to priority 3, and the rule with priority 3 is changed to priority 4.

To set the priority of a safe attachment rule in PowerShell, use the following syntax:

```PowerShell
Set-SafeAttachmentRule -Identity "<RuleName>" -Priority <Number>
```

This example sets the priority of the rule named Marketing Department to 2. All existing rules that have a priority less than or equal to 2 are decreased by 1 (their priority numbers are increased by 1).

```PowerShell
Set-SafeAttachmentRule -Identity "Marketing Department" -Priority 2
```

**Note**: To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-SafeAttachmentRule** cmdlet instead.

For detailed syntax and parameter information, see [Set-SafeAttachmentRule](/powershell/module/exchange/set-safeattachmentrule).

### Use PowerShell to remove safe attachment policies

When you use PowerShell to remove a safe attachment policy, the corresponding safe attachment rule isn't removed.

To remove a safe attachment policy in PowerShell, use this syntax:

```PowerShell
Remove-SafeAttachmentPolicy -Identity "<PolicyName>"
```

This example removes the safe attachment policy named Marketing Department.

```PowerShell
Remove-SafeAttachmentPolicy -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-SafeAttachmentPolicy](/powershell/module/exchange/remove-safeattachmentpolicy).

### Use PowerShell to remove safe attachment rules

When you use PowerShell to remove a safe attachment rule, the corresponding safe attachment policy isn't removed.

To remove a safe attachment rule in PowerShell, use this syntax:

```PowerShell
Remove-SafeAttachmentRule -Identity "<PolicyName>"
```

This example removes the safe attachment rule named Marketing Department.

```PowerShell
Remove-SafeAttachmentRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-SafeAttachmentRule](/powershell/module/exchange/remove-safeattachmentrule).

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed Safe Attachments policies, do any of the following steps:

- On the **Safe Attachments** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safeattachmentv2>, verify the list of policies, their **Status** values, and their **Priority** values. To view more details, select the policy from the list by clicking on the name, and view the details in the fly out.

- In Exchange Online PowerShell or Exchange Online Protection PowerShell, replace \<Name\> with the name of the policy or rule, run the following command, and verify the settings:

  ```PowerShell
  Get-SafeAttachmentPolicy -Identity "<Name>" | Format-List
  ```

  ```PowerShell
  Get-SafeAttachmentRule -Identity "<Name>" | Format-List
  ```

To verify that Safe Attachments is scanning messages, check the available Defender for Office 365 reports. For more information, see [View reports for Defender for Office 365](reports-defender-for-office-365.md) and [Use Explorer in the Microsoft 365 Defender portal](threat-explorer-about.md).
