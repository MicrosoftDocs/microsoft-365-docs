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

## October 2022

### Communication compliance

- **In preview**: New communication compliance [integration with insider risk management](/microsoft-365/compliance/communication-compliance#integration-with-insider-risk-management-preview). Communication compliance can now provide risk signals detected in messages to insider risk management policies. Risky users detected in messages by the communication compliance policy act as a triggering event to bring users into scope for the insider risk management policies.

### Insider risk management

- **In preview**: Insider risk management introduces [forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence), which enables customizable visual activity capturing across devices to help your organization better mitigate, understand, and respond to potential data risks like unauthorized data exfiltration of sensitive data.
- **In preview**: Insider risk management [integration with communication compliance](/microsoft-365/compliance/communication-compliance#integration-with-insider-risk-management-preview) when using the *Data leaks by risky users* or *Security policy violations by risky users* policy templates. Communication compliance can now provide risk signals detected in messages to insider risk management policies.
- **In preview**: New [inline alert customization](/microsoft-365/compliance/insider-risk-management-settings#inline-alert-customization-preview) allows analysts and investigators to quickly edit policies when reviewing alerts.
- New [priority content scoring updates](/microsoft-365/compliance/insider-risk-management-policies#prioritize-content-in-policies) that allow you to choose whether to assign risk scores to all activities detected by a policy or only activities that include priority content.
- Security teams are now able to [customize a security trigger](/microsoft-365/compliance/insider-risk-management-policies#policy-templates) in the 'data leaks' policy to surface when a user performs a sequence, enabling them to respond to user actions that might be considered riskier.
- New updates now allow security teams to create [policies with sequences](/microsoft-365/compliance/insider-risk-management-policies#sequence-detection-preview) without any other required underlying policy indicator selections.

### Data lifecycle management and records management

- **General availability (GA)**: [Relabeling at the end of the retention period](retention-settings.md#relabeling-at-the-end-of-the-retention-period).
- **General availability (GA)**: [Starting a record unlocked](declare-records.md#configuring-retention-labels-to-declare-records).
- **General availability (GA)**: Users can now apply published retention labels to files [directly in Teams](create-apply-retention-labels.md#applying-retention-labels-using-microsoft-365-groups).
- New retention support statements: Retention policies for Teams support the [chat with myself](https://support.microsoft.com/office/start-a-chat-in-teams-0c71b32b-c050-4930-a887-5afbe742b3d8?storagetype=live#bkmk_chatwithself) feature and [video clips](https://support.microsoft.com/office/record-a-video-clip-in-teams-0c57dae5-2974-4214-9c46-7a2136386f1c), and retention policies for Yammer support [storyline posts](https://support.microsoft.com/office/overview-of-storyline-for-yammer-and-viva-engage-530e4e66-9f1c-4be1-b371-08ea40dc4b69).
- Improved in-product experience if retention policies have errors: You'll now see a detailed description of the error in the details pane, with in-product actions to take that can resolve the problem. For example, remove invalid locations and resynchronize the policy.

### Microsoft Priva

- **In preview**: [Data transfer policies](/privacy/priva/risk-management-policy-data-transfer) in Privacy Risk Management now offers additional flexible boundary conditions: detecting transfers based on users' Azure Active Directory attributes, transfers between users in different Microsoft 365 groups, and transfers between SharePoint sites.

### On-premises scanner
- **In preview**: The Azure Information Protection (AIP) on-premises scanner is being renamed **Microsoft Purview Information Protection scanner** and [configuration is moving to the Microsoft Purview compliance portal](/information-protection/deploy-aip-scanner-configure-install).

### Sensitivity labels
- Call to action: [Migration guidance](sensitivity-labels-aip.md) to help you move from the AIP add-in for Office apps, with a [migration playbook](https://microsoft.github.io/ComplianceCxE/playbooks/AIP2MIPPlaybook) from our Customer Experience Engineering (CxE) team
- **General availability (GA)**: Authentication contexts for label [groups and site settings](sensitivity-labels-teams-groups-sites.md#how-to-configure-groups-and-site-settings) that work with Azure AD Conditional Access policies to enforce more stringent access conditions to a site.
- **General availability (GA)**: [Site sharing permissions by using PowerShell](sensitivity-labels-teams-groups-sites.md#configure-site-sharing-permissions-by-using-powershell-advanced-settings).
- **Rolling out**: [Preventing copy to clipboard is honored for labeled and encrypted files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#limitations), with some exceptions for relabeling scenarios.
- **In preview**: The AIP add-in for Office apps is [disabled by default](sensitivity-labels-aip.md#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps) and requires a new setting to override this default.
- Support statement: [Files types supported for SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#supported-file-types), after enabling sensitivity labels for these services.
- New [prerequisite for co-authoring](sensitivity-labels-coauthoring.md#prerequisites) and the Azure Information Protection unified labeling client and scanner: It's not supported to use Double Key Encryption in the same tenant as the co-authoring feature.

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

- In preview:  Retention labels now support running a Power Automate flow at the end of the retention period to support custom actions and integration with other solutions. For more information, see [Customize what happens at the end of the retention period](retention-label-flow.md).
- For records management items undergoing disposition review, when you select that item in the Disposition area of the compliance portal, a new Progress column displays the item's status. That status can be "Approved for deletion, 'Awaiting deletion from SharePoint/OneDrive' or 'Awaiting deletion from Exchange', or "Permanently Deleted". When an item is approved for permanent deletion as part of the disposition review process, that deletion can take up to 15 days to complete and this new column helps you to track its progress.
- The configuration to [enable a mailbox for archiving](enable-archive-mailboxes.md) is moving to the new Exchange admin center (EAC) and instructions have been updated accordingly.
- Currently, trainable classifiers for auto-apply retention labels aren't supported with adaptive scopes. As a workaround, use static scopes for this configuration combination.
- Instructions to [Customize an archive and deletion policy for mailboxes](set-up-an-archive-and-deletion-policy-for-mailboxes.md) are updated to include only retention tags that that have an outcome that can't be achieved with Microsoft 365 retention.

### Data loss prevention

- [Design a data loss prevention policy complex rule design (preview)](dlp-policy-design.md#complex-rule-design-preview) - The DLP rule builder supports boolean logic (AND, OR, NOT) and nested groups. New video and content added that walks you through this new functionality.

### Sensitivity labels
- [PDF support](sensitivity-labels-office-apps.md#pdf-support) in Word, Excel, and PowerPoint is now available to Windows Current Channel and Monthly Enterprise Channel.
- Default label for existing documents is now fully rolled out to Mac and Windows in Current Channel and Monthly Enterprise Channel, providing parity with the AIP add-in.
- In preview: The new [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and support for [label colors](sensitivity-labels-office-apps.md#label-colors) in Office apps, providing parity with the AIP add-in with additional functionality.
- In preview: [S/MIME support](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook) for Windows, providing parity with the AIP add-in. Support for Mac and mobile is now fully rolled out.
- In preview: Trainable classifiers for auto-labeling policies (all workloads).

### Trainable classifiers

- [Trainable classifiers definitions](classifier-tc-definitions.md)  - more than 20 new classifiers have been added, so the definitions for all trainable classifiers have been broken out into this new article.

## August 2022

### Compliance Manager

- [Update improvement actions and bring compliance data into Compliance Manager](compliance-manager-update-actions.md) - new functionality for updating multiple improvement actions at once, which also allows orgs to bring compliance work completed in other systems into Compliance Manager for tracking there.
- [Working with improvement actions in Compliance Manager](compliance-manager-improvement-actions.md) - users can now include a link/URL as part of evidence for improvement action implementation or testing work.

### Compliance offerings & service assurance

- [Microsoft 365 change management](/compliance/assurance/assurance-microsoft-365-change-management) - new assurance topic that covers code and non-code changes to Microsoft services.
- **Japan CS Gold Mark offering topic** - retired, certification not renewed.

### Data lifecycle management and records management

- [Exchange (legacy)](data-lifecycle-management.md#exchange-legacy-features) configuration is moving from the Classic Exchange admin center (EAC) to the Microsoft Purview compliance portal, under **Data lifecycle management**. Existing data lifecycle management features are located under a new subnode, **Microsoft 365**.
- For cloud attachments (currently rolling out in preview), automatic and temporary retention of deleted files in the Preservation Hold library to safeguard against the original file being deleted by users before the copy can be created and labeled. For more information, see [How retention works with cloud attachments](retention-policies-sharepoint.md#how-retention-works-with-cloud-attachments).

### Data loss prevention

- [Get started with endpoint data loss prevention](endpoint-dlp-getting-started.md) - updated links for more accessible article names
- [Learn about endpoint data loss prevention](endpoint-dlp-learn-about.md) - updated links for more accessible article names; updated guidance on supported file types; updated copy-to-other-app guidance
- [Share data loss prevention alerts](dlp-share-alerts.md) (preview) - new
- [Configure endpoint DLP settings](dlp-configure-endpoint-settings.md) - GA of Sensitive Service Domains
- [Data loss prevention policy reference](dlp-policy-reference.md) - GA of Sensitive Service Domains
- [Using endpoint data loss prevention](endpoint-dlp-using.md) - GA of Sensitive Service Domains

### Insider risk management

- [Create and manage insider risk management policies](/microsoft-365/compliance/insider-risk-management-policies#general-risky-browser-usage-preview): New General risky browser usage policy template for public preview. This policy can help detect and enable risk scoring for web browsing that might be in violation of your organization's acceptable use policy, such as visiting sites that pose a threat (for example phishing sites) or contain adult content.
- [Create and manage insider risk management policies](/microsoft-365/compliance/insider-risk-management-policies#quick-policies-from-recommended-actions-preview) -New quick policies templates for public preview. You can use a quick policy to expedite the configuration of a *General data leaks* or *Data theft by departing users policy*.
- [Get started with insider risk management settings](/microsoft-365/compliance/insider-risk-management-settings#intelligent-detections): New exclusion and classifiers support in intelligent detection settings.

### Microsoft Priva

- [Microsoft Priva trial user guide](/privacy/priva/priva-trial-playbook) - refreshed and simplified guidance to align with recent documentation updates

### Sensitive Information Types

- [Create exact data match sensitive information type workflow classic experience](sit-create-edm-sit-classic-ux-workflow.md) - new
- [Create the EDM SIT sample file for the new experience](sit-create-edm-sit-unified-ux-sample-file.md) - new
- [Create EDM SIT using the new experience](sit-create-edm-sit-unified-ux-schema-rule-package.md) - new
- [Create exact data match sensitive information type workflow new experience](sit-create-edm-sit-unified-ux-workflow.md) - new
- Added guidance for new and classic EDM SIT creation experience in the following topics:
  - [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md)
  - [Create exact data match sensitive information type/rule package](sit-get-started-exact-data-match-create-rule-package.md)
  - [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md)
  - [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md)
  - [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md)
  - [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md)
  - [Learn about exact data match sensitive information types](sit-learn-about-exact-data-match-based-sits.md)
- [Sensitive information type limits](sit-limits.md) - new

### Sensitivity labels

- Generally available (GA) and no longer need to opt in: Mobile devices (iOS and Android, with minimal versions) support [co-authoring for files encrypted with sensitivity labels](sensitivity-labels-coauthoring.md).
- GA with Current Channel 2208+ for Word, Excel, PowerPoint on Windows: [Support for PDF](sensitivity-labels-office-apps.md#pdf-support). Support for Outlook to block print to PDF when required, is rolling out to Beta Channel.
- Rolling out to GA with Current Channel 2208+ for Windows, and 16.63+ for macOS: Default label for existing documents.
- In preview: Trainable classifiers for [auto-labeling policies](apply-sensitivity-label-automatically.md).
- Guidance how to [configure Azure AD for encrypted content](encryption-azure-ad-configuration.md), which includes information about External Identities cross-tenant access settings, Conditional Access policies, and guest accounts.

## July 2022

### Compliance Manager

- [Compliance Manager templates list](compliance-manager-templates-list.md) - added new premium template in the Asia-Pacific countries category for "Hong Kong - Code of Banking Practice and Payment Card".

### Compliance offerings & service assurance

- [SharePoint and OneDrive data resiliency in Microsoft 365](/compliance/assurance/assurance-sharepoint-onedrive-data-resiliency) - changes to blob storage resilience section.

### Data lifecycle management and records management

- [Combined licensing section](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-data-lifecycle-management--microsoft-purview-records-management) with added details for scenarios.
- The retention of SharePoint document versions no longer uses separate files in the Preservation Hold library. For more information, see the updated documentation, [How retention works with document versions](retention-policies-sharepoint.md#how-retention-works-with-document-versions).
- Guidance how to [validate records that you've migrated to SharePoint or OneDrive](records-management.md#validating-migrated-records).
- Updated Cohasset Assessment report for [SEC 17a-4(f), FINRA 4511(c), and CFTC 1.31(c)-(d)](retention-regulatory-requirements.md#sec-17a-4f-finra-4511c-and-cftc-131c-d).
- Removed preview disclaimers for retention policies for Teams shared channels now that this feature is rolling out in GA.

### Data Loss Prevention

- [DLP policy reference](dlp-policy-reference.md#blocking-and-notifications-in-sharepoint-online-and-onedrive-for-business) - added new section on Blocking and notifications in SharePoint Online, and OneDrive for Business in response to customer escalations. Updated to support the public preview of sensitive services domains. Updated support for Power BI. Updated support for trainable classifiers.
- [Configure endpoint DLP settings](dlp-configure-endpoint-settings.md#sensitive-service-domains) - added new content in support of the public preview release of sensitive service domains public preview. Updated URL matching behavior.
- [Using endpoint DLP](endpoint-dlp-using.md#scenario-6-monitor-or-restrict-user-activities-on-sensitive-service-domains) - new scenario content in support of the public preview release of sensitive services domains. Updated subscription information.

### eDiscovery

- [Keyword queries and search conditions for eDiscovery](keyword-queries-and-search-conditions.md) - removed superseded information.

### Sensitive information types

- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md) - We added 41 new SIT entity definitions in support of the 41 new credential scanning SITs. SIT entity definitions content was completely reworked from a single monolithic article into more easily referenceable and supportable individual articles. There are now 303 articles in total including the 42 new credential scanning SITs.

### Sensitivity labels

- In preview: [Default sensitivity label for a SharePoint document library](sensitivity-labels-sharepoint-default-label.md).
- In preview: [Organization-wide custom permissions](encryption-sensitivity-labels.md#support-for-organization-wide-custom-permissions) for Windows when a sensitivity label is configured to let users assign permissions. For more information, see  [Support for organization-wide custom permissions](encryption-sensitivity-labels.md#support-for-organization-wide-custom-permissions).
- Now rolling out to Current Channel (Preview) for Windows: Default label for existing documents.
- Now available with the Semi-Annual Enterprise Channel: [Co-authoring for files encrypted with sensitivity labels](sensitivity-labels-coauthoring.md).
- The [label scope name](sensitivity-labels.md#label-scopes) of "Files & emails" that you see when configuring a sensitivity label is now "Items".

## June 2022

### Compliance Manager

- [Microsoft Purview Compliance Manager alerts and alert policies](compliance-manager-alert-policies.md) - added three AAD roles that have permissions to create or edit alert policies.
- [Configuration Analyzer for Microsoft Purview](compliance-manager-mcca.md) - new name and updated reference links for this getting-started tool for Compliance Manager formerly named 'Microsoft Compliance Configuration Analyzer'.

### Data Loss Prevention

- Numerous page updates for Microsoft Purview branded screenshots.

### Data lifecycle management and records management

- In preview: [Microsoft Graph API for records management](compliance-extensibility.md#microsoft-graph-api-for-records-management-preview)

### Microsoft Priva

- [Subject Rights Requests](/privacy/priva/subject-rights-requests) - significant updates, and restructuring of SRR content to better assist users through each progress step; details below.
  - [Learn about Priva Subject Rights Requests](/privacy/priva/subject-rights-requests) - clearer articulation of customer value prop and general outline of the SRR process.
  - [Understand the workflow and details pages](/privacy/priva/subject-rights-requests-workflow) - articulates the steps in completing a request, indicating manual vs. automatic progression, and linking off to detailed content; a section explains how to interpret and work with a request's details page, including the new "History" tab.
  - [Create a request and define search settings](/privacy/priva/subject-rights-requests-create) - new framing with subheads explaining there are now two ways to create a request: via a custom method using a guided process, and via the new feature of using a template, whose search parameters aim to retrieve the most relevant content for the situation.
  - [Data estimate and retrieval](/privacy/priva/subject-rights-requests-data-retrieval) - explains why some requests pause at the data estimate stage and how to adjust the search as a result; also explains how to set a request to pause first before automatically progressing to data retrieval.
  - [Review data for a subject rights request](/privacy/priva/subject-rights-requests-data-review) - new import file features allows users to bring files from non-Microsoft 365 locations, or files otherwise not picked up by the search, into the Data collected tab.
  - [Generate reports and close requests](/privacy/priva/subject-rights-requests-reports) - clarifies when final data packages are generated and what types of files they include.
  - [Integrate and extend through Microsoft Graph API and Power Automate](/privacy/priva/subject-rights-requests-automate) - revised the title of this previous Power Automate page and expanded page content to include Graph API content and reference links that previously lived on another page.

### Sensitive Information Types

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md) - added section on services that EDM supports.

### Sensitivity labels

- In preview: [PDF support for Office apps](sensitivity-labels-office-apps.md#pdf-support), which includes converting documents to PDF format, inheriting the label with any visual markings and encryption. Print to PDF isn't supported, and this option becomes unavailable for users if their label policy is configured for mandatory labeling.
- In preview: The dialog box that users see when their label policy is configured to require justification to remove or downgrade a label is updated to warn users that their typed response should not include sensitive data. The screenshot in the [What label policies can do](sensitivity-labels.md#what-label-policies-can-do) section shows this updated dialog box that will make its way into the Office deployment channels for production use.
- In preview: [Support for Outlook to apply S/MIME protection](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook) is just starting to roll out across client platforms.
- For [auto-labeling policies](apply-sensitivity-label-automatically.md#creating-an-auto-labeling-policy), a new setting that can automatically turn on the policy if not edited within a set number of days.

### Trainable Classifiers

- [Learn about trainable classifiers](classifier-learn-about.md) - added Adult, Racy, Gory images trainable classifier.

## May 2022

### Communication compliance

- [Communication compliance reports and audits](communication-compliance-reports-audits.md) - updated file size limits for exported reports.
- [Communication compliance policies](communication-compliance-policies.md) - clarified user-reported messages disable/enable process and clarified processing for Teams and Exchange.

### Compliance Manager

- [Alerts and alert policies](compliance-manager-alert-policies.md) - new section explaining the default score change policy for all orgs.
- [Working with improvement actions](compliance-manager-improvement-actions.md) - clarified status states for implementation status and test status, making a distinction for the latter between automatically tested actions and manually tested actions.
- [Templates list](compliance-manager-templates-list.md) - added two new templates in the Europe, Middle East, and Africa (EMEA) region: Qatar National Information Assurance (NIA) and UAE Data Privacy Law.

### Compliance offerings & service assurance

- [Microsoft Security Development Lifecycle](/compliance/assurance/assurance-microsoft-security-development-lifecycle) - new SDL assurance topic for Microsoft services.

### Data lifecycle management and records management

- Currently rolling out in preview: New [relabel option at the end of the retention period](retention-settings.md#relabeling-at-the-end-of-the-retention-period).
- New deployment guidance: [Deploy a data governance solution with Microsoft Purview](data-governance-solution.md)
- Correction in the documentation to confirm that resource mailboxes are supported for Exchange retention and deletion for both static scopes and adaptive scopes. For static scopes, resource mailboxes are included by default in an org-wide policy (the All default).
- New documentation for end users: [Manage email storage with online archive mailboxes](https://support.services.microsoft.com/office/manage-email-storage-with-online-archive-mailboxes-1cae7d17-7813-4fe8-8ca2-9a5494e9a721)

### Data loss prevention

- [Send email notifications and policy tips for DLP policies](use-notifications-and-policy-tips.md) - added new information on what triggers a notification and who can receive them.

### Information barriers

- [Learn about information barriers](information-barriers.md), [Get started with information barriers](information-barriers-policies.md) - refactored structure of topics and added clarification for Exchange Online support and limitations, updated to include support for new IB UI experience.

### Insider risk management

- [Get started with insider risk management settings](insider-risk-management-settings.md) - added guidance for new Defender for Cloud App indicators, new anomaly as a triggering event in custom thresholds, new file extension prioritization and sensitivity labels policy support.
- [Insider risk management cases](insider-risk-management-cases.md) - clarified escalation to eDiscovery case guidance.

### Microsoft Priva

- [Learn about the free Priva trial](/privacy/priva/priva-trial) - updated link to new universal Microsoft 365 trial terms and conditions and minor updates to clarify roles and eligibility.
- [Get started with Priva](/privacy/priva/priva-setup) - added section indicating limitations to Priva availability.

### Sensitive Information Types

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md) - from a customer escalation, added the regions that EDM is supported in and the procedures to find the region of your tenant.
- [Create EDM SIT rule package](sit-get-started-exact-data-match-create-rule-package.md) - added 'working with specific types of data' from the schema article.
- [Create Schema for EDM SIT](sit-get-started-exact-data-match-create-schema.md) - removed 'working with specific types of data'.
- [Use named entities in your DLP policies](named-entities-use.md) - added support statement for Microsoft Defender for Cloud Apps.

### Sensitivity labels

- New option at the end of the label creation or editing process, to automatically [convert auto-labeling settings into an auto-labeling policy](apply-sensitivity-label-automatically.md#convert-your-label-settings-into-an-auto-labeling-policy).
- Auto-labeling policies for SharePoint and OneDrive can now apply labels with encryption when the account that last modified the file no longer exists in Azure AD.
- Container labels are supported for Office 365 Content Delivery Networks (CDNs).
- Clarifications for [removing and deleting labels](create-sensitivity-labels.md#removing-and-deleting-labels).
- New [common scenarios](get-started-with-sensitivity-labels.md#common-scenarios-for-sensitivity-labels):
  - Label SQL database columns by using the same sensitivity labels as those used for files and emails so that the organization has a unified labeling solution that continues to protect structured data when it's exported
  - Apply a sensitivity label to a file after receiving an alert that content containing personal data is being shared and needs protection

### Changes to product names

To meet the challenges of today's decentralized, data-rich workplace, we're introducing [Microsoft Purview](https://aka.ms/microsoftpurview), a comprehensive set of solutions which helps you understand, govern, and protect your entire data estate. This new brand family combines the capabilities of the former Microsoft Purview Data Map and the Microsoft 365 compliance portfolio that customers already rely on, providing unified data governance and risk management for your organization.

| **Former Name** | **New Name** | **Description** |
|:----------------|:-------------|:----------------|
| Microsoft 365 Advanced Audit <br><br> Microsoft 365 Basic Audit | Microsoft Purview Audit (Premium) <br><br> Microsoft Purview Audit (Standard)| Auditing solutions provide an integrated solution to help organizations effectively respond to security events, forensic investigations, internal investigations, and compliance obligations. To learn more, see [Microsoft Purview Advanced Audit (Premium)](advanced-audit.md) and [Microsoft Purview Advanced Audit (Standard)](set-up-basic-audit.md). |
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
| Microsoft 365 Advanced eDiscovery <br><br> Microsoft 365 Core eDiscovery | Microsoft Purview eDiscovery (Premium) <br><br> Microsoft Purview eDiscovery (Standard) | Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. To learn more, see [Microsoft Purview eDiscovery (Premium)](overview-ediscovery-20.md) and [Microsoft Purview eDiscovery (Standard)](get-started-core-ediscovery.md). |
| Microsoft 365 compliance center | Microsoft Purview compliance portal | Admin portal to access solutions and solution catalog within the Microsoft 365 E5 Compliance suite. To learn more, see [Microsoft Purview compliance portal](microsoft-365-compliance-center.md). |
