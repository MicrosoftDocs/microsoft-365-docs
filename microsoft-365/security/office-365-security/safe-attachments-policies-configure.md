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
ms.date: 7/12/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Set up Safe Attachments policies in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365-whats-new.md). If you're a home user looking for information about attachment scanning in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

In organizations with Microsoft Defender for Office 365, Safe Attachments is an additional layer of protection against malware in messages. After message attachments are scanned by [anti-malware protection in Exchange Online Protection (EOP)](anti-malware-protection-about.md), Safe Attachments opens files in a virtual environment to see what happens (a process known as _detonation_) before the messages are delivered to recipients. For more information, see [Safe Attachments in Microsoft Defender for Office 365](safe-attachments-about.md).

Although there's no default Safe Attachments policy, the **Built-in protection** preset security policy provides Safe Attachments protection to all recipients by default. Recipients who are specified in the Standard or Strict preset security policies or in custom Safe Attachments policies aren't affected. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

For greater granularity, you can also use the procedures in this article to create Safe Attachments policies that apply to specific users, group, or domains.

You configure Safe Attachments policies in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

> [!NOTE]
> In the global settings of Safe Attachments settings, you configure features that aren't dependent on Safe Attachments policies. For instructions see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md) and [Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md) and [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Create, modify, and delete policies_: Membership in the **Organization Management** or **Security Administrator** role groups in Email & collaboration RBAC <u>and</u> membership in the **Organization Management** role group in Exchange Online RBAC.
    - _Read-only access to policies_: Membership in one of the following role groups:
      - **Global Reader** or **Security Reader** in Email & collaboration RBAC.
      - **View-Only Organization Management** in Exchange Online RBAC.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for Safe Attachments policies, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

