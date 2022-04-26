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

## April 2022

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

### Data Classification

- [Get Started with Content Explorer](data-classification-content-explorer.md) - Teams guidance added, licensing section pointed to service descriptions.

### Data Loss Prevention

- [Data loss prevention and Microsoft Teams](dlp-microsoft-teams.md) - Public preview of Share Teams Channels content.
- [Get started with the Microsoft Compliance Extension](dlp-chrome-get-started.md) - public preview of restricted app groups, remove registry key instructions, configuration now enabled by default.
- [Configure endpoint data loss prevention settings](dlp-configure-endpoint-settings.md) - new for public preview of restricted app groups.
- [Data loss prevention policy reference](dlp-policy-reference.md) - updated for public preview of restricted app groups.
- [Get started with data loss prevention for Power BI](dlp-powerbi-get-started.md) - new for public preview.

### Information governance and records management

- [Retention policies for Yammer](create-retention-policies.md#retention-policy-for-yammer-locations) are now generally available (GA).
- Support for shared channels, currently in preview. When you configure a retention policy for the Teams channel message location, any shared channels inherit retention settings from their parent team.
- [Per-tenant limits for content disposition](retention-limits.md#maximum-number-of-items-for-disposition).

### Insider risk management

- [Get started with insider risk management](insider-risk-management-configure.md) - added new tasks for the Recommended actions guidance.
- [Get started with insider risk management settings](insider-risk-management-settings.md) - new updates for the notification and email alerts features, new updates for analytics notifications.

### Microsoft Information Protection

- [Support for double byte character set release notes](mip-dbcs-relnotes.md) - added guidance for macOS.

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
- PowerShell alternative to the records management setting that allows users to delete labeled items in SharePoint and OneDrive by using AllowFilesWithKeepLabelToBeDeletedSPO and AllowFilesWithKeepLabelToBeDeletedODB from [Get-PnPTenant](/powershell/module/sharepoint-pnp/get-pnptenant) and [Set-PnPTenant]( /powershell/module/sharepoint-pnp/set-pnptenant).

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
- Now rolling out: default label for existing documents in Current Channel (Preview), and justification text for Office on the web.
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

## November 2021

### Compliance Manager

New content updates can be viewed in [What's new in Microsoft Purview Compliance Manager](compliance-manager-whats-new.md).

### Device Onboarding

The following articles were added for device onboarding:

- [Onboard macOS devices into Microsoft 365 overview (preview)](device-onboarding-macos-overview.md)
- [Onboard and offboard macOS devices into Microsoft Purview solutions using Intune (preview)](device-onboarding-offboarding-macos-intune.md)
- [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-intune-mde.md)
- [Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro (preview)](device-onboarding-offboarding-macos-jamfpro.md)
- [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-jamfpro-mde.md)

### eDiscovery

- [Use the new case format in eDiscovery (Premium)](advanced-ediscovery-new-case-format.md) new case format was released to general availability and renamed from "large case format"

### Retention and records management
- Rolling out: New record management settings that control whether labeled items in SharePoint and OneDrive can be deleted by users. Previously, retention labels configured to retain content and that didn't mark items as records prevented users from deleting labeled content in SharePoint when this action was allowed in OneDrive. For more information, see [How retention works for SharePoint and OneDrive](retention-policies-sharepoint.md#how-retention-works-for-sharepoint-and-onedrive).

### Sensitive Information Types

Added the following new articles:

- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)
- [Get started with exact data match based sensitive information types](sit-get-started-exact-data-match-based-sits-overview.md)
- [Export source data for exact data match based sensitive information type](sit-get-started-exact-data-match-export-data.md)
- [Create the schema for exact data match based sensitive information types](sit-get-started-exact-data-match-create-schema.md)
- [Hash and upload the sensitive information source table for exact data match sensitive information types](sit-get-started-exact-data-match-hash-upload.md)
- [Create exact data match sensitive information type/rule package](sit-get-started-exact-data-match-create-rule-package.md)
- [Test an exact data match sensitive information type](sit-get-started-exact-data-match-test.md)
- [Manage your exact data match schema](sit-use-exact-data-manage-schema.md)
- [Refresh your sensitive information source table file](sit-use-exact-data-refresh-data.md)

### Sensitivity labels
- The scope name for [Microsoft Purview Data Map labels](/azure/purview/create-sensitivity-label) is now "Schematized data assets".

## October 2021

### App governance

- [App governance add-on for Defender for Cloud Apps has released to general availability](/cloud-app-security/app-governance-manage-app-governance). App governance documentation has moved to join the Defender for Cloud Apps documentation.

### Compliance & service assurance

- [Service assurance](/compliance) - quarterly review content updates for certifications and statements of applicability)
Datacenter asset management
  - Datacenter architecture and infrastructure
  - Datacenter business continuity and disaster recovery
  - Datacenter environmental safeguards
  - Datacenter physical access security
  - Microsoft 365 SDL compliance program
  - Microsoft 365 service engineer access control
  - Risk assessment guide for MS Cloud

### Data Loss Prevention

- [Learn about Microsoft Purview Data Loss Prevention](endpoint-dlp-learn-about.md) was updated for macOS support and advanced classification; updated for creating a custom DLP policy to audit activity for all supported file types.
- [Get started with Microsoft 365 Endpoint data loss prevention](endpoint-dlp-getting-started.md) was updated for macOS support and advanced classification.
- [Using Endpoint data loss prevention](endpoint-dlp-using.md) was updated for macOS support and advanced classification.
- [Data Loss Prevention policy tips reference](dlp-policy-tips-reference.md) was updated for macOS support and advanced classification.
- [Onboard macOS devices into Microsoft 365 (preview)](device-onboarding-macos-overview.md) was updated for macOS support and advanced classification.
- Added the following new pages for onboarding devices:
  - [Onboard and offboard macOS devices into Microsoft Purview solutions using Intune (preview)](device-onboarding-offboarding-macos-intune.md)
  - [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-intune-mde.md)
  - [Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro (preview)](device-onboarding-offboarding-macos-jamfpro.md)
  - [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-jamfpro-mde.md)

### eDiscovery

- [Collect cloud attachments in eDiscovery (Premium)](advanced-ediscovery-cloud-attachments.md) in addition to collecting the latest version of a cloud attachment, you can collect the version that was shared in an email message or Teams chat conversation; collecting the shared version is made possible by the new capability of automatically applying a retention label to cloud attachments.
- [Set up historical versions in eDiscovery (Premium)](advanced-ediscovery-historical-versions.md) new functionality that indexes all versions of documents stored on a SharePoint site for search; this means that document versions that contain content that match a collection query are returned in the search results.

### Encryption

- [Use end-to-end encryption for one-to-one Microsoft Teams calls (Public preview)](/microsoftteams/teams-end-to-end-encryption) New content for the public preview.

### Data lifecycle management

- [Set up a connector to import Epic EHR audit data](import-epic-data.md) new connector lets you import data from Epic electronic healthcare records system to support new general patient data misuse scenario for insider risk management.
- [Set up a connector to import healthcare EHR audit data](import-healthcare-data.md) new connector lets you import data from an electronic healthcare records system to support new general patient data misuse scenario for insider risk management.

### Retention and records management
- [Adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention) are released in preview for retention policies and retention label policies.
- You can now [automatically apply a retention label based on a sensitivity label](apply-retention-labels-automatically.md#identify-files-and-emails-that-have-a-sensitivity-label).
- File Plan has a new [import process](file-plan-manager.md#import-retention-labels-into-your-file-plan).
- [Common settings for retention policies and retention label policies](retention-settings.md): New article for detailed information about configuring adaptive scopes and other settings in both retention policies and retention label policies.

### Sensitive Information Types

- [Learn about named entities (preview)](named-entities-learn.md) new content for named entities.
- [Use named entities in your data loss prevention policies (preview)](named-entities-use.md) new content on using named entities.

### Sensitivity labels

- [Default labels and default policies](mip-easy-trials.md) are rolling out to eligible customers.

## September 2021

### App governance

- [Streamlined app governance get started information](app-governance-get-started.md) has a changed workflow and added new links to public preview signup
- [New detection alerts definition](app-governance-anomaly-detection-alerts.md#app-made-high-volume-of-importance-mail-read-and-created-inbox-rule) added (updated; added new definition for collection alerts)

### Auditing

- [Turn auditing on or off](turn-audit-log-search-on-or-off.md) added new section about how changes to the auditing status in an organization are themselves audited; this means that audit records are logged when auditing is turned on or turned off; you can search the Exchange admin audit log for these audit records

### Communication compliance

- [Communication compliance with SIEM solutions](communication-compliance-siem.md) guidance for communication compliance integration with SIEM solutions)

### Compliance offerings

- [Multi-Tier Cloud Security (MTCS)](/compliance/regulatory/offering-mtcs-singapore) Standard for Singapore updates for Dynamics 365 coverage
- [Payment Card Industry (PCI)](/compliance/regulatory/offering-pci-dss) Data Security Standard (DSS) updates for SharePoint Online coverage
- [U.S. Section 508](/compliance/regulatory/offering-section-508-vpats) new client software guidance
- [Web Content Accessibility Guidelines](/compliance/regulatory/offering-wcag-2-1) new client software guidance

### Compliance & service assurance

- [Service assurance](/compliance/) quarterly review content updates for certifications and statements of applicability
  - Data-bearing device destruction
  - DDOS attacks

### Data connectors

- [Archiving third-party data in Microsoft 365](archiving-third-party-data.md#data-connectors-in-the-us-government-cloud) data connectors from CellTrust and 17a-4 LLC now available in GCC organizations in the US Government cloud
- [Set up a connector to archive YouTube data](archive-youtube-data.md) provides new guidance for this feature in public preview.

### eDiscovery

- [Use the KQL editor to build search queries](ediscovery-kql-editor.md) public preview of a new way to create search queries in Content search, eDiscovery (Standard), and eDiscovery (Premium); the KQL editor provides autocompletion for supported searchable properties and conditions and displays lists of supported values for standard properties and conditions; the KQL editor also provides error detection and suggestions for fixes of potential errors in search queries

### Information barriers

- [Get started with information barriers](information-barriers-policies.md#step-6-information-barriers-modes) new preview feature for information barriers modes
- [Information barriers with Microsoft Teams](/microsoftteams/information-barriers-in-teams) new preview feature for information barriers modes
- [Information barriers with OneDrive](/onedrive/information-barriers) new preview feature for information barriers modes
- [Information barriers with SharePoint Online](/sharepoint/information-barriers) new preview feature for information barriers modes

### Insider risk management

- [Get started with insider risk management](insider-risk-management-configure.md#recommended-actions-preview) new preview feature for getting started recommended actions
- [Investigate insider risk activities](insider-risk-management-activities.md#get-help-managing-your-insider-risk-alert-queue) new 'Get help managing your insider risk alert queue' guidance section
- [Get started with insider risk management settings](insider-risk-management-settings.md#admin-notifications) new Admin notifications settings preview feature

### Retention and records management
- [Multi-staged disposition review](disposition.md) is now generally available (GA), with new [auditing events](search-the-audit-log-in-security-and-compliance.md#disposition-review-activities). Multi-staged disposition review lets you specify up to five consecutive stages of disposition review for a retention label, and reviewers can add others users to their disposition review stage. You can also customize the email notifications and reminders.
- Private channels for [Teams retention policies](create-retention-policies.md#retention-policy-for-teams-locations) is now generally available (GA).

### Sensitivity labels
- [Co-authoring and AutoSave](sensitivity-labels-coauthoring.md) is now generally available (GA) for Windows (minimum version of 2107 from Current Channel or Monthly Enterprise Channel) and macOS (minimum version of 16.51).
- Rolling out for Office apps that use built-in labels: The default label setting now supports existing documents as well as new documents. This change in behavior provides parity with the Azure Information Protection unified labeling client. For more information about the rollout per app and minimum versions, see the [capabilities table](sensitivity-labels-office-apps.md#sensitivity-label-capabilities-in-word-excel-and-powerpoint) for Word, Excel, and PowerPoint.
- Container labels now support [default sharing link settings by using PowerShell advanced settings](sensitivity-labels-teams-groups-sites.md#configure-settings-for-the-default-sharing-link-type-for-a-site-by-using-powershell-advanced-settings).
- The [capabilities tables](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps) that list the minimum supported versions for built-in labeling now have versions for Current Channel, the Monthly Enterprise Channel, and the Semi-Annual Enterprise Channel.
