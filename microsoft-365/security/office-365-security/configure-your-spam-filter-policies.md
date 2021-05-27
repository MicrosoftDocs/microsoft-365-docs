---
title: Configure spam filter policies
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Priority
search.appverid: 
  - MET150
ms.assetid: 316544cb-db1d-4c25-a5b9-c73bbcf53047
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to view, create, modify, and delete anti-spam policies in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# Configure anti-spam policies in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email messages are automatically protected against spam by EOP. EOP uses anti-spam policies (also known as spam filter policies or content filter policies) as part of your organization's overall defense against spam. For more information, see [Anti-spam protection](anti-spam-protection.md).

Admins can view, edit, and configure (but not delete) the default anti-spam policy. For greater granularity, you can also create custom anti-spam policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure anti-spam policies in the Microsoft 365 security center or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

The basic elements of an anti-spam policy are:

- **The spam filter policy**: Specifies the actions for spam filtering verdicts and the notification options.
- **The spam filter rule**: Specifies the priority and recipient filters (who the policy applies to) for a spam filter policy.

The difference between these two elements isn't obvious when you manage anti-spam polices in the security center:

- When you create an anti-spam policy, you're actually creating a spam filter rule and the associated spam filter policy at the same time using the same name for both.
- When you modify an anti-spam policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the spam filter rule. All other settings modify the associated spam filter policy.
- When you remove an anti-spam policy, the spam filter rule and the associated spam filter policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure anti-spam policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-anti-spam-policies) section later in this article.

Every organization has a built-in anti-spam policy named Default that has these properties:

- The policy is applied to all recipients in the organization, even though there's no spam filter rule (recipient filters) associated with the policy.
- The policy has the custom priority value **Lowest** that you can't modify (the policy is always applied last). Any custom policies that you create always have a higher priority.
- The policy is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.

To increase the effectiveness of spam filtering, you can create custom anti-spam policies with stricter settings that are applied to specific users or groups of users.

## What do you need to know before you begin?

- You open the security center at <https://security.microsoft.com/>. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To add, modify, and delete anti-spam policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to anti-spam policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for anti-spam policies, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

## Use the security center to create anti-spam policies

Creating a custom anti-spam policy in the security center creates the spam filter rule and the associated spam filter policy at the same time using the same name for both.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam**.

2. Click ![Create icon](../../media/m365-cc-sc-create-icon.png) **Create policy** and then select **Inbound** from the dropdown list.

3. The policy wizard opens. On the **Name your policy page**, configure these settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Users, groups, and domains** page that appears, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts in your organization.
   - **Groups**: The specified distribution groups, mail-enabled security groups, or Microsoft 365 Groups in your organization.
   - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   Multiple values in the same condition use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   - **Exclude these users, groups, and domains**: To add exceptions for the internal recipients that the policy applies to (recpient exceptions), select this option and configure the exceptions. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

