---
title:       Understanding detection technology within the email entity page in Microsoft Defender for Office 365
description: Guide to understanding the detection technology shown in the email entity page within Microsoft Defender for Office 365
author:      MSFTBen
ms.author:   MSFTBen 
ms.service:  microsoft-365-security
ms.topic:    how-to
ms.date:     07/03/2023
audience: ITPro
ms.subservice: mdo
---

# Understanding detection technology within the email entity page in Microsoft Defender for Office 365

Within the email [entity page](/microsoft-365/security/office-365-security/mdo-email-entity-page), the specific threat (if detected) will be shown on the left hand flyout, along with the **detection technology** which lead to that verdict. understanding what the different detection technologies mean, how they are triggered and how to resolve false positives is the aim of this article.

## Detection technology details table

For the resolution of false positives in the below table, you should always start with an admin submission, which will also prompt you to add an entry into the Tenant Allow/Block List (TABL) which adds a temporary override signal to the filters that determined the message was malicious while our filters are updated (if appropriate). See the below articles for more information on Admin submissions & TABL.

- [Submissions: Report good email to Microsoft](https://learn.microsoft.com/microsoft-365/security/office-365-security/submissions-admin#report-good-email-to-microsoft)
- [Tenant Allow/Block List](https://learn.microsoft.com/microsoft-365/security/office-365-security/tenant-allow-block-list-about#allow-entries-in-the-tenant-allowblock-list)

|Detection tech|Details|Notes|
| -------- | -------- | -------- |
|Advanced filter|Machine learning models based detection on the email & contents to detect phish & spam|
|Antimalware protection|Detection from signature based anti-malware engines||
|Bulk|Detection for advertising / marketing and simliar message types with their relative complaint levels|[Step-by-Step guide on how to tune bulk thresholds](/microsoft-365/security/office-365-security/step-by-step-guides/tune-bulk-mail-filtering-walkthrough)|
|Campaign|Messages identified and grouped as part of a malware or phish campaign|[Learn more about campaigns](https://learn.microsoft.com/microsoft-365/security/office-365-security/step-by-step-guides/track-and-respond-to-emerging-threats-with-campaigns)|
|Domain reputation|The message was sent from a domain that was identified as spam or phish domain based on internal or external signals||
|File detonation|Safe Attachments detected a malicious attachment during detonation within a sandbox||
|File detonation reputation|File attachments previously detected by Safe Attachments during detonation||
|File reputation|The message contains a file that was previously identified as malicious from other sources||
|Fingerprint matching|The message resembles a previous detected malicious or spam message||
|General filter|Phishing or spam signals based on analyst hurestics||
|Impersonation brand|Sender impersonation of well-known brands||
|Impersonation domain|Impersonation of sender domains that you own or specified for protection in anti-phishing policies|[Impersonation insight overview](https://learn.microsoft.com/microsoft-365/security/office-365-security/anti-phishing-mdo-impersonation-insight)|
|Impersonation user|Impersonation of protected senders that you specified in anti-phishing policies|[Impersonation insight overview](https://learn.microsoft.com/microsoft-365/security/office-365-security/anti-phishing-mdo-impersonation-insight)|
|IP reputation|The message was sent from a IP that was identified as a potentially malicoius||
|Mailbox intelligence impersonation|Impersonation of a user that the individual users sender map defines||
|Mixed analysis detection|Multiple filters contributed to the verdict for this message||
|Spoof DMARC|The message failed DMARC authentication|[How Microsoft 365 handles inbound email that fails DMARC](https://learn.microsoft.com/microsoft-365/security/office-365-security/email-authentication-dmarc-configure#how-microsoft-365-handles-inbound-email-that-fails-dmarc)|
|Spoof external domain|Spoof intelligence detected email spoofing for an a domain that is external to your organization||
|Spoof intra-org|Spoof intelligence detected email spoofing of a user or domain that is internal to your organization||
|URL detonation|Safe Links detected a malicious URL in the message during detonation within a sandbox||
|URL detonation reputation|URLs previously detected by Safe Links during detonation||
|URL malicious reputation|The message contains a URL that was previously identified as malicious or spam from other sources||

## Watch a video on submitting messages to Microsoft to learn more.
[!VIDEO https://www.youtube.com/watch?v=ta5S09Yz6Ks]
