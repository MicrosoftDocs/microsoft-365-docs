---
title: What's new in Microsoft Purview risk and compliance solutions
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
description: Whether it be adding new solutions to the compliance center, updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft 365 helps you stay on top of the ever-changing compliance landscape. Find out what we've been up to this month.
ms.custom: seo-marvel-mar2020
---

# What's new in Microsoft Purview risk and compliance solutions

Whether it be adding new solutions to the [Microsoft Purview compliance portal](microsoft-365-compliance-center.md), updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft 365 helps you stay on top of the ever-changing compliance landscape. Take a look below to see what’s new in Microsoft Purview today.

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

## September 2022

### Data Classification

- [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) - This article shows you how to confirm whether items matched by a classifier are true positive (a Match) or a false positive (Not a match) and provide Match, or Not a match feedback. You can use that feedback to tune your classifiers to increase accuracy. You can also send redacted versions of the document and the Match, Not a Match feedback to Microsoft if you want to help increase the accuracy of the classifiers that Microsoft provides.

### Data loss prevention

- [Design a data loss prevention policy complex rule design (preview)](dlp-policy-design.md#complex-rule-design-preview) - The DLP rule builder supports boolean logic (AND, OR, NOT) and nested groups. New video and content added that walks you through this new functionality.
 
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

### Data Loss Prevention

- [Get started with endpoint data loss prevention](endpoint-dlp-getting-started.md) - updated links for more accessible article names
- [Learn about endpoint data loss prevention](endpoint-dlp-learn-about.md) - updated links for more accessible article names; updated guidance on supported file types; updated copy-to-other-app guidance
- [Share data loss prevention alerts](dlp-share-alerts.md) (preview) - new
- [Configure endpoint DLP settings](dlp-configure-endpoint-settings.md) - GA of Sensitive Service Domains
- [Data loss prevention policy reference](dlp-policy-reference.md) - GA of Sensitive Service Domains
- [Using endpoint data loss prevention](endpoint-dlp-using.md) - GA of Sensitive Service Domains

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

## April 2022

### Communication compliance

- [Create and manage communication compliance policies](communication-compliance-policies.md) - updated with guidance added for new user-reported message policy feature for Microsoft Teams integration.
- [Get started with communication compliance](communication-compliance-configure.md) - updated to add clarification for F5 subscription and licensing.

### Compliance Manager

- [Compliance Manager templates list](compliance-manager-templates-list.md) - added 6 new templates and navigation links on the page to more easily jump to template categories.
- [Compliance Manager overview](compliance-manager.md) - updated product overview video.

### Compliance offerings & service assurance

- [Compliance offerings](/compliance/regulatory/offering-home) - updates for service coverage and audit reporting for VPATS, SOC, ISO, and FedRAMP offerings.

### Data lifecycle management and records management

- With the [product name change](#changes-to-product-names), **Information governance** is renamed **Data lifecycle management** in the compliance portal.
- Currently rolling out: new design for the retention label settings configuration.
- Currently rolling out: new label option in preview, "Unlock this record by default". For more information, see [Configuring retention labels to declare records](declare-records.md#configuring-retention-labels-to-declare-records) and [Use record versioning to update records stored in SharePoint or OneDrive](record-versioning.md).

### Data Loss Prevention

- Articles updated for macOS device onboarding GA:
  - [Learn about endpoint DLP](endpoint-dlp-learn-about.md)
  - [Configure endpoint data loss prevention settings](dlp-configure-endpoint-settings.md)
  - [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md)
  - [Data Loss Prevention policy reference](dlp-policy-reference.md)
  - [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [DLP policy conditions, exceptions, and actions](dlp-conditions-and-exceptions.md) - added guidance for Modify Subject action.
- [Data Loss Prevention policy reference](dlp-policy-reference.md) - GA SPO/ODB predicates; updated with new guidance on rule processing on endpoints.

### Device Onboarding

- Articles updated for macOS device onboarding GA:
  - [Onboard macOS devices in to Microsoft 365 overview](device-onboarding-macos-overview.md)
  - [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md)
  - [Onboard and offboard macOS devices into Microsoft Purview solutions using Intune](device-onboarding-offboarding-macos-intune.md)
  - [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-jamfpro-mde.md)
  - [Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro](device-onboarding-offboarding-macos-jamfpro.md)

### Information barriers

- [Use information barriers with SharePoint](/sharepoint/information-barriers) - guidance added for new private channel support in SharePoint.
- [Manage information barriers policies](information-barriers-edit-segments-policies.md) - guidance added for removing segments and policy/segments together.

### Microsoft Priva

- [Privacy Risk Management policies](/privacy/priva/risk-management) - new pages, significant updates, and restructuring of policies content; details below:
  - [Privacy Risk Management policies](/privacy/priva/risk-management-policies) - added significant details about policy setup and management that apply to all policies; added links to new pages for each of the three policy types.
  - [Data overexposure policies](/privacy/priva/risk-management-policy-data-overexposure) - articulates the need and uses for the policy; explains default settings for out-of-box creation and detailed instructions for customizing settings.
  - [Data transfer policies](/privacy/priva/risk-management-policy-data-transfer) - highlights new condition for the policy to detect transfers outside of the org; articulates the need and uses for the policy; explains default settings for out-of-box creation and detailed instructions for customizing settings.
  - [Data minimization policies](/privacy/priva/risk-management-policy-data-minimization) - articulates the need and uses for the policy; explains default settings for out-of-box creation and detailed instructions for customizing settings.
  - [Investigate and remediate alerts](/privacy/priva/risk-management-alerts) - added clarifying details and formatting changes to improve readability.
  - [User notifications](/privacy/priva/risk-management-notifications) - added info on the functionality for previewing and customizing email notification content.
- [Create a subject rights request](/privacy/priva/subject-rights-requests-create) - added section on getting started with your first request with default settings to explore functionality.
- [Review data for a subject rights request](/privacy/priva/subject-rights-requests-data-review) - added details explaining priority items to review and how to find them, and the need to set up data matching in order to get this insight.
- [Find and visualize personal data](/privacy/priva/priva-data-profile) - clarified that users need to set up data matching in order to receive insights for "Items with the most data subject content" under "Key insights".
- [Data matching for subject rights requests](/privacy/priva/subject-rights-requests-data-match) - clarified the step progression in this process and added the second step of creating sensitive info types.

### Sensitive Information Types

- [Use named entities in DLP policies](named-entities-use.md) - named entities GA.
- [Learn about named entities](named-entities-learn.md) - named entities GA.
- [Sensitive information types entity definitions](sensitive-information-type-entity-definitions.md) - named entities GA, and pattern updates.
- [Learn about sensitive information types](sensitive-information-type-learn-about.md) - named entities GA.

### Sensitivity labels

- Newly supported scenario for SharePoint sites, now in preview: [Configure site sharing permissions by using PowerShell advanced settings](sensitivity-labels-teams-groups-sites.md#configure-site-sharing-permissions-by-using-powershell-advanced-settings)
- [Co-authoring for files encrypted with sensitivity labels](sensitivity-labels-coauthoring.md) is now available for testing with the Semi-Annual Enterprise Channel (Preview) channel.
- Deleted OneDrive accounts are now correctly displayed in the simulation results for auto-labeling policies.
- Known issue if you [assign permissions to mail contacts in groups](/office365/troubleshoot/sensitivity-labels/mail-contacts-lose-access-encrypted-content) when you configure a sensitivity label for encryption.

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

## March 2022

### Communication compliance

- [Investigate and remediate communication compliance alerts](communication-compliance-investigate-remediate.md) - removed guidance for deprecated Annotation view.

### Compliance Manager

- [Working with improvement actions](compliance-manager-improvement-actions.md), [Get started with Compliance Manager](compliance-manager-setup.md) - added information about more improvement actions that can be automatically monitored and tested ("continuous compliance assessment"); this includes new abilities to parent the testing status of an action to that of another action.

### Data classification

- [Get Started with Content Explorer](data-classification-content-explorer.md) - Teams guidance added, licensing section pointed to service descriptions.

### Data lifecycle management and records management

- [Retention policies for Yammer](create-retention-policies.md#retention-policy-for-yammer-locations) are now generally available (GA).
- Support for shared channels, currently in preview. When you configure a retention policy for the Teams channel message location, any shared channels inherit retention settings from their parent team.
- [Per-tenant limits for content disposition](retention-limits.md#maximum-numbers-for-disposition).

### Data Loss Prevention

- [Data loss prevention and Microsoft Teams](dlp-microsoft-teams.md) - Public preview of Share Teams Channels content.
- [Get started with the Microsoft Compliance Extension](dlp-chrome-get-started.md) - public preview of restricted app groups, remove registry key instructions, configuration now enabled by default.
- [Configure endpoint data loss prevention settings](dlp-configure-endpoint-settings.md) - new for public preview of restricted app groups.
- [Data loss prevention policy reference](dlp-policy-reference.md) - updated for public preview of restricted app groups.
- [Get started with data loss prevention for Power BI](dlp-powerbi-get-started.md) - new for public preview.

### Information protection

- [Support for double byte character set release notes](mip-dbcs-relnotes.md) - added guidance for macOS.

### Insider risk management

- [Get started with insider risk management](insider-risk-management-configure.md) - added new tasks for the Recommended actions guidance.
- [Get started with insider risk management settings](insider-risk-management-settings.md) - new updates for the notification and email alerts features, new updates for analytics notifications.

### Microsoft Priva

- [Configure Priva settings](/privacy/priva/priva-settings) - updated clarifying information about data retention periods for subject rights requests; added details about managing and applying data review tags for subject rights requests.
- [Create a subject rights request](/privacy/priva/subject-rights-requests-create) - added details about refining searches and choosing conditions and attributes; added info about new functionality that lets users select all versions of SharePoint items in their search (vs. the default setting, which only returns current version of SharePoint items).
- [Review data for a subject rights request](/privacy/priva/subject-rights-requests-data-review) - added details in step 3 for reviewing items during the data review stage, including marking files as include/exclude, annotating files to apply redactions, applying tags, and entering notes.
- [Generate reports and fulfill a subject rights request](/privacy/priva/subject-rights-requests-reports) - added details about how to understand reports; clarified when an export package is generated and how to work with its contents; added information about audit logs, tagged files reports, and retention periods for SRR data and reports.

### Sensitivity labels

- [Sensitivity labels for Teams](sensitivity-labels-teams-groups-sites.md):
  - Support for shared channels, currently in preview. If a team has any shared channels, they automatically inherit sensitivity label settings from their parent team, and that label can't be removed or replaced with a different label.
  - Support for templates, previously listed as [not supported with Teams Graph APIs and PowerShell cmdlets]( /microsoftteams/sensitivity-labels#limitations).  
- For auditing Word, Excel, and PowerPoint on the web, justification text is now fully rolled out.
- Applying a default label to existing documents for Word, Excel, and PowerPoint on the web is now fully rolled out.
