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

ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 316544cb-db1d-4c25-a5b9-c73bbcf53047
ms.collection:
  - m365-security
ms.custom:
description: Admins can learn how to view, create, modify, and delete anti-spam policies in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Configure anti-spam policies in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email messages are automatically protected against spam by EOP. EOP uses anti-spam policies (also known as spam filter policies or content filter policies) as part of your organization's overall defense against spam. For more information, see [Anti-spam protection](anti-spam-protection.md).

Admins can view, edit, and configure (but not delete) the default anti-spam policy. For greater granularity, you can also create custom anti-spam policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure anti-spam policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

The basic elements of an anti-spam policy are:

- **The spam filter policy**: Specifies the actions for spam filtering verdicts and the notification options.
- **The spam filter rule**: Specifies the priority and recipient filters (who the policy applies to) for a spam filter policy.

The difference between these two elements isn't obvious when you manage anti-spam polices in the Microsoft 365 Defender portal:

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

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To add, modify, and delete anti-spam policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to anti-spam policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for anti-spam policies, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

- You can't completely turn off spam filtering, but you can use a mail flow rule (also known as a transport rule) to bypass most spam filtering on incoming message (for example, if you route email through a third-party protection service or device before delivery to Microsoft 365). For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).
  - High confidence phishing messages are still filtered. Other features in EOP are not affected (for example, messages are always scanned for malware).
  - If you need to bypass spam filtering for SecOps mailboxes or phishing simulations, don't use mail flow rules. For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](configure-advanced-delivery.md).

## Use the Microsoft 365 Defender portal to create anti-spam policies

Creating a custom anti-spam policy in the Microsoft 365 Defender portal creates the spam filter rule and the associated spam filter policy at the same time using the same name for both.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, click ![Create icon.](../../media/m365-cc-sc-create-icon.png) **Create policy** and then select **Inbound** from the drop down list.

3. The policy wizard opens. On the **Name your policy page**, configure these settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Users, groups, and domains** page that appears, identify the internal recipients that the policy applies to (recipient conditions):
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

5. On the **Bulk email threshold & spam properties** page that appears, configure the following settings:

   - **Bulk email threshold**: Specifies the bulk complaint level (BCL) of a message that triggers the specified action for the **Bulk** spam filtering verdict that you configure on the next page. A higher value indicates the message is less desirable (more likely to resemble spam). The default value is 7. For more information, see [Bulk complaint level (BCL) in EOP](bulk-complaint-level-values.md) and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md).

     By default, the PowerShell only setting _MarkAsSpamBulkMail_ is `On` in anti-spam policies. This setting dramatically affects the results of a **Bulk** filtering verdict:

     - **_MarkAsSpamBulkMail_ is On**: A BCL that's greater than or equal to the threshold is converted to an SCL 6 that corresponds to a filtering verdict of **Spam**, and the action for the **Bulk** filtering verdict is taken on the message.
     - **_MarkAsSpamBulkMail_ is Off**: The message is stamped with the BCL, but _no action_ is taken for a **Bulk** filtering verdict. In effect, the BCL threshold and **Bulk** filtering verdict action are irrelevant.

   - **Increase spam score**, **Mark as spam**<sup>\*</sup> and **Test mode**: Advanced Spam Filter (ASF) settings that are turned off by default.

     For details about these settings, see [Advanced Spam Filter settings in EOP](advanced-spam-filtering-asf-options.md).

      <sup>\*</sup> The **Contains specific languages** and **from these countries** settings are not part of ASF.

   - **Contains specific languages**: Click the box and select **On** or **Off** from the drop down list. If you turn it on, a box appears. Start typing the name of a language in the box. A filtered list of supported languages will appear. When you find the language that you're looking for, select it. Repeat this step as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   - **From these countries***: Click the box and select **On** or **Off** from the drop down list. If you turn it on, a box appears. Start typing the name of a country in the box. A filtered list of supported countries will appear. When you find the country that you're looking for, select it. Repeat this step as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   When you're finished, click **Next**.

