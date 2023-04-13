---
title: Microsoft recommendations for EOP and Defender for Office 365 security settings
keywords: Office 365 security recommendations, Sender Policy Framework, Domain-based Message Reporting and Conformance, DomainKeys Identified Mail, steps, how does it work, security baselines, baselines for EOP, baselines for Defender for Office 365 , set up Defender for Office 365 , set up EOP, configure Defender for Office 365, configure EOP, security configuration
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid: 6f64f2de-d626-48ed-8084-03cc72301aa4
ms.collection:
  - m365-security
  - m365initiative-defender-office365
  - highpri
  - tier1
description: What are best practices for Exchange Online Protection (EOP) and Defender for Office 365 security settings? What's the current recommendations for standard protection? What should be used if you want to be more strict? And what extras do you get if you also use Defender for Office 365?
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 4/12/2023
---

# Recommended settings for EOP and Microsoft Defender for Office 365 security

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

**Exchange Online Protection (EOP)** is the core of security for Microsoft 365 subscriptions and helps keep malicious emails from reaching your employee's inboxes. But with new, more sophisticated attacks emerging every day, improved protections are often required. **Microsoft Defender for Office 365** Plan 1 or Plan 2 contain additional features that give admins more layers of security, control, and investigation.

Although we empower security administrators to customize their security settings, there are two security levels in EOP and Microsoft Defender for Office 365 that we recommend: **Standard** and **Strict**. Although customer environments and needs are different, these levels of filtering will help prevent unwanted mail from reaching your employees' Inbox in most situations.

To automatically apply the Standard or Strict settings to users, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

This article describes the default settings, and also the recommended Standard and Strict settings to help protect your users. The tables contain the settings in the Microsoft 365 Defender portal and PowerShell (Exchange Online PowerShell or standalone Exchange Online Protection PowerShell for organizations without Exchange Online mailboxes).

