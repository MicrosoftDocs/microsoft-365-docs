---
title: "Best practices for configuring EOP"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 12/9/2016
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: faf1efd1-3b0c-411a-804d-17f37292eac0
description: "Follow these best-practice recommendations for Exchange Online Protection (EOP) in order to set yourself up for success and avoid common configuration errors."
---

# Best practices for configuring EOP

Follow these best-practice recommendations for Exchange Online Protection (EOP) in order to set yourself up for success and avoid common configuration errors. We recommend using the default configuration settings as a general rule. This topic assumes that you've already completed the setup process. If you haven't completed EOP setup, see [Set up your EOP service](set-up-your-eop-service.md).

## Use a test domain

We recommend that you use a test domain, subdomain, or low volume domain for trying out service features before implementing them on your higher-volume, production domains.

## Synchronize recipients

If your organization has existing user accounts in an on-premisesActive Directory environment, you can synchronize those accounts to Azure Active Directory in the cloud. Using directory synchronization is recommended. To learn more about the benefits of using directory synchronization, and the steps for setting it up, see [Manage mail users in EOP](manage-mail-users-in-eop.md).

## SPF record customization to help prevent spoofing

When you set up EOP, you added a Sender Policy Framework (SPF) record for EOP to your DNS records. The SPF record helps prevent spoofing. For more information about how an SPF record prevents spoofing and how you can add your on-premises IP addresses to the SPF record, see [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md).

## Set anti-spam options

Mange your connection filter settings by adding IP addresses to IP Allow and IP Block lists, and by selecting the **Enable safe list** option, which should reduce the number of false positives (good messages that are incorrectly classified as spam) you receive. Learn more at [Configure the connection filter policy](configure-the-connection-filter-policy.md). For more spam settings that apply to the whole organization, take a look at [How to prevent real email from being marked as spam in Office 365](../../compliance/prevent-email-from-being-marked-as-spam.md) or [How to reduce spam email in Office 365](reduce-spam-email.md)). These topics are helpful if you have administrator-level control and you want to prevent false positives or false negatives.

Manage your content filters by reviewing and optionally changing the default settings. For example, you can change the action for what happens to spam-detected messages. If you want to pursue an aggressive approach to spam filtering, you can configure advanced spam filtering options. We recommend that you test these options first before implementing them in your production environment (by turning them on). We recommended that organizations who are concerned about phishing turn on the **SPF record: hard fail** option. Learn more at [Configure your spam filter policies](configure-your-spam-filter-policies.md) and [Advanced spam filtering  options](advanced-spam-filtering-asf-options.md).

> [!IMPORTANT]
> If you're using the default content filter action, **Move message to Junk Email folder**, to ensure the action will work with on-premises mailboxes, you need to configure mail flow rules (also known as transport rules) in your on-premises Exchange organization to detect spam headers that are added by EOP. For details, see [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md).

We recommend that you review the [Anti-spam protection FAQ](anti-spam-protection-faq.md), including the outbound mailing best practices section, which will help ensure that your outbound mail is delivered.

You can submit false negatives (spam) and false positives (non-spam) to Microsoft for analysis in several ways. For details, see [Submit spam, non-spam, and phishing scam messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md).

## Set anti-malware options

Review and fine tune your malware filter settings. Learn more at [Configure anti-malware policies](configure-anti-malware-policies.md). We also recommend reading about other frequently asked questions and answers pertaining to anti-malware protection in our [Anti-malware protection FAQ](anti-malware-protection-faq-eop.md).

If you're concerned about executable files containing malware, you can create a mail flow rule that blocks any email attachment that has executable content. Follow the steps in [How to reduce malware threats through file attachment blocking in Exchange Online Protection](https://support.microsoft.com/kb/2959596) in order to block the file types listed in [Use mail flow rules to inspect message attachments in Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection).

You can use the [Common Attachment Types Filter](protect-against-threats.md#part-1---anti-malware-protection) in anti-malware policies.

For increased protection, we also recommend using mail flow rules to block some or all of the following extensions: ade, adp, ani, bas, bat, chm, cmd, com, cpl, crt, hlp, ht, hta, inf, ins, isp, job, js, jse, lnk, mda, mdb, mde, mdz, msc, msi, msp, mst, pcd, reg, scr, sct, shs, url, vb, vbe, vbs, wsc, wsf, wsh. You can do this by using the **Any attachment file extension includes these words** condition.

Admins and end users can submit malware that made it past the filters, or submit a file that you think was incorrectly identified as malware, by sending it to Microsoft for analysis. For more information, see [Submitting malware and non-malware to Microsoft for analysis](submitting-malware-and-non-malware-to-microsoft-for-analysis.md).

## Create mail flow rules

Create mail flow rules or custom filters to meet your business needs.

When you deploy a new rule to production, select one of the test modes first to see the effect of the rule. Once you are satisfied that the rule is working in the manner intended, change the rule mode to **Enforce**.

When you deploy new rules, consider adding the additional action of **Generate Incident Report** to monitor the rule in action.

In hybrid environments where your organization includes both on-premises Exchange and Office 365, consider the conditions that you use in mail flow rules. If you want the rules to apply to the entire organization, be sure to use conditions that are available in both on-premises Exchange and in Office 365. While most conditions are available in both environments, there are a few that are only available in one environment or the other. Learn more at [Mail flow rules (transport rules) in Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).

You can use mail flow rules to inspect message attachments for messages in-transit within your organization. Configure the rule conditions to look for the attachments, and then take action on the detected attachments. Learn more at [Use mail flow rules to inspect message attachments in Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments).

### Phishing and Spoofing Prevention

You can improve anti-phishing protection by the detecting when personal information exits the organization in email. For example, you can use the following regular expressions in mail flow rules to detect transmission of personal financial data or information that may compromise privacy:

- `\d\d\d\d\s\d\d\d\d\s\d\d\d\d\s\d\d\d\d` (MasterCard or Visa)

- `\d\d\d\d\s\d\d\d\d\d\d\s\d\d\d\d\d` (American Express)

- `\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d` (any 16-digit number)

- `\d\d\d\-\d\d\-\d\d\d\d` (Social Security Numbers)

Successful spam and phishing campaigns can also be reduced by blocking inbound, malicious emails that appear to have been sent from your own domain. For example, you can create a mail flow rule that rejects messages from your company domain sent to the same company domain to block this type of sender forgery.

> [!CAUTION]
> We recommend creating this reject rule only in cases where you are certain that no legitimate email from your domain is sent from the Internet to your mail server. This can happen in cases where a message is sent from a user in your organization to an outside recipient and subsequently forwarded to another recipient in your organization.

## Reporting and troubleshooting

Troubleshoot general issues and trends by using the reports in the admin center. Find single point specific data about a message by using the message trace tool. Learn more about reporting at [Reporting and message trace in Exchange Online Protection](reporting-and-message-trace-in-exchange-online-protection.md). Learn more about the message trace tool at [Trace an Email Message](https://docs.microsoft.com/exchange/monitoring/trace-an-email-message/trace-an-email-message).

## For more information

[EOP general FAQ](eop-general-faq.md)

[Help and support for EOP](help-and-support-for-eop.md)

[How to prevent real email from being marked as spam in Office 365](../../compliance/prevent-email-from-being-marked-as-spam.md)

[How to reduce spam email in Office 365](reduce-spam-email.md)
