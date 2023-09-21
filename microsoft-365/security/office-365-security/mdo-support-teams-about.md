---
title: Microsoft Defender for Office 365 Plan 2 support for Microsoft Teams
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - m365-security
  - tier1
description: Admins can learn about Microsoft Teams features in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 8/4/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Microsoft Defender for Office 365 Plan 2 support for Microsoft Teams

[!include[Prerelease information](../../includes/prerelease.md)]

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

With the increased use of collaboration tools like Microsoft Teams, the possibility of malicious attacks using chat messages has also increased. Microsoft Defender for Office 365 already provides time of click protection for URLs and files in Teams messages through [Safe Links for Microsoft Teams](safe-links-about.md#safe-links-settings-for-microsoft-teams) and [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).

In Microsoft 365 E5 and Defender for Office 365 Plan 2, we've extended Teams protection with a set of capabilities that are designed to disrupt the attack chain:

- **Report suspicious Teams messages**: Users can report malicious Teams messages. Depending on the reported message settings in the organization, the reported messages go to the specified reporting mailbox, to Microsoft, or both. For more information, see [User reported settings in Teams](submissions-teams.md).

- **Zero-hour auto protection (ZAP) for Teams**: ZAP is an existing email protection feature that detects and neutralizes spam, phishing, and malware messages after delivery by moving the messages to the Junk Email folder or quarantine.

  ZAP for Teams quarantines messages in Teams chats or channels that are found to be malware or high confidence phishing. For more information, see [Zero-hour auto purge (ZAP) in Microsoft Teams](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams).

  Instructions to configure ZAP for Teams protection are in the next section.

- **Teams messages in quarantine**: As with email messages that are identified as malware or high confidence phishing, only admins are able to manage Teams messages that are quarantined by ZAP for Teams by default. For more information, see [Manage quarantined Teams messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-microsoft-teams-quarantined-messages).

- The **Teams Message Entity Panel** is a single place to store all Teams message metadata for immediate SecOps review. Any threats coming from Teams chats, group chats, meeting chats, and other channels can be found in one place as soon as they're assessed. For more information, see [Teams Message Entity Panel for Microsoft Teams](teams-message-entity-panel.md).

- **Attack simulation training using Teams messages**: To ensure users are resilient to phishing attacks in Microsoft Teams, admins can configure phishing simulations using Teams messages instead of email messages. For more information, see [Microsoft Teams in Attack simulation training](attack-simulation-training-teams.md).

## Configure ZAP for Teams protection in Defender for Office 365 Plan 2

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **Microsoft Teams protection**. Or, to go directly to the **Microsoft Teams protection** page, use <https://security.microsoft.com/securitysettings/teamsProtectionPolicy>.

2. On the **Microsoft Teams protection** page, verify the toggle in the **Zero-hour auto purge (ZAP)** section:
   - **Turn on ZAP for Teams**: Verify the toggle is **On** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - **Turn off ZAP for Teams**: Slide the toggle to **Off** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

   > [!NOTE]
   > Before August 22, 2023, even if the toggle is **On**, do the following steps to activate ZAP for Teams protection:
   >
   > 1. Slide the toggle to **Off** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::, select **Save** at the bottom of the page, and then select **OK** in the confirmation dialog that opens.
   > 2. Slide the toggle to **On** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, select **Save** at the bottom of the page, and then select **OK** in the confirmation dialog that opens.
   >
   > Before August 22, 2023, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to verify that ZAP for Teams protection is turned on: `Get-TeamsProtectionPolicy | Format-List ZapEnabled`. The value True means ZAP for Teams is turned on. The value False means ZAP for Teams is turned off.
   >
   > After August 22, 2023, ZAP for Teams protection is turned on and functional by default (**On** on the **Microsoft Teams protection** page means ZAP for Teams is turned on, so there's no need to confirm in PowerShell).

3. When the toggle is **On** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, use the remaining settings on the page to customize ZAP for Teams protection:

   - **Quarantine policies** section: You can select the existing quarantine policy to use for messages that are quarantined by ZAP for Teams protection as **Malware** or **High confidence phishing**. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

     > [!NOTE]
     > Quarantine notifications are disabled in the policy named AdminOnlyAccessPolicy. To notify recipients that have messages quarantined as malware or high confidence phishing, create or use an existing quarantine policy where quarantine notifications are turned on. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

   - **Exclude these participants** section: Specify the **Users**, **Groups**, or **Domains** to exclude from ZAP for Teams protection. Exclusions matter for message _recipients_, not message _senders_. For more information, see [Zero-hour auto purge (ZAP) in Microsoft Teams](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-in-microsoft-teams).

   > [!IMPORTANT]
   > Unlike all other security policies in Exchange Online Protection and Defender for Office 365, multiple different types of exceptions for ZAP for Teams protection use OR logic instead of AND. The message is excluded from ZAP for Teams protection for recipients that match _any_ of the specified filters. For example, you configure exclusions with the following values:
   >
   > - Users: romain@contoso.com
   > - Groups: Executives
   >
   > The user romain@contoso.com and members of the Executives group are excluded from ZAP for Teams protection.

4. When you're finished on the **Microsoft Teams protection** page, select **Save**.

:::image type="content" source="../../media/zap-teams-policy-mdo.png" alt-text="Image showing policy settings for Microsoft Teams." lightbox="../../media/zap-teams-policy-mdo.png":::

### Use Exchange Online PowerShell to configure ZAP for Teams protection

If you'd rather use [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to configure ZAP for Microsoft Teams, the following cmdlets are involved:

- The Teams protection policy (**\*-TeamsProtectionPolicy** cmdlets) turns ZAP for Teams on and off and specifies the quarantine policies to use for malware and high confidence phishing detections.
- The Teams protection policy rule (**\*-TeamsProtectionPolicyRule** cmdlets) identifies the Teams protection policy and specifies any exceptions for ZAP for Teams protection (users, groups, or domains).

**Notes**:

- There's only one Teams protection policy in an organization. By default, that policy is named Teams Protection Policy.
- Using the **New-TeamsProtectionPolicy** cmdlet is meaningful only if there's no Teams protection policy in the organization (the **Get-TeamsProtectionPolicy** cmdlet returns nothing). You can run the cmdlet without error, but no new Teams protection policies are created if one already exists.
- You can't remove an existing Teams protection policy or Teams protection policy rule (there's no **Remove-TeamsProtectionPolicy** or **Remove-TeamsProtectionPolicyRule** cmdlet).
- By default, there's no Teams protection policy rule (the **Get-TeamsProtectionPolicyRule** cmdlet returns nothing). Specifying quarantine policies or exceptions for ZAP for Teams in the Defender portal creates the rule automatically. Or, you can use the **New-TeamsProtectionPolicyRule** cmdlet to create the rule in PowerShell if it doesn't already exist.

#### Use PowerShell to view the Teams protection policy and Teams protection policy rule

To view the important values in Teams protection policy and Teams protection policy rule, run the following commands:

```powershell
Get-TeamsProtectionPolicy | Format-List Name,ZapEnabled,HighConfidencePhishQuarantineTag,MalwareQuarantineTag

Get-TeamsProtectionPolicyRule | Format-List Name,TeamsProtectionPolicy,ExceptIfSentTo,ExceptIfSentToMemberOf,ExceptIfRecipientDomainIs
```

For detailed syntax and parameter information, see [Get-TeamsProtectionPolicy](/powershell/module/exchange/get-teamsprotectionpolicy) and [Get-TeamsProtectionPolicyRule](/powershell/module/exchange/get-teamsprotectionpolicyrule).

#### Use PowerShell to modify the Teams protection policy

To modify the Teams protection policy, use the following syntax:

```powershell
Set-TeamsProtectionPolicy -Identity "Teams Protection Policy" [-ZapEnabled <$true | $false>] [-HighConfidencePhishQuarantineTag "<QuarantinePolicyName>"] [-MalwareQuarantineTag "<QuarantinePolicyName>"]
```

This example enables ZAP for Teams and changes the quarantine policy that's used for high confidence phishing detections:

```powershell
Set-TeamsProtectionPolicy -Identity "Teams Protection Policy" -ZapEnabled $true -HighConfidencePhishQuarantineTag AdminOnlyWithNotifications
```

For detailed syntax and parameter information, see [Set-TeamsProtectionPolicy](/powershell/module/exchange/set-teamsprotectionpolicy).

#### Use PowerShell to create the Teams protection policy rule

By default, there's no Teams protection policy rule, because there are no default exceptions for ZAP for Teams.

To create a new Teams protection policy rule, use the following syntax:

```powershell
New-TeamsProtectionPolicyRule -Name "Teams Protection Policy Rule" -TeamsProtectionPolicy "Teams Protection Policy" [-ExceptIfSentTo <UserEmail1,UserEmail2,...UserEmailN>] [-ExceptIfSentToMemberOf <GroupEmail1,GroupEmail2,...GroupEmailN>] [-ExceptIfRecipientDomainIs <Domain1,Domain2,...DomainN>]
```

> [!IMPORTANT]
> As explained previously in this article, multiple exception types (users, groups, and domains) use OR logic, not AND.

This example creates the Teams protection policy rule with members of the group named Research excluded from ZAP for Teams protection.

```powershell
New-TeamsProtectionPolicyRule -Name "Teams Protection Policy Rule" -TeamsProtectionPolicy "Teams Protection Policy" -ExceptIfSentToMemberOf research@contoso.onmicrosoft.com
```

For detailed syntax and parameter information, see [New-TeamsProtectionPolicyRule](/powershell/module/exchange/new-teamsprotectionpolicyrule).

#### Use PowerShell to modify the Teams protection policy rule

If the Teams protection policy rule already exists (the **Get-TeamsProtectionPolicyRule** cmdlet returns output), use the following syntax to modify the rule:

```powershell
Set-TeamsProtectionPolicyRule -Identity "Teams Protection Policy Rule" [-ExceptIfSentTo <UserEmailAddresses | $null>] [-ExceptIfSentToMemberOf <GroupEmailAddresses | $null>] [-ExceptIfRecipientDomainIs <Domains | $null>]
```

**Notes**:

- For information about the syntax for adding, removing, and replacing all values for the _ExceptIfSentTo_, _ExceptIfSentToMemberOf_, and _ExceptIfRecipientDomainIs_ parameters, see the parameter descriptions in [Set-TeamsProtectionPolicyRule](/powershell/module/exchange/set-teamsprotectionpolicyrule).
- To empty the _ExceptIfSentTo_, _ExceptIfSentToMemberOf_, or _ExceptIfRecipientDomainIs_ parameters, use the value `$null`.

This example modifies the existing Teams protection policy rule by excluding recipients in the domains research.contoso.com and research.contoso.net from ZAP for Teams protection.

```powershell
Set-TeamsProtectionPolicyRule -Identity "Teams Protection Policy Rule" -ExceptIfRecipientDomainIs research.contoso.com,research.contoso.net
```

For detailed syntax and parameter information, see [Set-TeamsProtectionPolicyRule](/powershell/module/exchange/set-teamsprotectionpolicyrule).

## See also

- [Microsoft Teams](/microsoftteams/teams-overview)
- [Managing Teams quarantined messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-microsoft-teams-quarantined-messages)
- [Get started using Attack simulation training in Defender for Office 365](attack-simulation-training-get-started.md)
