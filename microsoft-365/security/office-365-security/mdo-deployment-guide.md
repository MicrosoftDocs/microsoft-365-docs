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
ms.date: 10/16/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Get started with Microsoft Defender for Office 365

In new Microsoft 365 organizations with Microsoft Defender for Office 365 (included or as an add-on subscription), this article describes the configuration steps that you need to do in [Exchange Online Protection (EOP)](eop-about.md) and [Defender for Office 365](mdo-about.md) in the earliest days of your organization.

Although your Microsoft 365 organization includes a default level of protection from the moment you create it (or add Defender for Office 365 to it), the steps in this article give you an actionable plan to unleash the full protection capabilities of EOP and Defender for Office 365. After you complete the steps, you can also use this article to show management that you're maximizing your investment in Microsoft 365.

The steps to configure EOP and Defender for Office 365 are described in the following diagram:

:::image type="content" source="../../media/mdo-deployment-guide.png" alt-text="A conceptual diagram showing the steps to configure Defender for Office 365." lightbox="../../media/mdo-deployment-guide.png":::

## Requirements

Email threat protection features are included in _all_ Microsoft 365 subscriptions with cloud mailboxes via EOP. Defender for Office 365 includes additional protection features. For detailed comparisons about the features in EOP, Defender for Office 365 for Plan 1, and Defender for Office 365 Plan 2, see [The Microsoft 365 security ladder from EOP to Defender for Office 365](mdo-security-comparison.md#the-microsoft-365-security-ladder-from-eop-to-defender-for-office-365).

### Roles and permissions

To configure EOP and Defender for Office 365 features, you need permissions. The following table lists the permissions that you need to do the steps in this article (one is enough; you don't need all of them).

|Role or role group|Learn more|
|---|---|
|Global Administrator in Azure AD|[About Microsoft 365 admin roles](/microsoft-365/admin/add-users/about-admin-roles)|
|Organization Management in Email & collaboration role groups|[Role groups in Microsoft Defender for Office 365](scc-permissions.md#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance)|
|Security Administrator in Azure AD|[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#security-administrator)
|Security Administrator in Email & collaboration role groups|[Role groups in Microsoft Defender for Office 365](scc-permissions.md#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance)|
|Exchange Online Organization Management|[Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)|

## Step 1: Configure email authentication for your Microsoft 365 domains

**Summary**: Configure [SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), and [DMARC](email-authentication-dmarc-configure.md) records (in that order) for all custom Microsoft 365 domains (including parked domains and all subdomains). If necessary, configure any [trusted ARC sealers](email-authentication-arc-configure.md).

**Details**:

Email authentication (also known as _email validation_) is a group of standards to verify that email messages are legitimate, unaltered, and come from expected sources for the sender's email domain. For more information, see [Email authentication in EOP](email-authentication-about.md).

We'll proceed with the assumption that you're using one or more [custom domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) (for example @contoso.com) in Microsoft 365 for email, so you need to create specific email authentication DNS records for each custom domain that you're using for email.

Create the following email authentication DNS records at your DNS registrar or DNS hosting service for each custom domain that you use for email in Microsoft 365:

- **Sender Policy Framework (SPF)**: The SPF TXT record identifies valid sources for email from senders in the domain. For instructions, see [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md).

- **DomainKeys Identified Mail (DKIM)**: DKIM encrypts a signature within the message header that survives message forwarding. For instructions, see [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md).

- **Domain-based Message Authentication, Reporting, and Conformance (DMARC)**: DMARC helps destination email servers decide what to do with messages from the custom domain that fail SPF and DKIM checks. Be sure to include `p=reject` or `p=quarantine` policies in the DMARC records. for instructions, see [Set up DMARC for outbound mail from Microsoft 365](email-authentication-dmarc-configure.md#set-up-dmarc-for-outbound-mail-from-microsoft-365).

- **Authenticated Received Chain (ARC)**: If you use third-party services that modify message in transit, you can configure the services as _trusted ARC sealers_ so the modified messages can still pass email authentication checks (if the service supports it). For instructions, see [Configure trusted ARC sealers](email-authentication-arc-configure.md).

If you're using the @\*.onmicrosoft.com domain for email (also known as the Microsoft Online Email Routing Address or MOERA domain), there's not nearly as much for you to do:

- **SPF**: An SPF record is already configured for the \<domain\>.onmicrosoft.com domain.
- **DKIM**: A DKIM record is already configured for the \<domain\>.onmicrosoft.com domain.
- **DMARC**: You need to manually set up the DMARC record for the \<domain\>.onmicrosoft.com domain in the Microsoft 365 admin center at <https://admin.microsoft.com/Adminportal/Home#/Domains> as described in [Activate DMARC for a MOERA domain](step-by-step-guides/how-to-enable-dmarc-reporting-for-microsoft-online-email-routing-address-moera-and-parked-domains.md#activate-dmarc-for-moera-domain).

## Step 2: Configure protection policies

**Summary**: Turn on and use the Standard and/or Strict [preset security policies](preset-security-policies.md) for all recipients. Or, if [business needs dictate](#determine-your-protection-policy-strategy), create and use custom protection policies instead, but check them periodically using the [configuration analyzer](configuration-analyzer-for-security-policies.md).

**Details**:

As you can probably imagine, a lot of protection policies are available in EOP and Defender for Office 365. There are three basic types of protection policies:

- **Default policies**: These policies exist from the moment the organization is created. They apply to all recipients in the organization, you can't turn the policies off, and you can't modify who the policies apply to. But you can modify the security settings in the policies just like custom policies. The settings in the default policies are described in the tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).
- **Preset security policies**: Preset security are actually _profiles_ that contain _most_ of the available protection policies in EOP and Defender for Office 365 with settings that are tailored to specific levels of protection. The preset security policies are:
  - The Strict preset security policy.
  - The Standard preset security policy.
  - Built-in protection.

  The Standard and Strict preset security policies are turned off by default until you turn them on. You specify recipient conditions and exceptions (users, group members, domains, or all recipients) for EOP protection features and Defender for Office 365 protection features within the Standard and Strict preset security policies.

  Built-in protection in Defender for Office 365 is on by default to provides basic Safe Attachments and Safe Links protection for all recipients. You can specify recipient exceptions to identify users who don't get the protection.

  In Standard and Strict preset security policies in Defender for Office 365 organizations, you need to configure entries and optional exceptions for user and domain impersonation protection. All other settings are locked into our recommended standard and strict values (many of which are the same). You can see the Standard and Strict values in the tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md), and you can see the differences between Standard and Strict [here](preset-security-policies.md#policy-settings-in-preset-security-policies).

  As new protection capabilities are added to EOP and Defender for Office 365 and as the security landscape changes, the settings in preset security policies are automatically updated to our recommended settings.

- **Custom policies**: For most available protection policies, you can create any number of custom policies. You can apply the policies to users using recipient conditions and exceptions (users, group members, or domains) and you can customize the settings.

The previous information and the protection policies that are involved are summarized in the following table:

|&nbsp;|Default policies|Preset security policies|Custom policies|
|---|:---:|:---:|:---:|
|**EOP protection policies**:||||
|&nbsp;&nbsp;[Anti-malware](anti-malware-policies-configure.md)|✔|✔|✔|
|&nbsp;&nbsp;[Anti-spam](anti-spam-policies-configure.md)|✔|✔|✔|
|&nbsp;&nbsp;[Anti-phishing (spoofing protection)](anti-phishing-policies-about.md#spoof-settings)|✔|✔|✔|
|&nbsp;&nbsp;[Outbound spam](outbound-spam-policies-configure.md)|✔||✔|
|&nbsp;&nbsp;[Connection filtering](connection-filter-policies-configure.md)|✔¹|||
|**Defender for Office 365 policies**:||||
|&nbsp;&nbsp;[Anti-phishing (spoofing protection)](anti-phishing-policies-about.md#spoof-settings) plus: <ul><li>[Impersonation protection](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li><li>[Advanced phishing thresholds](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)</li></ul>|✔²|✔²|✔|
|&nbsp;&nbsp;[Safe Links](safe-links-policies-configure.md)|³|✔|✔|
|&nbsp;&nbsp;[Safe Attachments](safe-attachments-policies-configure.md)|³|✔|✔|
|**General behavior**||||
|&nbsp;&nbsp;Protection on by default?|✔|⁴||
|&nbsp;&nbsp;Configure conditions/exceptions for protection?||✔⁵|✔|
|&nbsp;&nbsp;Customize security settings?|✔|⁶|✔|
|&nbsp;&nbsp;Protection settings automatically updated?||✔||

¹ There are no default entries in the IP Allow List or the IP Block List, so the default connection filter policy effectively does nothing unless you customize the settings.

² There are no entries or optional exceptions for user impersonation or domain impersonation protection in Defender for Office 365 until you configure them.

³ Although there are no default Safe Attachments or Safe Links policies in Defender for Office 365, Built-in protection provides basic Safe Attachments and Safe Links protection that's always on.

⁴ Built-in protection (Safe Attachments and Safe Links protection in Defender for Office 365) is the only preset security policy that's on by default.

⁵ For the Standard and Strict preset security policies, you can configure separate recipient conditions and optional exceptions for EOP and Defender for Office 365 protection. For Built-in protection in Defender for Office 365, you can only configure recipient exceptions from protection.

⁶ The only customizable security settings in preset security policies are the entries and optional exceptions for user impersonation protection and domain impersonation protection in the Standard and Strict preset security policies in Defender for Office 365.

### Order of precedence for protection policies

How protection policies are applied is an important consideration as you decide how to configure security settings for users. The important points to remember are:

- Protection features have an unconfigurable [order of processing](how-policies-and-protections-are-combined.md). For example, incoming messages are always evaluated for malware before spam.
- The protection policies of a specific feature (anti-spam, anti-malware, anti-phishing, etc.) are applied in a specific order of precedence (more on the order of precedence later).
- If a user is intentionally or unintentionally included in multiple policies of a specific feature, the first protection policy for that feature where the user is defined (based on the order of precedence) determines what happens to the item (a message, file, URL, etc.).
- Once that first protection policy is applied to a specific item for a user, policy processing for that feature stops. No more protection policies of that feature are evaluated for that user and that specific item.

The order of precedence is explained in detail at [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies), but is briefly summarized here:

1. Protection policies in preset security policies:
   1. The Strict preset security policy.
   2. The Standard preset security policy.
2. Custom protection policies of a specific feature (for example, anti-malware policies). Each custom policy has a priority value that determines the order that the policy is applied in relation to other protection policies of the same feature:
   1. A custom policy with the priority value 0.
   2. A custom policy with the priority value 1.
   3. And so on.
3. The default protection policy of a specific feature (for example, anti-malware) or Built-in protection in Defender for Office 365 (Safe Links and Safe Attachments).

Refer to the previous table to see how a specific protection policy is represented in the precedence order. For example, anti-malware policies are present at each level. Outbound spam policies are available at the custom policy and default policy levels. The connection filter policy is available only at the default policy level.

To avoid confusion and unintended application of policies, use the following guidelines:

- Use unambiguous groups or lists of recipients at each level. For example, use different groups or lists of recipients for the Standard and Strict preset security policies.
- Configure exceptions at each level as required. For example, configure recipients who need custom policies as exceptions to the Standard and Strict preset security policies.
- Any remaining recipients that aren't identified at the higher levels get the default policies or Built-in protection in Defender for Office 365 (Safe Links and Safe Attachments).

Armed with this information, you can decide the best way to implement protection policies in the organization.

### Determine your protection policy strategy

Now that you know about the different types of protection policies and how they're applied, you can decide how you want to use EOP and Defender for Office 365 to protect the users in your organization. Your decision inevitably falls somewhere within the following spectrum:

- Use the Standard preset security policy only.
- Use the Standard and Strict preset security policies.
- Use preset security policies and custom policies.
- Use custom policies only.

Remember, default policies (and Built-in protection in Defender for Office 365) automatically protect all recipients in the organization (anyone who isn't defined in the Standard or Strict preset security policy or in custom policies). So even if you do nothing, all recipients in the organization get the default protections as described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

It's also important to realize that you aren't locked into your initial decision forever. The information in the [recommended settings tables](recommended-settings-for-eop-and-office365.md) and the [comparison table for Standard and Strict](preset-security-policies.md#policy-settings-in-preset-security-policies) should allow you to make an informed decision. But if needs, results, or circumstances change, it's not difficult to switch to a different strategy later.

**Without a compelling business need that indicates otherwise, we recommend starting with the Standard preset security policy for all users in your organization**. Preset security policies are configured with settings based years of observations in the Microsoft 365 datacenters, and should be the right choice for the majority of organizations. And, the policies are automatically updated to match the threats of the security landscape.

In preset security policies, you can select the **All recipients** option to easily apply protection to all recipients in the organization.

If you want to include some users in the Strict preset security policy and the remaining users in the Standard preset security policy, remember to account for the [order of precedence](#order-of-precedence-for-protection-policies) as described earlier in this article with the following methods:

- Use unambiguous groups or lists of recipients in each preset security policy.

  or

- Configure recipients who should get the settings of the Standard preset security policy as exceptions in the Strict preset security policy.

Keep in mind that the following protection feature configurations are unaffected by preset security policies (you can use preset security policies and also independently configure these protection settings):

- [Outbound spam policies (custom and default)](outbound-spam-policies-configure.md)
- [The default connection filter policy (IP Allow List and IP Block List)](connection-filter-policies-configure.md)
- [Globally turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md)
- [Globally turn on and configure Safe Documents](safe-documents-in-e5-plus-security-about.md) (available and meaningful only with licenses that aren't included in Defender for Office 365 (for example, Microsoft 365 A5 or Microsoft 365 E5 Security))

To turn on and configure preset security policies, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

The decision to use custom policies instead of or in addition to preset security policies ultimately comes down to the following business requirements:

- Users require security settings that are _different_ from the unmodifiable settings in preset security policies (junk vs. quarantine or vice-versa, no safety tips, notify custom recipients, etc.).
- Users require settings that _aren't configured_ in preset security policies (for example, blocking email from specific countries or in specific languages in anti-spam policies).
- Users need a _quarantine experience_ that's different from the unmodifiable settings in preset security policies. [Quarantine policies](quarantine-policies.md#appendix) define what users can do to their quarantined messages based on why the message was quarantined, and whether recipients are notified about their quarantined messages. The default end-user quarantine experience is summarized in the table [here](quarantine-end-user.md) and the quarantine policies that are used in the Standard and Strict preset security policies are described in the tables [here](recommended-settings-for-eop-and-office365.md).

Use the information in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md) to compare the available settings in custom policies or default policies versus what's configured in the Standard and Strict preset security policies.

Design guidelines for multiple custom policies for a specific feature (for example, anti-malware policies) include:

- Users in custom policies can't be included in the Standard or Strict preset security policies due to the [order of precedence](#order-of-precedence-for-protection-policies).
- Assign fewer users to higher priority policies and more users to lower priority policies.
- Configure higher priority policies to have stricter or more specialized settings than lower priority policies (including the default policies).

If you decide to use custom policies, use the [Configuration analyzer](configuration-analyzer-for-security-policies.md) to periodically compare the settings in your policies to the recommended settings in the Standard and Strict preset security policies.

## Step 3: Assign permissions to admins

**Summary**: Assign the [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator) role in Azure Active Directory to other admins, specialists, and help desk personnel so they can do tasks in EOP and Defender for Office 365.

**Details**: 

You're probably already using the initial account that you used to enroll in Microsoft 365 to do all the work in this deployment guide. That account is an admin everywhere in Microsoft 365 (specifically, it's a member of the [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator) role in Azure Active Directory (Azure AD)), and allows you to do pretty much anything. The required permissions were described earlier in this article at [Roles and permissions](#roles-and-permissions).

But, the intent of this step is to configure other admins to help you manage the features of EOP and Defender for Office 365 in the future. What you don't want is a lot of people with Global Administrator power who don't need it. For example, do they really need to delete/create accounts or make other users Global Administrators? The concept of _least privilege_ (assigning only the required permissions to do the job and nothing more) is a good practice to follow.

When it comes to assigning permissions for tasks in EOP and Defender for Office 365, the following options are available:

- [Azure AD permissions](/microsoft-365/admin/add-users/about-admin-roles): These permissions apply to all workloads in Microsoft 365 (Exchange Online, SharePoint Online, Microsoft Teams, etc.).
- [Exchange Online permissions](/exchange/permissions-exo/permissions-exo): Most tasks in EOP and Defender for Office 365 are available using Exchange Online permissions. Assigning permissions only in Exchange Online prevents administrative access in other Microsoft 365 workloads.
- [Email & collaboration permissions in the Microsoft 365 Defender portal](scc-permissions.md): Administration of some security features in EOP and Defender for Office 365 is available with Email & collaboration permissions. For example:
  - [Configuration analyzer](configuration-analyzer-for-security-policies.md)
  - [Admin quarantine management](quarantine-admin-manage-messages-files.md) and [quarantine policies](quarantine-policies.md)
  - [Admin submissions and review of user reported messages](submissions-admin-review-user-reported-messages.md)
  - [User tags](user-tags-about.md)

**For simplicity, we recommend using the [Security Administrator](/azure/active-directory/roles/permissions-reference#security-administrator) role in Azure AD for others who need to configure settings in EOP and Defender for Office 365.**

For instructions, see [View and assign administrator roles in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-manage-roles-portal) and [Manage access to Microsoft 365 Defender with Azure Active Directory global roles](/microsoft-365/security/defender/m365d-permissions).

## Step 4: Priority accounts and user tags

**Summary**: Identify and tag the appropriate users in your organization as [priority accounts](/microsoft-365/admin/setup/priority-accounts) for easier identification in reports and investigations, and to receive [priority account protection](priority-accounts-turn-on-priority-account-protection.md) in Defender for Office 365. Consider creating and applying custom [user tags](user-tags-about.md) in Defender for Office 365 Plan 2.

**Details**:

In Defender for Office 365, priority accounts allows you to tag up to 250 high value users for ease of identification in reports and investigations. These priority account also receive additional heuristics that don't benefit regular employees. For more information, see [Manage and monitor priority accounts](/microsoft-365/admin/setup/priority-accounts) and [Configure and review priority account protection in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md).

In Defender for Office 365 Plan 2, you also have access to create and apply custom _user tags_ to easily identify specific groups of users in reports and investigations. For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).

**Identify appropriate users to tag as priority accounts, and decide if you need to create and apply custom user tags.**

## Step 5: Review and configure user reported message settings

**Summary**: Deploy the [Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md) or a [supported third party tool](submissions-user-reported-messages-custom-mailbox.md#message-submission-format-for-third-party-reporting-tools) so users can report false positives and false negatives in Outlook, and so those reported messages are available to admins on the **User-reported** tab of the **Submissions** page in the Defender portal. Configure the organization so reported messages go to a specified reporting mailbox, to Microsoft, or both.

**Details**:

The ability of users to report good messages marked as bad (false positives) or bad messages allowed (false negatives) is important for you to monitor and adjust protection settings in EOP and Defender for Office 365.

The important parts of user message reporting are:

- **How do users report messages?**: Make sure clients are using one of the following methods so reported messages appear on the **User-reported** tab of the **Submissions** page in the Defender portal at <https://security.microsoft.com/reportsubmission?viewid=user>:

- The built-in **Report** button in Outlook on the web (formerly known as Outlook Web App or OWA).
- The Microsoft [Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md) for Outlook and Outlook on the web.
- Third-party reporting tools that use the [supported message submission format](submissions-user-reported-messages-custom-mailbox.md#message-submission-format-for-third-party-reporting-tools).

- **Where do user reported messages go?**: You have the following options:
  - To a designated reporting mailbox and to Microsoft (this is the default value).
  - To a designated reporting mailbox only.
  - To Microsoft only.

  The default mailbox that's used to collect user reported messages is the Global Administrator's mailbox (the initial account in the organization). If you want user reported messages to go to a reporting mailbox in your organization, you should [create](/exchange/recipients-in-exchange-online/create-user-mailboxes) and [configure](submissions-user-reported-messages-custom-mailbox.md#configuration-requirements-for-the-reporting-mailbox) an exclusive mailbox to use.

  It's up to you whether you want user reported messages to also go to Microsoft for analysis (exclusively or along with delivery to your designated reporting mailbox).

  If you want user reported messages to go only to your designated reporting mailbox, admins should [manually submit user reported messages to Microsoft for analysis](submissions-admin.md#submit-user-reported-messages-to-microsoft-for-analysis) from the **User-reported** tab of the **Submissions** page in the Defender portal at <https://security.microsoft.com/reportsubmission?viewid=user>.

  Submitting user reported messages to Microsoft is important to allow our filters to learn and improve.

For complete information about user reported message settings, see [User reported settings](submissions-user-reported-messages-custom-mailbox.md).

## Step 6: Block and allow entries

**Summary**: Familiarize yourself with the procedures to block and allow messages, files and URLs in Defender for Office 365.

**Details**:

You need to become familiar with how to block and (temporarily) allow message senders, files, and URLs at the following locations in the Defender portal:

- The [Tenant Allow/Block List](tenant-allow-block-list-about.md) at <https://security.microsoft.com/tenantAllowBlockList>.
- The **Submissions** page at <https://security.microsoft.com/reportsubmission>.
- The **Spoof intelligence insight** page at <https://security.microsoft.com/spoofintelligence>.

In general, it's easier to create blocks than allows, because unnecessary allow entries expose your organization to malicious email that would have been filtered by the system.

- **Block**:

  - You can create block entries for **domains and email addresses**, **files**, and **URLs** on the corresponding tabs in the Tenant Allow/Block List and by submitting the items to Microsoft for analysis from the **Submissions** page. When you submit an item to Microsoft, corresponding block entries are also created in the Tenant Allow/Block List.

    > [!TIP]
    > Users in the organization also can't _send_ email to domains or email addresses that are specified in block entries in the Tenant Allow/Block List.

  - Messages blocked by [spoof intelligence](anti-spoofing-spoof-intelligence.md) are shown on the **Spoof intelligence** page. If you change an allow entry to a block entry, the sender becomes a manual block entry on the **Spoofed senders** tab in the Tenant Allow/Block List. You can also proactively create block entries for not yet encountered spoofed senders on the **Spoofed senders** tab.

- **Allow**:

  - You can't create allow entries for **domains and email addresses**, **files**, and **URLs** directly on the corresponding tabs in the Tenant Allow/Block List. Instead, you use the **Submissions** page to report the item to Microsoft. As you report the item to Microsoft, you can select to allow the item, which creates a corresponding temporary allow entry in the Tenant Allow/Block list.

  - Messages allowed by [spoof intelligence](anti-spoofing-spoof-intelligence.md) are shown on the **Spoof intelligence** page. If you change a block entry to an allow entry, the sender becomes a manual allow entry on the **Spoofed senders** tab in the Tenant Allow/Block List. You can also proactively create allow entries for not yet encountered spoofed senders on the **Spoofed senders** tab.

For complete details, see the following articles:

- [Allow or block email using the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md)
- [Allow or block files using the Tenant Allow/Block List](tenant-allow-block-list-files-configure.md)
- [Allow or block URLs using the Tenant Allow/Block List](tenant-allow-block-list-urls-configure.md)
- [Use the Submissions page to submit suspected spam, phish, URLs, legitimate email getting blocked, and email attachments to Microsoft](submissions-admin.md)
- [Override the spoof intelligence verdict](anti-spoofing-spoof-intelligence.md#override-the-spoof-intelligence-verdict)

## Step 7: Launch phishing simulations using Attack simulation training

In Defender for Office 365 Plan 2, Attack simulation training allows you to send simulated phishing messages to users and assign training based on how they respond. The following options are available:

- [Individual simulations](attack-simulation-training-simulations.md) using built-in or custom payloads.
- [Simulation automations](attack-simulation-training-simulation-automations.md) taken from real-world phishing attacks using multiple payloads and automated scheduling.
- [Training-only campaigns](attack-simulation-training-training-campaigns.md) where you don't need to launch a campaign and wait for users to click links or download attachments in the simulated phishing messages before trainings are assigned.

For more information, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

## Step 8: Investigate and respond

Now that your initial set up is complete, use the information in the [Microsoft Defender for Office 365 Security Operations Guide](mdo-sec-ops-guide.md) to monitor and investigate threats in the organization.
