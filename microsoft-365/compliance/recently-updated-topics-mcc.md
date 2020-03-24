---
title: "What's new in the Microsoft 365 compliance center"
f1.keywords:
- NOCSH
ms.author: brendonb
author: brendonb
manager: laurawi
ms.date: 03/22/2020
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
description: "Just like features in the Microsoft 365 compliance center, our help content is always evolving. We're continuously creating new articles, updating existing ones, and making changes based on your feedback. Find out what's new and updated this month."
---

# Recent updates to Microsoft 365 compliance content

Just like features in the Microsoft 365 compliance center, our help content is always evolving. We're continuously creating new articles, updating existing ones, and making changes based on your feedback. Take a look below to see what's new and updated this month.

> [!TIP]
> To stay on top of the latest feature updates in the Microsoft 365 compliance center, check out [What's new in the Microsoft 365 compliance center](whats-new.md).

## February 2020

### Auditing

<<<<<<< HEAD
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
=======
[Advanced Audit in Microsoft 365](advanced-audit.md) (new)<br>Available for organizations with an Office 365 E5 or Microsoft 365 Enterprise E5 subscription, advanced audit extends existing audit capabilities by introducing features such as long retention periods for audit logs, new audit log retention policies, and a new mailbox auditing action that tracks mail reads.
>>>>>>> cc1f3200bf63489c8c397aad316ee5a36d6c8d3d

[Manage audit log retention policies](audit-log-retention-policies.md) (new)<br>Details about managing audit log retention policies, the new advanced audit feature that allows you to save audit records from different services for up to one year.

[Manage mailbox auditing](enable-mailbox-auditing.md#logon-types-and-mailbox-actions) (updated)<br>Added info about the new MailItemsAccessed mailbox action, which was introduced with advanced audit.

[Search the audit log](search-the-audit-log-in-security-and-compliance.md#sensitivity-label-activities) (updated)<br>Added new descriptions for sensitivity label activities and additional info about auditing [Forms collaboration activities](search-the-audit-log-in-security-and-compliance.md#forms-activities-performed-by-co-authors-and-anonymous-responders).

### Compliance offerings

[ENISA Information Assurance Framework](offering-enisa.md) (new)<br>New topic supporting the European Network and Information Security Agency (ENISA) Information Assurance Framework (IAF).

[Service Organization Controls (SOC)](offering-SOC.md) (updated)<br>Added new audit references.

[Australian Prudential Regulation Authority (APRA)](offering-APRA-Australia.md) (updated)<br>Aligned content for new regulatory standards.

### Customer Key

[Service encryption with Customer Key in Office 365](customer-key-overview.md) (new)<br>New article that introduces you to Customer Key, related concepts like BitLocker and service encryption, and how they work together.

[Manage Customer Key for Office 365](customer-key-manage.md) (new)<br>Post-setup instructions for managing Customer Key, including steps for managing existing DEPs and key vault permissions, estimated times to complete operations, how to verify that encryption worked, and how to exit the Office 365 service.

[Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md) (new)<br>Describes how to roll the customer-managed keys for Customer Key.

[Learn about the availability key for Office 365 Customer Key](customer-key-availability-key-understand.md) (new)<br>Detailed coverage about the availability key - when and how it's used to recover from key loss, where it exists in the Customer Key hierarchy, and more.

[Set up Customer Key for Office 365](customer-key-set-up.md) (updated)<br>Previously titled "Controlling your data in Office 365 using Customer Key", this article focuses solely on how to set up Customer Key for Office 365, including updated instructions.

### Data classification

[Data classification public preview release notes (preview)](data-classification-pub-preview-relnotes.md) (new)<br>Release notes for the public preview introducing new functionality where scanning of your sensitive and labeled content starts before you create any policies. This lets you review how existing retention and sensitivity labels are impacting your organization to help you assess your protection and governance policy needs.

### GDPR

[Office 365 Data Subject Requests for the GDPR and CCPA](gdpr-dsr-Office365.md) (updated)<br>Removed references to Microsoft StaffHub due to [retirement of the app](https://docs.microsoft.com/microsoftteams/expand-teams-across-your-org/shifts/microsoft-staffhub-to-be-retired).

Added Compliance Manager references and updated links for Compliance Score in the following articles.<br>
[General Data Protection Regulation Summary](gdpr.md) (Article also includes new FAQs from Trust Center.)<br>
[Microsoft 365 GDPR action plan — Top priorities for your first 30 days, 90 days, and beyond](gdpr-action-plan.md)<br>
[Support your GDPR program with Accountability Readiness Checklists](gdpr-arc.md)<br>
[Azure accountability readiness checklist for the GDPR](gdpr-arc-Azure.md)<br>
[Dynamics 365 accountability readiness checklist for the GDPR](gdpr-arc-Dynamics365.md)<br>
[Accountability Readiness Checklist for Microsoft Office 365](gdpr-arc-Office365.md)<br>

### Insider risk management

Updated the following articles to support the official release of insider risk management.<br>
[Learn about insider risk management in Microsoft 365](insider-risk-management.md)<br>
[Get started with insider risk management](insider-risk-management-configure.md)<br>
[Create and manage insider risk policies](insider-risk-management-policies.md)<br>
[Investigate insider risk alerts](insider-risk-management-alerts.md)<br>
[Take action on insider risk cases](insider-risk-management-cases.md)<br>
[Review data with the insider risk content explorer](insider-risk-management-content-explorer.md)<br>
[Add users to insider risk policies](insider-risk-management-users.md)<br>
[Create insider risk notices](insider-risk-management-notices.md)<br>

### Records management

[Overview of retention labels](labels.md) (updated)<br>The section for applying a retention label based on conditions now includes the option to use trainable classifiers.

### Sensitivity labels

[Get started with sensitivity labels](get-started-with-sensitivity-labels.md) (new)<br>Includes guidance for Azure Information Protection customers, high-level overview of the process and steps to deploy sensitivity labels, permissions to create and manage the labels, a list of common scenarios that support labels, and a list of available end-user documentation.

[Learn about sensitivity labels](sensitivity-labels.md) (updated)<br>Retitled from "Overview of sensitivity labels" and moved the information from the "Get started" section to the new article [Get started with sensitivity labels](get-started-with-sensitivity-labels.md).

[Create and configure sensitivity labels and their policies](create-sensitivity-labels.md) (updated)<br>Moved permission details to new the new article, [Get started with sensitivity labels](get-started-with-sensitivity-labels.md).

[Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md) (updated)<br>New options of "None" and "Remove" replaces the encryption toggle, and "Add any authenticated users" is added as a new permission to assign now. The section for letting users assign permission is updated now that prompting users to select custom permissions in Word, PowerPoint, and Excel is rolling out in preview for Windows and Mac. New section for example configurations of how to configure the encryption settings to support specific use cases. New section that lists considerations for encrypting content.

<<<<<<< HEAD
### Auditing

[Manage mailbox auditing](enable-mailbox-auditing.md#more-information) (updated)<br>Added details about how mailbox audit log events are available only for users with E5 licenses or mailboxes where mailbox auditing was manually turned on by an admin. Also new guidance about using the **Search-MailboxAuditLog** cmdlet in Exchange Online PowerShell to search the mailbox audit log for users without E5 licenses.

[Search the audit log to troubleshoot common scenarios](auditing-troubleshooting-scenarios.md#investigate-why-there-was-a-successful-login-by-a-user-outside-your-organization) (updated)<br>New section about using pass-through authentication to investigate successful logins by external users.

### Content Search & eDiscovery

[Configure permissions filtering for Content Search](permissions-filtering-for-content-search.md#using-a-filters-list-to-combine-filter-types) (updated)<br>Added details about using a filters list, which lets you add a mailbox and site filters to a single search permissions filter.

[Content search in Office 365](content-search.md#searching-disconnected-or-de-licensed-mailboxes) (updated)<br>Added details about searching disconnected or de-licensed mailboxes.

[Content search in Office 365](content-search.md#searching-for-content-in-a-sharepoint-multi-geo-environment) (updated)<br>
[Set up compliance boundaries for eDiscovery investigations in Office 365](set-up-compliance-boundaries.md#searching-and-exporting-content-in-multi-geo-environments) (updated)<br>Added details to both articles about searching for content in SharePoint multi-geo environments.
=======
[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps) (updated)<br>The section for configuring auto-labeling for Office apps now includes the new option to use trainable classifiers.
>>>>>>> cc1f3200bf63489c8c397aad316ee5a36d6c8d3d

[Use sensitivity labels to protect content in Microsoft Teams, Office 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md) (updated)<br>Revisions throughout for a better reading experience and technical clarifications. Also, per customer feedback, added links to the [Azure AD article](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels) for enabling the preview and applying sensitivity labels to Office 365 groups in the Azure portal. Finally, added a new section for auditing sensitivity label activities.

[Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md) (updated)<br>Various updates include clarifications per customer feedback for how this feature works, emphasizing that new capabilities apply only to new and edited files, and a new limitation that you might see only during a testing phase if you delete labels.

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md) (updated)<br>Updated the capability tables for letting users assign permissions and applying a label to content automatically. Also, per customer feedback, added an exception for email attachments inheriting a label.

### Service descriptions

[Microsoft 365 licensing guidance for security & compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance) (updated)<br>Retitled from "Microsoft 365 tenant-level services licensing guidance" to better reflect the content.

