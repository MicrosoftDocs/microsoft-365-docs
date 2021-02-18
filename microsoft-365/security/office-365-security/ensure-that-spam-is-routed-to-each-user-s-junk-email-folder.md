---
title: Configure EOP to junk spam in hybrid environments
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: MSFTTracyP
manager: chrisda
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: 0cbaccf8-4afc-47e3-a36d-a84598a55fb8
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to route spam to user Junk Email folders in an Exchange Online Protection hybrid environment.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Configure standalone EOP to deliver spam to the Junk Email folder in hybrid environments

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
-  [Exchange Online Protection standalone](exchange-online-protection-overview.md)

> [!IMPORTANT]
> This topic is only for standalone EOP customers in hybrid environments. This topic does not apply to Microsoft 365 customers with Exchange Online mailboxes.

If you're a standalone Exchange Online Protection (EOP) customer in a hybrid environment, you need to configure your on-premises Exchange organization to recognize and translate the spam filtering verdicts of EOP, so the junk email rule in the on-premises mailbox can move messages to the Junk Email folder.

Specifically, you need to create mail flow rules (also known as transport rules) in your on-premises Exchange organization with conditions that find messages with any of the following EOP anti-spam headers and values, and actions that set the spam confidence level (SCL) of those messages to 6:

- `X-Forefront-Antispam-Report: SFV:SPM` (message marked as spam by spam filtering)

- `X-Forefront-Antispam-Report: SFV:SKS` (message marked as spam by mail flow rules in EOP before spam filtering)

