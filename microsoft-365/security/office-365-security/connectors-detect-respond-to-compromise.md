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
ms.date: 12/01/2022
---

# Respond to a compromised connector

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**

- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Connectors are used for enabling mail flow between Microsoft 365 or Office 365 and email servers that you have in your on-premises environment. For more information, see [Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).

A compromised inbound connector is defined as when an unauthorized individual either applies change(s) to an existing inbound connector or creates a new inbound connector in a Microsoft 365 tenant, with the intention of sending spam or phish emails. Note that this is applicable only to inbound connectors of type OnPremises.

## Detect a compromised connector

Here are some of the characteristics of a compromised connector:

- Sudden spike in outbound mail volume.

- Mismatch between P1 and P2 senders in outbound mails. For more information on P1 and P2 senders, see [How EOP validates the From address to prevent phishing](anti-phishing-from-email-address-validation.md#an-overview-of-email-message-standards).

- Outbound mails sent from a domain that is not provisioned or registered.

- The connector is blocked from sending relaying mail.

- The presence of an inbound connector wasn't created by the intended user or the administrator.

- Unauthorized change(s) in existing connector configuration, such as name, domain name, and IP address.

- A recently compromised administrator account. Note that you can edit connector configuration only if you have administrative access.

## Secure and restore email function to a suspected compromised connector

You must complete all the following steps to regain access to your connector. These steps help you remove any back-door entries that may have been added to your connector.

### Step 1: Identify if an inbound connector has been compromised

#### Review recent suspicious connector traffic or related messages

If you have [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md), go directly to <https://security.microsoft.com/threatexplorer>.

1. Select **Connector**, insert **Connector Name**, select date range, and then click **Refresh**.

    :::image type="content" source="../../media/connector-compromise-explorer.png" alt-text="Inbound connector explorer view" lightbox="../../media/connector-compromise-explorer.png":::

2. Identify if there's any abnormal spike or dip in email traffic.

    :::image type="content" source="../../media/connector-compromise-abnormal-spike.png" alt-text="Number of emails delivered to junk folder" lightbox="../../media/connector-compromise-abnormal-spike.png":::

3. Identify:

    - If **Sender IP** matches with your organization's on-prem IP address.

    - If a significant number of emails were recently sent to the **Junk** folder. This is a good indicator of a compromised connector being used to send spam.

    - If the recipients are the ones that your organization usually stays in contact with.

    :::image type="content" source="../../media/connector-compromise-sender-ip.png" alt-text="Sender IP and your organization's on-prem IP address" lightbox="../../media/connector-compromise-sender-ip.png":::

If you have [Microsoft Defender for Office 365 Plan 1](defender-for-office-365.md) or [Exchange Online Protection](eop-about.md), go to <https://admin.exchange.microsoft.com/#/messagetrace>.

1. Open **Suspicious connector activity** alert in <https://security.microsoft.com/alerts>.

2. Select an activity under **Activity list**, and copy suspicious **connector domain** and **IP address** detected in the alert.

    :::image type="content" source="../../media/connector-compromise-outbound-email-details.png" alt-text="Connector compromise outbound email details" lightbox="../../media/connector-compromise-outbound-email-details.png":::

3. Search by using **connector domain** and **IP address** in [**Message trace**](https://admin.exchange.microsoft.com/#/messagetrace).

    :::image type="content" source="../../media/connector-compromise-new-message-trace.png" alt-text="New message trace flyout" lightbox="../../media/connector-compromise-new-message-trace.png":::

4. In the **Message trace** search results, identify:

    - If a significant number of emails were recently marked as **FilteredAsSpam**. This is a good indicator of a compromised connector being used to send spam.

    - If the recipients are the ones that your organization usually stays in contact with.

    :::image type="content" source="../../media/connector-compromise-message-trace-results.png" alt-text="New message trace search results" lightbox="../../media/connector-compromise-message-trace-results.png":::

#### Investigate and validate connector-related activity

Use the following command line in PowerShell to investigate and validate connector-related activity by a user in the audit log. For more information, see [Use a PowerShell script to search the audit log](/compliance/audit-log-search-script).

```powershell
Search-UnifiedAuditLog -StartDate "<ExDateTime>" -EndDate "<ExDateTime>" -Operations "New-InboundConnector", "Set-InboundConnector", "Remove-InboundConnector
```

### Step 2: Review and revert unauthorized change(s) in a connector

1. Sign into <https://admin.exchange.microsoft.com/>.

2. Review and revert unauthorized connector change(s).

### Step 3: Unblock the connector to re-enable mail flow

1. Sign into <https://security.microsoft.com/restrictedentities>.

2. Select the restricted connector to unblock the connector.

### Step 4: Investigate and remediate potentially compromised administrative user account

If a user with an unauthorized connector activity is identified, you can investigate this user for potential compromise. For more information, see [Responding to a Compromised Email Account](responding-to-a-compromised-email-account.md).

## More information

- [Remove blocked connectors](connectors-remove-blocked.md)
- [Remove blocked users](removing-user-from-restricted-users-portal-after-spam.md)
