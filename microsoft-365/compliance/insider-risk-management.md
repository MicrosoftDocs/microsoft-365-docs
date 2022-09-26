---
title: Learn about insider risk management
description: Learn how to help minimize risk in your organization with insider risk management in Microsoft Purview.
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- highpri 
- tier1
- M365-security-compliance
- m365solution-insiderrisk
---

# Learn about insider risk management

> [!TIP]
> *Did you know you can try the premium versions of all nine Microsoft Purview solutions for free?* Use the 90-day Purview solutions trial to explore how robust Purview capabilities can help your organization meet its compliance needs. Microsoft 365 E3 and Office 365 E3 customers can start now at the [Microsoft Purview compliance portal trials hub](https://compliance.microsoft.com/trialHorizontalHub?sku=ComplianceE5&ref=DocsRef). Learn details about [who can sign up and trial terms](compliance-easy-trials.md).

Microsoft Purview Insider Risk Management is a compliance solution that helps minimize internal risks by enabling you to detect, investigate, and act on malicious and inadvertent activities in your organization. Insider risk policies allow you to define the types of risks to identify and detect in your organization, including acting on cases and escalating cases to Microsoft eDiscovery (Premium) if needed. Risk analysts in your organization can quickly take appropriate actions to make sure users are compliant with your organization's compliance standards.

For more information and an overview of the planning process to address risky activities in your organization, see [Starting an insider risk management program](https://download.microsoft.com/download/b/2/0/b208282a-2482-4986-ba07-15a9b9286df0/pwc-starting-an-insider-risk-management-program-with-pwc-and-microsoft.pdf).

Watch the videos below to learn how insider risk management can help your organization prevent, detect, and contain risks while prioritizing your organization values, culture, and user experience:
<br>
<br>

**Insider risk management solution & development**:
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4j9CN]
<br>

**Insider risk management workflow**:
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4OUXB]

