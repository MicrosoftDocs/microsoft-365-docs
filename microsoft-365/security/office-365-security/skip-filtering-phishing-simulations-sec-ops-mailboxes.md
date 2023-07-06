---
title: Configure the advanced delivery policy for third-party phishing simulations and email delivery to SecOps mailboxes
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
ms.collection:
  - m365-security
  - tier3
ms.custom:
description: Admins can learn how to use the advanced delivery policy in Exchange Online Protection (EOP) to identify messages that shouldn't be filtered in specific supported scenarios (third-party phishing simulations and messages delivered to security operations (SecOps) mailboxes.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/23/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure the advanced delivery policy for third-party phishing simulations and email delivery to SecOps mailboxes

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

To keep your organization [secure by default](secure-by-default.md), Exchange Online Protection (EOP) doesn't allow safe lists or filtering bypass for messages that are identified as malware or high confidence phishing. But, there are specific scenarios that require the delivery of unfiltered messages. For example:

- **Third-party phishing simulations**: Simulated attacks can help you identify and train vulnerable users before a real attack impacts your organization.
- **Security operations (SecOps) mailboxes**: Dedicated mailboxes that are used by security teams to collect and analyze unfiltered messages (both good and bad).

Use the _advanced delivery policy_ in EOP to prevent inbound messages _in these specific scenarios_ from being filtered¹. The advanced delivery policy ensures that messages in these scenarios achieve the following results:

