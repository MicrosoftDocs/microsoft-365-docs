---
title: "Migrate to Microsoft Defender for Office 365 Phase 3: Onboard"
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
  - m365-security
  - m365solution-mdo-migration
  - highpri
  - tier1
ms.custom: migrationguides
description: "Complete the steps for migrating from a third-party protection service or device to Microsoft Defender for Office 365 protection."
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# Migrate to Microsoft Defender for Office 365 - Phase 3: Onboard

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

<br>

|[:::image type="content" source="../../media/phase-diagrams/prepare.png" alt-text="Phase 1: Prepare." lightbox="../../media/phase-diagrams/prepare.png":::](migrate-to-defender-for-office-365-prepare.md) <br> [Phase 1: Prepare](migrate-to-defender-for-office-365-prepare.md)|[:::image type="content" source="../../media/phase-diagrams/setup.png" alt-text="Phase 2: Set up." lightbox="../../media/phase-diagrams/setup.png":::](migrate-to-defender-for-office-365-setup.md) <br> [Phase 2: Set up](migrate-to-defender-for-office-365-setup.md)|:::image type="content" source="../../media/phase-diagrams/onboard.png" alt-text="Phase 3: Onboard." lightbox="../../media/phase-diagrams/onboard.png"::: <br> Phase 3: Onboard|
|---|---|---|
|||*You are here!*|

