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

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: bdd5372d-775e-4442-9c1b-609627b94b5d
ms.collection:
  - m365-security
ms.custom:
description: Admins can learn how to view, create, modify, and delete Safe Links policies and global Safe Links settings in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Set up Safe Links policies in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links in [Microsoft Defender for Office 365](defender-for-office-365.md) provides URL scanning of inbound email messages in mail flow, and time of click verification of URLs and links in email messages and in other locations. For more information, see [Safe Links in Microsoft Defender for Office 365](safe-links.md).

Although there's no default Safe Links policy, the **Built-in protection** preset security policy provides Safe Links protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

You can also use the procedures in this article to create Safe Links policies that apply to specific users, group, or domains.

> [!NOTE]
>
> You configure the "Block the following URLs" list in the global settings for Safe Links protection **outside** of Safe Links policies. For instructions, see [Configure global settings for Safe Links in Microsoft Defender for Office 365](configure-global-settings-for-safe-links.md).
>
> Admins should consider the different configuration settings for Safe Links. One of the available options is to include user identifiable information in Safe Links. This feature enables security operations (SecOps) teams to investigate potential user compromise, take corrective action, and limit costly breaches.

You can configure Safe Links policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Microsoft Defender for Office 365 add-on subscriptions).

The basic elements of a Safe Links policy are:

- **The safe links policy**: Turn on Safe Links protection, turn on real-time URL scanning, specify whether to wait for real-time scanning to complete before delivering the message, turn on scanning for internal messages, specify whether to track user clicks on URLs, and specify whether to allow users to click trough to the original URL.
- **The safe links rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Links policies in the Microsoft 365 Defender portal:

