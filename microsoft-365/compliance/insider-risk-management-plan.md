---
title: Plan for insider risk management
description: Learn how to plan for using insider risk management policies in your organization.
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
ms.collection: m365-security-compliance
ms.custom: admindeeplinkCOMPLIANCE
---

# Plan for insider risk management

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Before getting started with [insider risk management](insider-risk-management.md) in your organization, there are important planning activities and considerations that should be reviewed by your information technology and compliance management teams. Thoroughly understanding and planning for deployment in the following areas will help ensure that your implementation and use of insider risk management features goes smoothly and is aligned with the best practices for the solution. 

For more information and an overview of the planning process to address risky activities in your organization, see [Starting an insider risk management program](https://download.microsoft.com/download/b/2/0/b208282a-2482-4986-ba07-15a9b9286df0/pwc-starting-an-insider-risk-management-program-with-pwc-and-microsoft.pdf).

Watch the video below to learn how the insider risk management workflow can help your organization prevent, detect, and contain risks while prioritizing your organization values, culture, and user experience:
<br>
<br>

>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4OUXB]

## Work with stakeholders in your organization

Identify the appropriate stakeholders in your organization to collaborate for taking actions on insider risk management alerts and cases. Some recommended stakeholders to consider including in initial planning and the end-to-end [insider risk management workflow](insider-risk-management.md#workflow) are people from the following areas of your organization:

- Information technology
- Compliance
- Privacy
- Security
- Human resources
- Legal

## Determine any regional compliance requirements

Different geographic and organizational areas may have compliance and privacy requirements that are different from other areas of your organization. Work with the stakeholders in these areas to ensure they understand the compliance and privacy controls in insider risk management and how they should be used across different areas of your organization. In some scenarios, compliance and privacy requirements might require policies that designate or restrict some stakeholders from investigations and cases based on the case for a user or regulatory or policy requirements for the area.

If you have requirements for specific stakeholders to be involved in case investigations that involve users in certain regions, roles, or divisions, you may want to implement separate (even if identical) [insider risk management policies](insider-risk-management-policies.md) targeting the different regions and populations. This configuration will make it easier for the right stakeholders to triage and manage cases that are relevant to their roles and regions. Additionally, you may want to consider creating processes and policies for regions where investigators and reviewers speak the same language as the users to help streamline the escalation process for insider risk management alerts and cases.

## Plan for the review and investigation workflow

Depending on how you wish to manage insider risk management policies and alerts, you'll need to assign users to specific role groups to manage different sets of insider risk management features. You have the option to assign users with different compliance responsibilities to specific role groups to manage different areas of insider risk management features. Or you may decide to assign all user accounts for designated administrators, analysts, investigators, and viewers to the Insider Risk Management role group. Use a single role group or multiple role groups to best fit your compliance management requirements.

You'll choose from these role group options and solution actions when working with insider risk management:

|**Actions**|**Insider Risk Management**|**Insider Risk Management Admin**|**Insider Risk Management Analysts**|**Insider Risk Management Investigators**|**Insider Risk Management Auditors**|
|:----------|:--------------------------|:--------------------------------|:-----------------------------------|:----------------------------------------|:-----------------------------------|
| Configure policies and settings | Yes | Yes | No | No | No |
| Access analytics insights | Yes | Yes | Yes | No | No |
| Access & investigate alerts | Yes | No | Yes | Yes | No |
| Access & investigate cases | Yes | No | Yes | Yes | No |
| Access & view the Content Explorer | Yes | No | No | Yes | No |
| Configure notice templates | Yes | No | Yes | Yes | No |
| View & export audit logs | Yes | No | No | No | Yes |

>[!IMPORTANT]
>Make sure you always have at least one user in the *Insider Risk Management* or *Insider Risk Management Admin* role groups (depending on the option you choose) so that your insider risk management configuration doesn't get in to a 'zero administrator' scenario if specific users leave your organization.

Members of the following roles can assign users to insider risk management role groups and have the same solution permissions included with the *Insider Risk Management Admin* role group:

- Azure Active Directory *Global Administrator*
- Azure Active Directory *Compliance Administrator*
- Microsoft Purview compliance portal *Organization Management*
- Microsoft Purview compliance portal *Compliance Administrator*

## Understand requirements and dependencies

Depending on how you plan to implement insider risk management policies, you need to have the proper Microsoft 365 licensing subscriptions and understand and plan for some solution prerequisites.

**Licensing:** Insider risk management is available as part of wide selection of Microsoft 365 licensing subscriptions. For details, see the [Getting started with insider risk management](insider-risk-management-configure.md#subscriptions-and-licensing) article.

> [!IMPORTANT]
> Insider risk management is currently available in tenants hosted in geographical regions and countries supported by Azure service dependencies. To verify that insider risk management is supported for your organization, see [Azure dependency availability by country/region](/troubleshoot/azure/general/dependency-availability-by-country).

If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try insider risk management, you can [add Microsoft 365](/office365/admin/try-or-buy-microsoft-365) to your existing subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

**Policy template requirements:** Depending on the policy template you choose, there are requirements that you need to understand and plan for prior to configuring insider risk management in your organization:

- When using the **Data theft by departing users** template, you must configure a Microsoft 365 HR connector to periodically import resignation and termination date information for users in your organization. See the [Import data with the HR connector](import-hr-data.md) article for step-by-step guidance to configure the Microsoft 365 HR connector for your organization.
- When using **Data leaks** templates, you must configure at least one Microsoft Purview Data Loss Prevention (DLP) policy to define sensitive information in your organization and to receive insider risk alerts for High Severity DLP policy alerts. See the [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md) article for step-by-step guidance to configure DLP policies for your organization.
- When using **Security policy violation** templates, you must enable Microsoft Defender for Endpoint for insider risk management integration in the Defender Security Center to import security violation alerts. For step-by-step guidance to enable Defender for Endpoint integration with insider risk management, see [Configure advanced features in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/advanced-features).
- When using **Disgruntled user** templates, you must configure a Microsoft 365 HR connector to periodically import performance or demotion status information for users in your organization. See the [Import data with the HR connector](import-hr-data.md) article for step-by-step guidance to configure the Microsoft 365 HR connector for your organization.

## Test with a small group of users in a production environment

Before enabling the solution broadly in your production environment, you may consider testing the policies with a small set of production users while conducting for the necessary compliance, privacy, and legal reviews in your organization. Evaluating insider risk management in a test environment would require that you generate simulated user actions and other signals to create alerts for triage and cases for processing. This approach isn't practical for most organizations, so testing insider risk management with a small group of users in a production environment is preferred.

Keep the anonymization feature in policy settings enabled to anonymize user display names in the insider risk management console during this testing to maintain privacy within the tool. This setting helps protect the privacy of users that have policy matches and can help promote objectivity in data investigation and analysis reviews for insider risk alerts.

If you don't see any alerts immediately after configuring an insider risk management policy, it may mean the minimum risk threshold hasn't been met yet. A good way to check if the policy is triggered and working as expected is to see if the user is in-scope for the policy on the **Users** page.

## Resources for stakeholders

Share insider risk management documentation with the stakeholders in your organization that are included in your management and remediation workflow:

- [Create and manage insider risk policies](insider-risk-management-policies.md)
- [Investigate insider risk activities](insider-risk-management-activities.md)
- [Take action on insider risk cases](insider-risk-management-cases.md)
- [Review case data with the insider risk Content explorer](insider-risk-management-content-explorer.md)
- [Create insider risk notice templates](insider-risk-management-notices.md)

## Ready to get started?

Ready to configure insider risk management for your organization? Review the following articles:

- [Get started with insider risk management settings](insider-risk-management-settings.md) to configure global policy settings.
- [Get started with insider risk management](insider-risk-management-configure.md) to configure prerequisites, create policies, and start receiving alerts.
