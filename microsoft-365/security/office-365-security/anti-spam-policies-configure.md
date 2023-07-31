---
title: Configure spam filter policies
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
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
ms.date: 7/27/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure anti-spam policies in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound email messages are automatically protected against spam by EOP. EOP uses anti-spam policies (also known as spam filter policies or content filter policies) as part of your organization's overall defense against spam. For more information, see [Anti-spam protection](anti-spam-protection-about.md).

The default anti-spam policy automatically applies to all recipients. For greater granularity, you can also create custom anti-spam policies that apply to specific users, groups, or domains in your organization.

You can configure anti-spam policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Add, modify, and delete policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to policies_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for anti-spam policies, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

- You can't completely turn off spam filtering, but you can use Exchange mail flow rules (also known as transport rules) to bypass most spam filtering on incoming messages (for example, if you route email through a third-party protection service or device before delivery to Microsoft 365). For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).
  - High confidence phishing messages are still filtered. Other features in EOP aren't affected (for example, messages are always scanned for malware).
  - If you need to bypass spam filtering for SecOps mailboxes or phishing simulations, don't use mail flow rules. For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).

- If you disagree with the verdict from anti-spam filtering, you can report the message to Microsoft as a false positive. For instructions, see [Report good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft).

## Use the Microsoft 365 Defender portal to create anti-spam policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** **Create policy** and then select **Inbound** from the dropdown list to start the new anti-spam policy wizard.

3. On the **Name your policy** page, configure these settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished on the **Name your policy** page, select **Next**.

4. On the **Users, groups, and domains** page, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, mail contacts or mail enabled public folders.
   - **Groups**:
     - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
     - The specified Microsoft 365 Groups.
   - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and then select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users or groups, enter an asterisk (\*) by itself to see all available values.

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

   When you're finished on the **Users, groups, and domains** page, select **Next**.

