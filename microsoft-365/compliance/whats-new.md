---
title: What's new in Microsoft Purview risk and compliance solutions
description: Whether it be adding new solutions to the compliance portal, updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft Purview helps you stay on top of the ever-changing compliance landscape. Find out what we've been up to this month.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 06/21/2023
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
- purview-compliance
ms.custom: seo-marvel-mar2020
---

# What's new in Microsoft Purview risk and compliance solutions

Whether it be adding new solutions to the [Microsoft Purview compliance portal](microsoft-365-compliance-center.md), updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft 365 helps you stay on top of the ever-changing compliance landscape. Take a look below to see what's new in Microsoft Purview today.

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

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## June 2023

### Data loss prevention

- **General availability (GA)**: Oversharing Popup for Outlook Win 32. [Scenario 2 Show policy tip as oversharing popup](dlp-create-deploy-policy.md#scenario-2-show-policy-tip-as-oversharing-popup) and [Business justification X-Header](dlp-policy-reference.md#business-justification-x-header).

### Sensitivity labels

- **General availability (GA)**: Now rolling out, Outlook for Android and Outlook for iOS support a setting for mandatory labeling that you can configure with Microsoft Intune to [prompt users to select a sensitivity label when they first compose an email](sensitivity-labels-office-apps.md#for-outlook-mobile-change-when-users-are-prompted-for-a-label) instead of when they send it.
- **General availability (GA)**: Outlook for Android and Outlook for iOS, the [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and [label colors](sensitivity-labels-office-apps.md#label-colors) are now in general availability. For iOS, the release is still rolling out.
- **In preview**: Now rolling out in preview, OneDrive locations for [auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange) are changing from sites specified by URLs to users and groups. This change of configuration means that [administrative units](microsoft-365-compliance-center-permissions.md#administrative-units-preview) are now supported for OneDrive auto-labeling policies. Any existing OneDrive sites specified in auto-labeling policies as site URLs will continue to work but before you can add more OneDrive locations, or for restricted admins, you must first delete any existing OneDrive sites specified as URLs. Groups supported: distribution groups, Microsoft 365 groups, mail-enabled security groups, and security groups.
- **In preview**: Now rolling out in preview, [limited support for labels configured for user-defined permissions](sensitivity-labels-sharepoint-onedrive-files.md#support-for-labels-configured-for-user-defined-permissions) for Office on the web, SharePoint and OneDrive.
- **Removal of limitations for Teams when using sensitivity labels**: Several previous limitations are removed for [Teams protected meetings](sensitivity-labels-meetings.md), which include Safari and Firefox support to prevent copy chat, support for virtual desktop infrastructure (VDI), policy settings for justification for changing a label, mandatory labeling, and a help link to a custom help page, and more methods are now supported to prevent copying chat.

## May 2023

### Audit

- Updates for audit log support for [Microsoft Project for the web](/microsoft-365/compliance/audit-log-activities#microsoft-project-for-the-web-activities), [Microsoft To Do](/microsoft-365/compliance/audit-log-activities#microsoft-to-do-activities),and [Microsoft Defender Experts](/microsoft-365/compliance/audit-log-activities#microsoft-defender-experts-activities) activities.
- Updates to clarify [audit log rentention policies](/microsoft-365/compliance/audit-log-retention-policies) and duration options.

### Compliance Manager

- **General availability (GA)**: New multicloud support for Compliance Manager.
    - **New article**: [Multicloud support in Compliance Manager](compliance-manager-multicloud.md) explains the new integration with Microsoft Defender for Cloud so you can assess your compliance posture across Microsoft 365, Microsoft Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS) with resource-level testing and cloud-specific guidance.
    - **New article**: [Configure cloud settings for use with Compliance Manager](compliance-manager-cloud-settings.md) details the setup process to receive multicloud support in Compliance Manager.
    - **New article**: [Compliance Manager glossary of terms](compliance-manager-glossary.md) explains new and existing terms and concepts.
- **General availability (GA)**: New configuration connectors for building assessments that cover non-Microsoft services.
    - **New article**: [Working with connectors in Compliance Manager](compliance-manager-connectors.md) details how to set up and use connectors for building assessments for non-Microsoft services.
    - **New article**: [Salesforce setup for Compliance Manager connector](compliance-manager-connectors-salesforce.md) explains the seupt process for using the Salesforce connector.
    - **New article**: [Zoom setup for Compliance Manager](compliance-manager-connectors-zoom.md) explains the setup process fo using the Zoom connector.
    - Update to [Build and manage assessments](compliance-manager-assessments.md) about incorporating connectors for non-Microsoft services.
- **Assigning user roles per regulatory template**: New capability allowing you to provide scoped access to any assessment built for a specific regulation. Updated pages include:
    - [Learn about regulations](compliance-manager-templates.md#grant-user-access-to-regulations)
    - [Get started](compliance-manager-setup.md#role-based-access-to-assessments-and-regulations)
    - [Build and manage assessments](compliance-manager-assessments.md#grant-user-access-to-individual-assessments)

### Data lifecycle management and records management

- **General availability (GA)**: [Simulation mode](apply-retention-labels-automatically.md#learn-about-simulation-mode) for auto-apply retention label policies is now generally available.
- **General availability (GA)**: Auto-labeling retention policies for [cloud attachments](apply-retention-labels-automatically.md#auto-apply-labels-to-cloud-attachments) that are shared via Exchange or Teams are now generally available. Cloud attachments shared via Viva Engage remain in preview.

### eDiscovery

- **In preview**: New article for [guest access in eDiscovery (Premium)](/microsoft-365/compliance/ediscovery-guest-access). With guest access, you can provide access to an eDiscovery Premium case to people outside your organization. You can invite guests users to eDiscovery (Premium) cases just like you can invite guests into your Teams environment.
- **In preview**: New support for *Export collected items* and *Export as report* [options for review sets](/microsoft-365/compliance/ediscovery-create-draft-collection#manage-a-collection-estimate) in eDiscovery (Premium).
- **In preview**: New support for viewing [job reports](/microsoft-365/compliance/ediscovery-managing-jobs#jobs-report-preview) for eDiscovery (Premium). eDiscovery (Premium) now includes a jobs report tool that lists all jobs that count towards the jobs concurrency and daily limits in eDiscovery for a defined time period.
- Updates to clarify the [indexing of non-custodial data sources](/microsoft-365/compliance/ediscovery-indexing-custodian-data) in eDiscovery (Premium) cases.

### Insider risk management

- **In preview**: [Fine-tune policy indicator thresholds with real-time analytics](insider-risk-management-settings-policy-indicators.md) to reduce alert noise.
- **In preview**: New [Ignore email signature attachments setting](insider-risk-management-settings-intelligent-detections.md) reduces alert noise.
- Updates for [forensic evidence billing](insider-risk-management-forensic-evidence-manage.md#capacity-and-billing).
- Updates for forensic evidence policy enforcement SLA: [Get started with insider risk management forensic evidence](insider-risk-management-forensic-evidence-configure.md#next-steps).

### Microsoft Priva

- Updates to [Get started with Priva](/privacy/priva/priva-setup#when-insights-start-to-populate): insights for the data minimization policy begin surfacing within three days after starting Priva for data that hasn't been modified within the last 30 days.
- Updates to [Find and visualize personal data in Priva](/privacy/priva/priva-data-profile#privacy-regulations) for the privacy regulations card, which pulls in insights from Compliance Manager.

### Sensitivity labels

- **Rolling out**: [PDF support for Office on the web](sensitivity-labels-office-apps.md#pdf-support) so that when Word, Excel, and PowerPoint convert a labeled Office document into a PDF document, the label with any content markings persists.
- **In preview**: Built-in labeling support for [Double Key Encryption (DKE)](encryption-sensitivity-labels.md#double-key-encryption) is in preview as a parity feature for the AIP add-in.

## April 2023

### Audit

- Updates for audit log support for [Microsoft Planner](/microsoft-365/compliance/audit-log-activities#microsoft-planner-activities) activities.

### Communication compliance

- New content on the [Filter email blasts feature](communication-compliance-policies.md#filter-email-blasts) and the [Email blasts senders report](communication-compliance-reports-audits.md#detailed-reports).
- Updates to [User-reported messages policy](communication-compliance-policies.md#user-reported-messages-policy).
- New fields for [Message Details reports](communication-compliance-reports-audits.md#message-details-report). 
- New conditions for [Regulatory compliance policy template](communication-compliance-policies.md#policy-templates).
- **New video**: Learn how to [detect communication risks in Microsoft Teams with communication compliance](communication-compliance-channels.md#microsoft-teams).

### Compliance Manager

- Updated [regulatory templates list](compliance-manager-templates-list.md) with templates Turkey - Information and Communication Security Guide and SA - Saudi Arabia Monetary Authority (SAMA) & National Cybersecurity Authority (NCA).

### Data lifecycle management and records management

- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md) when you use auto-apply retention label policies.

- **In preview**: Auto-labeling retention policies for [cloud attachments](apply-retention-labels-automatically.md#auto-apply-labels-to-cloud-attachments) that were already in preview now include attachments and links shared in Viva Engage.
- **In preview**: Support for Azure Active Directory administrative units—for both [data lifecycle managment](get-started-with-data-lifecycle-management.md#support-for-administrative-units) and [records management](get-started-with-records-management.md#support-for-administrative-units)—is starting to roll out.
- **In preview**: You can now optionally configure [auto-approval](disposition.md#auto-approval-for-disposition) when you configure a retention label for disposition review.

### Data loss prevention

- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md).
- **In preview**: Save a copy of items that match DLP policies to Azure storage [Learn about evidence collection for file activities on devices (preview)](dlp-copy-matched-items-learn.md) and [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md).
- **General availability (GA)**: Data loss prevention policies in Power BI to automatically detect sensitive information as it is being uploaded into Power BI and take immediate remediation actions. [Learn about data loss prevention policies in Power BI)](/microsoft-365/compliance/dlp-powerbi-get-started).

### eDiscovery

- **New article**: [Configure review set grouping settings for eDiscovery (Premium) cases](/microsoft-365/compliance/ediscovery-configure-review-set-settings) details how you can configure grouping settings for each Microsoft Purview eDiscovery (Premium) case to control how the data in a review set is grouped and displayed.
- **In preview**: New support for [upgrading a eDiscovery (Standard) case to eDiscovery (Premium)](/microsoft-365/compliance/ediscovery-close-reopen-delete-cases#upgrade-a-case-to-ediscovery-premium-preview).
- **In preview**: New support for Microsoft Teams meeting [recordings and transcripts](/microsoft-365/compliance/ediscovery-teams-investigation).
- **In preview**: New support for the [*Export item report* action](/microsoft-365/compliance/ediscovery-create-draft-collection) for collections in eDiscovery (Premium).
- **In preview**: New support for using the [new query builder to create search queries](/microsoft-365/compliance/ediscovery-query-builder). The query builder option in collection search tool provides a visual filtering experience when you build search queries in Microsoft Purview eDiscovery (Premium).
- Updates to [clarify the syntax](/microsoft-365/compliance/ediscovery-create-hold-notification) for issuance and release hold notifications for multiple users and email fields.
- Updates for a [new script](/microsoft-365/compliance/ediscovery-use-content-search-for-targeted-collections#script-to-pull-the-folderid-from-multiple-mailboxes) to pull the FolderID from multiple mailboxes in a content search for targeted collections.
- Update for [retry hold actions](/microsoft-365/compliance/ediscovery-add-custodians-to-case#retry-hold-action) when custodians are placed on hold.
- Update for [character and URL limits](/microsoft-365/compliance/ediscovery-limits-for-content-search) when searching SharePoint and OneDrive for Business locations.
- Clarification for the [data retention](/microsoft-365/compliance/ediscovery-managing-jobs) for job information.
- Updates for [requirements for decryption](/microsoft-365/compliance/ediscovery-decryption#requirements-for-decryption-in-ediscovery) in eDiscovery.
- **Article retired**: the *Change the size of PST files when exporting eDiscovery search results* article has been retired.

### Insider risk management

- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md).
- Updates to clarify the [required enterprise apps](/microsoft-365/compliance/ediscovery-premium-get-started#step-4-verify-that-required-ediscovery-apps-are-enabled) needed to access eDiscovery (Premium) view, filter, and search features.
- Updates to include an [example of remediating errors](/microsoft-365/compliance/ediscovery-error-remediation-when-processing-data#remediating-errors-by-uploading-the-extracted-text) by uploading the extracted text.

### Microsoft Priva

- **General availability (GA)**: [Recommended policy alert thresholds for more relevant and actionable alerts](/privacy/priva/risk-management-policies#set-alerts)
- **General availability (GA)**: [Flexible boundary options when setting conditions for data transfer policies](/privacy/priva/risk-management-policy-data-transfer#custom-setup-guided-policy-creation-process)

### Sensitivity labels

- **General availability (GA)**: [Default sensitivity label for a SharePoint document library](sensitivity-labels-sharepoint-default-label.md)
- **General availability (GA)**: Outlook for Mac [displays label colors](sensitivity-labels-office-apps.md#label-colors)
- **General availability (GA)**: Rolling out to Current Channel as a parity feature for the AIP add-in, built-in labeling for Windows supports [label inheritance from email attachments](sensitivity-labels-office-apps.md#configure-label-inheritance-from-email-attachments).
- **General availability (GA)**: [Apply S/MIME protection](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook) using Outlook on the web.
- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md) when you use auto-labeling policies for Exchange.
- **Change of version for AIP add-in disabled by default**: For the Monthly Enterprise Channel only, the AIP add-in for Office apps is disabled by default in version 2303. For the Current Channel and Semi-Annual Enterprise Channel, the AIP add-in is still disabled by default in version 2302.
- **Retirement notification for the AIP add-in for Office apps**: The AIP add-in will [retire April 2024](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/retirement-notification-for-the-azure-information-protection/ba-p/3791908). Although the add-in remains in maintenance mode until then, if you haven't already done so, we encourage you to [migrate to the labels built into Office](sensitivity-labels-aip.md).

## March 2023

### Audit

- Updates for *UserKey* and *UserType* schema values to address [scenarios](/microsoft-365/compliance/audit-log-detailed-properties#usertype-and-userkey-scenarios) for enumeration for audit records generated by guest users and to remove ambiguity for accepted data.
- Updates for [audit search records and activities](/microsoft-365/compliance/audit-log-search) related to Microsoft Defender for Identity (MDI).
- Updates for [new audit log fields](/microsoft-365/compliance/audit-log-detailed-properties) added to support Microsoft Purview Information Protection.
- Updates for across all [audit content](/microsoft-365/compliance/audit-solutions-overview) for new UTC support in audit solutions.
- Updates for all [events that are logged](/microsoftteams/audit-log-events) for the **Updates app** activities in Teams in the audit log.

### Communication compliance

- **New article**: Added article that includes a list of [best practices to help reduce alert "noise"](communication-compliance-alerts-best-practices.md). 
- **New article**: Added article that summarizes the [privacy principles for communication compliance](insider-risk-solution-privacy.md). 
- Clarification on the [Filter email blasts feature and why the report might include unexpected senders](communication-compliance-configure.md#step-5-required-create-a-communication-compliance-policy).
- Clarification that [Translation view includes associated conversation view messages](communication-compliance-investigate-remediate.md#step-2-examine-the-message-details).

### Data lifecycle management and records management

- **General availability (GA)**: Rolling out in general availability, [Microsoft Graph records management APIs](/graph/api/resources/security-recordsmanagement-overview) to support the management of retention labels and event-based retention.
- **In preview**: Auto-labeling retention policies for [cloud attachments](apply-retention-labels-automatically.md#auto-apply-labels-to-cloud-attachments) that were already in preview are now gradually rolling out support for URL text links.
- **Improvements for Teams retention policies**: Now rolling out, support for existing call data records as well as newly created call data records, and support for the control message events that name and rename a chat.
- **Improvements that support Power Automate flows**: Now rolling out to support the scenario of [customizing what happens at the end of the retention period](retention-label-flow.md), the existing Power Automate compliance actions have been renamed to more accurately describe their purpose. **Apply label on the item** is renamed **Relabel an item at the end of retention**, and **Deletes the item** is renamed **Deletes an item at the end of retention**. Additionally:
    - New compliance action to [improve the resilience of your flow](retention-label-flow.md#add-resilience-to-your-flow).
    - The trigger action **When the retention period expires** is renamed **When an item reaches the end of its retention period**.
    - New compliance action of **Apply a retention label on the item** to apply a retention label independently from this scenario, as if manually applying a label. The label doesn't need to be published and the retention label is applied immediately. Just like manually applying a retention label, an existing retention label will be overwritten.

### Data loss prevention

- **General availability (GA)**: [Learn about the Microsoft Purview Firefox extension](dlp-firefox-extension-learn.md) and [Get started with the Microsoft Purview Firefox extension](dlp-firefox-extension-get-started.md)
- **In preview**:
    - [Endpoint DLP Aggregated most restrictive actions applied to endpoints](dlp-policy-reference.md#for-endpoints)
    - [Just in time protection for endpoints and network shares](endpoint-dlp-learn-about.md#just-in-time-protection-preview)
    - [Display of conditions matched when an item matches a policy](dlp-configure-view-alerts-policies.md#other-matched-conditions)
    - [Endpoint DLP policies can be applied to network shares](dlp-configure-endpoint-settings.md#network-share-groups)
    - Support for [endpoint DLP policies in Azure virtual desktop, Citrix Virtual Apps and Desktops 7, Amazon virtual workspaces and Hyper-V environments](endpoint-dlp-getting-started.md#endpoint-dlp-support-for-virtualized-environments-preview)

### Device onboarding
- **In preview**: Device configuration and policy sync status is now viewable in the onboarded devices list for [Onboarding Windows 10 or Windows 11 devices](device-onboarding-overview.md#onboarding-windows-10-or-windows-11-devices) and [Onboarding devices into device management](device-onboarding-macos-overview.md#onboarding-devices-into-device-management) devices

### eDiscovery

- Updates for [hold type values](/microsoft-365/compliance/ediscovery-identify-a-hold-on-an-exchange-online-mailbox#review-the-results-of-the-mailbox-diagnostics-logs) in the Mailbox diagnostic logs.
- Clarifications for [self-chat messages support](/microsoftteams/ediscovery-investigation) in content search in Microsoft Teams.
- [Updates](/microsoft-365/compliance/ediscovery-view-documents-in-review-set) for new **Add Notes** feature in viewing review sets and updates for the review set user experience.
- Clarification for custom [sensitive information type requirement](/microsoft-365/compliance/ediscovery-keyword-queries-and-search-conditions) to use a GUID for search in eDiscovery.
- Clarification for [excluding partially indexed items](/microsoft-365/compliance/ediscovery-partially-indexed-items-in-content-search) by using a date range in a search query.
- New [clarification section](/microsoft-365/compliance/ediscovery-keyword-queries-and-search-conditions#searchable-sensitive-data-types) that that only Microsoft default sensitive information types are searchable by name, including new example.
- New update for review set viewer and pagination [limits](/microsoft-365/compliance/ediscovery-premium-limits#review-set-viewer-limits).

### Information barriers

- **New article**: Added new article to support the [new multi-segment mode](/microsoft-365/compliance/information-barriers-multi-segment) in information barriers. The multi-segment mode enables you to assign users in your organization to up to 10 segments in information barriers instead of being limited to just one segment. This allows support for more diverse communication rules between individuals and groups to support more complex organizational and operational scenarios.
- Clarifications for [hidden/disabled/guest user accounts](/microsoft-365/compliance/information-barriers-policies) and the *HiddenFromAddressListEnabled* parameter.
- Updates for information barriers policy application and the background processor in [Microsoft Teams](/microsoftteams/information-barriers-in-teams#ib-policy-application-in-teams).

### Insider risk management

- **Forensic Evidence GA**: With the GA release of Forensic Evidence, you can now:
   - [Specify websites or desktop apps to include or exclude when you create a policy](insider-risk-management-forensic-evidence-configure.md#step-4-create-a-policy).
   - [View and explore a list of captured clips and filter the list to find just the information you need](insider-risk-management-forensic-evidence-manage.md#viewing-captured-clips).
   - [Purchase/analyze capacity for captured clips and/or sign up for 20 GB of trial capacity](insider-risk-management-forensic-evidence-manage.md#capacity-and-billing).
- **New article**: Added article that [summarizes the privacy principles for insider risk management](insider-risk-solution-privacy.md). 
- Clarification about [adding "webhook.ingestion.office.com" to the allowlist when setting up a connector to import HR data](import-hr-data.md#before-you-begin).
- Clarification about the [past activity detection period for email activities (contrasted to audit activities)](insider-risk-management-settings-policy-timeframes.md).
- Clarification on the [retention time for user activities reports](insider-risk-management-activities.md#retention-and-item-limits).

### Microsoft Priva

- Clarifications on the three frequency settings for [user email notifications](/privacy/priva/risk-management-notifications) for policies and [timing on when the emails are sent](/privacy/priva/risk-management-policies#define-outcomes-user-email-notifications-and-tips).
- Subject rights requests now display a count of **Record** items with retention labels as a [priority item to review](/privacy/priva/subject-rights-requests-workflow#priority-items-to-review), which means they can't be processed by the [delete workflow](/privacy/priva/subject-rights-requests-delete#delete-workflow-and-how-items-are-deleted).
- Subject rights requests [reports](/privacy/priva/subject-rights-requests-reports) page clarifies that delete requests have their own unique report, the action execution log report.

### Permissions

- [Clarifications](/microsoft-365/compliance/microsoft-365-compliance-center-permissions) for role group support for security groups and blocked and unblocked groups.

### Sensitivity labels

- **AIP add-in disabled by default**: Now rolling out, the AIP add-in for Office apps is disabled by default with version 2302. Starting with this version, you must [configure an Office setting](sensitivity-labels-aip.md#how-to-configure-newer-versions-of-office-to-enable-the-aip-add-in) if you need to continue to use the Azure Information Protection (AIP) add-in rather than the labels that are built into Office apps.
- **General availability (GA)**: For Windows, the [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and [label colors](sensitivity-labels-office-apps.md#label-colors) are now generally available for Word, Excel, PowerPoint, and Outlook.
- **General availability (GA)**: Both Outlook for Windows and Outlook for Mac are rolling out in general availability for [protected meetings](sensitivity-labels-meetings.md).
- **General availability (GA)**: Now in general availability for built-in labeling for Windows, support for a [default sublabel for a parent label](sensitivity-labels-office-apps.md#specify-a-default-sublabel-for-a-parent-label) as a parity feature for the AIP add-in.
- **General availability (GA)**: For labeling built into Windows, macOS, iOS, and Android, auditing actions for sensitivity labels include encryption details such as a change in the encryption status and settings, and the Rights Management owner.
- **In preview**: The ability to [scope labels to files and emails](sensitivity-labels-office-apps.md#scope-labels-to-just-files-or-emails), so that, for example, a sensitivity label is visible to users in Outlook but not in Word, Excel, or PowerPoint. This configuration can be used as a parity feature for the AIP add-in, which could be disabled per app.
- **In preview**: As a parity feature for the AIP add-in, built-in labeling for Windows supports [label inheritance from email attachments](sensitivity-labels-office-apps.md#configure-label-inheritance-from-email-attachments).
- **In preview**: Prevent [oversharing of labeled emails as a DLP policy tip](dlp-create-deploy-policy.md#scenario-2-show-policy-tip-as-oversharing-popup). This DLP policy configuration is an equivalent for the AIP add-in with PowerShell advanced settings that implement pop-up messages in Outlook that warn, justify, or block emails being sent.
- **In preview**: Preview versions of Outlook for Mac now support [label colors](sensitivity-labels-office-apps.md#label-colors) but don't yet support the sensitivity bar.
- **In preview**: For mandatory labeling, Outlook for Android in the Beta Channel supports a setting that you can configure with Microsoft Intune to [prompt users to select a sensitivity label when they first compose an email](sensitivity-labels-office-apps.md#for-outlook-mobile-change-when-users-are-prompted-for-a-label) instead of when they send it.
- **In preview**: Now rolling out in preview to SharePoint and Teams, users can select and change a sensitivity label from the details pane from these apps when [sensitivity labels are enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).
- **Removal of restrictions for prevent copying chat for protected meetings**: The label setting that [prevents copying chat to the clipboard](sensitivity-labels-meetings.md#prevent-copying-chat-to-the-clipboard-label-setting) now supports users outside your organization and also users who join a chat but weren't invited to the meeting.
- **Ability to turn off the default sensitivity label for SharePoint document libraries**: If you don't want SharePoint site admins to be able to configure a default sensitivity label for SharePoint document libraries, you can now [turn off this feature](sensitivity-labels-sharepoint-default-label.md#how-to-turn-off-this-feature) as a tenant-level setting.

## February 2023

### Audit

- Clarification for audit log activities for [messages with reactions](/microsoft-365/compliance/audit-log-activities#viva-engage-activities) in Viva Engage.
- [Clarification](/microsoft-365/compliance/audit-log-retention-policies#before-you-create-an-audit-log-retention-policy) on customized retention policies and licensing requirements.
- Updates to [export limits](/microsoft-365/compliance/audit-new-search#audit-search-results-overview) for all search job items in Audit (Premium).
- Clarification for [OneDrive for Business support](/microsoft-365/compliance/audit-premium) in Audit (Premium).

### Communication compliance

- **Mark a policy as a favorite**: [Mark a policy as a favorite and then filter and sort your policy lists](communication-compliance-policies.md#mark-a-policy-as-a-favorite).
- **Filter email blasts**: [Avoid generating alerts when messages are sent from email blast services](communication-compliance-configure.md#step-5-required-create-a-communication-compliance-policy).
- **Filter Message details report by a specific user**: [Filter the Message details report by a specific user or users to save time and resources](communication-compliance-reports-audits.md#message-details-report).

### Data lifecycle management and records management

- **Rolling out in preview**: Auto-labeling retention policies now support [simulation mode](apply-retention-labels-automatically.md#learn-about-simulation-mode), so you can test out your policy configuration and view results before deploying in production.
- **Configuration improvements**: The configuration for retention policies and retention label policies in the Microsoft Purview compliance portal has been improved for the selection and configuration of locations. Some of the location names have changed to better reflect what's included for the location, and a new **Applicable Content** column is added for additional information.
- **Relocation for adaptive scopes**: The configuration and management of [adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention) is moving to a new location in the Microsoft Purview compliance portal: **Roles & Scopes** \> **Adaptive scopes**.
- New troubleshooting resources:
    - [Identify errors in Microsoft 365 retention and retention label policies](/microsoft-365/troubleshoot/retention/identify-errors-in-retention-and-retention-label-policies)
    - [Resolve errors in Microsoft 365 retention and retention label policies](/microsoft-365/troubleshoot/retention/resolve-errors-in-retention-and-retention-label-policies)

### Data Loss Prevention

- **Support for administrative units in DLP (preview)** - [Policy Scoping](dlp-policy-reference.md#policy-scoping)
- **Adaptive Protection (preview)** - [Learn about Adaptive Protection in Data Loss Prevention (preview)](dlp-adaptive-protection-learn.md)
- **DLP migration assistant for Symantec GA** - [Learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md)

### eDiscovery

- Updates and clarifications for [decryption support](/microsoft-365/compliance/ediscovery-decryption) in eDiscovery solutions.
- Updates and clarification for [keyword queries and search conditions](/microsoft-365/compliance/ediscovery-keyword-queries-and-search-conditions) in eDiscovery.
- Updates for new collection management features, including new review set as column links, including the review set name in collection overviews, saving collections as a draft to capture progress and return to complete later, and more:
    - *Updated*: [Learn about collections in eDiscovery (Premium)](/microsoft-365/compliance/ediscovery-collections)
    - *Updated*:[Create a collection estimate in eDiscovery (Premium)](/microsoft-365/compliance/ediscovery-create-draft-collection)
    - *Updated*: [Commit a collection estimate to a review set in eDiscovery (Premium)](/microsoft-365/compliance/ediscovery-commit-draft-collection)
- New description section for [expand selection](/microsoft-365/compliance/ediscovery-export-documents-from-review-set#export-options) option for filtered and selected documents in export options.
- Updates for graph API endpoints in the [Search and purge chat messages in Teams](/microsoft-365/compliance/ediscovery-search-and-delete-teams-chat-messages) article.
- Updates to clarify how to [verify the deletion of purged messages](/microsoft-365/compliance/ediscovery-search-and-delete-teams-chat-messages#step-6-verify-chat-messages-are-purged) in Microsoft Teams without having to view as a specific user.

### Information barriers

- New support for multi-segments, people discoverability options, Exchange ABP integration, and more:
    - *New*: [Use multi-segment support in information barriers](/microsoft-365/compliance/information-barriers-multi-segment)
    - *Updated*: [Use information barriers with OneDrive](/sharepoint/information-barriers-onedrive)
    - *Updated*: [Use information barriers with SharePoint](/sharepoint/information-barriers)
    - *Updated*: [Use information barriers in Microsoft Teams](/microsoftteams/information-barriers-in-teams)
- Clarifications for [policy application processing](/microsoftteams/information-barriers-in-teams#ib-policy-application-in-teams) for IB in Microsoft Teams.

### Insider risk management

- **In preview**: New [Adaptive Protection guidance](/microsoft-365/compliance/insider-risk-management-adaptive-protection). Adaptive Protection in Microsoft Purview uses machine learning to identify and mitigate the most critical risks with the most effective [data loss prevention (DLP)](/microsoft-365/compliance/dlp-adaptive-protection-learn) protection controls dynamically, saving security teams valuable time while ensuring better data security.
- **New sequences**: [Added sequence detection for third-party cloud services and unallowed domains](insider-risk-management-policies.md#sequence-detection-preview)
- **New cumulative exfiltration button**: [The new cumulative exfiltration button on the user activity chart provides a visual chart of how activity is building over time for a user](insider-risk-management-activities.md#user-activity)
- **Filter out activity that has already been reviewed**: [Use the Review status filter to filter out any activity that was part of a dismissed or resolved alert](insider-risk-management-activities.md#activity-explorer-1).
- [Clarification for why user activity data outside the selected calendar control range might be included](insider-risk-management-activities.md#user-activity-reports) 
- [Clarification that scoped admins can't select the quick setup option for Adaptive Protection](insider-risk-management-adaptive-protection.md#quick-setup)

### On-premises scanner

- You can no longer configure the scanner in the Azure portal. To help you locate the equivalent configuration in the Microsoft Purview compliance portal, see [Configuration that you used to do in the Azure portal for Azure Information Protection](azure-portal-migration.md).

### Permissions

- **In preview**: [Support for Azure Active Directory administrative units](/microsoft-365/compliance/microsoft-365-compliance-center-permissions#administrative-units-preview). Administrative units let you subdivide your organization into smaller units, and then assign specific administrators that can manage only the members of those units.

### Sensitivity labels

- **General availability (GA)**: Protected meetings by [labeling calendar invites and responses, Teams meetings, and chat](sensitivity-labels-meetings.md). Although Outlook for Mac is now rolling out in general availability, Outlook for Windows remains in preview for this scenario.
- **General availability (GA)**: For Windows, built-in labeling supports [organization-wide custom permissions](encryption-sensitivity-labels.md#support-for-organization-wide-custom-permissions) as a parity feature for the AIP add-in.
- **In preview**: [Support for Azure Active Directory administrative units](get-started-with-sensitivity-labels.md#support-for-administrative-units).
- **In preview**: Previously available in preview for Word, Excel, and PowerPoint, the [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) with support for [label colors](sensitivity-labels-office-apps.md#label-colors) is now also in preview for Outlook on Windows.
- **In preview**: Now supported for labeling built into Windows, macOS, iOS, and Android, auditing actions for sensitivity labels include encryption details such as a change in the encryption status and settings, and the Rights Management owner.
- **New Office setting**: Available with Group Policy and the Cloud Policy service for Microsoft 365, a new setting if you need to [disable the PDF support in Office apps for Word, Excel, and PowerPoint](sensitivity-labels-office-apps.md#disabling-pdf-support).
- **Rolling out**: In the Microsoft Purview compliance portal, the horizontal tabs for **Overview**, **Labels**, **Label policies**, and **Auto-labeling** now display as vertical options in the left navigation pane when you expand **Information protection**.

## January 2023

### Audit

- Updates for [Teams audit log events](/microsoftteams/audit-log-events) for sensitivity labels.
- Updates for exporting permissions in [auditing solutions](/microsoft-365/compliance/audit-solutions-overview).

### Communication compliance

- Updates to [conditional settings](/microsoft-365/compliance/communication-compliance-policies#conditional-settings) and the required formatting for multi-value conditions.
- New section that outlines [limitations](/microsoft-365/compliance/communication-compliance-channels#channel-limits) for supported channels.

### Compliance Manager
- Compliance Manager now has [improvement actions related to Microsoft Priva](/microsoft-365/compliance/compliance-manager-setup#testing-source-for-automated-testing) (**in preview**).

### eDiscovery

- Updated with a clarification for searches for [inactive mailboxes](/microsoft-365/compliance/create-and-manage-inactive-mailboxes).
- Updated the [supported decryption](/microsoft-365/compliance/ediscovery-decryption#supported-decryption) types in eDiscovery (Standard) and (Premium).
- Updated the [example PowerShell script](/microsoft-365/compliance/ediscovery-create-a-report-on-holds-in-cases#step-2-run-the-script-to-report-on-holds-associated-with-ediscovery-cases) to report holds on associated eDiscovery cases.
- Clarified the [query and search filter requirements](/microsoft-365/compliance/ediscovery-review-set-search) for a review set.

### Insider risk management

- Updated with [clarifications](/microsoft-365/compliance/insider-risk-management-forensic-evidence) for forensic evidence about timelines in the user activity reports and the *all activities* capturing option.
- Updated *obfuscation* examples for [insider risk management policies](/microsoft-365/compliance/insider-risk-management-policies).
- Restructured documentation and moved [policy template guidance](/microsoft-365/compliance/insider-risk-management-policy-templates) into a new article.

### Microsoft Priva

- Two additional roles are now permitted to start a [Priva trial](/privacy/priva/priva-trial): Compliance Admin and Info Protection Admin.
- There are new recommended alert settings (**in preview**) in [Privacy Risk Management policies](/privacy/priva/risk-management-policies#alert-frequency-and-thresholds) that allow users to choose more actionable and relevant alerts to reduce noise and alert fatigue.
- There are new Compliance Manager improvement actions related to Priva (in preview); see [these instructions](/privacy/priva/priva-overview#microsoft-purview-compliance-manager) for how to access Compliance Manager and how to see the actions.
- Updates for [creating a subject rights request](/privacy/priva/subject-rights-requests-create):
    - During the [custom setup process](/privacy/priva/subject-rights-requests-create#custom-setup-guided-process-to-choose-all-settings), it's now optional to enter the data subject's name. A new flyout pane lets you add more identifiers.
    - When refining your search, a new [Conditions](/privacy/priva/subject-rights-requests-create#conditions) flyout pane appears during search refinement lets users set multiple search conditions at once.
- Update to clarify that a subject rights request will automatically pause at the [data estimate stage](/privacy/priva/subject-rights-requests-data-retrieval) if over 10K items or 100 GB of data are likely to be retrieved.
- Updates for [reviewing data and collaborating on subject rights requests](/privacy/priva/subject-rights-requests-data-review):
    - There are new filtering options when reviewing data, including keywords supporting multiple words and wildcard.
    - The "Plain text" view in the content review area now highlights all the data subject identifiers provided. 
    - Clarifications that the search function in the annotate view can jump to search results within the view. 
    - Individual collaborators can now be removed from dedicated Teams channel

### Sensitivity labels

- **Rolling out in preview**: As a parity feature for the AIP add-in, built-in labeling for Windows supports the configuration of a [default sublabel for a parent label](sensitivity-labels-office-apps.md#specify-a-default-sublabel-for-a-parent-label).
- **Rolling out in preview**: Word, Excel, and PowerPoint in Office for Mac also supports the [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and [label colors](sensitivity-labels-office-apps.md#label-colors).
- The earliest version for the AIP add-in to be [disabled by default in Office apps](sensitivity-labels-aip.md#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps) for the Current Channel and Monthly Enterprise Channel is now version 2302. The minimum version for the Semi-Annual Channel hasn't changed.

