---
title: Configure anti-phishing policies in Microsoft Defender for Office 365
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
description: Admins can learn how to create, modify, and delete the advanced anti-phishing policies that are available in organizations with Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---

# Configure anti-phishing policies in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

Anti-phishing policies in [Microsoft Defender for Office 365](defender-for-office-365.md) can help protect your organization from malicious impersonation-based phishing attacks and other types of phishing attacks. For more information about the differences between anti-phishing policies in Exchange Online Protection (EOP) and anti-phishing policies in Microsoft Defender for Office 365, see [Anti-phishing protection](anti-phishing-protection.md).

Admins can view, edit, and configure (but not delete) the default anti-phishing policy. For greater granularity, you can also create custom anti-phishing policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure anti-phishing policies in the Security & Compliance Center or in Exchange Online PowerShell.

For information about configuring the more limited in anti-phishing policies that are available in Exchange Online Protection organizations (that is, organizations without Microsoft Defender for Office 365), see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

The basic elements of an anti-phishing policy are:

- **The anti-phish policy**: Specifies the phishing protections to enable or disable, and the actions to apply options.
- **The anti-phish rule**: Specifies the priority and recipient filters (who the policy applies to) for an anti-phish policy.

The difference between these two elements isn't obvious when you manage anti-phishing policies in the Security & Compliance Center:

- When you create a policy, you're actually creating an anti-phish rule and the associated anti-phish policy at the same time using the same name for both.
- When you modify a policy, settings related to the name, priority, enabled or disabled, and recipient filters modify the anti-phish rule. All other settings modify the associated anti-phish policy.
- When you remove a policy, the anti-phish rule and the associated anti-phish policy are removed.

