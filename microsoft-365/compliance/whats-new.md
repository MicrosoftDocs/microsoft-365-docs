---
title: What's new in Microsoft 365 compliance
f1.keywords:
- NOCSH
ms.author: brendonb
author: brendonb
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
> Interested in what's going on in other admin centers? Check out these articles:<br>[What's new in the Microsoft 365 admin center](/office365/admin/whats-new-in-preview)<br>[What's new in the SharePoint admin center](/sharepoint/what-s-new-in-admin-center)<br>[What's new in Microsoft 365 Defender](../security/defender/whats-new.md)<br><br>
And visit the [Microsoft 365 Roadmap](https://www.microsoft.com/en-us/microsoft-365/roadmap) to learn about Microsoft 365 features that were launched, are rolling out, are in development, have been cancelled, or previously released.

## March 2021

Here are a few of the changes to Microsoft 365 compliance solutions and content for the month of March.

### Advanced eDiscovery

- **Advanced eDiscovery collections** now supports the [new collections tool and workflow](https://docs.microsoft.com/microsoft-365/compliance/collections-overview).
- **Export documents** in a review set to an [Azure Storage](https://docs.microsoft.com/microsoft-365/compliance/download-export-jobs) account.
- **Predictive coding module for Advanced eDiscovery**. First look at the new [predictive coding](https://docs.microsoft.com/microsoft-365/compliance/predictive-coding-overview) functionality that replaces the retired Relevance module.

### Data connectors

- **Private keys** support has been added to [Bloomberg Message](https://docs.microsoft.com/microsoft-365/compliance/archive-bloomberg-message-data#set-up-a-connector-using-public-keys) data, [ICE Chat](https://docs.microsoft.com/microsoft-365/compliance/archive-icechat-data#set-up-a-connector-using-public-keys) data, and [Instant Bloomberg](https://docs.microsoft.com/microsoft-365/compliance/archive-instant-bloomberg-data#set-up-a-connector-using-public-keys) data connectors.

### Data loss prevention

- **Microsoft Teams support**. Data loss prevention support extended to [Microsoft Teams](https://docs.microsoft.com/microsoft-365/compliance/dlp-teams-default-policy).
- **Microsoft Compliance extension**. Get started with the [Microsoft Compliance extension](https://docs.microsoft.com/microsoft-365/compliance/dlp-chrome-get-started).

### Sensitivity labels

- **Apply encryption using sensitivity labels**. Restrict access to content by using sensitivity labels, including the new [Encrypt-Only label](https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#double-key-encryption).

## February 2021

Here are a few of the changes to Microsoft 365 compliance solutions and content for the month of February.

### Audit retention policies

- **Manage audit log retention policies**. Learn more about the new [Audit retention policies dashboard](https://docs.microsoft.com/microsoft-365/compliance/audit-log-retention-policies#manage-audit-log-retention-policies-1).

### Sensitivity labels

- [**External sharing for SharePoint sites with sensitivity labels**](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels-teams-groups-sites#using-sensitivity-labels-for-microsoft-teams-microsoft-365-groups-and-sharepoint-sites). The option for external sharing from SharePoint sites is now released as generally available. Additionally, the Microsoft 365 admin center and Planner now support applying sensitivity labels that are configured for Microsoft Teams, Microsoft 365 groups, and SharePoint sites.
-  **Co-authoring for sensitivity labels**. New [changes to metadata](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels-coauthoring#metadata-changes-for-sensitivity-labels) have been made to support co-authoring.

### Data loss prevention

- **On-premises scanner**. The Microsoft 365 data loss prevention on-premises scanner is in preview. [Learn about the on-premises data loss prevention scanner](https://docs.microsoft.com/microsoft-365/compliance/dlp-on-premises-scanner-learn), and [get started](https://docs.microsoft.com/microsoft-365/compliance/dlp-on-premises-scanner-get-started) using the scanner.

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

## November 2020
Just a reminder that we often release new and updated features in a preview state to learn how they're being used so we can hone and improve them before releasing to general availability. Your feedback is critical during preview (and beyond), so be sure to let us know what you think by opening the Feedback card at the bottom right of the compliance center.

![feedback](../media/Feedback_card_MCC.JPG)

### Spotlight: Endpoint data loss prevention (DLP) released

[Endpoint DLP](endpoint-dlp-learn-about.md) extends the activity monitoring and protection capabilities of DLP to sensitive info on Windows 10 devices. After devices are [onboarded](dlp-configure-endpoints.md) to the Microsoft 365 compliance center, you can set up DLP policies to protect the sensitive info on those devices.

### Advanced eDiscovery

To make it easier to manage encrypted content in the eDiscovery workflow, Microsoft 365 eDiscovery tools now incorporate [decryption of encrypted files](ediscovery-decryption.md) that are attached to email messages and sent in Exchange. Additionally, encrypted documents stored in SharePoint and OneDrive are decrypted in Advanced eDiscovery.

### Compliance Manager

- [Support for Microsoft 365 Government subscriptions](compliance-manager.md). Compliance Manager is now available to US Government Community (GCC) Moderate and High customers.
- [Microsoft Compliance Configuration Analyzer for Compliance Manager](compliance-manager-mcca.md). New PowerShell-based tool that helps you get started with Compliance Manager by scanning your organization’s current configurations and validating them against Microsoft 365 recommended best practices.
- [New templates](compliance-manager-templates-list.md). Added 56 new templates, bringing total Compliance Manager templates to over 230.

### Data connectors

[Five new Veritas connectors in preview](archiving-third-party-data.md#third-party-data-connectors). New connectors include Reuters Dealing, Reuters FX, CellTrust, XIP, generic MS SQL Database data.

### Retention labels (disposition review)

To view items during a disposition review, users must now be members of the [Content Explorer Content Viewer and Content Explorer List Viewer role groups](disposition.md#permissions-for-disposition). Although required to review items, these role groups aren’t necessary for completing the disposition review.

### Sensitivity labels

- [(Preview) External sharing settings for SharePoint sites](sensitivity-labels-teams-groups-sites.md#how-to-configure-groups-and-site-settings). When creating a label that will be used for groups and sites, you’ll see an option to control external sharing for SharePoint sites that have the label applied. You can specify that sharing is allowed for anyone, new and existing guests, existing guests only, or just users in your organization. When the label is applied, the label settings will replace any external sharing settings [configured in the SharePoint admin center](/sharepoint/change-external-sharing-site).
- [Remove label and encryption from a labeled document](sensitivity-labels-sharepoint-onedrive-files.md#remove-encryption-for-a-labeled-document). To remove both a label and the encryption it enforces from a labeled document in SharePoint, global admins and SharePoint admins can run the new `Unlock-SPOSensitivityLabelEncryptedFile` cmdlet. This cmdlet runs even if the admin doesn't have access permissions to the site or file, or if the Azure Rights Management service is unavailable.

## October 2020

### Advanced eDiscovery

[CJK language support](ediscovery-cjk-support.md). Advanced eDiscovery now supports double-byte character set languages, collectively known as CJK languages (includes Simplified Chinese, Traditional Chinese, Japanese, and Korean). These can be used in several advanced review set scenarios.

### Sensitivity labels

- [Label scope](sensitivity-labels.md#label-scopes). When creating a sensitivity label, you’ll see a new option to define the scope for the label. This option lets you configure labels just for files and emails, containers (like SharePoint sites and Teams), or both.
- [Dynamic content marking](sensitivity-labels-office-apps.md#dynamic-markings-with-variables). When configuring content marking for a sensitivity label, you can now use the dynamic variables such as `${Item.Label}` and `${Item.Location}` in the text string for your header, footer, or watermark.

## September 2020

### Spotlight: Compliance Manager

Announced at Ignite this year, Compliance Score is rebranded as [Compliance Manager](compliance-manager.md). This release completes the transition from Compliance Manager’s previous home in the Service Trust Portal, and introduces an end-to-end compliance management solution in the Microsoft 365 compliance center.

Watch the video below to learn how Compliance Manager can help simplify how your organization manages compliance.
<br>
<br>
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4FGYZ]

### Advanced Audit

- New 10-year retention of audit logs helps support long running investigations and respond to regulatory, legal, and internal obligations.
- [Three new crucial events](advanced-audit.md#access-to-crucial-events-for-investigations). The following new events can help you investigate possible breaches and determine the scope of compromise: Send, SearchQueryInitiatedExchange, and SearchQueryInitiatedSharePoint.

### Communication compliance

- [Updated role groups](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance). Communication compliance role groups now match the role group structure available for the insider risk management solution.
- [Reports dashboard](communication-compliance-feature-reference.md#reports). Your central location for viewing all communication compliance reports. Report widgets provide a quick view of insights most commonly needed for an overall assessment of the status of communication compliance activities.
- [Power Automate flows](communication-compliance-feature-reference.md#power-automate-flows). Set up flows to automate tasks for alerts and users, notify managers when users trigger an alerts, and more.
- [‘Improve classification’ remediation action](communication-compliance-investigate-remediate.md#step-3-decide-on-a-remediation-action). Alerts containing items that match trainable classifiers might benefit from feedback to help minimize false positives in your organization. The **Improve classification** option lets you provide feedback whether detected items match the classifier configured in the related communication compliance policy. You can even suggest other classifiers to associate with the item to improve match accuracy for future alerts.

### Data connectors

- [New third-party data connectors](archiving-third-party-data.md#third-party-data-connectors). 25 new data connectors, including 14 connectors from Veritas and 8 from Telemessage.
- [Physical badging connector](import-physical-badging-data.md). Import physical badging data, such as employee’s raw physical access events or any physical access alarms generated by your organization's badging system. Examples include entries to buildings, server rooms, or data centers. Physical badging data can be used by the insider risk management solution to help protect your organization from malicious activity or data theft inside your organization.

### Insider risk management

- [Microsoft Teams integration](insider-risk-management-settings.md#microsoft-teams-preview). When Teams integration is turned on in insider risk settings, you can coordinate and collaborate with other stakeholders in Teams on tasks like securely sharing and storing data related to individual cases, tracking and reviewing response activities from analysts and investigators, and more.
- [Power Automate flows](insider-risk-management-settings.md#power-automate-flows-preview). Set up flows to automate important tasks for cases and users, such as retrieving user, alert, and case info to share with stakeholders and other apps, automating actions like posting to case notes, and more.
- [Activity explorer](insider-risk-management-alerts.md#activity-explorer-preview). Available when reviewing alerts, activity explorer provides investigators and analysts with a comprehensive analytic tool for drilling down into each alert. Quickly review a timeline of detected risky activity and identify and filter all risk activities associated with alerts.

### Retention policies and retention labels

- [Support for Yammer](retention-policies-yammer.md). You can now use retention policies to retain and delete Yammer community messages and private messages.
- [Apply labels to Teams meetings recordings](apply-retention-labels-automatically.md#microsoft-teams-meeting-recordings). When creating an auto-labeling policy, use the keyword query editor to identify Teams meeting recordings that are stored in users' OneDrive accounts or in SharePoint.

### Records management

[Support for regulatory records](declare-records.md#how-to-display-the-option-to-mark-content-as-a-regulatory-record). Classifying a label as a regulatory record increases the restrictions placed on content to which the label is applied and limits the available management actions for the label itself. For example, after it’s applied to content, nobody, not even a global admin, can remove the label. [Learn more](records-management.md#compare-restrictions-for-what-actions-are-allowed-or-blocked) about which actions are allowed and blocked for regulatory records.

### Sensitivity labels

[Support for US Government customers](/enterprise-mobility-security/solutions/ems-aip-premium-govt-service-description). Sensitivity labels are now supported for GCC, GCC High, and DoD customers, only for the Azure Information Protection unified labeling client and scanner.

### Trainable classifiers

New retraining and feedback capabilities helps improve accuracy and minimize false positive matches for all custom classifiers and some pre-trained classifiers. This flow lets you provide feedback on whether items match certain classifiers, suggest other classifiers to associate with items, and retrain classifiers to refine and improve match accuracy.

This new capability is included in the following features:

> [!NOTE]
> For all features, if you provide at least 30 feedback responses, we'll create a retrained version of that classifier that you can review. If there's improvement, you can republish the classifier.

- [Trainable classifiers](classifier-learn-about.md#retraining-classifiers). To improve the accuracy of your published classifiers, you can provide feedback on whether the detected items match the classifier.
- [Communication compliance](classifier-how-to-retrain-comms-compliance.md). The new **Improve classification** remediation action lets you provide feedback whether an item from a communication compliance alert matches the classifier configured in the communication compliance policy.
- [Content explorer](classifier-how-to-retrain-content-explorer.md). If you set up a retention auto-labeling policy to automatically apply labels to email messages that match trainable classifiers, you can use content explorer to review the labeled items and provide feedback whether the items match the classifier.
