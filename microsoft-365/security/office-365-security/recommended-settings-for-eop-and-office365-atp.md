---
title: "Microsoft recommendations for EOP and Office 365 ATP security settings, recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work, etc"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
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

# Recommended settings for EOP and Office 365 ATP security

**Exchange Online Protection (EOP)** is the core of security for Office 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are often required. **Office 365 Advanced Threat Protection (ATP)** ATP Plan 1 or ATP Plan 2 contain additional features that give admins more layers of security, control, and investigation.

Although we empower security administrators to customize their security settings, there are two security levels in EOP and Office 365 ATP that we recommend: **Standard** and **Strict**. Each customer's environment and needs are different, but we believe that these levels of mail filtering configurations will help prevent unwanted mail from reaching your employees' inbox in most situations.

This topic describes these Microsoft-recommended settings to help protect your Office 365 users.

## Anti-spam, anti-malware, and anti-phishing protection in EOP

Anti-spam, anti-malware, and anti-phishing are features of EOP that can be configured by admins. We recommend the following configurations.

### EOP anti-spam policy settings

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Spam detection action|Move message to Junk Email folder|Quarantine message||
|High confidence spam detection action|Quarantine message|Quarantine message||
|Phishing email detection action|Quarantine message|Quarantine message||
|High confidence Phish email detection action|Quarantine message|Quarantine message||
|Bulk email detection action|Move message to Junk Email folder|Quarantine message||
|Set Bulk email threshold to|6|4|The default is currently 7 but we recommend that most organizations move it down to at least 6|
|Quarantine retention period|30 days|30 days||
|Safety tips|On|On||
|Allowed Senders|None|None||
|Allowed Senders Domains|None|None|Adding domains that you own (also known as _accepted domains_) to the allowed senders list is not required. In fact, it's considered high risk since it creates opportunities for bad actors to send you mail that would otherwise be filtered out. Use [spoof intelligence](learn-about-spoof-intelligence.md) in the Security & Compliance Center on the **Anti-spam settings** page to review all senders who are spoofing either domains that are part of your organization, or spoofing external domains.|
|Blocked Senders|None|None||
|Blocked Senders domains|None|None||
|End user spam notification frequency|Enabled|Enabled|3 days|
|Zero Hour auto purge|On|On|For both Spam and Phish ZAP|
|MarkAsSpamBulkMail|On|On|This setting is only available in PowerShell|

There are several other parameters in the Anti-spam policy called Advanced Spam filter that are being deprecated at the time of this writing. Our recommended settings for these are to turn them **OFF** for both Standard and Strict levels:

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

#### EOP outbound spam filter policy settings

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Outbound spam policy Recipient Limits - External hourly limit|500|400||
|Outbound spam policy Recipient Limits - Internal hourly limit|1000|800||
|Outbound spam policy Recipient Limits - Daily limit|1000|800||
|Action when a user exceeds the limits|Restrict the user from sending mail|Restrict the user from sending mail||

### EOP anti-malware policy settings

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Malware Detection Response|No|No|If malware is detected in an email attachment, the message will be quarantined and can be released only by an admin.|
|"Common Attachment Type Filter" for blocking suspicious file types|On|On||
|Malware Zero-hour Auto Purge|On|On||
|Notify internal senders of the undelivered message|Disabled|Disabled||
|Notify external senders of the undelivered message|Disabled|Disabled||

### EOP anti-phishing policy settings

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Enable anti-spoofing protection|On|On||
|Enable Unauthenticated Sender (tagging)|On|On||
|If email is sent by someone who's not allowed to spoof your domain|Move message to the recipients' Junk Email folders|Quarantine the message||

## Office 365 Advanced Threat Protection security

