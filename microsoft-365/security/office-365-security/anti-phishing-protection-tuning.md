---
title: Tune anti-phishing protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid: 
ms.collection: 
  - m365-security
  - tier2
  - MET150
description: Admins can learn to identify the reasons why and how a phishing message got through in Microsoft 365, and what to do to prevent more phishing messages in the future.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Tune anti-phishing protection

Although Microsoft 365 comes with a variety of anti-phishing features that are enabled by default, it's possible that some phishing messages could still get through to mailboxes in your organization. This article describes what you can do to discover why a phishing message got through, and what you can do to adjust the anti-phishing settings in your Microsoft 365 organization _without accidentally making things worse_.

## First things first: deal with any compromised accounts and make sure you block any more phishing messages from getting through

If a recipient's account was compromised as a result of the phishing message, follow the steps in [Responding to a compromised email account in Microsoft 365](responding-to-a-compromised-email-account.md).

If your subscription includes Microsoft Defender for Office 365, you can use [Office 365 Threat Intelligence](office-365-ti.md) to identify other users who also received the phishing message. You have additional options to block phishing messages:

- [Safe Links in Microsoft Defender for Office 365](safe-links-policies-configure.md)
- [Safe Attachments in Microsoft Defender for Office 365](safe-attachments-policies-configure.md)
- [Anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md). You can temporarily increase the **Advanced phishing thresholds** in the policy from **Standard** to **Aggressive**, **More aggressive**, or **Most aggressive**.

Verify these policies are working. Safe Links and Safe Attachments protection is turned on by default, thanks to Built-in protection in [preset security policies](preset-security-policies.md). Anti-phishing has a default policy that applies to all recipients where anti-spoofing protection is turned on by default. Impersonation protection isn't turned on in the policy, and therefore needs to be configured. For instructions, see [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md).

## Report the phishing message to Microsoft

Reporting phishing messages is helpful in tuning the filters that are used to protect all customers in Microsoft 365. For instructions, see [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](submissions-admin.md).

## Inspect the message headers

You can examine the headers of the phishing message to see if there's anything that you can do yourself to prevent more phishing messages from coming through. In other words, examining the messages headers can help you identify any settings in your organization that were responsible for allowing the phishing messages in.

Specifically, you should check the **X-Forefront-Antispam-Report** header field in the message headers for indications of skipped filtering for spam or phishing in the Spam Filtering Verdict (SFV) value. Messages that skip filtering have an entry of `SCL:-1`, which means one of your settings allowed this message through by overriding the spam or phishing verdicts that were determined by the service. For more information on how to get message headers and the complete list of all available anti-spam and anti-phishing message headers, see [Anti-spam message headers in Microsoft 365](message-headers-eop-mdo.md).

> [!TIP]
> You can copy and paste the contents of a message header into the [Message Header Analyzer](https://mha.azurewebsites.net/) tool. This tool helps parse headers and put them into a more readable format.

You can also use the [configuration analyzer](configuration-analyzer-for-security-policies.md) to compare your EOP and Defender for Office 365 security policies to the Standard and Strict recommendations.

## Best practices to stay protected

- On a monthly basis, run [Secure Score](../defender/microsoft-secure-score.md) to assess your organization's security settings.

- For messages that end up in quarantine by mistake (false positives), or for messages that are allowed through (false negatives), we recommend that you search for those messages in [Threat Explorer and real-time detections](threat-explorer-about.md). You can search by sender, recipient, or message ID. After you locate the message, go to details by clicking on the subject. For a quarantined message, look to see what the "detection technology" was so that you can use the appropriate method to override. For an allowed message, look to see which policy allowed the message.

- Email from spoofed senders (the From address of the message doesn't match the source of the message) is classified as _phishing_ in Defender for Office 365. Sometimes spoofing is benign, and sometimes users don't want messages from specific spoofed sender to be quarantined. To minimize the impact to users, periodically review the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md), [entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#use-the-microsoft-365-defender-portal-to-view-entries-for-spoofed-senders-in-the-tenant-allowblock-list), and the [Spoof detections report](reports-email-security.md#spoof-detections-report). After you review allowed and blocked spoofed senders and make any necessary overrides, you can confidently [configure spoof intelligence in anti-phishing policies](anti-phishing-policies-about.md#spoof-settings) to **Quarantine** suspicious messages instead of delivering them to the user's Junk Email folder.

- In Defender for Office 365, you can also use the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight> to track user impersonation or domain impersonation detections. For more information, see [Impersonation insight in Defender for Office 365](anti-phishing-mdo-impersonation-insight.md).

- Periodically review the [Threat Protection Status report](reports-defender-for-office-365.md#threat-protection-status-report) for phishing detections.

- Some customers inadvertently allow phishing messages through by putting their own domains in the Allow sender or Allow domain list in anti-spam policies. Although this configuration allows some legitimate messages through, it also allows malicious messages that would normally be blocked by the spam and/or phishing filters. Instead of allowing the domain, you should correct the underlying problem.

  The best way to deal with legitimate messages that are blocked by Microsoft 365 (false positives) that involve senders in your domain is to fully and completely configure the SPF, DKIM, and DMARC records in DNS for _all_ of your email domains:

  - Verify that your SPF record identifies _all_ sources of email for senders in your domain (don't forget third-party services!).

  - Use hard fail (\-all) to ensure that unauthorized senders are rejected by email systems that are configured to do so. You can use the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md) to help identify senders that are using your domain so that you can include authorized third-party senders in your SPF record.

  For configuration instructions, see:

  - [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md)
  - [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md)
  - [Use DMARC to validate email](email-authentication-dmarc-configure.md)

- Whenever possible, we recommend that you deliver email for your domain directly to Microsoft 365. In other words, point your Microsoft 365 domain's MX record to Microsoft 365. Exchange Online Protection (EOP) is able to provide the best protection for your cloud users when their mail is delivered directly to Microsoft 365. If you must use a third-party email hygiene system in front of EOP, use Enhanced Filtering for Connectors. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

-  Have users use the [built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web) or deploy the [Microsoft Report Message or Report Phishing add-ins](submissions-outlook-report-messages.md#use-the-report-message-and-report-phishing-add-ins-in-outlook) in your organization. Configure the [user reported settings](submissions-user-reported-messages-custom-mailbox.md) to send user reported messages to a reporting mailbox, to Microsoft, or both. User reported messages are then available to admins on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. Admin can report user reported messages or any messages to Microsoft as described in [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](submissions-admin.md). User or admin reporting of false positives or false negatives to Microsoft is important, because it helps train our detection systems.

- Multi factor authentication (MFA) is a good way to prevent compromised accounts. You should strongly consider enabling MFA for all of your users. For a phased approach, start by enabling MFA for your most sensitive users (admins, executives, etc.) before you enable MFA for everyone. For instructions, see [Set up multi-factor authentication](../../admin/security-and-compliance/set-up-multi-factor-authentication.md).

- Forwarding rules to external recipients are often used by attackers to extract data. Use the **Review mailbox forwarding rules** information in [Microsoft Secure Score](../defender/microsoft-secure-score.md) to find and even prevent forwarding rules to external recipients. For more information, see [Mitigating Client External Forwarding Rules with Secure Score](/archive/blogs/office365security/mitigating-client-external-forwarding-rules-with-secure-score).

  Use the [Autofowarded messages report](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report) to view specific details about forwarded email.
