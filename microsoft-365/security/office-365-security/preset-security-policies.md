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
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Preset security policies in EOP and Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

_Preset security policies_ allow you to apply protection features to users based on our recommended settings. Unlike custom policies that are infinitely configurable, virtually all of the settings in preset security policies aren't configurable, and are based on our observations in the datacenters. The settings in preset security policies provide a balance between keeping harmful content away from users while avoiding unnecessary disruptions.

Depending on your organization, preset security policies provide the protection features that are available in [Exchange Online Protection (EOP)](eop-about.md) and [Microsoft Defender for Office 365](microsoft-defender-for-office-365-product-overview.md).

The following preset security policies are available:

- **Standard** preset security policy
- **Strict** preset security policy
- **Built-in protection** preset security policy (default policies for Safe Attachments and Safe Links protection in Defender for Office 365)

For details about these preset security policies, see the [Appendix](#appendix) section at the end of this article.

The rest of this article how to configure preset security policies.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Configure preset security policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to preset security policies_: Membership in the **Global Reader** role group.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, or **Global Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. Or, to go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

2. If this is your first time on the **Preset security policies** page, it's likely that **Standard protection** and **Strict protection** are turned off :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

   Slide the toggle of the one you want to configure to :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, and then select **Manage protection settings** to start the configuration wizard.

3. On the **Apply Exchange Online Protection** page, identify the internal recipients that the [EOP protections](#policies-in-preset-security-policies) apply to (recipient conditions):

   - **All recipients**

   - **Specific recipients**: Configure one of the following settings that appears:
     - **Users**: The specified mailboxes, mail users, or mail contacts.
     - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
       - The specified Microsoft 365 Groups.
     - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users or groups, enter an asterisk (\*) by itself to see all available values.

   Multiple values in the same condition use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   > [!IMPORTANT]
   > Multiple different types of conditions or exceptions aren't additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
   >
   > - Users: romain@contoso.com
   > - Groups: Executives
   >
   > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy isn't applied to him.
   >
   > Likewise, if you use the same recipient filter as an exception to the policy, the policy isn't applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

   - **None**

   - **Exclude these recipients**: If you selected **All recipients** or **Specific recipients**, select this option and configure the recipient exceptions. The settings and behavior are exactly like the recipient conditions.

   When you're finished on the **Apply Exchange Online Protection** page, select **Next**.

   > [!NOTE]
   > In organizations without Defender for Office 365, selecting **Next** takes you to the **Review** page (Step 9).

4. On the **Apply Defender for Office 365 protection** page, identify the internal recipients that the [Defender for Office 365 protections](#policies-in-preset-security-policies) apply to (recipient conditions).

   The settings and behavior are exactly like the **Apply Exchange Online Protection** page in the previous step.

   You can also select **Previously selected recipients** to use the same recipients that you selected for EOP protection on the previous page.

   When you're finished on the **Apply Defender for Office 365 protection** page, select **Next**.

5. On the **Impersonation protection** page, select **Next**.

6. On the **Add email addresses to flag when impersonated by attackers** page, add internal and external senders who are protected by [user impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   > [!NOTE]
   > All recipients automatically receive impersonation protection from [mailbox intelligence](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) in preset security policies.
   >
   > You can specify a maximum of 350 users for user impersonation protection in the Standard or Strict preset security policy.
   >
   > User impersonation protection doesn't work if the sender and recipient have previously communicated via email. If the sender and recipient have never communicated via email, the message can be identified as an impersonation attempt.

   Each entry consists of a display name and an email address:

   - **Internal users**: Click in the **Add a valid email** box or start typing the user's email address. Select the email address in the **Suggested contacts** dropdown list that appears. The user's display name is added to the **Add a name** box (which you can change). When you're finished selecting the user, select **Add**.

   - **External users**: Type the external user's full email address in the **Add a valid email** box, and then select the email address in the **Suggested contacts** dropdown list that appears. The email address is also added in the **Add a name** box (which you can change to a display name).

   Repeat these steps as many times as necessary.

   The users you added are listed on the page by **Display name** and **Sender email address**. To remove a user, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: next to the entry.

   Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the page.

   When you're finished on the **Apply Defender for Office 365 protection** page, select **Next**.

7. On the **Add domains to flag when impersonated by attackers** page, add internal and external domains that are protected by [domain impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   > [!NOTE]
   > All domains that you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) automatically receive domain impersonation protection in preset security policies.
   >
   > You can specify a maximum of 50 custom domains for domain impersonation protection in the Standard or Strict preset security policy.

   Click in the **Add domains** box, enter a domain value, press the ENTER key or select the value that's displayed below the box. To remove a domain from the box and start over, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the domain. When you're ready to add the domain, select **Add**. Repeat this step as many times as necessary.

  The domains you added are listed on the page. To remove the domain, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   The domains you added are listed on the page. To remove a domain, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: next to the entry.

   To remove an existing entry from the list, select :::image type="icon" source="../../media/m365-cc-sc-remove-icon.png" border="false"::: next to the entry.

   When you're finished on the **Add domains to flag when impersonated by attackers**, select **Next**.

8. On the **Add trusted email addresses and domains to not flag as impersonation** page, enter the sender email addresses and domains that you to exclude from impersonation protection. Messages from these senders are never flagged as an impersonation attack, but the senders are still subject to scanning by other filters in EOP and Defender for Office 365.

   > [!NOTE]
   > Trusted domain entries don't include subdomains of the specified domain. You need to add an entry for each subdomain.

   Enter the email address or domain in the box, and then press the ENTER key or select the value that's displayed below the box. To remove a value from the box and start over, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value. When you're ready to add the user or domain, select **Add**. Repeat this step as many times as necessary.

   The users and domains you added are listed on the page by **Name** and **Type**. To remove an entry, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: next to the entry.

   When you're finished on the **Add trusted email addresses and domains to not flag as impersonation** page, select **Next**.

9. On the **Review and confirm your changes** page, review your settings. You can select **Back** or the specific page in the wizard to modify the settings.

   When you're finished on the **Review and confirm your changes** page, select **Confirm**.

10. On the **Standard protection updated** or **Strict protection updated** page, select **Done**.

## Use the Microsoft 365 Defender portal to modify the assignments of Standard and Strict preset security policies

The steps to modify the assignment of the **Standard protection** or **Strict protection** preset security policy are the same as when you initially [assigned the preset security policies to users](#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

To disable the **Standard protection** or **Strict protection** preset security policies while still preserving the existing conditions and exceptions, slide the toggle to :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::. To enable the policies, slide the toggle to :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

## Use the Microsoft 365 Defender portal to add exclusions to the Built-in protection preset security policy

> [!TIP]
> The **Built-in protection** preset security policy is assigned to all recipients, and doesn't affect recipients who are defined in the **Standard** or **Strict** preset security policies, or in custom Safe Links or Safe Attachments policies. Therefore, we typically don't recommend exceptions to the **Built-in protection** preset security policy.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Preset Security Policies** in the **Templated policies** section. Or, to go directly to the **Preset security policies** page, use <https://security.microsoft.com/presetSecurityPolicies>.

2. On the **Preset security policies** page, select **Add exclusions (not recommended)** in the **Built-in protection** section.

3. In the **Exclude from Built-in protection** flyout that opens, identify the internal recipients that are excluded from the built-in Safe Links and Safe Attachments protection:
   - **Users**
   - **Groups**:
       - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
       - The specified Microsoft 365 Groups.
   - **Domains**

   Click in the appropriate box, start typing a value, and then select the value that's displayed below the box. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users, enter an asterisk (\*) by itself to see all available values.

   > [!IMPORTANT]
   > Multiple different types of exceptions aren't additive; they're inclusive. The policy isn't applied _only_ if those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter exception with the following values:
   >
   > - Users: romain@contoso.com
   > - Groups: Executives
   >
   > The policy isn't applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

4. When you're finished in the **Exclude from Built-in protection** flyout, select **Save**.

## How do you know these procedures worked?

To verify that you've successfully assigned the **Standard protection** or **Strict protection** security policy to a user, use a protection setting where the default value is different than the **Standard protection** setting, which is different that the **Strict protection** setting.

For example, for email that's detected as spam (not high confidence spam) verify that the message is delivered to the Junk Email folder for **Standard protection** users, and quarantined for **Strict protection** users.

Or, for [bulk mail](anti-spam-bulk-complaint-level-bcl-about.md), verify that the BCL value 6 or higher delivers the message to the Junk Email folder for **Standard protection** users, and the BCL value 4 or higher quarantines the message for **Strict protection** users.

## Preset security policies in Exchange Online PowerShell

In PowerShell, preset security policies consist of the following elements:

- **Individual security policies**: For example, anti-malware policies, anti-spam policies, anti-phishing policies, Safe Links policies, and Safe Attachments policies. These policies are visible using the standard policy management cmdlets in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):
  - <u>EOP policies</u>:
     - **[Get-AntiPhishPolicy](/powershell/module/exchange/get-antiphishpolicy)**
     - **[Get-HostedContentFilterPolicy](/powershell/module/exchange/get-hostedcontentfilterpolicy)** (anti-spam policies)
     - **[Get-MalwareFilterPolicy](/powershell/module/exchange/get-malwarefilterpolicy)**
  - <u>Defender for Office 365 policies</u>:
     - **[Get-SafeAttachmentPolicy](/powershell/module/exchange/get-safeattachmentpolicy)**
     - **[Get-SafeLinksPolicy](/powershell/module/exchange/get-safesafelinkspolicy)**

  > [!WARNING]
  > Do not attempt to create, modify, or remove the individual security policies that are associated with preset security policies. The only supported method for creating the individual security policies for Standard or Strict preset security policies is to turn on the preset security policy in the Microsoft 365 Defender portal for the first time.

- **Rules**: Separate rules are used for the Standard preset security policy, the Strict preset security policy, and the Built-in protection preset security policy. The rules define the recipient conditions and exceptions for the policies (who the policies apply to). You manage these rules using the following cmdlets in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):
  - <u>Rules for Exchange Online Protection (EOP) protections</u>:
    - **[Disable-EOPProtectionPolicyRule](/powershell/module/exchange/disable-eopprotectionpolicyrule)**
    - **[Enable-EOPProtectionPolicyRule](/powershell/module/exchange/enable-eopprotectionpolicyrule)**
    - **[Get-EOPProtectionPolicyRule](/powershell/module/exchange/get-eopprotectionpolicyrule)**
    - **[New-EOPProtectionPolicyRule](/powershell/module/exchange/new-eopprotectionpolicyrule)**
    - **[Set-EOPProtectionPolicyRule](/powershell/module/exchange/set-eopprotectionpolicyrule)**
  - <u>Rules for Defender for Office 365 protections</u>:
    - **[Disable-ATPProtectionPolicyRule](/powershell/module/exchange/disable-atpprotectionpolicyrule)**
    - **[Enable-ATPProtectionPolicyRule](/powershell/module/exchange/enable-atpprotectionpolicyrule)**
    - **[Get-ATPProtectionPolicyRule](/powershell/module/exchange/get-atpprotectionpolicyrule)**
    - **[New-ATPProtectionPolicyRule](/powershell/module/exchange/new-atpprotectionpolicyrule)**
    - **[Set-ATPProtectionPolicyRule](/powershell/module/exchange/set-atpprotectionpolicyrule)**
  - <u>The rule for the Build-in protection preset security policy</u>:
    - **[Get-ATPBuiltInProtectionRule](/powershell/module/exchange/get-atpbuiltinprotectionrule)**
    - **[New-ATPBuiltInProtectionRule](/powershell/module/exchange/new-atpbuiltinprotectionrule)**
    - **[Set-ATPBuiltInProtectionRule](/powershell/module/exchange/set-atpbuiltinprotectionrule)**

  For the Standard and Strict preset security policies, these rules are created the first time you turn on the preset security policy in the Microsoft 365 Defender portal. If you never turned on the preset security policy, the associated rules don't exist. Turning off the preset security policy doesn't delete the associated rules.

The following sections describe how to use these cmdlets in **supported scenarios**.

To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

### Use PowerShell to view individual security policies for preset security policies

Remember, if you never turned on the Standard preset security policy or the Strict preset security policy in the Microsoft 365 Defender portal, the associated security policies for the preset security policy don't exist.

- **Built-in protection preset security policy**: The associated policies are named Built-In Protection Policy. The IsBuiltInProtection property value is True for these policies.

  To view the individual security policies for the Built-in protection preset security policy, run the following command:

  ```powershell
  Write-Output -InputObject ("`r`n"*3),"Built-in protection Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy -Identity "Built-In Protection Policy" | Format-List; Write-Output -InputObject ("`r`n"*3),"Built-in protection Safe Links policy",("-"*79);Get-SafeLinksPolicy -Identity "Built-In Protection Policy" | Format-List
  ```

- **Standard preset security policy**: The associated policies are named `Standard Preset Security Policy<13-digit number>`. For example, `Standard Preset Security Policy1622650008019`. The RecommendPolicyType property value for the policies is Standard.

  - To view the individual security policies for the Standard preset security policy in organizations with **EOP only**, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Standard anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"
    ```

  - To view the individual security policies for the Standard preset security policy in organizations with **Defender for Office 365**, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Standard anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"; Write-Output -InputObject ("`r`n"*3),"Standard Safe Links policy",("-"*79);Get-SafeLinksPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Standard"
    ```

- **Strict preset security policy**: The associated policies are named `Strict Preset Security Policy<13-digit number>`. For example, `Strict Preset Security Policy1642034872546`. The RecommendPolicyType property value for the policies is Strict.

  - To view the individual security policies for the Strict preset security policy in organizations with **EOP only**, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Strict anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"
    ```

  - To view the individual security policies for the Strict preset security policy in organizations with **Defender for Office 365**, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"Strict anti-malware policy",("-"*79);Get-MalwareFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-spam policy",("-"*79);Get-HostedContentFilterPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict anti-phishing policy",("-"*79);Get-AntiPhishPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict Safe Attachments policy",("-"*79);Get-SafeAttachmentPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"; Write-Output -InputObject ("`r`n"*3),"Strict Safe Links policy",("-"*79);Get-SafeLinksPolicy | Where-Object -Property RecommendedPolicyType -eq -Value "Strict"
    ```
### Use PowerShell to view rules for preset security policies

Remember, if you never turned on the Standard preset security policy or the Strict preset security policy in the Microsoft 365 Defender portal, the associated rules for those policies don't exist.

- **Built-in protection preset security policy**: There's only one rule named ATP Built-In Protection Rule.

  To view the rule that's associated with the Built-in protection preset security policy, run the following command:

  ```powershell
  Get-ATPBuiltInProtectionRule
  ```

- **Standard preset security policy**: The associated rules are named Standard Preset Security Policy.

  Use the following commands to view the rules that are associated with the Standard preset security policy:

  - To view the rule that's associated with **EOP protections** in the Standard preset security policy, run the following command:

    ```powershell
    Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - To view the rule that's associated with **Defender for Office 365 protections** in the Standard preset security policy, run the following command:

    ```powershell
    Get-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - To view **both rules** at the same time, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"EOP rule - Standard preset security policy",("-"*79);Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"; Write-Output -InputObject ("`r`n"*3),"Defender for Office 365 rule - Standard preset security policy",("-"*79);Get-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

- **Strict preset security policy**: The associated rules are named Strict Preset Security Policy.

  Use the following commands to view the rules that are associated with the Strict preset security policy:

  - To view the rule that's associated with **EOP protections** in the Strict preset security policy, run the following command:

    ```powershell
    Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

  - To view the rule that's associated with **Defender for Office 365 protections** in the Strict preset security policy, run the following command:

    ```powershell
    Get-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

  - To view **both rules** at the same time, run the following command:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"EOP rule - Strict preset security policy",("-"*79);Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"; Write-Output -InputObject ("`r`n"*3),"Defender for Office 365 rule - Strict preset security policy",("-"*79);Get-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

### Use PowerShell to turn on or turn off preset security policies

To turn on or turn off the Standard or Strict preset security policies in PowerShell, enable or disable the rules that are associated with policy. The State property value of the rule shows whether the rule is Enabled or Disabled.

If your organization has EOP only, you disable or enable the rule for EOP protections.

If your organization has Defender for Office 365, you enable or disable the rule for EOP protections and the rule for Defender for Office 365 protections (enable or disable both rules).

- **Organizations with EOP only**:

  - Run the following command to determine whether the rules for the Standard and Strict preset security policies are currently enabled or disabled:

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"EOP protection rule",("-"*50); Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy" | Format-Table Name,State; Write-Output -InputObject ("`r`n"*3),"EOP protection rule",("-"*50); Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy" | Format-Table Name,State
    ```

  - Run the following command to turn off the Standard preset security policy if it's turned on:

    ```powershell
    Disable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - Run the following command to turn off the Strict preset security policy if it's turned on:

    ```powershell
    Disable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

  - Run the following command to turn on the Standard preset security policy if it's turned off:

    ```powershell
    Enable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - Run the following command to turn on the Strict preset security policy if it's turned off:

    ```powershell
    Enable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

- **Organizations with Defender for Office 365**:

  - Run the following command to determine whether the rules for the Standard and Strict preset security policies are currently enabled or disabled:    

    ```powershell
    Write-Output -InputObject ("`r`n"*3),"EOP protection rule",("-"*50);Get-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy" | Format-Table Name,State; Write-Output -InputObject `r`n,"Defender for Office 365 protection rule",("-"*50);Get-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy" | Format-Table Name,State; Write-Output -InputObject ("`r`n"*3),"EOP protection rule",("-"*50);Get-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy" | Format-Table Name,State; Write-Output -InputObject `r`n,"Defender for Office 365 protection rule",("-"*50);Get-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy" | Format-Table Name,State
    ```

  - Run the following command to turn off the Standard preset security policy if it's turned on:

    ```powershell
    Disable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"; Disable-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - Run the following command to turn off the Strict preset security policy if it's turned on:

    ```powershell
    Disable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"; Disable-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

  - Run the following command to turn on the Standard preset security policy if it's turned off:

    ```powershell
    Enable-EOPProtectionPolicyRule -Identity "Standard Preset Security Policy"; Enable-ATPProtectionPolicyRule -Identity "Standard Preset Security Policy"
    ```

  - Run the following command to turn on the Strict preset security policy if it's turned off:

    ```powershell
    Enable-EOPProtectionPolicyRule -Identity "Strict Preset Security Policy"; Enable-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy"
    ```

### Use PowerShell to specify recipient conditions and exceptions for preset security policies

> [!IMPORTANT]
  > Multiple different types of conditions or exceptions aren't additive; they're inclusive. The preset security policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
  >
  > - Users: romain@contoso.com
  > - Groups: Executives
  >
  > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy isn't applied to him.
  >
  > Likewise, if you use the same recipient filter as an exception to the policy, the policy isn't applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

For the Built-in protection preset security policy, you can specify only recipient exceptions. If all exception parameter values are empty (`$null`), there are no exceptions to the policy.

For the Standard and Strict preset security policies, you can specify recipient conditions and exceptions for EOP protections and Defender for Office 365 protections. If all of conditions and exception parameter values are empty (`$null`), there are no recipient conditions or exceptions to the Standard or Strict preset security policies.

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
  Set-ATPProtectionPolicyRule -Identity "Strict Preset Security Policy" -ExceptIfSentTo "SecOps1","SecOps2"
  ```

  For detailed syntax and parameter information, see [Set-EOPProtectionPolicyRule](/powershell/module/exchange/set-eopprotectionpolicyrule) and [Set-ATPProtectionPolicyRule](/powershell/module/exchange/Set-atpprotectionpolicyrule).

## Appendix

Preset security policies consist of the following elements:

- [Profiles](#profiles-in-preset-security-policies)
- [Policies](#policies-in-preset-security-policies)
- [Policy settings](#policy-settings-in-preset-security-policies)

These elements are described in the following sections.

In addition, it's important to understand how preset security policies fit in the [order of precedence](#order-of-precedence-for-preset-security-policies-and-other-policies) with other policies.

### Profiles in preset security policies

A profile determines the level of protection. The following profiles are available for preset security policies:

- **Standard protection**: A baseline profile that's suitable for most users.
- **Strict protection**: A more aggressive profile for selected users (high value targets or priority users).
- **Built-in protection** (Microsoft Defender for Office 365 only): Effectively provides default policies for Safe Links and Safe Attachments only.

In general, the **Strict protection** profile tends to quarantine less harmful email (for example, bulk and spam) than the **Standard protection** profile, but many of the settings in both profiles are the same (in particular, for unquestionably harmful email like malware or phishing). For a comparison of the setting differences, see the tables in the next section.

Until you turn on the profiles and assign users to them, the Standard and Strict preset security policies are assigned to no one. In contrast, the Built-in protection preset security policy is assigned to all recipients by default, but you can configure exceptions.

> [!IMPORTANT]
> Unless you configure exceptions to the Built-in protection preset security policy, all recipients in the organization receive Safe Links and Safe Attachments protection.

### Policies in preset security policies

Preset security policies use special versions of the individual protection policies that are available in EOP and Microsoft Defender for Office 365. These policies are created _after_ you assign the **Standard protection** or **Strict protection** preset security policies to users.

- **EOP policies**: These policies are in all Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:

  - [Anti-spam policies](anti-spam-policies-configure.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [Anti-malware policies](anti-malware-policies-configure.md) named **Standard Preset Security Policy** and **Strict Preset Security Policy**.
  - [Anti-phishing policies (spoofing protection)](anti-phishing-policies-about.md#spoof-settings) named **Standard Preset Security Policy** and **Strict Preset Security Policy** (spoof settings).

  > [!NOTE]
  > Outbound spam policies aren't part of preset security policies. The default outbound spam policy automatically protects members of preset security policies. Or, you can create custom outbound spam policies to customize the protection for members of preset security policies. For more information, see [Configure outbound spam filtering in EOP](outbound-spam-policies-configure.md).

- **Microsoft Defender for Office 365 policies**: These policies are in organizations with Microsoft 365 E5 or Defender for Office 365 add-on subscriptions:
  - Anti-phishing policies in Defender for Office 365 named **Standard Preset Security Policy** and **Strict Preset Security Policy**, which include:
    - The same [spoof settings](anti-phishing-policies-about.md#spoof-settings) that are available in the EOP anti-phishing policies.
    - [Impersonation settings](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
    - [Advanced phishing thresholds](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Links policies](safe-links-policies-configure.md) named **Standard Preset Security Policy**, **Strict Preset Security Policy**, and **Built-in Protection Policy**.
  - [Safe Attachments policies](safe-attachments-policies-configure.md) named **Standard Preset Security Policy**, **Strict Preset Security Policy**, and **Built-in Protection Policy**.

As previously described, you can apply EOP protections to different users than Defender for Office 365 protections, or you can apply EOP and Defender for Office 365 protections to the same recipients.

### Policy settings in preset security policies

Fundamentally, you can't modify the individual policy settings in the protection profiles. The Standard, Strict, and Built-in protection policy setting values, including the associated [quarantine policies](quarantine-policies.md#anatomy-of-a-quarantine-policy), are listed in the feature tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

But, you need to configure the individual users (senders) and domains to receive [impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) in Defender for Office 365. Otherwise, preset security policies automatically configure the following types of impersonation protection:

- Domain impersonation protection for all domains that you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
- [Mailbox intelligence protection (contact history)](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

The differences in meaningful policy settings in the Standard preset security policy and the Strict preset security policy are summarized in the following table:

|&nbsp;|Standard|Strict|
|---|:---:|:---:|
|**Anti-malware policy**|No difference|No difference|
|**Anti-spam policy**|||
|&nbsp;&nbsp;**Bulk compliant level (BCL) met or exceeded** detection action (_BulkSpamAction_)|**Move message to Junk Email folder** (`MoveToJmf`)|**Quarantine message** (`Quarantine`)|
|&nbsp;&nbsp;**Bulk email threshold** (_BulkThreshold_)|7|6|
|&nbsp;&nbsp;**Spam** detection action (_SpamAction_)|**Move message to Junk Email folder** (`MoveToJmf`)|**Quarantine message** (`Quarantine`)|
|**Anti-phishing policy**|||
|&nbsp;&nbsp;**If the message is detected as spoof by spoof intelligence** (_AuthenticationFailAction_)|**Move message to Junk Email folder** (`MoveToJmf`)|**Quarantine message** (`Quarantine`)|
|&nbsp;&nbsp;**If mailbox intelligence detects an impersonated user** (_MailboxIntelligenceProtectionAction_)|**Move message to Junk Email folder** (`MoveToJmf`)|**Quarantine message** (`Quarantine`)|
|&nbsp;&nbsp;**Phishing email threshold** (_PhishThresholdLevel_)|**3 - More aggressive** (`3`)|**4 - Most aggressive** (`4`)|
|**Safe Attachments policy**|No difference|No difference|
|**Safe Links policy**|No difference|No difference|

The differences in Safe Attachments and Safe Links policy settings in the Built-in protection preset security policy and in the Standard and Strict preset security policies are summarized in the following table:

|&nbsp;|Built-in protection|Standard and Strict|
|---|:---:|:---:|
|**Safe Attachments policy**|No difference|No difference|
|**Safe Links policy**|||
|&nbsp;&nbsp;**Let users click through to the original URL** (_AllowClickThrough_)|Selected (`$true`)|Not selected (`$false`)|
|&nbsp;&nbsp;**Do not rewrite URLs, do checks via Safe Links API only** (_DisableURLRewrite_)|Selected (`$true`)|Not selected (`$false`)|
|&nbsp;&nbsp;**Apply Safe Links to email messages sent within the organization** (_EnableForInternalSenders_)|Not selected (`$false`)|Selected (`$true`)|

For details about these settings, see the feature tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

### Order of precedence for preset security policies and other policies

When a recipient is defined in multiple policies, the policies are applied in the following order:

1. The Strict preset security policy.
2. The Standard preset security policy.
3. [Defender for Office 365 evaluation policies](try-microsoft-defender-for-office-365.md#audit-mode-vs-blocking-mode-for-defender-for-office-365)
4. Custom policies based on the priority of the policy (a lower number indicates a higher priority).
5. The Built-in protection preset security policy for Safe Links and Safe Attachments; the default policies for anti-malware, anti-spam, and anti-phishing.

In other words, the settings of the Strict preset security policy override the settings of the Standard preset security policy, which overrides the settings from any anti-phishing, Safe Links, or Safe Attachments evaluation policies, which override the settings from any custom policies, which override the settings of the Built-in protection preset security policy for Safe Links and Safe Attachments, and the default policies for anti-spam, anti-malware, and anti-phishing.

This order is shown on the pages of the individual security policies in the Defender portal (the policies are applied in the order they're shown on the page).

For example, an admin configures the Standard preset security policy and a custom anti-spam policy with the same recipient. The anti-spam policy settings from the Standard preset security policy are applied to the user instead of what's configured in the custom anti-spam policy or in the default anti-spam policy.

Consider applying the Standard or Strict preset security policies to a subset of users, and apply custom policies to other users in your organization to meet specific needs. To meet this requirement, consider the following methods:

- Use unambiguous groups or lists of recipients in the Standard preset security policy, the Strict preset security, and in custom policies so exceptions aren't required. Using this method, you don't need to account for multiple policies applying to the same users and the effects of the order of precedence.
- If you can't avoid multiple policies applying to the same users, use the following strategies:
  - Configure recipients who should get the settings of the **Standard** preset security policy and custom policies as exceptions in the **Strict** preset security policy.
  - Configure recipients who should get the settings of custom policies as exceptions in the **Standard** preset security policy.
  - Configure recipients who should get the settings of the Built-in protection preset security policy or default policies as exceptions to custom policies.

The Built-in protection** doesn't affect recipients in existing Safe Links or Safe Attachments policies. If you already configured **Standard protection**, **Strict protection** or custom Safe Links or Safe Attachments policies, those policies are _always_ applied _before_ **Built-in protection**, so there's no effect on the recipients who are already defined in those existing preset or custom policies.

For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).
