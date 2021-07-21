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

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

**Exchange Online Protection (EOP)** is the core of security for Microsoft 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are often required. **Microsoft Defender for Office 365** Plan 1 or Plan 2 contain additional features that give admins more layers of security, control, and investigation.

Although we empower security administrators to customize their security settings, there are two security levels in EOP and Microsoft Defender for Office 365 that we recommend: **Standard** and **Strict**. Each customer's environment and needs are different, but we believe that these levels of filtering will help prevent unwanted mail from reaching your employees' Inbox in most situations.

To automatically apply the Standard or Strict settings to users, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

> [!NOTE]
> The junk email rule needs to be enabled on mailboxes in order for filtering to work properly. It's enabled by default, but you should check it if filtering does not seem to be working. For more information, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).

This article describes the default settings, and also the recommended Standard and Strict settings to help protect your users. The tables contain the settings in the Microsoft 365 Defender portal and PowerShell (Exchange Online PowerShell or standalone Exchange Online Protection PowerShell for organizations without Exchange Online mailboxes).

> [!TIP]
> The Office 365 Advanced Threat Protection Recommended Configuration Analyzer (ORCA) module for PowerShell can help you (admins) find the current values of these settings. Specifically, the **Get-ORCAReport** cmdlet generates an assessment of anti-spam, anti-phishing, and other message hygiene settings. You can download the ORCA module at <https://www.powershellgallery.com/packages/ORCA/>.

## Anti-spam, anti-malware, and anti-phishing protection in EOP

Anti-spam, anti-malware, and anti-phishing are EOP features that can be configured by admins. We recommend the following Standard or Strict configurations.

### EOP anti-spam policy settings

