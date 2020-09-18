---
title: "Microsoft recommendations for EOP and Office 365 ATP security settings, recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work, security baselines, baselines for EOP, baselines for ATP, setup ATP, setup EOP, configure ATP, configure EOP, security configuration"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date:
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

**Exchange Online Protection (EOP)** is the core of security for Microsoft 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are often required. **Office 365 Advanced Threat Protection (ATP)** ATP Plan 1 or ATP Plan 2 contain additional features that give admins more layers of security, control, and investigation.

Although we empower security administrators to customize their security settings, there are two security levels in EOP and Office 365 ATP that we recommend: **Standard** and **Strict**. Each customer's environment and needs are different, but we believe that these levels of mail filtering configurations will help prevent unwanted mail from reaching your employees' inbox in most situations.

To automatically apply the Standard or Strict settings to users, see [Preset security policies in EOP and Office 365 ATP](preset-security-policies.md).

> [!IMPORTANT]
> The junk email rule needs to be enabled on a mailbox in order for filtering to work properly. It's enabled by default, but you should check it if filtering does not seem to be working. For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

This topic describes these Microsoft-recommended settings to help protect your users.

> [!TIP]
> There is a new PowerShell Module that you can download called the Office 365 Advanced Threat Protection Recommended Configuration Analyzer (ORCA) that helps determine some of these settings. When run as an admin in your tenant, Get-ORCAReport will help generate an assessment of the anti-spam, anti-phish, and other message hygiene settings. You can download this module at https://www.powershellgallery.com/packages/ORCA/.

## Anti-spam, anti-malware, and anti-phishing protection in EOP

Anti-spam, anti-malware, and anti-phishing are features of EOP that can be configured by admins. We recommend the following configurations.

### EOP anti-spam policy settings

