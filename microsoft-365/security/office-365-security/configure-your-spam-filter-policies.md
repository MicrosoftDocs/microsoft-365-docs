---
title: "Configure spam filter policies"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 316544cb-db1d-4c25-a5b9-c73bbcf53047
ms.collection:
- M365-security-compliance
description: "Basic spam filter settings include selecting the action to take on messages that are identified as spam."
---

# Configure anti-spam policies in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, your email messages are automatically protected against spam by EOP. EOP uses anti-spam policies (also known as spam filter policies or content filter policies) as part of your organization's overall defense against spam. For more information, see [Anti-spam protection in Office 365](anti-spam-protection.md).

Admins can view, edit, and configure (but not delete) the default anti-spam policy to meet the needs of their organizations. For greater granularity, you can also create custom anti-spam policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure anti-spam policies in the Office 365 Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Office 365 customers; Exchange Online Protection PowerShell for standalone EOP customers).

## What do you need to know before you begin?

- Estimated time to complete: 30 minutes

- You open the Security & Compliance Center at <https://protection.office.com/>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to standalone Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform these procedures. To add, modify, and delete anti-spam policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to anti-spam policies, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Use the Security & Compliance Center to create anti-spam policies

Creating a custom anti-spam policy in the Security & Compliance Center creates the spam filter rule and the associated spam filter policy at the same time using the same name for both.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click **Create a policy**.

3. In the **New spam filter policy** fly out that opens, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

4. (Optional) Expand the **Spam and bulk actions** section, and verify or configure the following settings:

   - **Select the action to take for incoming spam and bulk email**: Select or review the action to take on messages based on the following spam filtering verdicts:

     - **Spam**
     - **High confidence spam**
     - **Phishing email**
     - **High confidence phishing email**
     - **Bulk email**

     The spam filtering verdicts and the available actions for messages are described in the following table.

     - A check mark ( ![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)) indicates the action is available (not all actions are available for all spam filtering verdicts).
     - An asterisk ( <sup>\*</sup> ) after the check mark indicates the default action for the spam filtering verdict.
     - For details about suggested values, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-anti-spam-policy-settings).

    ||Spam|High<br/>confidence<br/>spam|Phishing<br/>email|High<br/>confidence<br/>phishing<br/>email|Bulk<br/>email|
    |:---|:---:|:---:|:---:|:---:|:---:|
    |**Move message to Junk Email folder**: Delivers the message to the Junk Email folder. <br/><br/> **Note**: In hybrid deployments where EOP protects on-premises mailboxes, you need to configure two Exchange mail flow rules (also known as transport rules) in your on-premises Exchange organization to detect the EOP spam filter headers that are added to messages. For details, see [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md).|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
    |**Add X-header**: Delivers the message, but adds the specified X-header field (not the value) to the message header. <br/>You enter the X-header field name later in the **Add this X-header text** box. <br/><br/> You can use this header field as a condition in Inbox rules or mail flow rules to filter or route the message.|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|
    |**Prepend subject line with text**: Adds text to the beginning of the message's subject line *and* delivers the message to the Junk Email folder. <br/>You enter the text later in the **Prefix subject line with this text** box. <br/><br/> You can use this indicator text in Inbox rules or mail flow rules to filter or route the message.|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
    |**Redirect message to email address**: Sends the message to a specified email address instead of the intended recipients. <br/><br/> You specify the email address later in the **Redirect to this email address** box.|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
    |**Delete message**: Silently deletes the entire message, including all attachments.|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
    |**Quarantine message**: Sends the message to quarantine instead of the intended recipients. <br/><br/> You specify how long the message should be held in quarantine later in the **Quarantine** box. <br/><br/> For information quarantine, see the following topics: <ul><li>[Quarantine](quarantine.md)</li><li>[Find and release quarantined messages as an administrator](find-and-release-quarantined-messages-as-an-administrator.md)</li><li>[Configure end-user spam notifications in EOP](configure-end-user-spam-notifications-in-eop.md)</li><li>[Configure end-user spam notifications in Exchange Online](configure-end-user-spam-notifications-in-exchange-online.md)</li></ul>|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)<sup>\*</sup>|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
    |**No action**|||||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
    |

   - **Select the threshold**: Specifies the Bulk Complaint Level (BCL) of a message that triggers the action you configured for the **Bulk email** spam filtering verdict. The default value is 7. For more information, see [Bulk Complaint Level values](bulk-complaint-level-values.md) and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md). This BCL threshold value is meaningful for all **Bulk email** actions except **No action**.

   - **Quarantine**: Specifies how long to keep the message in quarantine if you selected **Quarantine message** as the action for a spam filtering verdict. After the time period expires, the message is deleted. The default value is 30 days. A valid value is from 1 to 30 days.

   - **Add this X-header text**: This box is required and available only if you selected **Add X-header** as the action for a spam filtering verdict. The value you specify is the header field *name* that's added to the message header. The header field *value* is always `This message appears to be spam`.

     A valid value is text without spaces. For example, the value `This-is-my-custom-header` adds the following header field and value to the message: `This-is-my-custom-header: This message appears to be spam.`.

     The following values are ignored, and will add the default header field and value `X-This-Is-Spam: This message appears to be spam.` to the message:

     - Spaces in the text or including the colon in the text. For example, `X This is my custom header` or `X-This-is-my-custom-header:`.

     - Text in the format `HeaderFieldName:HeaderFieldValue`.

     Note that messages that contain this X-header might be still delivered to the Junk Mail folder based on the user's junk configuration on their own mailbox. For more information, see [Troubleshooting: A message is delivered to the Junk email folder after passing anti-spam filtering](prevent-email-from-being-marked-as-spam.md#troubleshooting-a-message-is-delivered-to-the-junk-email-folder-after-passing-anti-spam-filtering).

   - **Prepend subject line with this text**: This box is required and available only if you selected **Prepend subject line with text** as the action for a spam filtering verdict. Enter the text to add to the beginning of the message's subject line.

   - **Redirect to this email address**: This box is required and available only if you selected the **Redirect message to email address** as the action for a spam filtering verdict. Enter the email address where you want to deliver the message.

   - **Safety Tips**: This value is no longer used.

   **Zero-hour auto purge** settings: ZAP detects and takes action on messages that have already been delivered to Exchange Online mailboxes. For more information about ZAP, see [Zero-hour auto purge - protection against spam and malware](zero-hour-auto-purge.md).

   - **Spam ZAP**: By default, ZAP is enabled for spam detections, but you can disable it by clearing the **On** checkbox.

   - **Phish ZAP**: By default, ZAP is enabled for phish detections, but you can disable it by clearing the **On** checkbox.

