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

[Advanced Audit in Microsoft 365](advanced-audit.md) (new)<br>Available for organizations with an Office 365 E5 or Microsoft 365 Enterprise E5 subscription, advanced audit extends existing audit capabilities by introducing features such as long retention periods for audit logs, new audit log retention policies, and a new mailbox auditing action that tracks mail reads.

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

[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps) (updated)<br>The section for configuring auto-labeling for Office apps now includes the new option to use trainable classifiers.

[Use sensitivity labels to protect content in Microsoft Teams, Office 365 Groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md) (updated)<br>Revisions throughout for a better reading experience and technical clarifications. Also, per customer feedback, added links to the [Azure AD article](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels) for enabling the preview and applying sensitivity labels to Office 365 groups in the Azure portal. Finally, added a new section for auditing sensitivity label activities.

[Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md) (updated)<br>Various updates include clarifications per customer feedback for how this feature works, emphasizing that new capabilities apply only to new and edited files, and a new limitation that you might see only during a testing phase if you delete labels.

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md) (updated)<br>Updated the capability tables for letting users assign permissions and applying a label to content automatically. Also, per customer feedback, added an exception for email attachments inheriting a label.

### Service descriptions

[Microsoft 365 licensing guidance for security & compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance) (updated)<br>Retitled from "Microsoft 365 tenant-level services licensing guidance" to better reflect the content.

