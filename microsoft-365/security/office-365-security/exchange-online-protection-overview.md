---
title: Exchange Online Protection (EOP) overview
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 09/18/2020
audience: ITPro
ms.topic: overview

localization_priority: Normal
ms.assetid: 1270a65f-ddc3-4430-b500-4d3a481efb1e
ms.custom: 
  - seo-marvel-apr2020
description: Learn how Exchange Online Protection (EOP) can help protect your on-premises email organization in standalone and hybrid environments.
ms.technology: mdo
ms.prod: m365-security
---

# Exchange Online Protection overview

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Exchange Online Protection (EOP) is the cloud-based filtering service that protects your organization against spam, malware, and other email threats. EOP is included in all Microsoft 365 organizations with Exchange Online mailboxes.

> [!NOTE]
> EOP is also available by itself to protect on-premises mailboxes and in hybrid environments to protect on-premises Exchange mailboxes. For more information, see [Standalone Exchange Online Protection](/exchange/standalone-eop/standaonline-eop).

The steps to set up EOP security features and a comparison to the added security that you get in Microsoft Defender for Office 365, see [protect against threats](protect-against-threats.md). The recommended settings for EOP features are available in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

The rest of this article explains how EOP works and the features that are available in EOP.

## How EOP works

To understand how EOP works, it helps to see how it processes incoming email:

:::image type="content" source="../../media/tp_emailprocessingineopt3.png" alt-text="Graphic of email from the internet or Customer feedback passing into EOP and through the Connection, Anti-malware, Mailflow Rules-slash-Policy Filtering, and Content Filtering, before the verdict of either junk mail or quarantine, or end user mail delivery.":::

1. When an incoming message enters EOP, it initially passes through connection filtering, which checks the sender's reputation. The majority of spam is stopped at this point and rejected by EOP. For more information, see [Configure connection filtering](configure-the-connection-filter-policy.md).

2. Then the message is inspected for malware. If malware is found in the message or the attachment(s) the message is routed to an admin only quarantine store. To learn more about malware protection, see [Anti-malware protection in EOP](anti-malware-protection.md).

3. The message continues through policy filtering, where it's evaluated against any mail flow rules (also known as transport rules) that you've created. For example, a rule can send a notification to a manager when a message arrives from a specific sender.

   In on-premises organization with Exchange Enterprise CAL with Services licenses, [Data loss prevention (DLP)](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention) checks in EOP also happen at this point.

4. The message passes through content filtering (anti-spam and anti-spoofing) where harmful messages are identified as spam, high confidence spam, phishing, high confidence phishing, or bulk (anti-spam policies) or spoofing (spoof settings in anti-phishing policies). You can configure the action to take on the message based on the filtering verdict (quarantine, move to the Junk Email folder, etc.). For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md) and [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

A message that successfully passes all of these protection layers is delivered to the recipients.

For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

### EOP datacenters

EOP runs on a worldwide network of datacenters that are designed to provide the best availability. For example, if a datacenter becomes unavailable, email messages are automatically routed to another datacenter without any interruption in service. Servers in each datacenter accept messages on your behalf, providing a layer of separation between your organization and the internet, thereby reducing load on your servers. Through this highly available network, Microsoft can ensure that email reaches your organization in a timely manner.

EOP performs load balancing between datacenters but only within a region. If you're provisioned in one region all your messages will be processed using the mail routing for that region. The following list shows the how regional mail routing works for the EOP datacenters:

- In Europe, the Middle East, and Africa (EMEA), all Exchange Online mailboxes are located in EMEA datacenters, and all messages are routed through EMEA datacenters for EOP filtering.
- In Asia-Pacific (APAC), all Exchange Online mailboxes are located in APAC datacenters, and messages are currently routed through APAC datacenters for EOP filtering.
- In the Americas, services are distributed in the following locations:
  - South America: Exchange Online mailboxes are located in datacenters in Brazil and Chile. All messages are routed through local datacenters for EOP filtering. Quarantined messages are stored in the datacenter where the tenant is located.
  - Canada: Exchange Online mailboxes are located in datacenters in Canada. All messages are routed through local datacenters for EOP filtering. Quarantined messages are stored in the datacenter where the tenant is located.
  - United States: Exchange Online mailboxes are located in U.S. datacenters. All messages are routed through local datacenters for EOP filtering. Quarantined messages are stored in the datacenter where the tenant is located.
- For the Government Community Cloud (GCC), all Exchange Online mailboxes are located in U.S. datacenters and all messages are routed through U.S. datacenters for EOP filtering.

### EOP features

This section provides a high-level overview of the main features that are available in EOP.

For information about requirements, important limits, and feature availability across all EOP subscription plans, see the [Exchange Online Protection service description](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description).

**Notes**:

- EOP uses several URL block lists that help detect known malicious links within messages.
- EOP uses a vast list of domains that are known to send spam.
- EOP uses multiple anti-malware engines help to automatically protect our customers at all times.
- EOP inspects the active payload in the message body and all message attachments for malware.
- For recommended values for protection policies, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).
- For quick instructions to configure protection policies, see [Protect against threats](protect-against-threats.md).

