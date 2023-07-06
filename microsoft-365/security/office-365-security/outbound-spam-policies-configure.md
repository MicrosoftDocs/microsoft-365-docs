---
title: Configure outbound spam policies
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid: a44764e9-a5d2-4c67-8888-e7fb871c17c7
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn how to view, create, modify, and delete outbound spam policies in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure outbound spam policies in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, outbound email messages that are sent through EOP are automatically checked for spam and unusual sending activity.

Outbound spam from a user in your organization typically indicates a compromised account. Suspicious outbound messages are marked as spam (regardless of the spam confidence level or SCL) and are routed through the [high-risk delivery pool](outbound-spam-high-risk-delivery-pool-about.md) to help protect the reputation of the service (that is, to keep Microsoft 365 source email servers off of IP block lists). Admins are automatically notified of suspicious outbound email activity and blocked users via [alert policies](../../compliance/alert-policies.md).

EOP uses outbound spam policies as part of your organization's overall defense against spam. For more information, see [Anti-spam protection](anti-spam-protection-about.md).

The default outbound spam policy automatically applies to all senders. For greater granularity, you can also create custom outbound spam policies that apply to specific users, groups, or domains in your organization.

You can configure outbound spam policies in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Add, modify, and delete policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to policies_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for outbound spam policies, see [EOP outbound spam policy settings](recommended-settings-for-eop-and-office365.md#eop-outbound-spam-policy-settings).

- The default [alert policies](../../compliance/alert-policies.md) named **Email sending limit exceeded**, **Suspicious email sending patterns detected**, and **User restricted from sending email** already send email notifications to members of the **TenantAdmins** (**Global admins**) group about unusual outbound email activity and blocked users due to outbound spam. For more information, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users). We recommend that you use these alert policies instead of the notification options in outbound spam policies.

## Use the Microsoft 365 Defender portal to create outbound spam policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create policy** and then select **Outbound** from the dropdown list to start the new outbound spam policy wizard.

3. On the **Name your policy page**, configure these settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished on the **Name your policy page**, select **Next**.