- Filters in EOP and Defender for Office 365 take no action on these messages.¹
- [Zero-hour Purge (ZAP)](zero-hour-auto-purge.md) for spam and phishing take no action on these messages².
- [Default system alerts](/microsoft-365/compliance/alert-policies#default-alert-policies) aren't triggered for these scenarios.
- [AIR and clustering in Defender for Office 365](air-about.md) ignores these messages.
- Specifically for third-party phishing simulations:
  - [Admin submission](submissions-admin.md) generates an automatic response saying that the message is part of a phishing simulation campaign and isn't a real threat. Alerts and AIR aren't triggered. The admin submissions experience shows these messages as a simulated threat.
  - When a user reports a phishing simulation message using the [built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web) or the [Microsoft Report Message or Report Phishing add-ins](submissions-outlook-report-messages.md#use-the-report-message-and-report-phishing-add-ins-in-outlook), the system doesn't generate an alert, investigation, or incident. The links or files aren't detonated, but the message appears on the **User reported** tab of the **Submissions** page.
  - [Safe Links in Defender for Office 365](safe-links-about.md) doesn't block or detonate the specified URLs in these messages at time of click. URLs are still wrapped, but they aren't blocked.
  - [Safe Attachments in Defender for Office 365](safe-attachments-about.md) doesn't detonate attachments in these messages.

¹ You can't bypass malware filtering.

² You can bypass ZAP for malware by creating an anti-malware policy for the SecOps mailbox where ZAP for malware is turned off. For instructions, see [Configure anti-malware policies in EOP](anti-malware-policies-configure.md).

Messages that are identified by the advanced delivery policy aren't security threats, so the messages are marked with system overrides. Admin experiences show these messages as **Phishing simulation** or **SecOps mailbox** system overrides. Admins can use these values to filter and analyze messages in the following experiences:

- [Threat Explorer/Real-time detections in Defender for Office 365 plan 2](threat-explorer-about.md): Admin can filter on **System override source** and select either **Phishing simulation** or **SecOps Mailbox**.
- The [Email entity Page in Threat Explorer/Real-time detections](mdo-email-entity-page.md): Admin can view a message that was allowed by organization policy by either **SecOps mailbox** or **Phishing simulation** under **Tenant override** in the **Override(s)** section.
- The [Threat protection status report](reports-email-security.md#threat-protection-status-report): Admin can filter by **view data by System override** in the drop down menu and select to see messages allowed due to a phishing simulation system override. To see messages allowed by the SecOps mailbox override, you can select **chart breakdown by delivery location** in the **chart breakdown by reason** dropdown list.
- [Advanced hunting in Microsoft Defender for Endpoint](../defender-endpoint/advanced-hunting-overview.md): Phishing simulation and SecOps mailbox system overrides are options within OrgLevelPolicy in EmailEvents.
- [Campaign Views](campaigns.md): Admin can filter on **System override source** and select either **Phishing simulation** or **SecOps Mailbox**.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md) and [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Create, modify, or remove configured settings in the advanced delivery policy_: Membership in the **Security Administrator** role groups in Email & collaboration RBAC <u>and</u> membership in the **Organization Management** role group in Exchange Online RBAC.
    - _Read-only access to the advanced delivery policy_: Membership in the **Global Reader** or **Security Reader** role groups in Email & collaboration RBAC.
      - **View-Only Organization Management** in Exchange Online RBAC.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

## Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. Or, to go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

   On the **Advanced delivery** page, verify that the **SecOps mailbox** tab is selected.

2. On the **SecOps mailbox** tab, select the **Add** button in the **No SecOps mailboxes configured** area of the page.

   If there are already existing entries on the **SecOps mailbox** tab, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** (the **Add** button isn't available).

3. In the **Add SecOps mailboxes** flyout that opens, enter an existing Exchange Online mailbox that you want to designate as SecOps mailbox by doing either of the following steps:
   - Click in the box, let the list of mailboxes resolve, and then select the mailbox.
   - Click in the box start typing an identifier for the mailbox (name, display name, alias, email address, account name, etc.), and select the mailbox (display name) from the results.

     Repeat this step as many times as necessary. Distribution groups aren't allowed.

     To remove an existing value, select remove :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

4. When you're finished in the **Add SecOps mailboxes** flyout, select **Add**..

5. Review the information in the **Changes to SecOps mailbox override saved** flyout, and then select **Close**.

Back on the **SecOps mailbox** tab, the SecOps mailbox entries that you configured are now listed:

- The **Display name** column contains display name of the mailboxes.
- The **Email** column contains the email address for each entry.
- To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

## Use the Microsoft 365 Defender portal to modify or remove SecOps mailboxes in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. Or, to go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

   On the **Advanced delivery** page, verify that the **SecOps mailbox** tab is selected.

2. On the **SecOps mailbox** tab, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.

3. In **Edit SecOps mailboxes** flyout that opens, add or remove mailboxes as described in Step 3 in the [Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy](#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy) section.

   To remove all mailboxes, select remove :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to each value until there are no more mailboxes selected.

4. When you're finished in the **Edit SecOps mailboxes** flyout, select **Save**.

5. Review the information in the **Changes to SecOps mailbox override saved** flyout, and then select **Close**.

Back on the **SecOps mailbox** tab, the SecOps mailbox entries that you configured are displayed. If you removed all entries, the list is empty.

## Use the Microsoft 365 Defender portal to configure third-party phishing simulations in the advanced delivery policy

To configure a third-party phishing simulation, you need to provide the following information:

- At least one **Domain**.
- At least one **Sending IP**.
- For **non-email** phishing simulations (for example, Microsoft Teams messages, Word documents, or Excel spreadsheets), you can optionally identify the **Simulation URLs to allow** that shouldn't be treated as real threats at time of click: the URLs aren't blocked or detonated, and no URL click alerts or resulting incidents are generated. The URLs are wrapped at time of click, but they aren't blocked.

There must be a match on at least one **Domain** and one **Sending IP**, but no association between values is maintained.

If your MX record doesn't point to Microsoft 365, the IP address in the `Authentication-results` header must match the IP address in the advanced delivery policy. If the IP addresses don't match, you might need to configure [Enhanced Filtering for Connectors](/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) so the correct IP address is detected.

> [!NOTE]
> If you're using the [Built-in protection preset security policy](preset-security-policies.md#profiles-in-preset-security-policies) or your custom Safe Links policies have the setting **Do not rewrite URLs, do checks via SafeLinks API only** enabled, time of click protection doesn't treat phishing simuation links in email as threats in Outlook on the web, Outlook for iOS and Android, Outlook for Windows v16.0.15317.10000 or later, and Outlook for Mac v16.74.23061100 or later. If you're using older versions of Outlook, consider disabling the **Do not rewrite URLs, do checks via SafeLinks API only** setting in custom Safe Links policies.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. Or, to go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

   On the **Advanced delivery** page, select the **Phishing simulation** tab.

2. On the **Phishing simulation** tab, select the **Add** button in the **No third party phishing simulations configured** area of the page.

   If there are already existing entries on the **Phishing simulation** tab, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** (the **Add** button isn't available).

3. In the **Add third party phishing simulations** flyout that opens, configure the following settings:

   - **Domain**: Expand this setting and enter at least one email address domain by clicking in the box, entering a value (for example, contoso.com), and then pressing the ENTER key or selecting the value that's displayed below the box. Repeat this step as many times as necessary. You can add up to 20 entries.

     > [!NOTE]
     > Use the domain in the `5321.MailFrom` address (also known as the **MAIL FROM** address, P1 sender, or envelope sender) that's used in the SMTP transmission of the message **or** a DKIM domain as specified by the phishing simulation vendor.

   - **Sending IP**: Expand this setting and enter at least one valid IPv4 address by clicking in the box, entering a value, and then pressing the ENTER key or selecting the value that's displayed below the box. Repeat this step as many times as necessary. You can add up to 10 entries. Valid values are:
     - Single IP: For example, 192.168.1.1.
     - IP range: For example, 192.168.0.1-192.168.0.254.
     - CIDR IP: For example, 192.168.0.1/25.

   - **Simulation URLs to allow**: This setting isn't required for links in email phishing simulations. Use this setting to optionally identify links in **non-email** phishing simulations (links in Teams messages or in Office documents) that shouldn't be treated as real threats at time of click.

     Add URL entries by expanding this setting, clicking in the box, entering a value, and then pressing the ENTER key or selecting the value that's displayed below the box. You can add up to 30 entries. For the URL syntax, see [URL syntax for the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#url-syntax-for-the-tenant-allowblock-list).

   To remove an existing domain, IP, or URL value, select remove :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

4. When you're finished in the **Add third party phishing simulations** flyout, select **Add**.

5. Review the information in the **Changes to phishing simulation override saved** flyout, and then select **Close**.

Back on the **Phishing simulation** tab, the third-party phishing simulation entries that you configured are now listed:

- The **Value** column contains the domain, IP address or URL entry.
- The **Type** column contains the value **Sending IP**, **Domain**, or **Allowed simulation URL** for each entry.
- The **Date** column shows when the entry was created.
- To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

## Use the Microsoft 365 Defender portal to modify or remove third-party phishing simulations in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. Or, to go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

   On the **Advanced delivery** page, select the **Phishing simulation** tab.

2. On the **Phishing simulation** tab, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.

3. In the **Edit third-party phishing simulation** flyout that opens, add or remove entries for **Domain**, **Sending IP**, and **Simulation URLs** as described in Step 3 in the [Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy](#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy) section.

   To remove all entries, select remove :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to each value until there are no more domains, IPs, or URLs selected.

4. When you're finished in the **Edit third-party phishing simulation** flyout, select **Save**.

5. Review the information in the **Changes to phishing simulation override saved** flyout, and then select **Close**.

Back on the **Phishing simulation** tab, the third-party phishing simulation entries that you configured are displayed. If you removed all entries, the list is empty.

## Additional scenarios that require filtering bypass

In addition to the two scenarios that the advanced delivery policy can help you with, there are other scenarios where you might need to bypass filtering for messages:

- **Third-party filters**: If your domain's MX record _doesn't_ point to Office 365 (messages are routed somewhere else first), [secure by default](secure-by-default.md) _isn't available_. If you'd like to add protection, you need to enable Enhanced Filtering for Connectors (also known as _skip listing_). For more information, see [Manage mail flow using a third-party cloud service with Exchange Online](/exchange/mail-flow-best-practices/manage-mail-flow-using-third-party-cloud). If you don't want Enhanced Filtering for Connectors, use mail flow rules (also known as transport rules) to bypass Microsoft filtering for messages that have already been evaluated by third-party filtering. For more information, see [Use mail flow rules to set the SCL in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

- **False positives under review**: You might want to _temporarily_ allow good messages that are incorrectly identified as bad (false positives) that you reported via [admin submissions](submissions-admin.md), but the messages are still being analyzed by Microsoft. As with all overrides, we _**highly recommended**_ that these allowances are temporary.

## PowerShell procedures for SecOps mailboxes in the advanced delivery policy

In PowerShell, the basic elements of SecOps mailboxes in the advanced delivery policy are:

- **The SecOps override policy**: Controlled by the **\*-SecOpsOverridePolicy** cmdlets.
- **The SecOps override rule**: Controlled by the **\*-SecOpsOverrideRule** cmdlets.

This behavior has the following results:

- You create the policy first, then you create the rule that identifies the policy that the rule applies to.
- When you remove a policy from PowerShell, the corresponding rule is also removed.
- When you remove a rule from PowerShell, the corresponding policy isn't removed. You need to remove the corresponding policy manually.

### Use PowerShell to configure SecOps mailboxes

Configuring a SecOps mailbox in the advanced delivery policy in PowerShell is a two-step process:

1. Create the SecOps override policy.
2. Create the SecOps override rule that specifies the policy that the rule applies to.

#### Step 1: Use PowerShell to create the SecOps override policy

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-SecOpsOverridePolicy -Name SecOpsOverridePolicy -SentTo <EmailAddress1>,<EmailAddress2>,...<EmailAddressN>
```

Regardless of the Name value you specify, the policy name is _SecOpsOverridePolicy_, so you might as well use that value.

This example creates the SecOps mailbox policy.

```powershell
New-SecOpsOverridePolicy -Name SecOpsOverridePolicy -SentTo secops@contoso.com
```

For detailed syntax and parameter information, see [New-SecOpsOverridePolicy](/powershell/module/exchange/new-secopsoverridepolicy).

#### Step 2: Use PowerShell to create the SecOps override rule

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), run the following command:

```powershell
New-SecOpsOverrideRule -Name SecOpsOverrideRule -Policy SecOpsOverridePolicy
```

Regardless of the Name value you specify, the rule name is _SecOpsOverrideRule_\<GUID\> where \<GUID\> is a unique GUID value (for example, 6fed4b63-3563-495d-a481-b24a311f8329).

For detailed syntax and parameter information, see [New-SecOpsOverrideRule](/powershell/module/exchange/new-secopsoverriderule).

### Use PowerShell to view the SecOps override policy

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), this example returns detailed information about the one and only SecOps mailbox policy.

```powershell
Get-SecOpsOverridePolicy
```

For detailed syntax and parameter information, see [Get-SecOpsOverridePolicy](/powershell/module/exchange/get-secopsoverridepolicy).

### Use PowerShell to view SecOps override rules

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), this example returns detailed information about SecOps override rules.

```powershell
Get-SecOpsOverrideRule
```

Although the previous command should return only one rule, any rules that are pending deletion might also be included in the results.

This example identifies the valid rule (one) and any invalid rules.

```powershell
Get-SecOpsOverrideRule | Format-Table Name,Mode
```

After you identify the invalid rules, you can remove them by using the **Remove-SecOpsOverrideRule** cmdlet as described [later in this article](#use-powershell-to-remove-secops-override-rules).

For detailed syntax and parameter information, see [Get-SecOpsOverrideRule](/powershell/module/exchange/get-secopsoverriderule).

### Use PowerShell to modify the SecOps override policy

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Set-SecOpsOverridePolicy -Identity SecOpsOverridePolicy [-AddSentTo <EmailAddress1>,<EmailAddress2>,...<EmailAddressN>] [-RemoveSentTo <EmailAddress1>,<EmailAddress2>,...<EmailAddressN>]
```

This example adds `secops2@contoso.com` to the SecOps override policy.

```powershell
Set-SecOpsOverridePolicy -Identity SecOpsOverridePolicy -AddSentTo secops2@contoso.com
```

> [!NOTE]
> If an associated, valid SecOps override rule exists, the email addresses in the rule is also updated.

For detailed syntax and parameter information, see [Set-SecOpsOverridePolicy](/powershell/module/exchange/set-secopsoverridepolicy).

### Use PowerShell to modify a SecOps override rule

The **Set-SecOpsOverrideRule** cmdlet doesn't modify the email addresses in the SecOps override rule. To modify the email addresses in the SecOps override rule, use the **Set-SecOpsOverridePolicy** cmdlet.

For detailed syntax and parameter information, see [Set-SecOpsOverrideRule](/powershell/module/exchange/set-secopsoverriderule).

### Use PowerShell to remove the SecOps override policy

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), this example removes the SecOps Mailbox policy and the corresponding rule.

```powershell
Remove-SecOpsOverridePolicy -Identity SecOpsOverridePolicy
```

For detailed syntax and parameter information, see [Remove-SecOpsOverridePolicy](/powershell/module/exchange/remove-secopsoverridepolicy).

### Use PowerShell to remove SecOps override rules

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-SecOpsOverrideRule -Identity <RuleIdentity>
```

This example removes the specified SecOps override rule.

```powershell
Remove-SecOpsOverrideRule -Identity SecOpsOverrideRule6fed4b63-3563-495d-a481-b24a311f8329
```

For detailed syntax and parameter information, see [Remove-SecOpsOverrideRule](/powershell/module/exchange/remove-secopsoverriderule).

## PowerShell procedures for third-party phishing simulations in the advanced delivery policy

In PowerShell, the basic elements of third-party phishing simulations in the advanced delivery policy are:

- **The phishing simulation override policy**: Controlled by the **\*-PhishSimOverridePolicy** cmdlets.
- **The phishing simulation override rule**: Controlled by the **\*-PhishSimOverrideRule** cmdlets.
- **The allowed (unblocked) phishing simulation URLs**: Controlled by the **\*-TenantAllowBlockListItems** cmdlets.

> [!NOTE]
> As previously described, identifying URLs isn't required for links in email-based phishing simulations. You can optionally identify links in **non-email** phishing simulations (links in Teams messages or in Office documents) that shouldn't be treated as real threats at time of click.

This behavior has the following results:

- You create the policy first, then you create the rule that identifies the policy that the rule applies to.
- You modify the settings in the policy and the rule separately.
- When you remove a policy from PowerShell, the corresponding rule is also removed.
- When you remove a rule from PowerShell, the corresponding policy isn't removed. You need to remove the corresponding policy manually.

### Use PowerShell to configure third-party phishing simulations

Configuring a third-party phishing simulation in PowerShell is a multi-step process:

1. Create the phishing simulation override policy.
2. Create the phishing simulation override rule that specifies:
   - The policy that the rule applies to.
   - The source IP address of the phishing simulation messages.
3. Optionally, identity the phishing simulation URLs in **non-email** phishing simulations (links in Teams messages or in Office documents) that shouldn't be treated as real threats at time of click.

#### Step 1: Use PowerShell to create the phishing simulation override policy

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), this example creates the phishing simulation override policy.

```powershell
New-PhishSimOverridePolicy -Name PhishSimOverridePolicy
```

Regardless of the Name value you specify, the policy name is _PhishSimOverridePolicy_, so you might as well use that value.

For detailed syntax and parameter information, see [New-PhishSimOverridePolicy](/powershell/module/exchange/new-phishsimoverridepolicy).

#### Step 2: Use PowerShell to create the phishing simulation override rule

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the following syntax:

```powershell
New-PhishSimOverrideRule -Name PhishSimOverrideRule -Policy PhishSimOverridePolicy -Domains <Domain1>,<Domain2>,...<Domain10> -SenderIpRanges <IPAddressEntry1>,<IPAddressEntry2>,...<IPAddressEntry10>
```

Regardless of the Name value you specify, the rule name is _PhishSimOverrideRule_\<GUID\> where \<GUID\> is a unique GUID value (for example, a0eae53e-d755-4a42-9320-b9c6b55c5011).

A valid IP address entry is one of the following values:

- Single IP: For example, 192.168.1.1.
- IP range: For example, 192.168.0.1-192.168.0.254.
- CIDR IP: For example, 192.168.0.1/25.

This example creates the phishing simulation override rule with the specified settings.

```powershell
New-PhishSimOverrideRule -Name PhishSimOverrideRule -Policy PhishSimOverridePolicy -Domains fabrikam.com,wingtiptoys.com -SenderIpRanges 192.168.1.55
```

For detailed syntax and parameter information, see [New-PhishSimOverrideRule](/powershell/module/exchange/new-phishsimoverriderule).

#### Step 3: (Optional) Use PowerShell to identify the phishing simulation URLs to allow

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-TenantAllowBlockListItems -Allow -ListType Url -ListSubType AdvancedDelivery -Entries "<URL1>","<URL2>",..."<URL10>" <[-NoExpiration] | [-ExpirationDate <DateTime>]>
```

For details about the URL syntax, see [URL syntax for the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#url-syntax-for-the-tenant-allowblock-list)

This example adds a URL allow entry for the specified third-party phishing simulation URL with no expiration.

```powershell
New-TenantAllowBlockListItems -Allow -ListType Url -ListSubType AdvancedDelivery -Entries *.fabrikam.com -NoExpiration
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

### Use PowerShell to view the phishing simulation override policy

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), this example returns detailed information about the one and only phishing simulation override policy.

```powershell
Get-PhishSimOverridePolicy
```

For detailed syntax and parameter information, see [Get-PhishSimOverridePolicy](/powershell/module/exchange/get-phishsimoverridepolicy).

### Use PowerShell to view phishing simulation override rules

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), this example returns detailed information about phishing simulation override rules.

```powershell
Get-PhishSimOverrideRule
```

Although the previous command should return only one rule, any rules that are pending deletion might also be included in the results.

This example identifies the valid rule (one) and any invalid rules.

```powershell
Get-PhishSimOverrideRule | Format-Table Name,Mode
```

After you identify the invalid rules, you can remove them by using the **Remove-PhishSimOverrideRule** cmdlet as described [later in this article](#use-powershell-to-remove-phishing-simulation-override-rules).

For detailed syntax and parameter information, see [Get-PhishSimOverrideRule](/powershell/module/exchange/get-phishsimoverriderule).

### Use PowerShell to view the allowed phishing simulation URL entries

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), run the following command:

```powershell
Get-TenantAllowBlockListItems -ListType Url -ListSubType AdvancedDelivery
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

### Use PowerShell to modify the phishing simulation override policy

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the following syntax:

```powershell
Set-PhishSimOverridePolicy -Identity PhishSimOverridePolicy [-Comment "<DescriptiveText>"] [-Enabled <$true | $false>]
```

This example disables the phishing simulation override policy.

```powershell
Set-PhishSimOverridePolicy -Identity PhishSimOverridePolicy -Enabled $false
```

For detailed syntax and parameter information, see [Set-PhishSimOverridePolicy](/powershell/module/exchange/set-phishsimoverridepolicy).

### Use PowerShell to modify phishing simulation override rules

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the following syntax:

```powershell
Set-PhishSimOverrideRule -Identity PhishSimOverrideRulea0eae53e-d755-4a42-9320-b9c6b55c5011 [-Comment "<DescriptiveText>"] [-AddSenderDomainIs <DomainEntry1>,<DomainEntry2>,...<DomainEntryN>] [-RemoveSenderDomainIs <DomainEntry1>,<DomainEntry2>,...<DomainEntryN>] [-AddSenderIpRanges <IPAddressEntry1>,<IPAddressEntry2>,...<IPAddressEntryN>] [-RemoveSenderIpRanges <IPAddressEntry1>,<IPAddressEntry2>,...<IPAddressEntryN>]
```

This example modifies the specified phishing simulation override rule with the following settings:

- Add the domain entry blueyonderairlines.com.
- Remove the IP address entry 192.168.1.55.

These changes don't affect existing entries.

```powershell
Set-PhishSimOverrideRule -Identity PhishSimOverrideRulea0eae53e-d755-4a42-9320-b9c6b55c5011 -AddSenderDomainIs blueyonderairlines.com -RemoveSenderIpRanges 192.168.1.55
```

For detailed syntax and parameter information, see [Set-PhishSimOverrideRule](/powershell/module/exchange/set-phishsimoverriderule).

### Use PowerShell to modify the allowed phishing simulation URL entries

You can't modify the URL values directly. You can [remove existing URL entries](#use-powershell-to-remove-the-allowed-phishing-simulation-url-entries) and [add new URL entries](#step-3-optional-use-powershell-to-identify-the-phishing-simulation-urls-to-allow) as described in this article.

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), to modify other properties of an allowed phishing simulation URL entry (for example, the expiration date or comments), use the following syntax:

```powershell
Set-TenantAllowBlockListItems <-Entries "<URL1>","<URL2>",..."<URLN>" | -Ids <Identity>> -ListType URL -ListSubType AdvancedDelivery <[-NoExpiration] | [-ExpirationDate <DateTime>]> [-Notes <String>]
```

You identify the entry to modify by its URL values (the _Entries_ parameter) or the Identity value from the output of the **Get-TenantAllowBlockListItems** cmdlet (the _Ids_ parameter).

This example modified the expiration date of the specified entry.

```powershell
Set-TenantAllowBlockListItems -ListType Url -ListSubType AdvancedDelivery -Entries "*.fabrikam.com" -ExpirationDate 9/11/2021
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

### Use PowerShell to remove a phishing simulation override policy

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), this example removes the phishing simulation override policy and the corresponding rule.

```powershell
Remove-PhishSimOverridePolicy -Identity PhishSimOverridePolicy
```

For detailed syntax and parameter information, see [Remove-PhishSimOverridePolicy](/powershell/module/exchange/remove-phishsimoverridepolicy).

### Use PowerShell to remove phishing simulation override rules

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the following syntax:

```powershell
Remove-PhishSimOverrideRule -Identity <RuleIdentity>
```

This example removes the specified phishing simulation override rule.

```powershell
Remove-PhishSimOverrideRule -Identity PhishSimOverrideRulea0eae53e-d755-4a42-9320-b9c6b55c5011
```

For detailed syntax and parameter information, see [Remove-PhishSimOverrideRule](/powershell/module/exchange/remove-phishsimoverriderule).

### Use PowerShell to remove the allowed phishing simulation URL entries

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
Remove-TenantAllowBlockListItems <-Entries "<URL1>","<URL2>",..."<URLN>" | -Ids <Identity>> -ListType URL -ListSubType AdvancedDelivery
```

You identify the entry to modify by its URL values (the _Entries_ parameter) or the Identity value from the output of the **Get-TenantAllowBlockListItems** cmdlet (the _Ids_ parameter).

This example modified the expiration date of the specified entry.

```powershell
Remove-TenantAllowBlockListItems -ListType Url -ListSubType AdvancedDelivery -Entries "*.fabrikam.com" -ExpirationDate 9/11/2021
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).
