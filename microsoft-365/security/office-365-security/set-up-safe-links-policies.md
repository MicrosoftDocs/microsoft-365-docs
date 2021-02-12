---
title: Set up Safe Links policies in Microsoft Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.date: 

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid: bdd5372d-775e-4442-9c1b-609627b94b5d
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to view, create, modify, and delete Safe Links policies and global Safe Links settings in Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---

# Set up Safe Links policies in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Microsoft Defender for Office 365](defender-for-office-365.md) that provides URL scanning of inbound email messages in mail flow, and time of click verification of URLs and links in email messages and in other locations. For more information, see [Safe Links in Microsoft Defender for Office 365](atp-safe-links.md).

There's no built-in or default Safe Links policy. To get Safe Links scanning of URLs, you need to create one or more Safe Links policies as described in this article.

> [!NOTE]
> You configure the global settings for Safe Links protection **outside** of Safe Links policies. For instructions, see [Configure global settings for Safe Links in Microsoft Defender for Office 365](configure-global-settings-for-safe-links.md).

You can configure Safe Links policies in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Microsoft Defender for Office 365 add-on subscriptions).

The basic elements of a Safe Links policy are:

- **The safe links policy**: Turn on Safe Links protection, turn on real-time URL scanning, specify whether to wait for real-time scanning to complete before delivering the message, turn on scanning for internal messages, specify whether to track user clicks on URLs, and specify whether to allow users to click trough to the original URL.
- **The safe links rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Links polices in the Security & Compliance Center:

- When you create a Safe Links policy, you're actually creating a safe links rule and the associated safe links policy at the same time using the same name for both.
- When you modify a Safe Links policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe links rule. All other settings modify the associated safe links policy.
- When you remove a Safe Links policy, the safe links rule and the associated safe links policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Links policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-safe-links-policies) section later in this article.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Safe Links** page, use <https://protection.office.com/safelinksv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article:
  - To create, modify, and delete Safe Links policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups in the Security & Compliance Center **and** a member of the **Organization Management** role group in Exchange Online.
  - For read-only access to Safe Links policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md) and [Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  > 
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).
  . - The **View-Only Organization Management** role group in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for Safe Links policies, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

