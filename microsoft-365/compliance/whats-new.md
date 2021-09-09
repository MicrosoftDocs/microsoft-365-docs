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
localization_priority: Normal
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

## August 2021

### App governance
- [Expanded entries for alert insights](app-governance-anomaly-detection-alerts.md#collection-alerts). New entries were added to describe additional alert insights now available in app governance.

### Communication compliance
- [Communication compliance feature reference](communication-compliance-feature-reference.md) added new preview feature support for modern attachments scanning in Teams private chats and channels.

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
- [Enhancements to auto-labeling policies](apply-sensitivity-label-automatically.md#recent-enhancements-for-auto-labeling-policies) that include higher supported numbers for sites and policies, support for all OneDrive and SharePoint sites and the ability to select available SharePoint sites instead of having to enter each site by URL, and simulation improvements.
- Auto-labeling in Office apps as a sensitivity label setting now [supports Exact Data Match (EDM)](apply-sensitivity-label-automatically.md#custom-sensitive-information-types-with-exact-data-match).
- Default labels are now extended to [Power BI (in preview)](/power-bi/admin/service-security-sensitivity-label-default-label-policy).
- Auditing events for Outlook on the web that [surface in activity explorer](data-classification-activity-explorer-available-events.md) are now fully rolled out, which means that user activity for built-in labels is now available for all Office apps across all platform.
- The [supported capabilities tables](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps) have a new footnote for Windows to clarify that the minimum versions are for the Current Channel, and a tip to more easily compare older versions that omit leading zeros against newer versions.

## July 2021

### Advanced eDiscovery

- [Advanced eDiscovery workflow for content in Microsoft Teams using large cases](teams-workflow-in-advanced-ediscovery.md) added an end-to-end workflow of managing Teams content in Advanced eDiscovery; includes details about the preview of the new conversation transcript functionality.
- [Use large cases in Advanced eDiscovery](advanced-ediscovery-large-cases.md) added a preview of new large case format that extends review set and case limits and supports conversation transcripts for Teams and Yammer chat conversations.

### App governance

- The [app governance add-on for Microsoft Cloud App Security](app-governance-manage-app-governance.md) (MCAS) has gone into public preview. App governance provides monitoring of OAUth-based apps in your M365 tenant and generates alerts for activity that might represent malware or inappropriate levels of permissions.

### Compliance offerings

- [Compliance offerings](/compliance/regulatory/offering-home) changes focusing on applicable service coverage and updates to align more closely with the [Azure offerings](/azure/compliance) for applicable regulations.

### Compliance & service assurance

- [Service assurance](/compliance/) (updated; quarterly review content updates for certifications and statements of applicability)
    - Cloud background checks
    - Employee transfer & termination
    - Governance
    - Human resources
    - Incident management
    - Pre-employment screening
    - Security incident management (SIM)
    - SIM – Containment, eradication, and recovery
    - SIM – Detection & analysis
    - SIM – Post-incident reporting
    - SIM – Preparation
    - Tenant isolation

### Data classification

- [Learn about data classification](data-classification-overview.md). Updated for GA release of discrimination trainable classifier.

### Data loss prevention

- [Learn about Microsoft 365 Endpoint data loss prevention](endpoint-dlp-learn-about.md) added updated guidance on Always audit file activity for devices.
- [Get started with the data loss prevention on-premises scanner](dlp-on-premises-scanner-get-started.md) updated for GA release.
- [Learn about the Microsoft 365 data loss prevention on-premises scanner](dlp-on-premises-scanner-learn.md) updated for GA release.
- [Use the Microsoft 365 data loss prevention on-premises scanner](dlp-on-premises-scanner-use.md) updated for GA release.
- [Use data loss prevention policies for non-Microsoft cloud apps](dlp-use-policies-non-microsoft-cloud-apps.md) updated for GA release and MIP-MCAS integration.

### Insider risk management

- [Investigate insider risk management activities](insider-risk-management-activities.md) added content updates for new User activity reports and new dismiss multiple alerts preview features.
- [Get started with insider risk management settings](insider-risk-management-settings.md) added content updates for new RBAC functionality to choose reviewers for priority user groups preview feature.

### Privacy management

- Microsoft [privacy management](privacy-management.md) has gone into public preview. Privacy management helps your organization understand and manage the personal data in your Microsoft 365 environment, remediate potential privacy risks, and fulfill subject rights requests.

### Retention and records management
- In preview: [Retention policies for Teams](create-retention-policies.md#retention-policy-for-teams-locations) now supports private channels as a new Teams location when you create or edit a retention policy
- Instructions for [importing a file plan](file-plan-manager.md#import-retention-labels-into-your-file-plan) are updated to include regulatory records and dependencies are now listed for each entry

### Sensitive information types

The following pages were added:

- [Custom sensitive information type filters reference](sit-custom-sit-filters.md)
- [Modify a custom sensitive information type using PowerShell](sit-modify-a-custom-sensitive-information-type-in-powershell.md)
- [Remove a custom sensitive information type using PowerShell](sit-remove-a-custom-sensitive-information-type-in-powershell.md)

### Sensitivity labels
- Trainable classifiers are now generally available (GA) for [auto-labeling in Office apps](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps) for Windows and the web (Office Online)
- Mandatory labeling is now extended to [Power BI (in preview)](/power-bi/admin/service-security-sensitivity-label-mandatory-label-policy)
- For [co-authoring for files encrypted with sensitivity labels]( sensitivity-labels-coauthoring.md): Rolling out support for DLP policies that use sensitivity labels as conditions and unencrypted attachments for emails
- Auditing events for Outlook is now available for macOS, iOS, and Android, and rolling out for Outlook on the web

## June 2021

### Customer Key

- [Service encryption with Customer Key](customer-key-overview.md) (Customer Key tenant level DEPs now encrypt sensitivity label configuration for Microsoft Information Protection.)

### Data connectors

- We have released [17 new data connectors in partnership with 17a-4 LLC](archiving-third-party-data.md#17a-4-data-connectors) and [one new connector in partnership with CellTrust](archiving-third-party-data.md#celltrust-data-connectors). We have also released additional data connectors in partnership with [Veritas](archiving-third-party-data.md#veritas-data-connectors) and [TeleMessage](archiving-third-party-data.md#telemessage-data-connectors). To date, this makes a total of 65 available data connectors to import and archive third-party data to Microsoft 365.

### eDiscovery

- [Query and filter content in a review set](review-set-search.md) (new query and filtering capability in a new UX format to filter and search for content in a review set)
- [Tag documents in a review set in Advanced eDiscovery](tagging-documents.md) (new tag functionality and UX to make tagging documents in a review set faster and easier; includes new capability of tagging documents by using a query and using filters to quickly find or exclude review set items based on how an item is tagged)
- [Set up compliance boundaries for eDiscovery investigations](set-up-compliance-boundaries.md) (Microsoft has removed the requirement to contact MS Support to request that a compliance attribute is synced to OneDrive accounts; now a Mailbox search permissions filter is used to enforce the compliance boundaries for OneDrive)

### Sensitivity labels

- The sensitivity label policy wizard now supports [Outlook-specific options for default label and mandatory labeling](sensitivity-labels-office-apps.md#outlook-specific-options-for-default-label-and-mandatory-labeling) as an easier configuration than the (still supported) PowerShell advanced settings.
- Support for [dynamic markings with variables](sensitivity-labels-office-apps.md#dynamic-markings-with-variables ) is now rolling out for Word, Excel, and PowerPoint on the web
- For [auto-labeling policies](apply-sensitivity-label-automatically.md) for Exchange, if the label is configured for encryption, that encryption isn't applied. Additionally for Exchange auto-labeling policies, you can now configure exceptions and the following new conditions: subject, recipient address, or sender address matches patterns; recipient address contains words; sender domain is, recipient is a member of; sender is.
- When you use sensitivity labels with teams, groups, and sites, you can use Set-SPOTenant with the BlockSendLabelMismatchEmail parameter  to prevent the automatically generated email when the audit event **Detected document sensitivity mismatch** is logged.  For more information, see [Auditing sensitivity label activities](sensitivity-labels-teams-groups-sites.md#auditing-sensitivity-label-activities ).
- The [authentication context setting](sensitivity-labels-teams-groups-sites.md#more-information-about-the-dependencies-for-the-authentication-context-option) is now fully rolled out in preview for sensitivity labels. Additionally, this configuration is now supported by Microsoft Teams.
- Files that are labeled and encrypted by a service principle name (such as Microsoft Cloud App Security) and then uploaded to SharePoint and OneDrive can now be opened in Office for the web when you've [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).
- [Co-authoring and AutoSave](sensitivity-labels-coauthoring.md) is no longer restricted to test tenants and now supported in production when you use version 2105: June 18 for Windows, and version 16.50+ for macOS. Note that this feature is still not supported by iOS and Android, and remains in preview.

## May 2021

### Data Loss Prevention

- New guidance for [planning your Data Loss Prevention](dlp-overview-plan-for-dlp.md) strategy.

### Retention and records management

- If you release a retention policy from a SharePoint site or OneDrive account, you no longer have to wait the 30-day grace period before you can delete the site or account. A popular request by customers, this change is now complete for all tenants.
- In preview, **multi-stage disposition review**:  An administrator can now add up to five consecutive stages of [disposition review](disposition.md) for a retention label, and reviewers can add others users to their disposition review stage. You can also customize the email notifications and reminders.

### Sensitive Information Types

- New information added to help you [Modify a Keyword Dictionary](sit-modify-keyword-dictionary.md).

### Sensitivity labels

- In preview, a new setting for **authentication context** is now available when you configure a [sensitivity label for groups and sites](sensitivity-labels-teams-groups-sites.md). This option works in conjunction with Azure AD Conditional Access policies to enforce more stringent conditions when users access SharePoint sites that have the label applied. Make sure you read the [dependencies and limitations](sensitivity-labels-teams-groups-sites.md#more-information-about-the-dependencies-for-the-authentication-context-option) before you configure this setting.
- [Auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange) that are configured just for Exchange now support sensitivity labels that apply encryption with **Let users assign permissions** for the Do Not Forward or Encrypt-Only options.
- [Mandatory labeling](sensitivity-labels-office-apps.md#require-users-to-apply-a-label-to-their-email-and-documents) is now generally available for all Office apps, across all platforms.

## April 2021

### Advanced eDiscovery

- [Limits in Advanced eDiscovery](/microsoft-365/compliance/limits-ediscovery20#export-limits---final-export-out-of-review-set). Organizations can now export up to 5 million items or 500 MB, whichever is smaller, in a single export of items from a review set.

### Data Classification

- [Labeling activities that are available in Activity explorer](/microsoft-365/compliance/data-classification-activity-explorer-available-events)

### Data connectors

- [Set up a connector to archive Cisco Jabber on Oracle data](/microsoft-365/compliance/archive-ciscojabberonoracle-data)
- [Set up a connector to archive Cisco Jabber on PostgreSQL data](/microsoft-365/compliance/archive-ciscojabberonpostgresql-data)

### Data Loss Prevention

- New topic for [Data loss prevention policy tips reference](/microsoft-365/compliance/dlp-policy-tips-reference).
- New topic for [Learn about data loss prevention](/microsoft-365/compliance/dlp-learn-about-dlp).
- New topic for [Get started with the data loss prevention alert dashboard](/microsoft-365/compliance/dlp-alerts-dashboard-get-started).

### Retention policies and retention label policies

- The Microsoft 365 Groups location now supports applying the retention settings to just Microsoft 365 mailboxes or just the connected SharePoint sites by using the [Set-RetentionCompliancePolicy PowerShell](/powershell/module/exchange/set-retentioncompliancepolicy) cmdlet with the *Applications* parameter.

### Sensitivity labels

Outlook releases and updates:

- [Different settings for the default label and mandatory labeling](sensitivity-labels-office-apps.md#outlook-specific-options-for-default-label-and-mandatory-labeling) are now supported for built-in labeling. Previously, these settings were supported only by the AIP unified labeling client.
- [Encrypt-Only](encryption-sensitivity-labels.md#let-users-assign-permissions) is now supported by macOS, iOS, and Android.
- [Mandatory labeling](sensitivity-labels-office-apps.md#require-users-to-apply-a-label-to-their-email-and-documents) is rolling out to the remaining platforms.
- [Dynamic markings with all variables](sensitivity-labels-office-apps.md#dynamic-markings-with-variables) are supported across all Outlook clients.

## March 2021

Here are a few of the changes to Microsoft 365 compliance solutions and content for the month of March.

### Advanced eDiscovery

- **Advanced eDiscovery collections** now supports the [new collections tool and workflow](/microsoft-365/compliance/collections-overview). Other new topics include [create a draft collection](/microsoft-365/compliance/create-draft-collection), [commit a draft collection to a review set](/microsoft-365/compliance/commit-draft-collection), and [collection statistics and reports](/microsoft-365/compliance/collection-statistics-reports).
- **Export documents** in a review set to an [Azure Storage](/microsoft-365/compliance/download-export-jobs) account.
- **Predictive coding module for Advanced eDiscovery**. First look at the new [predictive coding](/microsoft-365/compliance/predictive-coding-overview) functionality that replaces the retired Relevance module.

### Data classification

- **Data classification explorer**. [Get started](/microsoft-365/compliance/data-classification-activity-explorer) with data classification explorer.

### Data connectors

- **Private keys**. Support for private keys has been added to [Bloomberg Message](/microsoft-365/compliance/archive-bloomberg-message-data#set-up-a-connector-using-public-keys) data, [ICE Chat](/microsoft-365/compliance/archive-icechat-data#set-up-a-connector-using-public-keys) data, and [Instant Bloomberg](/microsoft-365/compliance/archive-instant-bloomberg-data#set-up-a-connector-using-public-keys) data connectors.

### Data loss prevention

- **Microsoft Teams support**. Data loss prevention support extended to [Microsoft Teams](/microsoft-365/compliance/dlp-teams-default-policy).
- **Microsoft Compliance extension**. Get started with the [Microsoft Compliance extension](/microsoft-365/compliance/dlp-chrome-get-started).

### Encryption

- **Customer Key for Microsoft 365**. [Overview of the Customer Key](/microsoft-365/compliance/customer-key-tenant-level) for Microsoft 365 at the tenant level (public preview).
- **Double Key Encryption**. Learn more about [enabling support for labeled and protected documents](/microsoft-365/compliance/double-key-encryption) in SharePoint and OneDrive for Business.

### Insider risk management

The following insider risk management feature updates were released for public preview in March:

- New analytics feature for identifying risks before creating insider risk policies
- New risk activity sequence detection support and management
- New cumulative exfiltration detection support
- New in-app policy health reporting and recommendation support
- New auditing log feature and reporting
- Enhancements to the policy creation wizard
- Content explorer updates
- New user management process/support (add/remove users from policies)
- New support for AAD integration (departing user policy support)
- Updated domain support in policies (REGEX)
- Policy template enhancements and improvements

The following topics were updated or added to support these new features:

- [Learn about insider risk management](/microsoft-365/compliance/insider-risk-management)
- [Plan for insider risk management](/microsoft-365/compliance/insider-risk-management-plan)
- [Get started with insider risk management settings](/microsoft-365/compliance/insider-risk-management-settings)
- [Get started with insider risk management](/microsoft-365/compliance/insider-risk-management-configure)
- [Create and manage insider risk policies](/microsoft-365/compliance/insider-risk-management-policies)
- [Investigate insider risk alerts](/microsoft-365/compliance/insider-risk-management-alerts)
- [Take action on insider risk cases](/microsoft-365/compliance/insider-risk-management-cases)
- [Review activities with the insider risk audit log](/microsoft-365/compliance/insider-risk-management-audit-log)
- [Review data with the insider risk content explorer](/microsoft-365/compliance/insider-risk-management-content-explorer)
- [Manage the workflow with the Users Dashboard](/microsoft-365/compliance/insider-risk-management-users)

### Records management

- **File plan improvements**. An update to [file plan](file-plan-manager.md) removes or improves the previous length restrictions for import.
- **Delete retention labels for records**. A preview release supports the ability to [delete retention labels](create-apply-retention-labels.md#deleting-retention-labels) that mark items as records.

### Sensitive information types

Content was added or updated in the following topics:

- [Get started with custom sensitive information type](/microsoft-365/compliance/create-a-custom-sensitive-information-type)
- [Learn about sensitive information types](/microsoft-365/compliance/sensitive-information-type-learn-about)
- [Create custom sensitive information types with Exact Data Match based classification](/microsoft-365/compliance/create-custom-sensitive-information-types-with-exact-data-match-based-classification)
- [Create notifications for exact data match activities](/microsoft-365/compliance/sit-edm-notifications-activities)
- [Sensitive Information Type entity definitions](/microsoft-365/compliance/sensitive-information-type-entity-definitions)
- [Create a Custom Sensitive Information Type using PowerShell](/microsoft-365/compliance/create-a-custom-sensitive-information-type-in-scc-powershell)
- [Create a keyword dictionary](/microsoft-365/compliance/create-a-keyword-dictionary)

### Sensitivity labels

- **DoD support**. Support for US government tenants with DoD environments.
- **Encrypt-Only for Outlook**. Encryption options for Outlook now include Encrypt-Only when you select [Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions).
- **Enforcing built-in labels in Office apps**. Updated [guidance](sensitivity-labels-office-apps.md#office-built-in-labeling-client-and-the-azure-information-protection-client) how to enforce built-in labels in Office apps when you have the Azure Information Protection unified labeling client installed.
