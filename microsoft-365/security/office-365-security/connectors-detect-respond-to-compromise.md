---
title: Respond to a compromised connector in Microsoft 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
ms.assetid:
ms.collection:
  - m365-security
  - tier2
ms.custom:
description: Learn how to recognize and respond to a compromised connector in Microsoft 365.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Respond to a compromised connector

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Connectors are used for enabling mail flow between Microsoft 365 and email servers that you have in your on-premises environment. For more information, see [Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).

An inbound connector with the **Type** value `OnPremises` is considered compromised when an attacker creates a new connector or modifies and existing connector to send spam or phishing email.

This article explains the symptoms of a compromised connector and how to regain control of it.

## Symptoms of a compromised connector

A compromised connector exhibits one or more of the following characteristics:

- A sudden spike in outbound mail volume.
- A mismatch between the `5321.MailFrom` address (also known as the **MAIL FROM** address, P1 sender, or envelope sender) and the `5322.From` address (also known as the From address or P2 sender) in outbound email. For more information about these senders, see [How EOP validates the From address to prevent phishing](anti-phishing-from-email-address-validation.md#an-overview-of-email-message-standards).
- Outbound mail sent from a domain that isn't provisioned or registered.
- The connector is blocked from sending or relaying mail.
- The presence of an inbound connector that wasn't created by an admin.
- Unauthorized changes in the configuration of an existing connector (for example, the name, domain name, and IP address).
- A recently compromised admin account. Creating or editing connectors requires admin access.

If you see these symptoms or other unusual symptoms, you should investigate.

## Secure and restore email function to a suspected compromised connector

Do **all** of the following steps to regain control of the connector. Go through the steps as soon as you suspect a problem and as quickly as possible to make sure that the attacker doesn't resume control of the connector. These steps also help you remove any back-door entries that the attacker might have added to the connector.

### Step 1: Identify if an inbound connector has been compromised

#### Review recent suspicious connector traffic or related messages

In [Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md), open the Microsoft 365 Defender portal at <https://security.microsoft.com> and go to **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorer>.

1. On the **Explorer** page, verify that the **All email** tab is selected and then configure the following options:
   - Select the date/time range.
   - Select **Connector**.
   - Enter the connector name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box.
   - Select **Refresh**.

    :::image type="content" source="../../media/connector-compromise-explorer.png" alt-text="Inbound connector explorer view" lightbox="../../media/connector-compromise-explorer.png":::

2. Look for abnormal spikes or dips in email traffic.

    :::image type="content" source="../../media/connector-compromise-abnormal-spike.png" alt-text="Number of emails delivered to junk folder" lightbox="../../media/connector-compromise-abnormal-spike.png":::

3. Answer the following questions:
    - Does the **Sender IP** match your organization's on-premises IP address?
    - Were a significant number of recent messages sent to the **Junk Email** folder? This result clearly indicates that a compromised connector was used to send spam.
    - Is it reasonable for the message recipients to receive email from senders in your organization?

    :::image type="content" source="../../media/connector-compromise-sender-ip.png" alt-text="Sender IP and your organization's on-prem IP address" lightbox="../../media/connector-compromise-sender-ip.png":::

In [Microsoft Defender for Office 365 Plan 1](defender-for-office-365.md) or [Exchange Online Protection](eop-about.md), use **Alerts** and **Message trace** to look for the symptoms of connector compromise:

1. Open the Defender portal at <https://security.microsoft.com> and go to **Incidents & alerts** \> **Alerts**. Or, to go directly to the **Alerts** page, useOpen **Suspicious connector activity** alert in <https://security.microsoft.com/alerts>.

2. On the **Alerts** page, use the :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** \> **Policy** \> **Suspicious connector activity** to find any alerts related to suspicious connector activity.

3. Select a suspicious connector activity alert by clicking anywhere in the row other than the check box next to the name. On the details page that opens, select an activity under **Activity list**, and copy the **Connector domain** and **IP address** values from the alert.

    :::image type="content" source="../../media/connector-compromise-outbound-email-details.png" alt-text="Connector compromise outbound email details" lightbox="../../media/connector-compromise-outbound-email-details.png":::

4. Open the Exchange admin center at <https://admin.exchange.microsoft.com> and go to **Mail flow** \> **Message trace**. Or, to go directly to the **Message trace** page, use <https://admin.exchange.microsoft.com/#/messagetrace>.

   On the **Message trace** page, select the **Custom queries** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Start a trace**, and use the **Connector domain** and **IP address** values from the previous step.

   For more information about message trace, see [Message trace in the modern Exchange admin center in Exchange Online](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac).

   :::image type="content" source="../../media/connector-compromise-new-message-trace.png" alt-text="New message trace flyout" lightbox="../../media/connector-compromise-new-message-trace.png":::

4. In the message trace results, look for the following information:
   - A significant number of messages were recently marked as **FilteredAsSpam**. This result clearly indicates that a compromised connector was used to send spam.
   - Whether it's reasonable for the message recipients to receive email from senders in your organization

   :::image type="content" source="../../media/connector-compromise-message-trace-results.png" alt-text="New message trace search results" lightbox="../../media/connector-compromise-message-trace-results.png":::

#### Investigate and validate connector-related activity

In [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), replace \<StartDate\> and \<EndDate\> with your values, and then run the following command to find and validate admin-related connector activity in the audit log. For more information, see [Use a PowerShell script to search the audit log](/compliance/audit-log-search-script).

```powershell
Search-UnifiedAuditLog -StartDate "<ExDateTime>" -EndDate "<ExDateTime>" -Operations "New-InboundConnector","Set-InboundConnector","Remove-InboundConnector
```

For detailed syntax and parameter information, see [Search-UnifiedAuditLog](/powershell/module/exchange/search-unifiedauditlog).

### Step 2: Review and revert unauthorized change(s) in a connector

Open the Exchange admin center at <https://admin.exchange.microsoft.com> and go to **Mail flow** \> **Connectors**. Or, to go directly to the **Connectors** page, use <https://admin.exchange.microsoft.com/#/connectors>.

On the **Connectors** page, review the list of connectors. Remove or turn off any unknown connectors, and check each connector for unauthorized configuration changes.

### Step 3: Unblock the connector to re-enable mail flow

After you've regained control of the compromised connector, unblock the connector on the **Restricted entities** page in the Defender portal. For instructions, see [Remove blocked connectors from the Restricted entities page](connectors-remove-blocked.md).

### Step 4: Investigate and remediate potentially compromised admin accounts

After you identify the admin account that was responsible for the unauthorized connector configuration activity, investigate the admin account for compromise. For instructions, see [Responding to a Compromised Email Account](responding-to-a-compromised-email-account.md).

## More information

- [Remove blocked connectors](connectors-remove-blocked.md)
- [Remove blocked users](removing-user-from-restricted-users-portal-after-spam.md)