Welcome to **Phase 3: Onboard** of your **[migration to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md#the-migration-process)**! This migration phase includes the following steps:

1. [Begin onboarding Security Teams](#step-1-begin-onboarding-security-teams)
2. [(Optional) Exempt pilot users from filtering by your existing protection service](#step-2-optional-exempt-pilot-users-from-filtering-by-your-existing-protection-service)
3. [Tune spoof intelligence](#step-3-tune-spoof-intelligence)
4. [Tune impersonation protection and mailbox intelligence](#step-4-tune-impersonation-protection-and-mailbox-intelligence)
5. [Use data from user reported messages to measure and adjust](#step-5-use-data-from-user-reported-messages-to-measure-and-adjust)
6. [(Optional) Add more users to your pilot and iterate](#step-6-optional-add-more-users-to-your-pilot-and-iterate)
7. [Extend Microsoft 365 protection to all users and turn off the SCL=-1 mail flow rule](#step-7-extend-microsoft-365-protection-to-all-users-and-turn-off-the-scl-1-mail-flow-rule)
8. [Switch your MX records](#step-8-switch-your-mx-records)

## Step 1: Begin onboarding Security Teams

If your organization has a security response team, now is the time to begin integrating Microsoft Defender for Office 365 into your response processes, including ticketing systems. This process is an entire topic unto itself, but it's sometimes overlooked. Getting the security response team involved early ensures that your organization is ready to deal with threats when you switch your MX records. Incident response needs to be well equipped to handle the following tasks:

- Learn the new tools and integrate them into existing flows. For example:
  - Admin management of quarantined messages is important. For instructions, see [Manage quarantined messages and files as an admin](quarantine-admin-manage-messages-files.md).
  - Message trace allows you to see what happened to messages as they enter or leave Microsoft 365. For more information, see [Message trace in the modern Exchange admin center in Exchange Online](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac).
- Identify risks that may have been let into the organization.
- Tune and customize [alerts](../../compliance/alert-policies.md) for organizational processes.
- Manage the incident queue and remediate potential risks.

If your organization has purchased Microsoft Defender for Office 365 Plan 2, they should begin familiarizing themselves with and using features such as Threat Explorer, Advanced Hunting, and Incidents. For relevant trainings, see <https://aka.ms/mdoninja>.

If your security response team collects and analyzes unfiltered messages, you can configure a SecOps mailbox to receive these unfiltered messages. For instructions, see [Configure SecOps mailboxes in the advanced delivery policy](skip-filtering-phishing-simulations-sec-ops-mailboxes.md#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy).

### SIEM/SOAR

For more information about integrating with your SIEM/SOAR, see the following articles:

- [Overview of Microsoft 365 Defender APIs](/microsoft-365/security/defender/api-overview)
- [Streaming API](/microsoft-365/security/defender/streaming-api)
- [Advanced Hunting API](/microsoft-365/security/defender/api-advanced-hunting)
- [Incidents APIs](/microsoft-365/security/defender/api-incident)

If your organization doesn't have a security response team or existing process flows, you can use this time to familiarize yourself with basic hunting and response features in Defender for Office 365. For more information, see [Threat investigation and response](office-365-ti.md).

### RBAC roles

Permissions in Defender for Office 365 are based on role-based access control (RBAC) and is explained in Permissions in the [Microsoft 365 Defender portal](mdo-portal-permissions.md). Here are the important points to keep in mind:

- Azure AD roles give permissions to **all** workloads in Microsoft 365. For example, if you add a user to the Security Administrator in the Azure portal, they have Security Administrator permissions everywhere.
- Email & collaboration roles in the Microsoft 365 Defender portal give permissions to the Microsoft 365 Defender Portal and the Microsoft Purview compliance portal. For example, if you add a user to Security Administrator in the Microsoft 365 Defender portal, they have Security Administrator access **only** in the Microsoft 365 Defender Portal and the Microsoft Purview compliance portal.
- Many features in the Microsoft 365 Defender portal are based on Exchange Online PowerShell cmdlets and therefore require role group membership in the corresponding roles (technically, role groups) in Exchange Online (in particular, for access to the corresponding Exchange Online PowerShell cmdlets).
- There are Email & collaboration roles in the Microsoft 365 Defender portal that have no equivalent to Azure AD roles, and are important for security operations (for example the Preview role and the Search and Purge role).

Typically, only a subset of security personnel needs additional rights to download messages directly from user mailboxes. This need requires an additional permission that Security Reader doesn't have by default.

## Step 2: (Optional) Exempt pilot users from filtering by your existing protection service

Although this step isn't required, you should consider configuring your pilot users to bypass filtering by your existing protection service. This action allows Defender for Office 365 to handle **all** filtering and protection duties for the pilot users. If you don't exempt your pilot users from your existing protection service, Defender for Office 365 effectively operates only on misses from the other service (filtering messages that have already been filtered).

> [!NOTE]
> This step is explicitly required if your current protection service provides link wrapping, but you want to pilot Safe Links functionality. Double wrapping of links is not supported.

## Step 3: Tune spoof intelligence

Check the [Spoof intelligence insight](anti-spoofing-spoof-intelligence.md) to see what's being allowed or blocked as spoofing, and to determine if you need to override the system verdict for spoofing. Some sources of your business-critical email might have incorrectly configured email authentication records in DNS (SPF, DKIM, and DMARC) and you might be using overrides in your existing protection service to mask their domain issues.

Spoof intelligence can rescue email from domains without proper email authentication records in DNS, but the feature sometimes needs assistance in distinguishing good spoofing from bad spoofing. Focus on the following types of message sources:

- Message sources that are outside of the IP address ranges defined in [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).
- Message sources that have the highest number of messages.
- Message sources that have the highest impact on your organization.

Spoof intelligence will eventually tune itself after you configure user reported settings, so there's no need for perfection.

## Step 4: Tune impersonation protection and mailbox intelligence

After you've had enough time to observe the results of impersonation protection in **Don't apply any action** mode, you can individually turn on each impersonation protection action in the anti-phishing policies:

- User impersonation protection: **Quarantine the message** for both Standard and Strict.
- Domain impersonation protection: **Quarantine the message** for both Standard and Strict.
- Mailbox intelligence protection: **Move the message to the recipients' Junk Email folders** for Standard; **Quarantine the message** for Strict.

The longer you monitor the impersonation protection results without acting on the messages, the more data you have to identify allows or blocks that might be required. Consider using a delay between turning on each protection that's significant enough to allow for observation and adjustment.

> [!NOTE]
> Frequent and continuous monitoring and tuning of these protections is important. If you suspect a false positive, investigate the cause and use overrides only as necessary and only for the detection feature that requires it.

### Tune mailbox intelligence

Although mailbox intelligence has been configured to take no action on messages that were [determined to be impersonation attempts](anti-phishing-mdo-impersonation-insight.md), it has been on and learning the email sending and receiving patterns of the pilot users. If an external user is in contact with one your pilot users, messages from that external user aren't identified as impersonation attempts by mailbox intelligence (thus reducing false positives).

When you're ready, do the following steps to allow mailbox intelligence to act on messages that are detected as impersonation attempts:

- In the anti-phishing policy with the Standard protection settings, change the value of **If mailbox intelligence detects an impersonated user** to **Move message to recipients' Junk Email folders**.

- In the anti-phishing policy with the Strict protection settings, change the value of **If mailbox intelligence detects and impersonated user** from to **Quarantine the message**.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](anti-phishing-policies-mdo-configure.md).

After you've observed the results and made any adjustments, proceed to the next section to quarantine messages detected by user impersonation.

### Tune user impersonation protection

In both of your anti-phishing policies based on Standard and Strict settings, change the value of **If a message is detected as user impersonation** to **Quarantine the message**.

Check the [impersonation insight](anti-phishing-mdo-impersonation-insight.md) to see what's being blocked as user impersonation attempts.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](anti-phishing-policies-mdo-configure.md).

After you've observed the results and made any adjustments, proceed to the next section to quarantine messages detected by domain impersonation.

### Tune domain impersonation protection

In both of your anti-phishing policies based on Standard and Strict settings, change the value of **If a message is detected as domain impersonation** to **Quarantine the message**.

Check the [impersonation insight](anti-phishing-mdo-impersonation-insight.md) to see what's being blocked as domain impersonation attempts.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](anti-phishing-policies-mdo-configure.md).

Observe the results and make any adjustments as necessary.

## Step 5: Use data from user reported messages to measure and adjust

As your pilot users report false positives and false negatives, the messages appear on the **User reported** tab of the [Submissions page in the Microsoft 365 Defender portal](submissions-admin.md). You can report the misidentified messages to Microsoft for analysis and use the information to adjust the settings and exceptions in your pilot policies as necessary.

Use the following features to monitor and iterate on the protection settings in Defender for Office 365:

- [Quarantine](quarantine-admin-manage-messages-files.md)
- [Threat Explorer](email-security-in-microsoft-defender.md)
- [Email security reports](reports-email-security.md)
- [Defender for Office 365 reports](reports-defender-for-office-365.md)
- [Mail flow insights](/exchange/monitoring/mail-flow-insights/mail-flow-insights)
- [Mail flow reports](/exchange/monitoring/mail-flow-reports/mail-flow-reports)

If your organization uses a third-party service for user reported messages, you can integrate that data into your feedback loop.

## Step 6: (Optional) Add more users to your pilot and iterate

As you find and fix issues, you can add more users to the pilot groups (and correspondingly exempt those new pilot users from scanning by your existing protection service as appropriate). The more testing that you do now, the fewer user issues that you need to deal with later. This "waterfall" approach allows tuning against larger portions of the organization and gives your security teams time to adjust to the new tools and processes.

- Microsoft 365 generates alerts when high confidence phishing messages are allowed by organizational policies. To identify these messages, you have the following options:
  - Overrides in the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
  - Filter in Threat Explorer to identify the messages.
  - Filter in Advanced Hunting to identify the messages.

  Report any false positives to Microsoft as early as possible through [admin submissions](submissions-admin.md), and use the [Tenant Allow/Block List](tenant-allow-block-list-about.md) feature to configure safe overrides for those false positives.

- It's also a good idea to examine unnecessary overrides. In other words, look at the verdicts that Microsoft 365 would have provided on the messages. If Microsoft 365  rendered the correct verdict, then the need for override is greatly diminished or eliminated.

## Step 7: Extend Microsoft 365 protection to all users and turn off the SCL=-1 mail flow rule

Do the steps in this section when you're ready to switch your MX records to point to Microsoft 365.

1. Extend the pilot policies to the entire organization. Fundamentally, there are different ways to extend the policies:
   - Use [preset security](preset-security-policies.md) policies and divide your users between the Standard protection profile and the Strict protection profile (make sure everyone is covered). Preset security policies are applied before any custom policies that you've created or any default policies. You can turn off your individual pilot policies without deleting them.

     The drawback to preset security policies is you can't change many of the important settings after you've created them.

   - Change the scope of the policies that you created and adjusted during the pilot to include all users (for example, all recipients in all domains). Remember, if multiple policies of the same type (for example, anti-phishing policies) apply to the same user (individually, by group membership, or email domain), only the settings of the policy with the highest priority (lowest priority number) are applied, and processing stops for that type of policy.

2. Turn off the SCL=-1 mail flow rule (you can turn it off without deleting it).

3. Verify that the previous changes have taken effect, and that Defender for Office 365 is now properly enabled for all users. At this point, all of the protection features of Defender for Office 365 are now allowed to act on mail for all recipients, but that mail has already been scanned by your existing protection service.

You can pause at this stage for more large-scale data recording and tuning.

## Step 8: Switch your MX records

> [!NOTE]
>
> - When you switch the MX record for your domain, it can take up to 48 hours for the changes to propagate throughout the internet.
> - We recommend lowering the TTL value of your DNS records to enable faster response and possible rollback (if required). You can revert to the original TTL value after the switchover is complete and verified.
> - You should consider starting with changing domains that are used less frequently. You can pause and monitor before moving to larger domains. However, even if you do this, you still should make sure that all users and domains are covered by policies, because secondary SMTP domains are resolved to primary domains prior to the policy application.
> - Multiple MX records for a single domain will technically work, allowing you to have split routing, provided that you have followed all the guidance in this article. Specifically, you should make sure that policies are applied to all users, that the SCL=-1 mail flow rule is applied only to mail that passes through your existing protection service as described in [Setup Step 3: Maintain or create the SCL=-1 mail flow rule](migrate-to-defender-for-office-365-setup.md#step-3-maintain-or-create-the-scl-1-mail-flow-rule). However, this configuration introduces behavior that makes troubleshooting much more difficult, and therefore we do not typically recommend it, especially for extended periods of time.
> - Before you switch your MX records, verify that the following settings are not enabled on the inbound connector from the protection service to Microsoft 365. Typically, the connector will have one or more of the following settings configured:
>   - **and require that the subject name on the certificate that the partner uses to authenticate with Office 365 matches this domain name** (*RestrictDomainsToCertificate*)
>   - **Reject email messages if they aren't sent from within this IP address range** (*RestrictDomainsToIPAddresses*)
>   If the connector type is **Partner** and either of these settings are turned on, all mail delivery to your domains will fail after you switch your MX records. You need to disable these settings before you continue. If the connector is an on-premises connector that's used for hybrid, you don't need to modify the on-premises connector. But, you can still check for the presence of a **Partner** connector.
> - If your current mail gateway is also providing recipient validation, you may want to check that the domain is configured as [Authoritative](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in Microsoft 365. This can prevent unnecessary bounce messages.

When you're ready, switch the MX record for your domains. You can migrate all of your domains at once. Or, you can migrate less frequently used domains first, and then migrate the rest later.

Feel free to pause and evaluate here at any point. But, remember: once you turn off the SCL=-1 mail flow rule, users might have two different experiences for checking false positives. The sooner you can provide a single, consistent experience, the happier your users and help desk teams will be when they have to troubleshoot a missing message.

## Next steps

Congratulations! You have completed your [migration to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md#the-migration-process)! Because you followed the steps in this migration guide, the first few days where mail is delivered directly into Microsoft 365 should be much smoother.

Now you begin the normal operation and maintenance of Defender for Office 365. Monitor and watch for issues that are similar to what you experienced during the pilot, but on a larger scale. The [spoof intelligence insight](anti-spoofing-spoof-intelligence.md) and the [impersonation insight](anti-phishing-mdo-impersonation-insight.md) are most helpful, but consider making the following activities a regular occurrence:

- Review user reported messages, especially [user-reported phishing messages](air-about-office.md)
- Review overrides in the [Threat protection status report](reports-email-security.md#threat-protection-status-report).
- Use [Advanced Hunting](/microsoft-365/security/defender/advanced-hunting-example) queries to look for tuning opportunities and risky messages.
