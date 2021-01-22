---
title: Tune anti-phishing protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
  - MET150
description: Admins can learn to identify the reasons why and how a phishing message got through in Microsoft 365, and what to do to prevent more phishing messages in the future.
ms.technology: mdo
ms.prod: m365-security
---

# Tune anti-phishing protection

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


Although Microsoft 365 comes with a variety of anti-phishing features that are enabled by default, it's possible that some phishing messages could still get through to your mailboxes. This topic describes what you can do to discover why a phishing message got through, and what you can do to adjust the anti-phishing settings in your Microsoft 365 organization _without accidentally making things worse_.

## First things first: deal with any compromised accounts and make sure you block any more phishing messages from getting through

If a recipient's account was compromised as a result of the phishing message, follow the steps in [Responding to a compromised email account in Microsoft 365](responding-to-a-compromised-email-account.md).

If your subscription includes Microsoft Defender for Office 365, you can use [Office 365 Threat Intelligence](office-365-ti.md) to identify other users who also received the phishing message. You have additional options to block phishing messages:

- [Safe Links in Microsoft Defender for Office 365](set-up-atp-safe-links-policies.md)

- [Safe Attachments in Microsoft Defender for Office 365](set-up-atp-safe-attachments-policies.md)

- [Anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md). Note that you can temporarily increase the **Advanced phishing thresholds** in the policy from **Standard** to **Aggressive**, **More aggressive**, or **Most aggressive**.

Verify these Defender for Office 365 features are turned on.

## Report the phishing message to Microsoft

Reporting phishing messages is helpful in tuning the filters that are used to protect all customers in Microsoft 365. For instructions, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Inspect the message headers

You can examine the headers of the phishing message to see if there's anything that you can do yourself to prevent more phishing messages from coming through. In other words, examining the messages headers can help you identify any settings in your organization that were responsible for allowing the phishing messages in.

Specifically, you should check the **X-Forefront-Antispam-Report** header field in the message headers for indications of skipped filtering for spam or phishing in the Spam Filtering Verdict (SFV) value. Messages that skip filtering will have an entry of `SCL:-1`, which means one of your settings allowed this message through by overriding the spam or phishing verdicts that were determined by the service. For more information on how to get message headers and the complete list of all available anti-spam and anti-phishing message headers, see [Anti-spam message headers in Microsoft 365](anti-spam-message-headers.md).

## Best practices to stay protected

- On a monthly basis, run [Secure Score](../mtp/microsoft-secure-score.md) to assess your organization's security settings.

- For messages that end up in quarantine by mistake, or for messages that are allowed through, we recommend that you search for those messages in [Threat Explorer and real-time detections](threat-explorer.md). You can search by sender, recipient, or message ID. After you locate the message, go to details by clicking on the subject. For a quarantined message, look to see what the "detection technology" was so that you can use the appropriate method to override. For an allowed message, look to see which policy allowed the message.

- Spoofed mail is tagged as phishing in Defender for Office 365. Sometimes spoof is benign, and sometimes users do not want it quarantined. To minimize impact to users, periodically review the [Spoof intelligence report](learn-about-spoof-intelligence.md). Once you have reviewed and made any necessary overrides, you can be confident to [configure spoof intelligence](set-up-anti-phishing-policies.md#spoof-settings) to **Quarantine** suspicious messages instead of delivering them to the user's Junk Email folder.

- You can repeat the above step for Impersonation (domain or user). The Impersonation report is found under **Threat Management** \> **Dashboard** \> **Insights**.

- Periodically review the [Threat Protection Status report](view-reports-for-atp.md#threat-protection-status-report).

- Some customers inadvertently allow phishing messages through by putting their own domains in the Allow sender or Allow domain list in anti-spam policies. Although this configuration will allow some legitimate messages through, it will also allow malicious messages that would normally be blocked by the spam and/or phishing filters. Instead of allowing the domain, you should correct the underlying problem.

  The best way to deal with legitimate messages that are blocked by Microsoft 365 (false positives) that involve senders in your domain is to fully and completely configure the SPF, DKIM, and DMARC records in DNS for _all_ of your email domains:

  - Verify that your SPF record identifies _all_ sources of email for senders in your domain (don't forget third-party services!).

  - Use hard fail (\-all) to ensure that unauthorized senders are rejected by email systems that are configured to do so. You can use [spoof intelligence](learn-about-spoof-intelligence.md) to help identify senders that are using your domain so that you can include authorized third-party senders in your SPF record.

  For configuration instructions, see:

  - [Set up SPF to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md)

  - [Use DKIM to validate outbound email sent from your custom domain](use-dkim-to-validate-outbound-email.md)

  - [Use DMARC to validate email](use-dmarc-to-validate-email.md)

- Whenever possible, we recommend that you deliver email for your domain directly to Microsoft 365. In other words, point your Microsoft 365 domain's MX record to Microsoft 365. Exchange Online Protection (EOP) is able to provide the best protection for your cloud users when their mail is delivered directly to Microsoft 365. If you must use a third-party email hygiene system in front of EOP, use Enhanced Filtering for Connectors. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

- Users should use the [Report Message add-in](enable-the-report-message-add-in.md) or the [Report Phishing add-in](enable-the-report-phish-add-in.md) to report messages to Microsoft, which can train our system. Admins should also take advantage of [Admin Submission](admin-submission.md) capabilities.

- Multi factor authentication (MFA) is a good way to prevent compromised accounts. You should strongly consider enabling MFA for all of your users. For a phased approach, start by enabling MFA for your most sensitive users (admins, executives, etc.) before you enable MFA for everyone. For instructions, see [Set up multi-factor authentication](../../admin/security-and-compliance/set-up-multi-factor-authentication.md).

- Forwarding rules to external recipients are often used by attackers to extract data. Use the **Review mailbox forwarding rules** information in [Microsoft Secure Score](../mtp/microsoft-secure-score.md) to find and even prevent forwarding rules to external recipients. For more information, see [Mitigating Client External Forwarding Rules with Secure Score](https://docs.microsoft.com/archive/blogs/office365security/mitigating-client-external-forwarding-rules-with-secure-score).