To create and configure anti-spam policies, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Spam** detection action <br/><br/> _SpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`||
|**High confidence spam** detection action <br/><br/> _HighConfidenceSpamAction_|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|**Phishing email** detection action <br/><br/> _PhishSpamAction_|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|**High confidence phishing email** detection action <br/><br/> _HighConfidencePhishAction_|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|**Bulk email** detection action <br/><br/> _BulkSpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`||
|Bulk email threshold <br/><br/> _BulkThreshold_|6|4|The default value is currently 7, but we recommend that you change it to 6. For details, see [Bulk complaint level (BCL) in Office 365](bulk-complaint-level-values.md).|
|Quarantine retention period <br/><br/> _QuarantineRetentionPeriod_|30 days|30 days||
|**Safety Tips** <br/><br/> _InlineSafetyTipsEnabled_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|Allowed Senders <br/><br/> _AllowedSenders_|None|None||
|Allowed Sender Domains <br/><br/> _AllowedSenderDomains_|None|None|Adding domains that you own (also known as _accepted domains_) to the allowed senders list is not required. In fact, it's considered high risk since it creates opportunities for bad actors to send you mail that would otherwise be filtered out. Use [spoof intelligence](learn-about-spoof-intelligence.md) in the Security & Compliance Center on the **Anti-spam settings** page to review all senders who are spoofing sender email addresses in your organization's email domains or spoofing sender email addresses in external domains.|
|Blocked Senders <br/><br/> _BlockedSenders_|None|None||
|Blocked Sender Domains <br/><br/> _BlockedSenderDomains_|None|None||
|**Enable end-user spam notifications** <br/><br/> _EnableEndUserSpamNotifications_|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`||
|**Send end-user spam notifications every (days)** <br/><br/> _EndUserSpamNotificationFrequency_|3 days|3 days||
|**Spam ZAP** <br/><br/> _SpamZapEnabled_|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`||
|**Phish ZAP** <br/><br/> _PhishZapEnabled_|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`||
|_MarkAsSpamBulkMail_|On|On|This setting is only available in PowerShell.|
|

There are several other Advanced Spam Filter (ASF) settings in anti-spam policies that are in the process of being deprecated. More information on the timelines for the depreciation of these features will be communicated outside of this topic.

We recommend that you turn these ASF settings **Off** for both **Standard** and **Strict** levels. For more information about ASF settings, see [Advanced Spam Filter (ASF) settings in Office 365](advanced-spam-filtering-asf-options.md).

****

|Security feature name|Comment|
|---|---|
|**Image links to remote sites** (_IncreaseScoreWithImageLinks_)||
|**Numeric IP address in URL** (_IncreaseScoreWithNumericIps_)||
|**UL redirect to other port** (_IncreaseScoreWithRedirectToOtherPort_)||
|**URL to .biz or .info websites** (_IncreaseScoreWithBizOrInfoUrls_)||
|**Empty messages** (_MarkAsSpamEmptyMessages_)||
|**JavaScript or VBScript in HTML** (_MarkAsSpamJavaScriptInHtml_)||
|**Frame or IFrame tags in HTML** (_MarkAsSpamFramesInHtml_)||
|**Object tags in HTML** (_MarkAsSpamObjectTagsInHtml_)||
|**Embed tags in HTML** (_MarkAsSpamEmbedTagsInHtml_)||
|**Form tags in HTML** (_MarkAsSpamFormTagsInHtml_)||
|**Web bugs in HTML** (_MarkAsSpamWebBugsInHtml_)||
|**Apply sensitive word list** (_MarkAsSpamSensitiveWordList_)||
|**SPF record: hard fail** (_MarkAsSpamSpfRecordHardFail_)||
|**Conditional Sender ID filtering: hard fail** (_MarkAsSpamFromAddressAuthFail_)||
|**NDR backscatter** (_MarkAsSpamNdrBackscatter_)||
|

#### EOP outbound spam policy settings

To create and configure outbound spam policies, see [Configure outbound spam filtering in Office 365](configure-the-outbound-spam-policy.md).

For more information about the default sending limits in the service, see [Sending limits](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1)

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Maximum number of recipients per user: External hourly limit** <br/><br/> _RecipientLimitExternalPerHour_|500|400||
|**Maximum number of recipients per user: Internal hourly limit** <br/><br/> _RecipientLimitInternalPerHour_|1000|800||
|**Maximum number of recipients per user: Daily limit** <br/><br/> _RecipientLimitPerDay_|1000|800||
|**Action when a user exceeds the limits** <br/><br/> _ActionWhenThresholdReached_|**Restrict the user from sending mail** <br/><br/> `BlockUser`|**Restrict the user from sending mail** <br/><br/> `BlockUser`||
|

### EOP anti-malware policy settings

To create and configure anti-malware policies, see [Configure anti-malware policies in Office 365](configure-anti-malware-policies.md).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Do you want to notify recipients if their messages are quarantined?** <br/><br/> _Action_|No <br/><br/> _DeleteMessage_|No <br/><br/> _DeleteMessage_|If malware is detected in an email attachment, the message is quarantined and can be released only by an admin.|
|**Common Attachment Types Filter** <br/><br/> _EnableFileFilter_|On <br/><br/> `$true`|On <br/><br/> `$true`|This setting quarantines messages that contain executable attachments based on file type, regardless of the attachment content.|
|**Malware Zero-hour Auto Purge** <br/><br/> _ZapEnabled_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Notify internal senders** of the undelivered message <br/><br/> _EnableInternalSenderNotifications_|Disabled <br/><br/> `$false`|Disabled <br/><br/> `$false`||
|**Notify external senders** of the undelivered message <br/><br/> _EnableExternalSenderNotifications_|Disabled <br/><br/> `$false`|Disabled <br/><br/> `$false`||
|

### EOP default anti-phishing policy settings

For more information about these settings, see [Spoof settings](set-up-anti-phishing-policies.md#spoof-settings). To configure these settings, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Enable anti-spoofing protection** <br/><br/> _EnableAntispoofEnforcement_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Unauthenticated Sender** <br/><br/> _EnableUnauthenticatedSender_|On <br/><br/> `$true`|On <br/><br/> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md).|
|**If email is sent by someone who's not allowed to spoof your domain** <br/><br/> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`|This applies to blocked senders in [spoof intelligence](learn-about-spoof-intelligence.md).|
|

## Office 365 Advanced Threat Protection security