6. On the **Actions** page that appears, configure the following settings:

   - **Message actions**: Select or review the action to take on messages based on the following spam filtering verdicts:
     - **Spam**
     - **High confidence spam**
     - **Phishing**
     - **High confidence phishing**
     - **Bulk**

     The available actions for spam filtering verdicts are described in the following table.

     - A check mark ( ✔ ) indicates the action is available (not all actions are available for all verdicts).
     - An asterisk ( <sup>\*</sup> ) after the check mark indicates the default action for the spam filtering verdict.

     |Action|Spam|High<br>confidence<br>spam|Phishing|High<br>confidence<br>phishing|Bulk|
     |---|:---:|:---:|:---:|:---:|:---:|
     |**Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder.<sup>1</sup>|✔<sup>\*</sup>|✔<sup>\*</sup>|✔|✔|✔<sup>\*</sup>|
     |**Add X-header**: Adds an X-header to the message header and delivers the message to the mailbox. <p> You enter the X-header field name (not the value) later in the **Add this X-header text** box. <p> For **Spam** and **High confidence spam** verdicts, the message is moved to the Junk Email folder.<sup>1,2</sup>|✔|✔|✔||✔|
     |**Prepend subject line with text**: Adds text to the beginning of the message's subject line. The message is delivered to the mailbox and moved to the Junk email folder.<sup>1,2</sup> <p> You enter the text later in the **Prefix subject line with this text** box.|✔|✔|✔||✔|
     |**Redirect message to email address**: Sends the message to other recipients instead of the intended recipients. <p> You specify the recipients later in the **Redirect to this email address** box.|✔|✔|✔|✔|✔|
     |**Delete message**: Silently deletes the entire message, including all attachments.|✔|✔|✔||✔|
     |**Quarantine message**: Sends the message to quarantine instead of the intended recipients. <p> You specify how long the message should be held in quarantine later in the **Quarantine** box. <p> You specify the [quarantine policy](quarantine-policies.md) that applies to quarantined messages for the spam filter verdict in the **Select a policy** box that appears. For more information, see [Quarantine policies](quarantine-policies.md).<sup>3</sup>|✔|✔|✔<sup>\*</sup>|✔<sup>\*</sup>|✔|
     |**No action**|||||✔|

     > <sup>1</sup> EOP now uses its own mail flow delivery agent to route messages to the Junk Email folder instead of using the junk email rule in the mailbox. The _Enabled_ parameter on the **Set-MailboxJunkEmailConfiguration** cmdlet no longer has any effect on mail flow. For more information, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).
     >
     > In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange. These mail flow rules translate the EOP spam filtering verdict so the junk email rule in the mailbox can move the message to the Junk Email folder. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).
     >
     > <sup>2</sup> You can this use value as a condition in mail flow rules to filter or route the message.
     >
     > <sup>3</sup> A blank **Select a policy** value means the default quarantine policy for that particular verdict is used. When you later edit the anti-spam policy or view the settings, the default quarantine policy name is shown. For more information about default quarantine policies that are used for the spam filter verdicts, see [this table](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features).
     >
     > Users can't release their own messages that were quarantined as high confidence phishing. At best, admins can configure the quarantine policy so users can request the release of their quarantined high confidence phishing messages.

   - **Retain spam in quarantine for this many days**: Specifies how long to keep the message in quarantine if you selected **Quarantine message** as the action for a spam filtering verdict. After the time period expires, the message is deleted, and is not recoverable. A valid value is from 1 to 30 days.

     > [!NOTE]
     > The default value is 15 days in the default anti-spam policy and in new anti-spam policies that you create in PowerShell. The default value is 30 days in new anti-spam policies that you create in the Microsoft 365 Defender portal.
     >
     > This setting also controls how long messages that were quarantined by **anti-phishing** policies are retained. For more information, see [Quarantined messages in EOP and Defender for Office 365](quarantine-email-messages.md).

   - **Add this X-header text**: This box is required and available only if you selected **Add X-header** as the action for a spam filtering verdict. The value you specify is the header field *name* that's added to the message header. The header field *value* is always `This message appears to be spam`.

     The maximum length is 255 characters, and the value can't contain spaces or colons (:).

     For example, if you enter the value `X-This-is-my-custom-header`, the X-header that's added to the message is `X-This-is-my-custom-header: This message appears to be spam.`

     If you enter a value that contains spaces or colons (:), the value you enter is ignored, and the default X-header is added to the message (`X-This-Is-Spam: This message appears to be spam.`).

   - **Prepend subject line with this text**: This box is required and available only if you selected **Prepend subject line with text** as the action for a spam filtering verdict. Enter the text to add to the beginning of the message's subject line.

   - **Redirect to this email address**: This box is required and available only if you selected the **Redirect message to email address** as the action for a spam filtering verdict. Enter the email address where you want to deliver the message. You can enter multiple values separated by semicolons (;).

   - **Enable safety Tips**: By default, Safety Tips are enabled, but you can disable them by clearing the checkbox.

   - **Enable zero-hour auto purge (ZAP)**: ZAP detects and takes action on messages that have already been delivered to Exchange Online mailboxes. For more information, see [Zero-hour auto purge - protection against spam and malware](zero-hour-auto-purge.md).

     ZAP is turned on by default. When ZAP is turned on, the following settings are available:

     - **Enable ZAP for phishing messages**: By default, ZAP is enabled for phishing detections, but you can disable it by clearing the checkbox.
     - **Enable ZAP for spam messages**: By default, ZAP is enabled for spam detections, but you can disable it by clearing the checkbox.

   > [!NOTE]
   > End-user spam notifications have been replaced by _quarantine notifications_ in quarantine policies. Quarantine notifications contain information about quarantined messages for all supported protection features (not just anti-spam policy and anti-phishing policy verdicts). For more information, see [Quarantine policies](quarantine-policies.md).

   When you're finished, click **Next**.

