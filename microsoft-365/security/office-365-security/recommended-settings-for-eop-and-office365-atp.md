---
title: "Microsoft recommendations for EOP and Defender for Office 365 security settings, recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work, security baselines, baselines for EOP, baselines for Defender for Office 365 , set up Defender for Office 365 , set up EOP, configure Defender for Office 365, configure EOP, security configuration"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date:
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
description: "What are best practices for Exchange Online Protection (EOP) and Defender for Office 365 security settings? What's the current recommendations for standard protection? What should be used if you want to be more strict? And what extras do you get if you also use Defender for Office 365?"
---

# Recommended settings for EOP and Microsoft Defender for Office 365 security

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Exchange Online Protection (EOP)** is the core of security for Microsoft 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are often required. **Microsoft Defender for Office 365** Plan 1 or Plan 2 contain additional features that give admins more layers of security, control, and investigation.

Although we empower security administrators to customize their security settings, there are two security levels in EOP and Microsoft Defender for Office 365 that we recommend: **Standard** and **Strict**. Each customer's environment and needs are different, but we believe that these levels of filtering will help prevent unwanted mail from reaching your employees' Inbox in most situations.

To automatically apply the Standard or Strict settings to users, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

> [!NOTE]
> The junk email rule needs to be enabled on mailboxes in order for filtering to work properly. It's enabled by default, but you should check it if filtering does not seem to be working. For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

This article describes the default settings, and also the recommended Standard and Strict settings to help protect your users.

> [!TIP]
> The Office 365 Advanced Threat Protection Recommended Configuration Analyzer (ORCA) module for PowerShell can help you (admins) find the current values of these settings. Specifically, the **Get-ORCAReport** cmdlet generates an assessment of anti-spam, anti-phishing, and other message hygiene settings. You can download the ORCA module at <https://www.powershellgallery.com/packages/ORCA/>.

## Anti-spam, anti-malware, and anti-phishing protection in EOP

Anti-spam, anti-malware, and anti-phishing are EOP features that can be configured by admins. We recommend the following Standard or Strict configurations.

### EOP anti-spam policy settings

To create and configure anti-spam policies, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Spam** detection action <br/><br/> _SpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`||
|**High confidence spam** detection action <br/><br/> _HighConfidenceSpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|**Phishing email** detection action <br/><br/> _PhishSpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|**High confidence phishing email** detection action <br/><br/> _HighConfidencePhishAction_|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|**Bulk email** detection action <br/><br/> _BulkSpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`||
|Bulk email threshold <br/><br/> _BulkThreshold_|7|6|4|For details, see [Bulk complaint level (BCL) in Office 365](bulk-complaint-level-values.md).|
|Quarantine retention period <br/><br/> _QuarantineRetentionPeriod_|15 days|30 days|30 days||
|**Safety Tips** <br/><br/> _InlineSafetyTipsEnabled_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|Allowed Senders <br/><br/> _AllowedSenders_|None|None|None||
|Allowed Sender Domains <br/><br/> _AllowedSenderDomains_|None|None|None|Adding domains to the allowed senders list is a very bad idea. Attackers would be able to send you email that would otherwise be filtered out. <br/><br/> Use [spoof intelligence](learn-about-spoof-intelligence.md) in the Security & Compliance Center on the **Anti-spam settings** page to review all senders who are spoofing sender email addresses in your organization's email domains or spoofing sender email addresses in external domains.|
|Blocked Senders <br/><br/> _BlockedSenders_|None|None|None||
|Blocked Sender Domains <br/><br/> _BlockedSenderDomains_|None|None|None||
|**Enable end-user spam notifications** <br/><br/> _EnableEndUserSpamNotifications_|Disabled <br/><br/> `$false`|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`||
|**Send end-user spam notifications every (days)** <br/><br/> _EndUserSpamNotificationFrequency_|3 days|3 days|3 days||
|**Spam ZAP** <br/><br/> _SpamZapEnabled_|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`||
|**Phish ZAP** <br/><br/> _PhishZapEnabled_|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`|Enabled <br/><br/> `$true`||
|_MarkAsSpamBulkMail_|On|On|On|This setting is only available in PowerShell.|
|

There are several other Advanced Spam Filter (ASF) settings in anti-spam policies that are in the process of being deprecated. More information on the timelines for the depreciation of these features will be communicated outside of this article.

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

For more information about the default sending limits in the service, see [Sending limits](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Maximum number of recipients per user: External hourly limit** <br/><br/> _RecipientLimitExternalPerHour_|0|500|400|The default value 0 means use the service defaults.|
|**Maximum number of recipients per user: Internal hourly limit** <br/><br/> _RecipientLimitInternalPerHour_|0|1000|800|The default value 0 means use the service defaults.|
|**Maximum number of recipients per user: Daily limit** <br/><br/> _RecipientLimitPerDay_|0|1000|800|The default value 0 means use the service defaults.|
|**Action when a user exceeds the limits** <br/><br/> _ActionWhenThresholdReached_|**Restrict the user from sending mail till the following day** <br/><br/> `BlockUserForToday`|**Restrict the user from sending mail** <br/><br/> `BlockUser`|**Restrict the user from sending mail** <br/><br/> `BlockUser`||
|

### EOP anti-malware policy settings

To create and configure anti-malware policies, see [Configure anti-malware policies in Office 365](configure-anti-malware-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Do you want to notify recipients if their messages are quarantined?** <br/><br/> _Action_|No <br/><br/> _DeleteMessage_|No <br/><br/> _DeleteMessage_|No <br/><br/> _DeleteMessage_|If malware is detected in an email attachment, the message is quarantined and can be released only by an admin.|
|**Common Attachment Types Filter** <br/><br/> _EnableFileFilter_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`|This setting quarantines messages that contain executable attachments based on file type, regardless of the attachment content.|
|**Malware Zero-hour Auto Purge** <br/><br/> _ZapEnabled_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Notify internal senders** of the undelivered message <br/><br/> _EnableInternalSenderNotifications_|Disabled <br/><br/> `$false`|Disabled <br/><br/> `$false`|Disabled <br/><br/> `$false`||
|**Notify external senders** of the undelivered message <br/><br/> _EnableExternalSenderNotifications_|Disabled <br/><br/> `$false`|Disabled <br/><br/> `$false`|Disabled <br/><br/> `$false`||
|

