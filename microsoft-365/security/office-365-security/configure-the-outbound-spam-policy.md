---
title: Configure outbound spam filtering
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: a44764e9-a5d2-4c67-8888-e7fb871c17c7
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn how to view, create, modify, and delete outbound spam policies in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# Configure outbound spam filtering in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, outbound email messages that are sent through EOP are automatically checked for spam and unusual sending activity.

Outbound spam from a user in your organization typically indicates a compromised account. Suspicious outbound messages are marked as spam (regardless of the spam confidence level or SCL) and are routed through the [high-risk delivery pool](high-risk-delivery-pool-for-outbound-messages.md) to help protect the reputation of the service (that is, keep Microsoft 365 source email servers off of IP block lists). Admins are automatically notified of suspicious outbound email activity and blocked users via [alert policies](../../compliance/alert-policies.md).

EOP uses outbound spam policies as part of your organization's overall defense against spam. For more information, see [Anti-spam protection](anti-spam-protection.md).

Admins can view, edit, and configure (but not delete) the default outbound spam policy. For greater granularity, you can also create custom outbound spam policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure outbound spam policies in the Security & Compliance Center or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

The basic elements of an outbound spam policy in EOP are:

- **The outbound spam filter policy**: Specifies the actions for outbound spam filtering verdicts and the notification options.
- **The outbound spam filter rule**: Specifies the priority and recipient filters (who the policy applies to) for a outbound spam filter policy.

The difference between these two elements isn't obvious when you manage outbound spam polices in the Security & Compliance Center:

- When you create a policy, you're actually creating a outbound spam filter rule and the associated outbound spam filter policy at the same time using the same name for both.
- When you modify a policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the outbound spam filter rule. All other settings modify the associated outbound spam filter policy.
- When you remove a policy, the outbound spam filter rule and the associated outbound spam filter policy are removed.

In Exchange Online PowerShell or standalone EOP PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell or standalone EOP PowerShell to configure outbound spam policies](#use-exchange-online-powershell-or-standalone-eop-powershell-to-configure-outbound-spam-policies) section later in this article.

Every organization has a built-in outbound spam policy named Default that has these properties:

- The policy is applied to all recipients in the organization, even though there's no outbound spam filter rule (recipient filters) associated with the policy.
- The policy has the custom priority value **Lowest** that you can't modify (the policy is always applied last). Any custom policies that you create always have a higher priority than the policy named Default.
- The policy is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.

To increase the effectiveness of outbound spam filtering, you can create custom outbound spam policies with stricter settings that are applied to specific users or groups of users.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Anti-spam settings** page, use <https://protection.office.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To add, modify, and delete outbound spam policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to outbound spam policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for outbound spam policies, see [EOP outbound spam filter policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-outbound-spam-policy-settings).

- The default [alert policies](../../compliance/alert-policies.md) named **Email sending limit exceeded**, **Suspicious email sending patterns detected**, and **User restricted from sending email** already send email notifications to members of the **TenantAdmins** (**Global admins**) group about unusual outbound email activity and blocked users due to outbound spam. For more information, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users). We recommend that you use these alert policies instead of the the notification options in outbound spam policies.

## Use the Security & Compliance Center to create outbound spam policies

Creating a custom outbound spam policy in the Security & Compliance Center creates the spam filter rule and the associated spam filter policy at the same time using the same name for both.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click **Create an outbound policy**.

3. In the **Outbound spam filter policy** fly out that opens, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

4. (Optional) Expand the **Notifications** section to configure additional users who should receive copies and notifications of suspicious outbound email messages:

   - **Send a copy of suspicious outbound email messages to specific people**: This setting adds the specified users as Bcc recipients to the suspicious outbound messages.

     > [!NOTE]
     > This setting only works in the default outbound spam policy. It doesn't work in custom outbound spam policies that you create.

     To enable this setting:

     1. Select the check box to enable the setting.

     1. Click **Add people**. In the **Add or remove recipients** flyout that appears:

     1. Enter the sender's email address. You can specify multiple email addresses separated by semicolons (;) or one recipient per line.

     1. Click ![Add icon](../../media/c2dd8b3a-5a22-412c-a7fa-143f5b2b5612.png) to add the recipients.

        Repeat these steps as many times as necessary.

        The recipients you added appear in the **Recipient list** section on the flyout. To delete a recipient, click ![Remove button](../../media/scc-remove-icon.png).

     1. When you're finished, click **Save**.

        To disable this setting, clear the check box.

   - **Notify specific people if a sender is blocked due to sending outbound spam**:

     > [!IMPORTANT]
     >
     > - This setting is in the process of being deprecated from outbound spam policies.
     >
     > - The default [alert policy](../../compliance/alert-policies.md) named **User restricted from sending email** already sends email notifications to members of the **TenantAdmins** (**Global admins**) group when users are blocked due to exceeding the limits in the **Recipient Limits** section. **We strongly recommend that you use the alert policy rather than this setting in the outbound spam policy to notify admins and other users**. For instructions, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users).