> [!NOTE]
> The Office 365 Advanced Threat Protection Recommended Configuration Analyzer (ORCA) module for PowerShell can help you (admins) find the current values of these settings. Specifically, the **Get-ORCAReport** cmdlet generates an assessment of anti-spam, anti-phishing, and other message hygiene settings. You can download the ORCA module at <https://www.powershellgallery.com/packages/ORCA/>.
>
> In Microsoft 365 organizations, we recommend that you leave the Junk Email Filter in Outlook set to **No automatic filtering** to prevent unnecessary conflicts (both positive and negative) with the spam filtering verdicts from EOP. For more information, see the following articles:
>
> - [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md)
> - [About junk email settings in Outlook](configure-junk-email-settings-on-exo-mailboxes.md#about-junk-email-settings-in-outlook)
> - [Change the level of protection in the Junk Email Filter](https://support.microsoft.com/en-us/office/e89c12d8-9d61-4320-8c57-d982c8d52f6b)
> - [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md)
> - [Create blocked sender lists in EOP](create-block-sender-lists-in-office-365.md)

## Anti-spam, anti-malware, and anti-phishing protection in EOP

Anti-spam, anti-malware, and anti-phishing are EOP features that can be configured by admins. We recommend the following Standard or Strict configurations.

### EOP anti-spam policy settings

To create and configure anti-spam policies, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

Wherever you select **Quarantine message** as the action for a spam filter verdict, a **Select quarantine policy** box is available. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

If you _change_ the action of a spam filtering verdict to **Quarantine message** when you create anti-spam policies the the Defender portal, the **Select quarantine policy** box is blank by default. A blank value means the default quarantine policy for that spam filtering verdict is used. These default quarantine policies enforce the historical capabilities for the spam filter verdict that quarantined the message as described in the table [here](quarantine-end-user.md). When you later view or edit the anti-spam policy settings, the quarantine policy name is shown.

Admins can create or use quarantine policies with more restrictive or less restrictive capabilities. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Bulk email threshold & spam properties**|||||
|**Bulk email threshold** <br/><br/> _BulkThreshold_|7|6|5|For details, see [Bulk complaint level (BCL) in EOP](anti-spam-bulk-complaint-level-bcl-about.md).|
|_MarkAsSpamBulkMail_|`On`|`On`|`On`|This setting is only available in PowerShell.|
|**Increase spam score** settings|Off|Off|Off|All of these settings are part of the Advanced Spam Filter (ASF). For more information, see the [ASF settings in anti-spam policies](#asf-settings-in-anti-spam-policies) section in this article.|
|**Mark as spam** settings|Off|Off|Off|Most of these settings are part of ASF. For more information, see the [ASF settings in anti-spam policies](#asf-settings-in-anti-spam-policies) section in this article.|
|**Contains specific languages** <br/><br/> _EnableLanguageBlockList_ <br/><br/> _LanguageBlockList_|**Off** <br/><br/> `$false` <br/><br/> Blank|**Off** <br/><br/> `$false` <br/><br/> Blank|**Off** <br/><br/> `$false` <br/><br/> Blank|We have no specific recommendation for this setting. You can block messages in specific languages based on your business needs.|
|**From these countries** <br/><br/> _EnableRegionBlockList_ <br/><br/> _RegionBlockList_|**Off** <br/><br/> `$false` <br/><br/> Blank|**Off** <br/><br/> `$false` <br/><br/> Blank|**Off** <br/><br/> `$false` <br/><br/> Blank|We have no specific recommendation for this setting. You can block messages from specific countries based on your business needs.|
|**Test mode** (_TestModeAction_)|**None**|**None**|**None**|This setting is part of ASF. For more information, see the [ASF settings in anti-spam policies](#asf-settings-in-anti-spam-policies) section in this article.|
|**Actions**|||||
|**Spam** detection action <br/><br/> _SpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`||
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **Spam** <br/><br/> _SpamQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if spam detections are quarantined.|
|**High confidence spam** detection action <br/><br/> _HighConfidenceSpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`||
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **Hight confidence spam** <br/><br/> _HighConfidenceSpamQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessWithNotificationPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if high confidence spam detections are quarantined.|
|**Phishing** detection action <br/><br/> _PhishSpamAction_|**Move message to Junk Email folder**<sup>\*</sup> <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`|<sup>\*</sup> The default value is **Move message to Junk Email folder** in the default anti-spam policy and in new anti-spam policies that you create in PowerShell. The default value is **Quarantine message** in new anti-spam policies that you create in the Microsoft 365 Defender portal.|
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **Phishing** <br/><br/> _PhishQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessWithNotificationPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if phishing detections are quarantined.|
|**High confidence phishing** detection action <br/><br/> _HighConfidencePhishAction_|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`|**Quarantine message** <br/><br/> `Quarantine`|Users can't release their own messages that were quarantined as high confidence phishing, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined high-confidence phishing messages.|
|**Quarantine policy** for **High confidence phishing** <br/><br/> _HighConfidencePhishQuarantineTag_|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy||
|**Bulk** detection action <br/><br/> _BulkSpamAction_|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Move message to Junk Email folder** <br/><br/> `MoveToJmf`|**Quarantine message** <br/><br/> `Quarantine`||
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **Bulk** <br/><br/> _BulkQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if bulk detections are quarantined.|
|**Retain spam in quarantine for this many days** <br/><br/> _QuarantineRetentionPeriod_|15 days|30 days|30 days|This value also affects messages that are quarantined by anti-phishing policies. For more information, see [Quarantined email messages in EOP](quarantine-about.md).|
|**Enable spam safety tips** <br/><br/> _InlineSafetyTipsEnabled_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|Enable zero-hour auto purge (ZAP) for phishing messages <br/><br/> _PhishZapEnabled_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|Enable ZAP for spam messages <br/><br/> _SpamZapEnabled_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Allow & block list**|||||
|Allowed senders <br/><br/> _AllowedSenders_|None|None|None||
|Allowed sender domains <br/><br/> _AllowedSenderDomains_|None|None|None|Adding domains to the allowed senders list is a very bad idea. Attackers would be able to send you email that would otherwise be filtered out. <br/><br/> Use the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md) and the [Tenant Allow/Block List](tenant-allow-block-list-about.md) to review all senders who are spoofing sender email addresses in your organization's email domains or spoofing sender email addresses in external domains.|
|Blocked senders <br/><br/> _BlockedSenders_|None|None|None||
|Blocked sender domains <br/><br/> _BlockedSenderDomains_|None|None|None||

¹ As described in [Full access permissions and quarantine notifications](quarantine-policies.md#full-access-permissions-and-quarantine-notifications), your organization might use NotificationEnabledPolicy instead of DefaultFullAccessPolicy in the default security policy or in new custom security policies that you create. The only difference between these two quarantine policies is quarantine notifications are turned on in NotificationEnabledPolicy and turned off in DefaultFullAccessPolicy.

#### ASF settings in anti-spam policies

For more information about Advanced Spam Filter (ASF) settings in anti-spam policies, see [Advanced Spam Filter (ASF) settings in EOP](anti-spam-policies-asf-settings-about.md).

|Security feature name|Default|Recommended<br/>Standard|Recommended<br/>Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Image links to remote sites** <br/><br/> _IncreaseScoreWithImageLinks_|Off|Off|Off||
|**Numeric IP address in URL** <br/><br/> _IncreaseScoreWithNumericIps_|Off|Off|Off||
|**URL redirect to other port** <br/><br/> _IncreaseScoreWithRedirectToOtherPort_|Off|Off|Off||
|**Links to .biz or .info websites** <br/><br/> _IncreaseScoreWithBizOrInfoUrls_|Off|Off|Off||
|**Empty messages** <br/><br/> _MarkAsSpamEmptyMessages_|Off|Off|Off||
|**Embed tags in HTML** <br/><br/> _MarkAsSpamEmbedTagsInHtml_|Off|Off|Off||
|**JavaScript or VBScript in HTML** <br/><br/> _MarkAsSpamJavaScriptInHtml_|Off|Off|Off||
|**Form tags in HTML** <br/><br/> _MarkAsSpamFormTagsInHtml_|Off|Off|Off||
|**Frame or iframe tags in HTML** <br/><br/> _MarkAsSpamFramesInHtml_|Off|Off|Off||
|**Web bugs in HTML** <br/><br/> _MarkAsSpamWebBugsInHtml_|Off|Off|Off||
|**Object tags in HTML** <br/><br/> _MarkAsSpamObjectTagsInHtml_|Off|Off|Off||
|**Sensitive words** <br/><br/> _MarkAsSpamSensitiveWordList_|Off|Off|Off||
|**SPF record: hard fail** <br/><br/> _MarkAsSpamSpfRecordHardFail_|Off|Off|Off||
|**Sender ID filtering hard fail** <br/><br/> _MarkAsSpamFromAddressAuthFail_|Off|Off|Off||
|**Backscatter** <br/><br/> _MarkAsSpamNdrBackscatter_|Off|Off|Off||
|**Test mode** <br/><br/> _TestModeAction_)|None|None|None|For ASF settings that support **Test** as an action, you can configure the test mode action to **None**, **Add default X-Header text**, or **Send Bcc message** (`None`, `AddXHeader`, or `BccMessage`). For more information, see [Enable, disable, or test ASF settings](anti-spam-policies-asf-settings-about.md#enable-disable-or-test-asf-settings).|

#### EOP outbound spam policy settings

To create and configure outbound spam policies, see [Configure outbound spam filtering in EOP](outbound-spam-policies-configure.md).

For more information about the default sending limits in the service, see [Sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#sending-limits-1).

> [!NOTE]
> Outbound spam policies are not part of Standard or Strict preset security policies. The **Standard** and **Strict** values indicate our **recommended** values in the default outbound spam policy or custom outbound spam policies that you create.

|Security feature name|Default|Recommended<br/>Standard|Recommended<br/>Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Set an external message limit** <br/><br/> _RecipientLimitExternalPerHour_|0|500|400|The default value 0 means use the service defaults.|
|**Set an internal message limit** <br/><br/> _RecipientLimitInternalPerHour_|0|1000|800|The default value 0 means use the service defaults.|
|**Set a daily message limit** <br/><br/> _RecipientLimitPerDay_|0|1000|800|The default value 0 means use the service defaults.|
|**Restriction placed on users who reach the message limit** <br/><br/> _ActionWhenThresholdReached_|**Restrict the user from sending mail until the following day** <br/><br/> `BlockUserForToday`|**Restrict the user from sending mail** <br/><br/> `BlockUser`|**Restrict the user from sending mail** <br/><br/> `BlockUser`||
|**Automatic forwarding rules** <br/><br/> _AutoForwardingMode_|**Automatic - System-controlled** <br/><br/> `Automatic`|**Automatic - System-controlled** <br/><br/> `Automatic`|**Automatic - System-controlled** <br/><br/> `Automatic`|
|**Send a copy of outbound messages that exceed these limits to these users and groups** <br/><br/> _BccSuspiciousOutboundMail_ <br/><br/> _BccSuspiciousOutboundAdditionalRecipients_|Not selected <br/><br/> `$false` <br/><br/> Blank|Not selected <br/><br/> `$false` <br/><br/> Blank|Not selected <br/><br/> `$false` <br/><br/> Blank|We have no specific recommendation for this setting. <br/><br/> This setting only works in the default outbound spam policy. It doesn't work in custom outbound spam policies that you create.|
|**Notify these users and groups if a sender is blocked due to sending outbound spam** <br/><br/> _NotifyOutboundSpam_ <br/><br/> _NotifyOutboundSpamRecipients_|Not selected <br/><br/> `$false` <br/><br/> Blank|Not selected <br/><br/> `$false` <br/><br/> Blank|Not selected <br/><br/> `$false` <br/><br/> Blank|The default [alert policy](../../compliance/alert-policies.md) named **User restricted from sending email** already sends email notifications to members of the **TenantAdmins** (**Global admins**) group when users are blocked due to exceeding the limits in policy. **We strongly recommend that you use the alert policy rather than this setting in the outbound spam policy to notify admins and other users**. For instructions, see [Verify the alert settings for restricted users](removing-user-from-restricted-users-portal-after-spam.md#verify-the-alert-settings-for-restricted-users).|

### EOP anti-malware policy settings

To create and configure anti-malware policies, see [Configure anti-malware policies in EOP](anti-malware-policies-configure.md).

Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

The policy named AdminOnlyAccessPolicy enforces the historical capabilities for messages that were quarantined as malware as described in the table [here](quarantine-end-user.md). 

Users can't release their own messages that were quarantined as malware, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Protection settings**|||||
|**Enable the common attachments filter** <br/><br/> _EnableFileFilter_|Selected <br/><br/> `$true`<sup>\*</sup>|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|For the list of file types in the common attachments filter, see [Anti-malware policies](anti-malware-protection-about.md#anti-malware-policies). <br/><br/> <sup>\*</sup> The common attachments filter is on by default in new anti-malware policies that you create in the Microsoft 365 Defender portal. The common attachments filter is off by default in the default anti-malware policy and in new policies that you create in PowerShell.|
|Common attachment filter notifications (**When these file types are found**) <br/><br/> _FileTypeAction_|**Reject the message with a non-delivery report (NDR)** <br/><br/> `Reject`|**Reject the message with a non-delivery report (NDR)** <br/><br/> `Reject`|**Reject the message with a non-delivery report (NDR)** <br/><br/> `Reject`||
|**Enable zero-hour auto purge for malware** <br/><br/> _ZapEnabled_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Quarantine policy** <br/><br/> _QuarantineTag_|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy||
|**Admin notifications**|||||
|**Notify an admin about undelivered messages from internal senders** <br/><br/> _EnableInternalSenderAdminNotifications_ <br/><br/> _InternalSenderAdminAddress_|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|We have no specific recommendation for this setting.|
|**Notify an admin about undelivered messages from external senders** <br/><br/> _EnableExternalSenderAdminNotifications_ <br/><br/> _ExternalSenderAdminAddress_|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|We have no specific recommendation for this setting.|
|**Customize notifications**||||We have no specific recommendations for these settings.|
|**Use customized notification text** <br/><br/> _CustomNotifications_|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`||
|**From name** <br/><br/> _CustomFromName_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`||
|**From address** <br/><br/> _CustomFromAddress_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`||
|**Customize notifications for messages from internal senders**||||These settings are used only if **Notify an admin about undelivered messages from internal senders** is selected.|
|**Subject** <br/><br/> _CustomInternalSubject_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`||
|**Message** <br/><br/> _CustomInternalBody_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`||
|**Customize notifications for messages from external senders**||||These settings are used only if **Notify an admin about undelivered messages from external senders** is selected.|
|**Subject** <br/><br/> _CustomExternalSubject_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`||
|**Message** <br/><br/> _CustomExternalBody_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`||

### EOP anti-phishing policy settings

For more information about these settings, see [Spoof settings](anti-phishing-policies-about.md#spoof-settings). To configure these settings, see [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md).

The spoof settings are inter-related, but the **Show first contact safety tip** setting has no dependency on spoof settings.

Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

Although the **Apply quarantine policy** value appears unselected when you create an anti-phishing policy in the Defender portal, the quarantine policy named DefaultFullAccessPolicy¹ is used if you don't select a quarantine policy. This policy enforces the historical capabilities for messages that were quarantined as spoof as described in the table [here](quarantine-end-user.md). When you later view or edit the quarantine policy settings, the quarantine policy name is shown.

Admins can create or use quarantine policies with more restrictive or less restrictive capabilities. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing threshold & protection**|||||
|**Enable spoof intelligence** <br/><br/> _EnableSpoofIntelligence_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Actions**|||||
|**If message is detected as spoof** <br/><br/> _AuthenticationFailAction_|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`|This setting applies to spoofed senders that were automatically blocked as shown in the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md) or manually blocked in the [Tenant Allow/Block List](tenant-allow-block-list-about.md). <br/><br/> If you select **Quarantine the message** as the action for the spoof verdict, an **Apply quarantine policy** box is available.|
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **Spoof** <br/><br/> _SpoofQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if spoof detections are quarantined.|
|**Show first contact safety tip** <br/><br/> _EnableFirstContactSafetyTips_|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|For more information, see [First contact safety tip](anti-phishing-policies-about.md#first-contact-safety-tip).|
|**Show (?) for unauthenticated senders for spoof** <br/><br/> _EnableUnauthenticatedSender_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Adds a question mark (?) to the sender's photo in Outlook for unidentified spoofed senders. For more information, see [Unauthenticated sender indicators](anti-phishing-policies-about.md#unauthenticated-sender-indicators).|
|**Show "via" tag** <br/><br/> _EnableViaTag_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Adds a via tag (chris@contoso.com via fabrikam.com) to the From address if it's different from the domain in the DKIM signature or the **MAIL FROM** address. <br/><br/> For more information, see [Unauthenticated sender indicators](anti-phishing-policies-about.md#unauthenticated-sender-indicators).|

¹ As described in [Full access permissions and quarantine notifications](quarantine-policies.md#full-access-permissions-and-quarantine-notifications), your organization might use NotificationEnabledPolicy instead of DefaultFullAccessPolicy in the default security policy or in new custom security policies that you create. The only difference between these two quarantine policies is quarantine notifications are turned on in NotificationEnabledPolicy and turned off in DefaultFullAccessPolicy.

## Microsoft Defender for Office 365 security

Additional security benefits come with a Microsoft Defender for Office 365 subscription. For the latest news and information, you can see [What's new in Defender for Office 365](defender-for-office-365-whats-new.md).

> [!IMPORTANT]
>
> - The default anti-phishing policy in Microsoft Defender for Office 365 provides [spoof protection](anti-phishing-policies-about.md#spoof-settings) and mailbox intelligence for all recipients. However, the other available [impersonation protection](#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) features and [advanced settings](#advanced-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are not configured or enabled in the default policy. To enable all protection features, use one of the following methods:
>
>   - Turn on and use the Standard and/or Strict [preset security policies](preset-security-policies.md) and configure impersonation protection there.
>   - Modify the default anti-phishing policy.
>
>   - Create additional anti-phishing policies.
>
> - Although there's no default Safe Attachments policy or Safe Links policy, the **Built-in protection** preset security policy provides Safe Attachments protection and Safe Links protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Attachments policies or Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).
>
> - [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md) protection and [Safe Documents](safe-documents-in-e5-plus-security-about.md) protection have no dependencies on Safe Links policies.

If your subscription includes Microsoft Defender for Office 365 or if you've purchased Defender for Office 365 as an add-on, set the following Standard or Strict configurations.

### Anti-phishing policy settings in Microsoft Defender for Office 365

EOP customers get basic anti-phishing as previously described, but Defender for Office 365 includes more features and control to help prevent, detect, and remediate against attacks. To create and configure these policies, see [Configure anti-phishing policies in Defender for Office 365](anti-phishing-policies-mdo-configure.md).

#### Advanced settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about this setting, see [Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure this setting, see [Configure anti-phishing policies in Defender for Office 365](anti-phishing-policies-mdo-configure.md).

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing email threshold** <br/><br/> _PhishThresholdLevel_|**1 - Standard** <br/><br/> `1`|**3 - More aggressive** <br/><br/> `3`|**4 - Most aggressive** <br/><br/> `4`||

#### Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365

For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365). To configure these settings, see [Configure anti-phishing policies in Defender for Office 365](anti-phishing-policies-mdo-configure.md).

Wherever you select **Quarantine the message** as the action for an impersonation verdict, an **Apply quarantine policy** box is available. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

Although the **Apply quarantine policy** value appears unselected when you create an anti-phishing policy in the Defender portal, the quarantine policy named DefaultFullAccessPolicy is used if you don't select a quarantine policy. This policy enforces the historical capabilities for messages that were quarantined as impersonation as described in the table [here](quarantine-end-user.md). When you later view or edit the quarantine policy settings, the quarantine policy name is shown.

Admins can create or use quarantine policies with more restrictive or less restrictive capabilities. For instructions, see [Create quarantine policies in the Microsoft 365 Defender portal](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

|Security feature name|Default|Standard|Strict|Comment|
|---|:---:|:---:|:---:|---|
|**Phishing threshold & protection**|||||
|**Enable users to protect** (impersonated user protection) <br/><br/> _EnableTargetedUserProtection_ <br/><br/> _TargetedUsersToProtect_|Not selected <br/><br/> `$false` <br/><br/> none|Selected <br/><br/> `$true` <br/><br/> \<list of users\>|Selected <br/><br/> `$true` <br/><br/> \<list of users\>|We recommend adding users (message senders) in key roles. Internally, protected senders might be your CEO, CFO, and other senior leaders. Externally, protected senders could include council members or your board of directors.|
|**Enable domains to protect** (impersonated domain protection)|Not selected|Selected|Selected||
|**Include domains I own** <br/><br/> _EnableOrganizationDomainsProtection_|Off <br/><br/> `$false`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Include custom domains** <br/><br/> _EnableTargetedDomainsProtection_ <br/><br/> _TargetedDomainsToProtect_|Off <br/><br/> `$false` <br/><br/> none|Selected <br/><br/> `$true` <br/><br/> \<list of domains\>|Selected <br/><br/> `$true` <br/><br/> \<list of domains\>|We recommend adding domains (sender domains) that you don't own, but you frequently interact with.|
|**Add trusted senders and domains** <br/><br/> _ExcludedSenders_ <br/><br/> _ExcludedDomains_|None|None|None|Depending on your organization, we recommend adding senders or domains that are incorrectly identified as impersonation attempts.|
|**Enable mailbox intelligence** <br/><br/> _EnableMailboxIntelligence_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Enable intelligence for impersonation protection** <br/><br/> _EnableMailboxIntelligenceProtection_|Off <br/><br/> `$false`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|This setting allows the specified action for impersonation detections by mailbox intelligence.|
|**Actions**|||||
|**If message is detected as an impersonated user** <br/><br/> _TargetedUserProtectionAction_|**Don't apply any action** <br/><br/> `NoAction`|**Quarantine the message** <br/><br/> `Quarantine`|**Quarantine the message** <br/><br/> `Quarantine`||
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **user impersonation** <br/><br/> _TargetedUserQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessWithNotificationPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if user impersonation detections are quarantined.|
|**If message is detected as an impersonated domain** <br/><br/> _TargetedDomainProtectionAction_|**Don't apply any action** <br/><br/> `NoAction`|**Quarantine the message** <br/><br/> `Quarantine`|**Quarantine the message** <br/><br/> `Quarantine`||
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **domain impersonation** <br/><br/> _TargetedDomainQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessWithNotificationPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if domain impersonation detections are quarantined.|
|**If mailbox intelligence detects an impersonated user** <br/><br/> _MailboxIntelligenceProtectionAction_|**Don't apply any action** <br/><br/> `NoAction`|**Move message to the recipients' Junk Email folders** <br/><br/> `MoveToJmf`|**Quarantine the message** <br/><br/> `Quarantine`||
|&nbsp;&nbsp;&nbsp;**Quarantine policy** for **mailbox intelligence impersonation** <br/><br/> _MailboxIntelligenceQuarantineTag_|DefaultFullAccessPolicy¹|DefaultFullAccessPolicy|DefaultFullAccessWithNotificationPolicy|The quarantine policy is meaningful only if mailbox intelligence detections are quarantined.|
|**Show user impersonation safety tip** <br/><br/> _EnableSimilarUsersSafetyTips_|Off <br/><br/> `$false`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Show domain impersonation safety tip** <br/><br/> _EnableSimilarDomainsSafetyTips_|Off <br/><br/> `$false`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Show user impersonation unusual characters safety tip** <br/><br/> _EnableUnusualCharactersSafetyTips_|Off <br/><br/> `$false`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||

¹ As described in [Full access permissions and quarantine notifications](quarantine-policies.md#full-access-permissions-and-quarantine-notifications), your organization might use NotificationEnabledPolicy instead of DefaultFullAccessPolicy in the default security policy or in new custom security policies that you create. The only difference between these two quarantine policies is quarantine notifications are turned on in NotificationEnabledPolicy and turned off in DefaultFullAccessPolicy.

#### EOP anti-phishing policy settings in Microsoft Defender for Office 365

These are the same settings that are available in [anti-spam policy settings in EOP](#eop-anti-spam-policy-settings).

### Safe Attachments settings

Safe Attachments in Microsoft Defender for Office 365 includes global settings that have no relationship to Safe Attachments policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Attachments in Defender for Office 365](safe-attachments-about.md).

Although there's no default Safe Attachments policy, the **Built-in protection** preset security policy provides Safe Attachments protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Attachments policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

#### Global settings for Safe Attachments

> [!NOTE]
> The global settings for Safe Attachments are set by the **Built-in protection** preset security policy, but not by the **Standard** or **Strict** preset security policies. Either way, admins can modify these global Safe Attachments settings at any time.
>
> The **Default** column shows the values before the existence of the **Built-in protection** preset security policy. The **Built-in protection** column shows the values that are set by the **Built-in protection** preset security policy, which are also our recommended values.

To configure these settings, see [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md) and [Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md).

In PowerShell, you use the [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

|Security feature name|Default|Built-in protection|Comment|
|---|:---:|:---:|---|
|**Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** <br/><br/> _EnableATPForSPOTeamsODB_|Off <br/><br/> `$false`|On <br/><br/> `$true`|To prevent users from downloading malicious files, see [Use SharePoint Online PowerShell to prevent users from downloading malicious files](safe-attachments-for-spo-odfb-teams-configure.md#step-2-recommended-use-sharepoint-online-powershell-to-prevent-users-from-downloading-malicious-files).|
|**Turn on Safe Documents for Office clients** <br/><br/> _EnableSafeDocs_|Off <br/><br/> `$false`|On <br/><br/> `$true`|This feature is available and meaningful only with licenses that are not included in Defender for Office 365 (for example, Microsoft 365 A5 or Microsoft 365 E5 Security). For more information, see [Safe Documents in Microsoft 365 A5 or E5 Security](safe-documents-in-e5-plus-security-about.md).|
|**Allow people to click through Protected View even if Safe Documents identified the file as malicious** <br/><br/> _AllowSafeDocsOpen_|Off <br/><br/> `$false`|Off <br/><br/> `$false`|This setting is related to Safe Documents.|

#### Safe Attachments policy settings

To configure these settings, see [Set up Safe Attachments policies in Defender for Office 365](safe-attachments-policies-configure.md).

In PowerShell, you use the [New-SafeAttachmentPolicy](/powershell/module/exchange/new-safeattachmentpolicy) and [Set-SafeAttachmentPolicy](/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there is no default Safe Attachments policy, but Safe Attachments protection is assigned to all recipients by the [**Built-in protection** preset security policy](preset-security-policies.md) (users who aren't defined in any Safe Attachments policies).
>
> The **Default in custom** column refers to the default values in new Safe Attachments policies that you create. The remaining columns indicate (unless otherwise noted) the values that are configured in the corresponding preset security policies.

Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

The **Quarantine policy** value is blank when you create a new Safe Attachments policy in the Defender portal. This blank value means the default quarantine policy named AdminOnlyAccessPolicy is used. This policy enforces the historical capabilities for messages that were quarantined as malware by Safe Attachments as described in the table [here](quarantine-end-user.md). 

Users can't release their own messages that were quarantined as malware by Safe Attachments, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

|Security feature name|Default in custom|Built-in protection|Standard|Strict|Comment|
|---|:---:|:---:|:---:|:---:|---|
|**Safe Attachments unknown malware response** <br/><br/> _Enable_ and _Action_|**Off** <br/><br/> `-Enable $false` and `-Action Block`|**Block** <br/><br/> `-Enable $true` and `-Action Block`|**Block** <br/><br/> `-Enable $true` and `-Action Block`|**Block** <br/><br/> `-Enable $true` and `-Action Block`|When the _Enable_ parameter is $false, the value of the _Action_ parameter doesn't matter.|
|**Quarantine policy** <br/><br/> _QuarantineTag_|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy|AdminOnlyAccessPolicy||
|**Redirect attachment with detected attachments** : **Enable redirect** <br/><br/> _Redirect_ <br/><br/> _RedirectAddress_|Not selected and no email address specified. <br/><br/> `-Redirect $false` <br/><br/> _RedirectAddress_ is blank (`$null`)|Not selected and no email address specified. <br/><br/> `-Redirect $false` <br/><br/> _RedirectAddress_ is blank (`$null`)|Selected and specify an email address. <br/><br/> `$true` <br/><br/> an email address|Selected and specify an email address. <br/><br/> `$true` <br/><br/> an email address|Redirect messages to a security admin for review. <br/><br/> **Note**: This setting is not configured in the **Standard**, **Strict**, or **Built-in protection** preset security policies. The **Standard** and **Strict** values indicate our **recommended** values in new Safe Attachments policies that you create.|
|**Apply the Safe Attachments detection response if scanning can't complete (timeout or errors)** <br/><br/> _ActionOnError_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||

### Safe Links settings

Safe Links in Defender for Office 365 includes global settings that apply to all users who are included in active Safe Links policies, and settings that are specific to each Safe Links policy. For more information, see [Safe Links in Defender for Office 365](safe-links-about.md).

Although there's no default Safe Links policy, the **Built-in protection** preset security policy provides Safe Links protection to all recipients (users who aren't defined in the Standard or Strict preset security policies or in custom Safe Links policies). For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

#### Global settings for Safe Links

> [!NOTE]
> The global settings for Safe Links are set by the **Built-in protection** preset security policy, but not by the **Standard** or **Strict** preset security policies. Either way, admins can modify these global Safe Links settings at any time.
>
> The **Default** column shows the values before the existence of the **Built-in protection** preset security policy. The **Built-in protection** column shows the values that are set by the **Built-in protection** preset security policy, which are also our recommended values.

To configure these settings, see [Configure global settings for Safe Links in Defender for Office 365](safe-links-policies-global-settings-configure.md).

In PowerShell, you use the [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365) cmdlet for these settings.

|Security feature name|Default|Built-in protection|Comment|
|---|:---:|:---:|---|
|**Block the following URLs** <br/><br/> _ExcludedUrls_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|We have no specific recommendation for this setting. <br/><br/> For more information, see ["Block the following URLs" list for Safe Links](safe-links-about.md#block-the-following-urls-list-for-safe-links). <br/><br/> **Note**: You can now manage block URL entries in the [Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-block-entries-for-urls-in-the-tenant-allowblock-list). The "Block the following URLs" list is in the process of being deprecated. We'll attempt to migrate existing entries from the "Block the following URLs" list to block URL entries in the Tenant Allow/Block List. Messages containing the blocked URL will be quarantined.|

#### Safe Links policy settings

To configure these settings, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

In PowerShell, you use the [New-SafeLinksPolicy](/powershell/module/exchange/new-safelinkspolicy) and [Set-SafeLinksPolicy](/powershell/module/exchange/set-safelinkspolicy) cmdlets for these settings.

> [!NOTE]
> As described earlier, there's no default Safe Links policy, but Safe Links protection is assigned to all recipients by the [**Built-in protection** preset security policy](preset-security-policies.md) (users who otherwise aren't included in any Safe Links policies).
>
> The **Default in custom** column refers to the default values in new Safe Links policies that you create. The remaining columns indicate (unless otherwise noted) the values that are configured in the corresponding preset security policies.

|Security feature name|Default in custom|Built-in protection|Standard|Strict|Comment|
|---|:---:|:---:|:---:|:---:|---|
|**URL & click protection settings**||||||
|**Email**|||||The settings in this section affect URL rewriting and time of click protection in email messages.|
|**On: Safe Links checks a list of known, malicious links when users click links in email. URLs are rewritten by default.** <br/><br/> _EnableSafeLinksForEmail_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Apply Safe Links to email messages sent within the organization** <br/><br/> _EnableForInternalSenders_|Selected <br/><br/> `$true`|Not selected <br/><br/> `$false`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Apply real-time URL scanning for suspicious links and links that point to files** <br/><br/> _ScanUrls_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Wait for URL scanning to complete before delivering the message** <br/><br/> _DeliverMessageAfterScan_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Do not rewrite URLs, do checks via Safe Links API only** <br/><br/> _DisableURLRewrite_|Selected<sup>\*</sup> <br/><br/> `$true`|Selected <br/><br/> `$true`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|<sup>\*</sup> In new Safe Links policies that you create in the Defender portal, this setting is selected by default. In new Safe Links policies that you create in PowerShell, the default value of the _DisableURLRewrite_ parameter is `$false`.|
|**Do not rewrite the following URLs in email** <br/><br/> _DoNotRewriteUrls_|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|Blank <br/><br/> `$null`|We have no specific recommendation for this setting. <br/><br/> **Note**: Entries in the "Do not rewrite the following URLs" list are not scanned or wrapped by Safe Links during mail flow. Use [allow URL entries in the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md#use-the-microsoft-365-defender-portal-to-create-allow-entries-for-urls-on-the-submissions-page) so URLs are not scanned or wrapped by Safe Links during mail flow _and_ at time of click.|
|**Teams**|||||The setting in this section affects time of click protection in Microsoft Teams.|
|**On: Safe Links checks a list of known, malicious links when users click links in Microsoft Teams. URLs are not rewritten.** <br/><br/> _EnableSafeLinksForTeams_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Office 365 apps**|||||The setting in this section affects time of click protection in Office apps.|
|**On: Safe Links checks a list of known, malicious links when users click links in Microsoft Office apps. URLs are not rewritten.** <br/><br/> _EnableSafeLinksForOffice_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Use Safe Links in supported Office 365 desktop and mobile (iOS and Android) apps. For more information, see [Safe Links settings for Office apps](safe-links-about.md#safe-links-settings-for-office-apps).|
|**Click protection settings**||||||
|**Track user clicks** <br/><br/> _TrackClicks_|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`|Selected <br/><br/> `$true`||
|**Let users click through to the original URL** <br/><br/> _AllowClickThrough_|Selected<sup>\*</sup> <br/><br/> `$true`|Selected <br/><br/> `$true`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|<sup>\*</sup> In new Safe Links policies that you create in the Defender portal, this setting is selected by default. In new Safe Links policies that you create in PowerShell, the default value of the _AllowClickThrough_ parameter is `$false`.|
|**Display the organization branding on notification and warning pages** <br/><br/> _EnableOrganizationBranding_|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|Not selected <br/><br/> `$false`|We have no specific recommendation for this setting. <br/><br/> Before you turn on this setting, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your company logo.|
|**Notification**||||||
|**How would you like to notify your users?** <br/><br/> _CustomNotificationText_ <br/><br/> _UseTranslatedNotificationText_|**Use the default notification text** <br/><br/> Blank (`$null`) <br/><br/> `$false`|**Use the default notification text** <br/><br/> Blank (`$null`) <br/><br/> `$false`|**Use the default notification text** <br/><br/> Blank (`$null`) <br/><br/> `$false`|**Use the default notification text** <br/><br/> Blank (`$null`) <br/><br/> `$false`|We have no specific recommendation for this setting. <br/><br/> You can select **Use custom notification text** (`-CustomNotificationText "<Custom text>"`) to enter and use customized notification text. If you specify custom text, you can also select **Use Microsoft Translator for automatic localization** (`-UseTranslatedNotificationText $true`) to automatically translate the text into the user's language.|

## Related articles

- Are you looking for best practices for **Exchange mail flow rules (also known as transport rules**)? See [Best practices for configuring mail flow rules in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/configuration-best-practices).

- Admins and users can submit false positives (good email marked as bad) and false negatives (bad email allowed) to Microsoft for analysis. For more information, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

- Use these links for info on how to **set up** your [EOP service](/exchange/standalone-eop/set-up-your-eop-service), and **configure** [Microsoft Defender for Office 365](defender-for-office-365.md). Don't forget the helpful directions in '[Protect Against Threats in Office 365](protect-against-threats.md)'.

- **Security baselines for Windows** can be found here: [Where can I get the security baselines?](/windows/security/threat-protection/windows-security-baselines#where-can-i-get-the-security-baselines) for GPO/on-premises options, and [Use security baselines to configure Windows devices in Intune](/intune/protect/security-baselines) for Intune-based security. Finally, a comparison between Microsoft Defender for Endpoint and Microsoft Intune security baselines is available in [Compare the Microsoft Defender for Endpoint and the Windows Intune security baselines](/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline#compare-the-microsoft-defender-atp-and-the-windows-intune-security-baselines).