5. (Optional) Expand the **Allow lists** section to configure message senders by email address or email domain that are allowed to skip spam filtering:

   > [!CAUTION]
   >  Think very carefully before you add domains here. For more information, see [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md).

6. (Optional) Expand the **Block lists** section to configure message senders by email address or email domain that are blocked by spam filtering:

   > [!NOTE]
   > Manually blocking domains isn't dangerous, but it can increase your administrative workload. For more information, see [Create block sender lists in Office 365](create-block-sender-lists-in-office-365.md).

7. (Optional) Expand the **International spam** section to configure the email languages or source countries that are blocked by spam filtering:

8. The optional **Spam properties** section contains Advanced Spam Filter (ASF) settings that are turned off by default. ASF settings are in the process of being deprecated. The functionality of these ASF settings is being incorporated into other parts of the filtering stack. We recommend that you turn off all ASF settings in any of your anti-spam policies.

   For details about these settings, see [Advanced Spam Filter settings in Office 365](advanced-spam-filtering-asf-options.md).

9. (Required) Expand the **Applied to** section to identify the internal recipients that the policy applies to.

    You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

    It's easiest to click **Add a condition** three times to see all of the available conditions. You can click **Remove** ![Remove button](../media/scc-remove-icon.png) to remove conditions that you don't want to configure.

       - **The recipient domain is**: Specifies recipients in one or more of the configured accepted domains in Office 365. Click in the **Add a tag** box to see and select a domain. Click again the **Add a tag** box to select additional domains if more than one domain is available.

       - **Recipient is**: Specifies one or more mailboxes, mail users, or mail contacts in your organization. Click in the **Add a tag** and start typing to filter the list. Click again the **Add a tag** box to select additional recipients.

       - **Recipient is a member of**: Specifies one or more mail-enabled security groups in your organization. Click in the **Add a tag** and start typing to filter the list. Click again the **Add a tag** box to select additional recipients.

     - **Except if**: To add exceptions for the rule, click **Add a condition** three times to see all of the available exceptions. The settings and behavior are exactly like the conditions.