5. (Optional) Expand the **Recipient Limits** section to configure the limits and actions for suspicious outbound email messages:

   > [!NOTE]
   > These settings are only applicable to cloud-based mailboxes.

   - **Maximum number of recipients per user**

     A valid value is 0 to 10000. The default value is 0, which means the service defaults are used. For more information, see [Sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1).

     - **External hourly limit**: The maximum number of external recipients per hour.

     - **Internal hourly limit**: The maximum number of internal recipients per hour.

     - **Daily limit**: The maximum total number of recipients per day.

   - **Action when a user exceeds the limits above**: Configure the action to take when any one of the **Recipient Limits** are exceeded. For all actions, the recipients specified in the **User restricted from sending email** alert policy (and in the now redundant **Notify specific people if a sender is blocked due to sending outbound spam** setting in the outbound spam policy receive email notifications.

     - **Restrict the user from sending mail till the following day**: This is the default value. Email notifications are sent, and the user will be unable to send any more messages until the following day, based on UTC time. There is no way for the admin to override this block.

       - The activity alert named **User restricted from sending email** notifies admins (via email and on the **View alerts** page).

       - Any recipients specified in the **Notify specific people if a sender is blocked due to sending outbound spam** setting in the policy are also notified.

       - The user will be unable to send any more messages until the following day, based on UTC time. There is no way for the admin to override this block.

     - **Restrict the user from sending mail**: Email notifications are sent, the user is added to the **[Restricted Users]<https://sip.protection.office.com/restrictedusers>** portal in the Security & Compliance Center, and the user can't send email until they're removed from the **Restricted Users** portal by an admin. After an admin removes the user from the list, the user won't be restricted again for that day. For instructions, see [Removing a user from the Restricted Users portal after sending spam email](removing-user-from-restricted-users-portal-after-spam.md).

     - **No action, alert only**: Email notifications are sent.

6. (Optional) Expand **Automatic forwarding** section to control automatic email forwarding by users to external senders. For more information, see [Control automatic external email forwarding in Microsoft 365](external-email-forwarding.md).

   > [!NOTE]
   >
   > - Before September 2020, these settings are available but not enforced.
   >
   > - These settings apply only to cloud-based mailboxes.
   >
   > - When automatic forwarding is disabled, the recipient will receive a non-delivery report (also known as an NDR or bounce message) if external senders send email to a mailbox that has forwarding in place. If the message is sent by an internal sender **and** the forwarding method is [mailbox forwarding](/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding) (also known as _SMTP forwarding_), the internal sender will get the NDR. The internal sender does not get an NDR if the forwarding occurred due to an inbox rule.

   The available values are:

   - **Automatic - System-controlled**: Allows outbound spam filtering to control automatic external email forwarding. This is the default value.
   - **On**: Automatic external email forwarding is not disabled by the policy.
   - **Off**: All automatic external email forwarding is disabled by the policy.

7. (Required) Expand the **Applied to** section to identify the internal senders that the policy applies to.

    You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<sender1\>_ or _\<sender2\>_). Different conditions or exceptions use AND logic (for example, _\<sender1\>_ and _\<member of group 1\>_).

    It's easiest to click **Add a condition** three times to see all of the available conditions. You can click ![Remove button](../../media/scc-remove-icon.png) to remove conditions that you don't want to configure.

    - **The sender domain is**: Specifies senders in one or more of the configured accepted domains in the organization. Click in the **Add a tag** box to see and select a domain. Click again the **Add a tag** box to select additional domains if more than one domain is available.

    - **Sender is**: Specifies one or more users in your organization. Click in the **Add a tag** and start typing to filter the list. Click again the **Add a tag** box to select additional senders.

    - **Sender is a member of**: Specifies one or more groups in your organization. Click in the **Add a tag** and start typing to filter the list. Click again the **Add a tag** box to select additional senders.

    - **Except if**: To add exceptions for the rule, click **Add a condition** three times to see all of the available exceptions. The settings and behavior are exactly like the conditions.

8. When you're finished, click **Save**.

## Use the Security & Compliance Center to view outbound spam policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand an outbound spam policy:

   - The default policy named **Outbound spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom outbound spam policy**.

3. The policy settings are displayed in the expanded policy details that appear, or you can click **Edit policy**.

## Use the Security & Compliance Center to modify outbound spam policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand an outbound spam policy:

   - The default policy named **Outbound spam filter policy**.

   - A custom policy that you created where the value in the **Type** column is **Custom outbound spam policy**.

3. Click **Edit policy**.

