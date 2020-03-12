---
title: "What's new in the Microsoft 365 compliance center"
f1.keywords:
- NOCSH
ms.author: brendonb
author: brendonb
manager: laurawi
ms.date:
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
- m365-security-compliance 
description: "Just like features in the Microsoft 365 compliance center, our help content is always evolving. We’re continuously creating new articles, updating existing ones, and making changes based on your feedback. Find out what’s new and updated this month."
---

# Recent updates to Microsoft 365 compliance content

Just like features in the Microsoft 365 compliance center, our help content is always evolving. We’re continuously creating new articles, updating existing ones, and making changes based on your feedback. Take a look below to see what’s new and updated this month.

> [!TIP]
> To stay on top of the latest feature updates in the Microsoft 365 compliance center, check out [What's new in the Microsoft 365 compliance center](whats-new.md).

## January 2020

### Advanced eDiscovery

[Advanced eDiscovery reports (preview)](advanced-ediscovery-reports.md) (new)<br>Details about aggregated organization-wide reports on cases, custodians, data sources, and communication.

[Advanced eDiscovery dashboard for review sets (preview)](advanced-ediscovery-dashboard.md) (new)<br>Details about new analysis functionality for identifying trends or key statistics in a review set.

### Auditing

[Manage mailbox auditing](enable-mailbox-auditing.md#more-information) (updated)<br>Clarified that only mailbox auditing events for E5 users are available in audit log searches in the Office 365 Security & Compliance Center or using the Office 365 Management Activity API. Also details for using Exchange Online cmdlets to retrieve mailbox audit logs for users without E5 licenses.

[Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md#file-and-page-activities) (updated)<br>Added description for the "Performed search query" activity in the SharePoint file and folder activities table.

### Compliance offerings

[ENISA Information Assurance Framework](offering-enisa.md) (new)<br>New offering outlining Microsoft's ENISA compliance.

Updated articles to clarify support for Microsoft Managed Desktop:<br>
[Cloud Security Alliance (CSA) STAR attestation](offering-CSA-STAR-Attestation.md)<br>
[Cloud Security Alliance (CSA) STAR certification](offering-CSA-Star-Certification.md)<br>
[ISO/IEC 20000-1:2011 Information Technology Service Management](offering-ISO-20000-1-2011.md)<br>
[ISO 22301:2012 Business Continuity Management Standard](offering-ISO-22301.md)<br>
[ISO/IEC 27001:2013 Information Security Management Standards](offering-ISO-27001.md)<br>
[ISO/IEC 27017:2015 Code of Practice for Information Security Controls](offering-ISO-27017.md)<br>
[ISO/IEC 27018 Code of Practice for Protecting Personal Data in the Cloud](offering-ISO-27018.md)<br>
[ISO/IEC 27701 Privacy Information Management System (PIMS)](offering-iso-27701.md)<br>
[ISO 9001:2015 Quality Management Systems Standards](offering-ISO-9001.md)<br>
[Service Organization Controls (SOC)](offering-SOC.md)

### Compliance Score and Compliance Manager

[Microsoft Compliance Score (Preview)](compliance-score.md) (updated)<br>Various updates, including info about pre-configured templates for Brazil LGPD, SOC 1, and SOC 2; improved description of groups; new link at top of article to quickly view what’s new in Compliance Score.

[Microsoft Compliance Score (Preview) calculation](compliance-score-methodology.md#how-compliance-score-continuously-assesses-controls) (updated)<br>Clarified that Secure Score powers Compliance Score's continuous monitoring functionality.

[Microsoft Compliance Score (Preview) release notes](compliance-score-release-notes.md) (updated)<br>Redesigned to display what’s new info at the top of article (particularly new templates for assessments).

[Microsoft Compliance Score (Preview) setup](compliance-score-setup.md) (updated)<br>Added new section on how to configure automatic Secure Score updates and improved guidance on filtering dashboard view by groups.

[Work with Microsoft Compliance Manager (Preview)](working-with-compliance-manager.md) (updated)<br>Improved guidance for creating and working with groups and new instructions for enabling Secure Score updates at the per-action level.

### Content search and core eDiscovery

[Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md) (new)<br>Detailed info about the retirement of In-Place eDiscovery, In-Place Holds, and the Search-Mailbox cmdlet in Exchange Online and the retirement of Advanced eDiscovery v1.0.

[Migrate legacy eDiscovery searches and holds to the Microsoft 365 compliance center](migrate-legacy-eDiscovery-searches-and-holds.md) (new)<br>Guidance on how to migrate In-Place eDiscovery searches and holds from the Exchange admin center to the Microsoft 365 compliance center.

[Use the Office 365 eDiscovery Export Tool in Microsoft Edge](configure-edge-to-export-search-results.md) (new)<br>Details about configuring the new release of Edge to export search results.

[Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md#special-characters) (updated)<br>Added section about special characters in a search query.

[Manage eDiscovery cases](ediscovery-cases.md#optional-step-11-delete-a-case) (updated)<br>Added new optional step about deleting cases and key point that *all* holds associated with the case must be *deleted* before the case can be deleted.

[Search for and delete email messages](search-for-and-delete-messages-in-your-organization.md#step-3-delete-the-message) (updated)<br>Given the upcoming retirement of the Search-Mailbox cmdlet, replaced **Search-Mailbox -DeleteContent** with **New-ComplianceSearchAction -Purge** in the step for deleting item. Coming soon - addition of a sample script that loops the purge command to workaround the 10-item purge limit of the New-ComplianceSearchAction cmdlet.

### Data connectors

[Set up a connector to import HR data](import-hr-data.md) (new)<br>Details about setting up a Human Resources (HR) data connector to import HR data. Supports the new insider risk management solution.

[Archive third-party data](archiving-third-party-data.md) (updated)<br>Data connectors for Facebook, Instant Bloomberg, LinkedIn, and Twitter are now officially released to general availability.

### Insider risk management (preview)

New articles to support the preview release of the insider risk management solution.<br>
[Insider risk management in Microsoft 365 (preview)](insider-risk-management.md)<br>
[Get started with insider risk management (preview)](insider-risk-management-configure.md)<br>
[Insider risk management policies (preview)](insider-risk-management-policies.md)<br>
[Insider risk management alerts (preview)](insider-risk-management-alerts.md)<br>
[Insider risk management cases (preview)](insider-risk-management-cases.md)<br>
[Insider risk management content explorer (preview)](insider-risk-management-content-explorer.md)<br>
[Insider risk management users (preview)](insider-risk-management-users.md)<br>
[Insider risk management notice templates (preview)](insider-risk-management-notices.md)<br>

### MRM in Exchange Online

[Place a mailbox on retention hold](https://docs.microsoft.com/Exchange/security-and-compliance/messaging-records-management/mailbox-retention-hold#difference-between-elcprocessingdisabled-and-retentionholdenabled) (updated)<br>Added new section comparing ElcProcessingDisabled and RetentionHoldEnabled mailbox properties and how they affect the processing of the Managed Folder Assistant.

### Records management

[Overview of disposition reviews](disposition-reviews.md#permissions-for-disposition) (updated)<br>Resolved a long-standing support issue by clarifying that the View-Only Audit Logs role must be assigned in the Exchange admin center.

### Sensitivity labels

[Create and configure sensitivity labels and their policies](create-sensitivity-labels.md) (new)<br>Steps and recommended flow to create/configure/publish sensitivity labels. Also details about additional settings that require PowerShell, including an example for configuring a label for different languages.

[Learn about sensitivity labels](sensitivity-labels.md) (updated)<br>Formerly 'Overview of sensitivity labels', this article is overhauled to provide a better reading experience, updated screenshots, clarifications for sublabels and visual markings, and reset expectations to wait up to 24 hours rather than "within an hour".

[Use sensitivity labels with Microsoft Teams, Office 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md#change-site-and-group-settings-for-a-label) (updated)<br>Per customer feedback, added explicit step-by-step Powershell instructions for how to change site and group settings for a label.

[Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md) (updated)<br>Various updates, including an embedded video, clarifications for limitations, and info about how SharePoint behavior doesn't change if using "hold your own key" (HYOK).

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md#support-for-sensitivity-label-capabilities-in-apps) (updated)<br>Added info how to change the Office update channel and sign up for private previews if you want to test new features.

[Known issues with sensitivity labels in Office](https://support.office.com/en-us/article/known-issues-with-sensitivity-labels-in-office-b169d687-2bbd-4e21-a440-7da1b2743edc) (updated)<br>Added new issues, including how sensitivity labels that don't apply encryption can be removed with document inspection and problems with visual markings if replacing those set by by the Azure Information Protection client (classic).

## December 2019

### Communication compliance and Supervision policies

[Communication compliance feature reference](communication-compliance-feature-reference.md) and [Supervision policies in Office 365](supervision-policies.md) (updated)<br>Clarified that search values for message and attachments should be comma-separated instead of line-separated in the policy wizards.

### Compliance offerings

[Securities and Exchange Commission: Regulation Systems Compliance and Integrity (SCI)](offering-sec-reg-sci.md) (new)<br>Article about new offering outlining Microsoft's SCI compliance for Azure.

[Service Organization Controls (SOC)](offering-SOC.md#frequently-asked-questions) (updated)<br>Changed FAQ answer for certification process to clarify information on Microsoft audits and certifications.

### Compliance Score and Compliance Manager

[Microsoft Compliance Score (Preview)](compliance-score.md#templates) and [Microsoft Compliance Manager](compliance-manager-overview.md#templates) (updated)<br>Added reference links for two newly-released templates in Compliance Score and Compliance Manager: ISO 27701:2019 and IRAP/Australian Government ISM (Preview).

### Content search and core eDiscovery cases

[Content Search in Office 365](content-search.md#searching-yammer-groups) and [Manage eDiscovery cases](ediscovery-cases.md#step-5-create-and-run-a-content-search-associated-with-a-case) (updated)<br>You can now use content search and eDiscovery search to find content in Yammer Groups.

### PST Import service

[Use network upload to import your organization's PST files to Office 365](use-network-upload-to-import-pst-files.md#before-you-begin) (updated)<br>Added recommendation that PST files uploaded to Azure Storage location be no larger than 20 GB to prevent performance throttling.

### Sensitivity labels

[Learn about sensitivity labels](sensitivity-labels.md#what-label-policies-can-do) (updated)<br>Per customer feedback, clarified that justification text provided by users doesn't currently go to label analytics for admin review, but if the Azure Information Protection unified labeling client is installed, it does go to Azure Information Protection analytics.

[Use sensitivity labels with Microsoft Teams, Office 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md) (updated)<br>Several updates including correction to the Azure AD PowerShell module requirement and how to install/update it (per customer feedback), new commands to synchronize labels, new guidance and warnings for label management, additional troubleshooting, and how to opt-out of the preview.

[Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md) (updated)<br>Per customer feedback, clarified details for installing and updating SharePoint Online Management Shell.

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md) (updated)<br>Clarifications for disabling the Azure Information Protection unified labeling client and how to convert protection templates to sensitivity labels.

## November 2019

### Advanced eDiscovery

[Single item error remediation](single-item-error-remediation.md) (new)<br>Describes new functionality that lets eDiscovery managers view the file metadata that has a processing error and remediate the error directly in the review set.

### Compliance Score

[Microsoft Compliance Score (Preview) frequently asked questions](compliance-score-faq.md) (new)<br>Questions and answers about Compliance Score, including access and setup, relationship with Compliance Manager and Secure Score, and use with non-Microsoft products.

[Work with Microsoft Compliance Manager (Preview)](working-with-compliance-manager.md) and [Release Notes for Compliance Manager (Preview)](compliance-manager-release-notes.md#secure-score) (updated)<br>Added clarification in following articles about how full integration with Secure Score takes about a week when organizations first deploy Microsoft 365 or Office 365.

### Content search

[Use the Office 365 eDiscovery Export Tool in Microsoft Edge](configure-edge-to-export-search-results.md) (new)<br>Instructions on you how to enable ClickOnce support in Edge (which is no longer enabled by default) so you can export search results using the Edge browser.

### Holds

[How to identify the type of hold placed on an Exchange Online mailbox](identify-a-hold-on-an-exchange-online-mailbox.md#managing-mailboxes-on-delay-hold) (updated)<br>Added details about the mailbox property 'DelayReleaseHoldApplied' that's set to True when a hold is removed from a mailbox.

### Supervision in Office 365

[Configure supervision policies in Office 365](configure-supervision-policies.md#step-2-make-supervision-available-in-your-organization-required) (updated)<br>Updated Step 2 guidance for new user experience and clarified role permissions.

## October 2019

### Auditing

[Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md#microsoft-teams-healthcare-activities) (updated)<br>Added section about Microsoft Teams Healthcare activities, which are related to using the Patients App.

### Communication compliance (formerly supervision)

[Communication compliance in Microsoft 365 (preview)](communication-compliance.md) (new)<br>Overview of the new communication compliance solution, formerly called supervision.

[Configure communication compliance for Microsoft 365 (preview)](communication-compliance-configure.md) (new)<br>Details about how to set up and use communication compliance in your organization.

[Investigate and remediate communication compliance alerts (preview)](communication-compliance-investigate-remediate.md) (new)<br>Details about investigating and remediating communication compliance alerts.

[Communication compliance feature reference (preview)](communication-compliance-feature-reference.md) (new)<br>Details about the various features and components related to communication compliance.

### Compliance offerings

[Compliance offering: California Consumer Privacy Act (CCPA)](offering-ccpa.md) (new)<br>Overview and guidance related to Microsoft services and the CCPA.

[California Consumer Privacy Act (CCPA) Frequently Asked Questions](ccpa-faq.md) (new)<br>Frequently asked questions about Microsoft services and the CCPA.

### Data classification

[Creating a trainable classifier (preview)](classifier-creating-a-trainable-classifier.md) (new)<br>Guidance on how to set up and test the new Microsoft 365 trainable classifiers.

[Data classification overview (preview)](data-classification-overview.md) (new)<br>Overview of the new data classification features in the Microsoft 365 compliance center.

[Getting started with trainable classifiers (preview)](classifier-getting-started-with.md) (new)<br>Overview of the new Microsoft 365 trainable classifiers.

[Using a ready to use classifier (preview)](classifier-using-a-ready-to-use-classifier.md) (new)<br>Detals about preparing for and using built-in, pre-trained classifiers.

[Using data classification content explorer (preview)](data-classification-content-explorer.md) (new)<br>Overview of content explorer on the Data classification page, which allows you to review items that contain sensitive info types or have sensitivity or retention labels applied.

[View activity on your labeled content (preview)](data-classification-activity-explorer.md) (new)<br>Overview of activity explorer on the Data classification page, which allows you to monitor how labels are being used in your organization.

### Email encryption

Added details to the following articles about which Office 365 and Microsoft 365 SKUs are required to use Office 365 Advanced Message Encryption.<br>
[Office 365 Advanced Message Encryption](ome-advanced-message-encryption.md) (updated)<br>
[Set an expiration date for email encrypted by Office 365 Advanced Message Encryption](ome-advanced-expiration.md) (updated)<br>
[Revoke email encrypted by Office 365 Advanced Message Encryption](revoke-ome-encrypted-mail.md) (updated)

[Office 365 Message Encryption FAQ](ome-faq.md) (updated)<br>Added QAs for how OME works with shared mailboxes, support for delegated access, removing encryption for incoming and outgoing mail, and encrypting PDF attachments.

[Add your organization's brand to your encrypted messages](add-your-organization-brand-to-encrypted-messages.md) (updated)<br>Clarified requirements for multiple branding templates, specifically Advanced Message Encryption. Rewrote content to identify use cases that work for most customers first (modify existing template). Added info about the new default template's size requirements and behavior.

### General Data Protection Act (GDPR)

Added new guidance to the following articles about the California Consumer Privacy Act (CCPA).<br>
[Azure Data Subject Requests for the GDPR and CCPA](gdpr-dsr-Azure.md) (updated) <br>
[Azure DevOps Services Data Subject Requests for the GDPR and CCPA](gdpr-dsr-vsts.md) (updated)<br>
[Dynamics 365 Data Subject Requests for the GDPR and CCPA](gdpr-dsr-Dynamics365.md) (updated)<br>
[Data Subject Requests and the GDPR and CCPA](gdpr-data-subject-requests.md) (updated) <br>
[Intune Data Subject Requests for the GDPR and CCPA](gdpr-dsr-Intune.md) (updated)<br>
[Microsoft Support and Professional Services Data Subject Requests for the GDPR and CCPA](gdpr-dsr-prof-services.md) (updated)<br>
[Office 365 Data Subject Requests for the GDPR and CCPA](gdpr-dsr-Office365.md) (updated)<br>
[Visual Studio Family Data Subject Requests for the GDPR and CCPA](gdpr-dsr-visual-studio-family.md) (updated)

### Information governance

[Manage information governance](manage-Information-governance.md) (new)<br>New landing page for the information governance solution in the Microsoft 365 compliance center. Includes links to related features.

[Manage the lifecycle of SharePoint documents with retention labels](auto-apply-retention-labels-scenario.md) (new)<br>End-to-end scenario about using SharePoint managed properties, retention labels, auto-applied labels, and event-driven retention to manage document lifecycles in SharePoint Online.

[Overview of file plan manager](file-plan-manager.md#import-retention-labels-into-your-file-plan) (updated)<br>Added more detailed descriptions of the properties in the template used to import new retention labels.

[Overview of records](records.md) (new)<br>Details about using retention labels to declare content as a record. Also includes info about new record versioning functionality.

[Overview of retention policies](retention-policies.md#teams-locations) (updated)<br>Added new details about the retention behavior for Teams chat and channel messages. Also added a graphic illustrating the Teams retention lifecycle.

### Microsoft 365 management

[Overview of the Microsoft 365 compliance center](microsoft-365-compliance-center.md) (new)<br>Overview of the new Microsoft 365 compliance center - how to get it, FAQs, and next steps.

[Overview of the Microsoft 365 solution catalog (preview)](microsoft-365-solution-catalog.md) (new)<br>Overview of the new solution catalog in the Microsoft 365 compliance center, which provides a one-stop-shop for discovering, learning about, and getting started with the compliance and risk management solutions available in your organization.

### Microsoft Compliance Score

[Microsoft Compliance Score (Preview)](compliance-score.md) (new)<br>Overview of Compliance Score in the Microsoft 365 compliance center - what it is, how it helps to manage your compliance needs, and how to get started.

[Microsoft Compliance Score calculation (Preview)](compliance-score-methodology.md) (updated)<br>Added context for how your compliance score is calculated, including details about the new Microsoft 365 data protection baseline that factors into the score.

### Sensitivity labels

[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md) (updated)<br>Removed info about upcoming support for recommended labeling in Outlook. Removed duplicate licensing information. Now points to authoritative information in [Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md).

[Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md) (new)<br>Guidance for how to prepare SharePoint and OneDrive for the application of sensitivity labels to content stored in those locations.

[Overview of sensitivity labels](sensitivity-labels.md) (updated)<br>Added more detail about support for Office apps on the web, Microsoft Teams, Office 365 groups, SharePoint sites, and Office files in SharePoint and OneDrive.

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md) (updated)<br>Several updates including details about newly supported apps, subscription and licensing requirements, and interaction between admin-defined templates (like those in Office 365 Message Encryption and sensitivity labels).

[Use sensitivity labels with Microsoft Teams, Office 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md) (new)<br>Details about setting up and applying sensitivity labels in Microsoft Teams, Office 365 groups, and SharePoint sites.

## September 2019

### Supervision

[Configure supervision policies for your organization](configure-supervision-policies.md) (updated)<br>Removed details about using Outlook to perform reviews. Instead, use the review and tagging options that are available in the supervision user interface.

## August 2019

### Auditing

[Manage mailbox auditing](enable-mailbox-auditing.md#more-information) (updated)<br>Added details about how mailbox audit log events are available only for users with E5 licenses or mailboxes where mailbox auditing was manually turned on by an admin. Also new guidance about using the **Search-MailboxAuditLog** cmdlet in Exchange Online PowerShell to search the mailbox audit log for users without E5 licenses.

[Search the audit log to troubleshoot common scenarios](auditing-troubleshooting-scenarios.md#investigate-why-there-was-a-successful-login-by-a-user-outside-your-organization) (updated)<br>New section about using pass-through authentication to investigate successful logins by external users.

### Content Search & eDiscovery

[Configure permissions filtering for Content Search](permissions-filtering-for-content-search.md#using-a-filters-list-to-combine-filter-types) (updated)<br>Added details about using a filters list, which lets you add a mailbox and site filters to a single search permissions filter.

[Content search in Office 365](content-search.md#searching-disconnected-or-de-licensed-mailboxes) (updated)<br>Added details about searching disconnected or de-licensed mailboxes.

[Content search in Office 365](content-search.md#searching-for-content-in-a-sharepoint-multi-geo-environment) (updated)<br>
[Set up compliance boundaries for eDiscovery investigations in Office 365](set-up-compliance-boundaries.md#searching-and-exporting-content-in-multi-geo-environments) (updated)<br>Added details to both articles about searching for content in SharePoint multi-geo environments.

### Data investigations

[Delete items from their original location (Preview)](delete-items-from-original-locations.md) (new)<br>Now available in preview, you can select items in an evidence set and then soft-delete them from their original locations in Exchange, SharePoint, and OneDrive.

[Manage a data spillage incident in Microsoft 365](manage-data-spillage-incidents.md#step-4-delete-the-spilled-data) (updated)<br>Added details about using the new ‘Delete items from their original location’ feature to delete spilled data.

### Permissions

[Permissions in the Microsoft 365 compliance center and Microsoft 365 security center](../security/office-365-security/permissions-microsoft-365-compliance-security.md) (new)<br>New Azure Active Directory role groups were released to public preview.

### Records management

[Overview of file plan manager (updated)](file-plan-manager.md#export-all-existing-retention-labels-to-analyze-andor-perform-offline-reviews)<br>Added a table that lists the valid values to be used in the Excel template.

### Supervision

[Supervision policies in Office 365](supervision-policies.md) (updated)<br>Clarified Office 365 group and distribution list support, added guidance for keyword matches in both email and attachments, and clarified Outlook support within Teams channels.

### Windows Information Protection

[List of enlightened Microsoft apps for use with Windows Information Protection (WIP)](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/enlightened-microsoft-apps-and-wip) (updated) <br>Microsoft 3D Viewer is now an enlightened app.