5. On the **Bulk email threshold & spam properties** page that appears, configure the following settings:

   - **Bulk email threshold**: Specifies the bulk complaint level (BCL) of a message that triggers the specified action for the **Bulk** spam filtering verdict that you configure on the next page (greater than the specified value, not greater than or equal to). A higher value indicates the message is less desirable (more likely to resemble spam). The default value is 7. For more information, see [Bulk complaint level (BCL) in EOP](bulk-complaint-level-values.md) and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md).

     By default, the PowerShell only setting _MarkAsSpamBulkMail_ is `On` in anti-spam policies. This setting dramatically affects the results of a **Bulk email** filtering verdict:

     - **_MarkAsSpamBulkMail_ is On**: A BCL that's greater than the threshold is converted to an SCL 6 that corresponds to a filtering verdict of **Spam**, and the action for the **Bulk email** filtering verdict is taken on the message.
     - **_MarkAsSpamBulkMail_ is Off**: The message is stamped with the BCL, but _no action_ is taken for a **Bulk email** filtering verdict. In effect, the BCL threshold and **Bulk email** filtering verdict action are irrelevant.

   - **Increase spam score**, **Mark as spam**<sup>\*</sup> and **Test mode**: Contains the Advanced Spam Filter (ASF) settings that are turned off by default. ASF settings are in the process of being deprecated, and their functionality is being incorporated into other parts of the filtering stack. We recommend that you leave all of these ASF settings turned off in your anti-spam policies.

     For details about these settings, see [Advanced Spam Filter settings in EOP](advanced-spam-filtering-asf-options.md).

      <sup>\*</sup> **Contains specific languages** and **from these countries** are not part of ASF settings.

   - **Contains specific languages**: Click the box and select **On** or **Off** from the dropdown list. If you turn it on, a box appears. Start typing the name of a language in the box. A filtered list of supported languages will appear. When you find the language that you're looking for, select it. Repeat this step as many times as necessary. To remove an existing value, click remove ![Remove icon](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   - **From these countries***: Click the box and select **On** or **Off** from the dropdown list. If you turn it on, a box appears. Start typing the name of a country in the box. A filtered list of supported countries will appear. When you find the country that you're looking for, select it. Repeat this step as many times as necessary. To remove an existing value, click remove ![Remove icon](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   When you're finished, click **Next**.

6. On the **Actions** page that appears, configure the following settings:

   - **Message actions**: Select or review the action to take on messages based on the following spam filtering verdicts:
     - **Spam**
     - **High confidence spam**
     - **Phishing email**
     - **High confidence phishing email**
     - **Bulk**

     The available actions for spam filtering verdicts are described in the following table.

     - A check mark ( ![Check mark](../../media/checkmark.png)) indicates the action is available (not all actions are available for all verdicts).
     - An asterisk ( <sup>\*</sup> ) after the check mark indicates the default action for the spam filtering verdict.

     <br>

     ****

     |Action|Spam|High<br>confidence<br>spam|Phishing<br>email|High<br>confidence<br>phishing<br>email|Bulk<br>email|
     |---|:---:|:---:|:---:|:---:|:---:|
     |**Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder.<sup>1</sup>|![Check mark](../../media/checkmark.png)<sup>\*</sup>|![Check mark](../../media/checkmark.png)<sup>\*</sup>|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)<sup>\*</sup>|
     |**Add X-header**: Adds an X-header to the message header and delivers the message to the mailbox. <p> You enter the X-header field name (not the value) later in the **Add this X-header text** box. <p> For **Spam** and **High confidence spam** verdicts, the message is moved to the Junk Email folder.<sup>1,2</sup>|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)||![Check mark](../../media/checkmark.png)<sup>\*</sup>|
     |**Prepend subject line with text**: Adds text to the beginning of the message's subject line. The message is delivered to the mailbox and moved to the Junk email folder.<sup>1,2</sup> <p> You enter the text later in the **Prefix subject line with this text** box.|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)||![Check mark](../../media/checkmark.png)|
     |**Redirect message to email address**: Sends the message to other recipients instead of the intended recipients. <p> You specify the recipients later in the **Redirect to this email address** box.|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
     |**Delete message**: Silently deletes the entire message, including all attachments.|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)||![Check mark](../../media/checkmark.png)|
     |**Quarantine message**: Sends the message to quarantine instead of the intended recipients. <p> You specify how long the message should be held in quarantine later in the **Quarantine** box.|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)<sup>\*</sup>|![Check mark](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
     |**No action**|||||![Check mark](../../media/checkmark.png)|
     |

     > <sup>1</sup> In Exchange Online, the message is moved to the Junk Email folder if the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).
     >
     > In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange to translate the EOP spam filtering verdict so the junk email rule can move the message to the Junk Email folder. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).
     >
     > <sup>2</sup> You can this use value as a condition in mail flow rules to filter or route the message.

   - **Retain spam in quarantine for this many days**: Specifies how long to keep the message in quarantine if you selected **Quarantine message** as the action for a spam filtering verdict. After the time period expires, the message is deleted. The default value is 30 days. A valid value is from 1 to 30 days. For information about quarantine, see the following topics:

     - [Quarantined messages in EOP](quarantine-email-messages.md)
     - [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md)
     - [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md)

   - **Add this X-header text**: This box is required and available only if you selected **Add X-header** as the action for a spam filtering verdict. The value you specify is the header field *name* that's added to the message header. The header field *value* is always `This message appears to be spam`.

     The maximum length is 255 characters, and the value can't contain spaces or colons (:).

     For example, if you enter the value `X-This-is-my-custom-header`, the X-header that's added to the message is `X-This-is-my-custom-header: This message appears to be spam.`

     If you enter a value that contains spaces or colons (:), the value you enter is ignored, and the default X-header is added to the message (`X-This-Is-Spam: This message appears to be spam.`).

   - **Prepend subject line with this text**: This box is required and available only if you selected **Prepend subject line with text** as the action for a spam filtering verdict. Enter the text to add to the beginning of the message's subject line.

   - **Redirect to this email address**: This box is required and available only if you selected the **Redirect message to email address** as the action for a spam filtering verdict. Enter the email address where you want to deliver the message. You can enter multiple values separated by semicolons (;).

   - **Enable safety Tips**: By default, Safety Tips are enabled, but you can disable them by clearing the checkbox. For more information about Safety Tips, see [Safety tips in email messages](safety-tips-in-office-365.md).

   - **Enable zero-hour auto purge (ZAP)**: ZAP detects and takes action on messages that have already been delivered to Exchange Online mailboxes. For more information, see [Zero-hour auto purge - protection against spam and malware](zero-hour-auto-purge.md).

     ZAP is turned on by default. When ZAP is turned on, the following settings are available:

     - **Enable ZAP for phishing messages**: By default, ZAP is enabled for phishing detections, but you can disable it by clearing the checkbox.
     - **Enable ZAP for spam messages**: By default, ZAP is enabled for spam detections, but you can disable it by clearing the checkbox.

   - **Enable end-user spam notifications**: For more information, see the [Configure end-user spam notifications](#configure-end-user-spam-notifications) section later in this topic.

   When you're finished, click **Next**.

7. On the **Allow & block list** page that appears, you are able to configure message senders by email address or email domain that are allowed to skip spam filtering:

   > [!CAUTION]
   >
   > - Think very carefully before you add domains here. For more information, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md)
   >
   > - Never add [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) (domains that you own) or common domains (for example, microsoft.com or office.com) to the allowed domains list. This would allow attackers to send email that bypasses spam filtering into your organization.
   >
   > - Manually blocking domains isn't dangerous, but it can increase your administrative workload. For more information, see [Create block sender lists in EOP](create-block-sender-lists-in-office-365.md).

   - **Allowed** \> **Senders**: Click **Manage (nn) sender(s)**. In the **Manage allowed senders** flyout that appears, do the following steps:

      a. Enter the sender's email address. You can specify multiple email addresses separated by semicolons (;).

      b. Click ![Add icon](../../media/c2dd8b3a-5a22-412c-a7fa-143f5b2b5612.png) to add the senders.

      Repeat these steps as many times as necessary.

      The senders you added appear in the **Allowed Sender** section on the flyout. To delete a sender, click ![Remove icon](../../media/scc-remove-icon.png).

      When you're finished, click **Save**.

   - **Allowed** \> **Domains**: Click **Allow domains**. In the **Manage allowed domains** flyout that appears, do the following steps:

      a. Enter the domain. You can specify multiple domains separated by semicolons (;).

      b. Click ![Add icon](../../media/c2dd8b3a-5a22-412c-a7fa-143f5b2b5612.png) to add the domains.

      Repeat these steps as many times as necessary.

      The domains you added appear in the **Allowed Domain** section on the flyout. To delete a domain, click ![Remove icon](../../media/scc-remove-icon.png).

      When you're finished, click **Save**.

   - **Blocked** \> **Senders**:  Click **Manage (nn) sender(s)**. In the **Manage blocked senders** flyout that appears, do the following steps:

      a. Enter the sender's email address. You can specify multiple email addresses separated by semicolons (;). Wildcards (*) aren't allowed.

      b. Click ![Add icon](../../media/c2dd8b3a-5a22-412c-a7fa-143f5b2b5612.png) to add the senders.

      Repeat these steps as many times as necessary.

      The senders you added appear in the **Blocked Sender** section on the flyout. To delete a sender, click ![Remove button](../../media/scc-remove-icon.png).

      When you're finished, click **Save**.

   - **Blocked** \> **Domains**: Click **Block domains**. In the **Manage blocked domains** flyout that appears, do the following steps:

      a. Enter the domain. You can specify multiple domains separated by semicolons (;). Wildcards (*) aren't allowed.

      b. Click ![Add icon](../../media/c2dd8b3a-5a22-412c-a7fa-143f5b2b5612.png) to add the domains.

      Repeat these steps as many times as necessary.

      The domains you added appear in the **Blocked Domain** list on the flyout. To delete a domain, click ![Remove button](../../media/scc-remove-icon.png).

   When you're finished, click **Next**.

