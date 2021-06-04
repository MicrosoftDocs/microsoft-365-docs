---
title: Configure anti-phishing policies in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.date: 

localization_priority: Normal
ms.assetid: 
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to create, modify, and delete the anti-phishing policies that are available in Exchange Online Protection (EOP) organizations with or without Exchange Online mailboxes.
ms.technology: mdo
ms.prod: m365-security
---

# Configure anti-phishing policies in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, there's a default anti-phishing policy that contains a limited number of anti-spoofing features that are enabled by default. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings).

Admins can view, edit, and configure (but not delete) the default anti-phishing policy. For greater granularity, you can also create custom anti-phishing policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

Organizations with Exchange Online mailboxes can configure anti-phishing policies in the Microsoft 365 security center or in Exchange Online PowerShell. Standalone EOP organizations can only use the security center.

For information about creating and modifying the more advanced anti-phishing policies that are available in Microsoft Defender for Office 365, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

The basic elements of an anti-phishing policy are:

- **The anti-phish policy**: Specifies the phishing protections to enable or disable, and the actions to apply options.
- **The anti-phish rule**: Specifies the priority and recipient filters (who the policy applies to) for an anti-phish policy.

The difference between these two elements isn't obvious when you manage anti-phishing policies in the security center:

- When you create an anti-phishing policy, you're actually creating an anti-phish rule and the associated anti-phish policy at the same time using the same name for both.
- When you modify an anti-phishing policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the anti-phish rule. All other settings modify the associated anti-phish policy.
- When you remove an anti-phishing policy, the anti-phish rule and the associated anti-phish policy are removed.