4. On the **Users, groups, and domains** page, identify the internal senders that the policy applies to (conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts.
   - **Groups**:
     - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
     - The specified Microsoft 365 Groups.
   - **Domains**: All senders in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users or groups, enter an asterisk (\*) by itself to see all available values.

   Multiple values in the same condition use OR logic (for example, _\<sender1\>_ or _\<sender2\>_). Different conditions use AND logic (for example, _\<sender1\>_ and _\<member of group 1\>_).

   - **Exclude these users, groups, and domains**: To add exceptions for the internal senders that the policy applies to, select this option and configure the exceptions. The settings and behavior are exactly like the conditions.

   > [!IMPORTANT]
   > Multiple different types of conditions or exceptions are not additive; they're inclusive. The policy is applied _only_ to those senders that match _all_ of the specified sender filters. For example, you configure a sender filter condition in the policy with the following values:
   >
   > - Users: romain@contoso.com
   > - Groups: Executives
   >
   > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
   >
   > Likewise, if you use the same sender filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

   When you're finished on the **Users, groups, and domains**, select **Next**.

5. On the **Protection settings** page, configure the following settings:
   - **Message limits** sections: The settings in this section configure the limits for outbound email messages from **Exchange Online** mailboxes:
     - **Set an external message limit**: The maximum number of external recipients per hour.
     - **Set an internal message limit**: The maximum number of internal recipients per hour.
     - **Set a daily message limit**: The maximum total number of recipients per day.

     A valid value is 0 to 10000. The default value is 0, which means the service defaults are used. For more information, see [Sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1).

    Enter a value in the box, or use the increase/decrease arrows on the box.

   - **Restriction placed on users who reach the message limit**: Select an action from the dropdown list when any of the limits in the **Protection settings** section are exceeded.

     For all actions, the senders specified in the **User restricted from sending email** alert policy (and in the now redundant **Notify these users and groups if a sender is blocked due to sending outbound spam** setting on this page) receive email notifications.

     - **Restrict the user from sending mail until the following day**: This is the default value. Email notifications are sent, and the user is unable to send any more messages until the following day, based on UTC time. There's no way for the admin to override this block.
       - The alert policy named **User restricted from sending email** notifies admins (via email and on the **Incidents & alerts** \> **View alerts** page).
       - Any recipients specified in the **Notify specific people if a sender is blocked due to sending outbound spam** setting in the policy are also notified.
       - The user is unable to send any more messages until the following day, based on UTC time. There's no way for the admin to override this block.
     - **Restrict the user from sending mail**: Email notifications are sent, the user is added to **Restricted users** <https://security.microsoft.com/restrictedusers> in the Microsoft 365 Defender portal, and the user can't send email until they're removed from **Restricted users** by an admin. After an admin removes the user from the list, the user won't be restricted again for that day. For instructions, see [Remove blocked users from the Restricted entities page](removing-user-from-restricted-users-portal-after-spam.md).
     - **No action, alert only**: Email notifications are sent.

   - **Forwarding rules** section: The setting in this section controls automatic email forwarding by **Exchange Online mailboxes** to external recipients. For more information, see [Control automatic external email forwarding in Microsoft 365](outbound-spam-policies-external-email-forwarding.md).

     Select one of the following actions from the **Automatic forwarding rules** dropdown list:

     - **Automatic - System-controlled**: This is the default value. This value is now the same as **Off**. When this value was originally introduced, it was equivalent to **On**. Over time, thanks to the principles of [secure by default](secure-by-default.md), the effect of this value was eventually changed to **Off** for all customers. For more information, see [this blog post](https://techcommunity.microsoft.com/t5/exchange-team-blog/all-you-need-to-know-about-automatic-email-forwarding-in/ba-p/2074888).
     - **On**: Automatic external email forwarding isn't disabled by the policy.
     - **Off**: All automatic external email forwarding is disabled by the policy.

     > [!NOTE]
     >
     > - Disabling automatic forwarding disables any Inbox rules or [mailbox forwarding](/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding) (also known as _SMTP forwarding_) that redirects messages to external addresses.
     > - Outbound spam policies don't affect the forwarding of messages between internal users.
     > - When automatic forwarding is disabled by an outbound spam policy, non-delivery reports (also known as NDRs or bounce messages) are generated in the following scenarios:
     >   - Messages from external senders for all forwarding methods.
     >   - Messages from internal senders **if** the forwarding method is mailbox forwarding. If the forwarding method is an Inbox rule, an NDR isn't generated for internal senders.

   - **Notifications** section: Use the settings in the section to configure additional recipients who should receive copies and notifications of suspicious outbound email messages:

     - **Send a copy of suspicious outbound that exceed these limits to these users and groups**: This setting adds the specified recipients to the Bcc field of suspicious outbound messages.

       > [!NOTE]
       > This setting works only in the default outbound spam policy. It doesn't work in custom outbound spam policies that you create.

       To enable this setting, select the check box. In the box that appears, click in the box, enter a valid email address, and then press the ENTER key or select the complete value that's displayed below the box.

       Repeat this step as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   - **Notify these users and groups if a sender is blocked due to sending outbound spam**

     > [!IMPORTANT]
     >
     > - This setting is in the process of being deprecated from outbound spam policies.
     >
     > - The default [alert policy](../../compliance/alert-policies.md) named **User restricted from sending email** already sends email notifications to members of the **TenantAdmins** (**Global admins**) group when users are blocked due to exceeding the limits in the **Recipient Limits** section. **We strongly recommend that you use the alert policy rather than this setting in the outbound spam policy to notify admins and other users**. For instructions, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users).

   When you're finished on the **Protection settings** page, select **Next**.

6. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review** page, select **Create**.

7. On the **New anti-spam policy created** page, you can select the links to view the policy, view outbound spam policies, and learn more about outbound spam policies.

   When you're finished on the **New anti-spam policy created** page, select **Done**.

   Back on the **Anti-spam policies** page, the new policy is listed.

## Use the Microsoft 365 Defender portal to view outbound spam policy details

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

On the **Anti-spam policies** page, the following properties are displayed in the list of policies:

- **Name**
- **Status**: Values are:
  - **Always on** for the default outbound spam policy (for example, **Anti-spam outbound policy (Default)**).
  - **On** or **Off** for other outbound spam policies.
- **Priority**: For more information, see the [Set the priority of custom outbound spam policies](#use-the-microsoft-365-defender-portal-to-set-the-priority-of-custom-outbound-spam-policies) section.
- **Type**: One of the following values for outbound spam policies:
  - **Custom outbound spam policy**
  - Blank for the default outbound spam policy (for example, **Anti-spam outbound policy (Default)**).

To change the list of policies from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific policies.

Select an outbound spam policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

> [!TIP]
> To see details about other outbound spam policies without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

## Use the Microsoft 365 Defender portal to take action on outbound spam policies

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-spam** in the **Policies** section. Or, to go directly to the **Anti-spam policies** page, use <https://security.microsoft.com/antispam>.

On the **Anti-spam policies** page, select the outbound spam policy from the list by clicking anywhere in the row other than the check box next to the name. Some or all following actions are available in the details flyout that opens:

- Modify policy settings by clicking **Edit** in each section (custom policies or the default policy)
- :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** or :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** (custom policies only)
- :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** or :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** (custom policies only)
- :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** (custom policies only)

:::image type="content" source="../../media/anti-phishing-policies-details-flyout.png" alt-text="The details flyout of a custom outbound spam policy." lightbox="../../media/anti-phishing-policies-details-flyout.png":::

The actions are described in the following subsections.

### Use the Microsoft 365 Defender portal to modify outbound spam policies

After you select the default outbound spam policy or a custom policy by clicking anywhere in the row other than the check box next to the name, the policy settings are shown in the details flyout that opens. Select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [Create outbound spam policies](#use-the-microsoft-365-defender-portal-to-create-outbound-spam-policies) section earlier in this article.

For the default policy, you can't modify the name of the policy, and there are no sender filters to configure (the policy applies to all senders). But, you can modify all other settings in the policy.

### Use the Microsoft 365 Defender portal to enable or disable custom outbound spam policies

You can't disable the default outbound spam policy (it's always enabled).

After you select an enabled custom outbound spam policy (the **Status** value is **On**) by clicking anywhere in the row other than the check box next to the name, select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** at the top of the policy details flyout.

After you select a disabled custom outbound spam policy (the **Status** value is **Off**) by clicking anywhere in the row other than the check box next to the name, select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** at the top of the policy details flyout.

When you're finished in the policy details flyout, select **Close**.

On the **Anti-spam policies** page, the **Status** value of the policy is now **On** or **Off**.

### Use the Microsoft 365 Defender portal to set the priority of custom outbound spam policies

Outbound spam policies are processed in the order that they're displayed on the **Anti-spam policies** page:

- Custom outbound spam policies are applied in priority order (if they're enabled):
  - A lower priority value indicates a higher priority (0 is the highest).
  - By default, a new outbound spam policy is created with a priority that's lower than the lowest existing custom outbound spam policy (the first is 0, the next is 1, etc.).
  - No two outbound spam policies can have the same priority value.
- The default outbound spam policy always has the priority value **Lowest**, and you can't change it.

Outbound spam protection stops for a sender after the first policy is applied (the highest priority policy for that sender). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

After you select the custom outbound spam policy by clicking anywhere in the row other than the check box next to the name, you can increase or decrease the priority of the policy in the details flyout that opens:

- The custom policy with the **Priority** value **0** on the **Anti-spam policies** page has the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** action at the top of the details flyout.
- The custom policy with the lowest priority (highest **Priority** value; for example, **3**) has the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** action at the top of the details flyout.
- If you have three or more policies, the policies between **Priority** 0 and the lowest priority have both the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** and the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** actions at the top of the details flyout.

When you're finished in the policy details flyout, select **Close**.

Back on the **Anti-spam policies** page, the order of the policy in the list matches the updated **Priority** value.

### Use the Microsoft 365 Defender portal to remove custom outbound spam policies

You can't remove the default outbound spam policy.

After you select the custom outbound spam policy by clicking anywhere in the row other than the check box next to the name, select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** at the top of the flyout, and then select **Yes** in the warning dialog that opens.

On the **Anti-spam policies** page, the deleted policy is no longer listed.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure outbound spam policies

In PowerShell, the basic elements of an outbound spam policy are:

- **The outbound spam filter policy**: Specifies the actions for outbound spam filtering verdicts and the notification options.
- **The outbound spam filter rule**: Specifies the priority and sender filters (who the policy applies to) for an outbound spam filter policy.

The difference between these two elements isn't obvious when you manage outbound spam policies in the Microsoft 365 Defender portal:

- When you create a policy in the Defender portal, you're actually creating an outbound spam filter rule and the associated outbound spam filter policy at the same time using the same name for both.
- When you modify a policy in the Defender portal, settings related to the name, priority, enabled or disabled, and sender filters modify the outbound spam filter rule. All other settings modify the associated outbound spam filter policy.
- When you remove a policy from the Defender portal, the outbound spam filter rule and the associated outbound spam filter policy are removed at the same time.

In PowerShell, the difference between outbound spam filter policies and outbound spam filter rules is apparent. You manage spam filter policies by using the **\*-HostedOutboundSpamFilterPolicy** cmdlets, and you manage spam filter rules by using the **\*-HostedOutboundSpamFilterRule** cmdlets.

- In PowerShell, you create the outbound spam filter policy first, then you create the outbound spam filter rule, which identifies the associated policy that the rule applies to.
- In PowerShell, you modify the settings in the outbound spam filter policy and the outbound spam filter rule separately.
- When you remove an outbound spam filter policy from PowerShell, the corresponding outbound spam filter rule isn't automatically removed, and vice versa.

### Use PowerShell to create outbound spam policies

Creating an outbound spam policy in PowerShell is a two-step process:

1. Create the outbound spam filter policy.
2. Create the outbound spam filter rule that specifies the outbound spam filter policy that the rule applies to.

   **Notes**:

   - You can create a new outbound spam filter rule and assign an existing, unassociated outbound spam filter policy to it. An outbound spam filter rule can't be associated with more than one outbound spam filter policy.
   - You can configure the following settings on new outbound spam filter policies in PowerShell that aren't available in the Microsoft 365 Defender portal until after you create the policy:
     - Create the new policy as disabled (_Enabled_ `$false` on the **New-HostedOutboundSpamFilterRule** cmdlet).
     - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-HostedOutboundSpamFilterRule** cmdlet).
   - A new outbound spam filter policy that you create in PowerShell isn't visible in the Microsoft 365 Defender portal until you assign the policy to an outbound spam filter rule.

#### Step 1: Use PowerShell to create an outbound spam filter policy

To create an outbound spam filter policy, use this syntax:

```PowerShell
New-HostedOutboundSpamFilterPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] <Additional Settings>
```

This example creates a new outbound spam filter policy named Contoso Executives with the following settings:

- The recipient rate limits are restricted to smaller values that the defaults. For more information, see [Sending limits across Microsoft 365 options](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-across-office-365-options).

- After one of the limits is reached, the user is prevented from sending messages.

```PowerShell
New-HostedOutboundSpamFilterPolicy -Name "Contoso Executives" -RecipientLimitExternalPerHour 400 -RecipientLimitInternalPerHour 800 -RecipientLimitPerDay 800 -ActionWhenThresholdReached BlockUser
```

For detailed syntax and parameter information, see [New-HostedOutboundSpamFilterPolicy](/powershell/module/exchange/new-hostedoutboundspamfilterpolicy).

#### Step 2: Use PowerShell to create an outbound spam filter rule

To create an outbound spam filter rule, use this syntax:

```PowerShell
New-HostedOutboundSpamFilterRule -Name "<RuleName>" -HostedOutboundSpamFilterPolicy "<PolicyName>" <Sender filters> [<Sender filter exceptions>] [-Comments "<OptionalComments>"]
```

This example creates a new outbound spam filter rule named Contoso Executives with these settings:

- The outbound spam filter policy named Contoso Executives is associated with the rule.
- The rule applies to members of the group named Contoso Executives Group.

```PowerShell
New-HostedOutboundSpamFilterRule -Name "Contoso Executives" -HostedOutboundSpamFilterPolicy "Contoso Executives" -FromMemberOf "Contoso Executives Group"
```

For detailed syntax and parameter information, see [New-HostedOutboundSpamFilterRule](/powershell/module/exchange/new-hostedoutboundspamfilterrule).

### Use PowerShell to view outbound spam filter policies

To return a summary list of all outbound spam filter policies, run this command:

```PowerShell
Get-HostedOutboundSpamFilterPolicy
```

To return detailed information about a specific outbound spam filter policy, use this syntax:

```PowerShell
Get-HostedOutboundSpamFilterPolicy -Identity "<PolicyName>" | Format-List [<Specific properties to view>]
```

This example returns all the property values for the outbound spam filter policy named Executives.

```PowerShell
Get-HostedOutboundSpamFilterPolicy -Identity "Executives" | Format-List
```

For detailed syntax and parameter information, see [Get-HostedOutboundSpamFilterPolicy](/powershell/module/exchange/get-hostedoutboundspamfilterpolicy).

### Use PowerShell to view outbound spam filter rules

To view existing outbound spam filter rules, use the following syntax:

```PowerShell
Get-HostedOutboundSpamFilterRule [-Identity "<RuleIdentity>"] [-State <Enabled | Disabled>]
```

To return a summary list of all outbound spam filter rules, run this command:

```PowerShell
Get-HostedOutboundSpamFilterRule
```

To filter the list by enabled or disabled rules, run the following commands:

```PowerShell
Get-HostedOutboundSpamFilterRule -State Disabled
```

```PowerShell
Get-HostedOutboundSpamFilterRule -State Enabled
```

To return detailed information about a specific outbound spam filter rule, use this syntax:

```PowerShell
Get-HostedOutboundSpamFilterRule -Identity "<RuleName>" | Format-List [<Specific properties to view>]
```

This example returns all the property values for the outbound spam filter rule named Contoso Executives.

```PowerShell
Get-HostedOutboundSpamFilterRule -Identity "Contoso Executives" | Format-List
```

For detailed syntax and parameter information, see [Get-HostedOutboundSpamFilterRule](/powershell/module/exchange/get-hostedoutboundspamfilterrule).

### Use PowerShell to modify outbound spam filter policies

The same settings are available when you modify an outbound spam filter policy in PowerShell as when you create the policy as described in the [Step 1: Use PowerShell to create an outbound spam filter policy](#step-1-use-powershell-to-create-an-outbound-spam-filter-policy) section earlier in this article.

> [!NOTE]
> You can't rename an outbound spam filter policy (the **Set-HostedOutboundSpamFilterPolicy** cmdlet has no _Name_ parameter). When you rename an outbound spam policy in the Microsoft 365 Defender portal, you're only renaming the outbound spam filter _rule_.

To modify an outbound spam filter policy, use this syntax:

```PowerShell
Set-HostedOutboundSpamFilterPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-HostedOutboundSpamFilterPolicy](/powershell/module/exchange/set-hostedoutboundspamfilterpolicy).

### Use PowerShell to modify outbound spam filter rules

The only setting that isn't available when you modify an outbound spam filter rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing outbound spam filter rules, see the next section.

Otherwise, no additional settings are available when you modify an outbound spam filter rule in PowerShell. The same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create an outbound spam filter rule](#step-2-use-powershell-to-create-an-outbound-spam-filter-rule) section earlier in this article.

To modify an outbound spam filter rule, use this syntax:

```PowerShell
Set-HostedOutboundSpamFilterRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-HostedOutboundSpamFilterRule](/powershell/module/exchange/set-hostedoutboundspamfilterrule).

### Use PowerShell to enable or disable outbound spam filter rules

Enabling or disabling an outbound spam filter rule in PowerShell enables or disables the whole outbound spam policy (the outbound spam filter rule and the assigned outbound spam filter policy). You can't enable or disable the default outbound spam policy (it's always applied to all senders).

To enable or disable an outbound spam filter rule in PowerShell, use this syntax:

```PowerShell
<Enable-HostedOutboundSpamFilterRule | Disable-HostedOutboundSpamFilterRule> -Identity "<RuleName>"
```

This example disables the outbound spam filter rule named Marketing Department.

```PowerShell
Disable-HostedOutboundSpamFilterRule -Identity "Marketing Department"
```

This example enables same rule.

```PowerShell
Enable-HostedOutboundSpamFilterRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Enable-HostedOutboundSpamFilterRule](/powershell/module/exchange/enable-hostedoutboundspamfilterrule) and [Disable-HostedOutboundSpamFilterRule](/powershell/module/exchange/disable-hostedoutboundspamfilterrule).

### Use PowerShell to set the priority of outbound spam filter rules

The highest priority value you can set on a rule is 0. The lowest value you can set depends on the number of rules. For example, if you have five rules, you can use the priority values 0 through 4. Changing the priority of an existing rule can have a cascading effect on other rules. For example, if you have five custom rules (priorities 0 through 4), and you change the priority of a rule to 2, the existing rule with priority 2 is changed to priority 3, and the rule with priority 3 is changed to priority 4.

To set the priority of an outbound spam filter rule in PowerShell, use the following syntax:

```PowerShell
Set-HostedOutboundSpamFilterRule -Identity "<RuleName>" -Priority <Number>
```

This example sets the priority of the rule named Marketing Department to 2. All existing rules that have a priority less than or equal to 2 are decreased by 1 (their priority numbers are increased by 1).

```PowerShell
Set-HostedOutboundSpamFilterRule -Identity "Marketing Department" -Priority 2
```

**Notes**:

- To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-HostedOutboundSpamFilterRule** cmdlet instead.
- The outbound default spam filter policy doesn't have a corresponding spam filter rule, and it always has the unmodifiable priority value **Lowest**.

### Use PowerShell to remove outbound spam filter policies

When you use PowerShell to remove an outbound spam filter policy, the corresponding outbound spam filter rule isn't removed.

To remove an outbound spam filter policy in PowerShell, use this syntax:

```PowerShell
Remove-HostedOutboundSpamFilterPolicy -Identity "<PolicyName>"
```

This example removes the outbound spam filter policy named Marketing Department.

```PowerShell
Remove-HostedOutboundSpamFilterPolicy -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-HostedOutboundSpamFilterPolicy](/powershell/module/exchange/remove-hostedoutboundspamfilterpolicy).

### Use PowerShell to remove outbound spam filter rules

When you use PowerShell to remove an outbound spam filter rule, the corresponding outbound spam filter policy isn't removed.

To remove an outbound spam filter rule in PowerShell, use this syntax:

```PowerShell
Remove-HostedOutboundSpamFilterRule -Identity "<PolicyName>"
```

This example removes the outbound spam filter rule named Marketing Department.

```PowerShell
Remove-HostedOutboundSpamFilterRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-HostedOutboundSpamFilterRule](/powershell/module/exchange/remove-hostedoutboundspamfilterrule).

## For more information

[Remove blocked users from the Restricted entities page](removing-user-from-restricted-users-portal-after-spam.md)

[High-risk delivery pool for outbound messages](outbound-spam-high-risk-delivery-pool-about.md)

[Anti-spam protection FAQ](anti-spam-protection-faq.yml)

[Auto forwarded messages report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report)
