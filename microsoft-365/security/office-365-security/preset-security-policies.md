---
title: Preset security policies
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
ms.assetid:
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Admins can learn how to apply Standard and Strict policy settings across the protection features of Exchange Online Protection (EOP) and Microsoft Defender for Office 365
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 3/3/2023
---

# Preset security policies in EOP and Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Preset security policies provide a centralized location for applying all of the recommended spam, malware, and phishing policies to users at once. The policy settings are not configurable. Instead, they are set by us and are based on our observations and experiences in the datacenters for a balance between keeping harmful content away from users and avoiding unnecessary disruptions.

The rest of this article describes preset security policies and how to configure them.

## What preset security policies are made of

Preset security policies consist of the following elements:

- Profiles
- Policies
- Policy settings

In addition, the order of precedence is important if multiple preset security policies and other policies apply to the same person.

### Profiles in preset security policies

A profile determines the level of protection. The following profiles are available:

- **Standard protection**: A baseline protection profile that's suitable for most users.
- **Strict protection**: A more aggressive protection profile for selected users (high value targets or priority users).

  for **Standard protection** and **Strict protection**, you use rules with conditions and exceptions to determine the internal recipients that the policy applies to (recipient conditions).

  The available conditions and exceptions are:

  - **Users**: The specified mailboxes, mail users, or mail contacts.
  - **Groups**:
    - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups are not supported).
    - The specified Microsoft 365 Groups.
  - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

  You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

  > [!IMPORTANT]
  > Multiple different types of conditions or exceptions are not additive; they're inclusive. The preset security policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
  >
  > - Users: romain@contoso.com
  > - Groups: Executives
  >
  > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
  >
  > Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

- **Built-in protection** (Defender for Office 365 only): A profile that enables Safe Links and Safe Attachments protection only. This profile effectively provides default policies for Safe Links and Safe Attachments, which never had default policies.

  For **Built-in protection**, the preset security policy is on by default for all Defender for Office 365 customers. You can also configure exceptions based on **Users**, **Groups**, and **Domains** so the protection isn't applied to specific users.

  > [!IMPORTANT]
  > Unless you configure exceptions to **Built-in protection**, all recipients in the organization will receive Safe Links and Safe Attachments protection.

Until you assign the policies to users, the **Standard** and **Strict** preset security policies are assigned to no one. In contrast, the **Built-in protection** preset security policy is assigned to all recipients by default, but you can configure exceptions.

### Policies in preset security policies

Preset security policies use the corresponding policies from the various protection features in EOP and Microsoft Defender for Office 365. These policies are created _after_ you assign the **Standard protection** or **Strict protection** preset security policies to users. You can't modify the settings in these policies.

