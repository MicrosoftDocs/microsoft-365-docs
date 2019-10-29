---
title: "Best practices for EOP and Office 365 ATP security settings, recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work, etc"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 10/23/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection:
- M365-security-compliance
description: "What are best practices for Exchange Online Protection (EOP) and Advanced Threat Protection (ATP) security settings? What's the current recommendations for standard protection? What should be used if you want to be more strict? And what extras do you get if you also use Advanced Threat Protection (ATP)?"
---

# Best-practices for EOP and Office 365 ATP security

**Exchange Online Protection (EOP)** is the core of security for E3 Office 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are a necessity. While it's optional, there are additional security features in **Office 365 Advanced Threat Protection (ATP)** ATP Plan 1 or ATP Plan 2, that provide more layers of security, control, and investigation. 

There are two security levels in EOP and Office365 ATP: **Standard** and **Strict**. These define different levels of mail filtering configurations that help prevent unwanted mail from reaching your employees inbox. 

This topic contains Microsoft recommeded settings to help protect your Office 365 users. 

## Anti-spam, anti-malware, and anti-phishing protection in EOP
Anti-spam, anti-malware, and anti-phishing are features of EOP that can be configured by admins. We recommend the following configurations.

### Anti-spam policy

|Security feature name|Recommended|Aggressive|Comment|
|---------|---------|---------|---------|
|Quarantine retention period|Yes|Yes|30 days|
|End user spam notification frequency|Yes|Yes|3 days|
|Zero Hour Autopurge should be enabled|Yes|Yes|True|
|Spam detection action should be sent to|MoveToJmf|Quarantine||
|High confidence spam detection action should be sent to|Quarantine|Quarantine||
|Bulk detection action should be set to|MoveToJmf|Quarantine||
|Set Bulk email threshold to|6|4||
|Safety tips should be enabled|True|True||
|Enable end user spam notification|True|False||
|Allowed Senders|None|None||
|Allowed Senders Domains|None|None||
|Blocked Senders|None|None||
|Blocked Senders domains|None|None||
|Outbound spam policy RRL|500|500||

Recommended for **OFF** in both Standard and Strict Levels:

|Security feature name|
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
|MarkAsSpamSpfRecordHardFail|

Recommended for **ON** in both Standard and Strict Levels:

|Security feature name|
|---------|
|MarkAsSpamBulkMail|

### Anti-malware policy

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Malware Detection Response|Yes and use the default notification text|Yes and use the default notification text||
|"Common Attachment Type Filter" for blocking suspicious file types|On|On||
|Malware Zero-hour Auto Purge|On|On||
|Notify internal senders of the undelivered message|Disabled|Disabled||
|Notify external senders of the undelivered message|Disabled|Disabled||

### Anti-phishing policy

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Zero Hour Autopurge should be enabled - Phish|True|True||
|High confidence Phish detection action should be set to|Quarantine - Admin|Quarantine - Admin||
|EnableMailboxIntelligence|True|True||
|EnableSimilarUsersSafetyTips|True|True||
|EnableSimilarDomainsSafetyTips|True|True||
|EnableUnusualCharactersSafetyTips|True|True||
|TargetedUserProtectionAction|MoveToJmf|Quarantine||
|MailboxIntelligenceProtectionAction|NoAction + Safety Tip|Block||
|TargetedDomainProtectionAction|MoveToJmf|Quarantine||
|AuthenticationFailAction|MoveToJmf|Quarantine||
|AntiSpoofEnforcementType|High|High||
|EnableAuthenticationSafetyTip|False|True||
|Enable antispoofing protection|On|On||
|Enable Unauthenticated Sender tagging|On|On||
|EnableAuthenticationSoftPassSafetyTip|False|True||
|TreatSoftPassAsAuthenticated|True|False||
|EnableSuspiciousSafetyTip|True|True||