Additional security benefits come with an Office 365 Advanced Threat Protection (ATP) subscription. For the latest news and information, you can see [What's new in Office 365 ATP](whats-new-in-office-365-atp.md).

Office 365 ATP includes the Safe Attachment and Safe Links policies to prevent email with potentially malicious attachments from being delivered, and to keep users from clicking potentially unsafe URLs.

> [!IMPORTANT]
> Advanced anti-phishing is one of the benefits of an Office 365 ATP subscription. Although it's enabled by default, you ***must*** configure at least one anti-phishing policy before it can start filtering mail. Forgetting to configure anti-phishing policies could exposes users to risky emails. Be sure to configure your anti-phishing policies after you add an Office 365 ATP subscription.

If you've added an Office 365 ATP subscription to your EOP, set the following configurations.

### Office ATP anti-phishing policy settings

EOP customers get basic anti-phishing as previously described, but Office 365 ATP includes more features and control to help prevent, detect, and remediate against attacks.

|Impersonation security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|(Edit impersonation policy) Add users to protect|On|On|Depends on your organization, but we recommend adding users in key roles. Internally, these might be your CEO, CFO, and other senior leaders. Externally, these could include council members or your board of directors.|
|(Edit impersonation policy) Automatically include the domains I own|On|On||
|(Edit impersonation policy) Include custom domains|On|On|Depends on your organization, but we recommend adding domains you interact with most that you don't own.|
|If email is sent by an impersonated user you specified|Quarantine the message|Quarantine the message||
|If email is sent by an impersonated domain you specified|Quarantine the message|Quarantine the message||
|Show tip for impersonated users|On|On||
|Show tip for impersonated domains|On|On||
|Show tip for unusual characters|On|On||
|Enable Mailbox intelligence|On|On||
|Enable Mailbox intelligence based impersonation protection|On|On||
|If email is sent by an impersonated user protected by mailbox intelligence|Move message to the recipients' Junk Email folders|Quarantine the message||
|(Edit impersonation policy) Add trusted senders and domains|None|None|Depends on your organization, but we recommend adding users or domains that incorrectly get marked as phish due to impersonation only and not other filters.|

|Spoof security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Enable anti-spoofing protection|On|On||
|Enable Unauthenticated Sender (tagging)|On|On||
|If email is sent by someone who's not allowed to spoof your domain|Move message to the recipients' Junk Email folders|Quarantine the message||
|EnableAuthenticationSafetyTip|True|True|This setting is only available in PowerShell|
|EnableAuthenticationSoftPassSafetyTip|False|True|This setting is only available in PowerShell|
|EnableSuspiciousSafetyTip|False|True|This setting is only available in PowerShell|
|TreatSoftPassAsAuthenticated|True|False|This setting is only available in PowerShell|

|Advanced settings security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Advanced phishing thresholds|2 - Aggressive|3 - More aggressive||

### Safe Links settings

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Use ATP Safe Links in Office 365 Apps, Office for iOS and Android|Enabled|Enabled|This falls under the ATP Safe Links Policies that apply to the entire organization|
Do not track when users click safe links|Disabled|Disabled|This falls under the ATP Safe Links Policies that apply to the entire organization|
|Do not let users click through safe links to original URL|Enabled|Enabled|This falls under the ATP Safe Links Policies that apply to the entire organization|
|Action for unknown potentially malicious URLs in messages|On|On||
|Apply real-time URL scanning for suspicious links and links that point to files|Enabled|Enabled||
|Wait for URL scanning to complete before delivering the message|Enabled|Enabled||
|Apply safe links to email messages sent within the organization|Enabled|Enabled||

### Safe Attachments

|Security feature name|Standard|Strict|Comment|
|---------|---------|---------|---------|
|Turn on ATP for SharePoint, OneDrive, and Microsoft Teams|Enabled|Enabled||
|ATP Safe attachments unknown malware response|Block|Block||
|Redirect attachment on detection|Enabled|Enabled|Redirect to email address for a security administrator that knows how to determine if the attachment is malware or not|
|ATP Safe attachments response if malware scanning for attachments times out or error occurs|Enabled|Enabled||

