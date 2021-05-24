---
title: "Microsoft Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- m365solution-compliancemanager
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: "Microsoft Compliance Manager helps organizations simplify and automate risk assessments, and suggests recommended actions to help address risks."
---

# Microsoft Compliance Manager

**In this article:** Learn what Compliance Manager is, how it helps simplify compliance and reduce risk, and its key components.

## What's new: the GA release of Compliance Manager

Compliance Manager is now generally available (GA) as an end-to-end compliance management solution inside the [Microsoft 365 compliance center](microsoft-365-compliance-center.md). With this release, Compliance Manager completes the transition from its previous location in the Microsoft Service Trust Portal. Compliance Manager is also  available to US Government Community (GCC) Moderate, GCC High, and Department of Defense (DoD) customers.

What began as the public preview of Compliance Score has evolved into a centralized tool with enhanced compliance management capabilities and greater ease of use.  The GA release brings a larger collection of pre-built assessments to help you scale your compliance activities.

**Learn more about the GA release:**
- Our [frequently asked questions](compliance-manager-faq.md) walk you through the evolution in greater detail.
- Read about GA feature enhancements in [this blog post](https://aka.ms/compliancemanager/GAblog).

Watch the video below to learn how Compliance Manager can help simplify how your organization manages compliance:
<br>
<br>
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4FGYZ]

## What is Compliance Manager

[Microsoft Compliance Manager](https://compliance.microsoft.com/compliancemanager) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) that helps you manage your organization’s compliance requirements with greater ease and convenience. Compliance Manager can help you throughout your compliance journey, from taking inventory of your data protection risks to managing the complexities of implementing controls, staying current with regulations and certifications, and reporting to auditors.

Compliance Manager helps simplify compliance and reduce risk by providing:

- Pre-built assessments for common industry and regional standards and regulations, or custom assessments to meet your unique compliance needs (available assessments depend on your licensing agreement; [learn more](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)).

- Workflow capabilities to help you efficiently complete your risk assessments through a single tool.

- Detailed step-by-step guidance on suggested improvement actions to help you comply with the standards and regulations that are most relevant for your organization. For actions that are managed by Microsoft, you’ll see implementation details and audit results.

- A risk-based compliance score to help you understand your compliance posture by measuring your progress in completing improvement actions.

Your Compliance Manager dashboard shows your current compliance score, helps you see what needs attention, and guides you to key improvement actions. Below is an example of what your Compliance Manager dashboard will look like:

![Compliance Manager - dashboard](../media/compliance-manager-dashboard.png "Compliance Manager dashboard")

## Understanding your compliance score

Compliance Manager awards you points for completing improvement actions taken to comply with a regulation, standard, or policy, and combines those points into an overall compliance score. Each action has a different impact on your score depending on the potential risks involved. Your compliance score can help prioritize which action to focus on to improve your overall compliance posture.

Compliance Manager gives you an initial score based on the Microsoft 365 data protection baseline. This baseline is a set of controls that includes key regulations and standards for data protection and general data governance.

##### Learn more

[Understand how your compliance score is calculated](compliance-score-calculation.md).

[Learn how to work with improvement actions](compliance-manager-improvement-actions.md).

## Key elements: controls, assessments, templates, improvement actions

Compliance Manager uses several data elements to help you manage your compliance activities. As you use Compliance Manager to assign, test, and monitor compliance activities, it’s helpful to have a basic understanding of the key elements: controls, assessments, templates, and improvement actions.

### Controls

A control is a requirement of a regulation, standard, or policy. It defines how you assess and manage system configuration, organizational process, and people responsible for meeting a specific requirement of a regulation, standard, or policy.

Compliance Manager tracks the following types of controls:

1. **Microsoft managed controls**: controls for Microsoft cloud services, which Microsoft is responsible for implementing
2. **Your controls**: sometimes referred to as customer managed controls, these are controls implemented and managed by your organization
3. **Shared controls**: these are controls that both your organization and Microsoft share responsibility for implementing

##### Learn more

[Monitor progress of your controls](compliance-manager-assessments.md#monitor-assessment-progress-and-controls).

[Learn how Compliance Manager continuously assesses controls](compliance-score-calculation.md#how-compliance-manager-continuously-assesses-controls).

### Assessments

An assessment is grouping of controls from a specific regulation, standard, or policy. Completing the actions within an assessment help you meet the requirements of a standard, regulation, or law. For example, you may have an assessment that, when you complete all actions within it, helps to bring your Microsoft 365 settings in line with ISO 27001 requirements.

Assessments have several components:

- **In-scope services**: the specific set of Microsoft services applicable to the assessment
- **Microsoft managed controls**: controls for Microsoft cloud services, which Microsoft implements on your behalf
- **Your controls**: sometimes referred to as customer managed controls, these are controls implemented and managed by your organization
- **Shared controls**: these are controls that both your organization and Microsoft share responsibility for implementing
- **Assessment score**: shows your progress in achieving total possible points from actions within the assessment that are managed by your organization and by Microsoft

When creating assessments, you’ll assign them to a group. You can configure groups in whatever way is most logical for your organization. For example, you may group assessments by audit year, region, solution, teams within your organization, or some other way. Once you create groups, you can [filter your Compliance Manager dashboard](compliance-manager-setup.md#filtering-your-dashboard-view) to view your score by one or more groups.

##### Learn more

[Build and manage assessments in Compliance Manager](compliance-manager-assessments.md).

### Templates

Compliance Manager provides templates to help you quickly create assessments. You can modify these templates to create an assessment optimized for your needs. You can also build a custom assessment by creating a template with your own controls and actions. For example, you may want a template to cover an internal business process control, or a regional data protection standard that isn’t covered by one of our 325+ pre-built assessment templates.

##### Learn more

[View the list of assessment templates provided by Compliance Manager](compliance-manager-templates-list.md).

[Get detailed instructions for creating and modifying templates for assessments](compliance-manager-templates.md).

### Improvement actions

Improvement actions help centralize your compliance activities. Each improvement action provides recommended guidance that’s intended to help you align with data protection regulations and standards. Improvement actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

##### Learn more

[Use improvement actions to manage your compliance workflow](compliance-manager-improvement-actions.md).

[Learn how actions impact your compliance score](compliance-score-calculation.md#action-types-and-points).

## Supported languages

Compliance Manager is available in the following languages:

- English
- Bahasa Indonesian
- Bahasa Malay
- Chinese (Simplified)
- Chinese (Traditional)
- Czech
- Danish
- Dutch
- Finnish
- French
- German
- Hebrew
- Hungarian
- Italian
- Japanese
- Korean
- Norwegian
- Polish
- Portuguese (Brazilian)
- Russian
- Spanish
- Swedish
- Thai
- Turkish

## Next steps: set up and customize

Learn how to sign in, assign permissions and roles, configure settings, and personalize your dashboard view at [Get started with Compliance Manager](compliance-manager-setup.md).

Then start customizing Compliance Manager to help you comply with industry standards that matter most to your organization by [setting up assessments](compliance-manager-assessments.md).

To help you comply with data privacy regulations, we’ve designed a workflow to guide you through an end-to-end process to plan and implement capabilities across Microsoft 365, including using Compliance Manager. For more information, see [Deploy information protection for data privacy regulations with Microsoft 365](../solutions/information-protection-deploy.md) (aka.ms/m365dataprivacy). 