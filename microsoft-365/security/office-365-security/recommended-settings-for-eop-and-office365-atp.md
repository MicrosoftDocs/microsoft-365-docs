---
title: Microsoft recommendations for EOP and Defender for Office 365 security settings
keywords: Office 365 security recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work, security baselines, baselines for EOP, baselines for Defender for Office 365 , set up Defender for Office 365 , set up EOP, configure Defender for Office 365, configure EOP, security configuration
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 
manager: dansimp
audience: ITPro
ms.topic: conceptual

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: What are best practices for Exchange Online Protection (EOP) and Defender for Office 365 security settings? What's the current recommendations for standard protection? What should be used if you want to be more strict? And what extras do you get if you also use Defender for Office 365?
ms.technology: mdo
ms.prod: m365-security
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
|**Spam** detection action <p> _SpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`||
|**High confidence spam** detection action <p> _HighConfidenceSpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`||
|**Phishing email** detection action <p> _PhishSpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`||
|**High confidence phishing email** detection action <p> _HighConfidencePhishAction_|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`||
|**Bulk email** detection action <p> _BulkSpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`||
|Bulk email threshold <p> _BulkThreshold_|7|6|4|For details, see [Bulk complaint level (BCL) in Office 365](bulk-complaint-level-values.md).|
|Quarantine retention period <p> _QuarantineRetentionPeriod_|15 days|30 days|30 days||
|**Safety Tips** <p> _InlineSafetyTipsEnabled_|On <p> `$true`|On <p> `$true`|On <p> `$true`||
|Allowed Senders <p> _AllowedSenders_|None|None|None||
|Allowed Sender Domains <p> _AllowedSenderDomains_|None|None|None|Adding domains to the allowed senders list is a very bad idea. Attackers would be able to send you email that would otherwise be filtered out. <p> Use [spoof intelligence](learn-about-spoof-intelligence.md) in the Security & Compliance Center on the **Anti-spam settings** page to review all senders who are spoofing sender email addresses in your organization's email domains or spoofing sender email addresses in external domains.|
|Blocked Senders <p> _BlockedSenders_|None|None|None||
|Blocked Sender Domains <p> _BlockedSenderDomains_|None|None|None||
|**Enable end-user spam notifications** <p> _EnableEndUserSpamNotifications_|Disabled <p> `$false`|Enabled <p> `$true`|Enabled <p> `$true`||
|**Send end-user spam notifications every (days)** <p> _EndUserSpamNotificationFrequency_|3 days|3 days|3 days||
|**Spam ZAP** <p> _SpamZapEnabled_|Enabled <p> `$true`|Enabled <p> `$true`|Enabled <p> `$true`||
|**Phish ZAP** <p> _PhishZapEnabled_|Enabled <p> `$true`|Enabled <p> `$true`|Enabled <p> `$true`||
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
|**Maximum number of recipients per user: External hourly limit** <p> _RecipientLimitExternalPerHour_|0|500|400|The default value 0 means use the service defaults.|
|**Maximum number of recipients per user: Internal hourly limit** <p> _RecipientLimitInternalPerHour_|0|1000|800|The default value 0 means use the service defaults.|
|**Maximum number of recipients per user: Daily limit** <p> _RecipientLimitPerDay_|0|1000|800|The default value 0 means use the service defaults.|
|**Action when a user exceeds the limits** <p> _ActionWhenThresholdReached_|**Restrict the user from sending mail till the following day** <p> `BlockUserForToday`|**Restrict the user from sending mail** <p> `BlockUser`|**Restrict the user from sending mail** <p> `BlockUser`||
|

### EOP anti-malware policy settings

To create and configure anti-malware policies, see [Configure anti-malware policies in Office 365](configure-anti-malware-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Do you want to notify recipients if their messages are quarantined?** <p> _Action_|No <p> _DeleteMessage_|No <p> _DeleteMessage_|No <p> _DeleteMessage_|If malware is detected in an email attachment, the message is quarantined and can be released only by an admin.|
|**Common Attachment Types Filter** <p> _EnableFileFilter_|Off <p> `$false`|On <p> `$true`|On <p> `$true`|This setting quarantines messages that contain executable attachments based on file type, regardless of the attachment content.|
|**Malware Zero-hour Auto Purge** <p> _ZapEnabled_|On <p> `$true`|On <p> `$true`|On <p> `$true`||
|**Notify internal senders** of the undelivered message <p> _EnableInternalSenderNotifications_|Disabled <p> `$false`|Disabled <p> `$false`|Disabled <p> `$false`||
|**Notify external senders** of the undelivered message <p> _EnableExternalSenderNotifications_|Disabled <p> `$false`|Disabled <p> `$false`|Disabled <p> `$false`||
|

### EOP default anti-phishing policy settings

For more information about these settings, see [Spoof settings](set-up-anti-phishing-policies.md#spoof-settings). To configure these settings, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Enable anti-spoofing protection** <p> _EnableSpoofIntelligence_|On <p> `$true`|On <p> `$true`|On <p> `$true`||
|**Enable Unauthenticated Sender** <p> _EnableUnauthenticatedSender_|On <p> `$true`|On <p> `$true`|On <p> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md).|
|**If email is sent by someone who's not allowed to spoof your domain** <p> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Quarantine the message** <p> `Quarantine`|This setting applies to blocked senders in [spoof intelligence](learn-about-spoof-intelligence.md).|
|

## Microsoft Defender for Office 365 security

Additional security benefits come with a Microsoft Defender for Office 365 subscription. For the latest news and information, you can see [What's new in Defender for Office 365](whats-new-in-office-365-atp.md).

> [!IMPORTANT]
>
> - The default anti-phishing policy in Microsoft Defender for Office 365 provides [spoof protection](set-up-anti-phishing-policies.md#spoof-settings) and mailbox intelligence for all recipients. However, the other available [impersonation protection](#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) features and [advanced settings](#advanced-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are not configured or enabled in the default policy. To enable all protection features, modify the default anti-phishing policy or create additional anti-phishing policies.
>
> - There are no default Safe Links policies or Safe Attachments policies that automatically protect all recipients in the organization. To get the protections, you need to create at least one Safe Links Policy and Safe Attachments policy.
>
> - [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md) protection and [Safe Documents](safe-docs.md) protection have no dependencies on Safe Links policies.

If your subscription includes Microsoft Defender for Office 365 or if you've purchased Defender for Office 365 as an add-on, set the following Standard or Strict configurations.

### Anti-phishing policy settings in Microsoft Defender for Office 365

EOP customers get basic anti-phishing as previously described, but Microsoft Defender for Office 365 includes more features and control to help prevent, detect, and remediate against attacks. To create and configure these policies, see [Configure anti-phishing policies in Defender for Office 365](configure-atp-anti-phishing-policies.md).

#### Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure these settings, see [Configure anti-phishing policies in Defender for Office 365](configure-atp-anti-phishing-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|Protected users: **Add users to protect** <p> _EnableTargetedUserProtection_ <p> _TargetedUsersToProtect_|Off <p> `$false` <p> none|On <p> `$true` <p> \<list of users\>|On <p> `$true` <p> \<list of users\>|Depending on your organization, we recommend adding users (message senders) in key roles. Internally, protected senders might be your CEO, CFO, and other senior leaders. Externally, protected senders could include council members or your board of directors.|
|Protected domains: **Automatically include the domains I own** <p> _EnableOrganizationDomainsProtection_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|Protected domains: **Include custom domains** <p> _EnableTargetedDomainsProtection_ <p> _TargetedDomainsToProtect_|Off <p> `$false` <p> none|On <p> `$true` <p> \<list of domains\>|On <p> `$true` <p> \<list of domains\>|Depending on your organization, we recommend adding domains (sender domains) that you don't own, but you frequently interact with.|
|Protected users: **If email is sent by an impersonated user** <p> _TargetedUserProtectionAction_|**Don't apply any action** <p> `NoAction`|**Quarantine the message** <p> `Quarantine`|**Quarantine the message** <p> `Quarantine`||
|Protected domains: **If email is sent by an impersonated domain** <p> _TargetedDomainProtectionAction_|**Don't apply any action** <p> `NoAction`|**Quarantine the message** <p> `Quarantine`|**Quarantine the message** <p> `Quarantine`||
|**Show tip for impersonated users** <p> _EnableSimilarUsersSafetyTips_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Show tip for impersonated domains** <p> _EnableSimilarDomainsSafetyTips_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Show tip for unusual characters** <p> _EnableUnusualCharactersSafetyTips_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Enable Mailbox intelligence?** <p> _EnableMailboxIntelligence_|On <p> `$true`|On <p> `$true`|On <p> `$true`||
|**Enable Mailbox intelligence based impersonation protection?** <p> _EnableMailboxIntelligenceProtection_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**If email is sent by an impersonated user protected by mailbox intelligence** <p> _MailboxIntelligenceProtectionAction_|**Don't apply any action** <p> `NoAction`|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Quarantine the message** <p> `Quarantine`||
|**Trusted senders** <p> _ExcludedSenders_|None|None|None|Depending on your organization, we recommend adding users that incorrectly get marked as phishing due to impersonation only and not other filters.|
|**Trusted domains** <p> _ExcludedDomains_|None|None|None|Depending on your organization, we recommend adding domains that incorrectly get marked as phishing due to impersonation only and not other filters.|
|

#### Spoof settings in anti-phishing policies in Microsoft Defender for Office 365

Note that these are the same settings that are available in [anti-spam policy settings in EOP](#eop-anti-spam-policy-settings).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|---|---|---|---|
|**Enable anti-spoofing protection** <p> _EnableSpoofIntelligence_|On <p> `$true`|On <p> `$true`|On <p> `$true`||
|**Enable Unauthenticated Sender** <p> _EnableUnauthenticatedSender_|On <p> `$true`|On <p> `$true`|On <p> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md).|
|**If email is sent by someone who's not allowed to spoof your domain** <p> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Quarantine the message** <p> `Quarantine`|This setting applies to blocked senders in [spoof intelligence](learn-about-spoof-intelligence.md).|
|

#### Advanced settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about this setting, see [Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure this setting, see [Configure anti-phishing policies in Defender for Office 365](configure-atp-anti-phishing-policies.md).

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Advanced phishing thresholds** <p> _PhishThresholdLevel_|**1 - Standard** <p> `1`|**2 - Aggressive** <p> `2`|**3 - More aggressive** <p> `3`||
|

### Safe Links settings

Safe Links in Defender for Office 365 includes global settings that apply to all users who are included in active Safe Links policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Links in Defender for Office 365](atp-safe-links.md).

#### Global settings for Safe Links

To configure these settings, see [Configure global settings for Safe Links in Defender for Office 365](configure-global-settings-for-safe-links.md).

In PowerShell, you use the [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Use Safe Links in: Office 365 applications** <p> _EnableSafeLinksForO365Clients_|On <p> `$true`|On <p> `$true`|On <p> `$true`|Use Safe Links in supported Office 365 desktop and mobile (iOS and Android) apps. For more information, see [Safe Links settings for Office 365 apps](atp-safe-links.md#safe-links-settings-for-office-365-apps).|
|**Do not track when users click Safe Links** <p> _TrackClicks_|On <p> `$false`|Off <p> `$true`|Off <p> `$true`|Turning off this setting (setting _TrackClicks_ to `$true`) tracks user clicks in supported Office 365 apps.|
|**Do not let users click through Safe Links to original URL** <p> _AllowClickThrough_|On <p> `$false`|On <p> `$false`|On <p> `$false`|Turning on this setting (setting _AllowClickThrough_ to `$false`) prevents click through to the original URL in supported Office 365 apps.|
|

#### Safe Links policy settings

To configure these settings, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-atp-safe-links-policies.md).

In PowerShell, you use the [New-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safelinkspolicy) and [Set-SafeLinksPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Links policy. The values in the Default column are the default values in new Safe Links policies that you create.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Select the action for unknown potentially malicious URLs in messages** <p> _IsEnabled_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Select the action for unknown or potentially malicious URLs within Microsoft Teams** <p> _EnableSafeLinksForTeams_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Apply real-time URL scanning for suspicious links and links that point to files** <p> _ScanUrls_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Wait for URL scanning to complete before delivering the message** <p> _DeliverMessageAfterScan_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Apply Safe Links to email messages sent within the organization** <p> _EnableForInternalSenders_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Do not track user clicks** <p> _DoNotTrackUserClicks_|Off <p> `$false`|Off <p> `$false`|Off <p> `$false`|Turning off this setting (setting _DoNotTrackUserClicks_ to `$false`) tracks users clicks.|
|**Do not allow users to click through to original URL** <p> _DoNotAllowClickThrough_|Off <p> `$false`|On <p> `$true`|On <p> `$true`|Turning on this setting (setting _DoNotAllowClickThrough_ to `$true`) prevents click through to the original URL.|
|

### Safe Attachments settings

Safe Attachments in Microsoft Defender for Office 365 includes global settings that have no relationship to Safe Attachments policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Attachments in Defender for Office 365](atp-safe-attachments.md).

#### Global settings for Safe Attachments

To configure these settings, see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md) and [Safe Documents in Microsoft 365 E5](safe-docs.md).

In PowerShell, you use the [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** <p> _EnableATPForSPOTeamsODB_|On <p> `$true`|On <p> `$true`||
|**Turn on Safe Documents for Office clients** <p> _EnableSafeDocs_|On <p> `$true`|On <p> `$true`|This setting is only available with Microsoft 365 E5 or Microsoft 365 E5 Security licenses. For more information, see [Safe Documents in Microsoft Defender for Office 365](safe-docs.md).|
|**Allow people to click through Protected View even if Safe Documents identified the file as malicious** <p> _AllowSafeDocsOpen_|Off <p> `$false`|Off <p> `$false`|This setting is related to Safe Documents.|
|

#### Safe Attachments policy settings

To configure these settings, see [Set up Safe Attachments policies in Defender for Office 365](set-up-atp-safe-attachments-policies.md).

In PowerShell, you use the [New-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/new-safeattachmentpolicy) and [Set-SafeAttachmentPolicy](https://docs.microsoft.com/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Attachments policy. The values in the Default column are the default values in new Safe Attachments policies that you create.

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Safe Attachments unknown malware response** <p> _Action_|Block <p> `Block`|Block <p> `Block`|Block <p> `Block`||
|**Redirect attachment on detection** : **Enable redirect** <p> _Redirect_ <p> _RedirectAddress_|Off, and no email address specified. <p> `$true` <p> none|On, and specify an email address. <p> `$true` <p> an email address|On, and specify an email address. <p> `$true` <p> an email address|Redirect messages to a security admin for review.|
|**Apply the above selection if malware scanning for attachments times out or error occurs.** <p> _ActionOnError_|On <p> `$true`|On <p> `$true`|On <p> `$true`||
|

## Related articles

- Are you looking for best practices for **Exchange mail flow rules (also known as transport rules**)? See [Best practices for configuring mail flow rules in Exchange Online](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/configuration-best-practices).

- Admins and users can submit false positives (good email marked as bad) and false negatives (bad email allowed) to Microsoft for analysis. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

- Use these links for info on how to **set up** your [EOP service](set-up-your-eop-service.md), and **configure** [Microsoft Defender for Office 365](office-365-atp.md). Don't forget the helpful directions in '[Protect Against Threats in Office 365](protect-against-threats.md)'.

- **Security baselines for Windows** can be found here: [Where can I get the security baselines?](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines#where-can-i-get-the-security-baselines) for GPO/on-premises options, and [Use security baselines to configure Windows 10 devices in Intune](https://docs.microsoft.com/intune/protect/security-baselines) for Intune-based security. Finally, a comparison between Microsoft Defender for Endpoint and Microsoft Intune security baselines is available in [Compare the Microsoft Defender for Endpoint and the Windows Intune security baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline#compare-the-microsoft-defender-atp-and-the-windows-intune-security-baselines).