In Exchange Online PowerShell, you manage the policy and the rule separately. For more information, see the [Use Exchange Online PowerShell to configure anti-phishing policies in Microsoft Defender for Office 365](#use-exchange-online-powershell-to-configure-anti-phishing-policies-in-microsoft-defender-for-office-365) section later in this article.

Every Microsoft Defender for Office 365 organization has a built-in anti-phishing policy named Office365 AntiPhish Default that has these properties:

- The policy is applied to all recipients in the organization, even though there's no anti-phish rule (recipient filters) associated with the policy.
- The policy has the custom priority value **Lowest** that you can't modify (the policy is always applied last). Any custom policies that you create always have a higher priority.
- The policy is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.

To increase the effectiveness of anti-phishing protection in Microsoft Defender for Office 365, you can create custom anti-phishing policies with stricter settings that are applied to specific users or groups of users.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **ATP anti-phishing** page, use <https://protection.office.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions in **Exchange Online** before you can do the procedures in this article:
  - To add, modify, and delete anti-phishing policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to anti-phishing policies, you need to be a member of the **Global Reader** or **Security Reader** role groups<sup>\*</sup>.

  For more information, see [Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo).

  **Notes**:

  - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  - The **View-Only Organization Management** role group in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature<sup>\*</sup>.
  - <sup>\*</sup> In the Security & Compliance Center, read-only access allows users to view the settings of custom anti-phishing policies. Read-only users can't see the settings in the default anti-phishing policy.

- For our recommended settings for anti-phishing policies in Microsoft Defender for Office 365, see [Anti-phishing policy in Defender for Office 365 settings](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365).

- Allow up to 30 minutes for a new or updated policy to be applied.

- For information about where anti-phishing policies are applied in the filtering pipeline, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Use the Security & Compliance Center to create anti-phishing policies in Microsoft Defender for Office 365

Creating a custom anti-phishing policy in the Security & Compliance Center creates the anti-phish rule and the associated anti-phish policy at the same time using the same name for both.

When you create an anti-phishing policy, you can only specify the policy name, description, and the recipient filter that identifies who the policy applies to. After you create the policy, you can modify the policy to change or review the default anti-phishing settings.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. On the **Anti-phishing** page, click **Create**.

3. The **Create a new anti-phishing policy** wizard opens. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Applied to** page that appears, identify the internal recipients that the policy applies to.

   You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   Click **Add a condition**. In the dropdown that appears, select a condition under **Applied if**:

   - **The recipient is**: Specifies one or more mailboxes, mail users, or mail contacts in your organization.
   - **The recipient is a member of**: Specifies one or more groups in your organization.
   - **The recipient domain is**: Specifies recipients in one or more of the configured accepted domains in the organization.

   After you select the condition, a corresponding dropdown appears with an **Any of these** box.

   - Click in the box and scroll through the list of values to select.
   - Click in the box and start typing to filter the list and select a value.
   - To add additional values, click in an empty area in the box.
   - To remove individual entries, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the value.
   - To remove the whole condition, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the condition.

   To add an additional condition, click **Add a condition** and select a remaining value under **Applied if**.

   To add exceptions, click **Add a condition** and select an exception under **Except if**. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

5. On the **Review your settings** page that appears, review your settings. You can click **Edit** on each setting to modify it.

   When you're finished, click **Create this policy**.

6. Click **OK** in the confirmation dialog that appears.

After you create the anti-phishing policy with these general settings, use the instructions in the next section to configure the protection settings in the policy.

## Use the Security & Compliance Center to modify anti-phishing policies in Microsoft Defender for Office 365

Use the following procedures to modify anti-phishing policies: a new policy that you created, or existing policies that you've already customized.

1. If you're not already there, open the Security & Compliance Center, and go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Select the custom anti-phishing policy that you want to modify. If it's already selected, deselect it and select it again.

3. The **Edit your policy \<name\>** flyout appears. Clicking **Edit** in any section gives you access to the settings in that section.

   - The following steps are presented in the order that the sections appear, but they aren't sequential (you can select and modify the sections in any order).

   - After you click **Edit** in a section, the available settings are presented in a wizard format, but you can jump within the pages in any order, and you can click **Save** on any page (or **Cancel** or **Close** ![Close icon](../../media/scc-remove-icon.png) to return to the **Edit your policy \<name\>** page (you aren't required to visit the last page of the wizard to save or leave).

4. **Policy setting**: Click **Edit** to modify the same settings that were available when you [created the policy](#use-the-security--compliance-center-to-create-anti-phishing-policies-in-microsoft-defender-for-office-365) in the previous section:

   - **Name**
   - **Description**
   - **Applied to**
   - **Review your settings**

   When you're finished, click **Save** on any page.

5. **Impersonation**: Click **Edit** to modify the protected senders and protected domains in the policy. These settings are a condition for the policy that identifies spoofed senders to look for (individually or by domain) in the From address of inbound messages. For more information, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   - **Add users to protect**: The default value is **Off**. To turn it on, slide the toggle to **On**, and then click the **Add user** button that appears.

     In the **Add user** flyout that appears, configure the following values:

     - **Email address**:

       - Click in the box and scroll through the list of users to select.
       - Click in the box and start typing to filter the list and select a user.
       - To remove an entry, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the user.

     - **Name**: This value is populated based on the email address you selected, but you can change it.

     When you're finished, click **Save** on any page.

     To edit an existing entry, select the protected user in the list.

     > [!NOTE]
     >
     > - In each anti-phishing policy, you can specify a maximum of 60 protected users (sender email addresses). You can't specify the same protected user in multiple policies.
     >
     > - User impersonation protection does not work if the sender and recipient have previously communicated via email. If the sender and recipient have never communicated via email, the message will be identified as an impersonation attempt.

   - **Add domains to protect**: Configure one or both of the following settings:

     - **Automatically include the domains I own**: The default value is **Off**. To turn it on, slide the toggle to **On**.
     - **Include custom domains**: The default value is **Off**. To turn it on, slide the toggle to **On**, and in the **Add domains** box, enter the domain name (for example, contoso.com), press ENTER, and repeat as necessary.

     > [!NOTE]
     > You can have a maximum of 50 domains in all anti-phishing policies.

   - **Actions**: Click **Edit**

     - **If email is sent by an impersonated user**: Configure one of the following actions for messages where the spoofed sender is one of the protected users you specified in **Add users to protect**:

       - **Don't apply any action**
       - **Redirect message to other email addresses**
       - **Move message to Junk Email folder**
       - **Quarantine the message**
       - **Deliver the message and add other addresses to the Bcc line**
       - **Delete the message before it's delivered**

     - **If email is sent by an impersonated domain**: Configure one of the following actions for messages where the spoofed sender is in one of the protected domains you specified in **Add domains to protect**:

       - **Don't apply any action**
       - **Redirect message to other email addresses**
       - **Move message to Junk Email folder**
       - **Quarantine the message**
       - **Deliver the message and add other addresses to the Bcc line**
       - **Delete the message before it's delivered**

   - Click **turn on impersonation safety tips** and configure any of the following settings:

     - **Show tip for impersonated users**: The default value is **Off**. To turn it on, slide the toggle to **On**.
     - **Show tip for impersonated domains**: The default value is **Off**. To turn it on, slide the toggle to **On**.
     - **Show tip for unusual characters**: The default value is **Off**. To turn it on, slide the toggle to **On**.

     When you're finished, click **Save**.

   - **Mailbox intelligence**:

     - **Enable mailbox intelligence?**: The default value is **On**. To turn it off, slide the toggle to **Off**.

     - **Enable mailbox intelligence based impersonation protection?**: This setting is only available if **Enable mailbox intelligence?** is **On**.

       In **If email is sent by an impersonated user**, you can specify one of the following actions to take on messages that fail mailbox intelligence (the same actions that are available for protected users and protected domains):

       - **Don't apply any action**
       - **Redirect message to other email addresses**
       - **Move message to Junk Email folder**
       - **Quarantine the message**
       - **Deliver the message and add other addresses to the Bcc line**
       - **Delete the message before it's delivered**

   - **Add trusted senders and domains**: Specify exceptions for the policy:

     - **Trusted senders**:

       - Click in the box and scroll through the list of users to select.
       - Click in the box and start typing to filter the list and select a user.
       - To remove an entry, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the user.

     - **Trusted domains**: Enter the domain name (for example, contoso.com), press ENTER, and repeat as necessary.

   - **Review your settings**: Instead of clicking on each individual step, the settings are displayed in a summary.

     - You can click **Edit** in each section to jump back to the relevant page.
     - You can toggle the following settings **On** or **Off** directly on this page:

       - **Protected users**
       - **Protected domains** \> **Include domains I own**
       - **Protected domains** \> **Protected domains** (custom domains)
       - **Mailbox intelligence**

   When you're finished, click **Save** on any page.

6. **Spoof**: Click **Edit** to turn spoof intelligence on or off, turn unauthenticated sender identification in Outlook on or off, and configure the action to apply to messages from blocked spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings).

   Note that these same settings are also available in anti-phishing policies in EOP.

   - **Spoofing filter settings**: The default value is **On**, and we recommend that you leave it on. To turn it off, slide the toggle to **Off**. For more information, see [Configure spoof intelligence in EOP](learn-about-spoof-intelligence.md).

     > [!NOTE]
     > You don't need to disable anti-spoofing protection if your MX record doesn't point to Microsoft 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

   - **Enable Unauthenticated Sender feature**: The default value is **On**. To turn it off, slide the toggle to **Off**.

   - **Actions**: Specify the action to take on messages that fail spoof intelligence:

     **If email is sent by someone who's not allowed to spoof your domain**:

     - **Move message to the recipients' Junk Email folders**
     - **Quarantine the message**

   - **Review your settings**: Instead of clicking on each individual step, the settings are displayed in a summary.

     - You can click **Edit** in each section to jump back to the relevant page.
     - You can toggle the following settings **On** or **Off** directly on this page:
       - **Enable antispoofing protection**
       - **Enable Unauthenticated Sender feature**

   When you're finished, click **Save** on any page.

7. **Advanced settings**: Click **Edit** to configure the advanced phishing thresholds. For more information, see [Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   - **Advanced phishing thresholds**: Select one of the following values:

   - **1 - Standard** (This is the default value.)
   - **2 - Aggressive**
   - **3 - More aggressive**
   - **4 - Most aggressive**

   - **Review your settings**: Click **Edit** to jump back to the **Advanced phishing thresholds** page.

   When you're finished, click **Save** on either page.

8. Back on the **Edit your policy \<Name\>** page, review your settings and then click **Close**.

### Use the Security & Compliance Center to modify the default anti-phishing policy in Microsoft Defender for Office 365

The default anti-phishing policy in Microsoft Defender for Office 365 is named Office365 AntiPhish Default, and it doesn't appear in the list of policies. To modify the default anti-phishing policy, do the following steps:

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. On the **Anti-phishing** page, click **Default policy**.

3. The **Edit your policy Office365 AntiPhish Default** page appears. The following sections are available, which contain identical settings for when you [modify a custom policy](#use-the-security--compliance-center-to-modify-anti-phishing-policies-in-microsoft-defender-for-office-365):

   - **Impersonation**
   - **Spoof**
   - **Advanced settings**

   The following settings aren't available when you modify the default policy:

   - You can see the **Policy setting** section and values, but there's no **Edit** link, so you can't modify the settings (policy name, description, and who the policy applies to (it applies to all recipients)).
   - You can't delete the default policy.
   - You can't change the priority of the default policy (it's always applied last).

4. On the **Edit your policy Office365 AntiPhish Default** page, review your settings and then click **Close**.

### Enable or disable custom anti-phishing policies in Microsoft Defender for Office 365

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Notice the value in the **Status** column:

   - Slide the toggle to **Off** to disable the policy.

   - Slide the toggle to **On** to enable the policy.

You can't disable the default anti-phishing policy.

### Set the priority of custom anti-phishing policies in Microsoft Defender for Office 365

By default, anti-phishing policies are given a priority that's based on the order they were created in (newer policies are lower priority than older policies). A lower priority number indicates a higher priority for the policy (0 is the highest), and policies are processed in priority order (higher priority policies are processed before lower priority policies). No two policies can have the same priority, and policy processing stops after the first policy is applied.

For more information about the order of precedence and how multiple policies are evaluated and applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

Custom anti-phishing policies are displayed in the order they're processed (the first policy has the **Priority** value 0). The default anti-phishing policy named Office365 AntiPhish Default has the custom priority value **Lowest**, and you can't change it.

 **Note**: In the Security & Compliance Center, you can only change the priority of the anti-phishing policy after you create it. In PowerShell, you can override the default priority when you create the anti-phish rule (which can affect the priority of existing rules).

To change the priority of a policy, you click **Increase priority** or **Decrease priority** in the properties of the policy (you can't directly modify the **Priority** number in the Security & Compliance Center). Changing the priority of a policy only makes sense if you have multiple policies.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Select the policy that you want to modify. If it's already selected, deselect it and select it again.

3. The **Edit your policy \<name\>** flyout appears.

   - The custom anti-phishing policy with the **Priority** value **0** has only the **Decrease priority** button available.

   - The custom anti-phishing policy with the lowest **Priority** value (for example, **3**) has only the **Increase priority** button available.

   - If you have three or more custom anti-phishing policies, policies between the highest and lowest priority values have both the **Increase priority** and **Decrease priority** buttons available.

4. Click **Increase priority** or **Decrease priority** to change the **Priority** value.

5. When you're finished, click **Close**.

## Use the Security & Compliance Center to view anti-phishing policies in Microsoft Defender for Office 365

1. In the Security & Compliance Center, and go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Do one of the following steps:

   - Select a custom anti-phishing policy that you want to view. If it's already selected, deselect it and select it again.

   - Click **Default policy** to view the default anti-phishing policy.

3. The **Edit your policy \<name\>** flyout appears, where you can view the settings and values.

## Use the Security & Compliance Center to remove anti-phishing policies in Microsoft Defender for Office 365

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Select the policy that you want to remove. If it's already selected, deselect it and select it again.

3. In the **Edit your policy \<name\>** flyout that appears, click **Delete policy**, and then click **Yes** in the warning dialog that appears.

You can't remove the default policy.

## Use Exchange Online PowerShell to configure anti-phishing policies in Microsoft Defender for Office 365

As previously described, an anti-spam policy consists of an anti-phish policy and an anti-phish rule.

In Exchange Online PowerShell, the difference between anti-phish policies and anti-phish rules is apparent. You manage anti-phish policies by using the **\*-AntiPhishPolicy** cmdlets, and you manage anti-phish rules by using the **\*-AntiPhishRule** cmdlets.

- In PowerShell, you create the anti-phish policy first, then you create the anti-phish rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the anti-phish policy and the anti-phish rule separately.
- When you remove an anti-phish policy from PowerShell, the corresponding anti-phish rule isn't automatically removed, and vice versa.

### Use PowerShell to create anti-phishing policies

Creating an anti-phishing policy in PowerShell is a two-step process:

1. Create the anti-phish policy.
2. Create the anti-phish rule that specifies the anti-phish policy that the rule applies to.

 **Notes**:

- You can create a new anti-phish rule and assign an existing, unassociated anti-phish policy to it. An anti-phish rule can't be associated with more than one anti-phish policy.

- You can configure the following settings on new anti-phish policies in PowerShell that aren't available in the Security & Compliance Center until after you create the policy:

  - Create the new policy as disabled (_Enabled_ `$false` on the **New-AntiPhishRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-AntiPhishRule** cmdlet).

- A new anti-phish policy that you create in PowerShell isn't visible in the Security & Compliance Center until you assign the policy to an anti-phish rule.

#### Step 1: Use PowerShell to create an anti-phish policy

To create an anti-phish policy, use this syntax:

```PowerShell
New-AntiPhishPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] <Additional Settings>
```

This example creates anti-phish policy named Research Quarantine with the following settings:

- The policy is enabled (we aren't using the _Enabled_ parameter, and the default value is `$true`).
- The description is: Research department policy.
- Enables organization domains protection for all accepted domains, and targeted domains protection for fabrikam.com.
- Specifies Mai Fujito (mfujito@fabrikam.com) as the user to protect from impersonation.
- Enables mailbox intelligence.
- Enables mailbox intelligence protection, and specifies the quarantine action.
- Enables safety tips.

```powershell
New-AntiPhishPolicy -Name "Monitor Policy" -AdminDisplayName "Research department policy" -EnableOrganizationDomainsProtection $true -EnableTargetedDomainsProtection $true -TargetedDomainsToProtect fabrikam.com -TargetedDomainProtectionAction Quarantine -EnableTargetedUserProtection $true -TargetedUsersToProtect "Mai Fujito;mfujito@fabrikam.com" -TargetedUserProtectionAction Quarantine -EnableMailboxIntelligence $true -EnableMailboxIntelligenceProtection $true -MailboxIntelligenceProtectionAction Quarantine -EnableSimilarUsersSafetyTips $true -EnableSimilarDomainsSafetyTips $true -EnableUnusualCharactersSafetyTips $true
```

For detailed syntax and parameter information, see [New-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/New-AntiPhishPolicy).

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

For detailed syntax and parameter information, see [New-AntiPhishRule](https://docs.microsoft.com/powershell/module/exchange/New-AntiPhishRule).

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

For detailed syntax and parameter information, see [Get-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/Get-AntiPhishPolicy).

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

For detailed syntax and parameter information, see [Get-AntiPhishRule](https://docs.microsoft.com/powershell/module/exchange/Get-AntiPhishrule).

### Use PowerShell to modify anti-phish policies

Other than the following items, the same settings are available when you modify an anti-phish policy in PowerShell as when you create the policy as described in the [Step 1: Use PowerShell to create an anti-phish policy](#step-1-use-powershell-to-create-an-anti-phish-policy) section earlier in this article.

- The _MakeDefault_ switch that turns the specified policy into the default policy (applied to everyone, always **Lowest** priority, and you can't delete it) is only available when you modify an anti-phish policy in PowerShell.

- You can't rename an anti-phish policy (the **Set-AntiPhishPolicy** cmdlet has no _Name_ parameter). When you rename an anti-phishing policy in the Security & Compliance Center, you're only renaming the anti-phish _rule_.

To modify an anti-phish policy, use this syntax:

```PowerShell
Set-AntiPhishPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/Set-AntiPhishPolicy).

### Use PowerShell to modify anti-phish rules

The only setting that isn't available when you modify an anti-phish rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing anti-phish rules, see the next section.

Otherwise, no additional settings are available when you modify an anti-phish rule in PowerShell. The same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create an anti-phish rule](#step-2-use-powershell-to-create-an-anti-phish-rule) section earlier in this article.

To modify an anti-phish rule, use this syntax:

```PowerShell
Set-AntiPhishRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-AntiPhishRule](https://docs.microsoft.com/powershell/module/exchange/set-antiphishrule).

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

For detailed syntax and parameter information, see [Enable-AntiPhishRule](https://docs.microsoft.com/powershell/module/exchange/enable-antiphishrule) and [Disable-AntiPhishRule](https://docs.microsoft.com/powershell/module/exchange/disable-antiphishrule).

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

For detailed syntax and parameter information, see [Remove-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/Remove-AntiPhishPolicy).

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

For detailed syntax and parameter information, see [Remove-AntiPhishRule](https://docs.microsoft.com/powershell/module/exchange/Remove-AntiPhishRule).

## How do you know these procedures worked?

To verify that you've successfully configured anti-phishing policies in Microsoft Defender for Office 365, do any of the following steps:

- In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**. Verify the list of policies, their **Status** values, and their **Priority** values. To view more details do either of the following steps:

  - Select the policy from the list, and view the details in the flyout.
  - Click **Default policy** and view the details in the flyout.

- In Exchange Online PowerShell, replace \<Name\> with the name of the policy or rule, and run the following command and verify the settings:

  ```PowerShell
  Get-AntiPhishPolicy -Identity "<Name>"
  ```

  ```PowerShell
  Get-AntiPhishRule -Identity "<Name>"
  ```
