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

## September 2021

### App governance

- [Streamlined app governance get started information](https://docs.microsoft.com/microsoft-365/compliance/app-governance-get-started) has a changed workflow and added new links to public preview signup
- [New detection alerts definition](https://docs.microsoft.com/microsoft-365/compliance/app-governance-anomaly-detection-alerts#app-made-high-volume-of-importance-mail-read-and-created-inbox-rule) added (updated; added new definition for collection alerts)

### Auditing

- [Turn auditing on or off](turn-audit-log-search-on-or-off.md) added new section about how changes to the auditing status in an organization are themselves audited; this means that audit records are logged when auditing is turned on or turned off; you can search the Exchange admin audit log for these audit records

### Data connectors

- [Archiving third-party data in Microsoft 365](archiving-third-party-data#data-connectors-in-the-us-government-cloud.md) data connectors from CellTrust and 17a-4 LLC now available in GCC organizations in the US Government cloud
- [Set up a connector to archive YouTube data](archive-youtube-data.md) provides new guidance for this feature in public preview.

### eDiscovery

- [Use the KQL editor to build search queries](ediscovery-kql-editor.md) public preview of a new way to create search queries in Content search, Core eDiscovery, and Advanced eDiscovery; the KQL editor provides autocompletion for supported searchable properties and conditions and displays lists of supported values for standard properties and conditions; the KQL editor also provides error detection and suggestions for fixes of potential errors in search queries
- [Decryption in Microsoft 365 eDiscovery tools](ediscovery-decryption.md#decryption-limitations-with-email-attachments) new section on decryption limitations and workarounds for email attachments
- Partially indexed items in eDiscovery (updated; added new section with procedure to exclude unindexed items that fall outside of a date range when exporting search results; this is a workaround to a limitation in Content search and Core eDiscovery where you can't exclude partially indexed items by date range)

### Retention and records management
- [Multi-staged disposition review](disposition.md) is now generally available (GA), with new [auditing events](search-the-audit-log-in-security-and-compliance.md#disposition-review-activities). Multi-staged disposition review lets you specify up to five consecutive stages of disposition review for a retention label, and reviewers can add others users to their disposition review stage. You can also customize the email notifications and reminders.
- Private channels for [Teams retention policies](create-retention-policies#retention-policy-for-teams-locations.md) is now generally available (GA).

### Sensitivity labels
- [Co-authoring and AutoSave](sensitivity-labels-coauthoring.md) is now generally available (GA) for Windows (minimum version of 2107 from Current Channel or Monthly Enterprise Channel) and macOS (minimum version of 16.51).
- Rolling out for Office apps that use built-in labels: The default label setting now supports existing documents as well as new documents. This change in behavior provides parity with the Azure Information Protection unified labeling client. For more information about the rollout per app and minimum versions, see the [capabilities table](sensitivity-labels-office-apps.md#sensitivity-label-capabilities-in-word-excel-and-powerpoint) for Word, Excel, and PowerPoint.
- Container labels now support [default sharing link settings by using PowerShell advanced settings](sensitivity-labels-teams-groups-sites.md#configure-settings-for-the-default-sharing-link-for-a-site-by-using-powershell-advanced-settings).
- The [capabilities tables](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps) that list the minimum supported versions for built-in labeling now have versions for Current Channel, the Monthly Enterprise Channel, and the Semi-Annual Enterprise Channel.

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
- When you use sensitivity labels with teams, groups, and sites, you can use Set-SPOTenant with the BlockSendLabelMismatchEmail parameter  to prevent the automatically generated email when the audit event **Detected document sensitivity mismatch** is logged.  For more information, see [Auditing sensitivity label activities](sensitivity-labels-teams-groups-sites.md#auditing-sensitivity-label-activities).
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