<br>

****
|Feature|Comments|
|---|---|
|**Protection**||
|Anti-malware|[Anti-malware protection in EOP](anti-malware-protection.md) <p> [Anti-malware protection FAQ](anti-malware-protection-faq-eop.yml) <p> [Configure anti-malware policies in EOP](configure-anti-malware-policies.md)|
|Inbound anti-spam|[Anti-spam protection in EOP](anti-spam-protection.md) <p> [Anti-spam protection FAQ](anti-spam-protection-faq.yml) <p> [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)|
|Outbound anti-spam|[Outbound spam protection in EOP](outbound-spam-controls.md) <p> [Configure outbound spam filtering in EOP](configure-the-outbound-spam-policy.md) <p> [Control automatic external email forwarding in Microsoft 365](external-email-forwarding.md)|
|Connection filtering|[Configure connection filtering](configure-the-connection-filter-policy.md)|
|Anti-phishing|[Anti-phishing policies in Microsoft 365](set-up-anti-phishing-policies.md) <p> [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md)|
|Anti-spoofing protection|[Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md) <p> [Manage the Tenant Allow/Block List](tenant-allow-block-list.md)|
|Zero-hour auto purge (ZAP) for delivered malware, spam, and phishing messages|[ZAP in Exchange Online](zero-hour-auto-purge.md)|
|Preset security policies|[Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md) <p> [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md)|
|Tenant Allow/Block List|[Manage the Tenant Allow/Block List](tenant-allow-block-list.md)|
|Block lists for message senders|[Create blocked sender lists in EOP](create-block-sender-lists-in-office-365.md)|
|Allow lists for message senders|[Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md)|
|Directory Based Edge Blocking (DBEB)|[Use Directory Based Edge Blocking to reject messages sent to invalid recipients](/exchange/mail-flow-best-practices/use-directory-based-edge-blocking)|
|**Quarantine and submissions**||
|Admin submission|[Use Admin submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md)|
|User submissions (custom mailbox)|[User submissions policy](user-submission.md)|
|Quarantine - admins|[Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md) <p> [Quarantined messages FAQ](quarantine-faq.yml) <p> [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md) <p> [Anti-spam message headers in Microsoft 365](anti-spam-message-headers.md) <p> You can analyze the message headers of quarantined messages using the [Message Header Analyzer at](https://mha.azurewebsites.net/).|
|Quarantine - end-users|[Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md) <p> [Use user spam notifications to release and report quarantined messages](use-spam-notifications-to-release-and-report-quarantined-messages.md)|
|**Mail flow**||
|Mail flow rules|[Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) <p> [Mail flow rule conditions and exceptions (predicates) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/conditions-and-exceptions) <p> [Mail flow rule actions in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions) <p> [Manage mail flow rules in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/manage-mail-flow-rules) <p> [Mail flow rule procedures in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-procedures)|
|Accepted domains|[Manage accepted domains in Exchange Online](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)|
|Connectors|[Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow)|
|Enhanced Filtering for Connectors|[Enhanced filtering for connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors)|
|**Monitoring**||
|Message trace|[Message trace](message-trace-scc.md) <p> [Message trace in the Exchange admin center](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac)|
|Email & collaboration reports|[View email security reports](view-email-security-reports.md)|
|Mail flow reports|[View mail flow reports](view-mail-flow-reports.md) <p> [Mail flow reports in the Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports)|
|Mail flow insights|[Mail flow insights](mail-flow-insights-v2.md) <p> [Mail flow insights in the Exchange admin center](/exchange/monitoring/mail-flow-insights/mail-flow-insights)|
|Auditing reports|[Auditing reports in the Exchange admin center](/exchange/security-and-compliance/exchange-auditing-reports/exchange-auditing-reports)|
|Alert policies|[Alert policies](../../compliance/alert-policies.md)|
|**Service Level Agreements (SLAs) and support**||
|Spam effectiveness SLA|\> 99%|
|False positive ratio SLA|\< 1:250,000|
|Virus detection and blocking SLA|100% of known viruses|
|Monthly uptime SLA|99.999%|
|Phone and web technical support 24 hours a day, seven days a week|[Help and support for EOP](help-and-support-for-eop.md).|
|**Other features**||
|A geo-redundant global network of servers|EOP runs on a worldwide network of datacenters that are designed to help provide the best availability. For more information, see the [EOP datacenters](#eop-datacenters) section earlier in this article.|
|Message queuing when the on-premises server cannot accept mail|Messages in deferral remain in our queues for one day. Message retry attempts are based on the error we get back from the recipient's mail system. On average, messages are retried every 5 minutes. For more information, see [EOP queued, deferred, and bounced messages FAQ](eop-queued-deferred-and-bounced-messages-faq.yml).|
|Office 365 Message Encryption available as an add-on|For more information, see [Encryption in Office 365](../../compliance/encryption.md).|
|||