10. When you're finished, click **Save**.

## Use the Security & Compliance Center to view anti-spam policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click the drop down next to one of the following anti-spam policies:

   - The default policy named **Default spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. The policy settings are displayed in the drop down that opens.

## Use the Security & Compliance Center to modify anti-spam policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click the drop down next to one of the following anti-spam policies:

   - The default policy named **Default spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. Click **Edit policy**.

For custom anti-spam policies, the available settings in the flyout that appears are identical to those described in the [Use the Security & Compliance Center to create anti-spam policies](#use-the-security--compliance-center-to-create-anti-spam-policies) section.

For the default anti-spam policy named **Default spam filter policy**, the **Applied to** section isn't available (the policy applies to everyone), and you can't rename the policy.

To enable or disable a policy, set the policy priority order, or configure the end-user quarantine notifications, see the following sections.

### Enable or disable anti-spam policies

You can't disable the default anti-spam policy named **Default spam filter policy**.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click the drop down next to a custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. In the drop down that opens, in the **On** column, move the slider to the right to enable a disabled policy. Move the slider to the left to enable a disabled policy.

### Set the priority of custom anti-spam policies

By default, anti-spam policies are given a priority that's based on the order they were created in (newer polices are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority.

 **Notes**:

- In the Security & Compliance Center, you can only change the priority of the anti-spam policy after you create it. In PowerShell, you can override the default priority when you create the spam filter rule (which can affect the priority of existing rules).

- In the Security & Compliance Center, custom anti-spam policies are displayed in the order they're processed (the first policy has the **Priority** value 0). The default anti-spam policy named **Default spam filter policy** has the priority value **Lowest**, and you can't change it.

To change the priority of a policy, move the policy up or down in the list (you can't directly modify the **Priority** number in the Security & Compliance Center).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, identify the policies where the value in the **Type** column is **Custom anti-spam policy**. Notice the values in the **Priority** column:

   - The custom anti-spam policy with the highest priority has the value ![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) **0**.

   - The custom anti-spam policy with the lowest priority has the value ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png) **n** (for example, ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png) **3**).

   - If you have three or more custom anti-spam policies, the policies in between the highest and lowest priority have values ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png)![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) **n** (for example, ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png)![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) **2**).

3. Click ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png) or ![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) to move the custom anti-spam policy up or down in the priority list.

### Configure end-user spam quarantine notifications

When a spam filtering verdict quarantines a message, you can configure end-user spam notifications to let recipients know what happened to messages that were sent to them. For more information, see [Use end-user spam notifications to release and report spam-quarantined messages](use-end-user-spam-notifications-to-release-and-report-spam-quarantined-messages.md).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click the drop down next to one of the following anti-spam policies:

   - The default policy named **Default spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. In the drop down that opens, click **Configure end-user spam notifications**.

4. In the **\<Policy Name\>** dialog that opens, configure the following settings:

   - **Enable end-user spam notifications**:

   - **Send end-user spam notifications every (days)**:

   - **Notification language**: Click the drop down an select an available language from the list. The default value is **Default**, which means end-user quarantine notifications use the default language of the EOP organization.

## Use the Security & Compliance Center to remove anti-spam policies

## Use Exchange Online PowerShell or Exchange Online Protection PowerShell to configure anti-spam policies

### Use PowerShell to create anti-spam policies

Creating an anti-spam policy in PowerShell is a two-step process:

1. Create the spam filter policy.

2. Create the spam filter rule that specifies the spam filter policy that the rule applies to.

 **Notes**:

