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

The following topics were updated or added to support these new features:​​​​​​​​​​​​​​

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

## February 2021

Here are a few of the changes to Microsoft 365 compliance solutions and content for the month of February.

### Auditing

- **Manage audit log retention policies**. Learn more about the new [Audit retention policies dashboard](/microsoft-365/compliance/audit-log-retention-policies#manage-audit-log-retention-policies-1).
- **Search the audit log**. [Use PowerShell script to search the audit log](/microsoft-365/compliance/audit-log-search-script).

### Data Classification Content Explorer

Content was added or updated in the following topics:

- [Get started with content explorer](/microsoft-365/compliance/data-classification-content-explorer)
- [Data classification release notes](/microsoft-365/compliance/data-classification-pub-preview-relnotes)

### Data loss prevention

Content was added or updated in the following topics:

- [Learn about Endpoint DLP](/microsoft-365/compliance/endpoint-dlp-learn-about)
- [Send email notifications and show policy tips for DLP policies](/microsoft-365/compliance/use-notifications-and-policy-tips)
- [Learn about the Microsoft 365 data loss prevention on-premises scanner](/microsoft-365/compliance/dlp-on-premises-scanner-learn)
- [Get started with the data loss prevention on-premises scanner](/microsoft-365/compliance/dlp-on-premises-scanner-get-started)
- [Create a DLP policy to protect documents with FCI or other properties](/microsoft-365/compliance/protect-documents-that-have-fci-or-other-properties)
- [Using Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-using)
- [Get started with Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-getting-started)

### eDiscovery

Content was added or updated in the following topics:

- [Decryption in Microsoft 365 eDiscovery tools](/microsoft-365/compliance/ediscovery-decryption)
- [Keyword queries and search conditions](/microsoft-365/compliance/keyword-queries-and-search-conditions#limitations-for-searching-sensitive-data-types)
- [Retirement of the Relevance module in Advanced eDiscovery](/microsoft-365/compliance/relevance-module-retirement)
- [Use a script to add users to a hold in a Core eDiscovery case](/microsoft-365/compliance/use-a-script-to-add-users-to-a-hold-in-ediscovery)

### Encryption

Content was added or updated in the following topics:

#### Azure Rights Management Service (RMS)

- [Customer-managed encryption features](/microsoft-365/compliance/office-365-customer-managed-encryption-features)
- [Exchange Online mail encryption with AD RMS](/microsoft-365/compliance/information-rights-management-in-exchange-online). Support for this service has been deprecated. You can no longer use AD RMS in an Exchange hybrid environment. Instead, migrate to Azure RMS.
​​​​
#### Customer Key

- [Customer Key for Microsoft 365 at the tenant level](/microsoft-365/compliance/customer-key-tenant-level)
- [Overview of security and compliance](/microsoftteams/security-compliance-overview)

#### Information Rights Management (IRM)

- [Apply Information Rights Management (IRM) to a list or library](/microsoft-365/compliance/configure-irm-to-use-an-on-premises-ad-rms-server). These national clouds do not support this setting:
  - Microsoft Cloud for US Government
  - Microsoft Cloud Germany
  - Azure and Microsoft 365 operated by 21Vianet in China)
- [Configure IRM to use an on-premises AD RMS server](/microsoft-365/compliance/configure-irm-to-use-an-on-premises-ad-rms-server). Support for this service in an Exchange hybrid environment has been deprecated.

### Sensitive Information Types

Content was added or updated in the following topics:

- [Learn about sensitive information types](/microsoft-365/compliance/sensitive-information-type-learn-about)
- [Create a custom sensitive information type using PowerShell](/microsoft-365/compliance/create-a-custom-sensitive-information-type-in-scc-powershell)
- [Create a custom sensitive information types with Exact Data Match based classification](/microsoft-365/compliance/create-custom-sensitive-information-types-with-exact-data-match-based-classification)
- [Sensitive information type entity definitions](/microsoft-365/compliance/sensitive-information-type-entity-definitions)

### Sensitivity labels

Content was added or updated in the following topics:

- **SharePoint external sharing**. For [container labels](sensitivity-labels-teams-groups-sites.md) the option for external sharing from SharePoint sites is now released as generally available. Additionally, the Microsoft 365 admin center and Planner now support applying these sensitivity labels. 
- **Co-authoring and AutoSave**. Support for [co-authoring and AutoSave](sensitivity-labels-coauthoring.md) for encrypted files is released as preview for testing in non-production tenants.

## January 2021

### Support for card content in Teams

The following Microsoft 365 compliance solutions now support the detection of [card content](/microsoftteams/platform/task-modules-and-cards/what-are-cards) generated through apps in Teams messages:

- **Core and Advanced eDiscovery**. Card content can now be [placed on hold](create-ediscovery-holds.md#preserve-card-content) or included in [searches](/microsoftteams/ediscovery-investigation#search-for-card-content) (applies to content search as well).
- **Audit**. Card activity is now [recorded to the audit log](/microsoftteams/audit-log-events#teams-activities).
- **Retention policies**. Can now use retention policies to [retain and delete card content](retention-policies-teams.md#whats-included-for-retention-and-deletion).

### Information governance and records management

[New assessment](retention-regulatory-requirements.md#new-zealand-public-records-act) to address using information governance and records management to help meet compliance obligations for the New Zealand Public Records Act.

### Sensitivity labels

- Sensitivity labels are now supported for US Government tenants (GCC and GCC-H).
- New [automatic labeling](sensitivity-labels-office-apps.md) support for macOS.

## December 2020

### Spotlight: New content for insider risk solutions

The Microsoft 365 compliance content team is hard at work creating ‘content solution’ docs to promote how compliance capabilities can be used together to help meet your compliance goals.

First up is content that ties together our insider risk solutions: communication compliance, insider risk management, information barriers, and privileged access management. Here’s a peek at what you’ll find:

- [New landing page for insider risk solutions](insider-risk-solution-overview.md). Includes details about risks that the solutions can help mitigate, licensing requirements, deployment sequence, architecture illustrations, training resources, and more.
- New overview articles for each insider risk solution. Guidance and links to articles that help you learn about, plan, deploy, and manage each solution:
  - [Communication compliance](communication-compliance-solution-overview.md)
  - [Insider risk management](insider-risk-management-solution-overview.md)
  - [Information barriers](information-barriers-solution-overview.md)
  - [Privileged access management](privileged-access-management-solution-overview.md)

More content solution docs coming soon!

### Advanced eDiscovery

Improved workflow and functionality for [adding custodians](add-custodians-to-case.md) and [non-custodial data sources](non-custodial-data-sources.md) to an Advanced eDiscovery case.

### Data connectors

[Four new Veritas connectors released](archiving-third-party-data.md#third-party-data-connectors): Redtail Speak, Salesforce Chatter, ServiceNow, and Yieldbroker.

### Encryption

Introducing [Customer Key for Microsoft 365 at the tenant level](customer-key-tenant-level.md). Using keys you provide, you can create a data encryption policy (DEP) and assign it to the tenant. The DEP encrypts data across the tenant for these workloads:

- Teams chat messages (1:1 chats, group chats, meeting chats and channel conversations)
- Teams media messages (images, code snippets, videos, wiki images)
- Teams call and meeting recordings stored in Teams storage
- Teams chat notifications
- Teams chat suggestions by Cortana
- Teams status messages
- User and signal information for Exchange Online

### Records management

The [Records Management admin role group](get-started-with-records-management.md#permissions-required-for-records-management) now grants permissions for all records management features, including disposition review.

### Sensitivity labels

- [Automatically label data in Azure Purview (preview)](/azure/purview/create-sensitivity-label). You can now create and automatically apply sensitivity labels to assets in Azure Purview, such as files in Azure Blob storage and database columns in SQL Server.
- [Require users to apply a label to items](sensitivity-labels-office-apps.md#require-users-to-apply-a-label-to-their-email-and-documents). Also known as ‘mandatory labeling’, this new option requires users to choose and apply a sensitivity label under the specific scenarios.
