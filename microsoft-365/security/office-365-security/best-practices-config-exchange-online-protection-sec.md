---
title: "Configuration best practices for EOP security, best practices, settings, recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work,"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 09/18/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection:
- M365-security-compliance
description: "What are best practices for Exchange Online Protection (EOP) security settings? What's recommended? What should be used aggressively? And what extras do you get if you also use Advanced Threat Protection (ATP)?"
---

# Best-practices for configuring EOP security

Exchange Online Protection (EOP) is the core of security for E3 Office 365 subscriptions. It's optional, and even encouraged, for E3 customers to buy a subscription to Advanced Threat Protection (ATP), ex. ATP Plan 1 or ATP Plan 2, in order to leverage the added security available in E5 Office 365 subscriptions.

We'll discuss two security levels, called Recommended and Aggressive in EOP, covering comments on how to use features at both levels of security. The sections begin with email validation and authentication, which involves some tinkering outside of Office 365, in DNS, and secures outbound mail, making tenants good citizens to the resources they mail. These settings best protect your subscription.


## Email Authentication

SPF, DKIM, and DMARC are acronyms for Sender Policy Framework, DomainKeys Identified Mail, and Domain-based Message Authentication, Reporting, and Conformance (quite a mouthful), and are the basis of email authentication and validation.

These methods handle outbound email from Office 365, and help destination systems trust that email from your domain is valid. They're the only best practices we'll be covering that involve configurations to be made *outside* of Office 365, in your DNS. For specific configuration steps, see the [Email validation and authentication](https://docs.microsoft.com/en-us/office365/securitycompliance/how-office-365-uses-spf-to-prevent-spoofing) section in the Security and Compliance table of contents.


|Security feature name  |Recommended |Aggressive  |Comment  |
|---------|---------|---------|---------|
|[Create SPF records](https://docs.microsoft.com/en-us/office365/securitycompliance/set-up-spf-in-office-365-to-help-prevent-spoofing)    | Y        |    Y     |   -      |
|[Configure DKIM Signing for Domains](https://docs.microsoft.com/en-us/office365/securitycompliance/use-dkim-to-validate-outbound-email)     |  Y       |    Y     |  -       |
|[Implement DMARC with reject or quarantine action](https://docs.microsoft.com/en-us/office365/securitycompliance/use-dmarc-to-validate-email)     |   Y      |     Y    |   Use action=none for Recommended, and action=reject for Aggressive.     |

> [!IMPORTANT]
> To work with security roles and permissions, be sure you have the right role or roles in Office 365 or the Security and Compliance Center. If you are a *Security Administrator* in Azure Active Directory, a *Global Administrator* in Office 365, or an *Exchange Online Organizational Manager* in Exchange Online/Exchange Online Powershell, you're ready to go.

## Anti-Spam and Anti-Malware

Both anti-spam and anti-malware are features of EOP. Spam filtering, on by default in Office 365, scans all mail and assigns a Spam Confidence Level (SCL) number value to each mail. Just to clarify, its purpose is to enumerate how confident the filter is that the mail is (or isn't) spam. Low values, like -1 are non-spam from safe senders and lands in a user Inbox. High scores, like 7, 8, or 9 are either highly suspect, or known spammers and heads for a user's Junk Mail, or administrator-accessible Quarantine.

Malware filtering is also on by default in Office 365. Like anti-spam filtering, anti-malware filters work on both inbound and outbound mail. In both cases this protection can be configured for a better fit, by admins.

### Anti-Spam

|Security feature name  |Recommended |Aggressive  |Comment  |
|---------|---------|---------|---------|
|Quarantine retention period    |   Y      |     Y    |   30 days   |
|End user spam notification frequency   |   Y      |     Y    |   3 days   |
|Zero Hour Autopurge should be enabled   |   Y      |     Y    |   True  |
|Spam detection action should be sent to | JMF | Quarantine | - |
|High confidence spam detection action should be sent to | Quarantine | Quarantine| - |
|Bulk detection action should be set to | JMF | Quarantine | - |
|Set Bulk email threshold to | 6 | 4 | - |
|Safety tips should be enabled| True | True | - |
|Enable end user spam notification| True | False | - |
|Allowed Senders | None | None | - |
|Allowed Senders Domains | None | None | - |
|Blocked Senders | None | None | - |
|Blocked Senders domains | None | None | - |
|Outbound spam policy RRL | 500 | 500 | - |

Recommended for **OFF** in both Recommended and Aggressive Levels:

|Security feature name  |
|---------|
|IncreaseScoreWithImageLinks|
|IncreaseScoreWithNumericIps|
|IncreaseScoreWithRedirectToOtherPort|
|IncreaseScoreWithBizOrInfoUrls|
|MarkAsSpamEmptyMessages|
|MarkAsSpamJavaScriptInHtml|
|MarkAsSpamFramesInHtml|
|MarkAsSpamObjectTagsInHtml|
|MarkAsSpamEmbedTagsInHtml|
|MarkAsSpamFormTagsInHtml|
|MarkAsSpamWebBugsInHtml|
|MarkAsSpamSensitiveWordList|
|MarkAsSpamFromAddressAuthFail|
|MarkAsSpamNdrBackscatter|

Recommended for **ON** in both Recommended and Aggressive Levels:

|Security feature name  |
|---------|
|MarkAsSpamSpfRecordHardFail|
|MarkAsSpamBulkMail|

### Anti-Malware

|Security feature name  |Recommended |Aggressive  |Comment  |
|---------|---------|---------|---------|

## Advanced Threat Protection (ATP)

Earlier, I said that it was encouraged for E3 subscriptions to add ATP plan 1, or the more fully-realized ATP Plan 2. Anti-phishing is one reason why. Enabled by default, anti-phishing ***must*** be configured with policies to operate. Forgetting to configure anti-phishing policies exposes users to risk, be sure that's step-2 after you add an ATP subscription.

### Anti-phishing

Phishing is an attempt to masquerade as reputable company or person for the purpose of stealing personal information like credit-card numbers, or computer or device pins or passwords. Phishing can involve:

- *Spoofing*, where spoofers try to send mail on behalf of a specific target in a domain (for example, ellar@2020contoso.com trying to send mail for ellar@2020litware.com (a scenario email authentication methods can help thwart). 

- *Impersonation*, where mail is received whose sender is visually similar (or look-alike) to a target domain or username. The bad actor here, mimics a specific username, or pretends to be sending mail from a target domain. Here's a pretense domain: ellar@2020|itware.com, and here's a pretense user: ellαr@2020litware.com (look closely at the domain and user names in these examples to catch the domain- and user impersonation).

Phising filters are on by default in Office 365, but can be configured for a better fit. Here's what we would recommend.


|Security feature name  |Recommended |Aggressive  |Comment  |
|---------|---------|---------|---------|
|Zero Hour Autopurge should be enabled - Phish| True | True | - | 
|Phish detection action should be set to | Quarantine - Request | Quarantine - Admin | - |
|High confidence Phish detection action should be set to | Quarantine - Admin | Quarantine - Admin | - |
|Set Advanced phishing threshold to | 2 | 4 | - |
|Enable Anti-impersonation protection | Y | Y | - |
|Enable Mailbox intelligence in Anti-Impersonation policies | Y | Y | - |
|Enable Mailbox intelligence based Impersonation protection | Y | Y | - |
|Domain Impersonation action should be | JMF | Quarantine | - |
|User Impersonation action should be | JMF | Qurantine | - |
|Mailbox intelligence based impersonation protection action should be |  |||