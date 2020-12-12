---
title: "Security recommendations for priority accounts in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Admins can learn how to elevate the security settings and use reports, alerts, and investigations for priority accounts in their Microsoft 365 organizations."
---

# Security recommendations for priority accounts in Microsoft 365

What would you do if you received an urgent message from an executive in your organization that asked you to do something? Would you do it? Most people would comply with the request.

For attackers, ordinary phishing attacks that cast a random net to get the credentials of random or unknown users are inefficient. On the other hand, _spear phishing_ or _whaling_ attacks that target users in positions of power or authority are much more rewarding for attackers. If these priority accounts are compromised, the attacker might gain access to accounts with admin, financial, product, or even physical access capabilities within the organization.

Microsoft 365 and Microsoft Defender for Office 365 contain many different features that can help you to provided additional layers of security for your priority accounts. The available features and how to use them are discussed in this article.

## Increase sign-in security for priority accounts

Priority accounts require increased sign-in security. You can increase their sign-in security by requiring multi-factor authentication (MFA) and disabling legacy authentication protocols.

For instructions, see [Step 1. Increase sign-in security for remote workers with MFA](https://docs.microsoft.com/microsoft-365/solutions/empower-people-to-work-remotely-secure-sign-in). Although this article is about remote workers, the same concepts apply to priority users.

**Notes**:

- Basic authentication is in the process of being deprecated in Exchange Online for Exchange Web Services (EWS), Exchange ActiveSync, POP3, IMAP4, and remote PowerShell. For details, see this [blog post](https://developer.microsoft.com/office/blogs/deferred-end-of-support-date-for-basic-authentication-in-exchange-online/).

- You can use [authentication policies](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/disable-basic-authentication-in-exchange-online) and [Client Access Rules](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules) in Exchange Online to block Basic authentication and legacy authentication protocols like POP3, IMAP4, and authenticated SMTP.

- You can disable POP3 and IMAP4 access on individual mailboxes. You can disable authenticated SMTP at the organizational level and enable it on specific mailboxes that still require it. For instructions, see the following topics:
  - [Enable or Disable POP3 or IMAP4 access for a user](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access)
  - [Enable or disable authenticated client SMTP submission (SMTP AUTH)](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/authenticated-client-smtp-submission)

## Use Strict preset security policies for priority accounts

Priority users require more stringent actions for the various protections that are available in Exchange Online Protection (EOP) and Defender for Office 365.

For example, instead of delivering messages that were classified as spam to the Junk Email folder, you should quarantine those same messages if they're intended for priority accounts.

You can implement this stringent approach for priority accounts by using the Strict profile in preset security policies.

Preset security policies are a convenient and central location to apply our recommended Strict policy settings for all of the protections in EOP and Defender for Office 365. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

For details about how the Strict policy settings differ from the the default and Standard policy settings, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365-atp.md).

## User tags

User tags in Microsoft Defender for Office 365 Plan 2 (as part of Microsoft 365 E5 or an add-on subscription) are a way to quickly identify and classify specific users or groups of users in reports and incident investigations.

**Priority accounts** is a type of built-in user tag (known as a _system tag_) that you can use to identify incidents and alerts that involve priority accounts. For more information about **priority accounts**, see [Manage and monitor priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts).

You can also create custom tags to further identify and classify your priority accounts. For more information, see [User tags](user-tags.md). Note that you can manage **priority accounts** (system tags) in the same interface as custom user tags.

## Priority accounts in reports and investigations in Microsoft 365

****

|Feature|Description|
|---|---|
|Alerts|The user tags of affected users are visible and available as filters on the **View alerts** page in the Security & Compliance Center. For more information, see [Viewing alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#viewing-alerts).|
|Threat Explorer <p> Real-time detections|In **Threat Explorer** (Microsoft Defender for Office 365 Plan 2) or **Real-time detections** (Microsoft Defender for Office 365 Plan 1), user tags are visible in the Email grid view and the Email details flyout. User tags are also available as a filterable property. For more information, see  [Tags in Threat Explorer](threat-explorer.md#tags-in-threat-explorer).|
|Campaign Views|User tags are one of many filterable properties in Campaign Views in Microsoft Defender for Office 365 Plan 2. For more information, see [Campaign Views](campaigns.md).|
|Threat protection status report|In virtually all of the views and detail tables in the **Threat protection status report**, you can filter the results by **priority accounts**. For more information, see [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).|
|Email issues for priority accounts report|The **Email issues for priority accounts** report in the Exchange admin center (EAC) contains information about undelivered and delayed messages for **priority accounts**. For more information, see [Email issues for priority accounts report](https://docs.microsoft.com/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report).|
|

## See also

[Announcing Priority Account Protection in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/announcing-priority-account-protection-in-microsoft-defender-for/ba-p/1696385)