5. On the **Bulk email threshold & spam properties** page, configure the following settings:

   - **Bulk email threshold**: Specifies the bulk complaint level (BCL) of a message that triggers the specified action for the **Bulk compliant level (BCL) met or exceeded** spam filtering verdict that you configure on the next page. A higher value indicates the message is less desirable (more likely to resemble spam). The default value is 7. For more information, see [Bulk complaint level (BCL) in EOP](anti-spam-bulk-complaint-level-bcl-about.md) and [What's the difference between junk email and bulk email?](anti-spam-spam-vs-bulk-about.md).

     By default, the PowerShell only setting _MarkAsSpamBulkMail_ is `On` in anti-spam policies. This setting dramatically affects the results of a **Bulk compliant level (BCL) met or exceeded** filtering verdict:

     - **_MarkAsSpamBulkMail_ is On**: A BCL that's greater than or equal to the threshold is converted to an SCL 6 that corresponds to a filtering verdict of **Spam**, and the action for the **Bulk compliant level (BCL) met or exceeded** filtering verdict is taken on the message.
     - **_MarkAsSpamBulkMail_ is Off**: The message is stamped with the BCL, but _no action_ is taken for a **Bulk compliant level (BCL) met or exceeded** filtering verdict. In effect, the BCL threshold and **Bulk compliant level (BCL) met or exceeded** filtering verdict action are irrelevant.

   - **Spam properties** section:

    - **Increase spam score**, **Mark as spam**<sup>\*</sup> and **Test mode**: Advanced Spam Filter (ASF) settings that are turned off by default.

       For details about these settings, see [Advanced Spam Filter settings in EOP](anti-spam-policies-asf-settings-about.md).

        <sup>\*</sup> The **Contains specific languages** and **from these countries** settings aren't part of ASF.

     - **Contains specific languages**: Select **On** or **Off** from the dropdown list. If you turn it on, a box appears. Start typing the name of a language in the box. A filtered list of supported languages appears. When you find the language that you're looking for, select it. Repeat this step as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

     - **From these countries***: Select **On** or **Off** from the dropdown list. If you turn it on, a box appears. Start typing the name of a country/region in the box. A filtered list of supported countries/regions appears. When you find the country/region that you're looking for, select it. Repeat this step as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

     When you're finished on the **Bulk email threshold & spam properties** page, select **Next**.

6. On the **Actions** page, configure the following settings:

   - **Message actions** section: Review or select the action to take on messages based on the spam filtering verdicts:
     - **Spam**
     - **High confidence spam**
     - **Phishing**
     - **High confidence phishing**
     - **Bulk compliant level (BCL) met or exceeded**

     The available actions for spam filtering verdicts are described in the following table.

     - A check mark ( ✔ ) indicates the action is available (not all actions are available for all verdicts).
     - An asterisk ( <sup>\*</sup> ) after the check mark indicates the default action for the spam filtering verdict.

     |Action|Spam|High<br>confidence<br>spam|Phishing|High<br>confidence<br>phishing|Bulk|
     |---|:---:|:---:|:---:|:---:|:---:|
     |**Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder.¹|✔<sup>\*</sup>|✔<sup>\*</sup>|✔|²|✔<sup>\*</sup>|
     |**Add X-header**: Adds an X-header to the message header and delivers the message to the mailbox. <br/><br/> You enter the X-header field name (not the value) later in the **Add this X-header text** box. <br/><br/> For **Spam** and **High confidence spam** verdicts, the message is moved to the Junk Email folder.¹ ³|✔|✔|✔||✔|
     |**Prepend subject line with text**: Adds text to the beginning of the message's subject line. The message is delivered to the mailbox and moved to the Junk email folder.¹ ³ <br/><br/> You enter the text later in the **Prefix subject line with this text** box.|✔|✔|✔||✔|
     |**Redirect message to email address**: Sends the message to other recipients instead of the intended recipients. <br/><br/> You specify the recipients later in the **Redirect to this email address** box.|✔|✔|✔|✔|✔|
     |**Delete message**: Silently deletes the entire message, including all attachments.|✔|✔|✔||✔|
     |**Quarantine message**: Sends the message to quarantine instead of the intended recipients. <br/><br/> You select or use the default _quarantine policy_ for the spam filtering verdict in the **Select quarantine policy** box that appears.⁴ Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy). <br/><br/> You specify how long the messages are held in quarantine in the **Retain spam in quarantine for this many days** box.|✔|✔|✔<sup>\*</sup>|✔<sup>\*</sup> ⁵|✔|
     |**No action**|||||✔|

     ¹ EOP uses its own mail flow delivery agent to route messages to the Junk Email folder instead of using the junk email rule in the mailbox. The _Enabled_ parameter on the **Set-MailboxJunkEmailConfiguration** cmdlet no longer has any effect on mail flow. For more information, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).

     In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange to translate the EOP spam filtering verdict. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).

     ² For **High confidence phishing**, the **Move message to Junk Email folder** action is effectively deprecated. Although you might be able to select the **Move message to Junk Email folder** action, high confidence phishing messages are always quarantined (equivalent to selecting **Quarantine message**).

     ³ You can this use value as a condition in mail flow rules to filter or route the message.

     ⁴ If the spam filtering verdict quarantines messages by default (**Quarantine message** is already selected when you get to the page), the default quarantine policy name is shown in the **Select quarantine policy** box. If you _change_ the action of a spam filtering verdict to **Quarantine message**, the **Select quarantine policy** box is blank by default. A blank value means the default quarantine policy for that verdict is used. When you later view or edit the anti-spam policy settings, the quarantine policy name is shown. For more information about the quarantine policies that are used by default for spam filter verdicts, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

     ⁵ Users can't release their own messages that were quarantined as high confidence phishing, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined high-confidence phishing messages.
     
  - **Intra-Organizational messages to take action on**: Controls whether spam filtering and the corresponding verdict actions are applied to internal messages (messages sent between users within the organization). The action that's configured in the policy for the specified spam filter verdicts is taken on messages sent between internal users. The available values are:
    - **Default**: This is the default value. Currently, this value is the same as selecting **None**. The behavior for the value **Default** will eventually change to apply the action for high confidence phishing detections in the policy as if you selected **High confidence phishing messages**. Check the Message Center for announcements to changes in this setting.
    - **None**
    - **High confidence phishing messages**
    - **Phishing and high confidence phishing messages**
    - **All phishing and high confidence spam messages**
    - **All phishing and spam messages**
   
   - **Retain spam in quarantine for this many days**: Specifies how long to keep the message in quarantine if you selected **Quarantine message** as the action for a spam filtering verdict. After the time period expires, the message is deleted, and isn't recoverable. A valid value is from 1 to 30 days.

     > [!NOTE]
     > The default value is 15 days in the default anti-spam policy and in new anti-spam policies that you create in PowerShell. The default value is 30 days in new anti-spam policies that you create in the Microsoft 365 Defender portal.
     >
     > This setting also controls how long messages that were quarantined by **anti-phishing** policies are retained. For more information, see [Quarantined messages in EOP and Defender for Office 365](quarantine-about.md).

   - **Add this X-header text**: This box is required and available only if you selected **Add X-header** as the action for a spam filtering verdict. The value you specify is the header field _name_ that's added to the message header. The header field _value_ is always `This message appears to be spam`.

     The maximum length is 255 characters, and the value can't contain spaces or colons (:).

     For example, if you enter the value `X-This-is-my-custom-header`, the X-header that's added to the message is `X-This-is-my-custom-header: This message appears to be spam.`

     If you enter a value that contains spaces or colons (:), the value you enter is ignored, and the default X-header is added to the message (`X-This-Is-Spam: This message appears to be spam.`).

   - **Prepend subject line with this text**: This box is required and available only if you selected **Prepend subject line with text** as the action for a spam filtering verdict. Enter the text to add to the beginning of the message's subject line.

   - **Redirect to this email address**: This box is required and available only if you selected the **Redirect message to email address** as the action for a spam filtering verdict. Enter the email address where you want to deliver the message. You can enter multiple values separated by semicolons (;).

   - **Safety Tips** section: By default, **Enable Safety Tips**: is selected, but you can disable Safety Tips by clearing the check box.

   - **Zero-hour auto purge (ZAP)** section:

     - **Enable zero-hour auto purge (ZAP)**: ZAP detects and takes action on messages that have already been delivered to Exchange Online mailboxes. For more information, see [Zero-hour auto purge - protection against spam and malware](zero-hour-auto-purge.md).

       ZAP is turned on by default. When ZAP is turned on, the following settings are available:

       - **Enable ZAP for phishing messages**: By default, ZAP is enabled for phishing detections, but you can disable it by clearing the check box.
       - **Enable ZAP for spam messages**: By default, ZAP is enabled for spam detections, but you can disable it by clearing the check box.

   > [!NOTE]
   > End-user spam notifications have been replaced by _quarantine notifications_ in quarantine policies. Quarantine notifications contain information about quarantined messages for all supported protection features (not just anti-spam policy and anti-phishing policy verdicts). For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

   When you're finished on the **Actions** page, select **Next**.

