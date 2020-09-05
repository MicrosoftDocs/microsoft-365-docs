---
title: "Set up Office 365 ATP Safe Links policies"
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: Admin
ms.topic: article
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: bdd5372d-775e-4442-9c1b-609627b94b5d
ms.collection:
- M365-security-compliance
description: "Set up Safe Links policies to protect your organization from malicious links in Word, Excel, PowerPoint, and Visio files, as well as in email messages."
---

# Set up Office 365 ATP Safe Links policies

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](office-365-atp.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Safe Links is a feature in [Office 365 Advanced Threat Protection (ATP)](office-365-atp.md) that can help protect your organization from malicious links in phishing and other attacks. For more information, see [ATP Safe Links](atp-safe-links.md).

There's no built-in or default Safe Links policy. To get Safe Links scanning of URLs in email messages and Microsoft Teams, you need to create one or more Safe Links policies as described in this article.

After you create a Safe Links policy, if an associated user clicks on a link in an email message that's found to be malicious or is defined in your custom blocked URL list, a warning page will open.

You can configure Safe Links policies in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for eligible Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes, but with Office 365 ATP add-on subscriptions).

The basic elements of a Safe Links policy are:

- **The safe links policy**: Turn on URL scanning in email messages and Microsoft Teams, turn on real-time URL scanning, specify whether to wait for real-time scanning to complete before delivering the message, turn on scanning for internal messages, specify whether to track user clicks on URLs, and specify whether to allow users to click trough to the original URL.
- **The safe links rule**: Specifies the priority and recipient filters (who the policy applies to).

The difference between these two elements isn't obvious when you manage Safe Links polices in the Security & Compliance Center:

- When you create a Safe Links policy, you're actually creating a safe links rule and the associated safe links policy at the same time using the same name for both.
- When you modify a Safe Links policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the safe links rule. All other settings modify the associated safe links policy.
- When you remove a Safe Links policy, the safe links rule and the associated safe links policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Links policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-safe-links-policies) section later in this article.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **ATP Safe Links** page, use <https://protection.office.com/safelinksv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- To view, create, modify, and delete Safe Links policies, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

