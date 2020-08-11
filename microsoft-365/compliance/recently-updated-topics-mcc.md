---
title: Recent updates in the compliance center
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
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
description: Just like features in the Microsoft 365 compliance center, our help content is always evolving. Find out what's new and updated this month.
ms.custom: seo-marvel-mar2020
---

# Recent updates to Microsoft 365 compliance content

Just like features in the Microsoft 365 compliance center, our help content is always evolving. We're continuously creating new articles, updating existing ones, and making changes based on your feedback. Take a look below to see what's new and updated this month.

> [!TIP]
> To stay on top of the latest feature updates in the Microsoft 365 compliance center, check out [What's new in the Microsoft 365 compliance center](whats-new.md).

## July 2020

### Insider risk management

New insider risk management public preview features released, updates made to the following articles to support new policy templates, new indicator levels, new priority user groups, Microsoft Defender Advanced Threat Protection integration, allowed and unallowed domains, and more.

- [Learn about insider risk management in Microsoft 365 (Updated)](insider-risk-management.md)
- [Plan for insider risk management (Updated)](insider-risk-management-plan.md)
- [Get started with insider risk settings (NEW)](insider-risk-management-settings.md)
- [Get started with insider risk management (Updated)](insider-risk-management-configure.md)
- [Create and manage insider risk policies (Updated)](insider-risk-management-policies.md)
- [Investigate insider risk alerts (Updated)](insider-risk-management-alerts.md)
- [Take action on insider risk cases (Updated)](insider-risk-management-cases.md)
- [Review data with the insider risk content explorer (Updated)](insider-risk-management-content-explorer.md)
- [Manage the workflow with the Users dashboard (Updated)](insider-risk-management-users.md)
- [Create insider risk notice templates (Updated)](insider-risk-management-notices.md)


## June 2020

### Archive third-party data

### Data loss prevention (DLP)

### Compliance Score

All Compliance Score articles updated to align with new improvements that bring more Compliance Manager functions into Compliance Score, including:

    - New assessment drilldown view in Compliance Score with ability to monitor control progress
    - New ability to add and delete assessments directly in Compliance Score.

New articles on assessments, improvement actions, and templates:

- [Customize Compliance Score with assessments (NEW)](compliance-score-assessments.md)
- [Work with improvement actions in Compliance Score (NEW)](compliance-score-improvement-actions.md)
- [Compliance Score templates (NEW)](compliance-score-templates.md)

### Retention policies and labels

- [Overview of event-driven retention (Updated)](event-driven-retention.md): Added clarifications about creating and deleting events.

### Sensitivity labels

- [Apply a sensitivity label to content automatically (Updated)](apply-sensitivity-label-automatically.md): Added the following clarifications for auto-labeling policies:
    - Rights Management issuer and owner
    - Checked out files aren't evaluated
    - Policies continue to be evaluated until deleted
    - PDFs are scanned for Exchange
- [Enable sensitivity labels for Office files in SharePoint and OneDrive (Updated)](sensitivity-labels-sharepoint-onedrive-files.md): Added new *Search for documents by sensitivity label* section.
​​​​​​​- [Use sensitivity labels with Microsoft Teams, Office 365 groups, and SharePoint sites (Updated)](sensitivity-labels-teams-groups-sites.md): Removed public preview disclaimers. In addition, other updates include which apps support sensitivity labels for sites and group settings, changes to these settings no longer need to be reapplied with PowerShell, a new section, *Use PowerShell to apply a sensitivity label to multiple sites*, and an added link to **Azure Active Directory classification and sensitivity labels for Microsoft 365 groups**)
- [Use sensitivity labels in Office apps (updated)](apply-sensitivity-label-automatically.md): Updated the *Sensitivity label capabilities in Word, Excel, and PowerPoint* section to include the capability to apply a default label to be fully available for Office on the web.

## March 2020

### Auditing

[Use Advanced Audit to investigate compromised accounts](mailitemsaccessed-forensics-investigations.md) (new)<br>New guidance on using the new *MailItemsAccessed* mailbox auditing action for forensic investigations.