7. On the **Allow & block list** page, you can configure message senders by email address or email domain who are allowed to skip spam filtering.

   In the **Allowed** section, you can configure allowed senders and allowed domains. In the **Blocked** section, you can add blocked senders and blocked domains.

   > [!IMPORTANT]
   >
   > Think very carefully before you add domains to the allowed domains list. For more information, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md)
   >
   > As of September 2022, if an allowed sender, domain, or subdomain is in an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization, that sender, domain, or subdomain must pass [email authentication](email-authentication-about.md) checks in order to skip anti-spam filtering.
   >
   > Never add common domains (for example, microsoft.com or office.com) to the allowed domains list. If these domains are allowed to bypass spam filtering, attackers can easily send spoofed messages from these common domains into your organization.
   >
   > Manually blocking domains by adding the domains to the blocked domains list isn't dangerous, but it can increase your administrative workload. For more information, see [Create block sender lists in EOP](create-block-sender-lists-in-office-365.md).
   >
   > There are times when our filters miss a message, you don't agree with the filtering verdict, or it takes time for our systems to catch up to it. In these cases, the allow list and block list are available to override the current filtering verdicts. But, you should use these lists sparingly and temporarily: longs lists can become unmanageable, and our filtering stack should be doing what it's supposed to be doing. If you're going to keep an allowed domain for an extended period of time, you should tell the sender to verify that their domain is authenticated and set to DMARC reject appropriately.

   The steps to add entries to any of the lists are the same:

   1. Select the link for the list that you want to configure:
      - **Allowed** \> **Senders**: Select **Manage (nn) sender(s)**.
      - **Allowed** \> **Domains**: Select **Allow domains**.
      - **Blocked** \> **Senders**: Select **Manage (nn) sender(s)**.
      - **Blocked** \> **Domains**: Select **Block domains**.

   2. In the flyout that opens, do the following steps:
      1. Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add senders** or **Add domains**.
      2. In the **Add senders** or **Add domains** flyout that opens, enter the sender's email address in the **Sender** box or the domain in the **Domain** box. As you're typing, the value appears below the box. When you're finished typing the value, select the value below the box.
      3. Repeat the previous step as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

      When you're finished in the **Add senders** or **Add domains** flyout, select **Add senders** or **Add domains**.

      Back on the first flyout, the senders or domains that you added are listed.

      To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

       Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the flyout.

       To add entries, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add senders** or **Add domains** and repeat the previous steps.

       To remove entries, do either of the following steps:

       - Select one or more entries by selecting the round check box that appears in the blank area next to the sender or domain value.
       - Select all entries at once by selecting the round check box that appears in the blank area next to the column header.

       When you're finished on the flyout, select **Done** to return to the **Allow & block list** page.

   When you're finished on the **Allow & block list** page, select **Next**.

8. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review** page, select **Create**.

9. On the **New anti-spam policy created** page, you can select the links to view the policy, view anti-spam policies, and learn more about anti-spam policies.

   When you're finished on the **New anti-spam policy created** page, select **Done**.

   Back on the **Anti-spam policies** page, the new policy is listed.

## Use the Microsoft 365 Defender portal to view anti-spam policy details

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

On the **Anti-spam policies** page, the following properties are displayed in the list of policies:

- **Name**
- **Status**: Values are:
  - **Always on** for the default anti-spam policy (for example, **Anti-spam inbound policy (Default)**).
  - **On** or **Off** for other anti-spam policies.
- **Priority**: For more information, see the [Set the priority of custom anti-spam policies](#use-the-microsoft-365-defender-portal-to-set-the-priority-of-custom-anti-spam-policies) section.
- **Type**: One of the following values for anti-spam policies:
  - **Protection templates** for anti-spam policies that are associated with the Standard and Strict [preset security policies](preset-security-policies.md).
  - **Custom anti-spam policy**
  - Blank for the default anti-spam policy (for example, **Anti-spam inbound policy (Default)**).

To change the list of policies from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific policies.

Select an anti-spam policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

> [!TIP]
> To see details about other anti-spam policies without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

## Use the Microsoft 365 Defender portal to take action on anti-spam policies

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

On the **Anti-spam policies** page, select the anti-spam policy from the list by clicking anywhere in the row other than the check box next to the name. Some or all following actions are available in the details flyout that opens:

- Modify policy settings by clicking **Edit** in each section (custom policies or the default policy)
- :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** or :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** (custom policies only)
- :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** or :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** (custom policies only)
- :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** (custom policies only)

:::image type="content" source="../../media/anti-phishing-policies-details-flyout.png" alt-text="The details flyout of a custom anti-spam policy." lightbox="../../media/anti-phishing-policies-details-flyout.png":::

The actions are described in the following subsections.

### Use the Microsoft 365 Defender portal to modify anti-spam policies

After you select the default anti-spam policy or a custom policy by clicking anywhere in the row other than the check box next to the name, the policy settings are shown in the details flyout that opens. Select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [Create anti-spam policies](#use-the-microsoft-365-defender-portal-to-create-anti-spam-policies) section earlier in this article.

For the default policy, you can't modify the name of the policy, and there are no recipient filters to configure (the policy applies to all recipients). But, you can modify all other settings in the policy.

For the anti-spam policies named **Standard Preset Security Policy** and **Strict Preset Security Policy** that are associated with [preset security policies](preset-security-policies.md), you can't modify the policy settings in the details flyout. Instead, you select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **View preset security policies** in the details flyout to go to the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies> to modify the preset security policies.

### Use the Microsoft 365 Defender portal to enable or disable anti-spam policies

You can't disable the default anti-spam policy (it's always enabled).

You can't enable or disable the anti-spam policies that are associated with Standard and Strict preset security policies. You enable or disable the Standard or Strict preset security policies on the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies>.

After you select an enabled custom anti-spam policy (the **Status** value is **On**) by clicking anywhere in the row other than the check box next to the name, select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** at the top of the policy details flyout.

After you select a disabled custom anti-spam policy (the **Status** value is **Off**) by clicking anywhere in the row other than the check box next to the name, select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** at the top of the policy details flyout.

When you're finished in the policy details flyout, select **Close**.

On the **Anti-spam policies** page, the **Status** value of the policy is now **On** or **Off**.

### Use the Microsoft 365 Defender portal to set the priority of custom anti-spam policies

Anti-spam policies are processed in the order that they're displayed on the **Anti-spam policies** page:

- The anti-spam policy named **Strict Preset Security Policy** that's associated with the Strict preset security policy is always applied first (if the Strict preset security policy is [enabled](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users)).
- The anti-spam policy named **Standard Preset Security Policy** that's associated with the Standard preset security policy is always applied next (if the Standard preset security policy is enabled).
- Custom anti-spam policies are applied next in priority order (if they're enabled):
  - A lower priority value indicates a higher priority (0 is the highest).
  - By default, a new anti-spam policy is created with a priority that's lower than the lowest existing custom anti-spam policy (the first is 0, the next is 1, etc.).
  - No two anti-spam policies can have the same priority value.
- The default anti-spam policy always has the priority value **Lowest**, and you can't change it.

Anti-spam protection stops for a recipient after the first policy is applied (the highest priority policy for that recipient). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

After you select the custom anti-spam policy by clicking anywhere in the row other than the check box next to the name, you can increase or decrease the priority of the policy in the details flyout that opens:

- The custom policy with the **Priority** value **0** on the **Anti-spam policies** page has the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** action at the top of the details flyout.
- The custom policy with the lowest priority (highest **Priority** value; for example, **3**) has the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** action at the top of the details flyout.
- If you have three or more policies, the policies between **Priority** 0 and the lowest priority have both the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** and the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** actions at the top of the details flyout.

When you're finished in the policy details flyout, select **Close**.

Back on the **Anti-spam policies** page, the order of the policy in the list matches the updated **Priority** value.

### Use the Microsoft 365 Defender portal to remove custom anti-spam policies

You can't remove the default anti-spam policy or the anti-spam policies named **Standard Preset Security Policy** and **Strict Preset Security Policy** that are associated with [preset security policies](preset-security-policies.md).

After you select the custom anti-spam policy by clicking anywhere in the row other than the check box next to the name, select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** at the top of the flyout, and then select **Yes** in the warning dialog that opens.

On the **Anti-spam policies** page, the deleted policy is no longer listed.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure anti-spam policies

In PowerShell, the basic elements of an anti-spam policy are:

- **The spam filter policy**: Specifies the spam protections to enable or disable, the actions to apply for those protections, and other options.
- **The spam filter rule**: Specifies the priority and recipient filters (who the policy applies to) for the associated spam filter policy.

The difference between these two elements isn't obvious when you manage anti-spam policies in the Microsoft 365 Defender portal:

- When you create a policy in the Defender portal, you're actually creating a spam filter rule and the associated spam filter policy at the same time using the same name for both.
- When you modify a policy in the Defender portal, settings related to the name, priority, enabled or disabled, and recipient filters modify the spam filter rule. All other settings modify the associated spam filter policy.
- When you remove a policy in the Defender portal, the spam filter rule and the associated spam filter policy are removed at the same time.

In Exchange Online PowerShell, the difference between spam filter policies and spam filter rules is apparent. You manage spam filter policies by using the **\*-HostedContentFilterPolicy** cmdlets, and you manage spam filter rules by using the **\*-HostedContentFilterRule** cmdlets.

- In PowerShell, you create the spam filter policy first, then you create the spam filter rule, which identifies the associated policy that the rule applies to.
- In PowerShell, you modify the settings in the spam filter policy and the spam filter rule separately.
- When you remove a spam filter policy from PowerShell, the corresponding spam filter rule isn't automatically removed, and vice versa.

A significant setting that's available only in PowerShell is the _MarkAsSpamBulkMail_ parameter that's `On` by default. The effects of this setting are explained in the [Create anti-spam policies](#use-the-microsoft-365-defender-portal-to-create-anti-spam-policies) section earlier in this article.

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

- Quarantine messages when the spam filtering verdict is spam or high confidence spam, and use the default quarantine policy for the quarantined messages (we aren't using the _SpamQuarantineTag_ or _HighConfidenceSpamQuarantineTag_ parameters).
- BCL 7, 8, or 9 triggers the action for a bulk email spam filtering verdict.

```PowerShell
New-HostedContentFilterPolicy -Name "Contoso Executives" -HighConfidenceSpamAction Quarantine -SpamAction Quarantine -BulkThreshold 6
```

For detailed syntax and parameter information, see [New-HostedContentFilterPolicy](/powershell/module/exchange/new-hostedcontentfilterpolicy).

> [!TIP]
> For detailed instructions to specify the quarantine policy to use in a spam filter policy, see [Use PowerShell to specify the quarantine policy in anti-spam policies](quarantine-policies.md#anti-spam-policies-in-powershell).

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

To return detailed information about a specific spam filter policy, use this syntax:

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

> [!TIP]
> For detailed instructions to specify the quarantine policy to use in a spam filter policy, see [Use PowerShell to specify the quarantine policy in anti-spam policies](quarantine-policies.md#anti-spam-policies-in-powershell).

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