8. On the **Review** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section.

   When you're finished, click **Create**.

9. On the confirmation page that appears, click **Done**.

## Use the security center to view anti-spam policies

1. In the security center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand an anti-spam policy:

   - The default policy named **Default spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. The important policy settings are displayed in the expanded policy details that appear. To see more details, click **Edit policy**.

## Use the security center to modify anti-spam policies

1. In the security center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand an anti-spam policy:

   - The default policy named **Default spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. Click **Edit policy**.

For custom anti-spam policies, the available settings in the flyout that appears are identical to those described in the [Use the security center to create anti-spam policies](#use-the-security-center-to-create-anti-spam-policies) section.

For the default anti-spam policy named **Default spam filter policy**, the **Applied to** section isn't available (the policy applies to everyone), and you can't rename the policy.

To enable or disable a policy, set the policy priority order, or configure the end-user quarantine notifications, see the following sections.

### Enable or disable anti-spam policies

You can't disable the default anti-spam policy.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam**.

2. Select a policy with the **Type value** of **Custom anti-spam policy** from the list by clicking on the name of the policy. At the top of the policy details flyout that appears, you'll see one of the following values:
   - **Policy off**: To turn on the policy, click ![Turn on icon](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** .
   - **Policy on**: To turn off the policy, click ![Turn off icon](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off**.

3. In the confirmation dialog that appears, click **Turn on** or **Turn off**.

4. Click **Close** in the policy details flyout.

Back on the main policy page, the **Status** value of the policy will be **On** or **Off**.

### Set the priority of custom anti-spam policies

By default, anti-spam policies are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the security center). Changing the priority of a policy only makes sense if you have multiple policies.

 **Notes**:

- In the security center, you can only change the priority of the anti-spam policy after you create it. In PowerShell, you can override the default priority when you create the spam filter rule (which can affect the priority of existing rules).
- Anti-spam policies are processed in the order that they're displayed (the first policy has the **Priority** value 0). The default anti-spam policy named Default has the priority value **Lowest**, and you can't change it.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam**.

2. Select a custom policy from the list by clicking on the name of the policy. At the top of the policy details flyout that appears, you'll see **Increase priority** or **Decrease priority** based on the current priority value and the number of custom policies:
   - The anti-spam policy with the **Priority** value **0** has only the **Decrease priority** option available.
   - The anti-spam policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** option available.
   - If you have three or more anti-spam policies, policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** options available.

3. Click ![Increase priority icon](../../media/m365-cc-sc-increase-icon.png) **Increase priority** or ![Decrease priority icon](../../media/m365-cc-sc-decrease-icon.png) **Decrease priority** to change the **Priority** value.

4. When you're finished, click **Close** in the policy details flyout.

### Configure end-user spam notifications

When a spam filtering verdict quarantines a message, you can configure end-user spam notifications to let recipients know what happened to messages that were sent to them. For more information about these notifications, see [End-user spam notifications in EOP](use-spam-notifications-to-release-and-report-quarantined-messages.md).

1. In the security center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand an anti-spam policy:

   - The default policy named **Default spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.

3. In the expanded policy details that appear, click **Configure end-user spam notifications**.

4. In the **\<Policy Name\>** dialog that opens, configure the following settings:

   - **Enable end-user spam notifications**: Select the checkbox to enable notifications. Clear the checkbox to disable notifications.

   - **Send end-user spam notifications every (days)**: Select how frequently notifications are sent. The default value is 3 days. You can enter 1 to 15 days.

     There are 3 cycles of end-user spam notification within a 24 hour period that start at the following times: 01:00 UTC, 08:00 UTC, and 16:00 UTC.

     > [!NOTE]
     > If we missed a notification during a previous cycle, a subsequent cycle will push the notification. This may give the appearance of multiple notifications within the same day.

   - **Notification language**: Click the drop down an select an available language from the list. The default value is **Default**, which means English.

   When you're finished, click **Save**.

## Use the security center to remove anti-spam policies

1. In the security center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand the custom policy that you want to delete (the **Type** column is **Custom anti-spam policy**).

3. In the expanded policy details that appear, click **Delete policy**.

4. Click **Yes** in the warning dialog that appears.

You can't remove the default policy.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure anti-spam policies

As previously described, an anti-spam policy consists of a spam filter policy and a spam filter rule.

In Exchange Online PowerShell or standalone EOP PowerShell, the difference between spam filter policies and spam filter rules is apparent. You manage spam filter policies by using the **\*-HostedContentFilterPolicy** cmdlets, and you manage spam filter rules by using the **\*-HostedContentFilterRule** cmdlets.

- In PowerShell, you create the spam filter policy first, then you create the spam filter rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the spam filter policy and the spam filter rule separately.
- When you remove a spam filter policy from PowerShell, the corresponding spam filter rule isn't automatically removed, and vice versa.

The following anti-spam policy settings are only available in PowerShell:

- The _MarkAsSpamBulkMail_ parameter that's `On` by default. The effects of this setting were explained in the [Use the security center to create anti-spam policies](#use-the-security-center-to-create-anti-spam-policies) section earlier in this article.

- The following settings for end-user spam quarantine notifications:

  - The _DownloadLink_ parameter that shows or hides the link to the Junk Email Reporting Tool for Outlook.

  - The _EndUserSpamNotificationCustomSubject_ parameter that you can use to customize the subject line of the notification.

### Use PowerShell to create anti-spam policies

Creating an anti-spam policy in PowerShell is a two-step process:

1. Create the spam filter policy.
2. Create the spam filter rule that specifies the spam filter policy that the rule applies to.

 **Notes**:

- You can create a new spam filter rule and assign an existing, unassociated spam filter policy to it. A spam filter rule can't be associated with more than one spam filter policy.

- You can configure the following settings on new spam filter policies in PowerShell that aren't available in the security center until after you create the policy:

  - Create the new policy as disabled (_Enabled_ `$false` on the **New-HostedContentFilterRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-HostedContentFilterRule** cmdlet).

- A new spam filter policy that you create in PowerShell isn't visible in the security center until you assign the policy to a spam filter rule.

#### Step 1: Use PowerShell to create a spam filter policy

To create a spam filter policy, use this syntax:

```PowerShell
New-HostedContentFilterPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] <Additional Settings>
```

This example creates a spam filter policy named Contoso Executives with the following settings:

- Quarantine messages when the spam filtering verdict is spam or high confidence spam.

- BCL 6 triggers the action for a bulk email spam filtering verdict.

```PowerShell
New-HostedContentFilterPolicy -Name "Contoso Executives" -HighConfidenceSpamAction Quarantine -SpamAction Quarantine -BulkThreshold 6
```

> [!NOTE]
> **New-HostedContentFilterPolicy** and **Set-HostedContentFilterPolicy** contain an older _ZapEnabled_ parameter, as well as newer _PhishZapEnabled_ and _SpamZapEnabled_ parameters. The _ZapEnabled_ parameter was deprecated in February 2020. The _PhishZapEnabled_ and _SpamZapEnabled_ parameters used to inherit their values from the _ZapEnabled_ parameter. But, if you use the _PhishZapEnabled_ and _SpamZapEnabled_ parameters in a command or you use the **Spam ZAP** or **Phish ZAP** settings in the anti-spam policy in the security center, the value of the _ZapEnabled_ parameter is ignored. In other words, don't use the _ZapEnabled_ parameter; use the  _PhishZapEnabled_ and _SpamZapEnabled_ parameters instead.

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](/powershell/module/exchange/new-hostedcontentfilterpolicy).

#### Step 2: Use PowerShell to create a spam filter rule

To create a spam filter rule, use this syntax:

```PowerShell
New-HostedContentFilterRule -Name "<RuleName>" -HostedContentFilterPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"]
```

This example creates a new spam filter rule named Contoso Executives with these settings:

- The spam filter policy named Contoso Executives is associated with the rule.

- The rule applies to members of the group named Contoso Executives Group.

```PowerShell
New-HostedContentFilterRule -Name "Contoso Executives" -HostedContentFilterPolicy "Contoso Executives" -SentToMemberOf "Contoso Executives Group"
```

For detailed syntax and parameter information, see [New-HostedContentFilterRule](/powershell/module/exchange/new-hostedcontentfilterrule).

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

For detailed syntax and parameter information, see [Get-HostedContentFilterPolicy](/powershell/module/exchange/get-hostedcontentfilterpolicy).

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

This example returns all the property values for the spam filter rule named Contoso Executives.

```PowerShell
Get-HostedContentFilterRule -Identity "Contoso Executives" | Format-List
```

For detailed syntax and parameter information, see [Get-HostedContentFilterRule](/powershell/module/exchange/get-hostedcontentfilterrule).

### Use PowerShell to modify spam filter policies

Other than the following items, the same settings are available when you modify a spam filter policy in PowerShell as when you create the policy as described in the [Step 1: Use PowerShell to create a spam filter policy](#step-1-use-powershell-to-create-a-spam-filter-policy) section earlier in this article.

- The _MakeDefault_ switch that turns the specified policy into the default policy (applied to everyone, always **Lowest** priority, and you can't delete it) is only available when you modify a spam filter policy in PowerShell.

- You can't rename a spam filter policy (the **Set-HostedContentFilterPolicy** cmdlet has no _Name_ parameter). When you rename an anti-spam policy in the security center, you're only renaming the spam filter _rule_.

To modify a spam filter policy, use this syntax:

```PowerShell
Set-HostedContentFilterPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](/powershell/module/exchange/set-hostedcontentfilterpolicy).

### Use PowerShell to modify spam filter rules

The only setting that isn't available when you modify a spam filter rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing spam filter rules, see the next section.

Otherwise, no additional settings are available when you modify a spam filter rule in PowerShell. The same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a spam filter rule](#step-2-use-powershell-to-create-a-spam-filter-rule) section earlier in this article.

To modify a spam filter rule, use this syntax:

```PowerShell
Set-HostedContentFilterRule -Identity "<RuleName>" <Settings>
```

This example renames the existing spam filter rule named `{Fabrikam Spam Filter}` that might cause problems in the security center.

```powershell
Set-HostedContentFilterRule -Identity "{Fabrikam Spam Filter}" -Name "Fabrikam Spam Filter"
```

For detailed syntax and parameter information, see [Set-HostedContentFilterRule](/powershell/module/exchange/set-hostedcontentfilterrule).

### Use PowerShell to enable or disable spam filter rules

Enabling or disabling a spam filter rule in PowerShell enables or disables the whole anti-spam policy (the spam filter rule and the assigned spam filter policy). You can't enable or disable the default anti-spam policy (it's always always applied to all recipients).

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

For detailed syntax and parameter information, see [Enable-HostedContentFilterRule](/powershell/module/exchange/enable-hostedcontentfilterrule) and [Disable-HostedContentFilterRule](/powershell/module/exchange/disable-hostedcontentfilterrule).

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

- The default spam filter policy doesn't have a corresponding spam filter rule, and it always has the unmodifiable priority value **Lowest**.

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

For detailed syntax and parameter information, see [Remove-HostedContentFilterPolicy](/powershell/module/exchange/remove-hostedcontentfilterpolicy).

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

For detailed syntax and parameter information, see [Remove-HostedContentFilterRule](/powershell/module/exchange/remove-hostedcontentfilterrule).

## How do you know these procedures worked?

### Send a GTUBE message to test your spam policy settings

> [!NOTE]
> These steps will only work if the email organization that you're sending the GTUBE message from doesn't scan for outbound spam. If it does, the test message can't be sent.

Generic Test for Unsolicited Bulk Email (GTUBE) is a text string that you include in a test message to verify your organization's anti-spam settings. A GTUBE message is similar to the European Institute for Computer Antivirus Research (EICAR) text file for testing malware settings.

Include the following GTUBE text in an email message on a single line, without any spaces or line breaks:

```text
XJS*C4JDBQADN1.NSBN3*2IDNEN*GTUBE-STANDARD-ANTI-UBE-TEST-EMAIL*C.34X
```

## Allow/Block Lists

There will be times when our filters will miss the message or it takes time for our systems to catch up to it. In this cases, the anti-spam policy has an Allow and a Block list available to override the current verdict. This option should only be used sparingly since lists can become unmanageable and temporarily since our filtering stack should be doing what it is supposed to be doing.

> [!TIP]
> There may be situations where your organization may not agree with the verdict the service provides. In this case, you may want to keep the Allow or Block listing permanent. However, if you are going to put a domain on the Allow list for extended periods of time, you should tell the sender to make sure that their domain is authenticated and set to DMARC reject if it is not.