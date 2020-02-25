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

# Configure spam filter policies in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, your email messages are automatically protected against spam by EOP. EOP uses spam filter policies as part of your organization's overall anti-spam settings. For more information, see [Anti-spam protection in Office 365](anti-spam-protection.md).

Admins can view, edit, and configure (but not delete) the default spam filter policy to meet the needs of their organizations. For greater granularity, you can also create custom spam filter policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure spam filter policies in the Office 365 Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Office 365 customers; Exchange Online Protection PowerShell for standalone EOP customers).

## What do you need to know before you begin?

- Estimated time to complete: 30 minutes

- You open the Security & Compliance Center at <https://protection.office.com/>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to standalone Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform these procedures. To add, modify, and delete spam filter policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to spam filter policies, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Use the Security & Compliance Center to create spam filter policies

Creating a custom spam filter policy in the Security & Compliance Center creates the spam filter rule and the associated spam filter policy at the same time using the same name for both.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-Spam**.

2. On the **Anti-spam settings** page, click **Create a policy**.

3. In the **New spam filter policy** fly out that opens, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

4. (Optional) Expand the **Spam and bulk actions** section, and verify or configure the following settings:

   - **Spam**

   - **High confidence spam**

   - **Phishing email**

   - **High confidence phishing email**

   - **Bulk email**

     - **Move message to Junk Email folder**: Delivers the message to the Junk Email folder of the specified recipients. This is the default action for **Spam**, **High confidence spam**, and **Bulk email**.

       > [!NOTE]
       > In hybrid deployments where EOP protects on-premises mailboxes, you need to configure two Exchange mail flow rules (also known as transport rules) in your on-premises Exchange organization so that the on-premises Exchange organization can detect the spam headers that are added to messages by EOP. For details, see how to [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md).

     - **Add X-header**: Delivers the message to the specified recipients, but adds the specified X-header field (not the value) to the message header. You can use this header field in Inbox rules or mail flow rules to filter or route the message as necessary. You enter the X-header field name in the **Add this X-header text** box.

       An X-header is a user-defined, unofficial header field that exists in the message header. X-headers aren't specifically mentioned in RFC 2822, but the use of an undefined header field starting with `X-` has become an accepted way to add unofficial header fields to a message.

     - **Prepend subject line with text**: Delivers the message to the Junk Email folder of the specified recipients *and* prepends the subject line with the text that you specify in the **Prefix subject line with this text** box. You can use this indicator text in Inbox rules or mail flow rules to filter or route the message as necessary.

     - **Redirect message to email address**: Sends the message to a specified email address instead of the intended recipients. You specify the email address in the **Redirect to this email address** box.

     - **Delete message**: Silently deletes the entire message, including all attachments.

     - **Quarantine message**: Sends the message to quarantine instead of the intended recipients. This is the default action for **Phishing email** and **High confidence phishing email**. Use the **Quarantine** box to specify how long the message should be kept in quarantine.

     - **No action**: This action is only available on **Bulk email**.

   - **Select the threshold**: Specifies the threshold that identifies bulk as spam based on the Bulk Complaint Level (BCL) value of the message. The default value is 7. For more information see [Bulk Complaint Level values](bulk-complaint-level-values.md). This value is meaningful for all **Bulk email** actions except **No action**.

   - **Quarantine**: Specifies how long to keep the message in quarantine if you selected **Quarantine message** as an action. After the time period expires, the message is deleted. The default value is 30 days. A valid value is from 1 to 30 days.

   - **Add this X-header text**: This box is required and available only if you selected **Add X-header** as the action for **Spam**, **High confidence spam**, **Phishing email**, or **Bulk email** identifications. The value you specify is the header field *name* that's added to the message header. The header field *value* is always `This message appears to be spam`.

     A valid value is text without spaces. For example, the value `This-is-my-custom-header` adds the following header field and value to the message: `This-is-my-custom-header: This message appears to be spam.`.

     The following values are ignored, and will add the default header field and value `X-This-Is-Spam: This message appears to be spam.` to the message:

     - Spaces in the text or including the colon in the text. For example, `X This is my custom header` or `X-This-is-my-custom-header:`.

     - Text in the format `HeaderFieldName:HeaderFieldValue`.

     Note that messages that contain this X-header might be still delivered to the Junk Mail folder based on the user's junk configuration on their own mailbox. For more information, see [Troubleshooting: A message is delivered to the Junk email folder after passing anti-spam filtering](prevent-email-from-being-marked-as-spam.md#troubleshooting-a-message-is-delivered-to-the-junk-email-folder-after-passing-anti-spam-filtering).

   - **Prepend subject line with this text**: This box is required and available only if you selected **Prepend subject line with text** as the action for **Spam**, **High confidence spam**, **Phishing email**, or **Bulk email** identifications. Enter the text to add to the beginning of the **Subject** field in the message.

   - **Redirect to this email address**: This box is required and available only if you selected the **Redirect message to email address** as the action for any identification. Enter the email address where you want to deliver the message.

   - **Safety Tips**

   - **Spam ZAP**

   - **Phish ZAP**

