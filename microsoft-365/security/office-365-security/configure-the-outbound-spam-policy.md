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
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, outbound email messages that are sent through EOP are automatically checked for spam and unusual sending activity.

Outbound spam from a user in your organization typically indicates a compromised account. Suspicious outbound messages are marked as spam (regardless of the spam confidence level or SCL) and are routed through the [high-risk delivery pool](high-risk-delivery-pool-for-outbound-messages.md) to help protect the reputation of the service (that is, keep Microsoft 365 source email servers off of IP block lists). Admins are automatically notified of suspicious outbound email activity and blocked users via [alert policies](../../compliance/alert-policies.md).

EOP uses outbound spam policies as part of your organization's overall defense against spam. For more information, see [Anti-spam protection](anti-spam-protection.md).

Admins can view, edit, and configure (but not delete) the default outbound spam policy. For greater granularity, you can also create custom outbound spam policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure outbound spam policies in the Microsoft 365 security center or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

The basic elements of an outbound spam policy in EOP are:

- **The outbound spam filter policy**: Specifies the actions for outbound spam filtering verdicts and the notification options.
- **The outbound spam filter rule**: Specifies the priority and recipient filters (who the policy applies to) for a outbound spam filter policy.

The difference between these two elements isn't obvious when you manage outbound spam polices in the security center:

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

- You open the security center at <https://security.microsoft.com/>. To go directly to the **Anti-spam settings** page, use <https://security.microsoft.com/antispam>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To add, modify, and delete outbound spam policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to outbound spam policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

- For our recommended settings for outbound spam policies, see [EOP outbound spam filter policy settings](recommended-settings-for-eop-and-office365.md#eop-outbound-spam-policy-settings).

- The default [alert policies](../../compliance/alert-policies.md) named **Email sending limit exceeded**, **Suspicious email sending patterns detected**, and **User restricted from sending email** already send email notifications to members of the **TenantAdmins** (**Global admins**) group about unusual outbound email activity and blocked users due to outbound spam. For more information, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users). We recommend that you use these alert policies instead of the the notification options in outbound spam policies.

## Use the security center to create outbound spam policies

Creating a custom outbound spam policy in the security center creates the spam filter rule and the associated spam filter policy at the same time using the same name for both.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-spam**.

2. On the **Anti-spam policies** page, click ![Create icon](../../media/m365-cc-sc-create-icon.png) **Create policy** and then select **Outbound** from the drop down list.

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

5. On the **Protection settings** page that opens, configure the following settings:
   - **Message limits**: The settings in this section configure the limits for outbound email messages from **Exchange Online** mailboxes:
     - **Set an external message limit**: The maximum number of external recipients per hour.
     - **Set an internal message limit**: The maximum number of internal recipients per hour.
     - **Set a daily message limit**: The maximum total number of recipients per day.

     A valid value is 0 to 10000. The default value is 0, which means the service defaults are used. For more information, see [Sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1).

    Enter a value in the box, or use the increase/decrease arrows on the box.

   - **Restriction placed on users who reach the message limit**: Select an action from the drop down list when any of the limits in the **Protection settings** section are exceeded.

     For all actions, the recipients specified in the **User restricted from sending email** alert policy (and in the now redundant **Notify these users and groups if a sender is blocked due to sending outbound spam** setting later on this page) receive email notifications.

     - **Restrict the user from sending mail until the following day**: This is the default value. Email notifications are sent, and the user will be unable to send any more messages until the following day, based on UTC time. There is no way for the admin to override this block.
       - The activity alert named **User restricted from sending email** notifies admins (via email and on the **View alerts** page).
       - Any recipients specified in the **Notify specific people if a sender is blocked due to sending outbound spam** setting in the policy are also notified.
       - The user will be unable to send any more messages until the following day, based on UTC time. There is no way for the admin to override this block.
     - **Restrict the user from sending mail**: Email notifications are sent, the user is added to **Restricted users** <https://security.microsoft.com/restrictedusers> in the security center, and the user can't send email until they're removed from **Restricted users** by an admin. After an admin removes the user from the list, the user won't be restricted again for that day. For instructions, see [Removing a user from the Restricted Users portal after sending spam email](removing-user-from-restricted-users-portal-after-spam.md).
     - **No action, alert only**: Email notifications are sent.

   - **Forwarding rules**: Use the settings in this section to control automatic email forwarding by **Exchange Online mailboxes** to external senders. For more information, see [Control automatic external email forwarding in Microsoft 365](external-email-forwarding.md).

     > [!NOTE]
     > When automatic forwarding is disabled, the recipient will receive a non-delivery report (also known as an NDR or bounce message) if external senders send email to a mailbox that has forwarding in place. If the message is sent by an internal sender **and** the forwarding method is [mailbox forwarding](/exchange/recipients-in-exchange-online/manage-user-mailboxes/configure-email-forwarding) (also known as _SMTP forwarding_), the internal sender will get the NDR. The internal sender does not get an NDR if the forwarding occurred due to an inbox rule.

     Select one of the following actions from the **Automatic forwarding rules** drop down list:

     - **Automatic - System-controlled**: Allows outbound spam filtering to control automatic external email forwarding. This is the default value.
     - **On**: Automatic external email forwarding is not disabled by the policy.
     - **Off**: All automatic external email forwarding is disabled by the policy.

   - **Notifications**: Use the settings in the section to configure additional recipients who should receive copies and notifications of suspicious outbound email messages:

     - **Send a copy of suspicious outbound that exceed these limits to these users and groups**: This setting adds the specified recipients to the Bcc field of suspicious outbound messages.

       > [!NOTE]
       > This setting only works in the default outbound spam policy. It doesn't work in custom outbound spam policies that you create.

       To enable this setting, select the check box. In the box that appears, click in the box, enter a valid email address, and then press Enter or select the complete value that's displayed below the box.

       Repeat this step as many times as necessary. To remove an existing value, click remove ![Remove icon](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   - **Notify these users and groups if a sender is blocked due to sending outbound spam**

     > [!IMPORTANT]
     >
     > - This setting is in the process of being deprecated from outbound spam policies.
     >
     > - The default [alert policy](../../compliance/alert-policies.md) named **User restricted from sending email** already sends email notifications to members of the **TenantAdmins** (**Global admins**) group when users are blocked due to exceeding the limits in the **Recipient Limits** section. **We strongly recommend that you use the alert policy rather than this setting in the outbound spam policy to notify admins and other users**. For instructions, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users).

   When you're finished, click **Next**.

