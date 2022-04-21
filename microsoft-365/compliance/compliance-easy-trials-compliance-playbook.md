---
title: "Microsoft Purview solutions trial playbook"
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: landing-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
ms.localizationpriority: high
ROBOTS: NOINDEX, NOFOLLOW
search.appverid: 
- MOE150
- MET150
description: "Microsoft Purview solutions trial playbook."
---

# Trial playbook: Microsoft Purview solutions

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Welcome to the Microsoft Purview solutions trial playbook. This playbook will help you make the most of your 90-day free trial by helping you discover robust and comprehensive capabilities of Microsoft Purview and security products.

Trying each solution will help you make informed decisions to meet your organization’s compliance needs.

Features:

- [Audit (Premium)](#audit-premium)
- [Communication Compliance](#communication-compliance)
- [Compliance Manager](#compliance-manager)
- [Microsoft Purview Data Loss Prevention](#data-loss-prevention)
- [eDiscovery](#ediscovery)
- [Information Protection](#information-protection)
- [Insider Risk Management](#insider-risk-management)
- [Records Management](#records-management)

Optional add-ons:

- [Compliance Manager premium assessments](#compliance-manager-premium-assessments)
- [Microsoft Priva Privacy Risk Management and Microsoft Priva Subject Rights Requests](#microsoft-priva-privacy-risk-management-and-microsoft-priva-subject-rights-requests)

## Compliance Actions with Microsoft Purview

Easily and quickly start trying Microsoft’s compliance solutions without changing your organization’s meta data. Depending on your priorities, you can start with any of these solution areas to see immediate value. Below are five top organizational concerns as communicated by our customers and recommended solutions to start with.

:::image type="content" source="../media/compliance-trial/workflow.png" alt-text="Compliance actions with Microsoft 365":::

## Audit (Premium)

**Conduct investigations**

Microsoft Purview Audit (Premium) helps organizations to conduct forensic and compliance investigations by increasing audit log retention required to conduct an investigation, providing access to crucial events that help determine scope of compromise, and providing faster access to the Office 365 Management Activity API.

### Step 1: [Apply the E5 license to each user for which you’d like to generate E5 events](set-up-advanced-audit.md#step-1-set-up-audit-premium-for-users)

> [!TIP]
> Trial best practice: Day 1

Audit (Premium) features such as the ability to log crucial events such as MailItemsAccessed and Send require an appropriate E5 license assigned to users. Additionally, the Advanced Auditing app/service plan must be enabled for those users.

Set up Audit (Premium) for users - to verify that the Advanced Auditing app is assigned to users, [perform the following steps for each user](set-up-advanced-audit.md#step-1-set-up-audit-premium-for-users).

1. Enable Audit (Premium) events - [enable SearchQueryInitiatedExchange and SearchQueryInitiatedSharePoint](set-up-advanced-audit.md#step-2-enable-audit-premium-events) to be audited for each user in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
1. Set up audit retention policies - [create additional audit log retention policies](set-up-advanced-audit.md#step-3-set-up-audit-retention-policies) to meet the requirements of your organization's security operations, IT, and compliance teams.
1. Search for Audit (Premium) events - [search for crucial Audit (Premium) events](set-up-advanced-audit.md#step-4-search-for-audit-premium-events) and other activities when conducting forensic investigations.

### Step 2: [Create new Audit Log policies to specify how long to retain audit logs in your org for activities performed by users and define priority levels for your policies​](audit-log-retention-policies.md#before-you-create-an-audit-log-retention-policy)

> [!TIP]
> Trial best practice: Create within the first 30 days

Audit log retention policies are part of the new Audit (Premium) capabilities in Microsoft 365. An audit log retention policy lets you specify how long to retain audit logs in your organization.

1. Before you create an audit log retention policy – [key things to know](audit-log-retention-policies.md#before-you-create-an-audit-log-retention-policy) before creating your policy.
1. [Create an audit log retention policy​](audit-log-retention-policies.md#create-an-audit-log-retention-policy)
1. [Manage audit log retention policies in the Microsoft Purview compliance portal](audit-log-retention-policies.md#manage-audit-log-retention-policies-in-the-compliance-portal) - Audit log retention policies are listed on the Audit retention policies tab (also called the dashboard). You can use the dashboard to view, edit, and delete audit retention policies.
1. Create and manage audit log retention policies on PowerShell - You can also use Security & Compliance Center PowerShell to [create and manage audit log retention policies](audit-log-retention-policies.md#create-and-manage-audit-log-retention-policies-in-powershell). One reason to use PowerShell is to create a policy for a record type or activity that isn't available in the UI.

## Communication Compliance

**Identify and act on code of conduct policy violations**

Microsoft Purview Communication Compliance helps you intelligently identify communication violations to support a compliant and healthy work environment by helping you detect inappropriate messages, investigate possible policy violations, and take steps to remediate.

### Step 1: [Enable permissions for communication compliance](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance)

> [!TIP]
> Trial best practice: Day 1

[Assign all compliance users to the Communication Compliance role group](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance).

### Step 2: [Enable the audit log​](communication-compliance-configure.md#step-2-required-enable-the-audit-log)

> [!TIP]
> Trial best practice: Setup within the first 30 days

To use this feature, turn on auditing so your organization can start recording user and admin activity in your org. When you turn this on, activity will be recorded to the audit log and available to view in a report. To learn more, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md).

### Step 3: [Create a communication compliance policy](communication-compliance-policies.md)

[Create communication compliance policy using the existing templates](communication-compliance-policies.md): 1- Inappropriate content; 2- Sensitive information; 3- Regulatory compliance; 4- Conflict of interest.

### Step 4: [Investigate and remediate alerts](communication-compliance-investigate-remediate.md)

[Investigate and remediate](communication-compliance-investigate-remediate.md) communication compliance alerts.

## Compliance Manager

**Manage your organizational compliance easily**

Microsoft Purview Compliance Manager can help you throughout your compliance journey, from taking inventory of your data protection risks to managing the complexities of implementing controls, staying current with regulations and certifications, and reporting to auditors.

### Step 1: [Get to know Compliance Manager](compliance-manager-quickstart.md#first-visit-get-to-know-compliance-manager)

> [!TIP]
> Trial best practice: Day 1

Our Compliance Manager overview page is the best first stop for a comprehensive review of what Compliance Manager is and how it works. You may also want to jump right to key sections of our documentation using the links below:

- [Understand your compliance score](compliance-manager.md#understanding-your-compliance-score)
- [Overview of key elements: controls, assessments, templates, and improvement actions](compliance-manager.md#key-elements-controls-assessments-templates-improvement-actions)
- [Understand the Compliance Manager dashboard](compliance-manager-setup.md#understand-the-compliance-manager-dashboard)
- [Filter your dashboard view](compliance-manager-setup.md#filtering-your-dashboard-view)
- [Learn about improvement actions](compliance-manager-setup.md#improvement-actions-page)
- [Understand assessments](compliance-manager.md#assessments)
- [Do a quick scan of your environment using the Microsoft Compliance Configuration Manager](compliance-manager-mcca.md)

![Compliance Manager - dashboard.](../media/compliance-manager-dashboard.png "Compliance Manager dashboard")

### Step 2: [Configure Compliance Manager to manage your compliance activities](compliance-manager-assessments.md)

> [!TIP]
> Trial best practice: Inspect within the first 30 days

Start working with assessments and taking improvement actions to implement controls and improve your compliance score.

1. [Choose a pre-built template to create and manage your first assessment](compliance-manager-assessments.md).
1. [Understand how to use templates for building assessments](compliance-manager-templates.md).
1. [Perform implementation and testing work on improvement actions to complete controls in your assessments](compliance-manager-improvement-actions.md).
1. [Better understand how different actions impact your compliance score](compliance-score-calculation.md).

> [!NOTE]
> Microsoft 365 or Office 365 E1/E3 subscription includes Microsoft Data Protection Baseline template. Microsoft 365 or Office 365 E5, E5 Compliance includes templates for:
>
> - Microsoft Data Protection Baseline
> - European Union GDPR  
> - ISO/IEC 27001,
> - NIST 800-53
>
> Compliance Manager includes 300+ regulatory or premium templates that can be purchased as an add-on. See the list here. With any premium templates (included with your subscription or purchased as add-on) you will receive the universal version of those templates, allowing you to manage your compliance with any product or service

### Step 3: [Scaling up: use advanced functionality to meet your custom needs​](compliance-manager-templates-create.md)

Custom assessments are helpful for:

- Managing compliance for non-Microsoft 365 products such as third-party apps and services, on-premises applications, and other assets
- Managing your own custom or business-specific compliance controls

1. [Extend a Compliance Manager template by adding your own controls and improvement actions](compliance-manager-templates-extend.md)
1. [Create your own custom template](compliance-manager-templates-create.md)
1. [Modify an existing template to add or remove controls and actions](compliance-manager-templates-modify.md)
1. [Set up automated testing of improvement actions](compliance-manager-setup.md#set-up-automated-testing)
1. [Reassign improvement actions to another user](compliance-manager-setup.md#reassign-improvement-actions-to-another-user)

## Data Loss Prevention

**Protect sensitive data**

To comply with business standards and industry regulations, organizations need to protect sensitive info to prevent its inadvertent disclosure. Set up Microsoft Purview Data Loss Prevention policies to identify, monitor, and automatically protect sensitive info across Microsoft 365.

### Step 1: [Protect data loss on Teams locations](dlp-microsoft-teams.md#dlp-licensing-for-microsoft-teams)

> [!TIP]
> Trial best practice: Day 1

If your organization has data loss prevention (DLP), you can define policies that prevent people from sharing sensitive information in a Microsoft Teams channel or chat session.

1. Learn about [DLP Licensing for Microsoft Teams and the scope of DLP protection](dlp-microsoft-teams.md#dlp-licensing-for-microsoft-teams)
1. [Add Microsoft Teams as a location to existing DLP policies](dlp-microsoft-teams.md#add-microsoft-teams-as-a-location-to-existing-dlp-policies)
1. [Configure our default DLP policy for Teams](mip-easy-trials.md) or [Define a new DLP policy for Microsoft Teams](dlp-microsoft-teams.md#define-a-new-dlp-policy-for-microsoft-teams)

### Step 2: [Protect data loss on device locations](endpoint-dlp-getting-started.md)

> [!TIP]
> Trial best practice: Setup within the first 30 days

Microsoft Endpoint DLP allows you to monitor Windows 10 devices and detect when sensitive items are used and shared.

1. Prepare your endpoints  - make sure that the Windows 10 and macOS devices that you plan on deploying Endpoint DLP to [meet these requirements](endpoint-dlp-getting-started.md)
1. [Onboard devices into device management](endpoint-dlp-getting-started.md)  - You must enable device monitoring and onboard your endpoints before you can monitor and protect sensitive items on a device. Both of these actions are done in the Microsoft Purview compliance portal.
   - Scenario 1 – [Onboarding devices](endpoint-dlp-getting-started.md) that have not been onboarded yet.
   - Scenario 2 - [Microsoft Defender for Endpoint is already deployed and there are endpoints reporting in](endpoint-dlp-getting-started.md). All these endpoints will appear in the managed devices list.
1. [Configure our default DLP policy for devices](mip-easy-trials.md#dlp-for-devices) or [Define a new DLP policy for devices](endpoint-dlp-learn-about.md).
1. [View Endpoint DLP alerts](dlp-configure-view-alerts-policies.md) in DLP Alerts Management dashboard.
1. [View Endpoint DLP data](data-classification-activity-explorer.md) in activity explorer.

### Step 3: [Expand policies in scope or protection​](dlp-learn-about-dlp.md#dlp-policy-configuration-overview)

You have flexibility in how you configure your DLP policies. You can start with our default DLP policy for Teams and devices and expand those policies to protect additional locations, sensitive information types, or labels. In addition, you can expand upon the policy actions and customize alerting.

1. Add locations
1. Add sensitive information types or labels to protect
1. Add actions
   - Teams:
      - [Prevent external access to sensitive documents](dlp-microsoft-teams.md#prevent-external-access-to-sensitive-documents)
      - [Get policy tips to help educate users and instructions for customizing policy tips](dlp-microsoft-teams.md#policy-tips-help-educate-users)
   - Devices: switch from audit only to block
1. [Configure and view alerts for data loss prevention policies - Microsoft Purview | Microsoft Docs](dlp-configure-view-alerts-policies.md)

## eDiscovery

**Discover more with an end-to-end workflow**

Take advantage of an end-to-end workflow for preserving, collecting, analyzing, and exporting content that’s responsive to your organization’s internal and external investigations. Legal teams can also manage the entire legal hold notification process by communicating with custodians involved in a case.

### Step 1 (required): [Permissions](https://aka.ms/ediscoveryninja)

> [!TIP]
> Trial best practice: Day 1

To access eDiscovery (Premium) or be added as a member of an eDiscovery (Premium) case, a user must be assigned the appropriate permissions.

1. [Set up eDiscovery (Premium) – Assign eDiscovery permissions](get-started-with-advanced-ediscovery.md#step-2-assign-ediscovery-permissions)
1. [Add or remove members from a case](add-or-remove-members-from-a-case-in-advanced-ediscovery.md)

### Step 2 (required): Create a Case

> [!TIP]
> Trial best practice: Create within the first 30 days

More organizations use the eDiscovery (Premium) solution in Microsoft 365 for critical eDiscovery processes. This includes responding to regulatory requests, investigations, and litigation.

1. Manage eDiscovery (Premium) – [learn how to configure eDiscovery (Premium), manage cases by using the Security & Compliance Center, manage a workflow in eDiscovery (Premium), and analyze eDiscovery (Premium) search results](/learn/modules/manage-advanced-ediscovery).
1. [Create an eDiscovery case using Advance eDiscovery's new case format](advanced-ediscovery-new-case-format.md)
1. [Close or delete a case](close-or-delete-case.md) - When the legal case or investigation is completed, you can close or delete. You can also reopen a closed case.

### Step 3 (optional): Settings

To allow people in your organization start to create and use cases, you must configure global settings that apply to all cases in your organization. At this time, the only global setting is **attorney-client privilege detection** (more global settings will be available in the future).

1. [Set up eDiscovery (Premium) – Global Settings](get-started-with-advanced-ediscovery.md#step-3-configure-global-settings-for-ediscovery-premium)
1. [Configure search and analytics settings](configure-search-and-analytics-settings-in-advanced-ediscovery.md)
1. [Manage jobs in eDiscovery (Premium)](managing-jobs-ediscovery20.md)

### Step 4 (optional): [Compliance Boundaries](set-up-compliance-boundaries.md)

Compliance boundaries create logical boundaries within an organization that control the user content locations (such as mailboxes, OneDrive accounts, and SharePoint sites) that eDiscovery managers can search. They also control who can access eDiscovery cases used to manage the legal, human resources, or other investigations within your organization.

![Compliance boundaries consist of search permissions filters that control access to agencies and admin role groups that control access to eDiscovery cases.](../media/M365_ComplianceBoundary_OrgChart_v2.png)

Set up compliance boundaries for eDiscovery investigations:

1. [Identify a user attribute to define your agencies](set-up-compliance-boundaries.md#step-1-identify-a-user-attribute-to-define-your-agencies)
1. [Create a role group for each agency](set-up-compliance-boundaries.md#step-2-create-a-role-group-for-each-agency)
1. [Create a search permissions filter to enforce the compliance boundary](set-up-compliance-boundaries.md#step-3-create-a-search-permissions-filter-to-enforce-the-compliance-boundary)
1. [Create an eDiscovery case for an intra-agency investigations](set-up-compliance-boundaries.md#step-4-create-an-ediscovery-case-for-intra-agency-investigations)

### Step 5 (optional): [Learn about Content search tool](search-for-content.md)

Use the Content search tool in the Microsoft Purview compliance portal to quickly find email in Exchange mailboxes, documents in SharePoint sites and OneDrive locations, and instant messaging conversations in Skype for Business. You can use the content search tool to search for email, documents, and instant messaging conversations in collaboration tools such as Microsoft Teams and Microsoft 365 Groups.

- [Learn more about eDiscovery (Premium) search](search-for-content.md#search-for-content)

## Information Protection

**Discover, classify and protect your sensitive information**

Implement Microsoft Purview Information Protection and sensitivity labels, to help you discover, classify, and protect your sensitive content wherever it lives or travels.

### Step 1: [Start your information protection trial](mip-easy-trials.md)

> [!TIP]
> Trial best practice: Day 1

Eligible customers can activate default labels and policies for Microsoft Purview Information Protection. When you enable the default configuration in the trial, it will take about 2 minutes to configure all policies for your tenant and up to 24 hours to see the results of these default policies.

Choosing the default configuration, with 1-click, the following is automatically configured:

- Sensitivity labels and a sensitivity label policy
- Client-side auto-labeling
- Service-side auto-labeling
- Data loss prevention (DLP) policies for Teams and devices

[Activate the default labels and policies](mip-easy-trials.md#activate-the-default-labels-and-policies). If necessary, you can edit manually after the configuration is complete.

### Step 2: [Automatically apply sensitivity labels to documents](apply-sensitivity-label-automatically.md)

> [!TIP]
> Trial best practice: Setup within the first 30 days

When you create a sensitivity label, you can automatically assign that label to files and emails when it matches conditions that you specify.

1. [Create and configure sensitivity labels](create-sensitivity-labels.md#create-and-configure-sensitivity-labels)
1. [Publish sensitivity label policy to all users](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy)
1. [Create an auto-labeling policy](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy)
   - Choose info you want label applied to
   - Define locations to apply label
   - Select label to apply
   - [Run policy in simulation mode](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy)

![New policy configuration for auto-labeling.](../media/auto-labeling-wizard.png)

### Step 3: [Review and turn on auto-labeling policy](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-policies-for-sharepoint-onedrive-and-exchange)

Now on the **Information protection** > **Auto-labeling** page, you see your auto-labeling policy in the **Simulation** section.

Select your policy to see the details of the configuration and status. When the simulation is complete, select the Items to review tab to see which emails or documents matched the rules that are specified.

When you're ready to run the policy without simulation, select the **Turn on policy** option.

## Insider Risk Management

**Detect and remediate insider risks**

Leverage artificial intelligence to help you quickly identify, triage, and remediate internal risks. Using logs from Microsoft 365 and Azure services, you can define policies that monitor for insider risk signals, then take remediation actions such as promoting user education or initiating an investigation.

### Step 1 (required): [Enable permissions for insider risk management](insider-risk-management-configure.md#step-1-required-enable-permissions-for-insider-risk-management)

> [!TIP]
> Trial best practice: Day 1

There are four role groups used to configure permissions to manage insider risk management features.

[Add users to an insider risk management role group.](insider-risk-management-configure.md#add-users-to-an-insider-risk-management-role-group)

If you are not able to see permissions, please talk to your tenant admin to assign the correct roles.

### Step 2: [Start with user quick start guide](insider-risk-management-configure.md#recommended-actions-preview)

Quickly get started and get the most out of insider risk management capabilities with recommended actions. Included on the Overview page, recommended actions help guide you through the steps to configure and deploy policies and to take investigation actions for user actions that generate alerts from policy matches.

[Select a recommendation from the list](insider-risk-management-configure.md#recommended-actions-preview) to get started with configuring insider risk management.

![Insider risk management recommended actions.](../media/insider-risk-recommended-actions.png)

Each recommended action guides you through the required activities for the recommendation, including any requirements, what to expect, and the impact of configuring the feature in your organization.

### Step 3 (required): [Enable the Microsoft 365 audit log](insider-risk-management-configure.md#step-2-required-enable-the-microsoft-365-audit-log)

Auditing is enabled for Microsoft 365 organizations by default. Some organizations may have disabled auditing for specific reasons. If auditing is disabled for your organization, it might be because another administrator has turned it off. We recommend confirming that it's OK to turn auditing back on when completing this step.

For step-by-step instructions to turn on auditing, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md). After you turn on auditing, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this action once. For more information about the using the Microsoft 365 audit log, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).

### Step 4 (required): [Enable and view insider risk analytics insights](insider-risk-management-configure.md#step-3-optional-enable-and-view-insider-risk-analytics-insights)

Insider risk management analytics enables you to conduct an evaluation of potential insider risks in your organization without configuring any insider risk policies. Analytics scan results may take up to 48 hours before insights are available as reports for review. To learn more about analytics insights, see [Insider risk management settings: Analytics (preview)](insider-risk-management-settings.md) and check out the [Insider Risk Management Analytics video](https://www.youtube.com/watch?v=5c0P5MCXNXk) to help you understand your insider risk posture and help you take action by setting up appropriate policies to identify risky users.

To enable insider risk Analytics, you must be a member of the Insider Risk Management or Insider Risk Management Admin. [Complete these steps to enable insider risk analytics](insider-risk-management-configure.md).

## Records Management

**Automate the retention schedule for business-critical records**

Use integrated Microsoft Purview Records Management features to automate the retention schedule for organizational regulatory, legal, and business-critical records. Get full content lifecycle support, from creation to collaboration, record declaration, retention, and disposition.

### Step 1: Dynamically target retention policies with Adaptive Policy Scopes

> [!TIP]
> Trial best practice: Day 1

Adaptive policy scopes allow you to dynamically target a policy to certain users, groups, or sites based on their AD attributes.

Attributes for scopes can be selected from a list or customized using an advanced query builder.

Policies using adaptive policy scopes stay current as the organization changes with new employees joining or leaving. Additionally, they are not subject to the previous limits of 100/1,000 locations included in a policy.

- Create an [Adaptive Policy Scope](retention.md#adaptive-or-static-policy-scopes-for-retention), and use it with a retention policy

### Step 2: Automate labeling of sensitive information with the ability to review before disposal

> [!TIP]
> Trial best practice: Setup within the first 30 days

Retention labels can be set up to apply automatically to content when it detects sensitive information, such as a credit card number. This removes the need for users to manually perform the labeling activity.

At the end of the retention period, users you specify ("reviewers") will be notified to review the content and approve the permanent disposal action. That way if something needs to be retained for longer, it can be.

Both label application activity and disposition review activity can be viewed on your Records Management Overview screen.

1. [Auto-apply retention labels to content containing sensitive information](retention.md#retention-labels)
1. Create and apply a retention label with [disposition review](disposition.md#disposition-reviews) at the end of the retention period

### Step 3: Label content as records automatically using trainable classifiers

When content is declared a record, restrictions are placed on the item in terms of what actions are allowed or blocked, additional activities about the items are logged, and you have proof of disposition if the items are deleted at the end of their retention period.

Trainable classifiers are tools that recognize various types of content, based off samples it has been given. Choose from a variety of built-in options or set up a custom classifier to meet your specific needs.

1. Create a retention label that [declares content as a record or a regulatory record](records-management.md#records)
1. [Auto-apply retention labels to content using trainable classifiers](apply-retention-labels-automatically.md#auto-apply-labels-to-content-by-using-trainable-classifiers)

### More information: Auto-apply retention labels + disposition review

**Apply labels automatically to retain what you need...**
Retention labels can be automatically applied to content when it contains:

- [Specific types of sensitive information](apply-retention-labels-automatically.md#auto-apply-labels-to-content-with-specific-types-of-sensitive-information)
- [Specific keywords or searchable properties that match a query you create](apply-retention-labels-automatically.md#auto-apply-labels-to-content-with-keywords-or-searchable-properties)
- [A match for trainable classifiers](apply-retention-labels-automatically.md#auto-apply-labels-to-content-by-using-trainable-classifiers)

**...then dispose of it safely at the end.**

When a disposition review is triggered at the end of the retention period, the reviewers you choose receive an email notification that they have content to review.

Content pending a disposition review is permanently deleted only after a reviewer for the final stage of disposition chooses to permanently delete the content.

## Additional trials and add-ons

### Compliance Manager premium assessments

**Assess risks and efficiently respond**

Help your organization assess risks and efficiently respond to nations, regional and industry requirements governing the collection and use of data.

[More information on the Compliance Manager premium assessments trial](compliance-easy-trials-compliance-manager-assessments.md).

[Trial playbook: Microsoft Purview Compliance Manager premium assessments](compliance-easy-trials-compliance-manager-assessment-playbook.md)

### Microsoft Priva Privacy Risk Management and Microsoft Priva Subject Rights Requests

**Identify & prevent privacy risks**

Proactively identify and protect against privacy risks such as data hoarding, data transfers, and data oversharing and help your organization automate and manage subject requests at scale.

[Learn more about Microsoft Priva](/privacy/solutions/privacymanagement/privacy-management).

[Trial playbook: Microsoft Priva](/privacy/solutions/privacymanagement/privacy-management-trial-playbook)

## Additional resources

**What’s included**: For a full list of Microsoft Purview solutions and features listed by product tier, view the [Feature Matrix](https://go.microsoft.com/fwlink/?linkid=2139145).

**Microsoft Security Technical Content Library**: Explore this library to find interactive guides and other learning content relevant to your needs. [Visit Library](/security).

**Microsoft Security Resources**: From antimalware to Zero Trust, get all the relevant resources for your organization’s security needs. [Visit Resources](/security/business/resources).
