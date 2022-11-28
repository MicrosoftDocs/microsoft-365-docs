---
title: "Microsoft Purview solutions trial user guide"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: landing-page
ms.service: O365-seccomp
ms.collection: 
- purview-compliance
- tier3
ms.localizationpriority: high
ROBOTS: NOINDEX, NOFOLLOW
search.appverid: 
- MOE150
- MET150
description: "Microsoft Purview solutions trial user guide."
ms.custom: trial-playbook
---

# Trial user guide: Microsoft Purview solutions

Welcome to the Microsoft Purview solutions trial user guide. This playbook will help you make the most of your free trial by helping you discover robust and comprehensive capabilities of Microsoft Purview and security products.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Compliance actions with Microsoft Purview

Easily and quickly start trying Microsoft’s compliance solutions without changing your organization’s metadata.

Depending on your priorities, you can start with any of these solution areas to see immediate value. Here are four top organizational concerns as communicated by our customers and recommended solutions to start with.

:::image type="content" source="../media/compliance-trial/workflow.png" alt-text="Top organizational concerns":::

**Let’s get started!**

## Microsoft Purview Compliance Manager

We recommend that you become familiar with Compliance Manager and improve your organization’s compliance posture. What can Compliance Manager do for your organization?

- It can help you  get compliant – with easy onboarding and step-by-step guidance
- It can help you stay compliant – with customizable and multi-cloud assessments
- It can help you scale compliance – with built-in collaboration and workflow capabilities

### Step 1: Get to know Compliance Manager

Our Compliance Manager overview page is the best first stop for a comprehensive review of what Compliance Manager is and how it works.