- [New features are continually being added to Microsoft Defender for Office 365](defender-for-office-365.md#new-features-in-microsoft-defender-for-office-365). As new features are added, you may need to make adjustments to your existing Safe Links policies.

## Use the Security & Compliance Center to create Safe Links policies

Creating a custom Safe Links policy in the Security & Compliance Center creates the safe links rule and the associated safe links policy at the same time using the same name for both.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, click **Create**.

3. The **New Safe Links policy** wizard opens. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Settings** page that appears, configure the following settings:

   - **Select the action for unknown potentially malicious URLs in messages**: Select **On** to enable Safe Links protection for links in email messages.

   - **Select the action for unknown or potentially malicious URLs within Microsoft Teams**: Select **On** to enable Safe Links protection for links in Teams.

   - **Apply real-time URL scanning for suspicious links and links that point to files**: Select this setting to enable real-time scanning of links in email messages.

   - **Wait for URL scanning to complete before delivering the message**: Select this setting to wait for real-time URL scanning to complete before delivering the message.

   - **Apply Safe Links to email messages sent within the organization**: Select this setting to apply the Safe Links policy to messages between internal senders and internal recipients.

   - **Do not track user clicks**: Leave this setting unselected to enable the tracking user clicks on URLs in email messages.

   - **Do not allow users to click through to original URL**: Select this setting to block users from clicking through to the original URL in [warning pages](atp-safe-links.md#warning-pages-from-safe-links).

   - **Do not rewrite the following URLs**: Allows access the specified URLs that would otherwise be blocked by Safe Links.

     In the box, type the URL or value that you want, and then click ![Add button icon](../../media/ITPro-EAC-AddIcon.png).

     To remove an existing entry, select it and then click ![Delete button icon](../../media/ITPro-EAC-DeleteIcon.png).

     For entry syntax, see [Entry syntax for the "Do not rewrite the following URLs" list](atp-safe-links.md#entry-syntax-for-the-do-not-rewrite-the-following-urls-list).

   For detailed information about these settings, see [Safe Links settings for email messages](atp-safe-links.md#safe-links-settings-for-email-messages) and [Safe Links settings for Microsoft Teams](atp-safe-links.md#safe-links-settings-for-microsoft-teams).

   For more the recommended values for Standard and Strict policy settings, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

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

## Use the Security & Compliance Center to view Safe Links policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, select a policy from the list and click on it (don't select the check box).

   The policy details appear in a fly out

## Use the Security & Compliance Center to modify Safe Links policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click **Edit policy**.

The available settings in the fly out that appears are identical to those described in the [Use the Security & Compliance Center to create Safe Links policies](#use-the-security--compliance-center-to-create-safe-links-policies) section.

To enable or disable a policy or set the policy priority order, see the following sections.

### Enable or disable Safe Links policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. Notice the value in the **Status** column:

   - Move the toggle to the left to disable the policy: ![Turn policy off](../../media/scc-toggle-off.png).

   - Move the toggle to the right to enable the policy: ![Turn policy on](../../media/scc-toggle-on.png).

### Set the priority of Safe Links policies

By default, Safe Links policies are given a priority that's based on the order they were created in (newer polices are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

Safe Links policies are displayed in the order they're processed (the first policy has the **Priority** value 0).

> [!NOTE]
> In the Security & Compliance Center, you can only change the priority of the Safe Links policy after you create it. In PowerShell, you can override the default priority when you create the safe links rule (which can affect the priority of existing rules).

To change the priority of a policy, move the policy up or down in the list (you can't directly modify the **Priority** number in the Security & Compliance Center).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click the available priority button:

   - The Safe Links policy with the **Priority** value **0** has only the **Decrease priority** button available.

   - The Safe Links policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** button available.

   - If you have three or more Safe Links policies, policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** buttons available.

4. Click **Increase priority** or **Decrease priority** to change the **Priority** value.

5. When you're finished, click **Close**.

## Use the Security & Compliance Center to remove Safe Links policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click **Delete policy**, and then click **Yes** in the warning dialog that appears.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Links policies

As previously described, a Safe Links policy consists of a safe links policy and a safe links rule.

In PowerShell, the difference between safe links policies and safe links rules is apparent. You manage safe links policies by using the **\*-SafeLinksPolicy** cmdlets, and you manage safe links rules by using the **\*-SafeLinksRule** cmdlets.

- In PowerShell, you create the safe links policy first, then you create the safe links rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the safe links policy and the safe links rule separately.
- When you remove a safe links policy from PowerShell, the corresponding safe links rule isn't automatically removed, and vice versa.

### Use PowerShell to create Safe Links policies

Creating a Safe Links policy in PowerShell is a two-step process:

1. Create the safe links policy.
2. Create the safe links rule that specifies the safe links policy that the rule applies to.

> [!NOTE]
> 
> - You can create a new safe links rule and assign an existing, unassociated safe links policy to it. A safe links rule can't be associated with more than one safe links policy.
> 
> - You can configure the following settings on new safe links policies in PowerShell that aren't available in the Security & Compliance Center until after you create the policy:
> 
>   - Create the new policy as disabled (_Enabled_ `$false` on the **New-SafeLinksRule** cmdlet).
>   - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-SafeLinksRule** cmdlet).
> 
> - A new safe links policy that you create in PowerShell isn't visible in the Security & Compliance Center until you assign the policy to a safe links rule.

#### Step 1: Use PowerShell to create a safe links policy

To create a safe links policy, use this syntax:

```PowerShell
New-SafeLinksPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] [-IsEnabled <$true | $false>] [-EnableSafeLinksForTeams <$true | $false>] [-ScanUrls <$true | $false>] [-DeliverMessageAfterScan <$true | $false>] [-EnableForInternalSenders <$true | $false>] [-DoNotAllowClickThrough <$true | $false>] [-DoNotTrackUserClicks <$true | $false>] [-DoNotRewriteUrls "Entry1","Entry2",..."EntryN"]
```

> [!NOTE]
> 
> - For details about the entry syntax to use for the _DoNotRewriteUrls_ parameter, see [Entry syntax for the "Do not rewrite the following URLs" list](atp-safe-links.md#entry-syntax-for-the-do-not-rewrite-the-following-urls-list).
> 
> - For additional syntax that you can use for the _DoNotRewriteUrls_ parameter when you modify existing safe links policies by using the **Set-SafeLinksPolicy** cmdlet, see the [Use PowerShell to modify safe links policies](#use-powershell-to-modify-safe-links-policies) section later in this article.

This example creates a safe links policy named Contoso All with the following values:

- Turn on URL scanning and rewriting in email messages.
- Turn on URL scanning in Teams (TAP Preview only).
- Turn on real-time scanning of clicked URLs, including clicked links that point to files.
- Wait for URL scanning to complete before delivering the message.
- Turn on URL scanning and rewriting for internal messages.
- Track user clicks related to Safe Links protection (we aren't using the _DoNotTrackUserClicks_ parameter, and the default value is $false, which means user clicks are tracked).
- Do not allow users to click through to the original URL.

```PowerShell
New-SafeLinksPolicy -Name "Contoso All" -IsEnabled $true -EnableSafeLinksForTeams $true -ScanUrls $true -DeliverMessageAfterScan $true -EnableForInternalSenders $true -DoNotAllowClickThrough $true
```

For detailed syntax and parameter information, see [New-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safelinkspolicy).

#### Step 2: Use PowerShell to create a safe links rule

To create a safe links rule, use this syntax:

```PowerShell
New-SafeLinksRule -Name "<RuleName>" -SafeLinksPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"] [-Enabled <$true | $false>]
```

This example creates a safe links rule named Contoso All with the following conditions:

- The rule is associated with the safe links policy named Contoso All.
- The rule applies to all recipients in the contoso.com domain.
- Because we aren't using the _Priority_ parameter, the default priority is used.
- The rule is enabled (we aren't using the _Enabled_ parameter, and the default value is `$true`).

```powershell
New-SafeLinksRule -Name "Contoso All" -SafeLinksPolicy "Contoso All" -RecipientDomainIs contoso.com
```

For detailed syntax and parameter information, see [New-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/new-safelinksrule).

### Use PowerShell to view safe links policies

To view existing safe links policies, use the following syntax:

```PowerShell
Get-SafeLinksPolicy [-Identity "<PolicyIdentity>"] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all safe links policies.

```PowerShell
Get-SafeLinksPolicy | Format-Table Name
```

This example returns detailed information for the safe links policy named Contoso Executives.

```PowerShell
Get-SafeLinksPolicy -Identity "Contoso Executives"
```

For detailed syntax and parameter information, see [Get-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/get-safelinkspolicy).

### Use PowerShell to view safe links rules

To view existing safe links rules, use the following syntax:

```PowerShell
Get-SafeLinksRule [-Identity "<RuleIdentity>"] [-State <Enabled | Disabled] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all safe links rules.

```PowerShell
Get-SafeLinksRule | Format-Table Name,State
```

To filter the list by enabled or disabled rules, run the following commands:

```PowerShell
Get-SafeLinksRule -State Disabled
```

```PowerShell
Get-SafeLinksRule -State Enabled
```

This example returns detailed information for the safe links rule named Contoso Executives.

```PowerShell
Get-SafeLinksRule -Identity "Contoso Executives"
```

For detailed syntax and parameter information, see [Get-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/get-safelinksrule).

### Use PowerShell to modify safe links policies

You can't rename a safe links policy in PowerShell (the **Set-SafeLinksPolicy** cmdlet has no _Name_ parameter). When you rename a Safe Links policy in the Security & Compliance Center, you're only renaming the safe links _rule_.

The only additional consideration for modifying safe links policies in PowerShell is the available syntax for the _DoNotRewriteUrls_ parameter (the ["Do not rewrite the following URLs" list](atp-safe-links.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies)):

- To add values that will replace any existing entries, use the following syntax: `"Entry1","Entry2,..."EntryN"`.
- To add or remove values without affecting other existing entries, use the following syntax: `@{Add="Entry1","Entry2"...; Remove="Entry3","Entry4"...}`

Otherwise, the same settings are available when you create a safe links policy as described in the [Step 1: Use PowerShell to create a safe links policy](#step-1-use-powershell-to-create-a-safe-links-policy) section earlier in this article.

To modify a safe links policy, use this syntax:

```PowerShell
Set-SafeLinksPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy).

### Use PowerShell to modify safe links rules

The only setting that's not available when you modify a safe links rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing safe links rules, see the next section.

Otherwise, the same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a safe links rule](#step-2-use-powershell-to-create-a-safe-links-rule) section earlier in this article.

To modify a safe links rule, use this syntax:

```PowerShell
Set-SafeLinksRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/set-safelinksrule).

### Use PowerShell to enable or disable safe links rules

Enabling or disabling a safe links rule in PowerShell enables or disables the whole Safe Links policy (the safe links rule and the assigned safe links policy).

To enable or disable a safe links rule in PowerShell, use this syntax:

```PowerShell
<Enable-SafeLinksRule | Disable-SafeLinksRule> -Identity "<RuleName>"
```

This example disables the safe links rule named Marketing Department.

```PowerShell
Disable-SafeLinksRule -Identity "Marketing Department"
```

This example enables same rule.

```PowerShell
Enable-SafeLinksRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Enable-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/enable-safelinksrule) and [Disable-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/disable-safelinksrule).

### Use PowerShell to set the priority of safe links rules

The highest priority value you can set on a rule is 0. The lowest value you can set depends on the number of rules. For example, if you have five rules, you can use the priority values 0 through 4. Changing the priority of an existing rule can have a cascading effect on other rules. For example, if you have five custom rules (priorities 0 through 4), and you change the priority of a rule to 2, the existing rule with priority 2 is changed to priority 3, and the rule with priority 3 is changed to priority 4.

To set the priority of a safe links rule in PowerShell, use the following syntax:

```PowerShell
Set-SafeLinksRule -Identity "<RuleName>" -Priority <Number>
```

This example sets the priority of the rule named Marketing Department to 2. All existing rules that have a priority less than or equal to 2 are decreased by 1 (their priority numbers are increased by 1).

```PowerShell
Set-SafeLinksRule -Identity "Marketing Department" -Priority 2
```

> [!NOTE]
> To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-SafeLinksRule** cmdlet instead.

For detailed syntax and parameter information, see [Set-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/set-safelinksrule).

### Use PowerShell to remove safe links policies

When you use PowerShell to remove a safe links policy, the corresponding safe links rule isn't removed.

To remove a safe links policy in PowerShell, use this syntax:

```PowerShell
Remove-SafeLinksPolicy -Identity "<PolicyName>"
```

This example removes the safe links policy named Marketing Department.

```PowerShell
Remove-SafeLinksPolicy -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/remove-safelinkspolicy).

### Use PowerShell to remove safe links rules

When you use PowerShell to remove a safe links rule, the corresponding safe links policy isn't removed.

To remove a safe links rule in PowerShell, use this syntax:

```PowerShell
Remove-SafeLinksRule -Identity "<PolicyName>"
```

This example removes the safe links rule named Marketing Department.

```PowerShell
Remove-SafeLinksRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-SafeLinksRule](https://docs.microsoft.com/powershell/module/exchange/remove-safelinksrule).

To verify that Safe Links is scanning messages, check the available Microsoft Defender for Office 365 reports. For more information, see [View reports for Defender for Office 365](view-reports-for-atp.md) and [Use Explorer in the Security & Compliance Center](threat-explorer.md).

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed Safe Links policies, do any of the following steps:

- In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**. Verify the list of policies, their **Status** values, and their **Priority** values. To view more details, select the policy from the list, and view the details in the fly out.

- In Exchange Online PowerShell or Exchange Online Protection PowerShell, replace \<Name\> with the name of the policy or rule, run the following command, and verify the settings:

  ```PowerShell
  Get-SafeLinksPolicy -Identity "<Name>"
  ```

  ```PowerShell
  Get-SafeLinksRule -Identity "<Name>"
  ```
