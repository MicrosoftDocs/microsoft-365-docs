---
title: What's new in Microsoft Purview risk and compliance solutions
description: Whether it be adding new solutions to the compliance center, updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft Purview helps you stay on top of the ever-changing compliance landscape. Find out what we've been up to this month.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- SPO160
- MOE150
- MET150
ms.assetid: e3c6df61-8513-499d-ad8e-8a91770bff63
ms.collection:
- purview-compliance
ms.custom: seo-marvel-mar2020
---

# What's new in Microsoft Purview risk and compliance solutions

Whether it be adding new solutions to the [Microsoft Purview compliance portal](microsoft-365-compliance-center.md), updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft 365 helps you stay on top of the ever-changing compliance landscape. Take a look below to see what's new in Microsoft Purview today.

> [!NOTE]
> Some compliance features get rolled out at different speeds to our customers. If you aren't seeing a feature yet, try adding yourself to [targeted release](/office365/admin/manage/release-options-in-office-365).

> [!TIP]
> Interested in what's going on in other admin centers? Check out these articles:
>
> - [What's new in the Microsoft 365 admin center](/office365/admin/whats-new-in-preview)
> - [What's new in the SharePoint admin center](/sharepoint/what-s-new-in-admin-center)
> - [What's new in Microsoft 365 Defender](../security/defender/whats-new.md)
>
> And visit the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap) to learn about Microsoft 365 features that were launched, are rolling out, are in development, have been cancelled, or previously released.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## February 2023

### Data lifecycle management and records management

- **Rolling out in preview**: Auto-labeling retention policies now support [simulation mode](apply-retention-labels-automatically.md#learn-about-simulation-mode), so you can test out your policy configuration and view results before deploying in production.

### Data Loss Prevention

- **Support for administrative units in DLP (preview)** - [Policy Scoping](dlp-policy-reference.md#policy-scoping)
- **Adaptive Protection (preview)** - [Learn about Adaptive Protection in Data Loss Prevention (preview)](dlp-adaptive-protection-learn.md)
- **DLP migration assistant for Symantec GA** - [Learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md)

### Insider risk management

- **In preview**: New [Adaptive Protection guidance](/microsoft-365/compliance/insider-risk-management-adaptive-protection). Adaptive Protection in Microsoft Purview uses machine learning to identify and mitigate the most critical risks with the most effective [data loss prevention (DLP)](/microsoft-365/compliance/dlp-adaptive-protection-learn) protection controls dynamically, saving security teams valuable time while ensuring better data security.

### Permissions

- **In preview**: [Support for Azure Active Directory administrative units](/microsoft-365/compliance/microsoft-365-compliance-center-permissions#administrative-units-preview). Administrative units let you subdivide your organization into smaller units, and then assign specific administrators that can manage only the members of those units.

### Sensitivity labels

- **General availability (GA)**: Protected meetings by [labeling calendar invites and responses, Teams meetings, and chat](sensitivity-labels-meetings.md). Outlook remains in preview for this scenario.
- **In preview**: [Support for Azure Active Directory administrative units](get-started-with-sensitivity-labels.md#support-for-administrative-units).

## January 2023

### Audit

- Updates for [Teams audit log events](/microsoftteams/audit-log-events) for sensitivity labels.
- Updates for exporting permissions in [auditing solutions](/microsoft-365/compliance/audit-solutions-overview).

### Communication compliance

- Updates to [conditional settings](/microsoft-365/compliance/communication-compliance-policies#conditional-settings) and the required formatting for multi-value conditions.
- New section that outlines [limitations](/microsoft-365/compliance/communication-compliance-channels#channel-limits) for supported channels.

### eDiscovery

- Updated with a clarification for searches for [inactive mailboxes](/microsoft-365/compliance/create-and-manage-inactive-mailboxes).
- Updated the [supported decryption](/microsoft-365/compliance/ediscovery-decryption#supported-decryption) types in eDiscovery (Standard) and (Premium).
- Updated the [example PowerShell script](/microsoft-365/compliance/ediscovery-create-a-report-on-holds-in-cases#step-2-run-the-script-to-report-on-holds-associated-with-ediscovery-cases) to report holds on associated eDiscovery cases.
- Clarified the [query and search filter requirements](/microsoft-365/compliance/ediscovery-review-set-search) for a review set.

### Insider risk management

- Updated with [clarifications](/microsoft-365/compliance/insider-risk-management-forensic-evidence) for forensic evidence about timelines in the user activity reports and the *all activities* capturing option.
- Updated *obfuscation* examples for [insider risk management policies](/microsoft-365/compliance/insider-risk-management-policies).
- Restructured documentation and moved [policy template guidance](/microsoft-365/compliance/insider-risk-management-policy-templates) into a new article.

### Sensitivity labels

- **Rolling out in preview**: As a parity feature for the AIP add-in, built-in labeling for Windows supports the configuration of a [default sublabel for a parent label](sensitivity-labels-office-apps.md#specify-a-default-sublabel-for-a-parent-label).
- **Rolling out in preview**: Word, Excel, and PowerPoint in Office for Mac also supports the [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and [label colors](sensitivity-labels-office-apps.md#label-colors).
- The earliest version for the AIP add-in to be [disabled by default in Office apps](sensitivity-labels-aip.md#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps) for the Current Channel and Monthly Enterprise Channel is now version 2302. The minimum version for the Semi-Annual Channel hasn't changed.

## December 2022

### Communication compliance

- New [transparency note](/microsoft-365/compliance/communication-compliance-solution-overview) to convey the purpose and intended uses of machine learning in policy templates that use classifiers for business conduct and regulatory compliance.
- Changed the [time zone from local time zone to Coordinated Universal Time (UTC)](/microsoft-365/compliance/communication-compliance-policies) for policy activity detection, user-reported messages, and filters for reports.
- Updated table for [built-in trainable and global classifiers](/microsoft-365/compliance/communication-compliance-policies) to increase visibility for details specific to pre-trained classifiers. Includes updated word count requirements for messages in English and non-English languages.

### Compliance Manager

- Assessment templates that belong to the same regulation family now count as one template. The [definition of **included templates**](compliance-manager-templates-list.md#included-templates) has been updated to align with [template licensing changes starting December 2022](compliance-manager-faq.yml#what-changed-with-template-licensing-in-december-2022-).
- Improvement actions now provide greater visibility into related controls and assessments. Improvement action details pages have a new [**Related controls** tab](compliance-manager-improvement-actions.md#related-controls), and the **Summary** section has a clickable **Assessments** number that, when selected, lists all the assessments related to that action.

### Data lifecycle management and records management

- Disposition review no longer has a maximum of 1,000,000 items per label pending or reviewed. This limitation is removed from [Limits for retention policies and retention label policies](retention-limits.md).

### Insider risk management

- [Examples of file paths](/microsoft-365/compliance/insider-risk-management-settings) to denote specific and wildcard folders and sub-folders to be excluded.

### Microsoft Priva

- [Tags for reviewing data in a subject rights request](/privacy/priva/subject-rights-requests-data-review#apply-tags) provide greater flexibility. There are now two default tags and 21 custom tags that can be named and defined by an organization. Tags can now be applied to, or removed from, multiple content items at once.
- The maximum file size for [file import during data review](/privacy/priva/subject-rights-requests-data-review#import-additional-files) for a subject rights request has increased to 500 MB.
- Instructions for working with the [action execution log report](/privacy/priva/subject-rights-requests-delete#action-execution-log-report) for a delete request have been updated; including a clarification that its retention period is the same as all other subject rights request reports.

### Sensitivity labels

- **General availability (GA)**: S/MIME support for Windows is now available in the Office Current Channel, providing parity with the AIP add-in. For more information, see [Apply S/MIME protection](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook).
- **Rolling out in preview**: Protected meetings by [labeling calendar invites and responses, Teams meetings, and chat](sensitivity-labels-meetings.md).

## November 2022

### Audit

- [Audit New Search](/microsoft-365/compliance/audit-new-search) - the new export limit is now up to a maximum of 500K (500,000 rows) for a single export.
- [Search the audit log in the compliance portal](/microsoft-365/compliance/audit-log-search) - clarified table for retention policies and labels.

### Communication compliance

- [Messages in alerts](/microsoft-365/compliance/communication-compliance-investigate-remediate) now include a sentiment evaluation to help investigators quickly prioritize potentially riskier messages to address first.
- [Automatically detects if text is in a different language](/microsoft-365/compliance/communication-compliance-investigate-remediate) than the user's current system setting and displays alert message text accordingly. 
- [Threat, Harassment, and Profanity classifiers](/microsoft-365/compliance/communication-compliance-policies) in the English language now inspects and evaluates messages with a word count of three or greater.

### Compliance Manager

- New [role-based access to assessments](compliance-manager-setup.md#role-based-access-to-assessments) allows you to [assign users roles for viewing and managing individual assessments](compliance-manager-assessments.md#grant-user-access-to-individual-assessments).
- [Working with improvement actions](compliance-manager-improvement-actions.md#assign-improvement-action-to-assessor-for-completion) - clarified that users need a **Compliance Manager Assessor** role in order to edit improvement action testing notes, and that roles can now be assigned for individual assessments.

### eDiscovery

- [Limits in eDiscovery (Premium)](/microsoft-365/compliance/limits-ediscovery20) - new section for review set viewer limits, the maximum number of items displayed per page in a review set is now 10,000.
- [Decryption in Microsoft Purview eDiscovery tools](/microsoft-365/compliance/ediscovery-decryption) - clarified how items labeled within SharePoint Online are decrypted with eDiscovery tools.
- [Conduct an eDiscovery investigation of content in Microsoft Teams](/microsoftteams/ediscovery-investigation) - expanded reactions in Microsoft Teams chats are now supported in eDiscovery (Premium).
- [Create an eDiscovery hold](/microsoft-365/compliance/create-ediscovery-holds) - clarified how eDiscovery holds are handled when a user's OneDrive URL changes.
- [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set) - clarified how eDiscovery includes the parent email in the PST files if defined by the "Group" option in the review set.

### Insider risk management

- [Sensitive info types](/microsoft-365/compliance/insider-risk-management-settings) now has a limit of 500 types that you can exclude. The previous limit was 100 sensitive info types.
- Admins can now enable [potential high impact user](/microsoft-365/compliance/insider-risk-management-settings) and [cumulative exfiltration activities](/microsoft-365/compliance/insider-risk-management-configure) score boosters in policy settings.
- New [risky browser indicators](/microsoft-365/compliance/insider-risk-management-settings) available for detecting user browsing activity related to websites that are considered malicious or risky and pose potential insider risk that may lead to a security or compliance incident.

### Microsoft Priva

- **In preview**: Delete requests are now supported by Subject Rights Requests.
    - [Create and manage a delete request (preview)](/privacy/priva/subject-rights-requests-delete) - details the process for setting up a delete type of request, collaborating on a review process to approve the deletion, and initiating a workflow to carry out the deletion.
    - [Set user permissions and assign roles](/privacy/priva/priva-permissions) - lists the new role of **Subject Rights Requests Approver** for delete request approvers.
    - [Review data for a subject rights request](/privacy/priva/subject-rights-requests-data-review) - clarifies that adding the **delete** data review tag doesn't mark the item for deletion in the new delete request type.
    - [Create a request and define search settings](/privacy/priva/subject-rights-requests-create) - adds **Delete (preview)** as a request type.

### On-premises scanner

- **General availability (GA)**: Configuration for the Microsoft Purview Information Protection scanner (formerly named Azure Information Protection unified labeling scanner) in the Microsoft Purview compliance portal. For more information, see [Configure & install the information protection scanner](deploy-scanner-configure-install.md).

### Sensitivity labels

- **General availability (GA)**: Trainable classifiers for [auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange). Trainable classifiers are now available for both auto-labeling for Office apps that use label settings (known as client-side auto-labeling) and auto-labeling policies (known as service-side auto-labeling). As a result, trainable classifiers are removed from the [comparison table](apply-sensitivity-label-automatically.md#compare-auto-labeling-for-office-apps-with-auto-labeling-policies) that lists only the differences between the two auto-labeling methods.

- The automated email that has the subject **Incompatible sensitivity label detected** for when there's a [labeling mismatch for a site](sensitivity-labels-teams-groups-sites.md#auditing-sensitivity-label-activities) now contains a link to an internal troubleshooting guide that you must specify as a URL with the *LabelMismatchEmailHelpLink* parameter from Set-SPOTenant.

- If you need to, you can now [disable co-authoring for your tenant by using PowerShell](sensitivity-labels-coauthoring.md#if-you-need-to-disable-this-feature).

## October 2022

### Audit

- [Audit New Search](/microsoft-365/compliance/audit-new-search) - users can now run 10 concurrent audit search jobs with a max of one unfiltered search job, and review the progress %, result number, and job status in the UI. Historical search jobs results are now stored for 30 days and can be accessed after completion.)

### Communication compliance

- **In preview**: New communication compliance [integration with insider risk management](/microsoft-365/compliance/communication-compliance#integration-with-insider-risk-management-preview). Communication compliance can now provide risk signals detected in messages to insider risk management policies. Risky users detected in messages by the communication compliance policy act as a triggering event to bring users into scope for the insider risk management policies.

### Data loss prevention

- **In preview**: Multiple updates for authorization groups in [Configure endpoint DLP settings](/microsoft-365/compliance/dlp-configure-endpoint-settings) and [Using Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-using).
    - [Printer groups](/microsoft-365/compliance/dlp-configure-endpoint-settings#printer-groups-preview)
    - [Removable USB storage device groups](/microsoft-365/compliance/dlp-configure-endpoint-settings#removable-storage-device-groups-preview)
    - [Network share paths](/microsoft-365/compliance/dlp-configure-endpoint-settings#network-share-groups-preview)
    - [Website groups](/microsoft-365/compliance/endpoint-dlp-using#scenario-4-avoid-looping-dlp-notifications-from-cloud-synchronization-apps-with-auto-quarantine-preview)
    - [VPN network location groups](/microsoft-365/compliance/dlp-configure-endpoint-settings#vpn-settings-preview)
    - [Sensitive service domains](/microsoft-365/compliance/dlp-configure-endpoint-settings#sensitive-service-domains)
- **In preview**: Policies can use grouping of conditions, nesting of groups and the use of boolean operators (AND/OR/NOT) between them.
    - [Complex rule design](/microsoft-365/compliance/dlp-policy-design#complex-rule-design-preview)
    - [Use trainable classifiers as conditions in DLP policies](/microsoft-365/compliance/dlp-policy-reference#location-support-for-how-content-can-be-defined)
-  **In preview**: For endpoints, support for detecting sensitive items that are password protected or encrypted.
    - [Conditions that devices support](/microsoft-365/compliance/dlp-policy-reference#conditions-devices-supports)
- **Generally available**: [100 new files types that can be scanned](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection)

### eDiscovery

- [Limits for Content search and eDiscovery (Standard)](/microsoft-365/compliance/limits-for-content-search) - clarified how eDiscovery jobs are counted towards limits.
- [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set) - removed conversation PDF support per feature and UI updates.
- [Assign eDiscovery permissions in the compliance portal](/microsoft-365/compliance/ediscovery-assign-permissions) - added content to support new Manage review set tags role.
- [New-ComplianceSecurityFilter](/powershell/module/exchange/new-compliancesecurityfilter) - now support only 'all' parameters, removed non-supported example scenarios.
- [Keyword queries and search conditions for eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions) - clarified the supported FolderId 48-character format indexed for search.

### Insider risk management

- **In preview**: Insider risk management introduces [forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence), which enables customizable visual activity capturing across devices to help your organization better mitigate, understand, and respond to potential data risks like unauthorized data exfiltration of sensitive data.
- **In preview**: Insider risk management [integration with communication compliance](/microsoft-365/compliance/communication-compliance#integration-with-insider-risk-management-preview) when using the *Data leaks by risky users* or *Security policy violations by risky users* policy templates. Communication compliance can now provide risk signals detected in messages to insider risk management policies.
- **In preview**: New [inline alert customization](/microsoft-365/compliance/insider-risk-management-settings#inline-alert-customization-preview) allows analysts and investigators to quickly edit policies when reviewing alerts.
- New [priority content scoring updates](/microsoft-365/compliance/insider-risk-management-policies#prioritize-content-in-policies) that allow you to choose whether to assign risk scores to all activities detected by a policy or only activities that include priority content.
- Security teams are now able to [customize a security trigger](/microsoft-365/compliance/insider-risk-management-policy-templates#policy-templates) in the 'data leaks' policy to surface when a user performs a sequence, enabling them to respond to user actions that might be considered riskier.
- New updates now allow security teams to create [policies with sequences](/microsoft-365/compliance/insider-risk-management-policies#sequence-detection-preview) without any other required underlying policy indicator selections.

### Data lifecycle management and records management

- **General availability (GA)**: [Relabeling at the end of the retention period](retention-settings.md#relabeling-at-the-end-of-the-retention-period).
- **General availability (GA)**: [Starting a record unlocked](declare-records.md#configuring-retention-labels-to-declare-records).
- **General availability (GA)**: Users can now apply published retention labels to files [directly in Teams](create-apply-retention-labels.md#applying-retention-labels-using-microsoft-365-groups).
- New retention support statements: Retention policies for Teams support the [chat with myself](https://support.microsoft.com/office/start-a-chat-in-teams-0c71b32b-c050-4930-a887-5afbe742b3d8?storagetype=live#bkmk_chatwithself) feature, [video clips](https://support.microsoft.com/office/record-a-video-clip-in-teams-0c57dae5-2974-4214-9c46-7a2136386f1c), and call data records, which are system-generated messages that contain [metadata for meetings and calls](/MicrosoftTeams/ediscovery-investigation#teams-metadata). Retention policies for Yammer support [storyline posts](https://support.microsoft.com/office/overview-of-storyline-for-yammer-and-viva-engage-530e4e66-9f1c-4be1-b371-08ea40dc4b69).
- Improved in-product experience if retention policies have errors: You'll now see a detailed description of the error in the details pane, with in-product actions to take that can resolve the problem. For example, remove invalid locations and resynchronize the policy.

### Microsoft Priva

- **In preview**: [Data transfer policies](/privacy/priva/risk-management-policy-data-transfer) in Privacy Risk Management now offers additional flexible boundary conditions: detecting transfers based on users' Azure Active Directory attributes, transfers between users in different Microsoft 365 groups, and transfers between SharePoint sites.

### On-premises scanner

- **In preview**: The Azure Information Protection (AIP) on-premises scanner is being renamed **Microsoft Purview Information Protection scanner** and [configuration is moving to the Microsoft Purview compliance portal](/information-protection/deploy-aip-scanner-configure-install).

### Sensitivity labels

- Call to action: [Migration guidance](sensitivity-labels-aip.md) to help you move from the AIP add-in for Office apps, with a [migration playbook](https://microsoft.github.io/ComplianceCxE/playbooks/AIP2MIPPlaybook) from our Customer Experience Engineering (CxE) team
- **General availability (GA)**: Authentication contexts for label [groups and site settings](sensitivity-labels-teams-groups-sites.md#how-to-configure-groups-and-site-settings) that work with Azure AD Conditional Access policies to enforce more stringent access conditions to a site.
- **General availability (GA)**: [Site sharing permissions by using PowerShell](sensitivity-labels-teams-groups-sites.md#configure-site-sharing-permissions-by-using-powershell-advanced-settings).
- **General availability (GA)**: [Preventing copy to clipboard is honored for labeled and encrypted files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#limitations), with some exceptions for relabeling scenarios.
- **In preview**: The AIP add-in for Office apps is [disabled by default](sensitivity-labels-aip.md#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps) and requires a new setting to override this default.
- Support statement: [Files types supported for SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#supported-file-types), after enabling sensitivity labels for these services.
- New [prerequisite for co-authoring](sensitivity-labels-coauthoring.md#prerequisites) and the Azure Information Protection unified labeling client and scanner: It's not supported to use Double Key Encryption in the same tenant as the co-authoring feature.

### Trainable classifiers

- **In preview** 20 + new trainable classifiers and a standalone trainable classifier definitions article.
    - [Trainable classifiers definitions](/microsoft-365/compliance/classifier-tc-definitions.md)

## September 2022

### Communication compliance

- [Get started with communication compliance](/microsoft-365/compliance/communication-compliance-configure): New updates for recommended actions and accelerated onboarding. Recommended actions can help your organization quickly get started with communication compliance.
- [Investigate and remediate communication compliance alerts](/microsoft-365/compliance/communication-compliance-investigate-remediate): New update for keyword highlighting support for plain text view. Keyword highlighting, which is currently available for English language only, can help direct you to the area of interest in long messages and attachments.
- [Use communication compliance reports and audits](/microsoft-365/compliance/communication-compliance-reports-audits): Clarifications on permissions needed to view and manage communication compliance reports. To view and manage reports, users must be assigned to the *Communication Compliance Viewers* role group.
 
### Compliance Manager

- [Compliance Manager templates list](/microsoft-365/compliance/compliance-manager-templates-list): New template added for Australian Information Security Registered Assessor Program (IRAP) with ISM Version 3.5 - Official).

### Data Classification

- [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) - This article shows you how to confirm whether items matched by a classifier are true positive (a Match) or a false positive (Not a match) and provide Match, or Not a match feedback. You can use that feedback to tune your classifiers to increase accuracy. You can also send redacted versions of the document and the Match, Not a Match feedback to Microsoft if you want to help increase the accuracy of the classifiers that Microsoft provides.

### Data lifecycle management and records management

- **In preview**:  Retention labels now support running a Power Automate flow at the end of the retention period to support custom actions and integration with other solutions. For more information, see [Customize what happens at the end of the retention period](retention-label-flow.md).
- For records management items undergoing disposition review, when you select that item in the Disposition area of the compliance portal, a new Progress column displays the item's status. That status can be "Approved for deletion, 'Awaiting deletion from SharePoint/OneDrive' or 'Awaiting deletion from Exchange', or "Permanently Deleted". When an item is approved for permanent deletion as part of the disposition review process, that deletion can take up to 15 days to complete and this new column helps you to track its progress.
- The configuration to [enable a mailbox for archiving](enable-archive-mailboxes.md) is moving to the new Exchange admin center (EAC) and instructions have been updated accordingly.
- Currently, trainable classifiers for auto-apply retention labels aren't supported with adaptive scopes. As a workaround, use static scopes for this configuration combination.
- Instructions to [Customize an archive and deletion policy for mailboxes](set-up-an-archive-and-deletion-policy-for-mailboxes.md) are updated to include only retention tags that that have an outcome that can't be achieved with Microsoft 365 retention.

### Data loss prevention

- [Design a data loss prevention policy complex rule design](dlp-policy-design.md#complex-rule-design) - The DLP rule builder supports boolean logic (AND, OR, NOT) and nested groups. New video and content added that walks you through this new functionality.

### Sensitivity labels
- [PDF support](sensitivity-labels-office-apps.md#pdf-support) in Word, Excel, and PowerPoint is now available to Windows Current Channel and Monthly Enterprise Channel.
- Default label for existing documents is now fully rolled out to Mac and Windows in Current Channel and Monthly Enterprise Channel, providing parity with the AIP add-in.
- **In preview**: The new [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and support for [label colors](sensitivity-labels-office-apps.md#label-colors) in Office apps, providing parity with the AIP add-in with additional functionality.
- **In preview**: [S/MIME support](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook) for Windows, providing parity with the AIP add-in. Support for Mac and mobile is now fully rolled out.
- **In preview**: Trainable classifiers for auto-labeling policies (all workloads).

### Trainable classifiers

- [Trainable classifiers definitions](classifier-tc-definitions.md)  - more than 20 new classifiers have been added, so the definitions for all trainable classifiers have been broken out into this new article.

## Changes to product names

To meet the challenges of today's decentralized, data-rich workplace, we're introducing [Microsoft Purview](https://aka.ms/microsoftpurview), a comprehensive set of solutions which helps you understand, govern, and protect your entire data estate. This new brand family combines the capabilities of the former Microsoft Purview Data Map and the Microsoft 365 compliance portfolio that customers already rely on, providing unified data governance and risk management for your organization.

| **Former Name** | **New Name** | **Description** |
|:----------------|:-------------|:----------------|
| Microsoft 365 Advanced Audit <br><br> Microsoft 365 Basic Audit | Microsoft Purview Audit (Premium) <br><br> Microsoft Purview Audit (Standard)| Auditing solutions provide an integrated solution to help organizations effectively respond to security events, forensic investigations, internal investigations, and compliance obligations. To learn more, see [Microsoft Purview Advanced Audit (Premium)](audit-premium.md) and [Microsoft Purview Advanced Audit (Standard)](audit-standard-setup.md). |
| Microsoft 365 Communication Compliance | Microsoft Purview Communication Compliance | Communication Compliance helps minimize risks by helping you quickly detect, capture, and take remediation actions for company communication channels and policy violations. To learn more, see [Microsoft Purview Communication Compliance](communication-compliance-solution-overview.md). |
| Microsoft Compliance Manager | Microsoft Purview Compliance Manager | Compliance Manager can help you throughout your compliance journey, from taking inventory of your data protection risks to managing the complexities of implementing controls, staying current with regulations and certifications, and reporting to auditors. To learn more, see [Microsoft Purview Compliance Manager](compliance-manager.md). |
| Microsoft 365 Customer Key | Microsoft Purview Customer Key | Customer Key provides extra protection against viewing of data by unauthorized systems or personnel, and complements BitLocker disk encryption in Microsoft data centers. To learn more, see [Microsoft Purview Customer Key](customer-key-overview.md). |
| Office 365 Customer Lockbox | Microsoft Purview Customer Lockbox | Customer Lockbox ensures that Microsoft can't access your content to do service operations without your explicit approval. Customer Lockbox brings you into the approval workflow process that Microsoft uses to ensure only authorized requests allow access to your content. To learn more, see [Microsoft Purview Customer Lockbox](customer-lockbox-requests.md). |
| Data Loss Prevention | Microsoft Purview Data Loss Prevention | DLP helps protect sensitive data and reduce risk by preventing users from inappropriately sharing that data with people who shouldn't have it. To learn more, see [Microsoft Purview Data Loss Prevention](dlp-learn-about-dlp.md). |
| Double Key Encryption for Microsoft 365 | Microsoft Purview Double Key Encryption | Double Key Encryption (DKE) uses two keys together to access protected content. Microsoft stores one key in Microsoft Azure, and you hold the other key. To learn more, see [Microsoft Purview Double Key Encryption](double-key-encryption.md) |
| Microsoft 365 Information Barriers | Microsoft Purview Information Barriers | Information Barriers is a solution which restricts communication and collaboration between certain people inside your organization to safeguard internal information. To learn more, see [Microsoft Purview Information Barriers](information-barriers-solution-overview.md). |
| Microsoft Information Protection | Microsoft Purview Information Protection | Information protection helps you discover, classify, and protect sensitive information wherever it lives or travels. To learn more, see [Microsoft Purview Information Protection](information-protection.md). |
| Microsoft Information Governance | Microsoft Purview Data Lifecycle Management | Data lifecycle management provides you with tools and capabilities to retain the content that you need to keep and delete the content that you don't. To learn more, see [Microsoft Purview Data Lifecycle Management](data-lifecycle-management.md). |
| Microsoft 365 Insider Risk Management | Microsoft Purview Insider Risk Management | Insider risk management uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. To learn more, see [Microsoft Purview Insider Risk Management](insider-risk-management.md). |
| Office 365 Message Encryption | Microsoft Purview Message Encryption | With Message Encryption, your organization can send and receive encrypted email messages between people inside and outside your organization. To learn more, see [Microsoft Purview Message Encryption](ome.md). |
| Privileged Access Management in Microsoft 365 | Microsoft Purview Privileged Access Management | Privileged Access Management helps protect your organization from breaches and helps to meet compliance best practices by limiting standing access to sensitive data or access to critical configuration settings. To learn more, see [Microsoft Purview Privileged Access Management](privileged-access-management-solution-overview.md). |
| Microsoft data connectors | Microsoft Purview data connectors | Microsoft 365 lets administrators use data connectors to import and archive non-Microsoft, third-party data from social media platforms, instant messaging platforms, and document collaboration platforms, to mailboxes in your Microsoft 365 organization. To learn more, see [Microsoft Purview data connectors](compliance-extensibility.md). |
| Microsoft 365 Advanced eDiscovery <br><br> Microsoft 365 Core eDiscovery | Microsoft Purview eDiscovery (Premium) <br><br> Microsoft Purview eDiscovery (Standard) | Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. To learn more, see [Microsoft Purview eDiscovery (Premium)](ediscovery-overview.md) and [Microsoft Purview eDiscovery (Standard)](ediscovery-standard-get-started.md). |
| Microsoft 365 compliance center | Microsoft Purview compliance portal | Admin portal to access solutions and solution catalog within the Microsoft 365 E5 Compliance suite. To learn more, see [Microsoft Purview compliance portal](microsoft-365-compliance-center.md). |
