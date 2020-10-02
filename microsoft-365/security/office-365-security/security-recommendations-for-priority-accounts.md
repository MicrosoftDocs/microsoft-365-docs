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
description: "Admins can learn how to elevate the security settings for priority accounts or other high value employees (HVEs) in their Microsoft 365 organization"
---

# Security recommendations for priority accounts in Microsoft 365

What would you do if you received an urgent email message from an executive in your organization that asked you to do something? Would you do it? Most people would comply with the request. That's why users in positions of authority are targets for attackers. If the accounts for these high value employees or HVEs are compromised, the attacker might gain access to accounts with admin, financial, product, or even physical access abilities within the organization.

Microsoft 365 and Office 365 Advanced Threat Protection (ATP) contains many different features that can help you to provided additional layers of security for your HVEs. The available features and how to use them are discussed in this article.

## Enable MFA and disable legacy authentication protocols for HVEs

Multi-factor authentication (MFA) requires a traditional username and password plus an additional type of verification (known as a _factor_) to authenticate a user. For high-level information about MFA, see [What is: Multi-factor authentication](https://support.microsoft.com/help/4577374).

Most compromising sign-in attempts come from legacy authentication older email clients that don't use modern authentication. For example, Outlook 2010, IMAP4 clients, POP3 clients, and authenticated SMTP. Blocking access to these protocols is important. With a compromised username and password, attackers can bypass MFA and authenticate using one of these older protocols.

There are several different methods for requiring MFA and blocking legacy authentication protocols in Azure AD. These methods are described in the following table.

> [!NOTE]
> MFA as described in the table significantly reduce the number of times that users are required to use MFA (for example, the first time on a new device) compared to the legacy per-person MFA that's available in the Microsoft 365 admin center. In fact, you need to turn off per-person MFA before you can configure any of the other MFA methods. For instructions, see [Turn off legacy per person MFA](https://docs.microsoft.com/microsoft-365/admin/security-and-compliance/set-up-multi-factor-authentication?view=o365-worldwide#turn-off-legacy-per-person-mfa).

For more information about Azure AD versions and licensing, see [Azure Active Directory pricing](https://azure.microsoft.com/pricing/details/active-directory/).

****

|Required Azure AD version|Microsoft 365/Office 365 availability|Feature|Comments|
|---|---|---|---|
|Free|All|Security defaults|Turns on MFA and disables legacy authentication protocols for all users in the organization. For instructions, see [Enabling security defaults](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#enabling-security-defaults).|
|Office 365 Apps||||
|

## Use the Strict preset security policies for HVEs

## Use priority accounts and/or user tags for HVEs

### Configure activity alerts for priority accounts and/or user tags

### Use exist reports to view information about HVEs