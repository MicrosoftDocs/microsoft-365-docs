---
title: EOP features
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: overview

localization_priority: Normal
ms.assetid: 599b8048-1056-457b-aae4-c063138fd319
description: The following table provides a list of features that are available in the Exchange Online Protection (EOP) hosted email filtering service.
ms.technology: mdo
ms.prod: m365-security
---

# EOP features

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

The following table provides a list of features that are available in the Exchange Online Protection (EOP) email filtering service.

> [!TIP]
> The [Microsoft 365 for business roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=O365) is a good resource for finding out information about upcoming new features. For a broader view about what features are available with the different EOP subscription plans, see [Exchange Online Protection Service Description](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description).

<br>

****

|Feature|Description|
|---|---|
|**Anti-spam protection**||
|Inbound spam detection|For more information, see [Anti-spam protection in Microsoft 365](anti-spam-protection.md). <p> In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange to translate the EOP spam filtering verdict so the junk email rule can move the message to the Junk Email folder. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).|
|Outbound spam detection|Outbound anti-spam protection is always enabled if you use the service for sending outbound mail. For more information, see [Outbound spam protection](outbound-spam-controls.md).|
|Backscatter protection|For more information, see [Backscatter and EOP](backscatter-messages-and-eop.md).|
|Bulk mail filtering|EOP uses the bulk complaint threshold (BCL) to mark bulk email messages as spam. For more information, see the following topics: <p> [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md) <p> [Bulk complaint level (BCL) in EOP](bulk-complaint-level-values.md) <p> [Configure anti-spam policies](configure-your-spam-filter-policies.md)|
|Malicious URL block lists|EOP uses several URL block lists that help detect known malicious links within messages.|
|Anti-phishing protection|EOP includes 750,000 domains of known spammers.|
|Anti-spoofing protection|For more information, see [Anti-spoofing protection](anti-spoofing-protection.md).|
|**Spam management**||
|Configure safe senders and blocked senders|For more information, see [Create safe sender lists](create-safe-sender-lists-in-office-365.md) and [Create blocked sender lists](create-block-sender-lists-in-office-365.md).|
|Create custom anti-spam policies|For greater granularity, you can create custom anti-spam policies and apply them to specified users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (that is, the running order) of your custom policies. For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|Configure the actions on spam-filtered messages|For example, you can delete content-filtered messages or send them to the Junk Email folder or the quarantine. For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|International spam filtering|You can configure anti-spam filtering to filter messages written in specific languages or sent from specific countries or regions. For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|Manage spam via Outlook or Outlook on the web (formerly known as Outlook Web App)|Admins and end users can create safe sender lists and blocked sender lists. For more information, see [About junk email settings in Outlook](configure-junk-email-settings-on-exo-mailboxes.md#about-junk-email-settings-in-outlook). <p> If you're using EOP to help protect on-premises mailboxes, be sure to use directory synchronization to help ensure that these settings are synced to the service. For more information about setting up directory synchronization, see "Use directory synchronization to manage mail users" in [Manage mail users in standalone EOP](/exchange/standalone-eop/manage-mail-users-in-eop).|
|Report false positives and false negatives to Microsoft.|For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).|
|End-user spam quarantine notifications|For more information, see [End-user spam notifications](use-spam-notifications-to-release-and-report-quarantined-messages.md) and [Configure end-user spam notifications](configure-your-spam-filter-policies.md#configure-end-user-spam-notifications).|
|View, find, and manage messages in the quarantine portal.|For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md) or [Find and release quarantined messages as a user](find-and-release-quarantined-messages-as-a-user.md).|
|View spam-quarantined message headers|After you view the message header in the quarantine, you can also copy and paste the header text  into the [Message Header Analyzer](https://mha.azurewebsites.net/) to find out what happened to the message.|
|**Anti-malware protection**||
|Multiple engine anti-malware protection|Multiple anti-malware engines help to automatically protect our customers at all times.|
|The ability to disable malware filtering|You can't disable malware filtering. We believe that helping to provide a consistent and rigorous level of protection for all of our customers is a critical part of the defense-in-depth strategy necessary to help protect your email messaging environment. As a result, malware filtering is automatically enabled for all customers.|
|Malware inspection of the message body and attachments|The service inspects the active payload in the message body and all message attachments for malware.|
|Default or custom malware alert notifications|You can send a notification message to senders or admins. For more information, see [Configure anti-malware policies](configure-anti-malware-policies.md).|
|Recipient notifications|Silently quarantine the message or quarantine the message and also deliver it with all attachments replaced by a single text file containing standard or custom text. For more information, see [Configure anti-malware policies](configure-anti-malware-policies.md).|
|Common Attachment Filtering|You can enable and customize a list of file types that are always presumed to be malware. For more information, see [Anti-malware protection in EOP](anti-malware-protection.md).|
|Anti-spyware protection|Anti-malware protection encompasses anti-virus protection and anti-spyware protection.|
|Create custom malware filter policies|For greater granularity, you can create custom malware filter policies and apply them to specified users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (that is, the running order) of your custom policies. For more information, see [Configure anti-malware policies](configure-anti-malware-policies.md).|
|**Mail routing and connectors**||
|Conditional mail routing|For more information, see [Scenario: Conditional mail routing in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/conditional-mail-routing).|
|Opportunistic or forced TLS|Opportunistic or forced TLS is available with connectors. Opportunistic TLS attempts a TLS connection but uses an SMTP connection if the TLS connection is unsuccessful. Force TLS enforces TLS connections, meaning that the message is rejected if the TLS connection is unsuccessful. For more information about TLS, security, and connectors, see [Set up connectors for secure mail flow with a partner organization](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-for-secure-mail-flow-with-a-partner).|
|Regional routing (the restriction of mail flow to a specific region)|For more information, see the "EOP datacenters" section in the [Exchange Online Protection overview](exchange-online-protection-overview.md).|
|The SMTP Connectivity Checker tool|For more information about using this tool to test your mail flow, see [Test mail flow by validating your Microsoft 365 connectors](/exchange/mail-flow-best-practices/test-mail-flow).|
|Match subdomains|For more information about enabling mail flow to and from subdomains of your accepted domains, see [Mail flow in EOP](mail-flow-in-eop.md).|
|**Mail flow rules**||
|Policy-based filtering and actions|Custom policies are based on Exchange mail flow rules (also known as transport rules). You can filter by domain, keyword, file name, file type, subject line, message body, sender, recipient, header, and IP address. For more information, see [Mail flow rules (transport rules) in Exchange Online Protection](mail-flow-rules-transport-rules-0.md).|
|Filter by text patterns|Mail flow rules can use an array or regular expressions to match text. You can also use one string or an array of strings to match many message properties, such as the address, subject, body, or attachment names. For more information, see [Mail flow rules (transport rules) in Exchange Online Protection](mail-flow-rules-transport-rules-0.md)|
|Custom dictionaries|Mail flow rules can include long lists of text and keywords, providing the same functionality as a custom dictionary.|
|Per-domain policy rules|The scope of a mail flow rule can be customized to match sender or recipient domain names, IP address ranges, address keywords or patterns, group memberships, and other conditions.|
|Attachment scanning|Rules can be created to scan the file name, extension, and content of the attachment.|
|Send policy rule notifications to the sender|You can reject messages and send a non-delivery report (also known as an NDR or bounce message) to the sender via the **Reject the message with the explanation** or **Reject the message with the enhanced status code** action. For more information, see [Mail flow rule actions in Exchange Online](/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions).|
|Redirect or copy messages|Mail flow rules can redirect, add recipients by Cc or Bcc, simply add recipients, and other options. For more information, see [Mail flow rule actions in Exchange Online](/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions).|
|Adjust rule priority across multiple rules|Use the Exchange admin center to change the order in which rules are processed.|
|Filter messages and then change the routing or attributes of a message|You can filter messages based on a wide variety of conditions and then apply a series of actions to each message. For more information, see [Mail flow rules (transport rules) in Exchange Online Protection](mail-flow-rules-transport-rules-0.md).|
|Change the spam confidence level (SCL) of a message by rule.|You can inspect an in-transit message and assign a spam confidence level to it based on criteria that you choose. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).|
|Inspect message attachments|You can examine the content of an attachment or the characteristics of an attached file and define an action to take based on what is found. For more information, see [Using mail flow rules to inspect message attachments in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments).|
|**Administration**||
|Web-based administration|Most features are managed in the [Security & Compliance Center](grant-access-to-the-security-and-compliance-center.md). <p> Other features require management in the Exchange admin center (EAC). For more information, see [Exchange admin center in Exchange Online](/exchange/exchange-admin-center) or [Exchange admin center in standalone EOP](/exchange/standalone-eop/exchange-admin-center-eop).|
|Directory synchronization|Directory synchronization is available via the Azure Active Directory Sync tool. For more information, see the "Use directory synchronization to manage mail users" section in [Manage mail users in standalone EOP](/exchange/standalone-eop/manage-mail-users-in-eop).|
|Directory Based Edge Blocking (DBEB)|The DBEB feature lets you reject messages for invalid recipients at the service network perimeter. DBEB lets admins add mail-enabled recipients to Microsoft 365 and block all messages sent to email addresses that aren't present in Microsoft 365. For more information about configuring DBEB, see [Use Directory Based Edge Blocking to reject messages sent to invalid recipients](/exchange/mail-flow-best-practices/use-directory-based-edge-blocking).|
|PowerShell|Full EOP functionality is available in standalone EOP PowerShell. For more information, see [Exchange Online Protection PowerShell](/powershell/exchange/exchange-online-protection-powershell).|
|**Reporting and logging**||
|Message trace|Admins can follow email messages as they pass through the service. You can determine whether a targeted email message was received, rejected, deferred, or delivered by the service. This lets you efficiently answer your users' questions, troubleshoot mail flow issues, validate policy changes, and alleviates the need to contact technical support for assistance. For more information, see [Message trace in the Security & Compliance Center](message-trace-scc.md).|
|Web-based reports|The mail protection reports in the Security & Compliance Center provide messaging data. For example, you can monitor how much spam and malware is being detected or how often your mail flow rules are being matched. With these interactive reports, you can quickly get a visual report of summary data and drill down into details about individual messages, for as far back as 90 days. For more information, see [Use mail protection reports to view data about malware, spam, and rule detections](/exchange/monitoring/use-mail-protection-reports).|
|Audit logging|For more information, see [Auditing reports in Exchange Online](/exchange/security-and-compliance/exchange-auditing-reports/exchange-auditing-reports).|
|**Service Level Agreements (SLAs) and support**||
|Spam effectiveness SLA|\> 99%|
|False positive ratio SLA|\< 1:250,000|
|Virus detection and blocking SLA|100% of known viruses|
|Monthly uptime SLA|99.999%|
|Phone and web technical support 24 hours a day, seven days a week|For more information about EOP help and support options, see [Help and support for EOP](help-and-support-for-eop.md).|
|**Other features**||
|A geo-redundant global network of servers|EOP runs on a worldwide network of datacenters that are designed to help provide the best availability. For more information, see the "EOP data centers" section in [Exchange Online Protection overview](exchange-online-protection-overview.md).|
|Message queuing when the on-premises server cannot accept mail|Messages in deferral remain in our queues for one day. Message retry attempts are based on the error we get back from the recipient's mail system. On average, messages are retried every 5 minutes. For more information, see [EOP queued, deferred, and bounced messages FAQ](eop-queued-deferred-and-bounced-messages-faq.yml).|
|Office 365 Message Encryption available as an add-on service|For more information, see [Encryption in Office 365](../../compliance/encryption.md).|
|
