---
title: Mail flow intelligence
f1.keywords: 
  - NOCSH
ms.author: siosulli
author: siosulli
manager: dansimp
audience: ITPro
ms.topic: troubleshooting

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: c29f75e5-c16e-409e-a123-430691e38276
description: Admins can learn about the error codes that are associated with message delivery using connectors (also known as mail flow intelligence).
ms.technology: mdo
ms.prod: m365-security
---

# Mail flow intelligence in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](https://go.microsoft.com/fwlink/?linkid=2148611)
- [Microsoft Defender for Office 365 plan 1 and plan 2](https://go.microsoft.com/fwlink/?linkid=2148715)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you typically use a connector to route email messages from EOP to your on-premises email environment. You might also use a connector to route messages from Microsoft 365 to a partner organization. When Microsoft 365 can't deliver these messages via the connector, they're queued in Microsoft 365. Microsoft 365 will continue to retry delivery for each message for 24 hours. After 24 hours, the queued message will expire, and the message will be returned to the original sender in a non-delivery report (also known as an NDR or bounce message).

Microsoft 365 generates an error when a message can't be delivered by using a connector. The most common errors and their solutions are described in this article. Collectively, queuing and notification errors for undeliverable messages sent via connectors is known as _mail flow intelligence_.

## Error code: 450 4.4.312 DNS query failed

Typically, this error means Microsoft 365 tried to connect to the smart host that's specified in the connector, but the DNS query to find the smart host's IP addresses failed. The possible causes for this error are:

- There's an issue with your domain's DNS hosting service (the party that maintains the authoritative name servers for your domain).

- Your domain has recently expired, so the MX record can't be retrieved.

- Your domain's MX record has recently changed, and the DNS servers still have previously cached DNS information for your domain.

### How do I fix error code 450 4.4.312?

- Work with your DNS hosting service to identify and fix the problem with your domain.

- If the error is from your partner organization (for example, a 3rd party cloud service provider), contact your partner to fix the issue.

## Error code: 450 4.4.315 Connection timed out

Typically, this means Microsoft 365 can't connect to the destination email server. The error details will explain the problem. For example:

- Your on-premises email server is down.

- There's an error in the connector's smart host settings, so Microsoft 365 is trying to connect to the wrong IP address.

### How do I fix error code 450 4.4.315?

- Find out which scenario applies to you, and make the necessary corrections. For example, if mail flow has been working correctly, and you haven't changed the connector settings, you need to check your on-premises email environment to see if the server is down, or if there have been any changes to your network infrastructure (for example, you've changed internet service providers, so you now have different IP addresses).

- If the error is from your partner organization (for example, a 3rd party cloud service provider), contact your partner to fix the issue.

## Error code: 450 4.4.316 Connection refused

Typically, this error means Microsoft 365 encountered a connection error when it tried to connect to the destination email server. A likely cause for this error is your firewall is blocking connections from Microsoft 365 IP addresses. Or, this error might be by design if you've completely migrated your on-premises email system to Microsoft 365 and shut down your on-premises email environment.

### How do I fix error code 450 4.4.316?

- If you have mailboxes in your on-premises environment, you need to modify your firewall settings to allow connections from Microsoft 365 IP addresses on TCP port 25 to your on-premises email servers. For a list of the Microsoft 365 IP addresses, see [Microsoft 365 URLs and IP address ranges](https://docs.microsoft.com/microsoft-365/enterprise/urls-and-ip-address-ranges).

- If no more messages should be delivered to your on-premises environment, click **Fix now** in the alert so Microsoft 365 can immediately reject the messages with invalid recipients. This will reduce the risk of exceeding your organization's quota for invalid recipients, which could impact normal message delivery. Or, you can use the following instructions to manually fix the issue:

  - In the [Exchange admin center (EAC)](https://docs.microsoft.com/Exchange/exchange-admin-center), disable or delete the connector that delivers email from Microsoft 365 to your on-premises email environment:

    1. In the EAC, go to **Mail flow** \> **Connectors**.

    2. Select the connector with the **From** value **Office 365** and the **To** value **Your organization's email server** and do one of the following steps:

       - Delete the connector by clicking **Delete** ![Remove icon](../../media/adf01106-cc79-475c-8673-065371c1897b.gif)

       - Disable the connector by clicking **Edit** ![Edit icon](../../media/ebd260e4-3556-4fb0-b0bb-cc489773042c.gif) and clearing **Turn it on**.

  - Change the accepted domain in Microsoft 365 that's associated with your on-premises email environment from **Internal Relay** to **Authoritative**. For instructions, see [Manage accepted domains in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains).

  **Note**: Typically, these changes take between 30 minutes and one hour to take effect. After one hour, verify that you no longer receive the error.

- If the error is from your partner organization (for example, a 3rd party cloud service provider), you need to contact your partner to fix the issue.

## Error code: 450 4.4.317 Cannot connect to remote server

Typically, this error means Microsoft 365 connected to the destination email server, but the server responded with an immediate error, or doesn't meet the connection requirements. The error details will explain the problem. For example:

- The destination email server responded with a "Service not available" error, which indicates the server is unable to maintain communication with Microsoft 365.

- The connector is configured to require TLS, but the destination email server doesn't support TLS.

### How do I fix error code 450 4.4.317?

- Verify the TLS settings and certificates on your on-premises email servers, and the TLS settings on the connector.

- If the error is from your partner organization (for example, a 3rd party cloud service provider), you need to contact your partner to fix the issue.

## Error code: 450 4.4.318 Connection was closed abruptly

Typically, this error means Microsoft 365 is having difficulty communicating with your on-premises email environment, so the connection was dropped. The possible causes for this error are:

- Your firewall uses SMTP packet examination rules, and those rules aren't working correctly.

- Your on-premises email server isn't working correctly (for example, service hangs, crashes, or low system resources), which is causing the server to time out and close the connection to Microsoft 365.

- There are network issues between your on-premises environment and Microsoft 365.

### How do I fix error code 450 4.4.318?

- Find out which scenario applies to you, and make the necessary corrections.

- If the problem is caused by network issues between your on-premises environment and Microsoft 365, contact your network team to troubleshoot the issue.

- If the error is from your partner organization (for example, a 3rd party cloud service provider), you need to contact your partner to fix the issue.

## Error code: 450 4.7.320 Certificate validation failed

Typically, this error means Microsoft 365 encountered an error while trying to validate the certificate of the destination email server. The error details will explain the error. For example:

- Certificate expired

- Certificate subject mismatch

- Certificate is no longer valid

### How do I fix error code 450 4.7.320?

- Fix the certificate or the settings on the connector so that queued messages in Microsoft 365 can be delivered.

- If the error is from your partner organization (for example, a 3rd party cloud service provider), you need to contact your partner to fix the issue.

## Other error codes

Microsoft 365 is having difficulty delivering messages to your on-premises or partner email server. Use the **Destination server** information in the error to examine the issue in your environment, or modify the connector if there's a configuration error.

If the error is from your partner organization (for example, a 3rd party cloud service provider), you need to contact your partner to fix the issue.