[Search the audit log](search-the-audit-log-in-security-and-compliance.md) (updated)<br>Changes include:
- [New section](search-the-audit-log-in-security-and-compliance.md#the-appsharepoint-user-in-audit-records) with details about the 'app@sharepoint' user listed in audit records.
- [New descriptions](search-the-audit-log-in-security-and-compliance.md#quarantine-activities) of quarantine activities.
- In the [User administration activity](search-the-audit-log-in-security-and-compliance.md#user-administration-activities) section, clarified that the "Change user password event is triggered when a user changes their own password (via self-service password reset), and the "Reset user password" event is triggered when an admin resets a user's password.

### Auto-expanding archive

[Overview of unlimited archiving](unlimited-archiving.md#outlook-requirements-for-accessing-items-in-an-auto-expanded-archive) (updated)<br>Added clarification that you can't delete any folder in the main archive or an auxiliary archive once auto-expanding archiving is enabled on a mailbox.

### Compliance Score/Compliance Manager

All [Compliance Score](compliance-score.md) and [Compliance Manager](compliance-manager-overview.md) topics reflect updates to these products released in early April (both are still in public preview). Key updates include:
- Simplified process for creating and modifying templates
- Versioning notice and control for templates and actions
- Synching of common actions across groups
- Language support now extended to Chinese (Simplified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish

### Communication compliance

[Case study - Contoso quickly configures an offensive language policy for Microsoft Teams, Exchange, and Yammer communications](communication-compliance-case-study.md) (new)<br>A step-by-step case study for education and small business organizations to help them quickly configure an offensive language policy. Increased requests from customers as organizations ramp up for COVID19 responses.

[Get started with communication compliance](communication-compliance-configure.md) (updated)<br>Updated licensing and permissions requirements.

### Customer Key

[Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md) (updated)<br>Organizational updates that help clarify which keys you can and can't roll.

[Learn about the availability key for Customer Key](customer-key-availability-key-understand.md) (updated)<br>Added clarification around Exchange Online architecture for Customer Key.

### Data loss prevention

[Overview of data loss prevention](data-loss-prevention-policies.md) (updated)<br>Updated how long it takes for retention labels to take effect and the default behavior policies with no alerts configured.

### eDiscovery

[Get started with Advanced eDiscovery](get-started-with-advanced-ediscovery.md) (new)<br>Provides info about licensing and permissions requirements, steps to configure global settings and create a new case, and a walkthrough of the Advanced eDiscovery workflow.

[Retirement of legacy eDiscovery tools](legacy-ediscovery-retirement.md) (updated)<br>Retirement dates moved out three months due to the public health situation. Updated article cites the new retirement dates.

### Insider Risk Management

[Get started with insider risk management](insider-risk-management-configure.md) (updated)<br>Updated licensing and permissions requirements.

[Define information barrier policies](information-barriers-policies.md) (updated)<br>Clarified processing speed and time required to apply. Added details about how no no address book policies should be in place. Also various PowerShell code updates, including new code for filtering.

[Information barriers](information-barriers.md) (updated)<br>Fixed some broken links and updated PDF links and title. Per customer feedback, clarified that information barriers only supports two-way restrictions. One-way restrictions (such as marketing can communicate with day traders, but day traders cannot communicate with marketing) is not supported.

[Troubleshooting information barriers](information-barriers-troubleshooting.md) (updated)<br>Added new troubleshooting scenario section. Added link to steps for how to reapplying information barriers.

### Office 365 Message Encryption

[Manage Office 365 Message Encryption](manage-office-365-message-encryption.md) (updated)<br>Updated to reflect that the force wrapper function is a standard OME feature, not an advanced one. Rewrote PowerShell examples to exclude all references to the Advanced OME features revocation and expiration.

[Message Encryption FAQ](ome-faq.md) (updated)<br>Clarified that only Outlook for the web can apply ad-hoc encryption. Likewise, for all Outlook clients, messages and unprotected PDF attachments inherit the OME protection of the data loss prevention (DLP) policy or mail flow rule in Exchange Online.

### Privileged access management

[Get started with privileged access management](privileged-access-management-configuration.md) (updated)<br>Updated licensing and permissions requirements.

### PST Import

[FAQ about importing PST files](faqimporting-pst-files-to-office-365.md) (updated)<br>Added FAQ about how PST import process handles duplicate email items.

### Sensitivity labels

[Learn about sensitivity labels](sensitivity-labels.md) (updated)<br>Added deprecation details about label management in the Azure portal, including a link to [the official notice](https://techcommunity.microsoft.com/t5/azure-information-protection/announcing-timelines-for-sunsetting-label-management-in-the/ba-p/1226179).

[Get started with sensitivity labels](get-started-with-sensitivity-labels.md) (updated)<br>Added info about the new Sensitivity Label Reader role, which is supported initially just for the labeling PowerShell cmdlets.

[Create and configure sensitivity labels and their policies](create-sensitivity-labels.md#removing-and-deleting-labels) (updated)<br>Added new section explains the consequences of removing and deleting labels.

[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md) (updated)<br>Changes include:

- Removed Azure AD instructions and instead linked to the [Azure AD authoritative information](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels).
- Updated the [How to configure site and group settings](sensitivity-labels-teams-groups-sites.md#how-to-configure-site-and-group-settings) section with information about the **Privacy of Office 365 group-connected teams sites** setting, which includes the new **None** option.
- Added a note describing how only labels with site and group settings will be available to select when users create teams, groups, and sites. This functionality is gradually rolling out to organizations.

[Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md) (updated)<br>[New section](encryption-sensitivity-labels.md#example-configurations-for-the-encryption-settings) with example encryption settings for some of the most commonly used configurations to protect documents and emails.

[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps) (updated)<br>Explanation of the behavior differences between built-in labeling vs. the Azure Information Protection unified labeling client.

[Enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md) (updated)<br>Changes include:

- Clarified that enabling this preview displays the **Sensitivity** button on the ribbon for labels in Office for the web, in addition to supporting documents that are labeled and encrypted.
- Updated the instructions for Office 365 Multi-Geo.
- The list of limitations has a new entries that include what happens when a computer goes offline or to sleep, and if a label is deleted.

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md) (updated)<br>Changes include:

- Moved licensing info to to [Get started with sensitivity labels](get-started-with-sensitivity-labels.md).
- [New section](sensitivity-labels-office-apps.md#labeling-client-for-desktop-apps) explaining how, to use labels that are built into Office desktop apps, you must use a subscription edition of Office instead of standalone editions.
- The tables of supported apps include the Office app for iOS and Android and the configuration that lets users assign permissions for Word, Excel, and PowerPoint is updated – now rolling out to monthly channel for Windows and Mac.  
- [New section](sensitivity-labels-office-apps.md#office-built-in-labeling-client-and-other-labeling-solutions) explaining how you can use the group policy setting to disable built-in labeling if you're currently using other labeling solutions that you want to keep using for your Windows computers. 
- Updated the [Information Rights Management (IRM) options and sensitivity labels](sensitivity-labels-office-apps.md#information-rights-management-irm-options-and-sensitivity-labels) section with the recommendation to use labels that apply encryption rather than IRM options, with an explanation of potential consequences when the two protection solutions are mixed.

### Trainable classifiers

[Getting started with trainable classifiers (preview)](classifier-getting-started-with.md) (updated)<br>Added info about how the Offensive Language template is being deprecated. Also added a table listing the top 25 code languages used in the Source Code built-in classifier.

## February 2020

> [!NOTE]
> Articles listed in previous months may have since been updated, moved, or deleted. As a result, some of the details below might be outdated and links might be broken.

### Auditing

[Advanced Audit in Microsoft 365](advanced-audit.md) (new)<br>Available for organizations with an Office 365 E5 or Microsoft 365 Enterprise E5 subscription, advanced audit extends existing audit capabilities by introducing features such as long retention periods for audit logs, new audit log retention policies, and a new mailbox auditing action that tracks mail reads.

[Manage audit log retention policies](audit-log-retention-policies.md) (new)<br>Details about managing audit log retention policies, the new advanced audit feature that allows you to save audit records from different services for up to one year.

[Manage mailbox auditing](enable-mailbox-auditing.md#logon-types-and-mailbox-actions) (updated)<br>Added info about the new MailItemsAccessed mailbox action, which was introduced with advanced audit.

[Search the audit log](search-the-audit-log-in-security-and-compliance.md#sensitivity-label-activities) (updated)<br>Added new descriptions for sensitivity label activities and additional info about auditing [Forms collaboration activities](search-the-audit-log-in-security-and-compliance.md#forms-activities-performed-by-coauthors-and-anonymous-responders).

### Compliance offerings

[ENISA Information Assurance Framework](offering-enisa.md) (new)<br>New topic supporting the European Network and Information Security Agency (ENISA) Information Assurance Framework (IAF).

[Service Organization Controls (SOC)](offering-SOC.md) (updated)<br>Added new audit references.

[Australian Prudential Regulation Authority (APRA)](offering-APRA-Australia.md) (updated)<br>Aligned content for new regulatory standards.

### Customer Key

[Service encryption with Customer Key](customer-key-overview.md) (new)<br>New article that introduces you to Customer Key, related concepts like BitLocker and service encryption, and how they work together.

[Manage Customer Key](customer-key-manage.md) (new)<br>Post-setup instructions for managing Customer Key, including steps for managing existing DEPs and key vault permissions, estimated times to complete operations, how to verify that encryption worked, and how to exit the service.

[Roll or rotate a Customer Key or an availability key](customer-key-availability-key-roll.md) (new)<br>Describes how to roll the customer-managed keys for Customer Key.

[Learn about the availability key for Customer Key](customer-key-availability-key-understand.md) (new)<br>Detailed coverage about the availability key - when and how it's used to recover from key loss, where it exists in the Customer Key hierarchy, and more.

[Set up Customer Key for Microsoft 365](customer-key-set-up.md) (updated)<br>Previously titled "Controlling your data in Microsoft 365 using Customer Key", this article focuses solely on how to set up Customer Key for Office 365, including updated instructions.

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

[Overview of retention labels](retention.md) (updated)<br>The section for applying a retention label based on conditions now includes the option to use trainable classifiers.

### Sensitivity labels

[Get started with sensitivity labels](get-started-with-sensitivity-labels.md) (new)<br>Includes guidance for Azure Information Protection customers, high-level overview of the process and steps to deploy sensitivity labels, permissions to create and manage the labels, a list of common scenarios that support labels, and a list of available end-user documentation.

[Learn about sensitivity labels](sensitivity-labels.md) (updated)<br>Retitled from "Overview of sensitivity labels" and moved the information from the "Get started" section to the new article [Get started with sensitivity labels](get-started-with-sensitivity-labels.md).

[Create and configure sensitivity labels and their policies](create-sensitivity-labels.md) (updated)<br>Moved permission details to new the new article, [Get started with sensitivity labels](get-started-with-sensitivity-labels.md).

[Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md) (updated)<br>New options of "None" and "Remove" replaces the encryption toggle, and "Add any authenticated users" is added as a new permission to assign now. The section for letting users assign permission is updated now that prompting users to select custom permissions in Word, PowerPoint, and Excel is rolling out in preview for Windows and Mac. New section for example configurations of how to configure the encryption settings to support specific use cases. New section that lists considerations for encrypting content.

[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps) (updated)<br>The section for configuring auto-labeling for Office apps now includes the new option to use trainable classifiers.

[Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 Groups, and SharePoint sites (public preview)](sensitivity-labels-teams-groups-sites.md) (updated)<br>Revisions throughout for a better reading experience and technical clarifications. Also, per customer feedback, added links to the [Azure AD article](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels) for enabling the preview and applying sensitivity labels to Microsoft 365 groups in the Azure portal. Finally, added a new section for auditing sensitivity label activities.

[Enable sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md) (updated)<br>Various updates include clarifications per customer feedback for how this feature works, emphasizing that new capabilities apply only to new and edited files, and a new limitation that you might see only during a testing phase if you delete labels.

[Use sensitivity labels in Office apps](sensitivity-labels-office-apps.md) (updated)<br>Updated the capability tables for letting users assign permissions and applying a label to content automatically. Also, per customer feedback, added an exception for email attachments inheriting a label.

### Service descriptions

[Microsoft 365 licensing guidance for security & compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance) (updated)<br>Retitled from "Microsoft 365 tenant-level services licensing guidance" to better reflect the content.

