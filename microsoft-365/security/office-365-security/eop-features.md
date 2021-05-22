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
-  [Exchange Online Protection standalone](exchange-online-protection-overview.md)

The following table provides a list of features that are available in the Exchange Online Protection (EOP) hosted email filtering service.

> [!TIP]
> The [Microsoft 365 for business roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=O365) is a good resource for finding out information about upcoming new features. For a broader view about what features are available with the different EOP subscription plans, see [Exchange Online Protection Service Description](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description).

<br>

****

|Feature|Description|
|---|---|
|**Anti-malware protection**||
|Multiple engine anti-malware protection|Multiple anti-malware engines help to automatically protect our customers at all times.|
|Always-on malware filtering|You can't disable malware filtering. We believe that helping to provide a consistent and rigorous level of protection for all of our customers is a critical part of the defense-in-depth strategy necessary to help protect your email messaging environment. As a result, malware filtering is automatically enabled for all customers.|
|Malware inspection of the message body and attachments|The service inspects the active payload in the message body and all message attachments for malware.|
|Anti-spyware protection|Anti-malware protection encompasses anti-virus protection and anti-spyware protection.|
|Malware filter policies|Every organization has a default anti-spam policy that applies to all recipients. For greater granularity, you can create custom anti-malware policies that apply to specific users, groups, or domains in your organization. Custom policies are always applied before default policy, but you can change the order that custom policies are applied. <p> You can configure the following settings in anti-malware policies: <ul><li>**Common attachment filtering**: Enable a customized list of file types that are always presumed to be malware.</li><li>**ZAP for malware**: Retroactively quarantine delivered malware messages. For more information, see [Zero-hour auto purge (ZAP) in Exchange Online](zero-hour-auto-purge.md).</li><li>**Recipient notifications**: Silently quarantine the message or quarantine the message and also deliver it with all attachments replaced by a single text file containing standard or custom text.</li><li>**Sender notifications**: Notify senders that their message was detected as malware.</li><li>**Admin notifications**: Notify an admin when messages from internal or external senders were detected as malware.</li></ul> <p> For more information, see [Configure anti-malware policies](configure-anti-malware-policies.md).|
|**Anti-phishing protection**||
|Anti-phishing protection|EOP uses a list of domains that are used by known spammers.|
|Anti-spoofing protection|Anti-phishing protection in EOP includes anti-spoofing protection. For more information, see [Anti-spoofing protection](anti-spoofing-protection.md). <p> Anti-phishing protection in Microsoft Defender for Office 365 also includes impersonation protection. For more information, see [Exclusive settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).|
|**Anti-spam protection**||
|Inbound spam detection|For more information, see [Anti-spam protection in Microsoft 365](anti-spam-protection.md). <p> For additional steps that are required in hybrid environments, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).|
|Backscatter protection|For more information, see [Backscatter and EOP](backscatter-messages-and-eop.md).|
|Bulk mail filtering|EOP uses the bulk complaint (BCL) threshold in anti-spam policies to mark bulk email messages as spam. For more information, see the following topics: <ul><li>[What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md)</li><li>[Bulk complaint level (BCL) in EOP](bulk-complaint-level-values.md)</li><li>[Configure anti-spam policies](configure-your-spam-filter-policies.md)</li></ul>|
|Malicious URL block lists|EOP uses several URL block lists that help detect known malicious links within messages.|
|**Outbound spam protection**||
|Outbound spam detection|Outbound anti-spam protection is always enabled if you use the service for sending outbound mail. For more information, see [Outbound spam protection](outbound-spam-controls.md).|
|Outbound spam policies|Every organization has a default outbound spam policy that applies to all recipients. For greater granularity, you can create custom anti-spam policies that apply to specific users, groups, or domains in your organization. Custom policies are always applied before default policy, but you can change the order that custom policies are applied. <p> You can configure the following settings in anti-spam policies: <ul><li>**Messsage limts**: You can set limits that are lower than the [service defaults](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#receiving-and-sending-limits) for **external recipients per hour**, **internal recipients per hour**, and **maximum number of recipients per day**</li><li>**Action to take on users who exceed a limit**: Restrict the user for 24 hours, restrict the user until release, or alert only.</li><li>**Enable or disable automatic external email forwarding**: [Learn more](external-email-forwarding.md)</li><li>**Notify or send copies of messages to admins**</li></ul> <p> For more information, see [Configure outbound spam filtering in EOP](configure-the-outbound-spam-policy.md).|
|**Connection filtering**||
|Connection filter policy|Configure the IP Allow list and the IP Block list for the organization. For more information, see [Configure connection filtering](configure-the-connection-filter-policy.md)|
|**Spam management**||
|Anti-spam policies|Every organization has a default anti-spam policy that applies to all recipients. For greater granularity, you can create custom anti-spam policies that apply to specific users, groups, or domains in your organization. Custom policies are always applied before default policy, but you can change the order that custom policies are applied. <p> You can configure the following settings in anti-spam policies: <ul><li>**Spam filter verdict actions**: When a message is detected, you can configure the action to take (delete, move to Junk Email folder, quarantine, etc.) based on the verdict.</li><li>**Advanced spam filter (ASF) settings**: These settings are described in [Advanced Spam Filter (ASF) settings in EOP](advanced-spam-filtering-asf-options.md)</li><li>**ZAP for phishing and spam**: Retroactively quarantine or move delivered messages to the Junk Email folder. For more information, see [Zero-hour auto purge (ZAP) in Exchange Online](zero-hour-auto-purge.md).</li><li>**Enable end-user spam notifications**: [Learn more about end-user spam notifications].(use-spam-notifications-to-release-and-report-quarantined-messages.md)</li>**Allowed and blocked senders and domains**: For important information about how to safely use these lists, see [Create safe sender lists](create-safe-sender-lists-in-office-365.md) and [Create blocked sender lists](create-block-sender-lists-in-office-365.md)</li><li>**International spam settings**: Block messages based on language or source country.</li></ul> <p> For more information, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
|Manage spam via Outlook or Outlook on the web (formerly known as Outlook Web App)|Users and admins can create personal safe sender lists and blocked sender lists in Exchange Online mailboxes. For more information, see [About junk email settings in Outlook](configure-junk-email-settings-on-exo-mailboxes.md#about-junk-email-settings-in-outlook). <p> If you're using EOP to help protect on-premises Exchange mailboxes, be sure to use directory synchronization to help ensure that these settings are synced to the service. For more information, see [Use directory synchronization to manage mail users](/exchange/standalone-eop/manage-mail-users-in-eop#synchronize-directories-with-azure-active-directory-connect-aad-connect).|
|Report false positives and false negatives to Microsoft.|For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).|
|View, find, and manage messages in the quarantine portal.|For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md) or [Find and release quarantined messages as a user](find-and-release-quarantined-messages-as-a-user.md).|
|View spam-quarantined message headers|After you view the message header in the quarantine, you can also copy and paste the header text into the [Message Header Analyzer](https://mha.azurewebsites.net/) to find out what happened to the message.|
|**Mail routing and connectors**||
|
|Conditional mail routing|For more information, see [Scenario: Conditional mail routing in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/conditional-mail-routing).|
|Opportunistic or forced TLS|<ul><li>Opportunistic TLS attempts a TLS connection but uses an SMTP connection if the TLS connection is unsuccessful.</li><li>Forced TLS enforces TLS connections, meaning that the message is rejected if the TLS connection is unsuccessful.</li></ul> <p> For more information about TLS, security, and connectors, see [Set up connectors for secure mail flow with a partner organization](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-for-secure-mail-flow-with-a-partner).|
|Regional routing (the restriction of mail flow to a specific region)|For more information, see [EOP datacenters](exchange-online-protection-overview.md#eop-datacenters).|
|The SMTP Connectivity Checker tool|For more information about using this tool to test your mail flow, see [Test mail flow by validating your Microsoft 365 connectors](/exchange/mail-flow-best-practices/test-mail-flow).|
|Match subdomains|For more information about enabling mail flow to and from subdomains of your accepted domains, see [Mail flow in EOP](mail-flow-in-eop.md).|
|**Mail flow rules**||
|Mail flow rules in EOP|Virtually all of the conditions, exceptions, and actions that are available in mail flow rules (also known as transport rules) in Exchange Online are also available in standalone EOP organizations without Exchange Online mailboxes. For more information about mail flow rules, see the following topics: <ul><li>[Mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)</li><li>[Mail flow rule conditions and exceptions](/exchange/security-and-compliance/mail-flow-rules/conditions-and-exceptions)</li><li>[Mail flow rule actions](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions)</li></ul>|
|Mail flow rule scenarios|Many scenarios are available using transport rules. For example: <ul><li>**Policy-based filtering and actions**: You can filter by domain, keyword, file name, file type, subject line, message body, sender, recipient, header, and IP address.</li><li>**Filter by text patterns**: Mail flow rules can use an array or regular expressions to match text. You can also use one string or an array of strings to match many message properties, such as the address, subject, body, or attachment names.</li><li>**Custom dictionaries**: Mail flow rules can include long lists of text and keywords, providing the same functionality as a custom dictionary.</li><li>**Per-domain policy rules**: You can customize the scope of a mail flow rule to match sender or recipient domain names, IP address ranges, address keywords or patterns, group memberships, and other conditions.</li><li>**Attachment scanning**: You can create mail flow rules to scan the file name, extension, and content of email attachments.</li><li>**Send policy rule notifications to the sender**: You can reject messages and send a non-delivery report (also known as an NDR or bounce message) to the sender via the **Reject the message with the explanation** or **Reject the message with the enhanced status code** action.</li><li>**Redirect or copy messages**: Mail flow rules can redirect, add recipients by Cc or Bcc, simply add recipients, and other options.</li><li>**Filter messages and change the message attributes or routing**: You can filter messages based on a wide variety of conditions and then apply a series of actions to each message.</li><li>**Change the spam confidence level (SCL) of messages in transit**</li></ul> <p> For specific mail flow rule scenario article, see [Mail flow rule procedures](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-procedures).|
|**Administration**||
|Web-based administration|You use the following admin centers to manage EOP: <ul><li>The [Microsoft 365 security center](/microsoft-365/security/defender/overview-security-center)</li><li>The [Exchange admin center](/exchange/exchange-admin-center)</li><li>The [Microsoft 365 admin center](/microsoft-365/admin/admin-overview/about-the-admin-center)</li></ul>|
|PowerShell|If your organization has Exchange Online mailboxes, you manage EOP features in [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell). If your organization has no Exchange Online mailboxes, you manage EOP features in [Exchange Online Protection PowerShell](/powershell/exchange/exchange-online-protection-powershell).|
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
