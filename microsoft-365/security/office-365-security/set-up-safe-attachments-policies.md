---
title: Set up Safe Attachments policies in Microsoft Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 078eb946-819a-4e13-8673-fe0c0ad3a775
ms.collection: 
  - M365-security-compliance
description: Learn about how to define Safe Attachments policies to protect your organization from malicious files in email.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Set up Safe Attachments policies in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](office-365-atp.md). If you're a home user looking for information about attachment scanning in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Attachments is a feature in [Microsoft Defender for Office 365](office-365-atp.md) that uses a virtual environment to check attachments in inbound email messages after they've been scanned by [anti-malware protection in Exchange Online Protection (EOP)](anti-malware-protection.md), but before delivery to recipients. For more information, see [Safe Attachments in Microsoft Defender for Office 365](atp-safe-attachments.md).

There's no built-in or default Safe Attachments policy. To get Safe Attachments scanning of email message attachments, you need to create one or more Safe Attachments policies as described in this article.

You can configure Safe Attachments policies in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Defender for Office 365 add-on subscriptions).

The basic elements of a Safe Attachments policy are:

- **The safe attachment policy**: Specifies the actions for unknown malware detections, whether to send messages with malware attachments to a specified email address, and whether to deliver messages if Safe Attachments scanning can't complete.
- **The safe attachment rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Attachments polices in the Security & Compliance Center:

- When you create a Safe Attachments policy, you're actually creating a safe attachment rule and the associated safe attachment policy at the same time using the same name for both.
- When you modify a Safe Attachments policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe attachment rule. All other settings modify the associated safe attachment policy.
- When you remove a Safe Attachments policy, the safe attachment rule and the associated safe attachment policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Attachments policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-safe-attachments-policies) section later in this article.

