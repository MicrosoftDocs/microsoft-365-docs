---
title: What's new in Microsoft 365 compliance
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

# What's new in Microsoft 365 compliance

Whether it be adding new solutions to the [Microsoft 365 compliance center](microsoft-365-compliance-center.md), updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft 365 helps you stay on top of the ever-changing compliance landscape. Take a look below to see what’s new in Microsoft 365 compliance today.

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

## January 2022

### Microsoft Information Governance

- The [Microsoft Information Governance in Microsoft 365](manage-information-governance.md) page and section of the documentation is substantially revised and restructured to help you more easily find information that relates to the solutions you configure in the Microsoft 365 compliance center: Data Connectors, Information Governance, and Records Management. As part of this revision, the documentation provides a clearer distinction for the retention scenarios for information governance vs. records management.
- [Learn about information governance](information-governance.md) - new, to support the restructure.
- [Get started with information governance](get-started-with-information-governance.md) - new, to replace "Get started with retention", this article includes getting started steps for all information governance capabilities, which include retention.
- [Create retention labels for exceptions to your retention policies](create-retention-labels-information-governance.md) - new, identified scenario for using retention labels for information governance rather than records management.
- [Learn about archive mailboxes](archive-mailboxes.md) - new, to support the restructure, contains conceptual information that was previously in Enable archive mailboxes.

### Microsoft Priva

- [Privacy management is now Microsoft Priva](/privacy/priva/priva-overview) - updated to rebrand the product and its solutions, Priva Privacy Risk Management and Priva Subject Rights Requests.

### Sensitivity labels