5. (Optional) Expand the **Allow lists** section to configure message senders by email address or email domain that are allowed to skip spam filtering:

6. (Optional) Expand the **Block lists** section to configure message senders by email address or email domain that are blocked by spam filtering:

7. (Optional) Expand the **International spam** section to configure the email languages or source countries that are blocked by spam filtering:

8. (Optional) Expand the **Spam properties** section to turn on the following settings that are turned off by default:

   - Expand the **Increase spam score** section to configure the following settings that will increase the spam score of affected messages. Valid values are **Off** (default), **On**, or **Test**.

     - **Image links to remote sites**

     - **URL redirect to other port**

     - **Numeric IP address in URL**

     - **Url to .bix or .info websites**

   - Expand the **Mark as spam** section to configure the following settings that will cause spam filtering to block the affected messages as spam.

     Valid values for the following settings are **Off** (default), **On**, or **Test**.

     - **Empty messages**

     - **JavaScript or VBScript in HTML**

     - **Frame or IFrame tags in HTML**

     - **Object tags in HTML**

     - **Embed tags in HTML**

     - **Form tags in HTML**

     - **Web bugs in HTML**

     - **Apply sensitive word list**

     Valid values for the following settings are on (default) or **Off**:

     - **SPF record: hard fail**

     - **Conditional Sender ID filtering: hard fail**

     - **NDR backscatter**

   - Expand the **Test mode options** section to configure the action if you configured the value **Test** for any of the settings in the previous **Increase spam score** or **Mark as spam** sections. Valid values are:

     - **None** (default)

     - **Add default X-header text**

     - **Send Bcc message**

9. (Required) Expand the **Applied to** section to identify the internal recipients that the policy applies to.

    You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

    It's easiest to click **Add a condition** three times to see all of the available conditions. You can click **Remove** ![Remove button](../media/scc-remove-icon.png) to remove any conditions that you don't want to configure.

       - **The recipient domain is**: Specifies recipients in one or more of the configured accepted domains in Office 365. Click in the **Add a tag** box to see and select a domain. Click again the **Add a tag** box to select additional domains if more than one domain is available.

       - **Recipient is**: Specifies one or more mailboxes, mail users, or mail contacts in your organization. Click in the **Add a tag** and start typing to filter the list. Click again the **Add a tag** box to select additional recipients.

       - **Recipient is a member of**: Specifies one or more groups in your organization. Click in the **Add a tag** and start typing to filter the list. Click again the **Add a tag** box to select additional recipients.

     - **Except if**: To add exceptions for the rule, click **Add a condition** three times to see all of the available exceptions. The settings and behavior are exactly like the conditions.

10. When you're finished, click **Save**.

## Access and create spam filter policies

