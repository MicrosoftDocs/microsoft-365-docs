---
title: Exchange Online Protection (EOP) overview
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 6/20/2023
audience: ITPro
ms.topic: overview
ms.collection: 
  - m365-security
  - tier2
ms.localizationpriority: medium
ms.assetid: 1270a65f-ddc3-4430-b500-4d3a481efb1e
ms.custom: 
  - seo-marvel-apr2020
description: Learn how Exchange Online Protection (EOP) can help protect your on-premises email organization in standalone and hybrid environments.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Exchange Online Protection overview

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Exchange Online Protection (EOP) is the cloud-based filtering service that protects your organization against spam, malware, and other email threats. EOP is included in all Microsoft 365 organizations with Exchange Online mailboxes.

> [!NOTE]
> EOP is also available by itself to protect on-premises mailboxes and in hybrid environments to protect on-premises Exchange mailboxes. For more information, see [Standalone Exchange Online Protection](/exchange/standalone-eop/standalone-eop).

The steps to set up EOP security features and a comparison to the added security that you get in Microsoft Defender for Office 365, see [protect against threats](protect-against-threats.md). The recommended settings for EOP features are available in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

The rest of this article explains how EOP works and the features that are available in EOP.

## How EOP works

To understand how EOP works, it helps to see how it processes incoming email:

:::image type="content" source="../../media/tp_emailprocessingineopt3.png" alt-text="Graphic of email from the internet or Customer feedback passing into EOP and through the Connection, Anti-malware, Mailflow Rules-slash-Policy Filtering, and Content Filtering, before the verdict of either junk mail or quarantine, or end user mail delivery" lightbox="../../media/tp_emailprocessingineopt3.png":::

1. When an incoming message enters EOP, it initially passes through connection filtering, which checks the sender's reputation. Most spam is stopped at this point and rejected by EOP. For more information, see [Configure connection filtering](connection-filter-policies-configure.md).

