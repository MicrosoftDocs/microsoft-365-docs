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

## Step 2: Configure security policies

As you can probably imagine, a lot of security policies are available in EOP and Defender for Office 365. There are three basic types of security policies:

- **Default policies**: These policies exist from the moment the organization is created. They apply to all recipients in the organization, you can't turn the policies off, and you can't modify who the policies apply to. But you can modify the security settings just like a custom policy. The settings in the default policies are described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).
- **Preset security policies**: Preset security are actually _profiles_ that contain _most_ of the available security polices in EOP and Defender for Office 365 with settings that are tailored to specific levels of protection. The preset security policies are:
  - The Strict preset security policy.
  - The Standard preset security policy.
  - Built-in protection.

  The Standard and Strict preset security policies are turned off by default until you turn them on. You specify recipient conditions and exceptions (users, group members, or domains) for EOP protection and Defender for Office 365 protection within the Standard and Strict preset security policies.

  Built-in protection in Defender for Office 365 is on by default to provides default Safe Attachments and Safe Links protection for all recipients. You can specify recipients exceptions to identify users who don't get the protection.

  In Standard and Strict preset security policies in Defender for Office 365 organizations, you need to configure entries (and optionally, exceptions) for user and domain impersonation protection. All other settings are locked into our recommended standard and strict values (many of which are the same). You can see the values in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md), and you can see the differences between Standard and Strict [here](preset-security-policies.md#policy-settings-in-preset-security-policies).

  As new protection capabilities are added to EOP and Defender for Office 365 and as the security landscape changes, the settings in preset security policies are automatically updated to our recommended settings.

- **Custom policies**: For most available security policies, you can create any number of custom policies. You can apply the policies to users using recipient conditions and exceptions (users, group members, or domains) and you can customize the settings.

The previous information and the security policies that are involved are summarized in the following table:

|&nbsp;|Default policies|Preset security policies|Custom policies|
|---|:---:|:---:|:---:|
|**EOP security policies**:||||
|[Anti-malware](anti-malware-policies-configure.md)|✔|✔|✔|
|[Anti-spam](anti-spam-policies-configure.md)|✔|✔|✔|
|[Anti-phishing (spoofing protection)](anti-phishing-policies-about.md#spoof-settings)|✔|✔|✔|
|[Outbound spam](outbound-spam-policies-configure.md)|✔||✔|
|[Connection filtering](connection-filter-policies-configure.md)|✔¹|||
|**Defender for Office 365 policies**:||||
|[Anti-phishing (spoofing protection)](anti-phishing-policies-about.md#spoof-settings) plus: <ul><li>[Impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>[Advanced phishing thresholds](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li></ul>|✔²|✔²|✔|
|[Safe Links](safe-links-policies-configure.md)|³|✔|✔|
|[Safe Attachments](safe-attachments-policies-configure.md)|³|✔|✔|
|**General behavior**||||
|Protection on by default?|✔|⁴|✔|
|Configure conditions/exceptions for protection?||✔⁵|✔|
|Customize security settings?|✔|⁶|✔|
|Protection settings automatically updated?||✔||

¹ There are no default entries in the IP Allow List or the IP Block List, so the default connection filter policy effectively does nothing unless you customize the settings.

² There are no entries or exceptions for user impersonation or domain impersonation protection in Defender for Office 365 until you configure them.

³ Although there are no default Safe Attachments or Safe Links policies in Defender for Office 365, the Built-in protection preset security policy provides Safe Attachments and Safe Links protection that's always on.

⁴ Only the Built-in protection preset security policy is on by default.

⁵ For the Built-in protection preset security policy, you can't configure recipient conditions for protection. You can only configure recipient exceptions from protection.

⁶ The only customizable security settings in preset security policies are the entries and exceptions for user impersonation protection and domain impersonation protection in the Standard and Strict preset security policies in Defender for Office 365.

### Order of precedence for security policies

How security policies are applied is an important consideration as you decide how to configure security settings for users. The important points to remember are:

- Security policies are applied in a specific order of precedence.
- If a user is intentionally or unintentionally included in multiple policies of the same type (for example, anti-malware policies), the first policy based on the order of precedence defines the feature protection settings for the user's encounter with that specific item (message, file, URL, etc.).
- Once that first policy of that type (for example, an anti-malware policy) is applied to a specific item for a user, policy processing for that type stops. No more security policies of that type are evaluated for that user and that specific item.

The order of precedence is explained in detail at [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies), but is briefly summarized here:

1. Preset security policies:
   1. The Strict preset security policy.
   2. The Standard preset security policy.
2. Custom policies of a specific type (for example, anti-malware policies). Each type of custom policy has a priority value that determines the order of precedence:
   1. A custom policy of that type with the priority value 0.
   2. A custom policy of that type with the priority value 1.
   3. And so on.
3. The default policy of a specific type (for example, anti-malware) or the Built-in protection preset security policy in Defender for Office 365 (Safe Links and Safe Attachments only).

Refer to the previous table to see how a specific security policy is represented in the precedence order. For example, anti-malware policies are present at each level. Outbound spam policies are available at the custom policy and default policy levels. The connection filter policy is available only at the default policy level.

To avoid confusion and unintended application of policies, use the following guidelines:

- Use unambiguous groups or lists of recipients at each level. For example, use different groups or lists of recipients for the Standard and Strict preset security policies.
- Configure exceptions at each level as appropriate. For example, configure recipients who need custom policies as exceptions to the Standard and Strict preset security policy.
- Remember, any remaining recipients that aren't identified at the higher levels get the default policies.

Armed with this information, you can now decided the best way to implement security policies in the organization.




### Determine your security policy strategy

Now that you know about the different types of security policies and how they're applied, you can decide how you want to use EOP and Defender for Office 365 to protect the users in your organization.

As previously described, default policies (and the Built-in protection preset security policy in Defender for Office 365) automatically protect all recipients in the organization by default. So even if you do nothing, all recipients in the organization the default protections as described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

The first decision is whether to start with preset security policies (Standard, Strict, or both) or custom policies. Remember, the default policies are also in play for recipients who aren't defined in preset security policies or custom policies, so you can leverage them, too.

Preset security policies are configured with settings based years of observations in the Microsoft 365 datacenters, and should be the right choice for the majority of organizations. And, the policies are automatically updated to match the threats of the security landscape.

In general, we recommend starting with the Standard preset security policy for all users in your organization. Use the [comparison table table between Standard and Strict](preset-security-policies.md#policy-settings-in-preset-security-policies) to see if some users would benefit from the Strict preset security policy.

Based on the previously described [order of precedence](#order-of-precedence-for-security-policies), you need to

**We recommend starting with the Standard preset security policy for all users in your organization**

The following requirements likely indicate that custom policies might be a better way to go:

- Do the majority of users in your organization require security settings that are _different_ from the locked down settings in preset security policies (junk vs. quarantine, hide safety tips, etc.)?
- Do the majority of users in your organization require settings that _aren't defined_ in preset security policies (for example, blocking email from specific countries or in specific languages in anti-spam policies)?
- Do the majority of users in your organization need a quarantine experience that's different from the locked down settings in preset security policies? [Quarantine policies](quarantine-policies.md#appendix) define what users can do to their quarantined messages, and whether they're notified about quarantined their quarantined messages. The default end-user quarantine experience is summarized in the table [here](quarantine-end-user.md) and the quarantine policies that are used in the Standard and Strict preset security policies are described in the tables [here](recommended-settings-for-eop-and-office365.md).



In general, we recommend starting with the Standard security policy for everyone. Or, you can configure some recipients for the Standard preset security policy, and some for the Strict preset security policy.

As explained in [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies), the Strict preset security policy is applied before the Standard preset security policy. If a recipient is intentionally or unintentionally defined in both preset security policies, they *only* get the settings of the Strict preset security policy, so plan accordingly. For example:

- Use unambiguous groups or lists of recipients in each preset security policy.
- Configure recipients who should get the settings of the Standard preset security policy as exceptions in the Strict preset security policy.

To turn on and configure preset security policies, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

> [!TIP]
> Recipients who aren't defined in the Standard or Strict preset security policies are automatically included in the default policies for anti-malware, anti-spam, anti-phishing (no users or domains specified for impersonation protection by default). The settings in default policies are configurable.
> The Built-in protection preset security policy for Safe Attachments and Safe Links provide the same functionality as default policies, except you can configure exceptions to the protection (users, group members, or domains).
