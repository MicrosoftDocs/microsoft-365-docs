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
description: "Admins can learn how to elevate the security settings for priority accounts or other high value employees (HVEs) in their Microsoft 365 organization"
---

# Security recommendations for high value employee accounts in Microsoft 365

What would you do if you received an urgent message from an executive in your organization that asked you to do something? Would you do it? Most people would comply with the request. That's why users in positions of authority are targets for attackers. If the accounts of these high value employees (HVEs) are compromised, the attacker might gain access to accounts with admin, financial, product, or even physical access abilities within the organization.

Microsoft 365 and Microsoft Defender for Office 365 contain many different features that can help you to provided additional layers of security for your HVEs. The available features and how to use them are discussed in this article.

## Enable MFA and disable legacy authentication protocols for HVEs

Multi-factor authentication (MFA) requires a traditional username and password plus an additional type of verification (known as a _factor_) to authenticate a user. For example, the addition factor of authentication might be a code generated an authentication app or included in a text message. For high-level information about MFA, see [What is: Multi-factor authentication](https://support.microsoft.com/help/4577374).

Most compromising sign-in attempts come from legacy authentication in older email clients that don't use modern authentication. For example, Outlook 2010, IMAP4 clients, POP3 clients, and authenticated SMTP. Blocking access to these protocols is important. With a compromised username and password, attackers can bypass MFA and authenticate using one of these older protocols.

Azure Active Directory (Azure AD) includes different methods to required MFA and block legacy authentication protocols. These methods are described in the following table.

> [!NOTE]
> The MFA that's used by Azure AD significantly reduces the number of times that users are required to provide the second factor of authentication. The MFA that's used by Azure AD is superior to the legacy per-person MFA that's available in the Microsoft 365 admin center. In fact, you need to turn off per-person MFA before you can configure MFA in Azure AD. For instructions, see [Turn off legacy per person MFA](https://docs.microsoft.com/microsoft-365/admin/security-and-compliance/set-up-multi-factor-authentication#turn-off-legacy-per-person-mfa).

For more information about Azure AD versions and licensing, see [Azure Active Directory pricing](https://azure.microsoft.com/pricing/details/active-directory/).

****

|Feature|Azure AD version required|Included in these plans|Comments|
|---|---|---|---|
|Security defaults|Office 365 Apps|Microsoft 365 E3 <p> Microsoft 365 E5|Turns on MFA and blocks legacy authentication protocols for all users in the organization. For instructions, see [Enabling security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#enabling-security-defaults).|
|Conditional access policies|Premium P1<sup>\*</sup>|Enterprise Mobility + Security E3|[Require multi-factor authentication and set up conditional access policies](https://docs.microsoft.com/microsoft-365/campaigns/m365-campaigns-conditional-access)|
|Risk policies|Premium P2<sup>\*</sup>|Enterprise Mobility + Security E5|[How To: Configure and enable risk policies](https://docs.microsoft.com/azure/active-directory/identity-protection/howto-identity-protection-configure-risk-policies)|
|

<sup>\*</sup> Also available as a standalone subscription.

If you're not using Azure AD to block legacy authentication protocols, you can use [authentication policies](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/disable-basic-authentication-in-exchange-online) and [Client Access Rules](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules) in Exchange Online to block Basic authentication and legacy authentication protocols like POP3, IMAP4, and authenticated SMTP.

If you're not using any of the previously described methods, you can [disable POP3 or IMAP4 access](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/pop3-and-imap4/enable-or-disable-pop3-or-imap4-access) on individual mailboxes. You can can [disable authenticated SMTP](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/authenticated-client-smtp-submission) at the organizational level and enable it on specific mailboxes that still require it.

## Use the Strict preset security policies for HVEs in Micro

For HVEs, we recommend applying the Strict profile in preset security policies.

Preset security policies are a central location to apply the recommended Strict (or Standard) policy settings in EOP and Defender for Office 365. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

For details about the default and Strict policy settings, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365-atp.md).

## User tags in Microsoft 365 or Office 365 E3 or E5

User tags are a way to quickly identify and classify specific users or groups of users in reports and incident investigations.

Priority accounts is a type of built-in user tag (known as a _system tag_) that you can use to identify HVEs. For more information, see [Manage and monitor priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts). Note that priority accounts has specific subscription, number of licenses, and active user requirements.

You can also create custom tags to further identify and classify your HVEs. For more information, see [User tags](user-tags.md). Note that you can manage priority accounts (system tags) in the same interface as custom user tags.

## HVEs in reports and investigations in Microsoft 365

### HVEs in activity alerts

### HVEs in Threat Explorer or Real-time detections

In **Threat Explorer** (Defender for Office 365 Plan 2) or **Real-time detections** (Defender for Office 365 Plan 1), user tags are visible in the Email grid view and the Email details flyout. User tags are also available as a filterable property. For more information, see  [Tags in Threat Explorer](threat-explorer.md#tags-in-threat-explorer).

### HVEs in Campaign Views

User tags are one of many filterable properties in Campaign Views in Microsoft Defender for Office 365 Plan 2. For more information, see [Campaign Views](campaigns.md).

### HVEs in the Threat protection status report in the Security & Compliance Center

In virtually all of the views and detail tables in the **Threat protection status report** in the Security & Compliance Center, you can filter the results by user tag. For more information, see [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).

### Email issues for priority accounts report in the Exchange admin center

The **Email issues for priority accounts** report in the Exchange admin center (EAC) contains information about undelivered and delayed messages for priority accounts. For more information, see [Email issues for priority accounts report](https://docs.microsoft.com/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report).

## See also

[Announcing Priority Account Protection in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/announcing-priority-account-protection-in-microsoft-defender-for/ba-p/1696385)