## Office 365 Advanced Threat Protection (ATP) security
Additional security benefits come with an Office 365 Advanced Threat Protection subscription. For the latest news and information, you can see [What's new in Office 365 ATP](whats-new-in-office-365-atp.md). 


### Advanced Anti-phishing
Phishing is an attempt to masquerade as reputable company or person for the purpose of stealing personal information like credit-card numbers, or computer or device pins or passwords. Phishing can involve:

- **Spoofing**, where spoofers try to send mail on behalf of a specific target in a domain (for example, ellar@2020contoso.com trying to send mail for ellar@2020litware.com (a scenario email authentication methods can help thwart).

- **Impersonation**, where mail is received whose sender is visually similar (or look-alike) to a target domain or username. The bad actor here, mimics a specific username, or pretends to be sending mail from a target domain. Here's a pretense domain: ellar@2020|itware.com, and here's a pretense user: ellαr@2020litware.com (look closely at the domain and user names in these examples to catch the domain and user impersonation).

> [!IMPORTANT]
> Advanced Anti-phishing is one of the benefits of an Office 365 ATP subscription. Enabled by default, anti-phishing ***must*** be configured by using policies before it'll start filtering mail. Forgetting to configure anti-phishing policies could exposes users to risky emails. Make sure to configure your Anti-phishing policies after you add an Office 365 ATP subscription.

If you've added an Office 365 ATP subscription to your EOP, set the following configurations.

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Advanced phishing threshold|2|3||
|Enable Anti-impersonation protection|Yes|Yes||
|Enable Mailbox intelligence in Anti-Impersonation policies|Yes|Yes||
|Enable Mailbox intelligence based Impersonation protection|Yes|Yes||
|Domain Impersonation action should be|MoveToJmf|Quarantine||
|User Impersonation action should be|MoveToJmf|Quarantine||
|Mailbox intelligence based impersonation protection action should be|No Action + Safety Tip|MoveToJmf||

### Safe Links and Safe Attachments

Office 365 ATP includes the Safe Attachment and Safe Links policies to prevent email with potentially malicious attachments from being delivered, and to keep users from clicking potentially unsafe URLs.

#### Safe Links settings

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Use ATP Safe Links in Office Applications|Enabled|Enabled||
|ATP Safe Links action for unknown potentially malicious URLs in messages|On|On||
|ATP Safe Links should apply real-time URL scanning for suspicious links and links that point to files|Enabled|Enabled||
|ATP Safe Links should wait for URL scanning to complete before delivering the message|Enabled|Enabled||
|ATP Safe Links should not track when users click for safe links|Disabled|Disabled||
|ATP Safe Links should not let users click through safe links to original URL|Disabled|Enabled||

#### Safe Attachments

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Turn on ATP for SharePoint, OneDrive, and Microsoft Teams|Enabled|Enabled||
|ATP Safe attachments unknown malware response|Block|Block||
|ATP Safe attachments response if malware scanning for attachments times out or error occurs|Enabled|Enabled||

## Miscellaneous settings for EOP or Office 365 ATP

These settings cover a range of features that don't necessarily fit into specific categories above. 

Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Create SPF records|Yes|Yes||
|Configure DKIM Signing for Domains|Yes|Yes||
|Implement Domain-based Message Reporting and Conformance (DMARC) with reject or quarantine action|action=none|action=reject||
|Deploy Report Message add-on to improve End User Reporting of Suspicious Emails|Yes|Yes||
|Schedule Malware and Spam Reports|Yes|Yes||
|Auto-forwarding to external domains should be disallowed or monitored||Yes||
|Unified Auditing should be enabled|Yes|Yes||
|IMAP should be disabled where not required||disabled||
|POP should be disabled where not required||disabled||
|SMTP Authenticated Submission should be turned off when not required by Applications||disabled||
|EWS should be disabled||disabled||
|PowerShell||disabled||
|Configure Sender Policy Framework to hard-fail|-all|-all||
|Use Spoof Intelligence to whitelist senders whenever possible|Yes|Yes||
|Directory-Based Edge Blocking (DBEB)|Enabled|Enabled|Domain Type = Authoritative|

## Email Authentication

SPF, DKIM, and DMARC are acronyms for Sender Policy Framework, DomainKeys Identified Mail, and Domain-based Message Authentication, Reporting, and Conformance (quite a mouthful), and are the basis of email authentication and validation.

These methods handle outbound email from Office 365, and help destination systems trust that email from your domain is valid. These  configurations are made *outside* of Office 365, in your DNS. For specific configuration steps, see the [How Office 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md) section in the Security and Compliance table of contents.

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|[Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md)|Yes|Yes||
|[Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md)|Yes|Yes||
|[Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md)|Yes|Yes|Use action=none for Recommended, and action=reject for Aggressive.|

> [!IMPORTANT]
> To work with security roles and permissions, be sure you have the right role or roles in Office 365 or the Security and Compliance Center. If you are a *Security Administrator* in Azure Active Directory, a *Global Administrator* in Office 365, or an *Exchange Online Organizational Manager* in Exchange Online/Exchange Online Powershell, you're ready to go.
