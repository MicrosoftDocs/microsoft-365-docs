---
localization_priority: Normal
description: Learn how to use enhanced filtering for connectors (also known as skip listing) in Exchange Online if your organization sends mail to a third-party service or device before Office 365.
ms.topic: article
author: mattpennathe3rd
ms.author: v-mapenn
ms.assetid: 
ms.reviewer: 
title: Enhanced filtering for connectors
ms.collection: exchange-online
audience: ITPro
ms.service: exchange-online
manager: serdars

---


# Enhanced Filtering for Connectors in Exchange Online

Properly configured inbound connectors are a trusted source of incoming mail to Office 365. But in complex routing scenarios where email for your Office 365 domain is routed somewhere else first, the source of the inbound connector isn't necessarily the true indicator of where the message came from. These complex routing scenarios include:

- Third-party cloud filtering services

- Managed filtering appliance

- Hybrid environments (e.g., on-premises Exchange)

Enhanced Filtering for Connectors allows you to filter email based on the actual source of messages that arrive over the inbound connector. For more information about connectors in Exchange Online, see [Configure mail flow using connectors in Office 365](use-connectors-to-configure-mail-flow.md).

## Scenarios

The most common scenario that Enhanced Filtering is designed for is the Hybrid environments; however, the mail destined for on-premise mailboxes will still not be filtered by EOP. The only way to get full EOP scanning on all mailboxes is to [move your MX record to Office 365](https://docs.microsoft.com/Office365/SecurityCompliance/eop/set-up-your-eop-service#step-6-use-the-microsoft-365-admin-center-to-point-your-mx-record-to-eop).

Enhanced Filtering for Connectors is meant to help customers see the value of EOP and ATP. As suggested above, the ultimate recommendation we have for any customer who has enabled Enhanced Filtering is to actually move the MX record over to Office 365 once testing is done. Although, it is possible to keep Enhanced Filtering enabled as a permanent solution, it is not recommended. Skip listing IP addresses actually adds more complexity to your environment and sending the mail directly to Office 365 reduces that complexity.

## About complex routing

Although we recommend that you point your MX record to Office 365, we realize that there are legitimate business reasons to route your email to somewhere other than Office 365 first. A common scenario resembles the following diagram:

![Mail flow diagram showing inbound email from the internet to a third-party filtering service to Office 365 and from outbound mail from Office 365 to the internet.](../../media/a8ee0cd5-6a4c-4e57-9030-0f233def25f3v2.png)

In this example, the source of the incoming messages is somewhere on the internet. Since the MX record points to a third-party filter, the message goes there first, is processed, and is then sent to the Exchange Online mailbox.

When the message comes into Office 365, Exchange Online Protection (EOP) believes that the third-party filter is the source of the message. This isn't a limitation of Office 365; it's simply how SMTP works.

## What happens when you enable Enhanced Filtering for Connectors?

In complex routing scenarios where you must point your MX record to something other than Office 365, Enhanced Filtering for Connectors allows EOP to overlook, or skip, your internal (trusted) IP addresses to find the last known external (untrusted) IP address of the message. This previous IP should be the actual source IP address of the message. This feature is known as _skip listing_.

Using the previous example, you would configure the IP address of the third-party filter in Enhanced Filtering for Connectors, and Office 365 will take care of the rest. The following table describes what connections look like before and after your enable Enhanced Filtering for Connector:

||**Before Enhanced Filtering is enabled**|**After Enhanced Filtering is enabled**|
|:-----|:-----|:-----|
|**Email domain authentication**|[Implicit](https://docs.microsoft.com/office365/securitycompliance/anti-spoofing-protection#stopping-spoofing-with-implicit-email-authentication) using anti-spoof protection technology.|Explicit, based on the source domain's SPF, DKIM, and DMARC records in DNS.|
|**X-MS-Exchange-ExternalOriginalInternetSender**|Not available|This is stamped if skiplisting was successful, enabled on the connector, and recipient match happens. The value of this field contains information about the true source address.|
|**X-MS-Exchange-SkipListedInternetSender**|Not available|This is stamped if skiplisting was successful and enabled on the connector. The value of this field contains information about the true source address. This header is used primarily for reporting purposes and to help understand WhatIf scenarios.|

## Procedures for Enhanced Filtering for Connectors

### What do you need to know before you begin?

- You apply Enhanced Filtering for Connectors individually on each inbound connector.

- To open the Office 365 Security & Compliance Center, see [Go to the Office 365 Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/go-to-the-securitycompliance-center).

- The cmdlets to manage inbound connectors are available in Exchange Online PowerShell. To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

- The account you use for the procedures needs to be an Office 365 Exchange administrator. For more information about permissions in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/permissions-in-the-security-and-compliance-center)

### Use the Security & Compliance Center to configure Enhanced Filtering for Connectors on an inbound connector

1. Open the Security and Compliance Center, expand **Threat Management**, choose **Policy**, and then choose **Enhanced Filtering**.

   > [!TIP]
   > To go directly to the **Enhanced Filtering** page in the Security & Compliance Center, use this URL: [https://protection.office.com/skiplisting](https://protection.office.com/skiplisting)

2. Select the inbound connector that you want to configure.

3. In the flyout pane, configure the following settings:

   - **IP addresses to skip**: Choose one of the following values:

     - **Automatically detect and skip the last IP address**: Whe recommend this option if you have only one message source to skip.

     - **Skip these IP addresses that are associated with the connector**: Select this option to configure a list of IP addresses to skip.

     - **Disable Enhanced Filtering for Connectors**: Turn off Enhanced Filtering for Connectors on the connector.

   - **Apply to these users**: Choose one of the following values:

     - **Apply to a small set of users**: We recommend this option as an initial test of the feature.

       **Notes**:

       - This option is only affective on messages where **all** recipients are specified here. If a message contains **any** recipients that aren't specified here, normal filtering is applied to **all** recipients of the message.

       - This option is only affective on the actual email address that you specify. For example, if a user has five email addresses associated with their mailbox (also known as _proxy addresses_), you'll need to specify all five of their email addresses here. Otherwise, messages that are sent to the four other email addresses will go through normal filtering.

   - **Apply to entire organization**: We recommend this option after you've tested the feature on a small number of recipients first.

4. When you're finished, click **Save**.

5. If you have an mail flow rule (also known as a transport rule) rule that force messages to skip filtering once it comes into EOP (i.e., marking the SCL of the message to -1 to prevent double filtering), you will need to disable that mail flow rule.

### Use Exchange Online PowerShell to configure Enhanced Filtering for Connectors on an inbound connector

To configure Enhanced Filtering for Connectors on an inbound connector, use the following syntax:

```powershell
Set-InboundConnector -Identity <ConnectorIdentity> [-EFSkipLastIP <$true | $false>] [-EFSkipIPs <IPAddresses>] [-EFUsers "emailaddress1","emailaddress2",..."emailaddressN"]
```

- _EFSkipLastIP_: Valid values are:

  - `$true`: Only the last message source is skipped.

  - `$false`: Skip the IP addresses specified by the _EFSkipIPs_ parameter. If no IP addresses are specified there, Enhanced Filtering for Connectors is disabled on the inbound connector. The default value is `$false`.

- _EFSkipIPs_: The specific IP addresses to skip when the _EFSkipLastIP_ parameter value is `$false`. Valid values are:

  - **A single IP address**: For example, `192.168.1.1`.

  - **An IP address range**: For example, `192.168.0.1-192.168.0.254`.

  - **Classless Inter-Domain Routing (CIDR) IP**: For example, `192.168.3.1/24`.

- _EFUsers_: The comma-separated email address of the recipients that you want to apply Enhanced Filtering for Connectors to. The default value is blank (`$null`), which means Enhanced Filtering for Connectors is applied to all recipients.

This example configures Enhanced Filtering for Connectors on the inbound connector named From Anti-spam Service with the following settings:

- _EFSkipLastIP_: `$true`

- _EFUsers_: michelle@contoso.com, laura@contoso.com, julia@contoso.com.

```powershell
Set-InboundConnector -Identity "From Anti-spam Service" -EFSkipLastIP $true -EFUsers "michelle@contoso.com","laura@contoso.com","julia@contoso.com"
```

For detailed syntax and parameter information, see [Set-InboundConnector](https://docs.microsoft.com/powershell/module/exchange/mail-flow/set-inboundconnector)

## How to measure success

The ultimate goal of Enhanced Filtering is actually to show administrators that changing the MX record to EOP is not only possible but also better. It simplifies the mail flow in your environment and it allows you to see the value of using EOP, which you already purchased as part of Office 365.  This can easily be measured using variety of reports available in the [Reports dashboard](https://protection.office.com/insightdashboard).

You can [view these email security reports in the Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/view-email-security-reports):

- Threat Protection Status report

- Spam Detections report

## See also

[Mail flow best practices for Exchange Online and Office 365 (overview)](../mail-flow-best-practices.md)

[Configure mail flow using connectors in Office 365](use-connectors-to-configure-mail-flow.md)