Check out the [Microsoft Mechanics video](https://www.youtube.com/watch?v=Ynkfu8OF0wQ) on how insider risk management and communication compliance work together to help minimize data risks from users in your organization.

> [!IMPORTANT]
> Insider risk management is currently available in tenants hosted in geographical regions and countries supported by Azure service dependencies. To verify that insider risk management is supported for your organization, see [Azure dependency availability by country/region](/troubleshoot/azure/general/dependency-availability-by-country).

## Modern risk pain points

Managing and minimizing risk in your organization starts with understanding the types of risks found in the modern workplace. Some risks are driven by external events and factors that are outside of direct control. Other risks are driven by internal events and user activities that can be minimized and avoided. Some examples are risks from illegal, inappropriate, unauthorized, or unethical behavior and actions by users in your organization. These behaviors include a broad range of internal risks from users:

- Leaks of sensitive data and data spillage
- Confidentiality violations
- Intellectual property (IP) theft
- Fraud
- Insider trading
- Regulatory compliance violations

Users in the modern workplace have access to create, manage, and share data across a broad spectrum of platforms and services. In most cases, organizations have limited resources and tools to identify and mitigate organization-wide risks while also meeting user privacy standards.

Insider risk management uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risk activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators. These policies allow you to identify risky activities and to act to mitigate these risks.

Insider risk management is centered around the following principles:

- **Transparency**: Balance user privacy versus organization risk with privacy-by-design architecture.
- **Configurable**: Configurable policies based on industry, geographical, and business groups.
- **Integrated**: Integrated workflow across Microsoft Purview solutions.
- **Actionable**: Provides insights to enable reviewer notifications, data investigations, and user investigations.

## Identifying potential risks with analytics

Insider risk analytics enables you to conduct an evaluation of potential insider risks in your organization without configuring any insider risk policies. This evaluation can help your organization identify potential areas of higher user risk and help determine the type and scope of insider risk management policies you may consider configuring. This evaluation may also help you determine needs for additional licensing or future optimization of existing insider risk policies.

To learn more about insider risk analytics, see [Insider risk management settings: Analytics](insider-risk-management-settings.md#analytics).

## Get started with recommended actions (preview)

Whether you're setting up insider risk management for the first time or getting started with creating new policies, the new [recommended actions](insider-risk-management-configure.md#recommended-actions-preview) experience can help you get the most out of insider risk management capabilities. Recommended actions include setting up permissions, choosing policy indicators, creating a policy, and more.

## Workflow

The insider risk management workflow helps you identify, investigate, and take action to address internal risks in your organization. With focused policy templates, comprehensive activity signaling across the Microsoft 365 service, and alert and case management tools, you can use actionable insights to quickly identify and act on risky behavior.

Identifying and resolving internal risk activities and compliance issues with insider risk management uses the following workflow:

![Insider risk management workflow.](../media/insider-risk-workflow.png)

### Policies

[Insider risk management policies](insider-risk-management-policies.md) are created using pre-defined templates and policy conditions that define what triggering events and risk indicators are examined in your organization. These conditions include how risk indicators are used for alerts, what users are included in the policy, which services are prioritized, and the detection time period.

You can select from the following policy templates to quickly get started with insider risk management:

- [Data theft by departing users](insider-risk-management-policies.md#data-theft-by-departing-users)
- [General data leaks](insider-risk-management-policies.md#general-data-leaks)
- [Data leaks by priority users (preview)](insider-risk-management-policies.md#data-leaks-by-priority-users-preview)
- [Data leaks by disgruntled users (preview)](insider-risk-management-policies.md#data-leaks-by-disgruntled-users-preview)
- [General security policy violations (preview)](insider-risk-management-policies.md#general-security-policy-violations-preview)
- [General patient data misuse (preview)](insider-risk-management-policies.md#general-patient-data-misuse-preview)
- [Security policy violations by departing users (preview)](insider-risk-management-policies.md#security-policy-violations-by-departing-users-preview)
- [Security policy violations by priority users (preview)](insider-risk-management-policies.md#security-policy-violations-by-priority-users-preview)
- [Security policy violations by disgruntled users (preview)](insider-risk-management-policies.md#security-policy-violations-by-disgruntled-users-preview)

![Insider risk management policy dashboard.](../media/insider-risk-policy-dashboard.png)

### Alerts

Alerts are automatically generated by risk indicators that match policy conditions and are displayed in the [Alerts dashboard](insider-risk-management-activities.md#alert-dashboard). This dashboard enables a quick view of all alerts needing review, open alerts over time, and alert statistics for your organization. All policy alerts are displayed with the following information to help you quickly identify the status of existing alerts and new alerts that need action:

- Status
- Severity
- Time detected
- Case
- Case status

![Insider risk management alert dashboard.](../media/insider-risk-alerts-dashboard.png)

### Triage

New user activities that need investigation automatically generate alerts that are assigned a *Needs review* status. Reviewers can quickly identify and review, evaluate, and triage these alerts.

Alerts are resolved by opening a new case, assigning the alert to an existing case, or dismissing the alert. Using alert filters, it's easy to quickly identify alerts by status, severity, or time detected. As part of the triage process, reviewers can view alert details for the activities identified by the policy, view user activity associated with the policy match, see the severity of the alert, and review user profile information.

![Insider risk management triage.](../media/insider-risk-triage.png)

### Investigate

Quickly investigate all activities for a selected user with [User activity reports (preview)](insider-risk-management-activities.md#user-activity-reports-preview). These reports allow investigators in your organization to examine activities for specific users for a defined time period without having to assign them temporarily or explicitly to an insider risk management policy. After examining activities for a user, investigators can dismiss individual activities as benign, share or email a link to the report with other investigators, or choose to assign the user temporarily or explicitly to an insider risk management policy.

[Cases](insider-risk-management-cases.md) are created for alerts that require deeper review and investigation of the activity details and circumstances around the policy match. The **Case dashboard** provides an all-up view of all active cases, open cases over time, and case statistics for your organization. Reviewers can quickly filter cases by status, the date the case was opened, and the date the case was last updated.

Selecting a case on the case dashboard opens the case for investigation and review. This step is the heart of the insider risk management workflow. This area is where risk activities, policy conditions, alerts details, and user details are synthesized into an integrated view for reviewers. The primary investigation tools in this area are:

- **User activity**: User activity is automatically displayed in an interactive chart that plots activities over time and by risk level for current or past risk activities. Reviewers can quickly filter and view the entire risk history for the user and drill into specific activities for more details.
- **Content explorer**: All data files and email messages associated with alert activities are automatically captured and displayed in the Content explorer. Reviewers can filter and view files and messages by data source, file type, tags, conversation, and many more attributes.
- **Case notes**: Reviewers can provide notes for a case in the Case Notes section. This list consolidates all notes in a central view and includes reviewer and date submitted information.

![Insider risk management investigation.](../media/insider-risk-investigate.png)

Additionally, the new [Audit log (preview)](insider-risk-management-audit-log.md) enables you to stay informed of the actions that were taken on insider risk management features. This resource allows an independent review of the actions taken by users assigned to one or more insider risk management role groups.

### Action

After cases are investigated, reviewers can quickly act to resolve the case or collaborate with other risk stakeholders in your organization. If users accidentally or inadvertently violate policy conditions, a simple reminder notice can be sent to the user from notice templates you can customize for your organization. These notices may serve as simple reminders or may direct the user to refresher training or guidance to help prevent future risky behavior. For more information, see [Insider risk management notice templates](insider-risk-management-notices.md).

In more serious situations, you may need to share the insider risk management case information with other reviewers or services in your organization. Insider risk management is tightly integrated with other Microsoft Purview solutions to help you with end-to-end risk resolution.

- **eDiscovery (Premium)**: Escalating a case for investigation allows you to transfer data and management of the case to Microsoft Purview eDiscovery (Premium). eDiscovery (Premium) provides an end-to-end workflow to preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It allows legal teams to manage the entire legal hold notification workflow. To learn more about eDiscovery (Premium) cases, see [Overview of Microsoft Purview eDiscovery (Premium)](overview-ediscovery-20.md).
- **Office 365 Management APIs integration (preview)**: Insider risk management supports exporting alert information to security information and event management (SIEM) services via the Office 365 Management APIs. Having access to alert information in the platform the best fits your organization's risk processes gives you more flexibility in how to act on risk activities. To learn more about exporting alert information with Office 365 Management APIs, see [Export alerts](insider-risk-management-settings.md#export-alerts).

> [!NOTE]
> Thank you for your feedback and support during the preview of the ServiceNow connector. We've decided to end the preview of ServiceNow connector and discontinue support in insider risk management on November 30, 2020. We are actively evaluating alternative methods to provide customers with ServiceNow integration in insider risk management.

## Scenarios

Insider risk management can help you detect, investigate, and take action to mitigate internal risks in your organization in several common scenarios:

### Data theft by departing users

When users leave an organization, either voluntarily or as the result of termination, there are often legitimate concerns that company, customer, and user data are at risk. Users may innocently assume that project data isn't proprietary, or they may be tempted to take company data for personal gain and in violation of company policy and legal standards. Insider risk management policies that use the [Data theft by departing users](insider-risk-management-policies.md#policy-templates) policy template automatically detect activities typically associated with this type of theft. With this policy, you'll automatically receive alerts for suspicious activities associated with data theft by departing users so you can take appropriate investigative actions. Configuring a [Microsoft 365 HR connector](import-hr-data.md) for your organization is required for this policy template.

### Intentional or unintentional leak of sensitive or confidential information

In most cases, users try their best to properly handle sensitive or confidential information. But occasionally users may make mistakes and information is accidentally shared outside your organization or in violation of your information protection policies. In other circumstances, users may intentionally leak or share sensitive and confidential information with malicious intent and for potential personal gain. Insider risk management policies created using the following Data leaks policy templates automatically detect activities typically associated with sharing sensitive or confidential information:

- [General data leaks](insider-risk-management-policies.md#general-data-leaks)
- [Data leaks by priority users (preview)](insider-risk-management-policies.md#data-leaks-by-priority-users-preview)
- [Data leaks by disgruntled users (preview)](insider-risk-management-policies.md#data-leaks-by-disgruntled-users-preview)

### Intentional or unintentional security policy violations (preview)

Users typically have a large degree of control when managing their devices in the modern workplace. This control may include permissions to install or uninstall applications needed in the performance of their duties or the ability to temporarily disable device security features. Whether this activity is inadvertent, accidental, or malicious, this conduct can pose risk to your organization and is important to identify and act to minimize. To help identify these risky security activities, the following insider risk management security policy violation templates scores security risk indicators and uses Microsoft Defender for Endpoint alerts to provide insights for security-related activities:

- [General security policy violations (preview)](insider-risk-management-policies.md#general-security-policy-violations-preview)
- [Security policy violations by departing users (preview)](insider-risk-management-policies.md#security-policy-violations-by-departing-users-preview)
- [Security policy violations by priority users (preview)](insider-risk-management-policies.md#security-policy-violations-by-priority-users-preview)
- [Security policy violations by disgruntled users (preview)](insider-risk-management-policies.md#security-policy-violations-by-disgruntled-users-preview)

### Policies for users based on position, access level, or risk history (preview)

Users in your organization may have different levels of risk depending on their position, level of access to sensitive information, or risk history. This structure may include members of your organization's executive leadership team, IT administrators that have extensive data and network access privileges, or users with a past history of risky activities. In these circumstances, closer inspection and more aggressive risk scoring are important to help surface alerts for investigation and quick action. To help identify risky activities for these types of users, you can create priority user groups and create policies from the following policy templates:

- [Security policy violations by priority users (preview)](insider-risk-management-policies.md#security-policy-violations-by-priority-users-preview)
- [Data leaks by priority users (preview)](insider-risk-management-policies.md#data-leaks-by-priority-users-preview)

### Healthcare (preview)

For organizations in the healthcare industry, recent studies have found a very high rate of insider-related data breaches. Detecting misuse of patient data and health record information is a critical component of safeguarding patient privacy and complying with compliance regulation such as the Health Insurance Portability and Accountability Act (HIPAA) and the Health Information Technology for Economic and Clinical Health (HITECH) Act. Patient data misuse can range from accessing privileged patient records to accessing records of patients from family or neighbors with malicious intent. To help identity these types of risky activities, the following insider risk management policy templates use the Microsoft 365 HR connector and a healthcare-specific data connector to start scoring risk indicators relating to behaviors that may occur within your electronic heath record (EHR) systems:

- [General patient data misuse (preview)](insider-risk-management-policies.md#general-patient-data-misuse-preview)

### Actions and behaviors by disgruntled users (preview)

Employment stresses events can impact user behavior in several ways that relate to insider risks. These stressors may be a poor performance review, a position demotion, or the user being placement on a performance review plan. Though most users don't respond maliciously to these events, the stress of these actions may result in some users to behave in ways they may not normally consider during normal circumstances. To help identify these types of risky activities, the following insider risk management policy templates use the Microsoft 365 HR connector and starts scoring risk indicators relating to behaviors that may occur near employment stressor events:

- [Data leaks by disgruntled users (preview)](insider-risk-management-policies.md#data-leaks-by-disgruntled-users-preview)
- [Security policy violations by disgruntled users (preview)](insider-risk-management-policies.md#security-policy-violations-by-disgruntled-users-preview)

### Risky browser usage that could result in a security incident (preview)

Most organizations provide users with rules and guidelines that clarify how an organization's devices and internet access should be used. These policies help protect both the organization and users from security and regulatory risks. To help identity these types of risky actions, the following insider risk management policy template can help detect and enable risk scoring for web browsing behaviors that might result in a data security incident, such as visiting sites that provide malware or hacking tools.

- [General risky browser usage (preview)](insider-risk-management-policies.md#general-risky-browser-usage-preview)

## Ready to get started?

- See [Plan for insider risk management](insider-risk-management-plan.md) for how to prepare to enable insider risk management policies in your organization.
- See [Get started with insider risk management settings](insider-risk-management-settings.md) to configure global settings for insider risk policies.
- See [Get started with insider risk management](insider-risk-management-configure.md) to configure prerequisites, create policies, and start receiving alerts.