- Support for the new [MIP role groups and roles](get-started-with-sensitivity-labels.md#permissions-required-to-create-and-manage-sensitivity-labels), now in preview.
- New [monitoring capabilities](apply-sensitivity-label-automatically.md#monitoring-your-auto-labeling-policy) for auto-labeling policies.
- Now rolling out: default label for existing documents in Current Channel (Preview), and justification text for Office on the web.
- Announced for the July Semi-Annual Enterprise Channel with version 2202+: Co-authoring and auditing for Outlook.

## December 2021

### Compliance and service assurance

- [Azure, Dynamics 365, and Windows breach notification under the GDPR](/compliance/regulatory/gdpr-breach-notification) - updated to clarify that customers don't need to use a pay service such as Defender for Cloud to receive security and privacy notifications

### eDiscovery

- [Advanced eDiscovery workflow for content in Microsoft Teams](teams-workflow-in-advanced-ediscovery.md#reference-guide) - updated with a new downloadable quick reference guide for managing Teams content in Advanced eDiscovery

### Information governance

- [Enable archive mailboxes in the compliance center](enable-archive-mailboxes.md#run-diagnostics-on-archive-mailboxes) - added section about new diagnostics tool for archive mailboxes
- [Use network upload to import your organization's PST files to Microsoft 365](use-network-upload-to-import-pst-files.md#step-2-upload-your-pst-files-to-microsoft-365) - PST import now supports AzCopy v10
- [Restore an inactive mailbox](restore-an-inactive-mailbox.md) - revised procedure to restore an inactive mailbox by first adding LegacyExchangeDN of inactive mailbox to target mailbox

### Information protection

- [Deploy a MIP solution](information-protection-solution.md) - New step-by-step guidance for customers looking for a prescriptive roadmap to deploy Microsoft Information Protection (MIP)

### Retention and records management

- New guidance for [How long it takes for retention policies to take effect](create-retention-policies.md#how-long-it-takes-for-retention-policies-to-take-effect)
- New tenant settings rolling out: A records management setting that prevents the editing of properties for labeled SharePoint items that are marked as a record and locked, and other setting to prevent users from unlocking items that are marked as a record

### Sensitivity labels

- Mandatory labeling and a default label for Power BI are now generally available (GA)

## November 2021

### Compliance Manager

New content updates can be viewed in [What's new in Microsoft Compliance Manager](compliance-manager-whats-new.md).

### Device Onboarding

The following articles were added for device onboarding:

- [Onboard macOS devices into Microsoft 365 overview (preview)](device-onboarding-macos-overview.md)
- [Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Intune (preview)](device-onboarding-offboarding-macos-intune.md)
- [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-intune-mde.md)
- [Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using JAMF Pro (preview)](device-onboarding-offboarding-macos-jamfpro.md)
- [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-jamfpro-mde.md)

### eDiscovery

- [Use the new case format in Advanced eDiscovery](advanced-ediscovery-new-case-format.md) new case format was released to general availability and renamed from "large case format"

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
- The scope name for [Azure Purview labels](/azure/purview/create-sensitivity-label) is now "Schematized data assets".

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

- [Learn about Data Loss Prevention](endpoint-dlp-learn-about.md) was updated for macOS support and advanced classification; updated for creating a custom DLP policy to audit activity for all supported file types.
- [Get started with Microsoft 365 Endpoint data loss prevention](endpoint-dlp-getting-started.md) was updated for macOS support and advanced classification.
- [Using Endpoint data loss prevention](endpoint-dlp-using.md) was updated for macOS support and advanced classification.
- [Data Loss Prevention policy tips reference](dlp-policy-tips-reference.md) was updated for macOS support and advanced classification.
- [Onboard macOS devices into Microsoft 365 (preview)](device-onboarding-macos-overview.md) was updated for macOS support and advanced classification.
- Added the following new pages for onboarding devices:
  - [Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Intune (preview)](device-onboarding-offboarding-macos-intune.md)
  - [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-intune-mde.md)
  - [Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using JAMF Pro (preview)](device-onboarding-offboarding-macos-jamfpro.md)
  - [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-jamfpro-mde.md)

### eDiscovery

- [Collect cloud attachments in Advanced eDiscovery](advanced-ediscovery-cloud-attachments.md) in addition to collecting the latest version of a cloud attachment, you can collect the version that was shared in an email message or Teams chat conversation; collecting the shared version is made possible by the new capability of automatically applying a retention label to cloud attachments.
- [Set up historical versions in Advanced eDiscovery](advanced-ediscovery-historical-versions.md) new functionality that indexes all versions of documents stored on a SharePoint site for search; this means that document versions that contain content that match a collection query are returned in the search results.

### Encryption

- [Use end-to-end encryption for one-to-one Microsoft Teams calls (Public preview)](/microsoftteams/teams-end-to-end-encryption) New content for the public preview.

### Information governance

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

- [Use the KQL editor to build search queries](ediscovery-kql-editor.md) public preview of a new way to create search queries in Content search, Core eDiscovery, and Advanced eDiscovery; the KQL editor provides autocompletion for supported searchable properties and conditions and displays lists of supported values for standard properties and conditions; the KQL editor also provides error detection and suggestions for fixes of potential errors in search queries

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
- Container labels now support [default sharing link settings by using PowerShell advanced settings](sensitivity-labels-teams-groups-sites.md#configure-settings-for-the-default-sharing-link-for-a-site-by-using-powershell-advanced-settings).
- The [capabilities tables](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps) that list the minimum supported versions for built-in labeling now have versions for Current Channel, the Monthly Enterprise Channel, and the Semi-Annual Enterprise Channel.

## August 2021

### App governance
- [Expanded entries for alert insights](app-governance-anomaly-detection-alerts.md#collection-alerts). New entries were added to describe additional alert insights now available in app governance.

### Communication compliance
- [Communication compliance channels](communication-compliance-channels.md) added new preview feature support for modern attachments scanning in Teams private chats and channels.

### Compliance & service assurance

- [Service assurance](/compliance/) has been updated with quarterly review content updates for certifications and statements of applicability:
  - Architecture
  - Audit logging
  - Encryption and key management
  - Identity and access management
  - Microsoft 365 access management
  - Network security
  - Privacy
  - Resiliency and continuity
  - Risk management
  - Security development and operation
  - Security monitoring
  - Supplier management
  - Vulnerability management

### Data Loss Prevention

- [Data loss prevention policy reference](dlp-policy-reference.md). Added a new policy reference page to assist you in creating policies.

### Insider risk management
- [Learn about and configure insider risk management browser signal detection](insider-risk-management-browser-support.md). Preview feature for configuring browser signal detection for Edge and Chrome browsers.

### Retention and records management
- [Flowchart to determine when an item will be retained or permanently deleted](retention-flowchart.md) to supplement the concepts and examples for the principles of retention.

### Sensitivity labels
- [Enhancements to auto-labeling policies](apply-sensitivity-label-automatically.md) that include higher supported numbers for sites and policies, support for all OneDrive and SharePoint sites and the ability to select available SharePoint sites instead of having to enter each site by URL, and simulation improvements.
- Auto-labeling in Office apps as a sensitivity label setting now [supports Exact Data Match (EDM)](apply-sensitivity-label-automatically.md#custom-sensitive-information-types-with-exact-data-match).
- Default labels are now extended to [Power BI (in preview)](/power-bi/admin/service-security-sensitivity-label-default-label-policy).
- Auditing events for Outlook on the web that [surface in activity explorer](data-classification-activity-explorer-available-events.md) are now fully rolled out, which means that user activity for built-in labels is now available for all Office apps across all platform.
- The [supported capabilities tables](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps) have a new footnote for Windows to clarify that the minimum versions are for the Current Channel, and a tip to more easily compare older versions that omit leading zeros against newer versions.