To create and configure anti-spam policies, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Bulk email threshold & spam properties**||||
|**Bulk email threshold** <p> _BulkThreshold_|7|6|4|For details, see [Bulk complaint level (BCL) in EOP](bulk-complaint-level-values.md).|
|_MarkAsSpamBulkMail_|`On`|`On`|`On`|This setting is only available in PowerShell.|
|**Increase spam score** settings|Off|Off|Off|All of these settings are part of the Advanced Spam Filter (ASF). For more information, see the [ASF settings in anti-spam policies](#asf-settings-in-anti-spam-policies) section in this article.|
|**Mark as spam** settings|Off|Off|Off|Most of these settings are part of ASF. For more information, see the [ASF settings in anti-spam policies](#asf-settings-in-anti-spam-policies) section in this article.|
|**Contains specific languages** <p> _EnableLanguageBlockList_ <p> _LanguageBlockList_|**Off** <p> `$false` <p> Blank|**Off** <p> `$false` <p> Blank|**Off** <p> `$false` <p> Blank|We have no specific recommendation for this setting. You can block messages in specific languages based on your business needs.|
|**From these countries** <p> _EnableRegionBlockList_ <p> _RegionBlockList_|**Off** <p> `$false` <p> Blank|**Off** <p> `$false` <p> Blank|**Off** <p> `$false` <p> Blank|We have no specific recommendation for this setting. You can block messages from specific countries based on your business needs.|
|**Test mode** (_TestModeAction_)|**None**|**None**|**None**|This setting is part of ASF. For more information, see the [ASF settings in anti-spam policies](#asf-settings-in-anti-spam-policies) section in this article.|
|**Actions**|||||
|**Spam** detection action <p> _SpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`||
|**High confidence spam** detection action <p> _HighConfidenceSpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`||
|**Phishing** detection action <p> _PhishSpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`||
|**High confidence phishing** detection action <p> _HighConfidencePhishAction_|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`|**Quarantine message** <p> `Quarantine`||
|**Bulk** detection action <p> _BulkSpamAction_|**Move message to Junk Email folder** <p> `MoveToJmf`|**Move message to Junk Email folder** <p> `MoveToJmf`|**Quarantine message** <p> `Quarantine`||
|**Retain spam in quarantine for this many days** <p> _QuarantineRetentionPeriod_|15 days|30 days|30 days||
|**Enable spam safety tips** <p> _InlineSafetyTipsEnabled_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|Enable zero-hour auto purge (ZAP) for phishing messages <p> _PhishZapEnabled_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|Enable ZAP for spam messages <p> _SpamZapEnabled_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|**Enable end-user spam notifications** <p> _EnableEndUserSpamNotifications_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Send end-user spam notifications every (days)** <p> _EndUserSpamNotificationFrequency_|3 days|3 days|3 days||
|**Allow & block list**|||||
|Allowed senders <p> _AllowedSenders_|None|None|None||
|Allowed sender domains <p> _AllowedSenderDomains_|None|None|None|Adding domains to the allowed senders list is a very bad idea. Attackers would be able to send you email that would otherwise be filtered out. <p> Use the [spoof intelligence insight](learn-about-spoof-intelligence.md) and the [Tenant Allow/Block List](tenant-allow-block-list.md) to review all senders who are spoofing sender email addresses in your organization's email domains or spoofing sender email addresses in external domains.|
|Blocked senders <p> _BlockedSenders_|None|None|None||
|Blocked sender domains <p> _BlockedSenderDomains_|None|None|None||
|

#### ASF settings in anti-spam policies

There are many Advanced Spam Filter (ASF) settings in anti-spam policies that are in the process of being deprecated. More information on the timelines for the depreciation of these features will be communicated outside of this article.

We recommend that you leave the following ASF settings **Off** for both **Standard** and **Strict** levels. For more information about ASF settings, see [Advanced Spam Filter (ASF) settings in EOP](advanced-spam-filtering-asf-options.md).

<br>

****

|Security feature name|Comment|
|---|---|
|**Image links to remote sites** (_IncreaseScoreWithImageLinks_)||
|**Numeric IP address in URL** (_IncreaseScoreWithNumericIps_)||
|**URL redirect to other port** (_IncreaseScoreWithRedirectToOtherPort_)||
|**Links to .biz or .info websites** (_IncreaseScoreWithBizOrInfoUrls_)||
|**Empty messages** (_MarkAsSpamEmptyMessages_)||
|**Embed tags in HTML** (_MarkAsSpamEmbedTagsInHtml_)||
|**JavaScript or VBScript in HTML** (_MarkAsSpamJavaScriptInHtml_)||
|**Form tags in HTML** (_MarkAsSpamFormTagsInHtml_)||
|**Frame or iframe tags in HTML** (_MarkAsSpamFramesInHtml_)||
|**Web bugs in HTML** (_MarkAsSpamWebBugsInHtml_)||
|**Object tags in HTML** (_MarkAsSpamObjectTagsInHtml_)||
|**Sensitive words** (_MarkAsSpamSensitiveWordList_)||
|**SPF record: hard fail** (_MarkAsSpamSpfRecordHardFail_)||
|**Sender ID filtering hard fail** (_MarkAsSpamFromAddressAuthFail_)||
|**Backscatter** (_MarkAsSpamNdrBackscatter_)||
|**Test mode** (_TestModeAction_)|For ASF settings that support **Test** as an action, you can configure the test mode action to **None**, **Add default X-Header text**, or **Send Bcc message** (`None`, `AddXHeader`, or `BccMessage`). For more information, see [Enable, disable, or test ASF settings](advanced-spam-filtering-asf-options.md#enable-disable-or-test-asf-settings).|
|

#### EOP outbound spam policy settings

To create and configure outbound spam policies, see [Configure outbound spam filtering in EOP](configure-the-outbound-spam-policy.md).

For more information about the default sending limits in the service, see [Sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1).

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Set an external message limit** <p> _RecipientLimitExternalPerHour_|0|500|400|The default value 0 means use the service defaults.|
|**Set an internal message limit** <p> _RecipientLimitInternalPerHour_|0|1000|800|The default value 0 means use the service defaults.|
|**Set a daily message limit** <p> _RecipientLimitPerDay_|0|1000|800|The default value 0 means use the service defaults.|
|**Restriction placed on users who reach the message limit** <p> _ActionWhenThresholdReached_|**Restrict the user from sending mail until the following day** <p> `BlockUserForToday`|**Restrict the user from sending mail** <p> `BlockUser`|**Restrict the user from sending mail** <p> `BlockUser`||
|**Automatic forwarding rules** <p> _AutoForwardingMode_|**Automatic - System-controlled** <p> `Automatic`|**Automatic - System-controlled** <p> `Automatic`|**Automatic - System-controlled** <p> `Automatic`|
|**Send a copy of outbound messages that exceed these limits to these users and groups** <p> _BccSuspiciousOutboundMail_ <p> _BccSuspiciousOutboundAdditionalRecipients_|Not selected <p> `$false` <p> Blank|Not selected <p> `$false` <p> Blank|Not selected <p> `$false` <p> Blank|We have no specific recommendation for this setting. <p> This setting only works in the default outbound spam policy. It doesn't work in custom outbound spam policies that you create.|
|**Notify these users and groups if a sender is blocked due to sending outbound spam** <p> _NotifyOutboundSpam_ <p> _NotifyOutboundSpamRecipients_|Not selected <p> `$false` <p> Blank|Not selected <p> `$false` <p> Blank|Not selected <p> `$false` <p> Blank|The default [alert policy](../../compliance/alert-policies.md) named **User restricted from sending email** already sends email notifications to members of the **TenantAdmins** (**Global admins**) group when users are blocked due to exceeding the limits in policy. **We strongly recommend that you use the alert policy rather than this setting in the outbound spam policy to notify admins and other users**. For instructions, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users).|
|

### EOP anti-malware policy settings

To create and configure anti-malware policies, see [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Protection settings**|||||
|**Enable the common attachments filter** <p> _EnableFileFilter_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`|This setting quarantines messages that contain executable attachments based on file type, regardless of the attachment content.|
|**Enable zero-hour auto purge for malware** <p> _ZapEnabled_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|**Recipient notifications**|||||
|**Notify recipients when messages are quarantined as malware** <p> _Action_|Not selected <p> _DeleteMessage_|Not selected <p> _DeleteMessage_|Not selected <p> _DeleteMessage_|If malware is detected in an email attachment, the message is quarantined and can be released only by an admin.|
|**Sender notifications**|||||
|**Notify internal senders when messages are quarantined as malware** <p> _EnableInternalSenderNotifications_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`||
|**Notify external senders when messages are quarantined as malware** <p> _EnableExternalSenderNotifications_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`||
|**Admin notifications**|||||
|**Notify an admin about undelivered messages from internal senders** <p> _EnableInternalSenderAdminNotifications_ <p> _InternalSenderAdminAddress_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`|We have no specific recommendation for this setting.|
|**Notify an admin about undelivered messages from external senders** <p> _EnableExternalSenderAdminNotifications_ <p> _ExternalSenderAdminAddress_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`|We have no specific recommendation for this setting.|
|**Customize notifications**||||We have no specific recommendations for these settings.|
|**Use customized notification text** <p> _CustomNotifications_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`||
|**From name** <p> _CustomFromName_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`||
|**From address** <p> _CustomFromAddress_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`||
|**Customize notifications for messages from internal senders**||||These settings are used only if **Notify internal senders when messages are quarantined as malware** or **Notify an admin about undelivered messages from internal senders** is selected.|
|**Subject** <p> _CustomInternalSubject_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`||
|**Message** <p> _CustomInternalBody_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`||
|**Customize notifications for messages from external senders**||||These settings are used only if **Notify external senders when messages are quarantined as malware** or **Notify an admin about undelivered messages from external senders** is selected.|
|**Subject** <p> _CustomExternalSubject_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`||
|**Message** <p> _CustomExternalBody_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`||
|

### EOP anti-phishing policy settings

For more information about these settings, see [Spoof settings](set-up-anti-phishing-policies.md#spoof-settings). To configure these settings, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing threshold & protection**|||||
|**Enable spoof intelligence** <p> _EnableSpoofIntelligence_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|**Actions**|||||
|**If message is detected as spoof** <p> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Quarantine the message** <p> `Quarantine`|This setting applies to spoofed senders that were automatically blocked as shown in the [spoof intelligence insight](learn-about-spoof-intelligence.md) or manually blocked in the [Tenant Allow/Block List](tenant-allow-block-list.md).|
|**Show first contact safety tip** <p> _EnableFirstContactSafetyTips_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`|For more information, see [First contact safety tip](set-up-anti-phishing-policies.md#first-contact-safety-tip).|
|**Show (?) for unauthenticated senders for spoof** <p> _EnableUnauthenticatedSender_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Unauthenticated sender](set-up-anti-phishing-policies.md#unauthenticated-sender).|
|**Show "via" tag** <p> _EnableViaTag_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`|Adds a via tag (chris@contoso.com via fabrikam.com) to the From address if it's different from the domain in the DKIM signature or the **MAIL FROM** address. <p> For more information, see [Unauthenticated sender](set-up-anti-phishing-policies.md#unauthenticated-sender).|
|

## Microsoft Defender for Office 365 security

Additional security benefits come with a Microsoft Defender for Office 365 subscription. For the latest news and information, you can see [What's new in Defender for Office 365](whats-new-in-defender-for-office-365.md).

> [!IMPORTANT]
>
> - The default anti-phishing policy in Microsoft Defender for Office 365 provides [spoof protection](set-up-anti-phishing-policies.md#spoof-settings) and mailbox intelligence for all recipients. However, the other available [impersonation protection](#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) features and [advanced settings](#advanced-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are not configured or enabled in the default policy. To enable all protection features, modify the default anti-phishing policy or create additional anti-phishing policies.
>
> - There are no default Safe Links policies or Safe Attachments policies that automatically protect all recipients in the organization. To get the protections, you need to create at least one Safe Links Policy and Safe Attachments policy.
>
> - [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md) protection and [Safe Documents](safe-docs.md) protection have no dependencies on Safe Links policies.

If your subscription includes Microsoft Defender for Office 365 or if you've purchased Defender for Office 365 as an add-on, set the following Standard or Strict configurations.

### Anti-phishing policy settings in Microsoft Defender for Office 365

EOP customers get basic anti-phishing as previously described, but Defender for Office 365 includes more features and control to help prevent, detect, and remediate against attacks. To create and configure these policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

#### Advanced settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about this setting, see [Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure this setting, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing email threshold** <p> _PhishThresholdLevel_|**1 - Standard** <p> `1`|**2 - Aggressive** <p> `2`|**3 - More aggressive** <p> `3`||
|

#### Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure these settings, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing threshold & protection**|||||
|**Enable users to protect** (impersonated user protection)<p> _EnableTargetedUserProtection_ <p> _TargetedUsersToProtect_|Not selected <p> `$false` <p> none|Selected <p> `$true` <p> \<list of users\>|Selected <p> `$true` <p> \<list of users\>|We recommend adding users (message senders) in key roles. Internally, protected senders might be your CEO, CFO, and other senior leaders. Externally, protected senders could include council members or your board of directors.|
|**Enable domains to protect** (impersonated domain protection)|Not selected|Selected|Selected||
|**Include domains I own** <p> _EnableOrganizationDomainsProtection_|Off <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Include custom domains** <p> _EnableTargetedDomainsProtection_ <p> _TargetedDomainsToProtect_|Off <p> `$false` <p> none|Selected <p> `$true` <p> \<list of domains\>|Selected <p> `$true` <p> \<list of domains\>|We recommend adding domains (sender domains) that you don't own, but you frequently interact with.|
|**Add trusted senders and domains** <p> _ExcludedSenders_ <p> _ExcludedDomains_|None|None|None|Depending on your organization, we recommend adding senders or domains that are incorrectly identified as impersonation attempts.|
|**Enable mailbox intelligence** <p> _EnableMailboxIntelligence_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|**Enable intelligence for impersonation protection** <p> _EnableMailboxIntelligenceProtection_|Off <p> `$false`|Selected <p> `$true`|Selected <p> `$true`|This setting allows the specified action for impersonation detections by mailbox intelligence.|
|**Actions**|||||
|**If message is detected as an impersonated user** <p> _TargetedUserProtectionAction_|**Don't apply any action** <p> `NoAction`|**Quarantine the message** <p> `Quarantine`|**Quarantine the message** <p> `Quarantine`||
|**If message is detected as an impersonated domain** <p> _TargetedDomainProtectionAction_|**Don't apply any action** <p> `NoAction`|**Quarantine the message** <p> `Quarantine`|**Quarantine the message** <p> `Quarantine`||
|**If mailbox intelligence detects and impersonated user** <p> _MailboxIntelligenceProtectionAction_|**Don't apply any action** <p> `NoAction`|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Quarantine the message** <p> `Quarantine`||
|**Show user impersonation safety tip** <p> _EnableSimilarUsersSafetyTips_|Off <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Show domain impersonation safety tip** <p> _EnableSimilarDomainsSafetyTips_|Off <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Show user impersonation unusual characters safety tip** <p> _EnableUnusualCharactersSafetyTips_|Off <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|

#### EOP anti-phishing policy settings in Microsoft Defender for Office 365

These are the same settings that are available in [anti-spam policy settings in EOP](#eop-anti-spam-policy-settings).

The spoof settings are inter-related, but the **Show first contact safety tip** setting has no dependency on spoof settings.

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing threshold & protection**|||||
|**Enable spoof intelligence** <p> _EnableSpoofIntelligence_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|**Actions**|||||
|**If message is detected as spoof** <p> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Move message to the recipients' Junk Email folders** <p> `MoveToJmf`|**Quarantine the message** <p> `Quarantine`|This setting applies to spoofed senders that were automatically blocked as shown in the [spoof intelligence insight](learn-about-spoof-intelligence.md) or manually blocked in the [Tenant Allow/Block List](tenant-allow-block-list.md).|
|**Show first contact safety tip** <p> _EnableFirstContactSafetyTips_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`|For more information, see [First contact safety tip](set-up-anti-phishing-policies.md#first-contact-safety-tip).|
|**Show (?) for unauthenticated senders for spoof** <p> _EnableUnauthenticatedSender_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Unauthenticated sender](set-up-anti-phishing-policies.md#unauthenticated-sender).|
|**Show "via" tag** <p> _EnableViaTag_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`|Adds a via tag (chris@contoso.com via fabrikam.com) to the From address if it's different from the domain in the DKIM signature or the **MAIL FROM** address. <p> For more information, see [Unauthenticated sender](set-up-anti-phishing-policies.md#unauthenticated-sender).|
|

### Safe Attachments settings

Safe Attachments in Microsoft Defender for Office 365 includes global settings that have no relationship to Safe Attachments policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Attachments in Defender for Office 365](safe-attachments.md).

#### Global settings for Safe Attachments

To configure these settings, see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](turn-on-mdo-for-spo-odb-and-teams.md) and [Safe Documents in Microsoft 365 E5](safe-docs.md).

In PowerShell, you use the [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** <p> _EnableATPForSPOTeamsODB_|Off <p> `$false`|On <p> `$true`|On <p> `$true`||
|**Turn on Safe Documents for Office clients** <p> _EnableSafeDocs_|Off <p> `$false`|On <p> `$true`|On <p> `$true`|This feature is available and meaningful only with Microsoft 365 E5 or Microsoft 365 E5 Security licenses. For more information, see [Safe Documents in Microsoft Defender for Office 365](safe-docs.md).|
|**Allow people to click through Protected View even if Safe Documents identified the file as malicious** <p> _AllowSafeDocsOpen_|Off <p> `$false`|Off <p> `$false`|Off <p> `$false`|This setting is related to Safe Documents.|
|

#### Safe Attachments policy settings

To configure these settings, see [Set up Safe Attachments policies in Defender for Office 365](set-up-safe-attachments-policies.md).

In PowerShell, you use the [New-SafeAttachmentPolicy](/powershell/module/exchange/new-safeattachmentpolicy) and [Set-SafeAttachmentPolicy](/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Attachments policy. The values in the Default column are the default values in new Safe Attachments policies that you create.

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Safe Attachments unknown malware response** <p> _Action_|**Block** <p> `Block`|**Block** <p> `Block`|**Block** <p> `Block`||
|**Redirect attachment with detected attachments** : **Enable redirect** <p> _Redirect_ <p> _RedirectAddress_|Not selected and no email address specified. <p> `$true` <p> none|Selected and specify an email address. <p> `$true` <p> an email address|Selected and specify an email address. <p> `$true` <p> an email address|Redirect messages to a security admin for review.|
|**Apply the Safe Attachments detection response if scanning can't complete (timeout or errors)** <p> _ActionOnError_|Selected <p> `$true`|Selected <p> `$true`|Selected <p> `$true`||
|

### Safe Links settings

Safe Links in Defender for Office 365 includes global settings that apply to all users who are included in active Safe Links policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Links in Defender for Office 365](safe-links.md).

#### Global settings for Safe Links

To configure these settings, see [Configure global settings for Safe Links in Defender for Office 365](configure-global-settings-for-safe-links.md).

In PowerShell, you use the [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Block the following URLs** <p> _ExcludedUrls_|Blank <p> `$null`|Blank <p> `$null`|Blank <p> `$null`|We have no specific recommendation for this setting. <p> For more information, see ["Block the following URLs" list for Safe Links](safe-links.md#block-the-following-urls-list-for-safe-links).
|**Use Safe Links in Office 365 apps** <p> _EnableSafeLinksForO365Clients_|On <p> `$true`|On <p> `$true`|On <p> `$true`|Use Safe Links in supported Office 365 desktop and mobile (iOS and Android) apps. For more information, see [Safe Links settings for Office 365 apps](safe-links.md#safe-links-settings-for-office-365-apps).|
|**Do not track when users click protected links in Office 365 apps** <p> _TrackClicks_|On <p> `$false`|Off <p> `$true`|Off <p> `$true`|Turning off this setting (setting _TrackClicks_ to `$true`) tracks user clicks in supported Office 365 apps.|
|**Do not let users click through to the original URL in Office 365 apps** <p> _AllowClickThrough_|On <p> `$false`|On <p> `$false`|On <p> `$false`|Turning on this setting (setting _AllowClickThrough_ to `$false`) prevents click through to the original URL in supported Office 365 apps.|
|

#### Safe Links policy settings

To configure these settings, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md).

In PowerShell, you use the [New-SafeLinksPolicy](/powershell/module/exchange/new-safelinkspolicy) and [Set-SafeLinksPolicy](/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Links policy. The values in the Default column are the default values in new Safe Links policies that you create.

<br>

****

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Protection settings**|||||
|**Select the action for unknown potentially malicious URLs in messages** <p> _IsEnabled_|**Off** <p> `$false`|**On** <p> `$true`|**On** <p> `$true`||
|**Select the action for unknown or potentially malicious URLs within Microsoft Teams** <p> _EnableSafeLinksForTeams_|**Off** <p> `$false`|**On** <p> `$true`|**On** <p> `$true`|As of March 2020, this feature is in Preview and is available or functional only for members of the Microsoft Teams Technology Adoption Program (TAP).|
|**Apply real-time URL scanning for suspicious links and links that point to files** <p> _ScanUrls_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Wait for URL scanning to complete before delivering the message** <p> _DeliverMessageAfterScan_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Apply Safe Links to email messages sent within the organization** <p> _EnableForInternalSenders_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`||
|**Do not track user clicks** <p> _DoNotTrackUserClicks_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`|Turning off this setting (setting _DoNotTrackUserClicks_ to `$false`) tracks users clicks.|
|**Do not let users click through to the original URL** <p> _DoNotAllowClickThrough_|Not selected <p> `$false`|Selected <p> `$true`|Selected <p> `$true`|Turning on this setting (setting _DoNotAllowClickThrough_ to `$true`) prevents click through to the original URL.|
|**Display the organization branding on notification and warning pages** <p> _EnableOrganizationBranding_|Not selected <p> `$false`|Not selected <p> `$false`|Not selected <p> `$false`|We have no specific recommendation for this setting. <p> Before you turn on this setting, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your company logo.|
|**Do no rewrite the following URLs** <p> _DoNotRewriteUrls_|Not selected <p> `$false`|Not selected <p> `$true`|Not selected <p> `$true`|We have no specific recommendation for this setting. For more information, see ["Do not rewrite the following URLs" lists in Safe Links policies](safe-links.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies).|
|**Notification**|||||
|**How would you like to notify your users?**|**Use the default notification text**|**Use the default notification text**|**Use the default notification text**|We have no specific recommendation for this setting. <p> You can select **Use custom notification text** (_CustomNotificationText_) to enter customized notification text to use. You can also select **Use Microsoft Translator for automatic localization** (_UseTranslatedNotificationText_) to translate the custom notification text into the user's language.
|

## Related articles

- Are you looking for best practices for **Exchange mail flow rules (also known as transport rules**)? See [Best practices for configuring mail flow rules in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/configuration-best-practices).

- Admins and users can submit false positives (good email marked as bad) and false negatives (bad email allowed) to Microsoft for analysis. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

- Use these links for info on how to **set up** your [EOP service](/exchange/standalone-eop/set-up-your-eop-service), and **configure** [Microsoft Defender for Office 365](defender-for-office-365.md). Don't forget the helpful directions in '[Protect Against Threats in Office 365](protect-against-threats.md)'.

- **Security baselines for Windows** can be found here: [Where can I get the security baselines?](/windows/security/threat-protection/windows-security-baselines#where-can-i-get-the-security-baselines) for GPO/on-premises options, and [Use security baselines to configure Windows 10 devices in Intune](/intune/protect/security-baselines) for Intune-based security. Finally, a comparison between Microsoft Defender for Endpoint and Microsoft Intune security baselines is available in [Compare the Microsoft Defender for Endpoint and the Windows Intune security baselines](/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline#compare-the-microsoft-defender-atp-and-the-windows-intune-security-baselines).