For custom outbound spam policies, the available settings in the flyout that appears are identical to those described in the [Use the Security & Compliance Center to create outbound spam policies](#use-the-security--compliance-center-to-create-outbound-spam-policies) section.

For the default outbound spam policy named **Outbound spam filter policy**, the **Applied to** section isn't available (the policy applies to everyone), and you can't rename the policy.

To enable or disable a policy, set the policy priority order, or configure the end-user quarantine notifications, see the following sections.

### Enable or disable outbound spam policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand a custom policy that you created (the value in the **Type** column is **Custom outbound spam policy**).

3. In the expanded policy details that appear, notice the value in the **On** column.

   Move the toggle to the left to disable the policy: ![Toggle off](../../media/scc-toggle-off.png)

   Move the toggle to the right to enable the policy: ![Toggle on](../../media/scc-toggle-on.png)

You can't disable the default outbound spam policy.

### Set the priority of custom outbound spam policies

By default, outbound spam policies are given a priority that's based on the order they were created in (newer polices are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

Custom outbound spam policies are displayed in the order they're processed (the first policy has the **Priority** value 0). The default outbound spam policy named **Outbound spam filter policy** has the priority value **Lowest**, and you can't change it.

To change the priority of a policy, move the policy up or down in the list (you can't directly modify the **Priority** number in the Security & Compliance Center).

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, find the policies where the value in the **Type** column is **Custom outbound spam policy**. Notice the values in the **Priority** column:

   - The custom outbound spam policy with the highest priority has the value ![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) **0**.

   - The custom outbound spam policy with the lowest priority has the value ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png) **n** (for example, ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png) **3**).

   - If you have three or more custom outbound spam policies, the policies between the highest and lowest priority have values ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png)![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) **n** (for example, ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png)![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) **2**).

3. Click ![Up Arrow icon](../../media/ITPro-EAC-UpArrowIcon.png) or ![Down Arrow icon](../../media/ITPro-EAC-DownArrowIcon.png) to move the custom outbound spam policy up or down in the priority list.

## Use the Security & Compliance Center to remove outbound spam policies

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-spam**.

2. On the **Anti-spam settings** page, click ![Expand icon](../../media/scc-expand-icon.png) to expand the custom policy that you want to delete (the **Type** column is **Custom outbound spam policy**).

3. In the expanded policy details that appear, click **Delete policy**.

4. Click **Yes** in the warning dialog that appears.

You can't remove the default policy.

## Use Exchange Online PowerShell or standalone EOP PowerShell to configure outbound spam policies

As previously described, an outbound spam policy consists of an outbound spam filter policy and an outbound spam filter rule.

In Exchange Online PowerShell or standalone EOP PowerShell, the difference between outbound spam filter policies and outbound spam filter rules is apparent. You manage outbound spam filter policies by using the **\*-HostedOutboundSpamFilterPolicy** cmdlets, and you manage outbound spam filter rules by using the **\*-HostedOutboundSpamFilterRule** cmdlets.

- In PowerShell, you create the outbound spam filter policy first, then you create the outbound spam filter rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the outbound spam filter policy and the outbound spam filter rule separately.
- When you remove a outbound spam filter policy from PowerShell, the corresponding outbound spam filter rule isn't automatically removed, and vice versa.

### Use PowerShell to create outbound spam policies

Creating an outbound spam policy in PowerShell is a two-step process:

1. Create the outbound spam filter policy.
2. Create the outbound spam filter rule that specifies the outbound spam filter policy that the rule applies to.

 **Notes**:

- You can create a new outbound spam filter rule and assign an existing, unassociated outbound spam filter policy to it. An outbound spam filter rule can't be associated with more than one outbound spam filter policy.

- You can configure the following settings on new outbound spam filter policies in PowerShell that aren't available in the Security & Compliance Center until after you create the policy:

  - Create the new policy as disabled (_Enabled_ `$false` on the **New-HostedOutboundSpamFilterRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-HostedOutboundSpamFilterRule** cmdlet).

- A new outbound spam filter policy that you create in PowerShell isn't visible in the Security & Compliance Center until you assign the policy to a spam filter rule.

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
New-HostedOutboundSpamFilterRule -Name "<RuleName>" -HostedOutboundSpamFilterPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"]
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

To return detailed information about a specific outbound spam filter policy, use the this syntax:

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

The same settings are available when you modify a malware filter policy in PowerShell as when you create the policy as described in the [Step 1: Use PowerShell to create an outbound spam filter policy](#step-1-use-powershell-to-create-an-outbound-spam-filter-policy) section earlier in this article.

> [!NOTE]
> You can't rename an outbound spam filter policy (the **Set-HostedOutboundSpamFilterPolicy** cmdlet has no _Name_ parameter). When you rename an outbound spam policy in the Security & Compliance Center, you're only renaming the outbound spam filter _rule_.

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

Enabling or disabling an outbound spam filter rule in PowerShell enables or disables the whole outbound spam policy (the outbound spam filter rule and the assigned outbound spam filter policy). You can't enable or disable the default outbound spam policy (it's always always applied to all recipients).

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

> [!NOTE]
>
> - To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-HostedOutboundSpamFilterRule** cmdlet instead.
>
> - The outbound default spam filter policy doesn't have a corresponding spam filter rule, and it always has the unmodifiable priority value **Lowest**.

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

[Remove blocked users from the Restricted Users portal](removing-user-from-restricted-users-portal-after-spam.md)

[High-risk delivery pool for outbound messages](high-risk-delivery-pool-for-outbound-messages.md)

[Anti-spam protection FAQ](anti-spam-protection-faq.md)

[Auto-forwarded messages report](mfi-auto-forwarded-messages-report.md)