6. On the **Review** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Create**.

7. On the confirmation page that appears, click **Done**.

## Use the security center to view outbound spam policies

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-spam**.

2. On the **Anti-spam policies** page, look for one of the following values:
   - The **Type** value is **Custom outbound spam policy**
   - The **Name** value is **Anti-spam outbound policy (Default)**

   The following properties are displayed in the list of anti-spam policies:

   - **Name**
   - **Status**
   - **Priority**
   - **Type**

3. When you select an outbound spam policy by clicking on the name, the policy settings are displayed in a flyout.

## Use the security center to modify outbound spam policies

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-spam**.

2. On the **Anti-spam policies** page, select an outbound spam policy from the list by clicking on the name:
   - A custom policy that you created where the value in the **Type** column is **Custom outbound spam policy**.
   - The default policy named **Anti-spam outbound policy (Default)**.

3. In the policy details flyout that appears, select **Edit** in each section to modify the settings within the section. For more information about the settings, see the previous [Use the security center to create outbound spam policies](#use-the-security-center-to-create-outbound-spam-policies) section in this article.

   For the default outbound spam policy, the **Applied to** section isn't available (the policy applies to everyone), and you can't rename the policy.

To enable or disable a policy, set the policy priority order, or configure the end-user quarantine notifications, see the following sections.

### Enable or disable custom outbound spam policies

You can't disable the default outbound spam policy.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-spam**.

2. On the **Anti-spam policies** page, select a policy with the **Type value** of **Custom  outbound spam policy** from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see one of the following values:
   - **Policy off**: To turn on the policy, click ![Turn on icon](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** .
   - **Policy on**: To turn off the policy, click ![Turn off icon](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off**.

4. In the confirmation dialog that appears, click **Turn on** or **Turn off**.

5. Click **Close** in the policy details flyout.

Back on the main policy page, the **Status** value of the policy will be **On** or **Off**.

### Set the priority of custom outbound spam policies

By default, outbound spam policies are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the security center). Changing the priority of a policy only makes sense if you have multiple policies.

 **Notes**:

- In the security center, you can only change the priority of the outbound spam policy after you create it. In PowerShell, you can override the default priority when you create the spam filter rule (which can affect the priority of existing rules).
- Outbound spam policies are processed in the order that they're displayed (the first policy has the **Priority** value 0). The default outbound spam policy has the priority value **Lowest**, and you can't change it.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-spam**.

2. On the **Anti-spam policies** page, select a select a policy with the **Type value** of **Custom outbound spam policy** from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see **Increase priority** or **Decrease priority** based on the current priority value and the number of custom policies:
   - The outbound spam policy with the **Priority** value **0** has only the **Decrease priority** option available.
   - The outbound spam policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** option available.
   - If you have three or more outbound spam policies, policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** options available.

   Click ![Increase priority icon](../../media/m365-cc-sc-increase-icon.png) **Increase priority** or ![Decrease priority icon](../../media/m365-cc-sc-decrease-icon.png) **Decrease priority** to change the **Priority** value.

4. When you're finished, click **Close** in the policy details flyout.

## Use the security center to remove custom outbound spam policies

When you use the security center to remove a custom outbound spam policy, the spam filter rule and the corresponding spam filter policy are both deleted. You can't remove the default outbound spam policy.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-spam**.

2. On the **Anti-spam policies** page, select a policy with the **Type value** of **Custom outbound spam policy** from the list by clicking on the name. At the top of the policy details flyout that appears, click ![More actions icon](../../media/m365-cc-sc-more-actions-icon.png) **More actions** \> ![Delete policy icon](../../media/m365-cc-sc-delete-icon.png) **Delete policy**.

3. In the confirmation dialog that appears, click **Yes**.

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
   - You can configure the following settings on new outbound spam filter policies in PowerShell that aren't available in the security center until after you create the policy:
     - Create the new policy as disabled (_Enabled_ `$false` on the **New-HostedOutboundSpamFilterRule** cmdlet).
     - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-HostedOutboundSpamFilterRule** cmdlet).
   - A new outbound spam filter policy that you create in PowerShell isn't visible in the security center until you assign the policy to an outbound spam filter rule.

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
> You can't rename an outbound spam filter policy (the **Set-HostedOutboundSpamFilterPolicy** cmdlet has no _Name_ parameter). When you rename an outbound spam policy in the security center, you're only renaming the outbound spam filter _rule_.

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

[Remove blocked users from the Restricted Users portal](removing-user-from-restricted-users-portal-after-spam.md)

[High-risk delivery pool for outbound messages](high-risk-delivery-pool-for-outbound-messages.md)

[Anti-spam protection FAQ](anti-spam-protection-faq.yml)

[Auto-forwarded messages report](mfi-auto-forwarded-messages-report.md)