7. On the **Allow & block list** flyout that appears, you are able to configure message senders by email address or email domain that are allowed to skip spam filtering.

   In the **Allowed** section, you can configure allowed senders and allowed domains. In the **Blocked** section, you can add blocked senders and blocked domains.

   > [!IMPORTANT]
   >
   > Think very carefully before you add domains to the allowed domains list. For more information, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md)
   >
   > Never add your own [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) or common domains (for example, microsoft.com or office.com) to the allowed domains list. If these domains are allowed to bypass spam filtering, attackers can easily send messages that spoof these trusted domains into your organization.
   >
   > Manually blocking domains by adding the domains to the blocked domains list isn't dangerous, but it can increase your administrative workload. For more information, see [Create block sender lists in EOP](create-block-sender-lists-in-office-365.md).
   >
   > There will be times when our filters will miss a message, you don't agree with the filtering verdict, or it takes time for our systems to catch up to it. In these cases, the allow list and block list are available to override the current filtering verdicts. But, you should use these lists sparingly and temporarily: longs lists can become unmanageable, and our filtering stack should be doing what it's supposed to be doing. If you're going to keep an allowed domain for an extended period of time, you should tell the sender to verify that their domain is authenticated and set to DMARC reject appropriately.

   The steps to add entries to any of the lists are the same:

   1. Click the link for the list that you want to configure:
      - **Allowed** \> **Senders**: Click **Manage (nn) sender(s)**.
      - **Allowed** \> **Domains**: Click **Allow domains**.
      - **Blocked** \> **Senders**: Click **Manage (nn) sender(s)**.
      - **Blocked** \> **Domains**: Click **Block domains**.

   2. In the flyout that appears, do the following steps:
      1. Click ![Create icon.](../../media/m365-cc-sc-create-icon.png) **Add senders** or **Add domains**.
      2. In the **Add senders** or **Add domains** flyout that appears, enter the sender's email address in the **Sender** box or the domain in the **Domain** box. As you're typing, the value appears below the box. When you're finished typing the email address or domain, select the value below the box.
      3. Repeat the previous step as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

      When you're finished, click **Add senders** or **Add domains**.

      Back on the main flyout, the senders or domains that you added are listed on the page. To remove an entry from this page, do the following steps:

      1. Select one or more entries from the list. You can also use the **Search** box to find values in the list.
      2. After you select at least one entry, the delete icon ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) appears.
      3. Click the delete icon ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) to remove the selected entries.

      When you're finished, click **Done**.

      Back on the **Allow & block list** page, click **Next** when you're read to continue.

8. On the **Review** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Create**.

9. On the confirmation page that appears, click **Done**.

## Use the Microsoft 365 Defender portal to view anti-spam policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, look for one of the following values:
   - The **Type** value is **Custom anti-spam policy**
   - The **Name** value is **Anti-spam inbound policy (Default)**

   The following properties are displayed in the list of anti-spam policies:

   - **Name**
   - **Status**
   - **Priority**
   - **Type**

3. When you select an anti-spam policy by clicking on the name, the policy settings are displayed in a flyout.

