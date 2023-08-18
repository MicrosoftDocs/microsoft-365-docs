---
title: Get started with Microsoft Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - zerotrust-solution
  - tier1
ms.custom:
description: Learn how to get started with the initial deployment and configuration of Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 8/17/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Get started with Microsoft Defender for Office 365

In new Microsoft 365 organizations with Microsoft Defender for Office 365 (included or as an add-on subscription), this article describes the configuration steps that you need to do in [Exchange Online Protection (EOP)](eop-about.md) and [Defender for Office 365](why-do-i-need-microsoft-defender-for-office-365.md) in the earliest days of your organization.

Although your Microsoft 365 organization includes a default level of protection from the moment you create it (or add Defender for Office 365 to it), the steps in this article give you an actionable plan to unleash the full protection capabilities of EOP and Defender for Office 365. After you complete the steps, you can also use this article to show management that you're maximizing your investment in Microsoft 365.

The steps to configure EOP and Defender for Office 365 are:

<!---Art with numbered pool balls similar to https://learn.microsoft.com/microsoft-365/security/defender-endpoint/mde-planning-guide>--->

## Requirements

Email threat protection features are included in *all* Microsoft 365 subscriptions with cloud mailboxes via EOP. Defender for Office 365 includes advanced features. For detailed comparisons about the features in EOP, Defender for Office for Plan 1, and Defender for Office Plan 2, see [The Office 365 security ladder from EOP to Microsoft Defender for Office 365](microsoft-defender-for-office-365-product-overview.md#the-office-365-security-ladder-from-eop-to-microsoft-defender-for-office-365).

### Roles and permissions

To configure EOP and Defender for Office 365 features, you need permissions. The following table lists the permissions that you need to do the steps in this article (one is enough; you don't need all of them).

|Role or role group|Learn more|
|---|---|
|Global Administrator in Azure AD|[About Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md)|
|Organization Management in Email & collaboration role groups|[Role groups in Microsoft Defender for Office 365](scc-permissions.md#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance)|
|Security Administrator in Azure AD|[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#security-administrator)
|Security Administrator in Email & collaboration role groups|[Role groups in Microsoft Defender for Office 365](scc-permissions.md#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance)|
|Exchange Online Organization Management|[Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)|

## Step 1: Configure email authentication for your Microsoft 365 domains

Email authentication (also known as *email validation*) is a group of standards to verify that email messages from an sender are legitimate and come from expected sources for the email domain.

Configure the following email authentication records in DNS for all [custom domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) that you configured in Microsoft 365:

- **Sender Policy Framework (SPF)**: This one is the most important. How you configure it depends on whether you're absolutely sure of any/all sources for messages in the domain. For instructions, see [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md).
- **DomainKeys Identified Mail (DKIM)**: The built-in DKIM configuration in Microsoft 365 is probably OK for most customers. Complex environments likely need to manually create DKIM records for their domains. For details and instructions, see [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md).
- **Domain-based Message Authentication, Reporting, and Conformance (DMARC)**: For instructions, see [Use DMARC to validate email](email-authentication-dmarc-configure.md).
- [DKIM](email-authentication-dkim-configure.md): Microsoft 365 
- [DMARC](email-authentication-dmarc-configure.md)

Email authentication records aren't required for the .onmicrosoft.com domain.

## Step 2: Turn on and configure preset security policies

The Standard and Strict preset security policies contain the following security polices:

- **EOP** policies:
  - [Anti-malware](anti-malware-policies-configure.md)
  - [Anti-spam](anti-spam-policies-configure.md)
  - [Anti-phishing (spoofing protection)](anti-phishing-policies-about.md#spoof-settings)
- **Defender for Office 365** policies:
  - The same [anti-phishing (spoofing protection)](anti-phishing-policies-about.md#spoof-settings) as EOP plus:
    - [Impersonation settings](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
    - [Advanced phishing thresholds](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Links](safe-links-policies-configure.md)
  - [Safe Attachments](safe-attachments-policies-configure.md)

You can apply conditions and exceptions (users, group members, or domains) for EOP protection and Defender for Office 365 protection within preset security policies.

In Defender for Office 365 organizations, you need to specify the users and domains to get impersonation protection. All other settings are locked into our recommended standard and strict settings (many of which are the same; you can see the differences [here](preset-security-policies.md#policy-settings-in-preset-security-policies).

The decision you need to make is whether to use the Standard security policy, the Strict security policy, or both.

If you're unsure, we recommend starting with the Standard security policy for everyone. Or, you can configure some recipients for the Standard preset security policy, and some for the Strict preset security policy.

As explained in [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies), the Strict preset security policy is applied before the Standard preset security policy. If a recipient is intentionally or unintentionally defined in both preset security policies, they *only* get the settings of the Strict preset security policy, so plan accordingly. For example:

- Use unambiguous groups or lists of recipients in each preset security policy.
- Configure recipients who should get the settings of the Standard preset security policy as exceptions in the Strict preset security policy.

To turn on and configure preset security policies, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

> [!TIP]
> Recipients who aren't defined in the Standard or Strict preset security policies are automatically included in the default policies for anti-malware, anti-spam, anti-phishing (no users or domains specified for impersonation protection by default). The settings in default policies are configurable.
> The Built-in protection preset security policy for Safe Attachments and Safe Links provide the same functionality as default policies, except you can configure exceptions to the protection (users, group members, or domains).
