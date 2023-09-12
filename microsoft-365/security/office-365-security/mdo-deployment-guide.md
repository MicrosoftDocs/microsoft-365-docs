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

Email threat protection features are included in _all_ Microsoft 365 subscriptions with cloud mailboxes via EOP. Defender for Office 365 includes additional protection features. For detailed comparisons about the features in EOP, Defender for Office for Plan 1, and Defender for Office Plan 2, see [The Office 365 security ladder from EOP to Microsoft Defender for Office 365](microsoft-defender-for-office-365-product-overview.md#the-office-365-security-ladder-from-eop-to-microsoft-defender-for-office-365).

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

Email authentication (also known as _email validation_) is a group of standards to verify that email messages are legitimate, unaltered, and come from expected sources for the sender's email domain. For more information, see [Email authentication in EOP](email-authentication-about.md).

We'll proceed with the assumption that you're using one or more [custom domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) (for example @contoso.com) in Microsoft 365 for email, so you need to create specific email authentication DNS records for each custom domain that you're using for email.

Create the following email authentication DNS records at your DNS registrar or DNS hosting service for each custom domain that you use for email in Microsoft 365:

- **Sender Policy Framework (SPF)**: The SPF TXT record identifies valid sources for email from senders in the domain.

  If you're certain that all email from the domain is sent only from Microsoft 365, use the following value for the domain's SPF TXT record: 

  ```text
  v=spf1 include:spf.protection.outlook.com -all
  ```

  This SPF TXT record instructs destination email servers to _reject_ messages from senders in the domain that originate from other sources.

  You should also configure the following SPF TXT record to protect against unused subdomains:

  ```txt
  *.subdomain.contoso.com. IN TXT "v=spf1 -all"
  ```

  If there are other known or unknown sources for email in the domain (for example, third-party email services or on-premises email servers), or if you're using Office 365 Germany or Exchange Online Dedicated, see [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md) for how to correctly configure the SPF TXT record.

- **DomainKeys Identified Mail (DKIM)**: If you're also going to configure DMARC or your environment complex, you need to configure DKIM for the custom domain. For details and instructions, see [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md).

  Otherwise, the built-in DKIM configuration in Microsoft 365 is probably OK for most customers who use a single custom domain.

- **Domain-based Message Authentication, Reporting, and Conformance (DMARC)**: DMARC helps destination email servers decide what to do with messages from the custom domain that fail DKIM and DMARC checks.

  To set up DMARC for a custom domain, see [Set up DMARC for outbound mail from Microsoft 365](email-authentication-dmarc-configure.md#set-up-dmarc-for-outbound-mail-from-microsoft-365)

If you're using the @\*.onmicrosoft.com domain for email (also known as the Microsoft Online Email Routing Address or MOERA domain), there's not nearly as much for you to do:

- **SPF**: An SPF record is already configured for the \<domain\>.onmicrosoft.com domain.
- **DKIM**: A DKIM record is already configured for the \<domain\>.onmicrosoft.com domain.
- **DMARC**: You need to manually set up the DMARC record for the \<domain\>.onmicrosoft.com domain in the Microsoft 365 admin center at <https://admin.microsoft.com/Adminportal/Home#/Domains> as describe in zzz.

## Step 2: Configure security policies

As you can probably imagine, a lot of security policies are available in EOP and Defender for Office 365. There are three basic types of security policies:

- **Default policies**: These policies exist from the moment the organization is created. They apply to all recipients in the organization, you can't turn the policies off, and you can't modify who the policies apply to. But you can modify the security settings in the policies just like custom policies. The settings in the default policies are described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).
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
|Protection on by default?|✔|⁴||
|Configure conditions/exceptions for protection?||✔⁵|✔|
|Customize security settings?|✔|⁶|✔|
|Protection settings automatically updated?||✔||

¹ There are no default entries in the IP Allow List or the IP Block List, so the default connection filter policy effectively does nothing unless you customize the settings.

² There are no entries or exceptions for user impersonation or domain impersonation protection in Defender for Office 365 until you configure them.

³ Although there are no default Safe Attachments or Safe Links policies in Defender for Office 365, Built-in protection provides Safe Attachments and Safe Links protection that's always on.

⁴ Built-in protection is the only preset security policy that's on by default.

⁵ For the Standard and Strict preset security policies, you can configure recipient conditions and optional exceptions for protection. For Built-in protection, you can only configure recipient exceptions from protection.

⁶ The only customizable security settings in preset security policies are the entries and exceptions for user impersonation protection and domain impersonation protection in the Standard and Strict preset security policies in Defender for Office 365.

### Order of precedence for security policies

How security policies are applied is an important consideration as you decide how to configure security settings for users. The important points to remember are:

- Security features have an unconfigurable [order of processing](how-policies-and-protections-are-combined.md). For example, incoming messages are always evaluated for malware before spam.
- The security policies of a specific security feature (anti-spam, anti-malware, anti-phishing, etc.) are applied in a specific order of precedence (more on that later).
- If a user is intentionally or unintentionally included in multiple policies of a specific feature, the first security policy for that feature where the user is defined (based on the order of precedence) determines what happens to the item (a message, file, URL, etc.).
- Once that first security policy is applied to a specific item for a user, policy processing for that feature stops. No more security policies of that feature are evaluated for that user and that specific item.

The order of precedence is explained in detail at [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies), but is briefly summarized here:

1. Preset security policies:
   1. The Strict preset security policy.
   2. The Standard preset security policy.
2. Custom policies of a specific feature (for example, anti-malware policies). Each custom policy of a specific feature has a priority value that determines the order that the policy are applied in:
   1. A custom policy of that feature with the priority value 0.
   2. A custom policy of that feature with the priority value 1.
   3. And so on.
3. The default policy of a specific feature (for example, anti-malware) or Built-in protection in Defender for Office 365 (Safe Links and Safe Attachments).

Refer to the previous table to see how a specific security policy is represented in the precedence order. For example, anti-malware policies are present at each level. Outbound spam policies are available at the custom policy and default policy levels. The connection filter policy is available only at the default policy level.

To avoid confusion and unintended application of policies, use the following guidelines:

- Use unambiguous groups or lists of recipients at each level. For example, use different groups or lists of recipients for the Standard and Strict preset security policies.
- Configure exceptions at each level as required. For example, configure recipients who need custom policies as exceptions to the Standard and Strict preset security policy.
- Any remaining recipients that aren't identified at the higher levels get the default policies or Built-in protection in Defender for Office 365 (Safe Links and Safe Attachments).

Armed with this information, you can now decided the best way to implement security policies in the organization.

### Determine your security policy strategy

Now that you know about the different types of security policies and how they're applied, you can decide how you want to use EOP and Defender for Office 365 to protect the users in your organization. Your decision inevitably falls somewhere within the following spectrum:

- Use the Standard preset security policy only.
- Use the Standard and Strict preset security policies.
- Use preset security polices and custom policies.
- Use custom policies only.

Remember, default policies (and Built-in protection in Defender for Office 365) automatically protect all recipients in the organization (anyone who isn't defined in the Standard or Strict preset security policy or in custom policies). So even if you do nothing, all recipients in the organization get the default protections as described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

It's also important to realize that you aren't locked into your initial decision forever. The information in the [recommended settings tables](recommended-settings-for-eop-and-office365.md) and the [comparison table table between Standard and Strict](preset-security-policies.md#policy-settings-in-preset-security-policies) should allow you to make an informed decision. But if needs, results, or circumstances change, it's not difficult to adopt a different strategy later.

**Without a compelling business need that indicates otherwise, we recommend starting with the Standard preset security policy for all users in your organization**. Preset security policies are configured with settings based years of observations in the Microsoft 365 datacenters, and should be the right choice for the majority of organizations. And, the policies are automatically updated to match the threats of the security landscape.

Use a recipient filter that's easy to include all users in the organization (for example, a domain).

If you want to include some users in the Strict preset security policy and the remaining users in the Standard preset security policy, remember to account for the [order of precedence](#order-of-precedence-for-security-policies) as described earlier in this article with the following methods:

- Use unambiguous groups or lists of recipients in each preset security policy.

  or

- Configure recipients who should get the settings of the Standard preset security policy as exceptions in the Strict preset security policy.

Keep in mind that the following security feature configurations are unaffected by preset security policies (you can use preset security policies and also independently configure these security settings):

- [Outbound spam policies (custom and default)](outbound-spam-policies-configure.md)
- [The default connection filter policy (IP Allow List and IP Block List)](connection-filter-policies-configure.md)
- [Globally turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md)
- [Globally turn on and configure Safe Documents](safe-documents-in-e5-plus-security-about.md) (available and meaningful only with licenses that aren't included in Defender for Office 365 (for example, Microsoft 365 A5 or Microsoft 365 E5 Security))

To turn on and configure preset security policies, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

The decision to use custom policies instead of preset security policies ultimately comes down to the following business requirements:

- Users require security settings that are _different_ from the locked down settings in preset security policies (junk vs. quarantine or vice-versa, no safety tips, notify custom recipients, etc.).
- Users require settings that _aren't configured_ in preset security policies (for example, blocking email from specific countries or in specific languages in anti-spam policies).
- Users need a _quarantine experience_ that's different from the locked down settings in preset security policies. [Quarantine policies](quarantine-policies.md#appendix) define what users can do to their quarantined messages based on why the message was quarantined, and whether recipients are notified about their quarantined messages. The default end-user quarantine experience is summarized in the table [here](quarantine-end-user.md) and the quarantine policies that are used in the Standard and Strict preset security policies are described in the tables [here](recommended-settings-for-eop-and-office365.md).

Use the information in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md) to compare the available settings in custom policies or default policies versus what's configured in the Standard and Strict preset security policies.

Design guidelines for multiple custom policies for a specific feature (for example, anti-malware policies) include:

- Users in custom policies can't be included in the Standard or Strict preset security policies due to the [order of precedence](#order-of-precedence-for-security-policies).
- Assign fewer users to higher priority policies and more users to lower priority policies.
- Configure higher priority policies to have stricter or more specialized settings than lower priority policies (including the default policies).

If you decide to use custom policies, you can use the [Configuration analyzer](configuration-analyzer-for-security-policies.md) to periodically compare the settings in your policies to the recommended settings in the Standard and Strict preset security policies.

## Step 3: Assign permissions

You're probably already using the initial account that you used to enroll in Microsoft 365 to do all the work in this deployment guide. That account is an admin everywhere in Microsoft 365 (specifically, it's a member of the [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator) role in Azure Active Directory (Azure AD)), and allows you to do pretty much anything. The required permissions were described earlier in this article at [Roles and permissions](#roles-and-permissions).

But, the intent of this step is to configure other admins to help you manage the features of EOP and Defender for Office 365 in the future. What you don't want is a lot of people with Global Administrator power if they don't need it (for example, do they really need to delete/create accounts or make other users Global Administrators?). The concept of _least privilege_ (assigning only the required permissions to users and nothing more) is a good practice to follow.

When it comes to assigning permissions for tasks in EOP and Defender for Office 365, the following options are available:

- [Azure AD permissions](../../admin/add-users/about-admin-roles.md): These permissions apply to all workloads in Microsoft 365 (Exchange Online, SharePoint Online, Microsoft Teams, etc.).
- [Exchange Online permissions](/exchange/permissions-exo/permissions-exo): Most tasks in EOP and Defender for Office 365 are available using Exchange Online permissions. Assigning permissions only in Exchange Online prevents administrative access in other Microsoft 365 workloads.
- [Email & collaboration permissions in the Microsoft 365 Defender portal](scc-permissions.md): Administration of some security features in EOP and Defender for Office 365 is available with Email & collaboration permissions. For example:
  - [Configuration analyzer](configuration-analyzer-for-security-policies.md)
  - [Admin quarantine management](quarantine-admin-manage-messages-files.md) and [quarantine policies](quarantine-policies.md)
  - [Admin submissions and review of user reported messages](submissions-admin-review-user-reported-messages.md)
  - [User tags](user-tags-about.md)

**For simplicity, we recommend using the [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator) role in Azure AD for others who need to configure settings in EOP and Defender for Office 365.**

For instructions, see [View and assign administrator roles in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-manage-roles-portal) and [Manage access to Microsoft 365 Defender with Azure Active Directory global roles](/microsoft-365/security/defender/m365d-permissions).


## Step 4: User tags

In Defender for Office 365, priority accounts allows you to tag up to 250 high value users for ease of identification in reports and investigations. These priority account also receive additional heuristics that don't benefit regular employees. For more information, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md) and [Configure and review priority account protection in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).

In Defender for Office 365 Plan2, you also have access to create and apply custom _user tags_ to easily identify specific groups of users in reports and investigations. For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).

**Identify appropriate users to tag as priority accounts, and decide if you need to create and apply custom user tabs.**

## Step 5: Review and configure user reported message settings

The ability of users to report good messages marked as bad (false positives) or bad messages allowed (false negatives) is important for you to monitor and adjust protection settings in EOP and Defender for Office 365.

The important parts of user message reporting are:

- **How do users report messages?**: Make sure clients are using one of the following methods to ensure reported messages appear on the **User-reported** tab of the **Submissions** page in the Defender portal at <https://security.microsoft.com/reportsubmission?viewid=user>:

- The built-in **Report** button in Outlook on the web (formerly known as Outlook Web App or OWA).
- The Microsoft [Report Message and Report Phishing add-ins](submissions-users-report-message-add-in-configure.md) for Outlook and Outlook on the web.
- Third-party reporting tools that use the [supported message submission format](submissions-user-reported-messages-custom-mailbox.md#message-submission-format-for-third-party-reporting-tools).

- **Where do user reported messages go?**: You have the following options:
  - To a designated reporting mailbox.
  - To a designated reporting mailbox and to Microsoft (this is the default value).
  - To Microsoft only.

  The default mailbox that's used to collect user reported messages is the Global Administrator (the initial account in the organization). If you want user reported messages to go to a reporting mailbox in your organization, you should [create](/exchange/recipients-in-exchange-online/create-user-mailboxes) and [configure](submissions-user-reported-messages-custom-mailbox.md#configuration-requirements-for-the-reporting-mailbox) an exclusive mailbox to use.

  It's up to you whether you want user reported messages to also go to Microsoft for analysis (exclusively or along with delivery to your designated reporting mailbox). Reporting these messages to Microsoft allows our filters to learn and improve.

  If you want user reported messages to go only to your designated reporting mailbox, you should [manually submit user reported messages to Microsoft for analysis](submissions-admin.md#submit-user-reported-messages-to-microsoft-for-analysis) from the **User-reported** tab of the **Submissions** page in the Defender portal at <https://security.microsoft.com/reportsubmission?viewid=user>.

For complete information about user reported message settings, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).
