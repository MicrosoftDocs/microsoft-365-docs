---
title: Set up Safe Links policies in Microsoft Defender for Office 365
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
ms.assetid: bdd5372d-775e-4442-9c1b-609627b94b5d
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Admins can learn how to view, create, modify, and delete Safe Links policies in Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Set up Safe Links policies in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

> [!IMPORTANT]
> This article is intended for business customers who have [Microsoft Defender for Office 365](defender-for-office-365.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

In organizations with Microsoft Defender for Office 365, Safe Links provides URL scanning of links in messages, Microsoft Teams, and supported Office 365 apps. For more information, see [Safe Links in Microsoft Defender for Office 365](safe-links-about.md).

Although there's no default Safe Links policy, the **Built-in protection** preset security policy provides Safe Links protection to all recipients by default. Recipients who are specified in the Standard or Strict preset security policies or in custom Safe Links policies aren't affected. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

For greater granularity, you can also use the procedures in this article to create Safe Links policies that apply to specific users, group, or domains.

You configure Safe Links policies in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md) and [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Create, modify, and delete policies_: Membership in the **Organization Management** or **Security Administrator** role groups in Email & collaboration RBAC <u>and</u> membership in the **Organization Management** role group in Exchange Online RBAC.
    - _Read-only access to policies_: Membership in one of the following role groups:
      - **Global Reader** or **Security Reader** in Email & collaboration RBAC.
      - **View-Only Organization Management** in Exchange Online RBAC.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for Safe Links policies, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

- Allow up to 6 hours for a new or updated policy to be applied.

- For more information about licensing requirements, see [Licensing terms](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#licensing-terms).

## Use the Microsoft 365 Defender portal to create Safe Links policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. Or, to go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new Safe Links policy wizard.

3. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished on the **Name your policy** page, select **Next**.

4. On the **Users and domains** page, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts.
   - **Groups**:
     - Members of the specified distribution groups (including non-mail-enabled security groups within distribution groups) or mail-enabled security groups (dynamic distribution groups aren't supported).
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

5. On the **URL & click protection settings** page, configure the following settings:

   - **Email** section:
     - **On: Safe Links checks a list of known, malicious links when users click links in email. URLs are rewritten by default**: Select this option to turn on Safe Links protection for links in email messages (URL rewriting and time of click protection). If you select this option, the following settings are available:
       - **Apply Safe Links to email messages sent within the organization**: Select this option to apply the Safe Links policy to messages between internal senders and internal recipients. Turning on this setting enables link wrapping for all intra-organization messages.
       - **Apply real-time URL scanning for suspicious links and links that point to files**: Select this option to turn on real-time scanning of links in email messages from external senders. If you select this option, the following setting is available:
         - **Wait for URL scanning to complete before delivering the message**: Select this option to wait for real-time URL scanning to complete before delivering the message from external senders. The recommended setting is **On**.
       - **Do not rewrite URLs, do checks via SafeLinks API only**: Select this option to prevent URL wrapping and skip reputation check during mail flow. Safe Links is called exclusively via APIs at the time of URL click by Outlook clients that support it.

     - **Do not rewrite the following URLs in email** section: Select the **Manage (nn) URLs** link to allow access to specific URLs that would otherwise be blocked by Safe Links.

       > [!NOTE]
       > Entries in the "Do not rewrite the following URLs" list aren't scanned or wrapped by Safe Links during mail flow, but might still be blocked at time of click. Report the URL as **Should not have been blocked (False positive)** and select **Alow this URL** to add an allow entry to the Tenant Allow/Block List so the URL isn't scanned or wrapped by Safe Links during mail flow _and_ at time of click. For instructions, see [Report good URLs to Microsoft](submissions-admin.md#report-good-urls-to-microsoft).

       1. In the **Manage URLs to not rewrite** flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add URLs**.
       2. In the **Add URLs** flyout that opens, click in the **URL** box, enter a value, and then press the ENTER key or select the complete value that's displayed below the box. Repeat this step as many times as necessary.

          For URL syntax, see [Entry syntax for the "Do not rewrite the following URLs" list](safe-links-about.md#entry-syntax-for-the-do-not-rewrite-the-following-urls-list).

          To remove an entry, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

          When you're finished on the **Add URLs** flyout, select **Save**.

       3. Back on the **Manage URLs to not rewrite** flyout, the URL entries that you added are listed on the flyout.

          To change the list of URLs from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

          Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the flyout.

          To add entries, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add URLs** and repeat the previous step.

          To remove entries, do either of the following steps:

          - Select one or more entries by selecting the round check box that appears in the blank area next to the URL value.
          - Select all entries at once by selecting the round check box that appears in the blank area next to the **URLs** column header.

          With one or more entries selected, select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.

          When you're finished on the **Manage URLs to not rewrite** flyout, select **Done** to return to the **URL & click protection settings** page.

   - **Teams** section:
     - **On: Safe Links checks a list of known, malicious links when users click links in Microsoft Teams. URLs are not rewritten.**: Select this option to enable Safe Links protection for links in Teams. This setting might take up to 24 hours to take effect. This setting affects time of click protection.

   - **Office 365 apps** section:
     - **On: Safe Links checks a list of known, malicious links when users click links in Microsoft Office apps. URLs are not rewritten.**: Select this option to enable Safe Links protection for links in files in supported Office desktop, mobile, and web apps. This setting affects time of click protection.

   - **Click protection settings** section:
     - **Track user clicks**: Leave this option selected to enable the tracking user clicks on URLs. If you select this option, the following options are available:
       - **Let users click through to the original URL**: Clear this option to block users from clicking through to the original URL in [warning pages](safe-links-about.md#warning-pages-from-safe-links).
       - **Display the organization branding on notification and warning pages**: For more information about customized branding, see [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md).

   For detailed information about these settings, see:

   - [Safe Links settings for email messages](safe-links-about.md#safe-links-settings-for-email-messages).
   - [Safe Links settings for Microsoft Teams](safe-links-about.md#safe-links-settings-for-microsoft-teams).
   - [Safe Links settings for Office apps](safe-links-about.md#safe-links-settings-for-office-apps).
   - [Click protection settings in Safe Links policies](safe-links-about.md#click-protection-settings-in-safe-links-policies)

   For more the recommended values for Standard and Strict policy settings, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

   When you're finished on the **URL & click protection settings** page, select **Next**.

6. On the **Notification** page, select one of the following values for **How would you like to notify your users?**:
   - **Use the default notification text**
   - **Use custom notification text**: If you select this value, the following settings appear:
     - **Use Microsoft Translator for automatic localization**
     - **Custom notification text**: Enter the custom notification text in this box (the length can't exceed 200 characters).

   When you're finished on the **Notification** page, select **Next**.

7. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review** page, select **Submit**.

8. On the **New Safe Links policy created** page, you can select the links to view the policy, view Safe Links policies, and learn more about Safe Links policies.

   When you're finished on the **New Safe Links policy created** page, select **Done**.

   Back on the **Safe Links** page, the new policy is listed.

## Use the Microsoft 365 Defender portal to view Safe Links policy details

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safelinksv2>.

On the **Safe Links** page, the following properties are displayed in the list of policies:

- **Name**
- **Status**: Values are **On** or **Off**.
- **Priority**: For more information, see the [Set the priority of Safe Links policies](#use-the-microsoft-365-defender-portal-to-set-the-priority-of-custom-safe-links-policies) section.

To change the list of policies from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific Safe Links policies.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of policies to a CSV file.

Use :::image type="icon" source="../../media/m365-cc-sc-view-reports-icon.png" border="false"::: **View reports** to open the [Threat protection status report](reports-defender-for-office-365.md#threat-protection-status-report).

Select a policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

> [!TIP]
> To see details about other Safe Links policies without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

## Use the Microsoft 365 Defender portal to take action on Safe Links policies

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Links** in the **Policies** section. To go directly to the **Safe Links** page, use <https://security.microsoft.com/safealinksv2>.

2. On the **Safe Links** page, select the Safe Links policy by using either of the following methods:

   - Select the policy from the list by selecting the check box next to the name. The following actions are available in the :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** dropdown list that appears:
     - **Enable selected policies**.
     - **Disable selected policies**.
     - **Delete selected policies**.

     :::image type="content" source="../../media/safe-links-policies-main-page.png" alt-text="The Safe Links page with a policy selected and the More actions control expanded." lightbox="../../media/safe-links-policies-main-page.png":::

   - Select the policy from the list by clicking anywhere in the row other than the check box next to the name. Some or all following actions are available in the details flyout that opens:
     - Modify policy settings by clicking **Edit** in each section (custom policies or the default policy)
     - :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** or :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** (custom policies only)
     - :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** or :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** (custom policies only)
     - :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** (custom policies only)

     :::image type="content" source="../../media/anti-phishing-policies-details-flyout.png" alt-text="The details flyout of a custom Safe Links policy." lightbox="../../media/anti-phishing-policies-details-flyout.png":::

The actions are described in the following subsections.

### Use the Microsoft 365 Defender portal to modify custom Safe Links policies

After you select a custom Safe Links policy by clicking anywhere in the row other than the check box next to the name, the policy settings are shown in the details flyout that opens. Select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [Create Safe Links policies](#use-the-microsoft-365-defender-portal-to-create-safe-links-policies) section earlier in this article.

You can't modify the Safe Links policies named **Standard Preset Security Policy**, **Strict Preset Security Policy**, or **Built-in protection (Microsoft)** that are associated with [preset security policies](preset-security-policies.md) in the policy details flyout. Instead, you select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **View preset security policies** in the details flyout to go to the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies> to modify the preset security policies.

### Use the Microsoft 365 Defender portal to enable or disable custom Safe Links policies

You can't enable or disable the Safe Links policies named **Standard Preset Security Policy**, **Strict Preset Security Policy**, or **Built-in protection (Microsoft)** that are associated with [preset security policies](preset-security-policies.md) here. You enable or disable preset security policies on the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies>.

After you select an enabled custom Safe Links policy (the **Status** value is **On**), use either of the following methods to disable it:

- **On the Safe Links page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Disable selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** at the top of the flyout.

After you select a disabled custom Safe Links policy (the **Status** value is **Off**), use either of the following methods to enable it:

- **On the Safe Links page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Enable selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** at the top of the flyout.

On the **Safe Links** page, the **Status** value of the policy is now **On** or **Off**.

### Use the Microsoft 365 Defender portal to set the priority of custom Safe Links policies

Safe Links policies are processed in the order that they're displayed on the **Safe Links** page:

- The Safe Links policy named **Strict Preset Security Policy** that's associated with the Strict preset security policy is always applied first (if the Strict preset security policy is [enabled](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users)).
- The Safe Links policy named **Standard Preset Security Policy** that's associated with the Standard preset security policy is always applied next (if the Standard preset security policy is enabled).
- Custom Safe Links policies are applied next in priority order (if they're enabled):
  - A lower priority value indicates a higher priority (0 is the highest).
  - By default, a new policy is created with a priority that's lower than the lowest existing custom policy (the first is 0, the next is 1, etc.).
  - No two policies can have the same priority value.
- The Safe Links policy named **Built-in protection (Microsoft)** that's associated with Built-in protection always has the priority value **Lowest**, and you can't change it.

Safe Links protection stops for a recipient after the first policy is applied (the highest priority policy for that recipient). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

After you select the custom Safe Links policy by clicking anywhere in the row other than the check box next to the name, you can increase or decrease the priority of the policy in the details flyout that opens:

- The custom policy with the **Priority** value **0** on the **Safe Links** page has the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** action at the top of the details flyout.
- The custom policy with the lowest priority (highest **Priority** value; for example, **3**) has the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** action at the top of the details flyout.
- If you have three or more policies, the policies between **Priority** 0 and the lowest priority have both the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** and the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** actions at the top of the details flyout.

When you're finished in the policy details flyout, select **Close**.

Back on the **Safe Links** page, the order of the policy in the list matches the updated **Priority** value.

### Use the Microsoft 365 Defender portal to remove custom Safe Links policies

You can't remove the Safe Links policies named **Standard Preset Security Policy**, **Strict Preset Security Policy**, or **Built-in protection (Microsoft)** that are associated with [preset security policies](preset-security-policies.md).

After you select the custom Safe Links policy, use either of the following methods to remove it:

- **On the Safe Links page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Delete selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** at the top of the flyout.

Select **Yes** in the warning dialog that opens.

Back on the **Safe Links** page, the removed policy is no longer listed.

## Use Exchange Online PowerShell to configure Safe Links policies

In PowerShell, the basic elements of a Safe Links policy are:

- **The safe links policy**: Turns on Safe Links protection, turns on real-time URL scanning, specifies whether to wait for real-time scanning to complete before delivering the message, turns on scanning for internal messages, specifies whether to track user clicks on URLs, and specifies whether to allow users to click through to the original URL.
- **The safe links rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Links policies in the Microsoft 365 Defender portal:

- When you create a Safe Links policy in the Defender portal, you're actually creating a safe links rule and the associated safe links policy at the same time using the same name for both.
- When you modify a Safe Links policy in the Defender portal, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe links rule. All other settings modify the associated safe links policy.
- When you remove a Safe Links policy in the Defender portal, the safe links rule and the associated safe links policy are removed.

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
> - For details about the entry syntax to use for the _DoNotRewriteUrls_ parameter, see [Entry syntax for the "Do not rewrite the following URLs" list](safe-links-about.md#entry-syntax-for-the-do-not-rewrite-the-following-urls-list).
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

The only additional consideration for modifying safe links policies in PowerShell is the available syntax for the _DoNotRewriteUrls_ parameter (the ["Do not rewrite the following URLs" list](safe-links-about.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies)):

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

To verify that Safe Links is scanning messages, check the available Microsoft Defender for Office 365 reports. For more information, see [View reports for Defender for Office 365](reports-defender-for-office-365.md) and [Use Explorer in the Microsoft 365 Defender portal](threat-explorer-about.md).

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

- Use the URL `http://spamlink.contoso.com` to test Safe Links protection. This URL is similar to the GTUBE text string for testing anti-spam solutions. This URL isn't harmful, but it triggers a Safe Links protection response.
