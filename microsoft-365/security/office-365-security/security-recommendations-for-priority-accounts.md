---
title: "Security recommendations for high value employee accounts in Microsoft 365"
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

What would you do if you received an urgent message from an executive in your organization that asked you to do something? Would you do it? Most people would comply with the request. That's why users in positions of authority are targets for attackers. If these priority accounts are compromised, the attacker might gain access to accounts with admin, financial, product, or even physical access capabilities within the organization.

Microsoft 365 and Microsoft Defender for Office 365 contain many different features that can help you to provided additional layers of security for your priority accounts. The available features and how to use them are discussed in this article.

## Enable MFA and disable legacy authentication protocols for priority accounts

Multi-factor authentication (MFA) requires a traditional username and password plus an additional type of verification (known as a _factor_) to authenticate a user. For example, the additional factor of authentication might be a code generated in an authentication app or included in a text message. For high-level information about MFA, see [What is: Multi-factor authentication](https://support.microsoft.com/help/4577374).

Most compromising sign-in attempts come from legacy authentication in older email clients that don't use modern authentication. For example, Outlook 2010, IMAP4 clients, POP3 clients, and authenticated SMTP. Blocking access to these protocols is important. With a compromised username and password, attackers can bypass MFA and authenticate using one of these older protocols.

Azure Active Directory (Azure AD) includes different methods to required MFA and block legacy authentication protocols. These methods are described in the following table.

> [!NOTE]
> The MFA that's used by Azure AD significantly reduces the number of times that users are required to provide the second factor of authentication. The MFA that's used by Azure AD is superior to the legacy per-user MFA that's available in the Microsoft 365 admin center. In fact, you need to turn off per-user MFA before you can configure MFA in Azure AD. For instructions, see [Turn off legacy per-user MFA](https://docs.microsoft.com/microsoft-365/admin/security-and-compliance/set-up-multi-factor-authentication#turn-off-legacy-per-user-mfa).

****

|Feature|Included in|Comments|
|---|---|---|---|
|Security defaults|Microsoft 365|Turns on MFA and blocks legacy authentication protocols for **all** users in the organization. You should consider turning on security defaults for your organization. <p> For instructions, see [Enabling security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#enabling-security-defaults).|
|Conditional Access policies|Microsoft 365 E3 <p> Microsoft 365 E5|[Require multi-factor authentication and set up Conditional Access policies](https://docs.microsoft.com/microsoft-365/campaigns/m365-campaigns-conditional-access)|
|Risk-based Conditional Access policies|Microsoft 365 E5|[How To: Configure and enable risk policies](https://docs.microsoft.com/azure/active-directory/identity-protection/howto-identity-protection-configure-risk-policies)|
|

If you're not using Azure AD to block legacy authentication protocols, you can use [authentication policies](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/disable-basic-authentication-in-exchange-online) and [Client Access Rules](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules) in Exchange Online to block Basic authentication and legacy authentication protocols like POP3, IMAP4, and authenticated SMTP.

You can disable POP3 and IMAP4 access on individual mailboxes. You can disable authenticated SMTP at the organizational level and enable it on specific mailboxes that still require it. For instructions, see the following topics:

- [Enable or Disable POP3 or IMAP4 access for a user](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access)
- [Enable or disable authenticated client SMTP submission (SMTP AUTH)](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/authenticated-client-smtp-submission)

> [!NOTE]
> Basic authentication is in the process of being deprecated in Exchange Online for Exchange Web Services (EWS), Exchange ActiveSync, POP3, IMAP4, and remote PowerShell. For details, see this [blog post](https://developer.microsoft.com/office/blogs/deferred-end-of-support-date-for-basic-authentication-in-exchange-online/).

## Use Strict preset security policies for priority accounts

For priority accounts, we recommend applying the Strict profile in preset security policies.

Preset security policies are a central location to apply the recommended Strict (or Standard) policy settings in EOP and Defender for Office 365. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

For details about the default and Strict policy settings, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365-atp.md).

## User tags

User tags in Microsoft Defender for Office 365 Plan 2 (as part of Microsoft 365 E5 or an add-on subscription) are a way to quickly identify and classify specific users or groups of users in reports and incident investigations.

**Priority accounts** is a type of built-in user tag (known as a _system tag_) that you can use to identify priority accounts. For more information, see [Manage and monitor priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts).

You can also create custom tags to further identify and classify your priority accounts. For more information, see [User tags](user-tags.md). Note that you can manage **priority accounts** (system tags) in the same interface as custom user tags.

## Priority accounts in reports and investigations in Microsoft 365

### Priority accounts in alerts

The user tags of affected users are visible and available as filters on the **View alerts** page in the Security & Compliance Center. For more information, see [Viewing alerts](https://docs.microsoft.com/microsoft-365/compliance/alert-policies#viewing-alerts).

### Priority accounts in Threat Explorer or Real-time detections

In **Threat Explorer** (Microsoft Defender for Office 365 Plan 2) or **Real-time detections** (Microsoft Defender for Office 365 Plan 1), user tags are visible in the Email grid view and the Email details flyout. User tags are also available as a filterable property. For more information, see  [Tags in Threat Explorer](threat-explorer.md#tags-in-threat-explorer).

### Priority accounts in Campaign Views

User tags are one of many filterable properties in Campaign Views in Microsoft Defender for Office 365 Plan 2. For more information, see [Campaign Views](campaigns.md).

### Priority accounts in the Threat protection status report

In virtually all of the views and detail tables in the **Threat protection status report**, you can filter the results by **priority accounts**. For more information, see [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).

### Email issues for priority accounts report in the Exchange admin center

The **Email issues for priority accounts** report in the Exchange admin center (EAC) contains information about undelivered and delayed messages for **priority accounts**. For more information, see [Email issues for priority accounts report](https://docs.microsoft.com/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report).

## See also

[Announcing Priority Account Protection in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/announcing-priority-account-protection-in-microsoft-defender-for/ba-p/1696385)