- For our recommended settings for Safe Links policies, see [ATP Safe Links policy settings](recommended-settings-for-eop-and-office365-atp.md#atp-safe-links-policy-settings).

- Allow up to 30 minutes for a new or updated policy to be applied.

- [New features are continually being added to ATP](office-365-atp.md#new-features-in-office-365-atp). As new features are added, you may need to make adjustments to your existing ATP Safe Links policies.

## Use the Security & Compliance Center to create Safe Links policies

Creating a custom Safe Links policy in the Security & Compliance Center creates the safe links rule and the associated safe links policy at the same time using the same name for both.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, click **Create**.

3. The **New Safe Links policy** wizard opens. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Settings** page that appears, configure the following settings:

   - **Select the action for unknown potentially malicious URLs in messages**: Select **On**.

   - **Select the action for unknown potentially malicious URLs in messages**: Select **On** or leave the default value **Off** selected.

   - **Apply real-time URL scanning for suspicious links and links that point to files**: Select this setting to enable real-time scanning of links in email messages.

   - **Wait for URL scanning to complete before delivering the message**: Select this setting to wait for real-time URL scanning to complete before delivering the message.

   - **Apply safe links to email messages sent within the organization**: Select this setting to apply the Safe Links policy to messages between internal senders and internal recipients.

   - **Do not track user clicks**: Leave this setting unselected to enable the tracking user clicks on URLs in email messages.

   - **Do not allow users to click through to original URL**: Select this setting to blocks users from clicking through to the original URL.

   - **Do not rewrite the following URLs**: Specifies the URLs that skip Safe List scanning and are always allowed in email messages and Teams. For more information, see .

   For more information about the recommended values for Standard and Strict policy settings, see [Safe Links policy settings in custom policies for specific users](recommended-settings-for-eop-and-office365-atp.md#safe-links-policy-settings-in-custom-policies-for-specific-users).

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

   - Move the toggle to the left ![Turn policy off](../../media/scc-toggle-off.png) to disable the policy.

   - Move the toggle to the right ![Turn policy on](../../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png) to enable the policy.

### Set the priority of Safe Links policies

By default, Safe Links policies are given a priority that's based on the order they were created in (newer polices are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

Safe Links policies are displayed in the order they're processed (the first policy has the **Priority** value 0).

**Note**: In the Security & Compliance Center, you can only change the priority of the Safe Links policy after you create it. In PowerShell, you can override the default priority when you create the safe links rule (which can affect the priority of existing rules).

To change the priority of a policy, move the policy up or down in the list (you can't directly modify the **Priority** number in the Security & Compliance Center).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Links**.

2. On the **Safe Links** page, select a policy from the list and click on it (don't select the check box).

3. In the policy details fly out that appears, click the available priority button.

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

 **Notes**:

- You can create a new safe links rule and assign an existing, unassociated safe links policy to it. A safe links rule can't be associated with more than one safe links policy.

- You can configure the following settings on new safe links policies in PowerShell that aren't available in the Security & Compliance Center until after you create the policy:

  - Create the new policy as disabled (_Enabled_ `$false` on the **New-SafeLinksRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-SafeLinksRule** cmdlet).

- A new safe links policy that you create in PowerShell isn't visible in the Security & Compliance Center until you assign the policy to a safe links rule.

#### Step 1: Use PowerShell to create a safe links policy

To create a safe links policy, use this syntax:

```PowerShell
New-SafeLinksPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] [-IsEnabled <$true | $false>] [-EnableSafeLinksForTeams <$true | $false>] [-ScanUrls <$true | $false>] [-DeliverMessageAfterScan <$true | $false>] [-EnableForInternalSenders <$true | $false>] [-DoNotAllowClickThrough <$true | $false>] [-DoNotTrackUserClicks <$true | $false>] [-DoNotRewriteUrls <"SafeURL1","SafeURL2,..."SafeURLN"">]
```

This example creates a safe links policy named Contoso All with the following values:

- Turn on URL scanning in email messages.
- Turn on URL scanning in Teams.
- Turn on real-time scanning of URLs.
- Wait for real-time scanning to complete before delivering the message.
- Turn on URL scanning for internal messages.
- Track user clicks (we aren't using the DoNotTrackUserClicks parameter, and the default value is $false).
- Do not allow users to click through to the original URL.

```PowerShell
New-SafeLinksPolicy -Name "Contoso All" -IsEnabled $true -EnableSafeLinksForTeams $true -ScanUrls $true -DeliverMessageAfterScan $true -EnableForInternalSenders $true -DoNotAllowClickThrough $true
```

**Note**: To configure URLs that skip Safe Links filtering, see .

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

**Note**: To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-SafeLinksRule** cmdlet instead.

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

To verify that Safe Links is scanning messages, check the available Advanced Threat Protection reports. For more information, see [View reports for Office 365 ATP](view-reports-for-atp.md) and [Use Explorer in the Security & Compliance Center](threat-explorer.md).



















## Step 2: Define (or review) the ATP Safe Links policy that applies to everyone

When you have [Office 365 Advanced Threat Protection](office-365-atp.md), you will have a default ATP Safe Links policy that applies to everyone in your organization. Make sure to review, and if needed, edit your default policy.

1. Go to <https://protection.office.com> and sign in with your work or school account.

2. In the left navigation, under **Threat management**, choose **Policy \>** **Safe Links**.

3. In the **Policies that apply to the entire organization** section, select **Default**, and then choose **Edit** (the Edit button resembles a pencil).

   ![Click Edit to edit your default policy for Safe Links protection](../../media/d08f9615-d947-4033-813a-d310ec2c8cca.png)

4. In the **Block the following URLs** section, specify one or more URLs that you want to prevent people in your organization from visiting. (See [Set up a custom blocked URLs list using ATP Safe Links](set-up-a-custom-blocked-urls-list-atp.md).)

5. In the **Settings that apply to content except email** section, select (or clear) the options you want to use. (We recommend that you select all the options.)

6. Choose **Save**.

## Step 4: Learn about ATP Safe Links policy options

As you set up or edit your ATP Safe Links policies, will see several options available. In case you are wondering what these options are, the following table describes each one and its effect. Remember that there are two main kinds of ATP Safe Links policies to define or edit:

- a [default policy](#default-policy-options) that applies to everyone; and
- additional [policies for specific recipients](#policies-that-apply-to-specific-email-recipients)

### Default policy options

Default policy options apply to everyone in your organization.

****

|This option|Does this|
|---|---|
|**Block the following URLs**|Enables your organization to have a custom list of URLs that are automatically blocked. When users click a URL in this list, they'll be taken to a [warning page](atp-safe-links-warning-pages.md) that explains why the URL is blocked. To learn more, see [Set up a custom blocked URLs list using Office 365 ATP Safe Links](set-up-a-custom-blocked-urls-list-atp.md).|
|**Microsoft 365 Apps for enterprise, Office for iOS and Android**| When this option is selected, ATP Safe Links protection is applied to URLs in Word, Excel, and PowerPoint files on Windows or Mac OS, email messages in Outlook, Office documents on iOS or Android devices, Visio 2016 files on Windows, and files open in the web versions of Office apps (Word, PowerPoint, Excel, Outlook, and OneNote), provided the user has signed in to Office 365.|
|**Don't track when users click ATP Safe Links**|When this option is selected, click data for URLs in Word, Excel, PowerPoint, Visio documents, and Outlook email messages is not stored.|
|**Don't let users click through ATP Safe Links to original URL**|When this option is selected, users cannot proceed past a [warning page](atp-safe-links-warning-pages.md) to a URL that is determined to be malicious.|
|

### Policies that apply to specific email recipients

****

|This option|Does this|
|---|---|
|**Off**|Does not scan URLs in email messages.  <br/> Enables you to define an exception rule, such as a rule that does not scan URLs in email messages for a specific group of recipients.|
|**On**|Rewrites URLs to route users through ATP Safe Links protection when the users click URLs in email messages and enables ATP Safe Links within Outlook (C2R) on Windows.  <br/> Checks a URL when clicked against a list of blocked or malicious URLs and triggers a detonation of the URL in the background asynchronously if the URL does not have a valid reputation.|
|**Apply real-time URL scanning for suspicious links and links that point to files**|When this option is selected, suspicious URLs and links that point to downloadable content are scanned.|
|**Wait for URL scanning to complete before delivering the message**|When this option is selected, messages that contain URLs to be scanned will be held until the URLs finish scanning and are confirmed to be safe before the messages are delivered.|
|**Apply Safe Links to messages sent within the organization** <br/> | When this option is available and selected, ATP Safe Links protection is applied to email messages sent between people in your organization, provided the email accounts are hosted in Office 365.|
|**Do not track user clicks**|When this option is selected, click data for URLs in email from external senders is not stored. URL click tracking for links within email messages sent within the organization is currently not supported.|
|**Do not allow users to click through to original URL**|When this option is selected, users cannot proceed past a [warning page](atp-safe-links-warning-pages.md) to a URL that is determined to be malicious.|
|**Do not rewrite the following URLs**|Leaves URLs as they are. Keeps a custom list of safe URLs that don't need scanning for a specific group of email recipients in your organization. See [Set up a custom "Do not rewrite" URLs list using ATP Safe Links](set-up-a-custom-do-not-rewrite-urls-list-with-atp.md) for more details, including recent changes to support for wildcard asterisks (\*).|
|

## Next steps

Once your ATP Safe Links policies are in place, you can see how ATP is working for your organization by viewing reports. See the following resources to learn more:

- [View reports for Office 365 Advanced Threat Protection](view-reports-for-atp.md)

- [Use Explorer in the Security & Compliance Center](threat-explorer.md)

Stay on top of new features coming to ATP. visit the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=O365).
