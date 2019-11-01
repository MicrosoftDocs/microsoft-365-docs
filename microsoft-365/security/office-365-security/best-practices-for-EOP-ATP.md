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

**Exchange Online Protection (EOP)** is the core of security for Office 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are often required. **Office 365 Advanced Threat Protection (ATP)** ATP Plan 1 or ATP Plan 2 contain additional features that give admins more layers of security, control, and investigation. 

Although we empower security administrators to customize their security settings, there are two security levels in EOP and Office365 ATP that we recommend: **Standard** and **Strict**. Each customer's environment and needs are different, but we beleive that these levels of mail filtering configurations will help prevent unwanted mail from reaching your employees' inbox in most situations. 

This topic describes these Microsoft-recommended settings to help protect your Office 365 users.

## Anti-spam, anti-malware, and anti-phishing protection in EOP
Anti-spam, anti-malware, and anti-phishing are features of EOP that can be configured by admins. We recommend the following configurations.

### Anti-spam policy

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Spam detection action|Move message to Junk Email folder|Quarantine||
|High confidence spam detection action|Quarantine|Quarantine||
|Phishing email detection action|Quarantine|Quarantine||
|High confidence Phish email detection action|Quarantine|Quarantine||
|Bulk email detection action|Move message to Junk Email folder|Quarantine||
|Set Bulk email threshold to|6|4||
|Quarantine retention period|30 days|30 days||
|Safety tips|On|On||
|Allowed Senders|None|None||
|Allowed Senders Domains|None|None|Adding domains that you own (also known as _accepted domains_) to the allowed senders list is not required. In fact, it's considered high risk since it creates opportunities for bad actors to send you mail that would otherwise be filtered out. Use [spoof intelligence](learn-about-spoof-intelligence.md) in the Security & Compliance Center on the **Anti-spam settings** page to review all senders who are spoofing either domains that are part of your organization, or spoofing external domains.|
|Blocked Senders|None|None||
|Blocked Senders domains|None|None||
|End user spam notification frequency|Enabled|Enabled|3 days|
|Zero Hour auto purge|On|On|For both Spam and Phish ZAP|
|MarkAsSpamBulkMail|On|On|This setting is only available in PowerShell|

#### Outbound spam filter policy

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Outbound spam policy Recipient Limits - External hourly limit|400|500||
|Outbound spam policy Recipient Limits - Internal hourly limit|800|1000||
|Outbound spam policy Recipient Limits - Daily limit|800|1000||
|Action when a user exceeds the limits|Restrict the user from sending mail|Restrict the user from sending mail||

### Anti-malware policy

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Malware Detection Response|No|No|If malware is detected in an email attachment, the message will be quarantined and can be released only by an admin.|
|"Common Attachment Type Filter" for blocking suspicious file types|On|On||
|Malware Zero-hour Auto Purge|On|On||
|Notify internal senders of the undelivered message|Disabled|Disabled||
|Notify external senders of the undelivered message|Disabled|Disabled||

### Anti-phishing policy

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Enable antispoofing protection|On|On||
|Enable Unauthenticated Sender tagging|On|On||
|If email is sent by someone who's not allowed to spoof your domain|Move message to the recipients' Junk Email folders|Quarantine the message||

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
|Domain Impersonation action should be|Move message to Junk Email folder|Quarantine||
|User Impersonation action should be|Move message to Junk Email folder|Quarantine||
|Mailbox intelligence based impersonation protection action should be|No Action + Safety Tip|Move message to Junk Email folder||
|EnableMailboxIntelligence|True|True||
|EnableSimilarUsersSafetyTips|True|True||
|EnableSimilarDomainsSafetyTips|True|True||
|EnableUnusualCharactersSafetyTips|True|True||
|TargetedUserProtectionAction|Move message to Junk Email folder|Quarantine||
|MailboxIntelligenceProtectionAction|NoAction + Safety Tip|Move message to Junk Email folder||
|TargetedDomainProtectionAction|Move message to Junk Email folder|Quarantine||
|AntiSpoofEnforcementType|High|High||
|EnableAuthenticationSafetyTip|False|True||
|EnableAuthenticationSoftPassSafetyTip|False|True||
|TreatSoftPassAsAuthenticated|True|False||
|EnableSuspiciousSafetyTip|True|True||

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
|[Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md)|Yes|Yes|Use action=none for Standard, and action=reject for Strict.|

> [!IMPORTANT]
> To work with security roles and permissions, be sure you have the right role or roles in Office 365 or the Security and Compliance Center. If you are a *Security Administrator* in Azure Active Directory, a *Global Administrator* in Office 365, or an *Exchange Online Organizational Manager* in Exchange Online/Exchange Online Powershell, you're ready to go.