2. Then the message is inspected for malware. If malware is found in the message or a message attachment, the message is delivered to quarantine. By default, only admins can view and interact with malware quarantined messages. But, admins can create and use [quarantine policies](quarantine-policies.md#anatomy-of-a-quarantine-policy) to specify what users are allowed to do to quarantined messages. To learn more about malware protection, see [Anti-malware protection in EOP](anti-malware-protection-about.md).

3. The message continues through policy filtering, where it's evaluated against any mail flow rules (also known as transport rules) that you've created. For example, a rule can send a notification to a manager when a message arrives from a specific sender.

   In on-premises organization with Exchange Enterprise CAL with Services licenses, [Microsoft Purview Data Loss Prevention (DLP)](/exchange/security-and-compliance/data-loss-prevention/data-loss-prevention) checks in EOP also happen at this point.

4. The message passes through content filtering (anti-spam and anti-spoofing) where harmful messages are identified as spam, high confidence spam, phishing, high confidence phishing, or bulk (anti-spam policies) or spoofing (spoof settings in anti-phishing policies). You can configure the action to take on the message based on the filtering verdict (quarantine, move to the Junk Email folder, etc.), and what users can do to the quarantined messages using [quarantine policies](quarantine-policies.md#anatomy-of-a-quarantine-policy). For more information, see [Configure anti-spam policies](anti-spam-policies-configure.md) and [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md).

A message that successfully passes all of these protection layers is delivered to the recipients.

For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

### EOP datacenters

EOP runs on a worldwide network of datacenters that are designed to provide the best availability. For example, if a datacenter becomes unavailable, email messages are automatically routed to another datacenter without any interruption in service. Servers in each datacenter accept messages on your behalf, providing a layer of separation between your organization and the internet, thereby reducing load on your servers. Through this highly available network, Microsoft can ensure that email reaches your organization in a timely manner.

EOP performs load balancing between datacenters but only within a region. If you're provisioned in one region, all of your messages are processed using the mail routing for that region.

### EOP features

This section provides a high-level overview of the main features that are available in EOP.

For information about requirements, important limits, and feature availability across all EOP subscription plans, see the [Exchange Online Protection service description](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description).

**Notes**:

- EOP uses several URL block lists that help detect known malicious links within messages.
- EOP uses a vast list of domains that are known to send spam.
- EOP uses multiple anti-malware engines help to automatically protect our customers.
- EOP inspects the active payload in the message body and all message attachments for malware.
- For recommended values for protection policies, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).
- For quick instructions to configure protection policies, see [Protect against threats](protect-against-threats.md).

|Feature|Comments|
|---|---|
|**Protection**||
|Anti-malware|[Anti-malware protection in EOP](anti-malware-protection-about.md) <p> [Anti-malware protection FAQ](anti-malware-protection-faq.yml) <p> [Configure anti-malware policies in EOP](anti-malware-policies-configure.md)|
|Inbound anti-spam|[Anti-spam protection in EOP](anti-spam-protection-about.md) <p> [Anti-spam protection FAQ](anti-spam-protection-faq.yml) <p> [Configure anti-spam policies in EOP](anti-spam-policies-configure.md)|
|Outbound anti-spam|[Outbound spam protection in EOP](outbound-spam-protection-about.md) <p> [Configure outbound spam filtering in EOP](outbound-spam-policies-configure.md) <p> [Control automatic external email forwarding in Microsoft 365](outbound-spam-policies-external-email-forwarding.md)|
|Connection filtering|[Configure connection filtering](connection-filter-policies-configure.md)|
|Anti-phishing|[Anti-phishing policies in Microsoft 365](anti-phishing-policies-about.md) <p> [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md)|
|Anti-spoofing protection|[Spoof intelligence insight in EOP](anti-spoofing-spoof-intelligence.md) <p> [Manage the Tenant Allow/Block List](tenant-allow-block-list-about.md)|
|Zero-hour auto purge (ZAP) for delivered malware, spam, and phishing messages|[ZAP in Exchange Online](zero-hour-auto-purge.md)|
|Preset security policies|[Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md) <p> [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md)|
|Tenant Allow/Block List|[Manage the Tenant Allow/Block List](tenant-allow-block-list-about.md)|
|Block lists for message senders|[Create blocked sender lists in EOP](create-block-sender-lists-in-office-365.md)|
|Allow lists for message senders|[Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md)|
|Directory Based Edge Blocking (DBEB)|[Use Directory Based Edge Blocking to reject messages sent to invalid recipients](/exchange/mail-flow-best-practices/use-directory-based-edge-blocking)|
|**Quarantine and submissions**||
|Admin submission|[Use Admin submission to submit suspected spam, phish, URLs, and files to Microsoft](submissions-admin.md)|
|User reported message settings|[User reported settings](submissions-user-reported-messages-custom-mailbox.md)|
|Quarantine - admins|[Manage quarantined messages and files as an admin in EOP](quarantine-admin-manage-messages-files.md) <p> [Quarantined messages FAQ](quarantine-faq.yml) <p> [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md) <p> [Anti-spam message headers in Microsoft 365](message-headers-eop-mdo.md) <p> You can analyze the message headers of quarantined messages using the [Message Header Analyzer at](https://mha.azurewebsites.net/).|
|Quarantine - end-users|[Find and release quarantined messages as a user in EOP](quarantine-end-user.md) <p> [Use quarantine notifications to release and report quarantined messages](quarantine-quarantine-notifications.md) <p> [Quarantine policies](quarantine-policies.md)|
|**Mail flow**||
|Mail flow rules|[Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) <p> [Mail flow rule conditions and exceptions (predicates) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/conditions-and-exceptions) <p> [Mail flow rule actions in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions) <p> [Manage mail flow rules in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/manage-mail-flow-rules) <p> [Mail flow rule procedures in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-procedures)|
|Accepted domains|[Manage accepted domains in Exchange Online](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)|
|Connectors|[Configure mail flow using connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow)|
|Enhanced Filtering for Connectors|[Enhanced filtering for connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors)|
|**Monitoring**||
|Message trace|[Message trace](message-trace-scc.md) <p> [Message trace in the Exchange admin center](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac)|
|Email & collaboration reports|[View email security reports](reports-email-security.md)|
|Mail flow reports|[Mail flow reports in the Exchange admin center](/exchange/monitoring/mail-flow-reports/mail-flow-reports)|
|Mail flow insights|[Mail flow insights in the Exchange admin center](/exchange/monitoring/mail-flow-insights/mail-flow-insights)|
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
|Message queuing when the on-premises server can't accept mail|Messages in deferral remain in our queues for one day. Message retry attempts are based on the error we get back from the recipient's mail system. On average, messages are retried every 5 minutes. For more information, see [EOP queued, deferred, and bounced messages FAQ](mail-flow-delivery-faq.yml).|
|Office 365 Message Encryption available as an add-on|For more information, see [Encryption in Office 365](../../compliance/encryption.md).|
|||