- `X-Forefront-Antispam-Report: SFV:SKB` (message marked as spam by spam filtering due to the sender's email address or email domain being in the blocked sender list or the blocked domain list in EOP)

For more information about these header values, see [Anti-spam message headers](anti-spam-message-headers.md).

This topic describes how to create these mail flow rules the Exchange admin center (EAC) and in the Exchange Management Shell (Exchange PowerShell) in the on-premises Exchange organization.

> [!TIP]
> Instead of delivering the messages to the on-premises user's Junk Email folder, you can configure anti-spam policies in EOP to quarantine spam messages in EOP. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

## What do you need to know before you begin?

- You need to be assigned permissions in the on-premises Exchange environment before you can do these procedures. Specifically, you need to be assigned the **Transport Rules** role, which is assigned to the **Organization Management**, **Compliance Management**, and **Records Management** roles by default. For more information, see [Add members to a role group](https://docs.microsoft.com/Exchange/permissions/role-group-members#add-members-to-a-role-group).

- If and when a message is delivered to the Junk Email folder in an on-premises Exchange organization is controlled by a combination of the following settings:

  - The _SCLJunkThreshold_ parameter value on the [Set-OrganizationConfig](https://docs.microsoft.com/powershell/module/exchange/set-organizationconfig) cmdlet in the Exchange Management Shell. The default value is 4, which means an SCL of 5 or higher should deliver the message to the user's Junk email folder.

  - The _SCLJunkThreshold_ parameter value on the [Set-Mailbox](https://docs.microsoft.com/powershell/module/exchange/set-mailbox) cmdlet in the Exchange Management Shell. The default value is blank ($null), which means the organization setting is used.

  For details, see [Exchange spam confidence level (SCL) thresholds](https://docs.microsoft.com/Exchange/antispam-and-antimalware/antispam-protection/scl).

  - Whether the junk email rule is enabled on the mailbox (the _Enabled_ parameter value is $true on the [Set-MailboxJunkEmailConfiguration](https://docs.microsoft.com/powershell/module/exchange/set-mailboxjunkemailconfiguration) cmdlet in the Exchange Management Shell). It's the junk email rule that actually moves the message to the Junk Email folder after delivery. By default, the junk email rule is enabled on mailboxes. For more information, see [Configure Exchange antispam settings on mailboxes](https://docs.microsoft.com/Exchange/antispam-and-antimalware/antispam-protection/configure-antispam-settings).

- To open the EAC on an Exchange Server, see [Exchange admin center in Exchange Server](https://docs.microsoft.com/Exchange/architecture/client-access/exchange-admin-center). To open the Exchange Management Shell, see [Open the Exchange Management Shell](https://docs.microsoft.com/powershell/exchange/open-the-exchange-management-shell).

- For more information about mail flow rules in on-premises Exchange, see the following topics:

  - [Mail flow rules in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/mail-flow-rules)

  - [Mail flow rule conditions and exceptions (predicates) in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/conditions-and-exceptions)

  - [Mail flow rule actions in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/mail-flow-rules/actions)

## Use the EAC to create mail flow rules that set the SCL of EOP spam messages

1. In the EAC, go to **Mail flow** \> **Rules**.

2. Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png) and select **Create a new rule** in the drop-down that appears.

3. In the **New rule** page that opens, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the rule. For example:

     - EOP SFV:SPM to SCL 6

     - EOP SFV:SKS to SCL 6

     - EOP SFV:SKB to SCL 6

   - Click **More Options**.

   - **Apply this rule if**: Select **A message header** \> **includes any of these words**.

     In the **Enter text header includes Enter words** sentence that appears, do the following steps:

     - Click **Enter text**. In the **Specify header name** dialog that appears, enter **X-Forefront-Antispam-Report** and then click **OK**.

     - Click  **Enter words**. In the **Specify words or phrases** dialog that appears, enter one of the EOP spam header values (**SFV:SPM**, **SFV:SKS**, or **SFV:SKB**), click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png), and then click **OK**.

   - **Do the following**: Select **Modify the message properties** \> **Set the spam confidence level (SCL)**.

     In the **Specify SCL** dialog that appears, select **6** (the default value is **5**).

   When you're finished, click **Save**

Repeat these steps for the remaining EOP spam verdict values (**SFV:SPM**, **SFV:SKS**, or **SFV:SKB**).

## Use the Exchange Management Shell to create mail flow rules that set the SCL of EOP spam messages

Use the following syntax to create the three mail flow rules:

```Powershell
New-TransportRule -Name "<RuleName>" -HeaderContainsMessageHeader "X-Forefront-Antispam-Report" -HeaderContainsWords "<EOPSpamFilteringVerdict>" -SetSCL 6
```

For example:

```Powershell
New-TransportRule -Name "EOP SFV:SPM to SCL 6" -HeaderContainsMessageHeader "X-Forefront-Antispam-Report" -HeaderContainsWords "SFV:SPM" -SetSCL 6
```

```Powershell
New-TransportRule -Name "EOP SFV:SKS to SCL 6" -HeaderContainsMessageHeader "X-Forefront-Antispam-Report" -HeaderContainsWords "SFV:SKS" -SetSCL 6
```

```Powershell
New-TransportRule -Name "EOP SFV:SKB to SCL 6" -HeaderContainsMessageHeader "X-Forefront-Antispam-Report" -HeaderContainsWords "SFV:SKB" -SetSCL 6
```

For detailed syntax and parameter information, see [New-TransportRule](https://docs.microsoft.com/powershell/module/exchange/new-transportrule).

## How do you know this worked?

To verify that you've successfully configured standalone EOP to deliver spam to the Junk Email folder in hybrid environment, do any of the following steps:

- In the EAC, go to **Mail flow** \> **Rules**, select the rule, and then click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png) to verify the settings.

- In the Exchange Management Shell, replace \<RuleName\> with the name of the mail flow rule, and rul the following command to verify the settings:

  ```powershell
  Get-TransportRule -Identity "<RuleName>" | Format-List
  ```

- In an external email system **that doesn't scan outbound messages for spam**, send a Generic Test for Unsolicited Bulk Email (GTUBE) message to an affected recipient, and confirm that it's delivered to their Junk Email folder. A GTUBE message is similar to the European Institute for Computer Antivirus Research (EICAR) text file for testing malware settings.

  To send a GTUBE message, include the following text in the body of an email message on a single line, without any spaces or line breaks:

  ```text
  XJS*C4JDBQADN1.NSBN3*2IDNEN*GTUBE-STANDARD-ANTI-UBE-TEST-EMAIL*C.34X
  ```