- When you create a Safe Links policy, you're actually creating a safe links rule and the associated safe links policy at the same time using the same name for both.
- When you modify a Safe Links policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe links rule. All other settings modify the associated safe links policy.
- When you remove a Safe Links policy, the safe links rule and the associated safe links policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Links policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-safe-links-policies) section later in this article.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article:
  - To create, modify, and delete Safe Links policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups in the Microsoft 365 Defender portal **and** a member of the **Organization Management** role group in Exchange Online.
  - For read-only access to Safe Links policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md) and [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  >
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Microsoft 365 Defender portal _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  . - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for Safe Links policies, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

- Allow up to 6 hours for a new or updated policy to be applied.

- [New features are continually being added to Microsoft Defender for Office 365](defender-for-office-365.md#new-features-in-microsoft-defender-for-office-365). As new features are added, you may need to make adjustments to your existing Safe Links policies.

## Use the Microsoft 365 Defender portal to create Safe Links policies

Creating a custom Safe Links policy in the Microsoft 365 Defender portal creates the safe links rule and the associated safe links policy at the same time using the same name for both.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, click ![Create icon.](../../media/m365-cc-sc-create-icon.png) **Create**.

3. The **New Safe Links policy** wizard opens. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Users and domains** page that appears, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts.
   - **Groups**:
     - Members of the specified distribution groups or mail-enabled security groups.
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

5. On the **URL & click protection settings** page that appears, configure the following settings:

   - **Action on potentially malicious URLs within Emails** section:
     - **On: Safe Links checks a list of known, malicious links when users click links in email**: Select this option to turn on Safe Links protection for links in email messages. If you select this option, the following settings are available:
       - **Apply Safe Links to email messages sent within the organization**: Select this option to apply the Safe Links policy to messages between internal senders and internal recipients.
       - **Apply real-time URL scanning for suspicious links and links that point to files**: Select this option to turn on real-time scanning of links in email messages. If you select this option, the following setting is available:
         - **Wait for URL scanning to complete before delivering the message**: Select this option to wait for real-time URL scanning to complete before delivering the message.
       - **Do not rewrite URLs, do checks via SafeLinks API only**: Select this option to prevent URL wrapping. Safe Links is called exclusively via APIs at the time of URL click by Outlook clients that support it.

       - **Do not rewrite the following URLs in email** section: Click **Manage (nn) URLs** to allow access to specific URLs that would otherwise be blocked by Safe Links.

         > [!NOTE]
         > Entries in the "Do not rewrite the following URLs" list are not scanned or wrapped by Safe Links during mail flow. Use [URL allow entries in the Tenant Allow/Block List](allow-block-urls.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-urls-in-the-submissions-portal) to override the Safe Links URL verdict.

     1. In the **Manage URLs to not rewrite** flyout that appears, click ![Add URLs icon.](../../media/m365-cc-sc-create-icon.png) **Add URLs**.
     2. In the **Add URLs** flyout that appears, type the URL or value that you want, select the entry that appears below the box, and then click **Save**. Repeat this step as many times as necessary.

        For entry syntax, see [Entry syntax for the "Do not rewrite the following URLs" list](safe-links.md#entry-syntax-for-the-do-not-rewrite-the-following-urls-list).

        To remove an entry, click ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the entry.

        When you're finished, click **Save**.

     3. Back on the **Manage URLs to not rewrite** flyout, click **Done** or do maintenance on the list of entries:

        To remove entries from the list, can use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the entry.

        To select a single entry, click on the value in the **URLs** column.

        To select multiple entries one at a time, click the blank area to the left of the value.

        To select all entries at one, click the blank area to the left of the **URLs** column header.

        With one or more entries selected, click the ![Add URLs icon.](../../media/m365-cc-sc-create-icon.png) or ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) icons that appear.

        When you're finished, click **Done**.

   - **Actions for potentially malicious URLs in Microsoft Teams** section:
     - **On: Safe Links checks a list of known, malicious links when users click links in Microsoft Teams**: Select this option to enable Safe Links protection for links in Teams. Note that this setting might take up to 24 hours to take effect.

     > [!NOTE]
     > Currently, Safe Links protection for Microsoft Teams is not available in Microsoft 365 GCC High or Microsoft 365 DoD.

   - **Actions for potentially malicious URLs in Microsoft Office apps** section:
     - **On: Safe Links checks a list of known, malicious links when users click links in Microsoft Office apps**: Select this option to enable Safe Links protection for links in files in supported Office desktop, mobile, and web apps.

   - **Click protection settings** section:
     - **Track user clicks**: Leave this option selected to enable the tracking user clicks on URLs. If you select this option, the following options are available:
       - **Let users click through to the original URL**: Clear this option to block users from clicking through to the original URL in [warning pages](safe-links.md#warning-pages-from-safe-links).
       - **Display the organization branding on notification and warning pages**: For more information about customized branding, see [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md).

   For detailed information about these settings, see:

   - [Safe Links settings for email messages](safe-links.md#safe-links-settings-for-email-messages).
   - [Safe Links settings for Microsoft Teams](safe-links.md#safe-links-settings-for-microsoft-teams).
   - [Safe Links settings for Office apps](safe-links.md#safe-links-settings-for-office-apps).
   - [Click protection settings in Safe Links policies](safe-links.md#click-protection-settings-in-safe-links-policies)

   For more the recommended values for Standard and Strict policy settings, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

   When you're finished, click **Next**.

6. On the **Notification** page that appears, select one of the following values for **How would you like to notify your users?**:
   - **Use the default notification text**
   - **Use custom notification text**: If you select this value, the following settings appear:
     - **Use Microsoft Translator for automatic localization**
     - **Custom notification text**: Enter the custom notification text in this box (the length can't exceed 200 characters).

   When you're finished, click **Next**.

7. On the **Review** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Submit**.

8. On the confirmation page that appears, click **Done**.

## Use the Microsoft 365 Defender portal to view Safe Links policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, the following properties are displayed in the list of Safe Links policies:
   - **Name**
   - **Status**
   - **Priority**

3. When you select a policy by clicking on the name, the policy settings are displayed in a flyout.

## Use the Microsoft 365 Defender portal to modify Safe Links policies

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Policies** section \> **Safe Links**.

2. On the **Safe Links** page, select a policy from the list by clicking on the name.

3. In the policy details flyout that appears, select **Edit** in each section to modify the settings within the section. For more information about the settings, see the previous [Use the Microsoft 365 Defender portal to create Safe Links policies](#use-the-microsoft-365-defender-portal-to-create-safe-links-policies) section in this article.

To enable or disable a policy or set the policy priority order, see the following sections.

### Enable or disable Safe Links policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, select a policy from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see one of the following values:
   - **Policy off**: To turn on the policy, click ![Turn on icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** .
   - **Policy on**: To turn off the policy, click ![Turn off icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off**.

4. In the confirmation dialog that appears, click **Turn on** or **Turn off**.

5. Click **Close** in the policy details flyout.

Back on the main policy page, the **Status** value of the policy will be **On** or **Off**.

### Set the priority of Safe Links policies

By default, Safe Links are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the Microsoft 365 Defender portal). Changing the priority of a policy only makes sense if you have multiple policies.

**Note**:

- In the Microsoft 365 Defender portal, you can only change the priority of the Safe Links policy after you create it. In PowerShell, you can override the default priority when you create the safe links rule (which can affect the priority of existing rules).
- Safe Links policies are processed in the order that they're displayed (the first policy has the **Priority** value 0). For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, select a policy from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see **Increase priority** or **Decrease priority** based on the current priority value and the number of custom policies:
   - The policy with the **Priority** value **0** has only the **Decrease priority** option available.
   - The policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** option available.
   - If you have three or more policies, the policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** options available.

   Click ![Increase priority icon.](../../media/m365-cc-sc-increase-icon.png) **Increase priority** or ![Decrease priority icon](../../media/m365-cc-sc-decrease-icon.png) **Decrease priority** to change the **Priority** value.

4. When you're finished, click **Close** in the policy details flyout.

## Use the Microsoft 365 Defender portal to remove Safe Links policies

1. In the Microsoft 365 Defender portal, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section.

2. On the **Safe Links** page, select a policy from the list by clicking on the name. At the top of the policy details flyout that appears, click ![More actions icon.](../../media/m365-cc-sc-more-actions-icon.png) **More actions** \> ![Delete policy icon](../../media/m365-cc-sc-delete-icon.png) **Delete policy**.

3. In the confirmation dialog that appears, click **Yes**.

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
> - You can configure the following settings on new safe links policies in PowerShell that aren't available in the Microsoft 365 Defender portal until after you create the policy:
>   - Create the new policy as disabled (_Enabled_ `$false` on the **New-SafeLinksRule** cmdlet).
>   - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-SafeLinksRule** cmdlet).
>
> - A new safe links policy that you create in PowerShell isn't visible in the Microsoft 365 Defender portal until you assign the policy to a safe links rule.

#### Step 1: Use PowerShell to create a safe links policy

To create a safe links policy, use this syntax:

```PowerShell
New-SafeLinksPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] [-EnableSafeLinksForEmail <$true | $false>] [-EnableSafeLinksForOffice <$true | $false>] [-EnableSafeLinksForTeams <$true | $false>] [-ScanUrls <$true | $false>] [-DeliverMessageAfterScan <$true | $false>] [-EnableForInternalSenders <$true | $false>] [-AllowClickThrough <$true | $false>] [-TrackUserClicks <$true | $false>] [-DoNotRewriteUrls "Entry1","Entry2",..."EntryN"]
```

> [!NOTE]
>
> - For details about the entry syntax to use for the _DoNotRewriteUrls_ parameter, see [Entry syntax for the "Do not rewrite the following URLs" list](safe-links.md#entry-syntax-for-the-do-not-rewrite-the-following-urls-list).
>
> - For additional syntax that you can use for the _DoNotRewriteUrls_ parameter when you modify existing safe links policies by using the **Set-SafeLinksPolicy** cmdlet, see the [Use PowerShell to modify safe links policies](#use-powershell-to-modify-safe-links-policies) section later in this article.

This example creates a safe links policy named Contoso All with the following values:

- Turn on URL scanning and URL rewriting in email messages.
  - Turn on URL scanning and rewriting for internal messages.
  - Turn on real-time scanning of clicked URLs, including clicked links that point to files.
    - Wait for URL scanning to complete before delivering the message.
- Turn on URL scanning in Teams.
- Turn on URL scanning in supported Office apps.
- Track user clicks related to Safe Links protection (we aren't using the _TrackUserClicks_ parameter, and the default value is $true).
- Do not allow users to click through to the original URL.

```PowerShell
New-SafeLinksPolicy -Name "Contoso All" -EnableSafeLinksForEmail $true -EnableSafeLinksForOffice $true -EnableSafeLinksForTeams $true -ScanUrls $true -DeliverMessageAfterScan $true -EnableForInternalSenders $true -AllowClickThrough $false
```

For detailed syntax and parameter information, see [New-SafeLinksPolicy](/powershell/module/exchange/new-safelinkspolicy).

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

This example creates a safe links rule that's similar to the previous example, but in this example, the rule applies to recipients in all accepted domains in the organization.

```powershell
New-SafeLinksRule -Name "Contoso All" -SafeLinksPolicy "Contoso All" -RecipientDomainIs (Get-AcceptedDomain).Name
```

This example creates a safe links rule that's similar to the previous examples, but in this example, the rule applies to recipients in the domains specified in a .csv file.

```powershell
$Data = Import-Csv -Path "C:\Data\SafeLinksDomains.csv"
$SLDomains = $Data.Domains
New-SafeLinksRule -Name "Contoso All" -SafeLinksPolicy "Contoso All" -RecipientDomainIs $SLDomains
```

For detailed syntax and parameter information, see [New-SafeLinksRule](/powershell/module/exchange/new-safelinksrule).

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

For detailed syntax and parameter information, see [Get-SafeLinksPolicy](/powershell/module/exchange/get-safelinkspolicy).

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

For detailed syntax and parameter information, see [Get-SafeLinksRule](/powershell/module/exchange/get-safelinksrule).

### Use PowerShell to modify safe links policies

You can't rename a safe links policy in PowerShell (the **Set-SafeLinksPolicy** cmdlet has no _Name_ parameter). When you rename a Safe Links policy in the Microsoft 365 Defender portal, you're only renaming the safe links _rule_.

The only additional consideration for modifying safe links policies in PowerShell is the available syntax for the _DoNotRewriteUrls_ parameter (the ["Do not rewrite the following URLs" list](safe-links.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies)):

- To add values that will replace any existing entries, use the following syntax: `"Entry1","Entry2,..."EntryN"`.
- To add or remove values without affecting other existing entries, use the following syntax: `@{Add="Entry1","Entry2"...; Remove="Entry3","Entry4"...}`

Otherwise, the same settings are available when you create a safe links policy as described in the [Step 1: Use PowerShell to create a safe links policy](#step-1-use-powershell-to-create-a-safe-links-policy) section earlier in this article.

To modify a safe links policy, use this syntax:

```PowerShell
Set-SafeLinksPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-SafeLinksPolicy](/powershell/module/exchange/set-safelinkspolicy).

### Use PowerShell to modify safe links rules

The only setting that's not available when you modify a safe links rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing safe links rules, see the next section.

Otherwise, the same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a safe links rule](#step-2-use-powershell-to-create-a-safe-links-rule) section earlier in this article.

To modify a safe links rule, use this syntax:

```PowerShell
Set-SafeLinksRule -Identity "<RuleName>" <Settings>
```

This example adds all accepted domains in the organization as a condition to the safe links rule named Contoso All.

```powershell
Set-SafeLinksRule -Identity "Contoso All" -RecipientDomainIs (Get-AcceptedDomain).Name
```

This example adds the domains from the specified .csv as a condition to the safe links rule named Contoso All.

```powershell
$Data = Import-Csv -Path "C:\Data\SafeLinksDomains.csv"
$SLDomains = $Data.Domains
Set-SafeLinksRule -Identity "Contoso All" -RecipientDomainIs $SLDomains
```

For detailed syntax and parameter information, see [Set-SafeLinksRule](/powershell/module/exchange/set-safelinksrule).

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

For detailed syntax and parameter information, see [Enable-SafeLinksRule](/powershell/module/exchange/enable-safelinksrule) and [Disable-SafeLinksRule](/powershell/module/exchange/disable-safelinksrule).

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

For detailed syntax and parameter information, see [Set-SafeLinksRule](/powershell/module/exchange/set-safelinksrule).

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

For detailed syntax and parameter information, see [Remove-SafeLinksPolicy](/powershell/module/exchange/remove-safelinkspolicy).

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

For detailed syntax and parameter information, see [Remove-SafeLinksRule](/powershell/module/exchange/remove-safelinksrule).

To verify that Safe Links is scanning messages, check the available Microsoft Defender for Office 365 reports. For more information, see [View reports for Defender for Office 365](view-reports-for-mdo.md) and [Use Explorer in the Microsoft 365 Defender portal](threat-explorer.md).

## How do you know these procedures worked?

To verify that you've successfully created, modified, or removed Safe Links policies, do any of the following steps:

- On the **Safe Links** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safelinksv2>, verify the list of policies, their **Status** values, and their **Priority** values. To view more details, select the policy from the list, and view the details in the fly out.

- In Exchange Online PowerShell or Exchange Online Protection PowerShell, replace \<Name\> with the name of the policy or rule, run the following command, and verify the settings:

  ```PowerShell
  Get-SafeLinksPolicy -Identity "<Name>"
  ```

  ```PowerShell
  Get-SafeLinksRule -Identity "<Name>"
  ```