- For more information about licensing requirements, see [Licensing terms](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#licensing-terms).

## Use the Microsoft 365 Defender portal to create Safe Attachments policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section.Or, to go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new Safe Attachments policy wizard.

3. On the **Name your policy** page, configure these settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished on the **Name your policy** page, select **Next**.

4. On the **Users and domains** page, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts.
   - **Groups**:
     - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
     - The specified Microsoft 365 Groups.
   - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png"::: next to the value.

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

   When you're finished on the **Users and domains** page, select **Next**.

5. On the **Settings** page, configure the following settings:

   - **Safe Attachments unknown malware response**: Select one of the following values:
     - **Off**
     - **Monitor**
     - **Block**: This is the default value, and the recommended value in Standard and Strict [preset security policies](preset-security-policies.md).
     - **Dynamic Delivery (Preview messages)**

     These values are explained in [Safe Attachments policy settings](safe-attachments-about.md#safe-attachments-policy-settings).

   - **Quarantine policy**: Select the quarantine policy that applies to messages that are quarantined by Safe Attachments (**Block** or **Dynamic Delivery**). Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

     By default, the quarantine policy named AdminOnlyAccessPolicy is used for malware detections by Safe Attachments policies. For more information about this quarantine policy, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

     > [!NOTE]
     > Quarantine notifications are disabled in the policy named AdminOnlyAccessPolicy. To notify recipients that have messages quarantined as malware by Safe Attachments, create or use an existing quarantine policy where quarantine notifications are turned on. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).
     >
     > Users can't release their own messages that were quarantined as malware by Safe Attachments policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

   - **Redirect messages with detected attachments**: If you select **Enable redirect**, you can specify an email address in the **Send messages that contain monitored attachments to the specified email address** box to send messages that contain malware attachments for analysis and investigation.

     > [!NOTE]
     > Redirection is available only for the **Monitor** action. For more information, see [MC424899](https://admin.microsoft.com/AdminPortal/Home?#/MessageCenter/:/messages/MC424899).

   When you're finished on the **Settings** page, select **Next**.

6. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review** page, select **Submit**.

7. On the **New Safe Attachments policy created** page, you can select the links to view the policy, view Safe Attachments policies, and learn more about Safe Attachments policies.

   When you're finished on the **New Safe Attachments policy created** page, select **Done**.

   Back on the **Safe Attachments** page, the new policy is listed.

## Use the Microsoft 365 Defender portal to view Safe Attachments policy details

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

On the **Safe Attachments** page, the following properties are displayed in the list of policies:

- **Name**
- **Status**: Values are **On** or **Off**.
- **Priority**: For more information, see the [Set the priority of Safe Attachments policies](#use-the-microsoft-365-defender-portal-to-set-the-priority-of-custom-safe-attachments-policies) section.

To change the list of policies from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific Safe Attachment policies.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of policies to a CSV file.

Use :::image type="icon" source="../../media/m365-cc-sc-view-reports-icon.png" border="false"::: **View reports** to open the [Threat protection status report](reports-defender-for-office-365.md#threat-protection-status-report).

Select a policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

> [!TIP]
> To see details about other Safe Attachments policies without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

## Use the Microsoft 365 Defender portal to take action on Safe Attachments policies

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select the Safe Attachments policy by using either of the following methods:

   - Select the policy from the list by selecting the check box next to the name. The following actions are available in the :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** dropdown list that appears:
     - **Enable selected policies**.
     - **Disable selected policies**.
     - **Delete selected policies**.

     :::image type="content" source="../../media/safe-attachments-policies-main-page.png" alt-text="The Safe Attachments page with a policy selected and the More actions control expanded." lightbox="../../media/safe-attachments-policies-main-page.png":::

   - Select the policy from the list by clicking anywhere in the row other than the check box next to the name. Some or all following actions are available in the details flyout that opens:
     - Modify policy settings by clicking **Edit** in each section (custom policies or the default policy)
     - :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** or :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** (custom policies only)
     - :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** or :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** (custom policies only)
     - :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** (custom policies only)

     :::image type="content" source="../../media/anti-phishing-policies-details-flyout.png" alt-text="The details flyout of a custom Safe Attachments policy." lightbox="../../media/anti-phishing-policies-details-flyout.png":::

The actions are described in the following subsections.

### Use the Microsoft 365 Defender portal to modify custom Safe Attachments policies

After you select a custom Safe Attachments policy by clicking anywhere in the row other than the check box next to the name, the policy settings are shown in the details flyout that opens. Select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [Create Safe Attachments policies](#use-the-microsoft-365-defender-portal-to-create-safe-attachments-policies) section earlier in this article.

You can't modify the Safe Attachments policies named **Standard Preset Security Policy**, **Strict Preset Security Policy**, or **Built-in protection (Microsoft)** that are associated with [preset security policies](preset-security-policies.md) in the policy details flyout. Instead, you select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **View preset security policies** in the details flyout to go to the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies> to modify the preset security policies.

### Use the Microsoft 365 Defender portal to enable or disable custom Safe Attachments policies

You can't enable or disable the Safe Attachments policies named **Standard Preset Security Policy**, **Strict Preset Security Policy**, or **Built-in protection (Microsoft)** that are associated with [preset security policies](preset-security-policies.md) here. You enable or disable preset security policies on the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies>.

After you select an enabled custom Safe Attachments policy (the **Status** value is **On**), use either of the following methods to disable it:

- **On the Safe Attachments page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Disable selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** at the top of the flyout.

After you select a disabled custom Safe Attachments policy (the **Status** value is **Off**), use either of the following methods to enable it:

- **On the Safe Attachments page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Enable selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** at the top of the flyout.

On the **Safe Attachments** page, the **Status** value of the policy is now **On** or **Off**.

### Use the Microsoft 365 Defender portal to set the priority of custom Safe Attachments policies

Safe Attachments policies are processed in the order that they're displayed on the **Safe Attachments** page:

- The Safe Attachments policy named **Strict Preset Security Policy** that's associated with the Strict preset security policy is always applied first (if the Strict preset security policy is [enabled](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users)).
- The Safe Attachments policy named **Standard Preset Security Policy** that's associated with the Standard preset security policy is always applied next (if the Standard preset security policy is enabled).
- Custom Safe Attachments policies are applied next in priority order (if they're enabled):
  - A lower priority value indicates a higher priority (0 is the highest).
  - By default, a new policy is created with a priority that's lower than the lowest existing custom policy (the first is 0, the next is 1, etc.).
  - No two policies can have the same priority value.
- The Safe Attachments policy named **Built-in protection (Microsoft)** that's associated with Built-in protection always has the priority value **Lowest**, and you can't change it.

Safe Attachments protection stops for a recipient after the first policy is applied (the highest priority policy for that recipient). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

After you select the custom Safe Attachments policy by clicking anywhere in the row other than the check box next to the name, you can increase or decrease the priority of the policy in the details flyout that opens:

- The custom policy with the **Priority** value **0** on the **Safe Attachments** page has the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** action at the top of the details flyout.
- The custom policy with the lowest priority (highest **Priority** value; for example, **3**) has the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** action at the top of the details flyout.
- If you have three or more policies, the policies between **Priority** 0 and the lowest priority have both the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** and the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** actions at the top of the details flyout.

When you're finished in the policy details flyout, select **Close**.

Back on the **Safe Attachments** page, the order of the policy in the list matches the updated **Priority** value.

### Use the Microsoft 365 Defender portal to remove custom Safe Attachments policies

You can't remove the Safe Attachments policies named **Standard Preset Security Policy**, **Strict Preset Security Policy**, or **Built-in protection (Microsoft)** that are associated with [preset security policies](preset-security-policies.md).

After you select the custom Safe Attachments policy, use either of the following methods to remove it:

- **On the Safe Attachments page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Delete selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** at the top of the flyout.

Select **Yes** in the warning dialog that opens.

Back on the **Safe Attachments** page, the removed policy is no longer listed.

## Use Exchange Online PowerShell to configure Safe Attachments policies

In PowerShell, the basic elements of a Safe Attachments policy are:

- **The safe attachment policy**: Specifies the actions for unknown malware detections, whether to send messages with malware attachments to a specified email address, and whether to deliver messages if Safe Attachments scanning can't complete.
- **The safe attachment rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Attachments policies in the Microsoft 365 Defender portal:

- When you create a Safe Attachments policy in the Defender portal, you're actually creating a safe attachment rule and the associated safe attachment policy at the same time using the same name for both.
- When you modify a Safe Attachments policy in the Defender portal, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe attachment rule. All other settings modify the associated safe attachment policy.
- When you remove a Safe Attachments policy from the Defender portal, the safe attachment rule and the associated safe attachment policy are removed.

In PowerShell, the difference between safe attachment policies and safe attachment rules is apparent. You manage safe attachment policies by using the **\*-SafeAttachmentPolicy** cmdlets, and you manage safe attachment rules by using the **\*-SafeAttachmentRule** cmdlets.

- In PowerShell, you create the safe attachment policy first, then you create the safe attachment rule, which identifies the associated policy that the rule applies to.
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
New-SafeAttachmentPolicy -Name "<PolicyName>" -Enable $true [-AdminDisplayName "<Comments>"] [-Action <Allow | Block | DynamicDelivery>] [-Redirect <$true | $false>] [-RedirectAddress <SMTPEmailAddress>] [-QuarantineTag <QuarantinePolicyName>]
```

This example creates a safe attachment policy named Contoso All with the following values:

- Block messages that are found to contain malware by Safe Documents scanning (we aren't using the _Action_ parameter, and the default value is `Block`).
- The default quarantine policy is used (AdminOnlyAccessPolicy), because we aren't using the _QuarantineTag_ parameter.

```PowerShell
New-SafeAttachmentPolicy -Name "Contoso All" -Enable $true
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

- In Exchange Online PowerShell, replace \<Name\> with the name of the policy or rule, run the following command, and verify the settings:

  ```PowerShell
  Get-SafeAttachmentPolicy -Identity "<Name>" | Format-List
  ```

  ```PowerShell
  Get-SafeAttachmentRule -Identity "<Name>" | Format-List
  ```

- Add the URL `http://spamlink.contoso.com` to a file (for example, a Word document), and attach that file in an email message to test Safe Attachments protection. This URL is similar to the GTUBE text string for testing anti-spam solutions. This URL isn't harmful, but when it's included in an email attachment, it triggers a Safe Attachments protection response.

- To verify that Safe Attachments is scanning messages, check the available Defender for Office 365 reports. For more information, see [View reports for Defender for Office 365](reports-defender-for-office-365.md) and [Use Explorer in the Microsoft 365 Defender portal](threat-explorer-about.md).