> [!NOTE]
> In the global settings area of Safe Attachments settings, you configure features that are not dependent on Safe Attachments policies. For instructions see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md) and [Safe Documents in Microsoft 365 E5](safe-docs.md).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Safe Attachments** page, use <https://protection.office.com/safeattachmentv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article:
  - To create, modify, and delete Safe Attachments policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups in the Security & Compliance Center **and** a member of the **Organization Management** role group in Exchange Online.
  - For read-only access to Safe Attachments policies, you need to be a member of the **Global Reader** or **Security Reader** role groups in the Security & Compliance Center.

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md) and [Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).
  - The **View-Only Organization Management** role group in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for Safe Attachments policies, see [Safe Attachments settings](recommended-settings-for-eop-and-office365-atp.md#safe-attachments-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

## Use the Security & Compliance Center to create Safe Attachments policies

Creating a custom Safe Attachments policy in the Security & Compliance Center creates the safe attachment rule and the associated safe attachment policy at the same time using the same name for both.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. On the **Safe Attachments** page, click **Create**.

3. The **New Safe Attachments policy** wizard opens. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Settings** page that appears, configure the following settings:

   - **Safe Attachments unknown malware response**: Select one of the following values:

     - **Off**: Typically, we don't recommend this value.
     - **Monitor**
     - **Block**: This is the default value, and the recommended value in Standard and Strict [preset security policies](preset-security-policies.md).
     - **Replace**
     - **Dynamic Delivery (Preview Feature)**

     These values are explained in [Safe Attachments policy settings](atp-safe-attachments.md#safe-attachments-policy-settings).

   - **Send the attachment to the following email address**: For the action values **Block**, **Monitor**, or **Replace**, you can select **Enable redirect** to send messages that contain malware attachments to the specified internal or external email address for analysis and investigation.

     The recommendation for Standard and Strict policy settings is to enable redirection. For more information, see [Safe Attachments settings](recommended-settings-for-eop-and-office365-atp.md#safe-attachments-settings).

   - **Apply the above selection if malware scanning for attachments times out or error occurs**: The action specified by **Safe Attachments unknown malware response** is taken on messages even when Safe Attachments scanning can't complete. If you selected this option, always select **Enabled redirect**. Otherwise, messages might be lost.

   When you're finished, click **Next**.

5. On the **Applied to** page that appears, identify the internal recipients that the policy applies to.

   You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   Click **Add a condition**. In the dropdown that appears, select a condition under **Applied if**:

   - **The recipient is**: Specifies one or more mailboxes, mail users, or mail contacts in your organization.
   - **The recipient is a member of**: Specifies one or more groups in your organization.
   - **The recipient domain is**: Specifies recipients in one or more of the configured accepted domains in your organization.

   After you select the condition, a corresponding dropdown appears with an **Any of these** box.

   - Click in the box and scroll through the list of values to select.
   - Click in the box and start typing to filter the list and select a value.
   - To add additional values, click in an empty area in the box.
   - To remove individual entries, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the value.
   - To remove the whole condition, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the condition.

   To add an additional condition, click **Add a condition** and select a remaining value under **Applied if**.

   To add exceptions, click **Add a condition** and select an exception under **Except if**. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

6. On the **Review your settings** page that appears, review your settings. You can click **Edit** on each setting to modify it.

   When you're finished, click **Finish**.

## Use the Security & Compliance Center to view Safe Attachments policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. On the **Safe Attachments** page, select a policy from the list and click on it (don't select the check box).

   The policy details appear in a fly out

## Use the Security & Compliance Center to modify Safe Attachments policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. On the **Safe Attachments** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click **Edit policy**.

The available settings in the fly out that appears are identical to those described in the [Use the Security & Compliance Center to create Safe Attachments policies](#use-the-security--compliance-center-to-create-safe-attachments-policies) section.

To enable or disable a policy or set the policy priority order, see the following sections.

### Enable or disable Safe Attachments policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. Notice the value in the **Status** column:

   - Move the toggle to the left ![Turn policy off](../../media/scc-toggle-off.png) to disable the policy.

   - Move the toggle to the right ![Turn policy on](../../media/scc-toggle-on.png) to enable the policy.

### Set the priority of Safe Attachments policies

By default, Safe Attachments policies are given a priority that's based on the order they were created in (newer polices are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

Safe Attachments policies are displayed in the order they're processed (the first policy has the **Priority** value 0).

**Note**: In the Security & Compliance Center, you can only change the priority of the Safe Attachments policy after you create it. In PowerShell, you can override the default priority when you create the safe attachment rule (which can affect the priority of existing rules).

To change the priority of a policy, move the policy up or down in the list (you can't directly modify the **Priority** number in the Security & Compliance Center).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. On the **Safe Attachments** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click the available priority button.

   - The Safe Attachments policy with the **Priority** value **0** has only the **Decrease priority** button available.

   - The Safe Attachments policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** button available.

   - If you have three or more Safe Attachments policies, policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** buttons available.

4. Click **Increase priority** or **Decrease priority** to change the **Priority** value.

5. When you're finished, click **Close**.

## Use the Security & Compliance Center to remove Safe Attachments policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. On the **Safe Attachments** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click **Delete policy**, and then click **Yes** in the warning dialog that appears.

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

- You can configure the following settings on new safe attachment policies in PowerShell that aren't available in the Security & Compliance Center until after you create the policy:
  - Create the new policy as disabled (_Enabled_ `$false` on the **New-SafeAttachmentRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-SafeAttachmentRule** cmdlet).

- A new safe attachment policy that you create in PowerShell isn't visible in the Security & Compliance Center until you assign the policy to a safe attachment rule.

#### Step 1: Use PowerShell to create a safe attachment policy

To create a safe attachment policy, use this syntax:

```PowerShell
New-SafeAttachmentPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] [-Action <Allow | Block | Replace | DynamicDelivery>] [-Redirect <$true | $false>] [-RedirectAddress <SMTPEmailAddress>] [-ActionOnError <$true | $false>]
```

This example creates a safe attachment policy named Contoso All with the following values:

- Block messages that are found to contain malware by Safe Documents scanning (we aren't using the _Action_ parameter, and the default value is `Block`).
- Redirection is enabled, and messages that are found to contain malware are sent to sec-ops@contoso.com for analysis and investigation.
- If Safe Attachments scanning isn't available or encounters errors, don't deliver the message (we aren't using the _ActionOnError_ parameter, and the default value is `$true`).

```PowerShell
New-SafeAttachmentPolicy -Name "Contoso All" -Redirect $true -RedirectAddress sec-ops@contoso.com
```

For detailed syntax and parameter information, see [New-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safeattachmentpolicy).

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

For detailed syntax and parameter information, see [New-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/new-safeattachmentrule).

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

For detailed syntax and parameter information, see [Get-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/get-safeattachmentpolicy).

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

For detailed syntax and parameter information, see [Get-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/get-safeattachmentrule).

### Use PowerShell to modify safe attachment policies

You can't rename a safe attachment policy in PowerShell (the **Set-SafeAttachmentPolicy** cmdlet has no _Name_ parameter). When you rename a Safe Attachments policy in the Security & Compliance Center, you're only renaming the safe attachment _rule_.

Otherwise, the same settings are available when you create a safe attachment policy as described in the [Step 1: Use PowerShell to create a safe attachment policy](#step-1-use-powershell-to-create-a-safe-attachment-policy) section earlier in this article.

To modify a safe attachment policy, use this syntax:

```PowerShell
Set-SafeAttachmentPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safeattachmentpolicy).

### Use PowerShell to modify safe attachment rules

The only setting that's not available when you modify a safe attachment rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing safe attachment rules, see the next section.

Otherwise, the same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a safe attachment rule](#step-2-use-powershell-to-create-a-safe-attachment-rule) section earlier in this article.

To modify a safe attachment rule, use this syntax:

```PowerShell
Set-SafeAttachmentRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/set-safeattachmentrule).

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

For detailed syntax and parameter information, see [Enable-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/enable-safeattachmentrule) and [Disable-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/disable-safeattachmentrule).

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

For detailed syntax and parameter information, see [Set-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/set-safeattachmentrule).

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

For detailed syntax and parameter information, see [Remove-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/remove-safeattachmentpolicy).

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

For detailed syntax and parameter information, see [Remove-SafeAttachmentRule](https://docs.microsoft.com/powershell/module/exchange/remove-safeattachmentrule).

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed Safe Attachments policies, do any of the following steps:

- In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**. Verify the list of policies, their **Status** values, and their **Priority** values. To view more details, select the policy from the list, and view the details in the fly out.

- In Exchange Online PowerShell or Exchange Online Protection PowerShell, replace \<Name\> with the name of the policy or rule, run the following command, and verify the settings:

  ```PowerShell
  Get-SafeAttachmentPolicy -Identity "<Name>" | Format-List
  ```

  ```PowerShell
  Get-SafeAttachmentRule -Identity "<Name>" | Format-List
  ```

To verify that Safe Attachments is scanning messages, check the available Defender for Office 365 reports. For more information, see [View reports for Defender for Office 365](view-reports-for-atp.md) and [Use Explorer in the Security & Compliance Center](threat-explorer.md).