- Start with the [Microsoft Purview Compliance Manager Setup Guide](https://go.microsoft.com/fwlink/?linkid=2197452).

You may also want to jump right to key sections of our documentation using the links below:

- [Understand your compliance score](compliance-manager.md#understanding-your-compliance-score)
- [Overview of key elements](compliance-manager.md#key-elements-controls-assessments-templates-improvement-actions): controls, assessments, templates, and improvement actions
- [Understand the Compliance Manager dashboard](compliance-manager-setup.md#understand-the-compliance-manager-dashboard)
- [Filter your dashboard view](compliance-manager-setup.md#filtering-your-dashboard-view)
- [Learn about improvement actions](compliance-manager-setup.md#improvement-actions-page)
- [Understand assessments](compliance-manager.md#assessments)
- [Do a quick check of your environment using the Microsoft Compliance Configuration Analyzer for Compliance Manager (preview)](compliance-manager-mcca.md)

:::image type="content" source="../media/compliance-trial/compliance-portal.png" alt-text="Compliance Manager - dashboard":::

### Step 2: Configure Compliance Manager to manage your compliance activities

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

Compliance Manager includes 300+ regulatory or premium templates that can be purchased as an add-on with [Compliance Manager premium assessments add-on](compliance-easy-trials-compliance-manager-assessments.md). With any [premium templates](compliance-manager-templates-list.md) (included with your subscription or purchased as add-on) you will receive the universal version of those templates, allowing you to manage your compliance with any product or service

### Step 3: Scaling up: use advanced functionality to meet your custom needs

Custom assessments are helpful for:

- Managing compliance for non-Microsoft 365 products such as third-party apps and services, on-premises applications, and other assets
- Managing your own custom or business-specific compliance controls:
  1. [Extend a Compliance Manager template by adding your own controls and improvement actions](compliance-manager-templates-extend.md)
  1. [Create your own custom template](compliance-manager-templates-create.md)
  1. [Modify an existing template to add or remove controls and actions](compliance-manager-templates-modify.md)
  1. [Set up automated testing of improvement actions](compliance-manager-setup.md#testing-source-for-automated-testing)
  1. [Reassign improvement actions to another user](compliance-manager-setup.md#reassign-improvement-actions-to-another-user)

**Organizational Concerns**

## Information protection

The first organizational concern raised by customers is understanding what, where and how sensitive, business-critical data is being used and how to protect sensitive and confidential data from unauthorized access or leakage.

Get data visibility and protection starting with Information Protection and Data Loss Prevention.

- Detect – discover sensitive data across your entire digital estate and understand how it’s being used.
- Protect – classify information and apply sensitivity labels with a unified approach.
- Prevent – prevent accidental, malicious, and unauthorized oversharing of sensitive data.

## Information Protection and Data Loss Prevention

**Discover, classify and protect your sensitive data**

One of the main concerns for most organizations, regarding compliance regulations, is how to classify their sensitive data, how to protect it, and prevent data loss. Purview Information Protection and Data Loss Prevention solutions allow customers to discover and classify their sensitive data, to protect their sensitive data using sensitivity labels, and finally to setup data loss prevention policies to prevent unauthorized sharing, use, or transfer of sensitive data through multiple egress points. The classification, labeling, and DLP capabilities are natively built-in Microsoft 365 workloads such as SharePoint Online, Exchange Online, OneDrive for Business, and Teams. You can extend these to non-Microsoft workloads.

### Set up your information protection and data loss prevention trial

Eligible customers can activate default labels and default DLP policies for Information Protection and Data Loss Prevention. When you enable the default configuration in the trial, it will take about 2 minutes to configure all policies for your tenant and up to 24 hours to see the results of these default policies.

Choosing the default configuration, with 1-click, the following is automatically configured:

- Sensitivity labels and a sensitivity label policy
- Client-side auto-labeling
- Service-side auto-labeling
- Data loss prevention (DLP) policies for Teams and devices

[Activate the default labels and policies](mip-easy-trials.md#activate-the-default-labels-and-policies). If necessary, you can edit it manually after the configuration is complete. If necessary, you can edit it manually after the configuration is complete.

You can follow the actions below or alternatively, use the [Microsoft Purview Information Protection Setup Guide](https://go.microsoft.com/fwlink/?linkid=2197428) to set up your Information Protection and Data Loss Protection.

**Actions to try:**

## Microsoft Purview Information Protection

### Step 1: Automatically apply sensitivity labels to documents

When you create a sensitivity label, you can automatically assign that label to files and emails when it matches conditions that you specify.

1. [Create and configure sensitivity labels](create-sensitivity-labels.md#create-and-configure-sensitivity-labels)
1. [Publish sensitivity label policy to all users](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy)
1. Create an [auto-labeling policy](apply-sensitivity-label-automatically.md)
   - Choose info you want label applied to
   - Define locations to apply label
   - Select label to apply
   - Run policy in simulation mode

:::image type="content" source="../media/compliance-trial/new-policy.png" alt-text="New policy configuration for auto-labeling":::

### Step 2: Review and turn on auto-labeling policy

Now on the Information protection > Auto-labeling page, you see your auto-labeling policy in the Simulation section.

1. Select your policy to see the details of the configuration and status. When the simulation is complete, select the Items to review tab to see which emails or documents matched the rules that are specified.
1. When you’re ready to run the policy without simulation, select the Turn on policy option.

## Microsoft Purview Data Loss Prevention

### Step 1: Prevent data loss on Microsoft Teams locations

If your organization has data loss prevention (DLP), you can define policies that prevent people from sharing sensitive information in a Microsoft Teams channel or chat session.

1. [Learn about DLP Licensing for Microsoft Teams and the scope of DLP protection](dlp-microsoft-teams.md#dlp-licensing-for-microsoft-teams)
1. [Add Microsoft Teams as a location to existing DLP policies](dlp-microsoft-teams.md#add-microsoft-teams-as-a-location-to-existing-dlp-policies)
1. [Configure our default DLP policy for Teams or define a new DLP policy for Microsoft Teams](mip-easy-trials.md)

### Step 2: Prevent data loss on devices

Microsoft Purview DLP for endpoints allows you to detect and prevent when sensitive items are used or shared on Windows 10, Windows 11 and macOS devices.

1. Prepare your endpoints - make sure that the Windows 10 and macOS devices that you plan on deploying Endpoint DLP [meet these requirements](endpoint-dlp-getting-started.md#skusubscriptions-licensing).
1. [Onboard devices into device management](endpoint-dlp-getting-started.md#windows-10-and-windows-11-onboarding-procedures) - You must onboard your endpoints before you can detect and protect sensitive items on a device. Both of these actions are done in the Microsoft Purview compliance portal.
   - Scenario 1 – Onboarding devices that have not been onboarded yet.
   - Scenario 2 - Microsoft Defender for Endpoint is already deployed and there are endpoints reporting in. All these endpoints will appear in the managed devices list.
1. [Configure our default DLP policy for devices or define a new DLP policy for devices](mip-easy-trials.md#dlp-for-devices).
1. [View Endpoint DLP alerts](dlp-configure-view-alerts-policies.md) in DLP Alerts Management dashboard.
1. [View Endpoint DLP data](data-classification-activity-explorer.md) in activity explorer.

### Step 3: Expand policies in scope or protection

You have flexibility in how you configure your DLP policies. You can start with our default DLP policy for Teams and devices and expand those policies to protect additional locations, sensitive information types, or labels. Note customers can run a DLP policy in test mode to understand or fine tune how the policy is working before it is turned on. In addition, you can expand upon the policy actions and customize alerting.

1. Add locations
1. Add sensitive information types or labels to protect
1. Add actions
   - Teams:
      i. [Prevent external access to sensitive documents](dlp-microsoft-teams.md#prevent-external-access-to-sensitive-documents)
      i. [Get policy tips to help educate users and instructions for customizing policy tips](dlp-microsoft-teams.md#policy-tips-help-educate-users)
   - Devices: switch from audit only to block
1. [Configure and view alerts for data loss prevention policies](dlp-configure-view-alerts-policies.md)

## Microsoft Purview data governance

The second organizational concern customers convey is how to reduce risk and meet regulations by classifying data to keep what they need and delete what they don't need. Customers want compliant lifecycle management of sensitive data, to meet record keeping obligations, and to reduce the risk from over-retained data.

Microsoft Purview Data Lifecycle Management and Records Management help you to:

- Apply retention and deletion policies to data where users collaborate to manage risk and prevent productivity loss.
- Ensure the correct policies are enforced by auto-classifying content.
- Comply with record keeping obligations with immutability options, defensible disposal, and advanced policy targeting.

## Microsoft Purview Data Lifecycle Management

### Govern at scale with automation

Start with the [Data Lifecycle Management Setup Guide](https://go.microsoft.com/fwlink/?linkid=2197335). Additionally, you may want to consider implementing these common scenarios:

1. Auto-apply retention or deletion settings to sensitive data
1. Auto-apply retention or deletion settings to everything in a SharePoint document library
1. Target a retention or deletion policy to only specific users or mailboxes

### Step 1: Auto-apply retention or deletion settings to sensitive data

Start by managing the lifecycle of sensitive data by managing it automatically using retention and deletion settings. First, decide on the type of sensitive data that you want to protect. You may want to use one of our pre-built [sensitive information types](sensitive-information-type-learn-about.md). Next, [create a retention label](retention.md#retention-labels) with your desired retention or deletion settings. Finally, [automatically apply the retention label](apply-retention-labels-automatically.md#auto-apply-labels-to-content-with-specific-types-of-sensitive-information) that contains the sensitive information type you selected.

### Step 2: Auto-apply retention or deletion settings to everything in a SharePoint document library, folder, or document set

You can set a default retention label in SharePoint to automatically apply it to all items within a specific document library, folder, or document set in SharePoint. This option is useful when users store a specific type of document in one of these locations.

First, identify the content you would like to manage and the location of the content in SharePoint. Next, [create a retention label](retention.md#retention-labels) with your desired retention or deletion settings. Finally, [publish the retention to the document library, folder, or document set](create-apply-retention-labels.md#applying-a-default-retention-label-to-all-content-in-a-sharepoint-library-folder-or-document-set).

### Step 3: Dynamically target retention policies with Adaptive Policy Scopes

Many customers want to target a retention policy to specific users or mailboxes. For example, they may want to apply a longer retention period to the mailboxes of people in leadership roles or apply shorter retention to shared mailboxes. Adaptive policy scopes allow you to do this by using their AD attributes to target the policy. If one of the attribute values changes then the retention policy will automatically update its membership.

First, [decide what attributes you will use to target](retention-settings.md#configuration-information-for-adaptive-scopes) the users or mailboxes that you want to include or exclude from your policy. Next, [Create an Adaptive Policy Scope and use it with a retention policy](retention.md#adaptive-or-static-policy-scopes-for-retention).

## Microsoft Purview Records Management

**Manage high-value items for business, legal, or regulatory record-keeping requirements**

Records Management helps you to comply with more granular retention and deletion requirements. As an example, you can track your retention schedule or use flexible automation options. Additionally, you can make content immutable, trigger retention using an event, or require approval before items are disposed.

Here are our most popular records management scenarios:

1. Automatically apply a retention label based on SharePoint file metadata
1. Conduct a disposition review at the end of a retention period
1. Make content immutable to prevent users from editing it

### Step 1: Automatically apply a retention label based on SharePoint file metadata

Auto-applying labels removes the need for your users to manually perform the labeling activities. As an example, you can auto-apply retention labels to content that has specific metadata properties in SharePoint.
First, decide the metadata properties you would like to use, the locations where you want to look for matches, and the retention or deletion settings you want to apply. Next, [create a retention label](retention.md#retention-labels). Then, [follow the steps](auto-apply-retention-labels-scenario.md) to auto-apply the label based on SharePoint metadata.

### Step 2: Review content to approve before it's permanently deleted

Some organizations have a requirement to review content at the end of its retention period before it is permanently deleted. Using Records Management, users you specify ("reviewers") can be notified to review the content and approve the permanent disposal action. Reviewers can also choose to assign a different retention period to the content or postpone deletion. Learn more here:   Disposition of content.

### Step 3: Make content immutable to prevent users from editing it

Some content has a lifecycle phase where both the file and the metadata should not be available for editing, often called declaring the content as an immutable record. Learn how to configure this option in Records Management: [Create a retention label that declares content as a record or a regulatory record](declare-records.md).

## Manage insider risks

The third organizational concern we hear is how to protect your data and respond to potential insider data security incident risks, which may include data theft and inappropriate sharing of confidential information across all platforms like email and IM (e.g. Microsoft Teams).
  
Using Insider Risk Management and Communication Compliance you can quickly identify and act on insider data security incidents and regulatory requirement risks, empowering you to collaborate with your Security, HR, Legal and other teams, depending on your organization.

- Get rich insights – identifying hidden risks with customizable ML templates requiring no endpoint agents.
- Investigate – integrated investigation workflows enable end-to-end collaboration across Security, HR and Legal.
- Know privacy is built-in – protect user privacy and prevent bias by removing identifiable user details, like name or email, while mitigating organizational risk.

## Microsoft Purview Insider Risk Management

**Detect and remediate insider risks**

Leverage end-to-end workflows to help you quickly identify, triage, and remediate. Using logs from Microsoft 365    and Azure services, you can define policies to identify potential data security incidents and take remediation actions such as promoting user education or initiating an investigation.

### Step 1 (required): Enable permissions for Insider Risk Management

There are four role groups used to configure permissions to manage Insider Risk Management features, which have different roles and level of access. Setting up permissions to Insider Risk Management is key before proceeding.

[Add users to the Insider Risk Management role group](insider-risk-management-configure.md#add-users-to-the-insider-risk-management-role-group)

If you are not able to see permissions, please talk to your tenant admin to assign the correct roles.

### Step 2 (required): Enable the Microsoft 365 audit log

Auditing is enabled for Microsoft 365 organizations by default. Some organizations may have disabled auditing for specific reasons. If auditing is disabled for your organization, it might be because another administrator has turned it off. We recommend confirming that it’s OK to turn auditing back on when completing this step.

For step-by-step instructions to turn on auditing, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md). After you turn on auditing, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this action once. For more information about  using the Microsoft 365 audit log, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).

### Step 3 (recommended): Enable and view Insider Risk Management analytics insights

Analytics within Insider Risk Management enables you to conduct an evaluation of potential insider risks that may lead to a data security incident in your organization without configuring any insider risk policies. Analytics check results may take up to 48 hours before insights are available as reports for review. These assessment results are aggregated and anonymized, and offer organization-wide insights, like the percentage of users performing potential sensitive data exfiltration activities.

To learn more about analytics insights, see [Insider risk management settings: Analytics](insider-risk-management-settings.md#analytics) and check out the [Insider risk management analytics video](https://www.youtube.com/watch?v=5c0P5MCXNXk) to help you understand your insider risk posture and help you take action by setting up appropriate policies to identify risky users.

> [!NOTE]
> To enable insider risk analytics, you must be a member of the Insider Risk Management or Insider Risk Management Admin.

### Step 4: Start with Recommended actions

Quickly get started and get the most out of Insider Risk Management capabilities with Recommended actions. Included on the Overview page, recommended actions will help guide you through the steps to configure and deploy policies and to take investigation actions for user actions that generate alerts from policy matches.

[Select a recommendation from the list](insider-risk-management-configure.md#recommended-actions-preview) to get started with configuring insider risk management.

:::image type="content" source="../media/compliance-trial/irm-recommended-actions.png" alt-text="Insider Risk Management recommended actions":::

Each recommended action guides you through the required activities for the recommendation, including any requirements, what to expect, and the impact of configuring the feature in your organization.

Note that the recommended steps in the playbook (above) may also be included in the Recommended actions shown in the portal.

Setup recommendations are also available on Microsoft Learn via the [Microsoft Purview Insider Risk Management Setup Guide](https://go.microsoft.com/fwlink/?linkid=2197153).

To fully leverage the functionality of Insider Risk Management, we recommend setting up policies for your organization to better identify potential risky actions that may lead to a security incident, leveraging templates for Data leaks or Data theft.  

## Microsoft Purview Communication Compliance

**Identify regulatory compliance policy violations**

Microsoft Purview Communication Compliance provides the tools to help organizations detect regulatory compliance violations (e.g. SEC or FINRA), such as  sensitive or confidential information, harassing or threatening language, and sharing of adult content. Built with privacy by design, usernames are pseudonymized by default, role-based access controls are built in, investigators are opted in by an admin, and audit logs are in place to ensure user-level privacy.

### Step 1: Enable permissions for communication compliance

Assign users communication compliance roles to be able to use the product. The "Communication Compliance" role group gives you all the permissions to use the product. Learn about other communication compliance role groups here: [Get started with communication compliance](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance).

### Step 2: Enable the audit log

To use this feature, turn on auditing. When you turn this on actions will be available in the audit log and view in a report. To learn more, see [Turn audit log search on or off](turn-audit-log-search-on-or-off.md).

### Step 3: Review recommended actions insights

Included on the Policies page, recommended actions helps you discover risks you may not be aware of, like inappropriate sharing of sensitive or confidential information that are already occurring in your organization. This view includes only the aggregate number of matches per classification type, with none of the insights containing any personally identifiable information, and helps you determine the type and scope of communication compliance policies to configure.

### Step 4: Create a communication compliance policy

Create a communication compliance policy using the existing templates: 1- Sensitive information; 2- Regulatory compliance; 3- Conflict of interest. Learn more about our out of the box policy templates and how to create a custom policy here: [Communication compliance policies](communication-compliance-policies.md).

### Step 5: Investigate and remediate alerts

[Investigate and remediate communication compliance alerts](communication-compliance-investigate-remediate.md).

### Step 6: Review reports for insights

[Review reports for insights on your overall communication compliance posture](communication-compliance-reports-audits.md).

## Discover & respond

The fourth organizational concern from customers is how to find relevant data when needed for investigations, regulatory requests, or litigations and for meeting regulatory requirements.

With eDiscovery and Audit, you can discover data efficiently.

- Discover and collect data in-place – collect, filter, and gain data insights faster, with greater visibility.
- Manage workflows – reduce the friction of identifying and collecting potential sources of relevant information by automatically mapping unique and shared data sources.
- Accelerate the discovery process – manage the increase of data volume by searching and processing highly relevant content in-place. 

## Microsoft Purview eDiscovery (Premium)

Discover more efficiently with an end-to-end workflow
Take advantage of an end-to-end workflow for preserving, collecting, analyzing, and exporting content that’s responsive to your organization’s internal and external investigations. Legal teams can also manage the entire legal hold notification process by communicating with custodians involved in a case.

### Step 1 (required): Permissions

To access eDiscovery (Premium) or be added as a member of an eDiscovery (Premium) case, a user must be assigned the appropriate permissions.

1. [Set up eDiscovery (Premium) – Assign eDiscovery permissions](get-started-with-advanced-ediscovery.md#step-2-assign-ediscovery-permissions)
1. [Add or remove members from a case](add-or-remove-members-from-a-case-in-advanced-ediscovery.md)

### Step 2 (required): Create a Case

More organizations use the eDiscovery (Premium) solution in Microsoft 365 for critical eDiscovery processes. This includes responding to regulatory requests, investigations, and litigation.

1. Manage eDiscovery (Premium) – [learn how to configure eDiscovery (Premium), manage cases by using the Security & Compliance Center, manage a workflow in Advanced eDiscovery, and analyze Advanced eDiscovery search results](/training/modules/manage-advanced-ediscovery).
1. [Create an eDiscovery case](advanced-ediscovery-new-case-format.md) using eDiscovery Premium’s new case format
1. [Close or delete a case](close-or-delete-case.md) - When the legal case or investigation is completed, you can close or delete. You can also reopen a closed case.

### Step 3 (optional): Settings

To allow people in your organization start to create and use cases, you must configure global settings that apply to all cases in your organization. You can manage settings such as attorney-client privilege detection, historical versions and many more.

1. [Configure global settings for eDiscovery (Premium)](get-started-with-advanced-ediscovery.md#step-3-configure-global-settings-for-ediscovery-premium)
1. [Configure search and analytics settings](configure-search-and-analytics-settings-in-advanced-ediscovery.md)
1. [Manage jobs in eDiscovery (Premium)](managing-jobs-ediscovery20.md)

### Step 4 (optional): Compliance Boundaries

Compliance boundaries create logical boundaries within an organization that control the user content locations (such as mailboxes, OneDrive accounts, and SharePoint sites) that eDiscovery managers can search. They also control who can access eDiscovery cases used to manage the legal, human resources, or other investigations within your organization.

:::image type="content" source="../media/compliance-trial/compliance-boundaries.png" alt-text="Compliance boundaries consist of search permissions filters that control access to agencies and admin role groups that control access to eDiscovery cases":::

Set up compliance boundaries for eDiscovery investigations:

1. [Identify a user attribute to define your agencies](set-up-compliance-boundaries.md#step-1-identify-a-user-attribute-to-define-your-agencies)
1. [Create a role group for each agency](set-up-compliance-boundaries.md#step-2-create-a-role-group-for-each-agency)
1. [Create a search permissions filter to enforce the compliance boundary](set-up-compliance-boundaries.md#step-3-create-a-search-permissions-filter-to-enforce-the-compliance-boundary)
1. [Create an eDiscovery case for an intra-agency investigations](set-up-compliance-boundaries.md#step-4-create-an-ediscovery-case-for-intra-agency-investigations)

### Step 5 (optional): eDiscovery Premium’s collection tool

Use the [eDiscovery (Premium) collection workflow](create-draft-collection.md#create-a-draft-collection) to quickly find email in Exchange mailboxes, documents in SharePoint sites and OneDrive locations, and instant messaging conversations in Teams.  Collections in eDiscovery (Premium) help eDiscovery managers quickly scope a search for content across email, documents, Teams reactions, and other content in Microsoft 365. Collections provide managers with an estimate of the content that may be relevant to the case.

[Learn more about collection queries and estimates.](building-search-queries.md)

## Microsoft Purview Audit (Premium)

**Conduct investigations**

Advanced Audit helps organizations to conduct forensic and compliance investigations by increasing audit log retention required to conduct an investigation, providing access to crucial events that help determine scope of compromise, and providing faster access to the Office 365 Management Activity API.

### Step 1: Apply the E5 license to each user for which you’d like to generate E5 events

Audit (Premium) features such as the ability to log crucial events such as MailItemsAccessed and Send require an appropriate E5 license assigned to users. Additionally, the Advanced Auditing app/service plan must be enabled for those users.

Set up Audit (Premium) for users - to verify that the Advanced Auditing app is assigned to users, [perform the following steps for each user](set-up-advanced-audit.md#step-1-set-up-audit-premium-for-users).

1. Enable Audit (Premium) events - [enable SearchQueryInitiatedExchange and SearchQueryInitiatedSharePoint](set-up-advanced-audit.md#step-2-enable-audit-premium-events) to be audited for each user in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).
1. Set up audit retention policies - [create additional audit log retention policies](set-up-advanced-audit.md#step-3-set-up-audit-retention-policies) to meet the requirements of your organization’s security operations, IT, and compliance teams.
1. Search for Audit (Premium) events - [search for crucial Audit (Premium) events](set-up-advanced-audit.md#step-4-search-for-audit-premium-events) and other activities when conducting forensic investigations.

### Step 2: Create new Audit Log policies to specify how long to retain audit logs in your org for activities performed by users and define priority levels for your policies

Audit log retention policies are part of the new Advanced Audit capabilities in Microsoft 365. An audit log retention policy lets you specify how long to retain audit logs in your organization.

1. Before you create an audit log retention policy – [key things to know](audit-log-retention-policies.md#before-you-create-an-audit-log-retention-policy) before creating your policy.
1. [Create an audit log retention policy](audit-log-retention-policies.md#create-an-audit-log-retention-policy).
1. [Manage audit log retention policies in the Microsoft Purview compliance portal](audit-log-retention-policies.md#manage-audit-log-retention-policies-in-the-compliance-portal) - Audit log retention policies are listed on the Audit retention policies tab (also called the dashboard). You can use the dashboard to view, edit, and delete audit retention policies.
1. [Create and manage audit log retention policies on PowerShell](audit-log-retention-policies.md#create-and-manage-audit-log-retention-policies-in-powershell) - You can also use Security & Compliance PowerShell to create and manage audit log retention policies. One reason to use PowerShell is to create a policy for a record type or activity that isn’t available in the UI.

## Additional trials and add-ons

### Compliance Manager premium assessments

**Assess risks and efficiently respond**:

Help your organization assess risks and efficiently respond to nations, regional and industry requirements governing the collection and use of data.

[More information on the Compliance Manager premium assessments trial](compliance-easy-trials-compliance-manager-assessments.md).

[Trial user guide: Microsoft Purview Compliance Manager premium assessments](compliance-easy-trials-compliance-manager-assessment-playbook.md)

### Microsoft Priva Privacy Risk Management and Microsoft Priva Subject Rights Requests

**Identify & prevent privacy risks**:

Proactively identify and protect against privacy risks such as data hoarding, data transfers, and data oversharing and help your organization automate and manage subject requests at scale.

[Learn more about Microsoft Priva](/privacy/solutions/privacymanagement/privacy-management).

[Trial user guide: Microsoft Priva](/privacy/solutions/privacymanagement/privacy-management-trial-playbook)

## Additional resources

**What's included**: For a full list of Microsoft Purview solutions and features listed by product tier, view the [Feature Matrix](https://go.microsoft.com/fwlink/?linkid=2139145).

**Microsoft Security Technical Content Library**: Explore this library to find interactive guides and other learning content relevant to your needs. [Visit Library](/security).

**Microsoft Security Resources**: From antimalware to Zero Trust, get all the relevant resources for your organization's security needs.
