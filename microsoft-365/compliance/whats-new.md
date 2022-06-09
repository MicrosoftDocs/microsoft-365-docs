---
title: What's new in Microsoft Purview
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
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
- M365-security-compliance
description: Whether it be adding new solutions to the compliance center, updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft 365 helps you stay on top of the ever-changing compliance landscape. Find out what we've been up to this month.
ms.custom: seo-marvel-mar2020
---

# What's new in Microsoft Purview

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

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
- [Per-tenant limits for content disposition](retention-limits.md#maximum-number-of-items-for-disposition).

### Data Loss Prevention

- [Data loss prevention and Microsoft Teams](dlp-microsoft-teams.md) - Public preview of Share Teams Channels content.
- [Get started with the Microsoft Compliance Extension](dlp-chrome-get-started.md) - public preview of restricted app groups, remove registry key instructions, configuration now enabled by default.
- [Configure endpoint data loss prevention settings](dlp-configure-endpoint-settings.md) - new for public preview of restricted app groups.
- [Data loss prevention policy reference](dlp-policy-reference.md) - updated for public preview of restricted app groups.
- [Get started with data loss prevention for Power BI](dlp-powerbi-get-started.md) - new for public preview.
- 
### Information protection

- [Support for double byte character set release notes](mip-dbcs-relnotes.md) - added guidance for macOS.
- 
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

## February 2022

### eDiscovery

- [Manage custodian communications templates in eDiscovery (Premium)](advanced-ediscovery-communications-library.md) - eDiscovery managers can now create custodian communications templates that can be used in any eDiscovery (Premium) case in the organization.
- [Manage issuing officers in eDiscovery (Premium)](advanced-ediscovery-issuing-officers.md) - eDiscovery managers can add a list of issuing officers that can be assigned to custodian communications in any eDiscovery (Premium) case in the organization.

### Data lifecycle management and records management

- [Adaptive scopes](retention.md#adaptive-or-static-policy-scopes-for-retention) for retention policies and retention label policies are now generally available (GA). The instructions for [configuring an adaptive scope](retention-settings.md#to-configure-an-adaptive-scope) now include more information for SharePoint site scopes: Blog post reference for using custom site properties and how to use the site property SiteTemplate to include or exclude specific site types with the advanced query builder.
- [Policy lookup](retention.md#policy-lookup) in the data lifecycle management solution is now generally available (GA.
- PowerShell alternative to the records management setting that allows users to delete labeled items in SharePoint and OneDrive by using AllowFilesWithKeepLabelToBeDeletedSPO and AllowFilesWithKeepLabelToBeDeletedODB from [Get-PnPTenant](https://pnp.github.io/powershell/cmdlets/Get-PnPTenant.html) and [Set-PnPTenant](https://pnp.github.io/powershell/cmdlets/Set-PnPTenant.html).

### Sensitivity labels

- New guidance [Why choose built-in labeling over the AIP add-in for Office apps](sensitivity-labels-aip.md) if you are using the Azure Information Protection (AIP) unified labeling client for Windows computers. This page includes information about the new private preview for Office apps.
- New settings for [auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange):
  - Additional settings for email to support always applying a matched sensitivity label, and to apply encryption to email received from outside the organization.
  - Exclusions for specific instances (users, groups, sites) are supported by using the new **Excluded** option when the default selection of **All** is specified for **Included**.
- Now in preview: Mobile devices (iOS and Android) support [co-authoring](sensitivity-labels-coauthoring.md) when you have minimum versions and opt in to this preview.
- Support for setting the default sharing link type is extended to individual documents in SharePoint and OneDrive. For more information, see the new article [Use sensitivity labels to configure the default sharing link type for sites and documents in SharePoint and OneDrive]( sensitivity-labels-default-sharing-link.md).
- Teams admin center now supports container labels (sensitivity labels with the scope of Groups & sites).

## January 2022

### Microsoft Purview Data Lifecycle Management

- The documentation for what was formerly Microsoft Information Governance has been substantially revised and restructured to help you more easily find information that relates to the solutions you configure in the Microsoft Purview compliance portal: Data Connectors, Data Lifecycle Management, and Records Management. As part of this revision, the documentation provides a clearer distinction for the retention scenarios for data lifecycle management vs. records management.
- [Learn about data lifecycle management](data-lifecycle-management.md) - new, to support the restructure.
- [Get started with data lifecycle management](get-started-with-data-lifecycle-management.md) - new, to replace "Get started with retention", this article includes getting started steps for all data lifecycle management capabilities, which include retention.
- [Create retention labels for exceptions to your retention policies](create-retention-labels-data-lifecycle-management.md) - new, identified scenario for using retention labels for data lifecycle management rather than records management.
- [Learn about archive mailboxes](archive-mailboxes.md) - new, to support the restructure, contains conceptual information that was previously in the "Enable archive mailboxes" article.

### Microsoft Priva

- [Privacy management is now Microsoft Priva](/privacy/priva/priva-overview) - updated to rebrand the product and its solutions, Priva Privacy Risk Management and Priva Subject Rights Requests.

### Sensitivity labels

- Support for new [role groups and roles](get-started-with-sensitivity-labels.md#permissions-required-to-create-and-manage-sensitivity-labels), now in preview.
- New [monitoring capabilities](apply-sensitivity-label-automatically.md#monitoring-your-auto-labeling-policy) for auto-labeling policies.
- Now rolling out: default label for existing documents, and justification text for Office on the web.
- Announced for the July Semi-Annual Enterprise Channel with version 2202+: Co-authoring and auditing for Outlook.

## December 2021

### Compliance and service assurance

- [Azure, Dynamics 365, and Windows breach notification under the GDPR](/compliance/regulatory/gdpr-breach-notification) - updated to clarify that customers don't need to use a pay service such as Defender for Cloud to receive security and privacy notifications

### eDiscovery

- [eDiscovery (Premium) workflow for content in Microsoft Teams](teams-workflow-in-advanced-ediscovery.md#reference-guide) - updated with a new downloadable quick reference guide for managing Teams content in eDiscovery (Premium)

### Data lifecycle management

- [Enable archive mailboxes in the compliance center](enable-archive-mailboxes.md#run-diagnostics-on-archive-mailboxes) - added section about new diagnostics tool for archive mailboxes
- [Use network upload to import your organization's PST files to Microsoft 365](use-network-upload-to-import-pst-files.md#step-2-upload-your-pst-files-to-microsoft-365) - PST import now supports AzCopy v10
- [Restore an inactive mailbox](restore-an-inactive-mailbox.md) - revised procedure to restore an inactive mailbox by first adding LegacyExchangeDN of inactive mailbox to target mailbox

### Information protection

- [Deploy an information protection solution with Microsoft Purview](information-protection-solution.md) - New step-by-step guidance for customers looking for a prescriptive roadmap to deploy Microsoft Purview Information Protection

### Retention and records management

- New guidance for [How long it takes for retention policies to take effect](create-retention-policies.md#how-long-it-takes-for-retention-policies-to-take-effect)
- New tenant settings rolling out: A records management setting that prevents the editing of properties for labeled SharePoint items that are marked as a record and locked, and other setting to prevent users from unlocking items that are marked as a record

### Sensitivity labels

- Mandatory labeling and a default label for Power BI are now generally available (GA)