In Exchange Online PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell to configure anti-phishing policies](#use-exchange-online-powershell-to-configure-anti-phishing-policies) section later in this article.

Every organization has a built-in anti-phishing policy named Office365 AntiPhish Default that has these properties:

- The policy is applied to all recipients in the organization, even though there's no anti-phish rule (recipient filters) associated with the policy.
- The policy has the custom priority value **Lowest** that you can't modify (the policy is always applied last). Any custom policies that you create always have a higher priority.
- The policy is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.

To increase the effectiveness of anti-phishing protection, you can create custom anti-phishing policies with stricter settings that are applied to specific users or groups of users.

## What do you need to know before you begin?

- You open the security center at <https://security.microsoft.com/>. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

  You can't manage anti-phishing policies in standalone EOP PowerShell.

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To add, modify, and delete anti-phishing policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to anti-phishing policies, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature<sup>\*</sup>.

- For our recommended settings for anti-phishing policies, see [EOP default anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-default-anti-phishing-policy-settings).

- Allow up to 30 minutes for the updated policy to be applied.

- For information about where anti-phishing policies are applied in the filtering pipeline, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Use the security center to create anti-phishing policies

Creating a custom anti-phishing policy in the security center creates the anti-phish rule and the associated anti-phish policy at the same time using the same name for both.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**.

2. On the **Anti-phishing** page, click ![Create icon](../../media/m365-cc-sc-create-icon.png) **Create**.

3. The policy wizard opens. On the **Policy name** page, configure these settings:
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

5. On the **Phishing threshold & protection** page that appears, use the **Enable spoof intelligence** check box to turn spoof intelligence on or off. The default value is on (selected), and we recommend that you leave it on. You configure the action to take on blocked spoofed messages on the next page.

   To turn off spoof intelligence, clear the check box.

   > [!NOTE]
   > You don't need to turn off anti-spoofing protection if your MX record doesn't point to Microsoft 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

   When you're finished, click **Next**.

6. On the **Actions** page that appears, configure the following settings:
   - **If message is detected as spoof**: This setting is available only if you selected **Enable spoof intelligence** on the previous page. Select one of the following actions in the drop down list for messages from blocked spoofed senders:
     - **Move message to the recipients' Junk Email folders**
     - **Quarantine the message**

   - **Safety tips & indicators**: This setting is available only if you selected **Enable spoof intelligence** on the previous page:
     - **Show (?) for unauthenticated senders for spoof**: Adds a question mark to the sender's photo in the From box in Outlook if the message does not pass SPF or DKIM checks **and** the message does not pass DMARC or [composite authentication](email-validation-and-authentication.md#composite-authentication).
     - **Show "via" tag**: Adds a via tag (chris@contoso.com via fabrikam.com) to the From address if it's different from the domain in the DKIM signature or the **MAIL FROM** address.

       > [!NOTE]
       > Currently, the **Show "via" tag** setting is not available in all organizations. If you don't have the **Show "via" tag** setting, the the question mark **and** the via tag are both controlled by the **Show (?) for unauthenticated senders for spoof** setting in your organization.

     To turn on a setting, select the check box. To turn it off, clear the check box.

   When you're finished, click **Next**.

7. On the **Review** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section.

   When you're finished, click **Submit**.

8. On the confirmation page that appears, click **Done**.

## Use the security center to view anti-phishing policies

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**.

2. On the **Anti-phishing** page, the following properties are displayed in the list of anti-phishing policies:

   - **Name**
   - **Status**
   - **Priority**
   - **Last modified**

3. When you select a policy by clicking on the name, the policy settings are displayed in a flyout.

## Use the security center to modify anti-phishing policies

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**.

2. On the **Anti-phishing** page, select a policy from the list by clicking on the name.

3. In the policy details flyout that appears, select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [Use the security center to create anti-phishing policies](#use-the-security-center-to-create-anti-phishing-policies) section earlier in this article.  

   For the default anti-phishing policy, the **Users, groups, and domains** section isn't available (the policy applies to everyone), and you can't rename the policy.

To enable or disable a policy or set the policy priority order, see the following sections.

### Enable or disable custom anti-phishing policies

You can't disable the default anti-phishing policy.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**.

2. On the **Anti-phishing** page, select a custom policy from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see one of the following values:
   - **Policy off**: To turn on the policy, click ![Turn on icon](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn on** .
   - **Policy on**: To turn off the policy, click ![Turn off icon](../../media/m365-cc-sc-turn-on-off-icon.png) **Turn off**.

4. In the confirmation dialog that appears, click **Turn on** or **Turn off**.

5. Click **Close** in the policy details flyout.

Back on the main policy page, the **Status** value of the policy will be **On** or **Off**.

### Set the priority of custom anti-phishing policies

By default, anti-phishing policies are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the security center). Changing the priority of a policy only makes sense if you have multiple policies.

 **Notes**:

- In the security center, you can only change the priority of the anti-phishing policy after you create it. In PowerShell, you can override the default priority when you create the anti-phish rule (which can affect the priority of existing rules).
- Anti-phishing policies are processed in the order that they're displayed (the first policy has the **Priority** value 0). The default anti-phishing policy has the priority value **Lowest**, and you can't change it.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**.

2. On the **Anti-phishing** page, select a custom policy from the list by clicking on the name.

3. At the top of the policy details flyout that appears, you'll see **Increase priority** or **Decrease priority** based on the current priority value and the number of custom policies:
   - The anti-phishing policy with the **Priority** value **0** has only the **Decrease priority** option available.
   - The anti-phishing policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** option available.
   - If you have three or more anti-phishing policies, policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** options available.

   Click ![Increase priority icon](../../media/m365-cc-sc-increase-icon.png) **Increase priority** or ![Decrease priority icon](../../media/m365-cc-sc-decrease-icon.png) **Decrease priority** to change the **Priority** value.

4. When you're finished, click **Close** in the policy details flyout.

## Use the security center to remove custom anti-phishing policies

When you use the security center to remove a custom anti-phishing policy, the anti-phish rule and the corresponding anti-phish policy are both deleted. You can't remove the default anti-phishing policy.

1. In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**.

2. Select a custom policy from the list by clicking on the name of the policy. At the top of the policy details flyout that appears, click ![More actions icon](../../media/m365-cc-sc-more-actions-icon.png) **More actions** \> ![Delete policy icon](../../media/m365-cc-sc-delete-icon.png) **Delete policy**.

3. In the confirmation dialog that appears, click **Yes**.

## Use Exchange Online PowerShell to configure anti-phishing policies

As previously described, an anti-phishing policy consists of an anti-phish policy and an anti-phish rule.

In Exchange Online PowerShell, the difference between anti-phish policies and anti-phish rules is apparent. You manage anti-phish policies by using the **\*-AntiPhishPolicy** cmdlets, and you manage anti-phish rules by using the **\*-AntiPhishRule** cmdlets.

- In PowerShell, you create the anti-phish policy first, then you create the anti-phish rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the anti-phish policy and the anti-phish rule separately.
- When you remove an anti-phish policy from PowerShell, the corresponding anti-phish rule isn't automatically removed, and vice versa.

> [!NOTE]
> The following PowerShell procedures aren't available in standalone EOP organizations using Exchange Online Protection PowerShell.

### Use PowerShell to create anti-phishing policies

Creating an anti-phishing policy in PowerShell is a two-step process:

1. Create the anti-phish policy.
2. Create the anti-phish rule that specifies the anti-phish policy that the rule applies to.

 **Notes**:

- You can create a new anti-phish rule and assign an existing, unassociated anti-phish policy to it. An anti-phish rule can't be associated with more than one anti-phish policy.

- You can configure the following settings on new anti-phish policies in PowerShell that aren't available in the security center until after you create the policy:

  - Create the new policy as disabled (_Enabled_ `$false` on the **New-AntiPhishRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-AntiPhishRule** cmdlet).

- A new anti-phish policy that you create in PowerShell isn't visible in the security center until you assign the policy to an anti-phish rule.

#### Step 1: Use PowerShell to create an anti-phish policy

To create an anti-phish policy, use this syntax:

```PowerShell
New-AntiPhishPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] [-EnableSpoofIntelligence <$true | $false>] [-AuthenticationFailAction <MoveToJmf | Quarantine>] [-EnableUnauthenticatedSender <$true | $false>] [-EnableViaTag <$true | $false>]
```

This example creates an anti-phish policy named Research Quarantine with the following settings:

- The description is: Research department policy.
- Changes the default action for spoofing to Quarantine.

```powershell
New-AntiPhishPolicy -Name "Monitor Policy" -AdminDisplayName "Research department policy" -AuthenticationFailAction Quarantine
```

For detailed syntax and parameter information, see [New-AntiPhishPolicy](/powershell/module/exchange/New-AntiPhishPolicy).

#### Step 2: Use PowerShell to create an anti-phish rule

To create an anti-phish rule, use this syntax:

```PowerShell
New-AntiPhishRule -Name "<RuleName>" -AntiPhishPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"]
```

This example creates an anti-phish rule named Research Department with the following conditions:

- The rule is associated with the anti-phish policy named Research Quarantine.
- The rule applies to members of the group named Research Department.
- Because we aren't using the _Priority_ parameter, the default priority is used.

```powershell
New-AntiPhishRule -Name "Research Department" -AntiPhishPolicy "Research Quarantine" -SentToMemberOf "Research Department"
```

For detailed syntax and parameter information, see [New-AntiPhishRule](/powershell/module/exchange/New-AntiPhishRule).

### Use PowerShell to view anti-phish policies

To view existing anti-phish policies, use the following syntax:

```PowerShell
Get-AntiPhishPolicy [-Identity "<PolicyIdentity>"] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all anti-phish policies along with the specified properties.

```PowerShell
Get-AntiPhishPolicy | Format-Table Name,IsDefault
```

This example returns all the property values for the anti-phish policy named Executives.

```PowerShell
Get-AntiPhishPolicy -Identity "Executives"
```

For detailed syntax and parameter information, see [Get-AntiPhishPolicy](/powershell/module/exchange/Get-AntiPhishPolicy).

### Use PowerShell to view anti-phish rules

To view existing anti-phish rules, use the following syntax:

```PowerShell
Get-AntiPhishRule [-Identity "<RuleIdentity>"] [-State <Enabled | Disabled] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all anti-phish rules along with the specified properties.

```PowerShell
Get-AntiPhishRule | Format-Table Name,Priority,State
```

To filter the list by enabled or disabled rules, run the following commands:

```PowerShell
Get-AntiPhishRule -State Disabled | Format-Table Name,Priority
```

```PowerShell
Get-AntiPhishRule -State Enabled | Format-Table Name,Priority
```

This example returns all the property values for the anti-phish rule named Contoso Executives.

```PowerShell
Get-AntiPhishRule -Identity "Contoso Executives"
```

For detailed syntax and parameter information, see [Get-AntiPhishRule](/powershell/module/exchange/Get-AntiPhishrule).

### Use PowerShell to modify anti-phish policies

Other than the following items, the same settings are available when you modify an anti-phish policy in PowerShell as when you create a policy as described in [Step 1: Use PowerShell to create an anti-phish policy](#step-1-use-powershell-to-create-an-anti-phish-policy) earlier in this article.

- The _MakeDefault_ switch that turns the specified policy into the default policy (applied to everyone, always **Lowest** priority, and you can't delete it) is only available when you modify an anti-phish policy in PowerShell.
- You can't rename an anti-phish policy (the **Set-AntiPhishPolicy** cmdlet has no _Name_ parameter). When you rename an anti-phishing policy in the security center, you're only renaming the anti-phish _rule_.

To modify an anti-phish policy, use this syntax:

```PowerShell
Set-AntiPhishPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-AntiPhishPolicy](/powershell/module/exchange/Set-AntiPhishPolicy).

### Use PowerShell to modify anti-phish rules

The only setting that's not available when you modify an anti-phish rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing anti-phish rules, see the next section.

Otherwise, the same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create an anti-phish rule](#step-2-use-powershell-to-create-an-anti-phish-rule) section earlier in this article.

To modify an anti-phish rule, use this syntax:

```PowerShell
Set-AntiPhishRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-AntiPhishRule](/powershell/module/exchange/set-antiphishrule).

### Use PowerShell to enable or disable anti-phish rules

Enabling or disabling an anti-phish rule in PowerShell enables or disables the whole anti-phishing policy (the anti-phish rule and the assigned anti-phish policy). You can't enable or disable the default anti-phishing policy (it's always applied to all recipients).

To enable or disable an anti-phish rule in PowerShell, use this syntax:

```PowerShell
<Enable-AntiPhishRule | Disable-AntiPhishRule> -Identity "<RuleName>"
```

This example disables the anti-phish rule named Marketing Department.

```PowerShell
Disable-AntiPhishRule -Identity "Marketing Department"
```

This example enables same rule.

```PowerShell
Enable-AntiPhishRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Enable-AntiPhishRule](/powershell/module/exchange/enable-antiphishrule) and [Disable-AntiPhishRule](/powershell/module/exchange/disable-antiphishrule).

### Use PowerShell to set the priority of anti-phish rules

The highest priority value you can set on a rule is 0. The lowest value you can set depends on the number of rules. For example, if you have five rules, you can use the priority values 0 through 4. Changing the priority of an existing rule can have a cascading effect on other rules. For example, if you have five custom rules (priorities 0 through 4), and you change the priority of a rule to 2, the existing rule with priority 2 is changed to priority 3, and the rule with priority 3 is changed to priority 4.

To set the priority of an anti-phish rule in PowerShell, use the following syntax:

```PowerShell
Set-AntiPhishRule -Identity "<RuleName>" -Priority <Number>
```

This example sets the priority of the rule named Marketing Department to 2. All existing rules that have a priority less than or equal to 2 are decreased by 1 (their priority numbers are increased by 1).

```PowerShell
Set-AntiPhishRule -Identity "Marketing Department" -Priority 2
```

**Notes**:

- To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-AntiPhishRule** cmdlet instead.
- The default anti-phish policy doesn't have a corresponding anti-phish rule, and it always has the unmodifiable priority value **Lowest**.

### Use PowerShell to remove anti-phish policies

When you use PowerShell to remove an anti-phish policy, the corresponding anti-phish rule isn't removed.

To remove an anti-phish policy in PowerShell, use this syntax:

```PowerShell
Remove-AntiPhishPolicy -Identity "<PolicyName>"
```

This example removes the anti-phish policy named Marketing Department.

```PowerShell
Remove-AntiPhishPolicy -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-AntiPhishPolicy](/powershell/module/exchange/Remove-AntiPhishPolicy).

### Use PowerShell to remove anti-phish rules

When you use PowerShell to remove an anti-phish rule, the corresponding anti-phish policy isn't removed.

To remove an anti-phish rule in PowerShell, use this syntax:

```PowerShell
Remove-AntiPhishRule -Identity "<PolicyName>"
```

This example removes the anti-phish rule named Marketing Department.

```PowerShell
Remove-AntiPhishRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-AntiPhishRule](/powershell/module/exchange/Remove-AntiPhishRule).

## How do you know these procedures worked?

To verify that you've successfully configured anti-phishing policies in EOP, do any of the following steps:

- In the security center, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Policies** section \> **Anti-phishing**. Verify the list of policies, their **Status** values, and their **Priority** values. To view more details, select the policy from the list by clicking on the name and viewing the details in the flyout that appears.

- In Exchange Online PowerShell, replace \<Name\> with the name of the policy or rule, run the following command, and verify the settings:

  ```PowerShell
  Get-AntiPhishPolicy -Identity "<Name>"
  ```

  ```PowerShell
  Get-AntiPhishRule -Identity "<Name>"
  ```