Inside the Anti-spam settings page, the default settings can be viewed in the Standard tab. To change these settings, switch to the **Custom** tab. You will be able to see and configure some of the default settings inside the Default spam filter policy.

To enable more custom settings or to add custom policies, change the **Custom settings** selector to **On** to enable custom spam filter policies. You can view existing custom policies by expanding them from here.

## Configure custom spam filter policy settings

1. Select and click **Edit policy** if you are editing a policy; otherwise, click on **Create a policy**

2. You can specify a unique name for custom policies but you can not rename the default one. Optionally, you can also specify a more detailed description for any policy.

3. Under the **Spam and bulk actions** section:

   - Select an action for the **Spam**, **High confidence spam**, **High confidence phishing email**, **Phishing email**, and **Bulk email** types. The available values are:

     - **Move message to Junk Email folder**: Sends the message to the Junk Email folder of the specified recipients. This is the default action for spam, high confidence spam, and bulk.

       > [!NOTE]
       > In order for this action to work with on-premises mailboxes, you must configure two Exchange mail flow rules (also known as  transport rules) on your on-premises servers to detect spam headers added by EOP. For details, see how to [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md). This step is critical for standalone Exchange Online Protection (EOP) customers.

     - **Add X-header**: Sends the message to the specified recipients, but adds X-header text to the message header in order to identify the message as spam. Using this text as an identifier, you can optionally create inbox rules or use a downstream device to act on the message. The default X-header text is **This message appears to be spam**.

       You can customize the X-header text by using the **Add this X-header text** input box. If you customize the X-header text, be aware of the following conditions:

       - If you specify only the header in the format \< *header*  \>, where there are no spaces within the \<  *header*  \>, a colon will be appended to the custom text, followed by the default text. For example, if you specify "This-is-my-custom-header," the X-header text will appear as "This-is-my-custom-header: This message appears to be spam."

       - If you include spaces within the custom header text, or if you add the colon yourself (such as "X This is my custom header" or "X-This-is-my-custom-header:"), the X-header text reverts to the default as "X-This-Is-Spam: This message appears to be spam."

       - You can't specify the header text in the format \<*header*\>:\<*value*\>. If you do this, both values before and after the colon will be ignored, and the default X-header text appears instead: "X-This-Is-Spam: This message appears to be spam."

       - Be aware that mails with this X-header might be still moved to mailbox Junk Mail folder due to mailbox junk configuration. You can change this by disabling this feature with Set-MailboxJunkEmailConfiguration.

   - **Prepend subject line with text:** Sends the message to the intended recipients but prepends the subject line with the text that you specify in the **Prefix subject line with this text** input box. Using this text as an identifier, you can optionally create rules to filter or route the messages as necessary.

     > [!NOTE]
     > The message will still be routed to the Junk Email folder.

   - **Redirect message to email address:** Sends the message to a designated email address instead of to the intended recipients. Specify the "redirect" address in the **Redirect to this email address** input box.

   - **Delete message:** Deletes the entire message, including all attachments.

   - **Quarantine message:** Sends the message to quarantine instead of to the intended recipients. This is the default action for phish. If you select this option, in the **Retain spam for (days)** input box, specify the number of days during which the spam message will be quarantined. (It will automatically be deleted after the time elapses. The default value is 30 days which is the maximum value. The minimum value is 1 day).

     > [!TIP]
     > For information about how admins can manage email messages in the quarantine, see [Quarantine](quarantine.md) and [Find and release quarantined messages as an administrator](find-and-release-quarantined-messages-as-an-administrator.md). <br/><br/> For information about how to configure spam notification messages for users, see [Configure end-user spam notifications in EOP](configure-end-user-spam-notifications-in-eop.md) or [Configure end-user spam notifications in Exchange Online](configure-end-user-spam-notifications-in-exchange-online.md).

   - Configure **Select the threshold** to determine how you want to treat bulk email as spam, based on the Bulk Complaint Level (BCL) of the message. You can choose a threshold setting from 1 to 9, where 1 indicates most bulk email as spam, and 9 allows the most bulk email to be delivered. The service then performs the configured action, such as sending the message to the recipient's Junk Email folder. See [Bulk Complaint Level values](bulk-complaint-level-values.md) and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md) for more details.

