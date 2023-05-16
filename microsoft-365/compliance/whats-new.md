---
title: What's new in Microsoft Purview risk and compliance solutions
description: Whether it be adding new solutions to the compliance portal, updating existing features based on your feedback, or rolling out fresh and updated documentation, Microsoft Purview helps you stay on top of the ever-changing compliance landscape. Find out what we've been up to this month.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/12/2023
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

## May 2023

### Data lifecycle management and records management

- **General availability (GA)**: [Simulation mode](apply-retention-labels-automatically.md#learn-about-simulation-mode) for auto-apply retention label policies is now generally available.
- **General availability (GA)**: Auto-labeling retention policies for [cloud attachments](apply-retention-labels-automatically.md#auto-apply-labels-to-cloud-attachments) that are shared via Exchange or Teams are now generally available. Cloud attachments shared via Yammer remain in preview.

### Insider risk management

- **In preview**: [Fine-tune policy indicator thresholds with real-time analytics](insider-risk-management-settings.md#indicator-level-settings) to reduce alert noise.
- **In preview**: New [Ignore email signature attachments setting](insider-risk-management-settings.md#intelligent-detections) reduces alert noise.
- Updates for [forensic evidence billing](insider-risk-management-forensic-evidence-manage.md#capacity-and-billing).
- Updates for forensic evidence policy enforcement SLA: [Get started with insider risk management forensic evidence](insider-risk-management-forensic-evidence-configure.md#next-steps). 

## April 2023

### Communication compliance

- New content on the [Filter email blasts feature](communication-compliance-policies.md#filter-email-blasts) and the [Email blasts senders report](communication-compliance-reports-audits.md#detailed-reports).
- Updates to [User-reported messages policy](communication-compliance-policies.md#user-reported-messages-policy).
- New fields for [Message Details reports](communication-compliance-reports-audits.md#message-details-report). 
- New conditions for [Regulatory compliance policy template](communication-compliance-policies.md#policy-templates).
- **New video**: Learn how to [detect communication risks in Microsoft Teams with communication compliance](communication-compliance-channels.md#microsoft-teams).


### Data lifecycle management and records management

- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md) when you use auto-apply retention label policies.
- **In preview**: Auto-labeling retention policies for [cloud attachments](apply-retention-labels-automatically.md#auto-apply-labels-to-cloud-attachments) that were already in preview now include attachments and links shared in Yammer.
- **In preview**: Support for Azure Active Directory administrative units—for both [data lifecycle managment](get-started-with-data-lifecycle-management.md#support-for-administrative-units) and [records management](get-started-with-records-management.md#support-for-administrative-units)—is starting to roll out.
- **In preview**: You can now optionally configure [auto-approval](disposition.md#auto-approval-for-disposition) when you configure a retention label for disposition review.

### Data loss prevention

- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md).
- **In preview**: Save a copy of items that match DLP policies to Azure storage [Learn about evidence collection for file activities on devices (preview)](dlp-copy-matched-items-learn.md) and [Get started with collecting files that match data loss prevention policies from devices (preview)](dlp-copy-matched-items-get-started.md).

### Insider risk management

- **In preview**: Scan for sensitive information in images with support for [optical character recognition](ocr-learn-about.md).


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
- Updates for [new audit log fields](/microsoft-365/compliance/audit-log-detailed-properties) added to support Microsoft Information Protection.
- Updates for across all [audit content](/microsoft-365/compliance/audit-solutions-overview) for new UTC support in audit solutions.
- Updates for all [events that are logged](/microsoftteams/audit-log-events) for the **Updates app** activities in Teams in the audit log.

### Communication compliance

- **New article**: Added article that includes a list of [best practices to help reduce alert "noise"](communication-compliance-alerts-best-practices.md). 
- **New article**: Added article that summarizes the [privacy principles for communication compliance](insider-risk-solution-privacy.md). 
- Clarification on the [Filter email blasts feature and why the report might include unexpected senders](communication-compliance-configure.md#step-5-required-create-a-communication-compliance-policy).
- Clarification that [Translation view includes associated conversation view messages](communication-compliance-investigate-remediate.md#step-2-examine-the-message-details).

### Data lifecycle management and records management

- **General availability (GA)**: Rolling out in general availability, [Microsoft Graph Records Management APIs](/graph/api/resources/security-recordsmanagement-overview) to support the management of retention labels and event-based retention.
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
    - [Endpoint DLP policies can be applied to network shares](dlp-configure-endpoint-settings.md#network-share-coverage-and-exclusions-preview)
    - Support for [endpoint DLP policies in Azure virtual desktop, Citrix Virtual Apps and Desktops 7, Amazon virtual workspaces and Hyper-v environments](endpoint-dlp-getting-started.md#endpoint-dlp-support-for-virtualized-environments-preview)
    - [Show policy tips as an oversharing popup](dlp-create-deploy-policy.md#scenario-2-show-policy-tip-as-oversharing-popup-preview)

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
- Clarification about the [past activity detection period for email activities (contrasted to audit activities)](insider-risk-management-settings.md#policy-timeframes).
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
- **In preview**: Prevent [oversharing of labeled emails as a DLP policy tip](dlp-create-deploy-policy.md#scenario-2-show-policy-tip-as-oversharing-popup-preview). This DLP policy configuration is an equivalent for the AIP add-in with PowerShell advanced settings that implement pop-up messages in Outlook that warn, justify, or block emails being sent.
- **In preview**: As a parity feature for the AIP add-in, built-in labeling for Windows supports [label inheritance from email attachments](sensitivity-labels-office-apps.md#configure-label-inheritance-from-email-attachments).
- **In preview**: Preview versions of Outlook for Mac now support [label colors](sensitivity-labels-office-apps.md#label-colors) but don't yet support the sensitivity bar.
- **In preview**: For mandatory labeling, Outlook for Android in the Beta Channel supports a setting that you can configure with Microsoft Intune to [prompt users to select a sensitivity label when they first compose an email](sensitivity-labels-office-apps.md#for-outlook-mobile-change-when-users-are-prompted-for-a-label) instead of when they send it.
- **In preview**: Now rolling out in preview to SharePoint and Teams, users can select and change a sensitivity label from the details pane from these apps when [sensitivity labels are enabled for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).
- **Removal of restrictions for prevent copying chat for protected meetings**: The label setting that [prevents copying chat to the clipboard](sensitivity-labels-meetings.md#prevent-copying-chat-to-the-clipboard-label-setting) now supports users outside your organization and also users who join a chat but weren't invited to the meeting.
- **Ability to turn off the default sensitivity label for SharePoint document libraries**: If you don't want SharePoint site admins to be able to configure a default sensitivity label for SharePoint document libraries, you can now [turn off this feature](sensitivity-labels-sharepoint-default-label.md#how-to-turn-off-this-feature) as a tenant-level setting.

## February 2023

### Audit

- Clarification for audit log activities for [messages with reactions](/microsoft-365/compliance/audit-log-activities#yammer-activities) in Yammer.
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

## December 2022

### Communication compliance

- New [transparency note](/microsoft-365/compliance/communication-compliance-solution-overview) to convey the purpose and intended uses of machine learning in policy templates that use classifiers for business conduct and regulatory compliance.
- Changed the [time zone from local time zone to Coordinated Universal Time (UTC)](/microsoft-365/compliance/communication-compliance-policies) for policy activity detection, user-reported messages, and filters for reports.
- Updated table for [built-in trainable and global classifiers](/microsoft-365/compliance/communication-compliance-policies) to increase visibility for details specific to pre-trained classifiers. Includes updated word count requirements for messages in English and non-English languages.

### Compliance Manager

- Assessment templates that belong to the same regulation family now count as one template. The [definition of **included templates**](compliance-manager-templates-list.md#included-regulations) has been updated to align with [template licensing changes starting December 2022](compliance-manager-faq.yml#what-changed-with-template-licensing-in-december-2022-).
- Improvement actions now provide greater visibility into related controls and assessments. Improvement action details pages have a new [**Related controls** tab](compliance-manager-improvement-actions.md#improvement-actions-details-page), and the **Summary** section has a clickable **Assessments** number that, when selected, lists all the assessments related to that action.

### Data lifecycle management and records management

- Disposition review no longer has a maximum of 1,000,000 items per label pending or reviewed. This limitation is removed from [Limits for retention policies and retention label policies](retention-limits.md).

### Insider risk management

- [Examples of file paths](/microsoft-365/compliance/insider-risk-management-settings) to denote specific and wildcard folders and sub-folders to be excluded.

### Microsoft Priva

- [Tags for reviewing data in a subject rights request](/privacy/priva/subject-rights-requests-data-review#apply-tags) provide greater flexibility. There are now two default tags and 21 custom tags that can be named and defined by an organization. Tags can now be applied to, or removed from, multiple content items at once.
- The maximum file size for [file import during data review](/privacy/priva/subject-rights-requests-data-review#import-additional-files) for a subject rights request has increased to 500 MB.
- Instructions for working with the [action execution log report](/privacy/priva/subject-rights-requests-delete#action-execution-log-report) for a delete request have been updated; including a clarification that its retention period is the same as all other subject rights request reports.

### Sensitivity labels

- **General availability (GA)**: S/MIME support for Windows is now available in the Office Current Channel, providing parity with the AIP add-in. For more information, see [Apply S/MIME protection](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook).
- **Rolling out in preview**: Protected meetings by [labeling calendar invites and responses, Teams meetings, and chat](sensitivity-labels-meetings.md).

## November 2022

### Audit

- [Audit New Search](/microsoft-365/compliance/audit-new-search) - the new export limit is now up to a maximum of 500K (500,000 rows) for a single export.
- [Search the audit log in the compliance portal](/microsoft-365/compliance/audit-log-search) - clarified table for retention policies and labels.

### Communication compliance

- [Messages in alerts](/microsoft-365/compliance/communication-compliance-investigate-remediate) now include a sentiment evaluation to help investigators quickly prioritize potentially riskier messages to address first.
- [Automatically detects if text is in a different language](/microsoft-365/compliance/communication-compliance-investigate-remediate) than the user's current system setting and displays alert message text accordingly. 
- [Threat, Harassment, and Profanity classifiers](/microsoft-365/compliance/communication-compliance-policies) in the English language now inspects and evaluates messages with a word count of three or greater.

### Compliance Manager

- New [role-based access to assessments](compliance-manager-setup.md#role-based-access-to-assessments) allows you to [assign users roles for viewing and managing individual assessments](compliance-manager-assessments.md#grant-user-access-to-individual-assessments).
- [Working with improvement actions](compliance-manager-improvement-actions.md#assign-improvement-action-to-assessor-for-completion) - clarified that users need a **Compliance Manager Assessor** role in order to edit improvement action testing notes, and that roles can now be assigned for individual assessments.

### eDiscovery

- [Limits in eDiscovery (Premium)](/microsoft-365/compliance/limits-ediscovery20) - new section for review set viewer limits, the maximum number of items displayed per page in a review set is now 10,000.
- [Decryption in Microsoft Purview eDiscovery tools](/microsoft-365/compliance/ediscovery-decryption) - clarified how items labeled within SharePoint Online are decrypted with eDiscovery tools.
- [Conduct an eDiscovery investigation of content in Microsoft Teams](/microsoftteams/ediscovery-investigation) - expanded reactions in Microsoft Teams chats are now supported in eDiscovery (Premium).
- [Create an eDiscovery hold](/microsoft-365/compliance/create-ediscovery-holds) - clarified how eDiscovery holds are handled when a user's OneDrive URL changes.
- [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set) - clarified how eDiscovery includes the parent email in the PST files if defined by the "Group" option in the review set.

### Insider risk management

- [Sensitive info types](/microsoft-365/compliance/insider-risk-management-settings) now has a limit of 500 types that you can exclude. The previous limit was 100 sensitive info types.
- Admins can now enable [potential high impact user](/microsoft-365/compliance/insider-risk-management-settings) and [cumulative exfiltration activities](/microsoft-365/compliance/insider-risk-management-configure) score boosters in policy settings.
- New [risky browser indicators](/microsoft-365/compliance/insider-risk-management-settings) available for detecting user browsing activity related to websites that are considered malicious or risky and pose potential insider risk that may lead to a security or compliance incident.

### Microsoft Priva

- **In preview**: Delete requests are now supported by Subject Rights Requests.
    - [Create and manage a delete request (preview)](/privacy/priva/subject-rights-requests-delete) - details the process for setting up a delete type of request, collaborating on a review process to approve the deletion, and initiating a workflow to carry out the deletion.
    - [Set user permissions and assign roles](/privacy/priva/priva-permissions) - lists the new role of **Subject Rights Requests Approver** for delete request approvers.
    - [Review data for a subject rights request](/privacy/priva/subject-rights-requests-data-review) - clarifies that adding the **delete** data review tag doesn't mark the item for deletion in the new delete request type.
    - [Create a request and define search settings](/privacy/priva/subject-rights-requests-create) - adds **Delete (preview)** as a request type.

### On-premises scanner

- **General availability (GA)**: Configuration for the Microsoft Purview Information Protection scanner (formerly named Azure Information Protection unified labeling scanner) in the Microsoft Purview compliance portal. For more information, see [Configure & install the information protection scanner](deploy-scanner-configure-install.md).

### Sensitivity labels

- **General availability (GA)**: Trainable classifiers for [auto-labeling policies](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange). Trainable classifiers are now available for both auto-labeling for Office apps that use label settings (known as client-side auto-labeling) and auto-labeling policies (known as service-side auto-labeling). As a result, trainable classifiers are removed from the [comparison table](apply-sensitivity-label-automatically.md#compare-auto-labeling-for-office-apps-with-auto-labeling-policies) that lists only the differences between the two auto-labeling methods.

- The automated email that has the subject **Incompatible sensitivity label detected** for when there's a [labeling mismatch for a site](sensitivity-labels-teams-groups-sites.md#auditing-sensitivity-label-activities) now contains a link to an internal troubleshooting guide that you must specify as a URL with the *LabelMismatchEmailHelpLink* parameter from Set-SPOTenant.

- If you need to, you can now [disable co-authoring for your tenant by using PowerShell](sensitivity-labels-coauthoring.md#if-you-need-to-disable-this-feature).

## October 2022

### Audit

- [Audit New Search](/microsoft-365/compliance/audit-new-search) - users can now run 10 concurrent audit search jobs with a max of one unfiltered search job, and review the progress %, result number, and job status in the UI. Historical search jobs results are now stored for 30 days and can be accessed after completion.)

### Communication compliance

- **In preview**: New communication compliance [integration with insider risk management](/microsoft-365/compliance/communication-compliance#integration-with-insider-risk-management-preview). Communication compliance can now provide risk signals detected in messages to insider risk management policies. Risky users detected in messages by the communication compliance policy act as a triggering event to bring users into scope for the insider risk management policies.

### Data loss prevention

- **In preview**: Multiple updates for authorization groups in [Configure endpoint DLP settings](/microsoft-365/compliance/dlp-configure-endpoint-settings) and [Using Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-using).
    - [Printer groups](/microsoft-365/compliance/dlp-configure-endpoint-settings#printer-groups-preview)
    - [Removable USB storage device groups](/microsoft-365/compliance/dlp-configure-endpoint-settings#removable-storage-device-groups-preview)
    - [Network share paths](/microsoft-365/compliance/dlp-configure-endpoint-settings#network-share-groups-preview)
    - [Website groups](/microsoft-365/compliance/endpoint-dlp-using#scenario-4-avoid-looping-dlp-notifications-from-cloud-synchronization-apps-with-auto-quarantine-preview)
    - [VPN network location groups](/microsoft-365/compliance/dlp-configure-endpoint-settings#vpn-settings-preview)
    - [Sensitive service domains](/microsoft-365/compliance/dlp-configure-endpoint-settings#sensitive-service-domains)
- **In preview**: Policies can use grouping of conditions, nesting of groups and the use of boolean operators (AND/OR/NOT) between them.
    - [Complex rule design](/microsoft-365/compliance/dlp-policy-design#complex-rule-design-preview)
    - [Use trainable classifiers as conditions in DLP policies](/microsoft-365/compliance/dlp-policy-reference#location-support-for-how-content-can-be-defined)
-  **In preview**: For endpoints, support for detecting sensitive items that are password protected or encrypted.
    - [Conditions that devices support](/microsoft-365/compliance/dlp-policy-reference#conditions-devices-supports)
- **Generally available**: [100 new files types that can be scanned](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection)

### eDiscovery

- [Limits for Content search and eDiscovery (Standard)](/microsoft-365/compliance/limits-for-content-search) - clarified how eDiscovery jobs are counted towards limits.
- [Export documents from a review set in eDiscovery (Premium)](/microsoft-365/compliance/export-documents-from-review-set) - removed conversation PDF support per feature and UI updates.
- [Assign eDiscovery permissions in the compliance portal](/microsoft-365/compliance/ediscovery-assign-permissions) - added content to support new Manage review set tags role.
- [New-ComplianceSecurityFilter](/powershell/module/exchange/new-compliancesecurityfilter) - now support only 'all' parameters, removed non-supported example scenarios.
- [Keyword queries and search conditions for eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions) - clarified the supported FolderId 48-character format indexed for search.

### Insider risk management

- **In preview**: Insider risk management introduces [forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence), which enables customizable visual activity capturing across devices to help your organization better mitigate, understand, and respond to potential data risks like unauthorized data exfiltration of sensitive data.
- **In preview**: Insider risk management [integration with communication compliance](/microsoft-365/compliance/communication-compliance#integration-with-insider-risk-management-preview) when using the *Data leaks by risky users* or *Security policy violations by risky users* policy templates. Communication compliance can now provide risk signals detected in messages to insider risk management policies.
- **In preview**: New [inline alert customization](/microsoft-365/compliance/insider-risk-management-settings#inline-alert-customization-preview) allows analysts and investigators to quickly edit policies when reviewing alerts.
- New [priority content scoring updates](/microsoft-365/compliance/insider-risk-management-policies#prioritize-content-in-policies) that allow you to choose whether to assign risk scores to all activities detected by a policy or only activities that include priority content.
- Security teams are now able to [customize a security trigger](/microsoft-365/compliance/insider-risk-management-policy-templates#policy-templates) in the 'data leaks' policy to surface when a user performs a sequence, enabling them to respond to user actions that might be considered riskier.
- New updates now allow security teams to create [policies with sequences](/microsoft-365/compliance/insider-risk-management-policies#sequence-detection-preview) without any other required underlying policy indicator selections.

### Data lifecycle management and records management

- **General availability (GA)**: [Relabeling at the end of the retention period](retention-settings.md#relabeling-at-the-end-of-the-retention-period).
- **General availability (GA)**: [Starting a record unlocked](declare-records.md#configuring-retention-labels-to-declare-records).
- **General availability (GA)**: Users can now apply published retention labels to files [directly in Teams](create-apply-retention-labels.md#applying-retention-labels-using-microsoft-365-groups).
- New retention support statements: Retention policies for Teams support the [chat with myself](https://support.microsoft.com/office/start-a-chat-in-teams-0c71b32b-c050-4930-a887-5afbe742b3d8?storagetype=live#bkmk_chatwithself) feature, [video clips](https://support.microsoft.com/office/record-a-video-clip-in-teams-0c57dae5-2974-4214-9c46-7a2136386f1c), and call data records, which are system-generated messages that contain [metadata for meetings and calls](/MicrosoftTeams/ediscovery-investigation#teams-metadata). Retention policies for Yammer support [storyline posts](https://support.microsoft.com/office/overview-of-storyline-for-yammer-and-viva-engage-530e4e66-9f1c-4be1-b371-08ea40dc4b69).
- Improved in-product experience if retention policies have errors: You'll now see a detailed description of the error in the details pane, with in-product actions to take that can resolve the problem. For example, remove invalid locations and resynchronize the policy.

### Microsoft Priva

- **In preview**: [Data transfer policies](/privacy/priva/risk-management-policy-data-transfer) in Privacy Risk Management now offers additional flexible boundary conditions: detecting transfers based on users' Azure Active Directory attributes, transfers between users in different Microsoft 365 groups, and transfers between SharePoint sites.

### On-premises scanner

- **In preview**: The Azure Information Protection (AIP) on-premises scanner is being renamed **Microsoft Purview Information Protection scanner** and [configuration is moving to the Microsoft Purview compliance portal](/information-protection/deploy-aip-scanner-configure-install).

### Sensitivity labels

- Call to action: [Migration guidance](sensitivity-labels-aip.md) to help you move from the AIP add-in for Office apps, with a [migration playbook](https://microsoft.github.io/ComplianceCxE/playbooks/AIP2MIPPlaybook) from our Customer Experience Engineering (CxE) team
- **General availability (GA)**: Authentication contexts for label [groups and site settings](sensitivity-labels-teams-groups-sites.md#how-to-configure-groups-and-site-settings) that work with Azure AD Conditional Access policies to enforce more stringent access conditions to a site.
- **General availability (GA)**: [Site sharing permissions by using PowerShell](sensitivity-labels-teams-groups-sites.md#configure-site-sharing-permissions-by-using-powershell-advanced-settings).
- **General availability (GA)**: [Preventing copy to clipboard is honored for labeled and encrypted files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#limitations), with some exceptions for relabeling scenarios.
- **In preview**: The AIP add-in for Office apps is [disabled by default](sensitivity-labels-aip.md#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps) and requires a new setting to override this default.
- Support statement: [Files types supported for SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#supported-file-types), after enabling sensitivity labels for these services.
- New [prerequisite for co-authoring](sensitivity-labels-coauthoring.md#prerequisites) and the Azure Information Protection unified labeling client and scanner: It's not supported to use Double Key Encryption in the same tenant as the co-authoring feature.

### Trainable classifiers

- **In preview** 20 + new trainable classifiers and a standalone trainable classifier definitions article.
    - [Trainable classifiers definitions](/microsoft-365/compliance/classifier-tc-definitions.md)

## September 2022

### Communication compliance

- [Get started with communication compliance](/microsoft-365/compliance/communication-compliance-configure): New updates for recommended actions and accelerated onboarding. Recommended actions can help your organization quickly get started with communication compliance.
- [Investigate and remediate communication compliance alerts](/microsoft-365/compliance/communication-compliance-investigate-remediate): New update for keyword highlighting support for plain text view. Keyword highlighting, which is currently available for English language only, can help direct you to the area of interest in long messages and attachments.
- [Use communication compliance reports and audits](/microsoft-365/compliance/communication-compliance-reports-audits): Clarifications on permissions needed to view and manage communication compliance reports. To view and manage reports, users must be assigned to the *Communication Compliance Viewers* role group.
 
### Compliance Manager

- [Compliance Manager templates list](/microsoft-365/compliance/compliance-manager-templates-list): New template added for Australian Information Security Registered Assessor Program (IRAP) with ISM Version 3.5 - Official).

### Data Classification

- [Increase classifier accuracy (preview)](data-classification-increase-accuracy.md) - This article shows you how to confirm whether items matched by a classifier are true positive (a Match) or a false positive (Not a match) and provide Match, or Not a match feedback. You can use that feedback to tune your classifiers to increase accuracy. You can also send redacted versions of the document and the Match, Not a Match feedback to Microsoft if you want to help increase the accuracy of the classifiers that Microsoft provides.

### Data lifecycle management and records management

- **In preview**:  Retention labels now support running a Power Automate flow at the end of the retention period to support custom actions and integration with other solutions. For more information, see [Customize what happens at the end of the retention period](retention-label-flow.md).
- For records management items undergoing disposition review, when you select that item in the Disposition area of the compliance portal, a new Progress column displays the item's status. That status can be "Approved for deletion, 'Awaiting deletion from SharePoint/OneDrive' or 'Awaiting deletion from Exchange', or "Permanently Deleted". When an item is approved for permanent deletion as part of the disposition review process, that deletion can take up to 15 days to complete and this new column helps you to track its progress.
- The configuration to [enable a mailbox for archiving](enable-archive-mailboxes.md) is moving to the new Exchange admin center (EAC) and instructions have been updated accordingly.
- Currently, trainable classifiers for auto-apply retention labels aren't supported with adaptive scopes. As a workaround, use static scopes for this configuration combination.
- Instructions to [Customize an archive and deletion policy for mailboxes](set-up-an-archive-and-deletion-policy-for-mailboxes.md) are updated to include only retention tags that have an outcome that can't be achieved with Microsoft 365 retention.

### Data loss prevention

- [Design a data loss prevention policy complex rule design](dlp-policy-design.md#complex-rule-design) - The DLP rule builder supports boolean logic (AND, OR, NOT) and nested groups. New video and content added that walks you through this new functionality.

### Sensitivity labels
- [PDF support](sensitivity-labels-office-apps.md#pdf-support) in Word, Excel, and PowerPoint is now available to Windows Current Channel and Monthly Enterprise Channel.
- Default label for existing documents is now fully rolled out to Mac and Windows in Current Channel and Monthly Enterprise Channel, providing parity with the AIP add-in.
- **In preview**: The new [sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and support for [label colors](sensitivity-labels-office-apps.md#label-colors) in Office apps, providing parity with the AIP add-in with additional functionality.
- **In preview**: [S/MIME support](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook) for Windows, providing parity with the AIP add-in. Support for Mac and mobile is now fully rolled out.
- **In preview**: Trainable classifiers for auto-labeling policies (all workloads).

### Trainable classifiers

- [Trainable classifiers definitions](classifier-tc-definitions.md)  - more than 20 new classifiers have been added, so the definitions for all trainable classifiers have been broken out into this new article.