Additional security benefits come with an Office 365 Advanced Threat Protection (ATP) subscription. For the latest news and information, you can see [What's new in Office 365 ATP](whats-new-in-office-365-atp.md).

Office 365 ATP includes the Safe Attachment and Safe Links policies to prevent email with potentially malicious attachments from being delivered, and to keep users from clicking potentially unsafe URLs.

> [!IMPORTANT]
> Advanced anti-phishing is one of the benefits of an Office 365 ATP subscription. The default ATP anti-phishing policy provides [spoof protection](set-up-anti-phishing-policies.md#spoof-settings) for all recipients. However, the available [impersonation protection](#impersonation-settings-in-atp-anti-phishing-policies) settings for specific senders or sending domains are not configured or enabled in the default policy. To enable impersonation protection, you need to configure at least one ATP anti-phishing policy.

If you've added an Office 365 ATP subscription to your EOP, set the following configurations.

### Office ATP anti-phishing policy settings

EOP customers get basic anti-phishing as previously described, but Office 365 ATP includes more features and control to help prevent, detect, and remediate against attacks. To create and configure these policies, see [Configure ATP anti-phishing policies in Office 365](configure-atp-anti-phishing-policies.md).

#### Impersonation settings in ATP anti-phishing policies

For more information about these settings, see [Impersonation settings in ATP anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-atp-anti-phishing-policies). To configure these settings, see [Configure ATP anti-phishing policies](configure-atp-anti-phishing-policies.md).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|Protected users: **Add users to protect** <br/><br/> _EnableTargetedUserProtection_ <br/><br/> _TargetedUsersToProtect_|On <br/><br/> `$true` <br/><br/> \<list of users\>|On <br/><br/> `$true` <br/><br/> \<list of users\>|Depends on your organization, but we recommend adding users in key roles. Internally, these might be your CEO, CFO, and other senior leaders. Externally, these could include council members or your board of directors.|
|Protected domains: **Automatically include the domains I own** <br/><br/> _EnableOrganizationDomainsProtection_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|Protected domains: **Include custom domains** <br/><br/> _EnableTargetedDomainsProtection_ <br/><br/> _TargetedDomainsToProtect_|On <br/><br/> `$true` <br/><br/> \<list of domains\>|On <br/><br/> `$true` <br/><br/> \<list of domains\>|Depends on your organization, but we recommend adding domains you frequently interact with that you don't own.|
|Protected users: **If email is sent by an impersonated user** <br/><br/> _TargetedUserProtectionAction_|**Quarantine the message** <br/><br/> `Quarantine`|**Quarantine the message** <br/><br/> `Quarantine`||
|Protected domains: **If email is sent by an impersonated domain** <br/><br/> _TargetedDomainProtectionAction_|**Quarantine the message** <br/><br/> `Quarantine`|**Quarantine the message** <br/><br/> `Quarantine`||
|**Show tip for impersonated users** <br/><br/> _EnableSimilarUsersSafetyTips_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Show tip for impersonated domains** <br/><br/> _EnableSimilarDomainsSafetyTips_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Show tip for unusual characters** <br/><br/> _EnableUnusualCharactersSafetyTips_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Mailbox intelligence?** <br/><br/> _EnableMailboxIntelligence_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Mailbox intelligence based impersonation protection?** <br/><br/> _EnableMailboxIntelligenceProtection_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**If email is sent by an impersonated user protected by mailbox intelligence** <br/><br/> _MailboxIntelligenceProtectionAction_|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`||
|**Trusted senders** <br/><br/> _ExcludedSenders_|None|None|Depends on your organization, but we recommend adding users that incorrectly get marked as phish due to impersonation only and not other filters.|
|**Trusted domains** <br/><br/> _ExcludedDomains_|None|None|Depends on your organization, but we recommend adding domains that incorrectly get marked as phish due to impersonation only and not other filters.|
|

#### Spoof settings in ATP anti-phishing policies

Note that these are the same settings that are available in [anti-spam policy settings in EOP](#eop-anti-spam-policy-settings).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Enable anti-spoofing protection** <br/><br/> _EnableAntispoofEnforcement_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Unauthenticated Sender** <br/><br/> _EnableUnauthenticatedSender_|On <br/><br/> `$true`|On <br/><br/> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md).|
|**If email is sent by someone who's not allowed to spoof your domain** <br/><br/> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`|This applies to blocked senders in [spoof intelligence](learn-about-spoof-intelligence.md).|
|

#### Advanced settings in ATP anti-phishing policies

For more information about this setting, see [Advanced phishing thresholds in ATP anti-phishing policies](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-atp-anti-phishing-policies). To configure this setting, see [Configure ATP anti-phishing policies](configure-atp-anti-phishing-policies.md).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Advanced phishing thresholds** <br/><br/> _PhishThresholdLevel_|**2 - Aggressive** <br/><br/> `2`|**3 - More aggressive** <br/><br/> `3`||

### ATP Safe Links policy settings

To configure these settings, see [Set up Office 365 ATP Safe Links policies](set-up-atp-safe-links-policies.md).

#### Safe Links policy settings in the default policy for all users

**Note**: In PowerShell, you use the [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Use Safe Links in: Office 365 applications** <br/><br/> _EnableSafeLinksForO365Clients_|On <br/><br/> `$true`|On <br/><br/> `$true`|Use ATP Safe Links in Office 365 desktop and mobile (iOS and Android) clients.|
|**Use Safe Links in: Office Web Access Companions** <br/><br/> _EnableSafeLinksForWebAccessCompanion_|On <br/><br/> `$true`|On <br/><br/> `$true`|Use ATP Safe Links in Office Web Apps. Note that this setting is not configurable.|
|**Do not track when users click safe links** <br/><br/> _TrackClicks_|Off <br/><br/> `$true`|Off <br/><br/> `$true`||
|**Do not let users click through safe links to original URL** <br/><br/> _AllowClickThrough_|On <br/><br/> `$false`|On <br/><br/> `$false`||
|

#### Safe Links policy settings in custom policies for specific users

**Note**: In PowerShell, you use the [New-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safelinkspolicy) and [Set-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Select the action for unknown potentially malicious URLs in messages** <br/><br/> _IsEnabled_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Select the action for unknown or potentially malicious URLs within Microsoft Teams** <br/><br/> _EnableSafeLinksForTeams_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Apply real-time URL scanning for suspicious links and links that point to files** <br/><br/> _ScanUrls_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Wait for URL scanning to complete before delivering the message** <br/><br/> _DeliverMessageAfterScan_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Apply safe links to email messages sent within the organization** <br/><br/> _EnableForInternalSenders_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Do not track when users click safe links** <br/><br/> _DoNotTrackUserClicks_|Off <br/><br/> `$false`|Off <br/><br/> `$false`|
|**Do not let users click through safe links to original URL** <br/><br/> _DoNotAllowClickThrough_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|

### ATP Safe Attachments policy settings

To configure these settings, see [Set up Office 365 ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md).

#### Safe Attachments policy settings in the default policy for all users

**Note**: In PowerShell, you use the [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** <br/><br/> _EnableATPForSPOTeamsODB_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Turn on Safe Documents for Office clients** <bt/><br/> _EnableSafeDocs_|On <br/><br/> `$true`|On <br/><br/> `$true`||This setting is only available with Microsoft 365 E5 or Microsoft 365 E5 Security licenses. For more information, see [Safe Documents in Office 365 Advanced Threat Protection](safe-docs.md).|
|**Allow people to click through Protected View even if Safe Documents identified the file as malicious** <bt/><br/> _AllowSafeDocsOpen_|Off <br/><br/> `$false`|Off <br/><br/> `$false`||
|

#### Safe Attachments policy settings in custom policies for specific users

**Note**: In PowerShell, you use the [New-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safeattachmentpolicy) and [Set-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Safe Attachments unknown malware response** <br/><br/> _Action_|Block <br/><br/> `Block`|Block <br/><br/> `Block`||
|**Redirect attachment on detection** : **Enable redirect** <br/><br/> _Redirect_ <br/><br/> _RedirectAddress_|On and specify an email address. <br/><br/> `$true` <br/><br/> an email address|On and specify an email address. <br/><br/> `$true` <br/><br/> an email address|Redirect messages to a security admin for review.|
|**Apply the above selection if malware scanning for attachments times out or error occurs.** <br/><br/> _ActionOnError_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|

## Related topics

- Are you looking for best practices with **Exchange Mail Flow / Exchange Transport Rules**? Please see [this article](https://docs.microsoft.com/microsoft-365/security/office-365-security/best-practices-for-configuring-eop) for details.

- Admins and users can submit false positives (good email marked as bad) and false negatives (bad email allowed) to Microsoft for analysis. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

- Use these links for info on how to **set up** your [EOP service](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-your-eop-service), and **configure** [Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp). (Don't forget to see the helpful directions in '[Protect Against Threats in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats)'.)

- **Security baselines for Windows** can be found [here](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines#where-can-i-get-the-security-baselines) for GPO/on-premises options, and for Intune-based security, [here](https://docs.microsoft.com/intune/protect/security-baselines). Finally, a comparison between Microsoft Defender Advanced Threat Protection (ATP) and Windows Intune security baselines can be found [here](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline#compare-the-microsoft-defender-atp-and-the-windows-intune-security-baselines).