### EOP default anti-phishing policy settings

For more information about these settings, see [Spoof settings](set-up-anti-phishing-policies.md#spoof-settings). To configure these settings, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Enable anti-spoofing protection** <br/><br/> _EnableAntispoofEnforcement_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Unauthenticated Sender** <br/><br/> _EnableUnauthenticatedSender_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md).|
|**If email is sent by someone who's not allowed to spoof your domain** <br/><br/> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`|This setting applies to blocked senders in [spoof intelligence](learn-about-spoof-intelligence.md).|
|

## Microsoft Defender for Office 365 security

Additional security benefits come with an Microsoft Defender for Office 365 subscription. For the latest news and information, you can see [What's new in Defender for Office 365](whats-new-in-office-365-atp.md).

> [!IMPORTANT]
>
> - The default anti-phishing policy in Microsoft Defender for Office 365 provides [spoof protection](set-up-anti-phishing-policies.md#spoof-settings) for all recipients. However, the available [impersonation protection](#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) settings for specific senders or sender domains are not configured or enabled in the default policy. To enable impersonation protection, configure the default policy or create additional anti-phishing policies in Defender for Office 365.
>
> - There are no default Safe Links policies or Safe Attachments policies that automatically protect all recipients in the organization. To get the protections, you need to create at least one Safe Links Policy and Safe Attachments policy.
>
> - [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md) protection and [Safe Documents](safe-docs.md) protection have no dependencies on Safe Links policies.

If your subscription includes Microsoft Defender for Office 365 or if you've purchased Defender for Office 365 as an add-on, set the following Standard or Strict configurations.

### Anti-phishing policy settings in Microsoft Defender for Office 365

EOP customers get basic anti-phishing as previously described, but Microsoft Defender for Office 365 includes more features and control to help prevent, detect, and remediate against attacks. To create and configure these policies, see [Configure anti-phishing policies in Defender for Office 365](configure-atp-anti-phishing-policies.md).

#### Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure these settings, see [Configure anti-phishing policies in Defender for Office 365](configure-atp-anti-phishing-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|Protected users: **Add users to protect** <br/><br/> _EnableTargetedUserProtection_ <br/><br/> _TargetedUsersToProtect_|Off <br/><br/> `$false` <br/><br/> none|On <br/><br/> `$true` <br/><br/> \<list of users\>|On <br/><br/> `$true` <br/><br/> \<list of users\>|Depending on your organization, we recommend adding users (message senders) in key roles. Internally, protected senders might be your CEO, CFO, and other senior leaders. Externally, protected senders could include council members or your board of directors.|
|Protected domains: **Automatically include the domains I own** <br/><br/> _EnableOrganizationDomainsProtection_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|Protected domains: **Include custom domains** <br/><br/> _EnableTargetedDomainsProtection_ <br/><br/> _TargetedDomainsToProtect_|Off <br/><br/> `$false` <br/><br/> none|On <br/><br/> `$true` <br/><br/> \<list of domains\>|On <br/><br/> `$true` <br/><br/> \<list of domains\>|Depending on your organization, we recommend adding domains (sender domains) that you don't own, but you frequently interact with.|
|Protected users: **If email is sent by an impersonated user** <br/><br/> _TargetedUserProtectionAction_|**Don't apply any action** <br/><br/> `NoAction`|**Quarantine the message** <br/><br/> `Quarantine`|**Quarantine the message** <br/><br/> `Quarantine`||
|Protected domains: **If email is sent by an impersonated domain** <br/><br/> _TargetedDomainProtectionAction_|**Don't apply any action** <br/><br/> `NoAction`|**Quarantine the message** <br/><br/> `Quarantine`|**Quarantine the message** <br/><br/> `Quarantine`||
|**Show tip for impersonated users** <br/><br/> _EnableSimilarUsersSafetyTips_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Show tip for impersonated domains** <br/><br/> _EnableSimilarDomainsSafetyTips_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Show tip for unusual characters** <br/><br/> _EnableUnusualCharactersSafetyTips_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Mailbox intelligence?** <br/><br/> _EnableMailboxIntelligence_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Mailbox intelligence based impersonation protection?** <br/><br/> _EnableMailboxIntelligenceProtection_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**If email is sent by an impersonated user protected by mailbox intelligence** <br/><br/> _MailboxIntelligenceProtectionAction_|**Don't apply any action** <br/><br/> `NoAction`|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`||
|**Trusted senders** <br/><br/> _ExcludedSenders_|None|None|None|Depending on your organization, we recommend adding users that incorrectly get marked as phishing due to impersonation only and not other filters.|
|**Trusted domains** <br/><br/> _ExcludedDomains_|None|None|None|Depending on your organization, we recommend adding domains that incorrectly get marked as phishing due to impersonation only and not other filters.|
|

#### Spoof settings in anti-phishing policies in Microsoft Defender for Office 365

Note that these are the same settings that are available in [anti-spam policy settings in EOP](#eop-anti-spam-policy-settings).

****

|Security feature name|Standard|Strict|Comment|
|---|---|---|---|
|**Enable anti-spoofing protection** <br/><br/> _EnableAntispoofEnforcement_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Enable Unauthenticated Sender** <br/><br/> _EnableUnauthenticatedSender_|On <br/><br/> `$true`|On <br/><br/> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md).|
|**If email is sent by someone who's not allowed to spoof your domain** <br/><br/> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`|This setting applies to blocked senders in [spoof intelligence](learn-about-spoof-intelligence.md).|
|

#### Advanced settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about this setting, see [Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure this setting, see [Configure anti-phishing policies in Defender for Office 365](configure-atp-anti-phishing-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Advanced phishing thresholds** <br/><br/> _PhishThresholdLevel_|**1 - Standard** <br/><br/> `1`|**2 - Aggressive** <br/><br/> `2`|**3 - More aggressive** <br/><br/> `3`||
|

### Safe Links settings

Safe Links in Defender for Office 365 includes global settings that apply to all users who are included in active Safe Links policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Links in Defender for Office 365](atp-safe-links.md).

#### Global settings for Safe Links

To configure these settings, see [Configure global settings for Safe Links in Defender for Office 365](configure-global-settings-for-safe-links.md).

In PowerShell, you use the [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Use Safe Links in: Office 365 applications** <br/><br/> _EnableSafeLinksForO365Clients_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`|Use Safe Links in supported Office 365 desktop and mobile (iOS and Android) apps. For more information, see [Safe Links settings for Office 365 apps](atp-safe-links.md#safe-links-settings-for-office-365-apps).|
|**Do not track when users click Safe Links** <br/><br/> _TrackClicks_|On <br/><br/> `$false`|Off <br/><br/> `$true`|Off <br/><br/> `$true`|Turning off this setting (setting _TrackClicks_ to `$true`) tracks user clicks in supported Office 365 apps.|
|**Do not let users click through Safe Links to original URL** <br/><br/> _AllowClickThrough_|On <br/><br/> `$false`|On <br/><br/> `$false`|On <br/><br/> `$false`|Turning on this setting (setting _AllowClickThrough_ to `$false`) prevents click through to the original URL in supported Office 365 apps.|
|

#### Safe Links policy settings

To configure these settings, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-atp-safe-links-policies.md).

In PowerShell, you use the [New-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safelinkspolicy) and [Set-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Links policy. The values in the Default column are the default values in new Safe Links policies that you create.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Select the action for unknown potentially malicious URLs in messages** <br/><br/> _IsEnabled_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Select the action for unknown or potentially malicious URLs within Microsoft Teams** <br/><br/> _EnableSafeLinksForTeams_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Apply real-time URL scanning for suspicious links and links that point to files** <br/><br/> _ScanUrls_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Wait for URL scanning to complete before delivering the message** <br/><br/> _DeliverMessageAfterScan_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Apply Safe Links to email messages sent within the organization** <br/><br/> _EnableForInternalSenders_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Do not track user clicks** <br/><br/> _DoNotTrackUserClicks_|Off <br/><br/> `$false`|Off <br/><br/> `$false`|Off <br/><br/> `$false`|Turning off this setting (setting _DoNotTrackUserClicks_ to `$false`) tracks users clicks.|
|**Do not allow users to click through to original URL** <br/><br/> _DoNotAllowClickThrough_|Off <br/><br/> `$false`|On <br/><br/> `$true`|On <br/><br/> `$true`|Turning on this setting (setting _DoNotAllowClickThrough_ to `$true`) prevents click through to the original URL.|
|

### Safe Attachments settings

Safe Attachments in Microsoft Defender for Office 365 includes global settings that have no relationship to Safe Attachments policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Attachments in Defender for Office 365](atp-safe-attachments.md).

#### Global settings for Safe Attachments

To configure these settings, see [Turn on ATP for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md) and [Safe Documents in Microsoft 365 E5](safe-docs.md).

In PowerShell, you use the [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** <br/><br/> _EnableATPForSPOTeamsODB_|On <br/><br/> `$true`|On <br/><br/> `$true`||
|**Turn on Safe Documents for Office clients** <bt/><br/> _EnableSafeDocs_|On <br/><br/> `$true`|On <br/><br/> `$true`|This setting is only available with Microsoft 365 E5 or Microsoft 365 E5 Security licenses. For more information, see [Safe Documents in Microsoft Defender for Office 365](safe-docs.md).|
|**Allow people to click through Protected View even if Safe Documents identified the file as malicious** <bt/><br/> _AllowSafeDocsOpen_|Off <br/><br/> `$false`|Off <br/><br/> `$false`|This setting is related to Safe Documents.|
|

#### Safe Attachments policy settings

To configure these settings, see [Set up Safe Attachments policies in Defender for Office 365](set-up-atp-safe-attachments-policies.md).

In PowerShell, you use the [New-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safeattachmentpolicy) and [Set-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Attachments policy. The values in the Default column are the default values in new Safe Attachments policies that you create.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Safe Attachments unknown malware response** <br/><br/> _Action_|Block <br/><br/> `Block`|Block <br/><br/> `Block`|Block <br/><br/> `Block`||
|**Redirect attachment on detection** : **Enable redirect** <br/><br/> _Redirect_ <br/><br/> _RedirectAddress_|Off, and no email address specified. <br/><br/> `$true` <br/><br/> none|On, and specify an email address. <br/><br/> `$true` <br/><br/> an email address|On, and specify an email address. <br/><br/> `$true` <br/><br/> an email address|Redirect messages to a security admin for review.|
|**Apply the above selection if malware scanning for attachments times out or error occurs.** <br/><br/> _ActionOnError_|On <br/><br/> `$true`|On <br/><br/> `$true`|On <br/><br/> `$true`||
|

## Related articles

- Are you looking for best practices for **Exchange mail flow rules (also known as transport rules**)? See [Best practices for configuring mail flow rules in Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/configuration-best-practices).

- Admins and users can submit false positives (good email marked as bad) and false negatives (bad email allowed) to Microsoft for analysis. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

- Use these links for info on how to **set up** your [EOP service](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-your-eop-service), and **configure** [Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp). Don't forget the helpful directions in '[Protect Against Threats in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/protect-against-threats)'.

- **Security baselines for Windows** can be found here: [Where can I get the security baselines?](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines#where-can-i-get-the-security-baselines) for GPO/on-premises options, and [Use security baselines to configure Windows 10 devices in Intune](https://docs.microsoft.com/intune/protect/security-baselines) for Intune-based security. Finally, a comparison between Microsoft Defender for Endpoint and Microsoft Intune security baselines is available in [Compare the Microsoft Defender for Endpoint and the Windows Intune security baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline#compare-the-microsoft-defender-atp-and-the-windows-intune-security-baselines).
