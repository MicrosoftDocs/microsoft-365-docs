---
title: Respond to a compromised connector in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.date:
ms.localizationpriority: medium
ms.assetid:
ms.collection:
  - M365-security-compliance
ms.custom:
description: Learn how to recognize and respond to a compromised connector in Microsoft Defender for Office 365.
ms.technology: mdo
ms.prod: m365-security
---

# Respond to a compromised connector

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**

- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Connectors are generally used for enabling mail flow between Microsoft 365 or Office 365 and email servers that you have in your on-premises environment. For more information, see [Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).

A compromised inbound connector is defined as when an unauthorized individual either applies change(s) to an existing inbound connector or creates a new inbound connector in a Microsoft 365 tenant, with the intention of sending spam or phish mails.  

## Detect a compromised connector

Here are some of the characteristics of a compromised connector:

- Sudden spike in outbound mail volume. 

- Mismatch between P1 and P2 senders in outbound mails. For more information on P1 and P2 senders, see [How EOP validates the From address to prevent phishing](how-office-365-validates-the-from-address.md#an-overview-of-email-message-standards).

- Outbound mails sent from an unprovisioned/unregistered domain. 

- The connector is blocked from sending relaying mail. 

- The presence of an inbound connector was not created by the intended user or the administrator. 

- Unauthorized change(s) in existing connector configuration, such as name, domain name, and IP address. 

- A recently compromised administrator account. Note that you can edit connector configuration only if you have administrative access. 

## Secure and restore email function to a suspected compromised connector

### Step 1: Identify if an inbound connector has been compromised 

#### Review recent suspicious connector traffic or related messages

Review recent suspicious connector traffic or related messages 

Customers with Defender for Office 365 P2, this can be done in Explorer: https://security.microsoft.com/threatexplorer. 

Select “Connector”, insert “Connector Name”, select date range and click “Refresh”. 

[image]

Under the chart, identify if there is any abnormal “spike” or “dip” in mail traffic. 

[image]

Under the table, identify 

if “Sender IP” matches with your organization’s on-prem IP address. 

if a significant amount of mails were recently sent to “Junk” folder.  If so, this is a good indicator of a compromised connector being used to send spam. 

if the recipients are the ones that your organization usually stays in contact with. 

[image]

Customers with Defender for Office 365 P1 or Exchange Online Protection, this can be done in Message trace: https://admin-sdf.exchange.microsoft.com/#/messagetrace. 

Open “Suspicious connector activity” alert in https://security.microsoft.com/alerts.  

Click on an activity under “Activity list”, and copy suspicious “connector domain” and “IP address” detected in the alert.

[image]

Search by using “connector domain” and “IP address” in Message trace: https://admin-sdf.exchange.microsoft.com/#/messagetrace. 

[image]

In Message trace search results, identify 

if a significant amount of mails were recently marked as “FilteredAsSpam” folder.  If so, this is a good indicator of a compromised connector being used to send spam. 

if the recipients are the ones that your organization usually stays in contact with. 

[image] 

#### Investigate and validate connector-related activity 

Investigate by a user in Audit log by using the following command line in PowerShell.  Instructions can be found here: Use a PowerShell script to search the audit log - Microsoft 365 Compliance | Microsoft Docs. 

Search-UnifiedAuditLog -StartDate "<ExDateTime>" -EndDate "<ExDateTime>" -RecordType ExchangeAdmin -Operations Set-InboundConnector,New-InboundConnector 

### Step 2: Review and revert unauthorized change(s) in a connector 

Sign into https://admin.exchange.microsoft.com/#/connectors. 

Review and revert unauthorized connector change(s). 

### Step 3: Unblock the connector to re-enable mail flow 

Sign into https://security.microsoft.com/restrictedentities. 

Select the restricted connector to unblock the connector. 

### Step 4: Investigate and remediate potentially compromised administrative user account.   

If a user with unauthorized connector activity identified in Step 1b above, you may investigate this user for potential compromise by following the instruction here: Responding to a Compromised Email Account - Office 365 | Microsoft Docs. 

## More information

- [Remove blocked connectors]
- [Remove blocked entities]