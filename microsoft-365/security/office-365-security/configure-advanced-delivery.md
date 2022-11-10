---
title: Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
ms.custom:
description: Admins can learn how to use the advanced delivery policy in Exchange Online Protection (EOP) to identify messages that should not be filtered in specific supported scenarios (third-party phishing simulations and messages delivered to security operations (SecOps) mailboxes.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

To keep your organization [secure by default](secure-by-default.md), Exchange Online Protection (EOP) does not allow safe lists or filtering bypass for messages that are identified as malware or high confidence phishing. But, there are specific scenarios that require the delivery of unfiltered messages. For example:

- **Third-party phishing simulations**: Simulated attacks can help you identify vulnerable users before a real attack impacts your organization.
- **Security operations (SecOps) mailboxes**: Dedicated mailboxes that are used by security teams to collect and analyze unfiltered messages (both good and bad).

You use the _advanced delivery policy_ in Microsoft 365 to prevent inbound messages _in these specific scenarios_ from being filtered<sup>\*</sup>. The advanced delivery policy ensures that messages in these scenarios achieve the following results:

- Filters in EOP and Microsoft Defender for Office 365 take no action on these messages.<sup>\*</sup>
- [Zero-hour Purge (ZAP)](zero-hour-auto-purge.md) for spam and phishing take no action on these messages<sup>\*\*</sup>.
- [Default system alerts](/microsoft-365/compliance/alert-policies#default-alert-policies) aren't triggered for these scenarios.
- [AIR and clustering in Defender for Office 365](office-365-air.md) ignores these messages.
- Specifically for third-party phishing simulations:
  - [Admin submissions](admin-submission.md) generates an automatic response saying that the message is part of a phishing simulation campaign and isn't a real threat. Alerts and AIR will not be triggered. The admin submissions experience will show these messages as a simulated threat.
  - When a user reports a phishing simulation message using the [Report Message or the Report Phishing add-ins](enable-the-report-message-add-in.md), the system will not generate an alert, investigation, or incident. The links or files will not be detonated, but the message will appear on the **User reported messages** tab of the **Submissions** page.
  - [Safe Links in Defender for Office 365](safe-links.md) doesn't block or detonate the specifically identified URLs in these messages at time of click. URLs are still wrapped, but they aren't blocked.
  - [Safe Attachments in Defender for Office 365](safe-attachments.md) doesn't detonate attachments in these messages.

<sup>\*</sup> You can't bypass malware filtering.

<sup>\*\*</sup> You can bypass ZAP for malware by creating an anti-malware policy for the SecOps mailbox where ZAP for malware is turned off. For instructions, see [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).

Messages that are identified by the advanced delivery policy aren't security threats, so the messages are marked with system overrides. Admin experiences will show these messages as due to either a **Phishing simulation** system override or a **SecOps mailbox** system override. Admins can filter and analyze on these system overrides in the following experiences:

- [Threat Explorer/Real-time detections in Defender for Office 365 plan 2](threat-explorer.md): Admin can filter on **System override source** and select either **Phishing simulation** or **SecOps Mailbox**.
- The [Email entity Page in Threat Explorer/Real-time detections](mdo-email-entity-page.md): Admin can view a message that was allowed by organization policy by either **SecOps mailbox** or **Phishing simulation** under **Tenant override** in the **Override(s)** section.
- The [Threat protection status report](view-email-security-reports.md#threat-protection-status-report): Admin can filter by **view data by System override** in the drop down menu and select to see messages allowed due to a phishing simulation system override. To see messages allowed by the SecOps mailbox override, you can select **chart breakdown by delivery location** in the **chart breakdown by reason** drop down menu.
- [Advanced hunting in Microsoft Defender for Endpoint](../defender-endpoint/advanced-hunting-overview.md): Phishing simulation and SecOps mailbox system overrides will show as options within OrgLevelPolicy in EmailEvents.
- [Campaign Views](campaigns.md): Admin can filter on **System override source** and select either **Phishing simulation** or **SecOps Mailbox**.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Advanced delivery** page, open <https://security.microsoft.com/advanceddelivery>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article:
  - To create, modify, or remove configured settings in the advanced delivery policy, you need to be a member of the **Security Administrator** role group in the **Microsoft 365 Defender portal** and a member of the **Organization Management** role group in **Exchange Online**.
  - For read-only access to the advanced delivery policy, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md) and [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  > Adding users to the corresponding Azure Active Directory role gives users the required permissions in the Microsoft 365 Defender portal _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. To go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

2. On the **Advanced delivery** page, verify that the **SecOps mailbox** tab is selected, and then do one of the following steps:
   - Click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.
   - If there are no configured SecOps mailboxes, click **Add**.

3. In the **Edit SecOps mailboxes** flyout that opens, enter an existing Exchange Online mailbox that you want to designate as SecOps mailbox by doing one of the following steps:
   - Click in the box, let the list of mailboxes resolve, and then select the mailbox.
   - Click in the box start typing an identifier for the mailbox (name, display name, alias, email address, account name, etc.), and select the mailbox (display name) from the results.

     Repeat this step as many times as necessary. Distribution groups are not allowed.

     To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

4. When you're finished, click **Add**, and then click **Close**.

The SecOps mailbox entries that you configured are displayed on the **SecOps mailbox** tab.

## Use the Microsoft 365 Defender portal to modify or remove SecOps mailboxes in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. To go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

2. On the **Advanced delivery** page, verify that the **SecOps mailbox** tab is selected, and then click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.

3. In the **Edit SecOps mailboxes** flyout that opens, you add or remove mailboxes as described in the previous section.

   To remove all mailboxes, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to each value until there are no more mailboxes selected.

4. When you're finished, click **Save** and then click **Close**.

The SecOps mailbox entries that you configured are displayed on the **SecOps mailbox** tab. If you removed all SecOps mailbox entries, the list will be empty.

## Use the Microsoft 365 Defender portal to configure third-party phishing simulations in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. To go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

2. On the **Advanced delivery** page, select the **Phishing simulation** tab, and then do one of the following steps:
   - Click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.
   - If there are no configured phishing simulations, click **Add**.

3. In the **Edit third-party phishing simulation** flyout that opens, configure the following settings:

   - **Domain**: Expand this setting and enter at least one email address domain (for example, contoso.com) by clicking in the box, entering a value, and then pressing Enter or selecting the value that's displayed below the box. Repeat this step as many times as necessary. You can add up to 20 entries.

     > [!NOTE]
     > Use the domain from the `5321.MailFrom` address (also known as the **MAIL FROM** address, P1 sender, or envelope sender) that's used in the SMTP transmission of the message **or** a DomainKeys Identified Mail (DKIM) domain as specified by your phishing simulation vendor.

   - **Sending IP**: Expand this setting and enter at least one valid IPv4 address by clicking in the box, entering a value, and then pressing Enter or selecting the value that's displayed below the box. Repeat this step as many times as necessary. You can add up to 10 entries. Valid values are:
     - Single IP: For example, 192.168.1.1.
     - IP range: For example, 192.168.0.1-192.168.0.254.
     - CIDR IP: For example, 192.168.0.1/25.

   - **Simulation URLs to allow**: Expand this setting and optionally enter specific URLs that are part of your phishing simulation campaign that should not be blocked or detonated by clicking in the box, entering a value, and then pressing Enter or selecting the value that's displayed below the box. You can add up to 10 entries. For the URL syntax format, see [URL syntax for the Tenant Allow/Block List](allow-block-urls.md#url-syntax-for-the-tenant-allowblock-list). These URLs are wrapped at the time of click, but they aren't blocked.

   To remove an existing value, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

   > [!NOTE]
   > To configure a third-party phishing simulation in Advanced Delivery, you need to provide the following information:
   >
   > - At least one **Domain** from either of the following sources:
   >   - The `5321.MailFrom` address (also known as the MAIL FROM address, P1 sender, or envelope sender).
   >   - The DKIM domain.
   > - At least one **Sending IP**.
   >
   > You can optionally include **Simulation URLs to allow** to ensure that URLs in simulation messages are not blocked.
   >
   > You can specify up to 10 entries for each field.
   >
   > There must be a match on at least one **Domain** and one **Sending IP**, but no association between values is maintained.

4. When you're finished, click **Add**, and then click **Close**.

The third-party phishing simulation entries that you configured are displayed on the **Phishing simulation** tab.

## Use the Microsoft 365 Defender portal to modify or remove third-party phishing simulations in the advanced delivery policy

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Advanced delivery** in the **Rules** section. To go directly to the **Advanced delivery** page, use <https://security.microsoft.com/advanceddelivery>.

2. On the **Advanced delivery** page, select the **Phishing simulation** tab, and then click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.

3. In the **Edit third-party phishing simulation** flyout that opens, you add or remove entries for **Domain**, **Sending IP**, and **Simulation URLs** as described in the previous section.

   To remove all entries, click remove ![Remove icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to each value until there are no more domains, IPs, or URLs selected.

4. When you're finished, click **Save** and then click **Close**.

## Additional scenarios that require filtering bypass

In addition to the two scenarios that the advanced delivery policy can help you with, there are other scenarios where you might need to bypass filtering:

- **Third-party filters**: If your domain's MX record _doesn't_ point to Office 365 (messages are routed somewhere else first), [secure by default](secure-by-default.md) _is not available_. If you'd like to add protection, you'll need to enable Enhanced Filtering for Connectors (also known as _skip listing_). For more information, see [Manage mail flow using a third-party cloud service with Exchange Online](/exchange/mail-flow-best-practices/manage-mail-flow-using-third-party-cloud). If you don't want Enhanced Filtering for Connectors, use mail flow rules (also known as transport rules) to bypass Microsoft filtering for messages that have already been evaluated by third-party filtering. For more information, see [Use mail flow rules to set the SCL in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

- **False positives under review**: You might want to temporarily allow certain messages that are still being analyzed by Microsoft via [admin submissions](admin-submission.md) to report known good messages that are incorrectly being marked as bad to Microsoft (false positives). As with all overrides, we _**highly recommended**_ that these allowances are temporary.

## PowerShell procedures for SecOps mailboxes in the advanced delivery policy

In PowerShell, the basic elements of SecOps mailboxes in the advanced delivery policy are:

- **The SecOps override policy**: Controlled by the **\*-SecOpsOverridePolicy** cmdlets.
- **The SecOps override rule**: Controlled by the **\*-SecOpsOverrideRule** cmdlets.

This behavior has the following results:

- You create the policy first, then you create the rule that identifies the policy that the rule applies to.
- When you remove a policy from PowerShell, the corresponding rule is also removed.
- When you remove a rule from PowerShell, the corresponding policy is not removed. You need to remove the corresponding policy manually.

### Use PowerShell to configure SecOps mailboxes

Configuring a SecOps mailbox in the advanced delivery policy in PowerShell is a two-step process:

1. Create the SecOps override policy.
2. Create the SecOps override rule that specifies the policy that the rule applies to.

#### Step 1: Use PowerShell to create the SecOps override policy

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the following syntax:

```powershell
New-SecOpsOverridePolicy -Name SecOpsOverridePolicy -SentTo <EmailAddress1>,<EmailAddress2>,...<EmailAddressN>
```

> [!NOTE]
> Regardless of the Name value you specify, the policy name will be _SecOpsOverridePolicy_, so you might as well use that value.

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

> [!NOTE]
> Regardless of the Name value you specify, the rule name will be _SecOpsOverrideRule_\<GUID\> where \<GUID\> is a unique GUID value (for example, 6fed4b63-3563-495d-a481-b24a311f8329).

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
> If an associated, valid SecOps override rule exists, the email addresses in the rule will also be updated.

For detailed syntax and parameter information, see [Set-SecOpsOverridePolicy](/powershell/module/exchange/set-secopsoverridepolicy).

### Use PowerShell to modify a SecOps override rule

The **Set-SecOpsOverrideRule** cmdlet does not modify the email addresses in the SecOps override rule. To modify the email addresses in the SecOps override rule, use the **Set-SecOpsOverridePolicy** cmdlet.

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

This behavior has the following results:

- You create the policy first, then you create the rule that identifies the policy that the rule applies to.
- You modify the settings in the policy and the rule separately.
- When you remove a policy from PowerShell, the corresponding rule is also removed.
- When you remove a rule from PowerShell, the corresponding policy is not removed. You need to remove the corresponding policy manually.

### Use PowerShell to configure third-party phishing simulations

Configuring a third-party phishing simulation in PowerShell is a multi-step process:

1. Create the phishing simulation override policy.
2. Create the phishing simulation override rule that specifies:
   - The policy that the rule applies to.
   - The source IP address of the phishing simulation messages.
3. Optionally, identity the phishing simulation URLs that should be allowed (that is, not blocked or scanned).

#### Step 1: Use PowerShell to create the phishing simulation override policy

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), this example creates the phishing simulation override policy.

```powershell
New-PhishSimOverridePolicy -Name PhishSimOverridePolicy
```

**Note**: Regardless of the Name value you specify, the policy name will be _PhishSimOverridePolicy_, so you might as well use that value.

For detailed syntax and parameter information, see [New-PhishSimOverridePolicy](/powershell/module/exchange/new-phishsimoverridepolicy).

#### Step 2: Use PowerShell to create the phishing simulation override rule

In [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell), use the following syntax:

```powershell
New-PhishSimOverrideRule -Name PhishSimOverrideRule -Policy PhishSimOverridePolicy -Domains <Domain1>,<Domain2>,...<Domain10> -SenderIpRanges <IPAddressEntry1>,<IPAddressEntry2>,...<IPAddressEntry10>
```

Regardless of the Name value you specify, the rule name will be _PhishSimOverrideRule_\<GUID\> where \<GUID\> is a unique GUID value (for example, a0eae53e-d755-4a42-9320-b9c6b55c5011).

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

For details about the URL syntax, see [URL syntax for the Tenant Allow/Block List](allow-block-urls.md#url-syntax-for-the-tenant-allowblock-list)

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

Note that these changes don't affect existing entries.

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