## Use the Microsoft 365 Defender portal to modify anti-spam policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select an anti-spam policy from the list by clicking on the name:
   - A custom policy that you created where the value in the **Type** column is **Custom anti-spam policy**.
   - The default policy named **Anti-spam inbound policy (Default)**.

3. In the policy details flyout that appears, select **Edit** in each section to modify the settings within the section. For more information about the settings, see the previous [Use the Microsoft 365 Defender portal to create anti-spam policies](#use-the-microsoft-365-defender-portal-to-create-anti-spam-policies) section in this article.

   For the default anti-spam policy, the **Applied to** section isn't available (the policy applies to everyone), and you can't rename the policy.

To enable or disable a policy or set the policy priority order, see the following sections.

### Enable or disable anti-spam policies

You can't disable the default anti-spam policy.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select a policy with the **Type value** of **Custom anti-spam policy** from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see one of the following values:
   - **Policy off**: To turn on the policy, click ![Turn on icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** .
   - **Policy on**: To turn off the policy, click ![Turn off icon.](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off**.

4. In the confirmation dialog that appears, click **Turn on** or **Turn off**.

5. Click **Close** in the policy details flyout.

Back on the main policy page, the **Status** value of the policy will be **On** or **Off**.

### Set the priority of custom anti-spam policies

By default, anti-spam policies are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the Microsoft 365 Defender portal). Changing the priority of a policy only makes sense if you have multiple policies.

 **Notes**:

- In the Microsoft 365 Defender portal, you can only change the priority of the anti-spam policy after you create it. In PowerShell, you can override the default priority when you create the spam filter rule (which can affect the priority of existing rules).
- Anti-spam policies are processed in the order that they're displayed (the first policy has the **Priority** value 0). The default anti-spam policy has the priority value **Lowest**, and you can't change it.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select a select a policy with the **Type value** of **Custom anti-spam policy** from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see **Increase priority** or **Decrease priority** based on the current priority value and the number of custom policies:
   - The anti-spam policy with the **Priority** value **0** has only the **Decrease priority** option available.
   - The anti-spam policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** option available.
   - If you have three or more anti-spam policies, the policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** options available.

   Click ![Increase priority icon.](../../media/m365-cc-sc-increase-icon.png) **Increase priority** or ![Decrease priority icon](../../media/m365-cc-sc-decrease-icon.png) **Decrease priority** to change the **Priority** value.

4. When you're finished, click **Close** in the policy details flyout.

## Use the Microsoft 365 Defender portal to remove custom anti-spam policies

When you use the Microsoft 365 Defender portal to remove a custom anti-spam policy, the spam filter rule and the corresponding spam filter policy are both deleted. You can't remove the default anti-spam policy.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select a policy with the **Type value** of **Custom anti-spam policy** from the list by clicking on the name. At the top of the policy details flyout that appears, click ![More actions icon.](../../media/m365-cc-sc-more-actions-icon.png) **More actions** \> ![Delete policy icon](../../media/m365-cc-sc-delete-icon.png) **Delete policy**.

3. In the confirmation dialog that appears, click **Yes**.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure anti-spam policies

As previously described, an anti-spam policy consists of a spam filter policy and a spam filter rule.

In Exchange Online PowerShell or standalone EOP PowerShell, the difference between spam filter policies and spam filter rules is apparent. You manage spam filter policies by using the **\*-HostedContentFilterPolicy** cmdlets, and you manage spam filter rules by using the **\*-HostedContentFilterRule** cmdlets.

- In PowerShell, you create the spam filter policy first, then you create the spam filter rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the spam filter policy and the spam filter rule separately.
- When you remove a spam filter policy from PowerShell, the corresponding spam filter rule isn't automatically removed, and vice versa.

The following anti-spam policy settings are only available in PowerShell:

- The _MarkAsSpamBulkMail_ parameter that's `On` by default. The effects of this setting were explained in the [Use the Microsoft 365 Defender portal to create anti-spam policies](#use-the-microsoft-365-defender-portal-to-create-anti-spam-policies) section earlier in this article.
- The following settings for end-user spam quarantine notifications:
  - The _DownloadLink_ parameter that shows or hides the link to the Junk Email Reporting Tool for Outlook.
  - The _EndUserSpamNotificationCustomSubject_ parameter that you can use to customize the subject line of the notification.

### Use PowerShell to create anti-spam policies

Creating an anti-spam policy in PowerShell is a two-step process:

1. Create the spam filter policy.
2. Create the spam filter rule that specifies the spam filter policy that the rule applies to.

 **Notes**:

- You can create a new spam filter rule and assign an existing, unassociated spam filter policy to it. A spam filter rule can't be associated with more than one spam filter policy.
- You can configure the following settings on new spam filter policies in PowerShell that aren't available in the Microsoft 365 Defender portal until after you create the policy:
  - Create the new policy as disabled (_Enabled_ `$false` on the **New-HostedContentFilterRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-HostedContentFilterRule** cmdlet).

- A new spam filter policy that you create in PowerShell isn't visible in the Microsoft 365 Defender portal until you assign the policy to a spam filter rule.

#### Step 1: Use PowerShell to create a spam filter policy

To create a spam filter policy, use this syntax:

```PowerShell
New-HostedContentFilterPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] <Additional Settings>
```

This example creates a spam filter policy named Contoso Executives with the following settings:

- Quarantine messages when the spam filtering verdict is spam or high confidence spam, and use the default [quarantine policy](quarantine-policies.md) for the quarantined messages (we aren't using the _SpamQuarantineTag_ or _HighConfidenceSpamQuarantineTag_ parameters).
- BCL 7, 8, or 9 triggers the action for a bulk email spam filtering verdict.

```PowerShell
New-HostedContentFilterPolicy -Name "Contoso Executives" -HighConfidenceSpamAction Quarantine -SpamAction Quarantine -BulkThreshold 6
```

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](/powershell/module/exchange/new-hostedcontentfilterpolicy).

> [!NOTE]
> For detailed instructions to specify the [quarantine policy](quarantine-policies.md) to use in a spam filter policy, see [Use PowerShell to specify the quarantine policy in anti-spam policies](quarantine-policies.md#anti-spam-policies-in-powershell).

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
- You can't rename a spam filter policy (the **Set-HostedContentFilterPolicy** cmdlet has no _Name_ parameter). When you rename an anti-spam policy in the Microsoft 365 Defender portal, you're only renaming the spam filter _rule_.

To modify a spam filter policy, use this syntax:

```PowerShell
Set-HostedContentFilterPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-HostedContentFilterPolicy](/powershell/module/exchange/set-hostedcontentfilterpolicy).

> [!NOTE]
> For detailed instructions to specify the [quarantine policy](quarantine-policies.md) to use in a spam filter policy, see [Use PowerShell to specify the quarantine policy in anti-spam policies](quarantine-policies.md#anti-spam-policies-in-powershell).

### Use PowerShell to modify spam filter rules

The only setting that isn't available when you modify a spam filter rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing spam filter rules, see the next section.

Otherwise, no additional settings are available when you modify a spam filter rule in PowerShell. The same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create a spam filter rule](#step-2-use-powershell-to-create-a-spam-filter-rule) section earlier in this article.

To modify a spam filter rule, use this syntax:

```PowerShell
Set-HostedContentFilterRule -Identity "<RuleName>" <Settings>
```

This example renames the existing spam filter rule named `{Fabrikam Spam Filter}`.

```powershell
Set-HostedContentFilterRule -Identity "{Fabrikam Spam Filter}" -Name "Fabrikam Spam Filter"
```

For detailed syntax and parameter information, see [Set-HostedContentFilterRule](/powershell/module/exchange/set-hostedcontentfilterrule).

### Use PowerShell to enable or disable spam filter rules

Enabling or disabling a spam filter rule in PowerShell enables or disables the whole anti-spam policy (the spam filter rule and the assigned spam filter policy). You can't enable or disable the default anti-spam policy (it's always applied to all recipients).

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
> These steps will only work if the email organization that you're sending the GTUBE message from doesn't scan for outbound spam. If it does, you can't send the test message.

Generic Test for Unsolicited Bulk Email (GTUBE) is a text string that you include in a test message to verify your organization's anti-spam settings. A GTUBE message is similar to the European Institute for Computer Antivirus Research (EICAR) text file for testing malware settings.

Include the following GTUBE text in an email message on a single line, without any spaces or line breaks:

```text
XJS*C4JDBQADN1.NSBN3*2IDNEN*GTUBE-STANDARD-ANTI-UBE-TEST-EMAIL*C.34X
```
