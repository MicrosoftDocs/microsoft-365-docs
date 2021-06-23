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

localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
ms.custom: 
description: Admins can learn how to use the advanced delivery policy in Exchange Online Protection (EOP) to identify messages that should not be filtered in specific supported scenarios (third-party phishing simulations and messages delivered to security operations (SecOps) mailboxes.
ms.technology: mdo
ms.prod: m365-security
---

# Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> The feature that's described in this article is in Preview, isn't available to everyone, and is subject to change.

To keep your organization [secure by default](secure-by-default.md), Exchange Online Protection (EOP) does not allow safe lists or filtering bypass for messages that are identified as malware or high confidence phishing. But, there are specific scenarios that require the delivery of unfiltered messages. For example:

- **Third-party phishing simulations**: Simulated attacks can help you identify vulnerable users before a real attack impacts your organization.
- **Security operations (SecOps) mailboxes**: Dedicated mailboxes that are used by security teams to collect and analyze unfiltered messages (both good and bad).

You use the _advanced delivery policy_ in Microsoft 365 to prevent these messages _in these specific scenarios_ from being filtered.<sup>\*</sup> The advanced delivery policy ensures that messages in these scenarios achieve the following results:

- Filters in EOP and Microsoft Defender for Office 365 take no action on these messages.<sup>\*</sup>
- [Zero-hour Purge (ZAP)](zero-hour-auto-purge.md) for spam and phishing take no action on these messages.<sup>\*</sup>
- [Default system alerts](alerts.md) aren't triggered for these scenarios.
- [AIR and clustering in Defender for Office 365](office-365-air.md) ignores these messages.
- Specifically for third-party phishing simulations:
  - [Admin submissions](admin-submission.md) generates an automatic response saying that the message is part of a phishing simulation campaign and isn't a real threat. Alerts and AIR will not be triggered.
  - [Safe Links in Defender for Office 365](safe-links.md) doesn't block or detonate the specifically identified URLs in these messages.
  - [Safe Attachments in Defender for Office 365](safe-attachments.md) doesn't detonate attachments in these messages.

<sup>\*</sup> You can't bypass malware filtering or ZAP for malware.

Messages that are identified by the advanced delivery policy aren't security threats, so the messages are marked as system overrides. Admins can filter and analyze these system overrides in the following experiences:

- [Threat Explorer/Real-time detections in Defender for Office 365 plan 2](threat-explorer.md)
- The [Email entity Page in Threat Explorer/Real-time detections](mdo-email-entity-page.md)
- The [Threat protection status report](view-email-security-reports.md#threat-protection-status-report)
- [Advanced hunting in Microsoft Defender for Endpoint](../defender-endpoint/advanced-hunting-overview.md)
- [Campaign Views](campaigns.md)

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Advanced delivery** page, open <https://security.microsoft.com/advanceddelivery>.

- You need to be assigned permissions before you can do the procedures in this article:
  - To create, modify, or remove configured settings in the advanced delivery policy, you need to be a member of the **Security Administrator** role group in the **Microsoft 365 Defender portal** and a member of the **Organization Management** role group in **Exchange Online**.  
  - For read-only access to the advanced delivery policy, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md) and [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  > Adding users to the corresponding Azure Active Directory role gives users the required permissions in the Microsoft 365 Defender portal _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Rules** section \> **Advanced delivery**.

2. On the **Advanced delivery** page, verify that the **SecOps mailbox** tab is selected, and then do one of the following steps:
   - Click ![Edit icon](../../media/m365-cc-sc-edit-icon.png) **Edit**.
   - If there are no configured phishing simulations, click **Add**.

3. On the **Edit SecOps mailboxes** flyout that opens, enter an existing Exchange Online mailbox that you want to designate as SecOps mailbox by doing one of the following steps:
   - Click in the box, let the list of mailboxes resolve, and then select the mailbox.
   - Click in the box start typing an identifier for the mailbox (name, display name, alias, email address, account name, etc.), and select the mailbox (display name) from the results.

     Repeat this step as many times as necessary. Distribution groups are not allowed.

     To remove an existing value, click remove ![Remove icon](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

4. When you're finished, click **Save**.

The SecOps mailbox entries that you configured are displayed on the **SecOps mailbox** tab. To make changes, click ![Edit icon](../../media/m365-cc-sc-edit-icon.png) **Edit** on the tab.

## Use the Microsoft 365 Defender portal to configure third-party phishing simulations in the advanced delivery policy

1. In the Microsoft 365 Defender portal, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Rules** section \> **Advanced delivery**.

2. On the **Advanced delivery** page, select the **Phishing simulation** tab, and then do one of the following steps:
   - Click ![Edit icon](../../media/m365-cc-sc-edit-icon.png) **Edit**.
   - If there are no configured phishing simulations, click **Add**.

3. On the **Edit third-party phishing simulation** flyout that opens, configure the following settings:

   - **Sending domain**: Expand this setting and enter at least one email address domain (for example, contoso.com) by clicking in the box, entering a value, and then pressing Enter or selecting the value that's displayed below the box. Repeat this step as many times as necessary. You can add up to 10 entries.
   - **Sending IP**: Expand this setting and enter at least one valid IPv4 address is required by clicking in the box, entering a value, and then pressing Enter or selecting the value that's displayed below the box. Repeat this step as many times as necessary. You can add up to 10 entries. Valid values are:
     - Single IP: For example, 192.168.1.1.
     - IP range: For example, 192.168.0.1-192.168.0.254.
     - CIDR IP: For example, 192.168.0.1/25.
   - **Simulation URLs to allow**: Expand this setting and optionally enter specific URLs that are part of your phishing simulation campaign that should not be blocked or detonated by clicking in the box, entering a value, and then pressing Enter or selecting the value that's displayed below the box. You can add up to 10 entries.

   To remove an existing value, click remove ![Remove icon](../../media/m365-cc-sc-remove-selection-icon.png) next to the value.

4. When you're finished, do one of the following steps:
   - **First time**: Click **Add**, and then click **Close**.
   - **Edit existing**: Click **Save** and then click **Close**.

The third-party phishing simulation entries that you configured are displayed on the **Phishing simulation** tab. To make changes, click ![Edit icon](../../media/m365-cc-sc-edit-icon.png) **Edit** on the tab.

## Additional scenarios that require filtering bypass

In addition to the two scenarios that the advanced delivery policy can help you with, there are other scenarios that might require you bypass filtering:

- **Third-party filters**: If your domain's MX record *doesn't* point to Office 365 (messages are routed somewhere else first), [secure by default](secure-by-default.md) *is not available*. We want you to be protected by O365 but realize you might not want to point your MX record to Microsoft. If you'd like to add protection, then you'll need to enable Enhanced Filtering for Connectors. Learn more here: [Manage mail flow using a third-party cloud service with Exchange Online](https://docs.microsoft.com/en-us/exchange/mail-flow-best-practices/manage-mail-flow-using-third-party-cloud). If Enhanced Filtering for Connectors is not an option desired, then to bypass Microsoft filtering for messages that have already been evaluated by third-party filtering, use mail flow rules (also known as transport rules). For more information, see [Use mail flow rules to set the SCL in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl.md).

- **False positives under review**: You might want to temporarily allow certain messages that are still being analyzed by Microsoft via [admin submissions](admin-submission.md) to report known good messages that are incorrectly being marked as bad to Microsoft (false positives). As with all overrides, we ***highly recommended*** that these allowances are temporary.

## Use Exchange Online PowerShell to configure Advanced Delivery Policy
- In PowerShell, for Advanced Delivery, you create the Third-Party Phish Simulation OR the SecOps Mailbox policy first, then you create the Third-Party Phish Simulation OR SecOps Mailbox rule that identifies the policy that the rule applies to.
- In PowerShell, you modify the settings in the Third-Party Phish Simulation OR SecOps Mailbox policy and the Third-Party Phish Simulation rule separately.
- When you remove the Third-Party Phish Simulation OR the SecOps Mailbox policy from PowerShell, the corresponding Third-Party Phish Simulation OR SecOps Mailbox rule is automatically removed.
- When you remove the Third-Party Phish Simulation OR SecOps Mailbox rule from PowerShell, the corresponding policy is not removed and should be removed separately.

### Use PowerShell to create a Third-Party Phish Simulation in the Advanced Delivery Policy

#### Step 1: Use PowerShell to create a Third-Party Phish Simulation policy in Advanced Delivery

The following example creates the third-party phish simulation policy named PhishSimOverridePolicy.

```PowerShell
New-PhishSimOverridePolicy -Name PhishSimOverridePolicy
```
For detailed syntax and parameter information, see [New-PhishSimOverridePolicy](https://docs.microsoft.com/en-us/powershell/module/exchange/new-phishsimoverridepolicy?view=exchange-ps).

#### Step 2: Use PowerShell to create a Third-Party Phish Simulation rule in Advanced Delivery 
The following example creates the third-party phish simulation rule with the specified settings.

```PowerShell
New-PhishSimOverrideRule -Name PhishSimOverrideRule -Policy PhishSimOverridePolicy -SenderDomainIs fabrikam.com,wingtiptoys.com -SenderIpRanges 192.168.1.55
```
For detailed syntax and parameter information, see [New-PhishSimOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/new-phishsimoverriderule?view=exchange-ps).

### Use PowerShell to view a Third-Party Phish Simulation policy in the Advanced Delivery Policy
The following example returns detailed information about the one and only third-party phish simulation policy.
```PowerShell
Get-PhishSimOverridePolicy
```
For detailed syntax and parameter information, see [Get-PhishSimOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/get-phishsimoverridepolicy?view=exchange-ps). 

### Use PowerShell to view a Third-Party Phish Simulation rule in the Advanced Delivery Policy
The following example returns detailed information about the third-party phish simulation rule.

```PowerShell
Get-PhishSimOverrideRule
```
Note: This could return more rules that are pending deletion. If it returns more than one rule, you can use the following PowerShell command to view the name of the one that is valid
```PowerShell
Get-PhishSimOverrideRule | select Name, Mode
```
Then use the following PowerShell command to review the only valid rule
```PowerShell
Get-PhishSimOverrideRule -Identity <Name>
```
For detailed syntax and parameter information, see [Get-PhishSimOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/get-phishsimoverriderule?view=exchange-ps). 

### Use PowerShell to modify a Third-Party Phish Simulation policy in the Advanced Delivery Policy
The following example disables the third-party phish simulation policy. 

```PowerShell
Set-PhishSimOverridePolicy -Identity PhishSimOverridePolicy -Enabled $false
```
For detailed syntax and parameter information, see [Set-PhishSimOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/set-phishsimoverridepolicy?view=exchange-ps). 

### Use PowerShell to modify a Third-Party Phish Simulation rule in the Advanced Delivery Policy
The following example modifies the third-party phish simulation rule with the specified settings.

```PowerShell
Set-PhishSimOverrideRule -Identity PhishSimOverrideRulea0eae53e-d755-4a42-9320-b9c6b55c5011 -AddSenderDomainIs blueyonderairlines.com -RemoveSenderIpRanges 192.168.1.55
```
For detailed syntax and parameter information, see [Set-PhishSimOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/set-phishsimoverriderule?view=exchange-ps). 

### Use PowerShell to remove a Third-Party Phish Simulation policy in the Advanced Delivery Policy
The following example removes the third-party phish simulation policy and rule.

```PowerShell
Remove-PhishSimOverridePolicy -Identity PhishSimOverridePolicy
```
For detailed syntax and parameter information, see [Remove-PhishSimOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/remove-phishsimoverridepolicy?view=exchange-ps).

### Use PowerShell to remove a Third-Party Phish Simulation rule in the Advanced Delivery Policy
The following example removes the Third-Party Phishing Simulation rule.

```PowerShell
Remove-PhishSimOverrideRule -Identity PhishSimOverrideRulea0eae53e-d755-4a42-9320-b9c6b55c5011
```
For detailed syntax and parameter information, see [Remove-PhishSimOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/remove-phishsimoverriderule?view=exchange-ps). 

### Use PowerShell to create a SecOps Mailbox in the Advanced Delivery Policy

#### Step 1: Use PowerShell to create a SecOps Mailbox policy in Advanced Delivery 
The following example creates the SecOps mailbox policy with specified settings.
```PowerShell
New-SecOpsOverridePolicy -Name SecOpsOverridePolicy -SendTo secops@contoso.com
```
For detailed syntax and parameter information, see [New-SecOpsOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/new-secopsoverridepolicy?view=exchange-ps). 

#### Step 2: Use PowerShell to create a SecOps Mailbox rule in Advanced Delivery 
The following example creates the SecOps mailbox rule with the specified settings.

```PowerShell
New-SecOpsOverrideRule -Name SecOpsOverrideRule -Policy SecOpsOverridePolicy
```
For detailed syntax and parameter information, see [New-SecOpsOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/new-secopsoverriderule?view=exchange-ps). 
### Use PowerShell to view a SecOps Mailbox policy in the Advanced Delivery Policy
The following example returns detailed information about the one and only SecOps mailbox policy. 

```PowerShell
Get-SecOpsOverridePolicy
```
For detailed syntax and parameter information, see [Get-SecOpsOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/get-secopsoverridepolicy?view=exchange-ps). 

### Use PowerShell to view a SecOps Mailbox rule in the Advanced Delivery Policy
The following example returns detailed information about the SecOps mailbox rule.

```PowerShell
Get-SecOpsOverrideRule
```
Note: This could return more rules that are pending deletion. If it returns more than one rule, you can use the following PowerShell command to view the name of the one that is valid
```PowerShell
Get-SecOpsOverrideRule | select Name, Mode
```
Then use the following PowerShell command to review the only valid rule
```PowerShell
Get-SecOpsOverrideRule -Identity <Name>
```
For detailed syntax and parameter information, see [Get-SecOpsOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/get-secopsoverriderule?view=exchange-ps).
### Use PowerShell to modify a SecOps Mailbox policy in the Advanced Delivery Policy
The following example modified the SecOps Mailbox policy with the specified settings.

```PowerShell
Set-SecOpsOverridePolicy -Identity SecOpsOverridePolicy -AddSentTo secops2@contoso.com
```
Note: If an associated valid SecOps rule exists, the rule’s mailbox(es) will be updated too.
For detailed syntax and parameter information, see [Set-SecOpsOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/set-secopsoverridepolicy?view=exchange-ps).
### Use PowerShell to modify a SecOps Mailbox rule in the Advanced Delivery Policy

Note: Invoking Set-SecOpsOverrideRule will NOT modify the SecOps rule. Modify rule using Set-SecOpsOverride Policy
For detailed syntax and parameter information, see [Set-SecOpsOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/set-secopsoverriderule?view=exchange-ps).
### Use PowerShell to remove a SecOps Mailbox policy in the Advanced Delivery Policy
The following example removes the SecOps Mailbox policy and rule.

```PowerShell
Remove-SecOpsOverridePolicy -Identity SecOpsOverridePolicy
```
For detailed syntax and parameter information, see [Remove-SecOpsOverridePolicy]( https://docs.microsoft.com/en-us/powershell/module/exchange/remove-secopsoverridepolicy?view=exchange-ps). 
### Use PowerShell to remove a SecOps Mailbox rule in the Advanced Delivery Policy
The following example removes the SecOps Mailbox rule.
```PowerShell
Remove-SecOpsOverrideRule -Identity SecOpsOverrideRule6fed4b63-3563-495d-a481-b24a311f8329
```
For detailed syntax and parameter information, see [Remove-SecOpsOverrideRule]( https://docs.microsoft.com/en-us/powershell/module/exchange/remove-secopsoverriderule?view=exchange-ps). 