- You can create a new spam filter rule and assign an existing, unassociated spam filter policy to it. A spam filter rule can't be associated with more than one spam filter policy.

- There are two settings that you can configure on new spam filter policies in PowerShell that aren't available in the Security & Compliance Center until after you create the policy:

  - Create the new policy as disabled (_Enabled_ `$false` on the **New-HostedContentFilterPolicy** cmdlet).

  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-HostedContentFilterRule** cmdlet).

- The results aren't visible in the Security & Compliance Center until you assign the spam filter policy to a spam filter rule.

#### Step 1: Use PowerShell to create a spam filter policy

To create a spam filter policy, use this syntax:

```PowerShell
New-HostedContentFilterPolicy -Name "<PolicyName>" <Additional Settings>
```

This example creates a spam filter policy named Contoso Spam Filter Policy with the following settings:

- Redirect messages that are definitely spam or that may be spam to chris@contoso.com.

- Send copies of spam quarantine false positive submissions to michelle@contoso.com.

```PowerShell
New-HostedContentFilterPolicy -Name "Contoso Spam Filter Policy" -HighConfidenceSpamAction Redirect -SpamAction Redirect -RedirectToRecipients chris@contoso.com -FalsePositiveAdditionalRecipients michelle@contoso.com
```

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/new-hostedcontentfilterpolicy).

#### Step 2: Use PowerShell to create a spam filter rule

To create a spam filter rule, use this syntax:

```PowerShell
New-HostedContentFilterRule -Name "<RuleName>" -HostedContentFilterPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"]
```

This example creates a new spam filter rule named Contoso Recipients with these settings:

- The spam filter policy named Contoso Spam Filter Policy is associated with the rule.

- The rule applies to recipients in the contoso.com domain.

```PowerShell
New-HostedContentFilterRule -Name "Contoso Recipients" -HostedContentFilterPolicy "Contoso Spam Filter Policy" -RecipientDomainIs contoso.com
```

For detailed syntax and parameter information, see [New-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/new-hostedcontentfilterrule).

### Use PowerShell to view spam filter policies

To return a summary list of all spam filter policies, run this command:

```PowerShell
Get-HostedContentFilterPolicy
```

To return detailed information about a specific spam filter policy, use the this syntax:

```PowerShell
Get-HostedContentFilterPolicy -Identity "<PolicyName>" | Format-List [<Specific properties to view>]
```

This example returns all the property values for the spam filter policy named Executives.

```PowerShell
Get-HostedContentFilterPolicy -Identity "Executives" | Format-List
```

This example returns only the specified properties for the same policy.

```PowerShell
Get-HostedContentFilterPolicy -Identity "Executives" | Format-List AdminDisplayName,*Action*
```

For detailed syntax and parameter information, see [Get-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-hostedcontentfilterpolicy).

### Use PowerShell to view spam filter rules

To view existing spam filter rules, use the following syntax:

```PowerShell
Get-HostedContentFilterRule [-Identity "<RuleIdentity>] [-State <Enabled | Disabled]
```

To return a summary list of all spam filter rules, run this command:

```PowerShell
Get-HostedContentFilterRule
```

To filter the list by enabled or disabled rules, run the following commands:

```PowerShell
Get-HostedContentFilterRule -State Disabled
```

```PowerShell
Get-HostedContentFilterRule -State Enabled
```

To return detailed information about a specific spam filter rule, use this syntax:

```PowerShell
Get-HostedContentFilterRule -Identity "<RuleName>" | Format-List [<Specific properties to view>]
```

This example returns all the property values for the spam filter rule named Executives.

```PowerShell
Get-HostedContentFilterRule -Identity "Executives" | Format-List
```

This example returns only the specified properties for the same rule.

```PowerShell
Get-HostedContentFilterRule -Identity "Executives" | Format-List Name,Priority,State,HostedContentFilterPolicy,*Is,*SentTo,*MemberOf
```

For detailed syntax and parameter information, see [Get-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-hostedcontentfilterrule).

### Use PowerShell to modify spam filter policies

The only additional setting that's available when you modify a spam filter policy in PowerShell is the _MakeDefault_ switch that turns the specified policy into the default policy (applied to everyone, **Lowest** priority, and you can't delete it).