4. On the **Spam Properties** page, you can set the Test mode options for the policy by configuring:

   - **None** Take no test mode action on the message. This is the default.

   - **Add the default test X-header text** Selecting this option sends the message to the specified recipients, but also adds a special X-header to the message to identify it as having matched a specific advanced spam filtering option.

   - **Send a Bcc message to this address** Selecting this option sends a blind carbon copy of the message to the email address that you specify in the input box. <br/><br/>For more information about the advanced spam filtering options, including descriptions about each option and the X-header text that is associated with each one, see [Advanced spam filtering  options](advanced-spam-filtering-asf-options.md).

5. For custom policies only, click the **Apply to** menu item, and then create a condition-based rule to specify the users, groups, and domains to which to apply this policy. You can create multiple conditions, if they are unique.

   - To select users, select **The recipient is**. In the subsequent dialog box, select one or more senders from your company from the user picker list, and then click **add**. To add senders who aren't on the list, type their email addresses, and then click **Check names**. In this box, you can also use wildcards for multiple email addresses (for example: \*@ _domainname_). When you are done making your selections, click **ok** to return to the main screen.

   - To select groups, select **The recipient is a member of**. Then, in the subsequent dialog box, select or specify the groups. Click **ok** to return to the main screen.

   - To select domains, select **The recipient domain is**. Then, in the subsequent dialog box, add the domains. Click **ok** to return to the main screen.

     You can create exceptions within the rule. For example, you can filter messages from all domains except for a certain domain. Click **add exception**, and then create your exception conditions similar to the way that you created the other conditions.

     Applying a spam policy to a group is supported only for **Mail Enabled Security Groups**.

6. Click **Save**. A summary of your policy settings appears in the right pane.

You can't disable or delete the default policy, and custom policies always take precedence over the default policy. For custom policies, you can select or clear the check boxes in the **ENABLED** column to enable or disable them. By default, all policies are enabled. To delete a custom policy, select the policy, click **Delete** ![Delete icon](../../media/ITPro-EAC-DeleteIcon.gif), and then confirm that you want to delete the policy.

> [!TIP]
> You can change the priority (running order) of your custom policies by clicking the ![Up Arrow Icon](../../media/ITPro-EAC-UpArrowIcon.gif) up arrow and ![Down Arrow Icon](../../media/ITPro-EAC-DownArrowIcon.gif) down arrow. The policy that has a **PRIORITY** of **0** will run first, followed by **1**, then **2**, and so on.

## Use Exchange Online PowerShell or Exchange Online Protection PowerShell to configure spam filter policies

### Use PowerShell to create spam filter policies

Creating an spam filter policy in PowerShell is a two-step process:

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
New-HostedContentFilterPolicy -Name "<PolicyName>" [-AdminDisplayName "<OptionalComments>"]
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

The only additional setting that's available when you modify a spam filter policy in PowerShell is the _MakeDefault_ switch that turns the specifiedpolicy into the default policy (applied to everyone, **Lowest** priority, and you can't delete it).

Otherwise, no additional settings are available when you modify a spam filter policy in PowerShell. The same settings are available when you create a policy as described in the [Step 1: Use PowerShell to create a spam filter policy](#step-1-use-powershell-to-create-a-spam-filter-policy) section earlier in this topic. Note that you can't rename the default policy named Default.

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

Enabling or disabling a spam filter rule in PowerShell enables or disables the application of the whole spam filter policy (the spam filter policy and the corresponding spam filter rule). You can't enable or disable the application of the default spam filter policy (it's always applied to all users).

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