- **Exchange Online Protection (EOP) policies**: These policies are in all Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:

  - [Anti-spam policies](anti-spam-policies-configure.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [Anti-malware policies](anti-malware-policies-configure.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [Anti-phishing policies (spoofing protection)](anti-phishing-policies-about.md#spoof-settings) named **Standard Preset Security Policy** and **Strict Preset Security Policy** (spoof settings).

  > [!NOTE]
  > Outbound spam policies are not part of preset security policies. The default outbound spam policy automatically protects members of preset security policies. Or, you can create custom outbound spam policies to customize the protection for members of preset security policies. For more information, see [Configure outbound spam filtering in EOP](outbound-spam-policies-configure.md).

- **Microsoft Defender for Office 365 policies**: These policies are in organizations with Microsoft 365 E5 or Defender for Office 365 add-on subscriptions:
  - Anti-phishing policies in Defender for Office 365 named **Standard Preset Security Policy** and **Strict Preset Security Policy**, which include:
    - The same [spoof settings](anti-phishing-policies-about.md#spoof-settings) that are available in the EOP anti-phishing policies.
    - [Impersonation settings](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
    - [Advanced phishing thresholds](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Links policies](safe-links-policies-configure.md) named **Standard Preset Security Policy**, **Strict Preset Security Policy**, and **Built-in Protection Policy**.
  - [Safe Attachments policies](safe-attachments-policies-configure.md) named **Standard Preset Security Policy**, **Strict Preset Security Policy**, and **Built-in Protection Policy**.

You can apply EOP protections to different users than Defender for Office 365 protections, or you can apply EOP and Defender for Office 365 to the same recipients.

### Policy settings in preset security policies

You can't modify the policy settings in the protection profiles. The **Standard**, **Strict**, and **Built-in protection** policy setting values, including the default [quarantine policies](quarantine-policies.md) that are used, are listed in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

> [!NOTE]
> In Defender for Office 365 protections, you need to identify the senders for [user impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) and the internal or external domains for [domain impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).
>
> All domains that you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) automatically receive domain impersonation protection in preset security policies.
>
> All recipients automatically receive impersonation protection from [mailbox intelligence](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) in preset security policies.

### Order of precedence for preset security policies and other policies

When multiple policies are applied to a user, the following order is applied from highest priority to lowest priority:

1. Strict preset security policy.
2. Standard preset security policy.
3. Custom policies. Custom policies are applied based on the priority value of the policy.
4. Built-in protection preset security policy for Safe Links and Safe Attachments; default policies for anti-malware, anti-spam, and anti-phishing.

In other words, the settings of the **Strict** preset security policy override the settings of the **Standard** preset security policy, which overrides the settings from any custom policies, which override the settings of the **Built-in protection** preset security policy for Safe Links and Safe Attachments, and the default policies for anti-spam, anti-malware, and anti-phishing.

For example, a security setting exists in **Standard protection** and an admin specifies a user for **Standard protection**. The **Standard protection** setting is applied to the user instead of what's configured for that setting in a custom policy or in the default policy for the same user.

You might want to apply the **Standard** or **Strict** preset security policies to a subset of users, and apply custom policies to other users in your organization to meet specific needs. To meet this requirement, do the following steps:

- Configure the users who should get the settings of the **Standard** preset security policy and custom policies as exceptions in the **Strict** preset security policy.
- Configure the users who should get the settings of custom policies as exceptions in the **Standard** preset security policy.

**Built-in protection** does not affect recipients in existing Safe Links or Safe Attachments policies. If you've already configured **Standard protection**, **Strict protection** or custom Safe Links or Safe Attachments policies, those policies are _always_ applied _before_ **Built-in protection**, so there's no impact to the recipients who are already defined in those existing preset or custom policies.

## Assign preset security policies to users

### What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): **configuration/security (manage)** or **configuration/security (read)**. Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Configure preset security policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to preset security policies_: Membership in the **Global Reader** role group.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, or **Global Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

### Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

2. On the **Preset security policies** page, click **Manage** in the **Standard protection** or **Strict protection** sections.

3. The **Apply Standard protection** or **Apply Strict protection** wizard starts in a flyout.

   On the **Apply Exchange Online Protection** page, identify the internal recipients that the [EOP protections](#policies-in-preset-security-policies) apply to (recipient conditions):
   - **All recipients**
   - **Specific recipients**:
     - **Users**
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups are not supported).
       - The specified Microsoft 365 Groups.
   - **Domains**

     Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

     For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   - **None**

   - **Exclude these recipients**: To add exceptions for the internal recipients that the policy applies to (recipient exceptions), select this option and configure the exceptions. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

   > [!NOTE]
   > In organizations without Defender for Office 365, clicking **Next** takes you to the **Review** page. The remaining steps/pages before the **Review** page are available only in organizations with Defender for Office 365.

4. On the **Apply Defender for Office 365 protection** page, identify the internal recipients that the [Defender for Office 365 protections](#policies-in-preset-security-policies) apply to (recipient conditions).

   The settings and behavior are exactly like the **EOP protections apply to** page in the previous step.

   You can also select **Previously selected recipients** to use the same recipients that you selected for EOP protection on the previous page.

   When you're finished, click **Next**.

5. On the **Impersonation protection** page, click **Next**.

6. On the **Add email addresses to flag when impersonated by attackers** page, add internal and external senders who are protected by [user impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   > [!NOTE]
   > All recipients automatically receive impersonation protection from [mailbox intelligence](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) in preset security policies.
   >
   > You can specify a maximum of 350 users for user impersonation protection in the Standard or Strict preset security policy.
   >
   > User impersonation protection does not work if the sender and recipient have previously communicated via email. If the sender and recipient have never communicated via email, the message can be identified as an impersonation attempt.

   Each entry consists of a display name and an email address. Enter each value in the boxes and then click **Add**. Repeat this step as many times as necessary.

   To remove an existing entry from the list, click ![Remove user from impersonation protection icon.](../../media/m365-cc-sc-remove.png).

   When you're finished, click **Next**.

7. On the **Add domains to flag when impersonated by attackers** page, add internal and external domains that are protected by [domain impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   > [!NOTE]
   > All domains that you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) automatically receive domain impersonation protection in preset security policies.
   >
   > You can specify a maximum of 50 custom domains for domain impersonation protection in the Standard or Strict preset security policy.

   All senders in the specified domains are protected by domain impersonation protection.

   Enter the domain in the box, and then click **Add**. Repeat this step as many times as necessary.

   To remove an existing entry from the list, select the entry, and then click ![Remove domain from impersonation protection icon.](../../media/m365-cc-sc-remove.png).

   When you're finished, click **Next**.

8. On the **Add trusted email addresses and domains to not flag as impersonation** page, enter the sender email addresses and domains that you want excluded from impersonation protection. Messages from these senders will never be flagged as an impersonation attack, but the senders are still subject to scanning by other filters in EOP and Defender for Office 365.

   > [!NOTE]
   > Trusted domain entries don't include subdomains of the specified domain. You need to add an entry for each subdomain.

   Enter the email address or domain in the box, and then click **Add**. Repeat this step as many times as necessary.

   To remove an existing entry from the list, select the entry, and then click ![Remove exceptions to impersonation protection icon.](../../media/m365-cc-sc-remove.png).

   When you're finished, click **Next**.

9. On the **Review and confirm this policy** page, verify your selections, and then click **Confirm**.

### Use the Microsoft 365 Defender portal to modify the assignments of Standard and Strict preset security policies

The steps to modify the assignment of the **Standard protection** or **Strict protection** preset security policy are the same as when you initially [assigned the preset security policies to users](#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

To disable the **Standard protection** or **Strict protection** preset security policies while still preserving the existing conditions and exceptions, slide the toggle to **Disabled** ![Toggle Off.](../../media/scc-toggle-off.png). To enable the policies, slide the toggle to **Enabled** ![Toggle On](../../media/scc-toggle-on.png).

### Use the Microsoft 365 Defender portal to modify the assignments of the Built-in protection preset security policy

Remember, the **Built-in protection** preset security policy is assigned to all recipients, and doesn't affect recipients who are defined in the **Standard protection** or **Strict protection** preset security policies, or custom Safe Links or Safe Attachments policies.

Therefore, we typically don't recommend exceptions to the **Built-in protection** preset security policy.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

2. On the **Preset security policies** page, select **Add exclusions (not recommended)** in the **Built-in protection** section.

3. On the **Exclude from Built-in protection** flyout that appears, identify the internal recipients that are excluded from the built-in Safe Links and Safe Attachments protection:
   - **Users**
   - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups are not supported).
       - The specified Microsoft 365 Groups.
   - **Domains**

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, click remove ![Remove exclusions from Built-in protection icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   When you're finished, click **Save**.

### How do you know these procedures worked?

To verify that you've successfully assigned the **Standard protection** or **Strict protection** security policy to a user, use a protection setting where the default value is different than the **Standard protection** setting, which is different that the **Strict protection** setting.

For example, for email that's detected as spam (not high confidence spam) verify that the message is delivered to the Junk Email folder for **Standard protection** users, and quarantined for **Strict protection** users.

Or, for [bulk mail](anti-spam-bulk-complaint-level-bcl-about.md), verify that the BCL value 6 or higher delivers the message to the Junk Email folder for **Standard protection** users, and the BCL value 4 or higher quarantines the message for **Strict protection** users.

## Preset security policies in Exchange Online PowerShell

In PowerShell, preset security policies consist of the following elements:

- **Individual security policies**: For example, anti-malware policies, anti-spam policies, anti-phishing policies, Safe Links policies, and Safe Attachments policies.

  > [!WARNING]
  > Do not attempt to create, modify, or remove the individual security policies that are associated with preset security policies. The only supported method for creating the individual security policies for Standard or Strict preset security policies is to turn on the preset security policy in the Microsoft 365 Defender portal for the first time.

- **Rules**: Separate rules for the Standard preset security policy, the Strict preset security policy, and the Built-in protection preset security policy define the recipient conditions and exceptions for the policies (identify the recipients that the protections of the policy apply to).

  For the Standard and Strict preset security policies, these rules are created the first time you turn on the preset security policy in the Microsoft 365 Defender portal. If you've never turned on the preset security policy, the associated rules don't exist. Subsequently turning off the preset security policy does not delete the associated rules.

  The Built-in protection preset security policy has a single rule that controls exceptions to the default Safe Links and Safe Attachments protection of the policy.

  The Standard and Strict preset security policies have the following rules:

  - **Rules for Exchange Online Protection (EOP) protections**: The rule for the Standard Preset security policy and the rule for the Strict preset security policy controls who the EOP protections in the policy (anti-malware, anti-spam, and anti-phishing) apply to (the recipient conditions and exceptions for EOP protections).
  - **Rules for Defender for Office 365 protections**: The rule for the Standard Preset security policy and the rule for the Strict preset security policy controls who the Defender for Office 365 protections in the policy (Safe Links and Safe Attachments) apply to (the recipient conditions and exceptions for Defender for Office 365 protections).

  The rules for Standard and Strict preset security policies also allow you to turn on or turn of the preset security policy by enabling or disabling the rules that are associated with the policies.

  The rules for preset security policies are not available to the regular rule cmdlets that work for individual security policies (for example, **Get-AntiPhishRule**). Instead, the following cmdlets are required:

  - Built-in protection preset security policy: **\*-ATPBuiltInProtectionRule** cmdlets.
  - Standard and strict preset security policies: **\*-EOPProtectionPolicyRule** and **\*-ATPProtectionPolicyRule** cmdlets.

The following sections describe how to use these cmdlets in **supported scenarios**.

To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

### Use PowerShell to view individual security policies for preset security policies

Remember, if you never turned on the Standard preset security policy or the Strict preset security policy in the Microsoft 365 Defender portal, the associated security policies for the preset security policy don't exist.

> [!WARNING]
> Do not attempt to create, modify, or remove the individual security policies that are associated with preset security policies. The only supported method for creating the individual security policies for Standard or Strict preset security policies is to turn on the preset security policy in the Microsoft 365 Defender portal for the first time.

- **Built-in protection preset security policy**: The associated policies are named Built-In Protection Policy. The IsBuiltInProtection property value is True for these policies.

  To view the individual security policies for the Built-in protection preset security policy, run the following command:

  ```powershell
  Write-Output -InputObject ("`r`n"*3),"Built-in protection Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy -Identity "Built-In Protection Policy" | Format-List; Write-Output -InputObject ("`r`n"*3),"Built-in protection Safe Links policy",("-"*79);Get-SafeLinksPolicy -Identity "Built-In Protection Policy" | Format-List
  ```

- **Standard preset security policy**: The associated policies are named `Standard Preset Security Policy<13-digit number>`. For example, `Standard Preset Security Policy1622650008019`. The RecommendPolicyType property value is Standard.

  - **Organizations without Defender for Microsoft 365**:

    To view the individual security policies for the Standard preset security policy in organizations without Defender for Microsoft 365, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Standard anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"
    ```

  - **Organizations with Defender for Microsoft 365**:

    To view the individual security policies for the Standard preset security policy in organizations with Defender for Microsoft 365, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Standard anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard Safe Links policy",("-"*79);Get-SafeLinksPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"
    ```

- **Strict preset security policy**: The associated policies are named `Strict Preset Security Policy<13-digit number>`. For example, `Strict Preset Security Policy1642034872546`. The RecommendPolicyType property value is Strict.

  - **Organizations without Defender for Microsoft 365**:

    - To view the individual security policies for the Strict preset security policy in organizations without Defender for Microsoft 365, run the following command:

      ```powershell
      Write-Output -InputObject ("`r`n"*3),"Strict anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"
      ```

  - **Organizations with Defender for Microsoft 365**:

    - To view the individual security policies for the Strict preset security policy in organizations with Defender for Microsoft 365, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Strict anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict Safe Links policy",("-"*79);Get-SafeLinksPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"
    ```

### Use PowerShell to view rules for preset security policies

Remember, if you never turned on the Standard preset security policy or the Strict preset security policy in the Microsoft 365 Defender portal, the associated rules for those policies don't exist.

- **Built-in protection preset security policy**: The associated rule is named ATP Built-In Protection Rule.

  To view the rule that's associated with the Built-in protection preset security policy, run the following command:

  ```powershell
  Get-ATPBuiltInProtectionRule
  ```

  For detailed syntax and parameter information, see [Get-ATPBuiltInProtectionRule](/powershell/module/exchange/get-atpbuiltinprotectionrule).

- **Standard preset security policy**: The associated rules are named Standard Preset Security Policy.

  Use the following commands to view the rules that are associated with the Standard preset security policy:

  - To view the rule that's associated with EOP protections in the Standard preset security policy, run the following command:

    ```powershell
    Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - To view the rule that's associated with Defender for Office 365 protections in the Standard preset security policy, run the following command:

    ```powershell
    Get-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - To view both rules at the same time, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"EOP rule - Standard preset security policy",("-"*79);Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"; Write-Output -InputObject ("`r`n"*3),"Defender for Office 365 rule - Standard preset security policy",("-"*79);Get-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

- **Strict preset security policy**: The associated rules are named Strict Preset Security Policy.

  Use the following commands to view the rules that are associated with the Strict preset security policy:

  - To view the rule that's associated with EOP protections in the Strict preset security policy, run the following command:

    ```powershell
    Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

  - To view the rule that's associated with Defender for Office 365 protections in the Strict preset security policy, run the following command:

    ```powershell
    Get-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

  - To view both rules at the same time, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"EOP rule - Strict preset security policy",("-"*79);Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"; Write-Output -InputObject ("`r`n"*3),"Defender for Office 365 rule - Strict preset security policy",("-"*79);Get-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

For detailed syntax and parameter information, see [Get-EOPProtectionPolicyRule](/powershell/module/exchange/get-eopprotectionpolicyrule) and [Get-ATPProtectionPolicyRule](/powershell/module/exchange/get-atpprotectionpolicyrule).

### Use PowerShell to turn on or turn off preset security policies

As described earlier, To turn on or turn off the Standard or Strict preset security policies, you enable or disable the rules that are associated with policy. The State property value of the rule shows whether the rule is Enabled or Disabled.

Depending on whether your organization has Defender for Office 365, you might need to enable or disable one rule (the rule for EOP protections) or two rules (one rule for EOP protections, and one rule for Defender for Office 365 protections) to turn on or turn off the preset security policy.

- **Standard preset security policy**:

  - **Organizations without Defender for Office 365**:

    - In organizations without Defender for Office 365, run the following command to determine whether the rule for the Standard preset policy is currently enabled or disabled:

      ```powershell
      Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy" | Format-Table Name,State
      ```

    - Run the following command to turn off the Standard preset security policy if it's turned on:

      ```powershell
      Disable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
      ```

    - Run the following command to turn on the Standard preset security policy if it's turned off:

      ```powershell
      Enable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
      ```

  - **Organizations with Defender for Office 365**:

    - In organizations with Defender for Office 365, run the following command to determine whether the rules for the Standard preset policy are currently enabled or disabled:

      ```powershell
      Write-Output -InputObject ("`r`n"*3),"EOP rule - Standard preset security policy",("-"*63);Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy" | Format-Table Name,State; Write-Output -InputObject `r`n,"Defender for Office 365 rule - Standard preset security policy",("-"*63);Get-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy" | Format-Table Name,State
      ```

    - Run the following command to turn off the Standard preset security policy if it's turned on:

      ```powershell
      Disable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"; Disable-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
      ```

    - Run the following command to turn on the Standard preset security policy if it's turned off:

      ```powershell
      Enable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"; Enable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
      ```

- **Strict preset security policy**:

  - **Organizations without Defender for Office 365**:

    - In organizations with Defender for Office 365, run the following command to determine whether the rule for the Strict preset policy is currently enabled or disabled:

      ```powershell
      Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy" | Format-Table Name,State
      ```

    - Run the following command to turn off the Strict preset security policy if it's turned on:

      ```powershell
      Disable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
      ```

    - Run the following command to turn on the Strict preset security policy if it's turned off:

      ```powershell
      Enable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
      ```

  - **Organizations with Defender for Office 365**:

    - In organizations with Defender for Office 365, run the following command to determine whether the rules for the Strict preset policy are currently enabled or disabled:

      ```powershell
      Write-Output -InputObject ("`r`n"*3),"EOP rule - Strict preset security policy",("-"*63);Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy" | Format-Table Name,State; Write-Output -InputObject `r`n,"Defender for Office 365 rule - Strict preset security policy",("-"*63);Get-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy" | Format-Table Name,State
      ```

    - Run the following command to turn off the Strict preset security policy if it's turned on:

      ```powershell
      Disable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"; Disable-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
      ```

    - Run the following command to turn on the Strict preset security policy if it's turned off:

      ```powershell
      Enable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"; Enable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
      ```

For detailed syntax and parameter information, see [Enable-EOPProtectionPolicyRule](/powershell/module/exchange/enable-eopprotectionpolicyrule), [Enable-ATPProtectionPolicyRule](/powershell/module/exchange/enable-atpprotectionpolicyrule), [Disable-EOPProtectionPolicyRule](/powershell/module/exchange/disable-eopprotectionpolicyrule), and [Disable-ATPProtectionPolicyRule](/powershell/module/exchange/disable-atpprotectionpolicyrule).

### Use PowerShell to specify recipient conditions and exceptions for preset security policies

> [!IMPORTANT]
  > Multiple different types of conditions or exceptions are not additive; they're inclusive. The preset security policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
  >
  > - Users: romain@contoso.com
  > - Groups: Executives
  >
  > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
  >
  > Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

For the Built-in protection preset security policy, you can only specify recipient exceptions. If all exception parameter values are empty (`$null`), there are no exceptions to the policy.

For the Standard and Strict preset security policies, you can specify recipient conditions and exceptions for EOP protections and Defender for Office 365 protections. If all of conditions and exception parameter values are empty (`$null`), there are no recipient conditions or exceptions to the Standard or Strict preset security policies.

Even if there are no recipient conditions or exceptions applied to a preset security policy, whether the policy is applied to all recipients depends on the [the order of precedence for policies](#order-of-precedence-for-preset-security-policies-and-other-policies) as previously described in this article.

- **Built-in protection preset security policy**:

  Use the following syntax:

  ```powershell
  Set-ATPBuiltInProtectionRule -Identity "ATP Built-In Protection Rule" -ExceptIfRecipientDomainIs <"domain1","domain2",... | $null> -ExceptIfSentTo <"user1","user2",... | $null> -ExceptIfSentToMemberOf <"group1","group2",... | $null>
  ```

  This example removes all recipient exceptions from the Built-in protection preset security policy.

  ```powershell
  Set-ATPBuiltInProtectionRule -Identity "ATP Built-In Protection Rule" -ExceptIfRecipientDomainIs $null -ExceptIfSentTo $null -ExceptIfSentToMemberOf $null
  ```

  For detailed syntax and parameter information, see [Set-ATPBuiltInProtectionRule](/powershell/module/exchange/set-atpbuiltinprotectionrule).

- **Standard or Strict preset security policies**

  Use the following syntax:

  ```powershell
  <Set-EOPProtectionPolicyRule | SetAtpProtectionPolicyRule> -Identity "<Standard Preset Security Policy | Strict Preset Security Policy>" -SentTo <"user1","user2",... | $null> -ExceptIfSentTo <"user1","user2",... | $null> -SentToMemberOf <"group1","group2",... | $null> -ExceptIfSentToMemberOf <"group1","group2",... | $null> -RecipientDomainIs <"domain1","domain2",... | $null> -ExceptIfRecipientDomainIs <"domain1","domain2",... | $null>
  ```

  This example configures exceptions from the EOP protections in the Standard preset security policy for members of the distribution group named Executives.

  ```powershell
  Set-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy" -ExceptIfSentToMemberOf Executives
  ```

  This example configures exceptions from the Defender for Office 365 protections in the Strict preset security policy for the specified security operations (SecOps) mailboxes.

  ```powershell
  Set-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy" -ExceptIfSentTo "SecOps1","SecOps2"
  ```

  For detailed syntax and parameter information, see [Set-EOPProtectionPolicyRule](/powershell/module/exchange/set-eopprotectionpolicyrule) and [Set-ATPProtectionPolicyRule](/powershell/module/exchange/Set-atpprotectionpolicyrule).