Otherwise, no additional settings are available when you modify a spam filter policy in PowerShell. The same settings are available when you create a policy as described in the [Step 1: Use PowerShell to create a spam filter policy](#step-1-use-powershell-to-create-a-spam-filter-policy) section earlier in this topic. Note that you can't rename the default policy.

To modify a spam filter policy, use this syntax:

```PowerShell
Set-HostedContentFilterPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterpolicy).

### Use PowerShell to modify spam filter rules

The only setting that isn't available when you modify a spam filter rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing spam filter rules, see the next section.

Otherwise, no additional settings are available when you modify a spam filter rule in PowerShell. The same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a spam filter rule](#step-2-use-powershell-to-create-a-spam-filter-rule) section earlier in this topic.

To modify a spam filter rule, use this syntax:

```PowerShell
Set-HostedContentFilterRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterrule).

### Use PowerShell to enable or disable spam filter rules

Enabling or disabling a spam filter rule in PowerShell enables or disables the application of the whole anti-spam policy (the spam filter policy and the corresponding spam filter rule). You can't enable or disable the application of the default anti-spam policy (it's always applied to all users).

To enable or disable a spam filter rule in PowerShell, use this syntax:

```PowerShell
<Enable-HostedContentFilterRule | Disable-HostedContentFilterRule> -Identity "<RuleName>"
```

This example disables the spam filter rule named Marketing Department.

```PowerShell
Disable-HostedContentFilterRule -Identity "Marketing Department"
```

This example enables same rule.

```PowerShell
Enable-HostedContentFilterRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Enable-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/enable-hostedcontentfilterrule) and [Disable-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/disable-hostedcontentfilterrule).

### Use PowerShell to set the priority of spam filter rules

The highest priority value you can set on a rule is 0. The lowest value you can set depends on the number of rules. For example, if you have five rules, you can use the priority values 0 through 4. Changing the priority of an existing rule can have a cascading effect on other rules. For example, if you have five custom rules (priorities 0 through 4), and you change the priority of a rule to 2, the existing rule with priority 2 is changed to priority 3, and the rule with priority 3 is changed to priority 4.

To set the priority of a spam filter rule in PowerShell, use the following syntax:

```PowerShell
Set-HostedContentFilterRule -Identity "<RuleName>" -Priority <Number>
```

This example sets the priority of the rule named Marketing Department to 2. All existing rules that have a priority less than or equal to 2 are decreased by 1 (their priority numbers are increased by 1).

```PowerShell
Set-HostedContentFilterRule -Identity "Marketing Department" -Priority 2
```

**Notes**:

- To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-HostedContentFilterRule** cmdlet instead.

- The default spam filter policy named Default is a spam filter policy without a corresponding spam filter rule, and it has the unmodifiable priority value **Lowest**.

### Use PowerShell to remove spam filter policies

When you use PowerShell to remove a spam filter policy, the corresponding spam filter rule isn't removed.

To remove a spam filter policy in PowerShell, use this syntax:

```PowerShell
Remove-HostedContentFilterPolicy -Identity "<PolicyName>"
```

This example removes the spam filter policy named Marketing Department.

```PowerShell
Remove-HostedContentFilterPolicy -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/remove-hostedcontentfilterpolicy).

### Use PowerShell to remove spam filter rules

When you use PowerShell to remove a spam filter rule, the corresponding spam filter policy isn't removed.

To remove a spam filter rule in PowerShell, use this syntax:

```PowerShell
Remove-HostedContentFilterRule -Identity "<PolicyName>"
```

This example removes the spam filter rule named Marketing Department.

