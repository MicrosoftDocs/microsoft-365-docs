---
title: Best practices for configuring EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual

localization_priority: Normal
ms.assetid: faf1efd1-3b0c-411a-804d-17f37292eac0
description: Follow these best-practice recommendations for standalone Exchange Online Protection (EOP) in order to set yourself up for success and avoid common configuration errors.
ms.technology: mdo
ms.prod: m365-security
---

# Best practices for configuring standalone EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
-  [Exchange Online Protection standalone](exchange-online-protection-overview.md)

Follow these best-practice recommendations for standalone Exchange Online Protection (EOP) in order to set yourself up for success and avoid common configuration errors. This topic assumes that you've already completed the setup process. If you haven't completed EOP setup, see [Set up your EOP service](set-up-your-eop-service.md).

## Use a test domain

We recommend that you use a test domain, subdomain, or low volume domain for trying out service features before implementing them on your higher-volume, production domains.

## Synchronize recipients

If your organization has existing user accounts in an on-premises Active Directory environment, you can synchronize those accounts to Azure Active Directory in the cloud. Using directory synchronization is recommended. To learn more about the benefits of using directory synchronization, and the steps for setting it up, see [Manage mail users in EOP](manage-mail-users-in-eop.md).

## Recommended settings

We empower security admins to customize their security settings to satisfy the needs of their organization. Although, as a general rule, there are two security levels in EOP and Microsoft Defender for Office 365 that we recommend: Standard and Strict. These settings are listed in the [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365-atp.md).

### Miscellaneous/non-policy settings

These settings cover a range of features that are outside of security policies.

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|[Set up SPF to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md)|Yes|Yes||
|[Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md)|Yes|Yes||
|[Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md)|Yes|Yes|Use `action=quarantine` for Standard, and `action=reject` for Strict.|
|Deploy the [Report Message add-in](enable-the-report-message-add-in.md) or the [Report Phishing add-in](enable-the-report-phish-add-in.md) to improve end-user reporting of suspicious email|Yes|Yes||
|Schedule Malware and Spam Reports|Yes|Yes||
|Auto-forwarding to external domains should be disallowed or monitored|Yes|Yes||
|Unified Auditing should be enabled|Yes|Yes||
|[IMAP connectivity to mailbox](https://docs.microsoft.com/Exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access)|Disabled|Disabled||
|[POP connectivity to mailbox](https://docs.microsoft.com/Exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access)|Disabled|Disabled||
|Authenticated SMTP submission|Disabled|Disabled|Authenticated client SMTP submission (also known as client SMTP submission or SMTP AUTH) is required for POP3 and IMAP4 clients to send email.|
|EWS connectivity to mailbox|Disabled|Disabled||
|[PowerShell connectivity](https://docs.microsoft.com/powershell/exchange/disable-access-to-exchange-online-powershell)|Disabled|Disabled|Available for mailbox users or mail users (user objects returned by the [Get-User](https://docs.microsoft.com/powershell/module/exchange/get-user) cmdlet).|
|Use the [spoof intelligence insight](learn-about-spoof-intelligence.md) and the [Tenant Allow/Block List](tenant-allow-block-list.md)to add spoofed senders to your allow list|Yes|Yes||
|[Directory-Based Edge Blocking (DBEB)](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-directory-based-edge-blocking)|Enabled|Enabled|Domain Type = Authoritative|
|[Set up multi-factor authentication for all admin accounts](../../admin/security-and-compliance/set-up-multi-factor-authentication.md)|Enabled|Enabled||
|

## Troubleshooting

Troubleshoot general issues and trends by using the reports in the admin center. Find single point specific data about a message by using the message trace tool. Learn more about reporting at [Reporting and message trace in Exchange Online Protection](reporting-and-message-trace-in-exchange-online-protection.md). Learn more about the message trace tool at [Message trace in the Security & Compliance Center](message-trace-scc.md).

## Report false positives and false negatives to Microsoft

To help improve spam filtering in the service for everyone, you should report false positives (good email marked as bad) and false negatives (bad email allowed) to Microsoft for analysis. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Create mail flow rules

Create mail flow rules (also known as transport rules) or custom filters to meet your business needs.

When you deploy a new rule to production, select one of the test modes first to see the effect of the rule. Once you are satisfied that the rule is working in the manner intended, change the rule mode to **Enforce**.

When you deploy new rules, consider adding the additional action of **Generate Incident Report** to monitor the rule in action.

In hybrid environments where your organization includes both on-premises Exchange and Exchange Online, consider the conditions that you use in mail flow rules. If you want the rules to apply to the entire organization, be sure to use conditions that are available in both on-premises Exchange and in Exchange Online. While most conditions are available in both environments, there are a few that are only available in one environment or the other. Learn more at [Mail flow rules (transport rules) in Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).
