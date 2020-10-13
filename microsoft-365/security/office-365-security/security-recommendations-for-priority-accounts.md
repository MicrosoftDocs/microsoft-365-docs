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

What would you do if you received an urgent message from an executive in your organization that asked you to do something? Would you do it? Most people would comply with the request. That's why users in positions of authority are targets for attackers. If the accounts of these high value employees or HVEs are compromised, the attacker might gain access to accounts with admin, financial, product, or even physical access abilities within the organization.

Microsoft 365 and Office 365 Advanced Threat Protection (ATP) contain many different features that can help you to provided additional layers of security for your HVEs. The available features and how to use them are discussed in this article.

## Enable MFA and disable legacy authentication protocols for HVEs

Multi-factor authentication (MFA) requires a traditional username and password plus an additional type of verification (known as a _factor_) to authenticate a user. For example, a code from a phone app or a text message. For high-level information about MFA, see [What is: Multi-factor authentication](https://support.microsoft.com/help/4577374).

Most compromising sign-in attempts come from legacy authentication in older email clients that don't use modern authentication. For example, Outlook 2010, IMAP4 clients, POP3 clients, and authenticated SMTP. Blocking access to these protocols is important. With a compromised username and password, attackers can bypass MFA and authenticate using one of these older protocols.

There are several different methods for requiring MFA and blocking legacy authentication protocols in Azure AD. These methods are described in the following table.

> [!NOTE]
> MFA as described in the table significantly reduces the number of times that users are required to provide the second factor of authentication as compared to the legacy per-person MFA that's available in the Microsoft 365 admin center. In fact, you need to turn off per-person MFA before you can configure MFA using any of these other methods. For instructions, see [Turn off legacy per person MFA](https://docs.microsoft.com/microsoft-365/admin/security-and-compliance/set-up-multi-factor-authentication#turn-off-legacy-per-person-mfa).

For more information about Azure AD versions and licensing, see [Azure Active Directory pricing](https://azure.microsoft.com/pricing/details/active-directory/).

****

|Azure AD version|Microsoft 365 availability|Feature|Comments|
|---|---|---|---|
|Free and Office 365 Apps|All|Security defaults|Turns on MFA and disables legacy authentication protocols for all users in the organization. For instructions, see [Enabling security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#enabling-security-defaults).|
|Premium P1||Conditional access policies|[Require multi-factor authentication and set up conditional access policies](https://docs.microsoft.com/microsoft-365/campaigns/m365-campaigns-conditional-access)|
|Premium P2||Risk policies|[How To: Configure and enable risk policies](https://docs.microsoft.com/azure/active-directory/identity-protection/howto-identity-protection-configure-risk-policies)|
|

## Use the Strict preset security policies for HVEs in Office 365 ATP

For HVEs, we recommend applying the Strict profile in preset security policies.

Preset security policies are a central location to apply the recommended Standard or Strict policy settings in EOP and Office 365 ATP. For more information, see [Preset security policies in EOP and Office 365 ATP](preset-security-policies.md).

For details about the Strict policies and settings, see [Recommended settings for EOP and Office 365 ATP security](recommended-settings-for-eop-and-office365-atp.md).

## User tags in Microsoft 365 or Office 365 E3 or E5

User tags are a way to quickly identify and classify specific users or groups of users in reports and incident investigations.

Priority accounts is a type of built-in user tag (known as a _system tag_) that you can use to identify HVEs. For more information, see [Manage and monitor priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts). Note that priority accounts has specific subscription, number of licenses, and active user requirements.

For more information about priority accounts in action, see this blog post: [Announcing Priority Account Protection in Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/microsoft-defender-for-office/announcing-priority-account-protection-in-microsoft-defender-for/ba-p/1696385).

You can also create and use custom user tags to further identify and classify your HVEs. For more information, see [User tags in Office 365 ATP](user-tags.md). Note that you can manage priority accounts (system tags) in the same interface as user tags.

### Configure activity alerts for priority accounts and/or user tags

### Use exist reports to view information about HVEs