```PowerShell
Remove-HostedContentFilterRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/remove-hostedcontentfilterrule).










## How do you know these procedures worked?

### Send a GTUBE message to test your spam policy settings

Generic Test for Unsolicited Bulk Email (GTUBE) is a text string that you include in a test message to verify your organization's anti-spam settings. A GTUBE message is similar to the European Institute for Computer Antivirus Research (EICAR) text file for testing malware settings.

Include the following GTUBE text in an email message on a single line, without any spaces or line breaks:

```text
XJS*C4JDBQADN1.NSBN3*2IDNEN*GTUBE-STANDARD-ANTI-UBE-TEST-EMAIL*C.34X
```

> [!IMPORTANT]
> The EICAR.TXT file is not a virus. The European Institute for Computer Antivirus Research (EICAR) developed this file to safely test anti-virus installations and settings.

1. Open Notepad and paste the following text into an empty file:

   ```Text
   X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*
   ```

   Be sure that these are the only text characters in the file. The file size should be 68 bytes.

2. Save the file as EICAR.TXT

   In your desktop anti-virus program, be sure to exclude the EICAR.TXT from scanning (otherwise, the file will be quarantined).

3. Send an email message that contains the EICAR.TXT file as an attachment, using an email client that won't automatically block the file. Use your anti-malware policy settings to determine the following scenarios to test:

To ensure that spam is being properly detected and acted upon, you can send a GTUBE message through the service. Similar to the EICAR antivirus test file, GTUBE provides a test by which you can verify that the service is detecting incoming spam. A GTUBE message should always be detected as spam by the spam filter, and the actions that are performed upon the message should match your configured settings.

Include the following GTUBE text in a mail message on a single line, without any spaces or line breaks:

```text
XJS*C4JDBQADN1.NSBN3*2IDNEN*GTUBE-STANDARD-ANTI-UBE-TEST-EMAIL*C.34X
```

## Fine tuning your spam filter policy to prevent false positives and false negatives

You can enable advanced spam filtering techniques if you want to pursue a more aggressive approach to spam filtering. For general spam settings that apply to the whole organization, take a look at [How to prevent good email from being marked as spam in Office 365](prevent-email-from-being-marked-as-spam.md) or [Block email spam with the Office 365 spam filter to prevent false negative issues](reduce-spam-email.md). These are helpful if you have administrator-level control and you want to prevent false positives or false negatives.

## Allow/Block Lists

There will be times when our filters will miss the message or it takes time for our systems to catch up to it. In this cases, the antispam policy has an Allow and a Block list available to override the current verdict. This option should only be used sparingly since lists can become unmanageable and temporarily since our filtering stack should be doing what it is supposed to be doing.

Both Allow and Block lists are configured as part of any customer Anti-spam policy:

1. On the **Allow lists** section, you can specify entries, such as senders or domains, that will always be delivered to the inbox. Email from these entries is not processed by the spam filter.

   - Add trusted senders to the Sender allow list. Click **Edit**![Add Icon](../../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the sender addresses you wish to allow. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Allow Lists** page.

   - Add trusted domains to the Domain allow list. Click **Edit**![Add Icon](../../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the domains you wish to allow. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Allow Lists** page.

   > [!CAUTION]
   > You should never list accepted domains (domains that you own) or common domains like Microsoft.com, office.com, etc to an Allow list. This would easily allow spoofers to send mail unrestricted into your organization.

2. On the **Block Lists** page, you can specify entries, such as senders or domains, that will always be marked as spam. The service will apply the configured high confidence spam action on email that matches these entries.

   - Add unwanted senders to the Sender block list. Click **Edit**![Add Icon](../../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the sender addresses you want to block. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Block Lists** page.

   - Add unwanted domains to the Domain block list. Click **Edit**![Add Icon](../../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the domains you want to block. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Block Lists** page.

     > [!NOTE]
     > In the spam filter policy, you can block entire domains or specific senders, but you can't use wildcards (\*).

> [!TIP]
> There may be situations where your organization may not agree with the verdict the service provides. In this case, you may want to keep the Allow or Block listing permanent. However, if you are going to put a domain on the Allow list for extended periods of time, you should tell the sender to make sure that their domain is authenticated and set to DMARC reject if it is not.

## For more information

[Setting up your domain for DMARC](use-dmarc-to-validate-email.md)

[Quarantine](quarantine.md)

[How to prevent good email from being marked as spam in Office 365](prevent-email-from-being-marked-as-spam.md)

[How to reduce spam email in Office 365](reduce-spam-email.md)

[Spam confidence levels](spam-confidence-levels.md)
