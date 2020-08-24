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
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Microsoft Compliance Manager helps organizations simplify and automate risk assessments, and suggests recommended actions to help address risks."
---

# Microsoft Compliance Manager

**In this article:** Learn what Compliance Manager is, how it helps simplify the way you manage compliance, and how to set it up for your organization.

## What's new: the GA release of Compliance Manager

Compliance Manager is now generally available (GA) as an end-to-end compliance management solution inside the [Microsoft 365 compliance center](microsoft-365-compliance-center.md). With this release, Compliance Manager completes the transition from its previous location in the Microsoft Service Trust Portal.

What began as the public preview of Compliance Score in the Microsoft 365 compliance center has evolved into the GA release of Compliance Manger. Compliance Manager has the same user-friendly interface and scoring mechanism of the preview version of Compliance Score, yet now with full functionality and significant improvements to help you measure and strengthen your compliance posture. With the GA release, Compliance Manager is now available to US Government Community Cloud (GCC) Moderate and High customers.

**Learn more about the GA release:**
- Our [frequently asked questions](compliance-manager-faq.md) walk you through the evolution in greater detail.
- Read about GA feature enhancements in [this blog post](https://aka.ms/compliancemanager/GAblog).

## What is Compliance Manager

[Microsoft Compliance Manager](https://compliance.microsoft.com/compliancemanager) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you manage compliance for organization with greater ease and assurance. Compliance Manager can help you throughout your compliance journey, whether you’re just beginning to take inventory of your data protection risks, or you need help managing the complexities of implementing controls, staying current with updated regulations and certifications, and reporting to auditors.

Compliance Manager helps simplify the way you manage compliance by providing:

- Pre-built assessments for common industry and regional standards and regulations you can use or customize to suit your needs (available assessments depends on your licensing agreement; [learn more](https://go.microsoft.com/fwlink/?linkid=2132371))

- Workflow capabilities to help you efficiently complete your risk assessments through a common tool.

- Detailed guidance on improvement actions to help you comply with the standards and regulations you identify as most relevant for your organization.

- A risk-based compliance score to help you understand your compliance posture by measuring your progress in completing improvement actions. 

You can use Compliance Score as a tool to track all of your risk assessments. It provides workflow capabilities to help you efficiently complete your risk assessments through a common tool.

Your Compliance Manager dashboard shows your current score, helps you see what needs attention, and guides you to key improve actions for completing your assessments. Your Compliance Manager dashboard will look like this:

![Compliance Score - dashboard](../media/compliance-score-dashboard.png "Compliance Score dashboard")

## Understanding your compliance score

Compliance Manager awards you points for completing actions taken to comply with a regulation, standard, or policy. Each action has a different impact on your score depending on the potential risks involved. Your compliance score can help prioritize which action to focus on to improve your overall compliance posture.

Compliance Manager gives you an initial score based on the Microsoft 365 data protection baseline. This baseline is a set of controls that includes key regulations and standards for data protection and general data governance.

#### Learn more

[Understand how your compliance score is calculated.](compliance-score-calculation.md).

[Create and manage assessments in Compliance Manager.](compliance-manager-assessments.md).

## Key components: controls, assessments, templates, improvement actions

Compliance Score uses several components to help you manage your compliance activities. As you use Compliance Score to assign, test, and monitor compliance activities, it’s helpful to have a basic understanding of the key components: controls, assessments, templates, and improvement actions.

### Controls

A control is a requirement of a regulation, standard, or policy. It defines how you assess and manage system configuration, organizational process, and people responsible for meeting a specific requirement of a regulation, standard, or policy.

Compliance Manager tracks two types of controls:

1. **Microsoft managed controls**: controls for Microsoft cloud services, which Microsoft is responsible for implementing
2. **Your controls**: sometimes referred to as customer managed controls, these are controls implemented and managed by your organization

#### Learn more

[Monitor progress of your controls](compliance-manager-assessments.md#monitor-assessment-progress-and-controls).

### Assessments

An assessment is grouping of controls from a specific regulation, standard, or policy. Completing the actions within an assessment help you meet the requirements of a standard, regulation, or law. For example, you may have an assessment that, when you complete all actions within it, brings your Microsoft 365 settings in line with ISO 27001 requirements.

Assessments have several components:

- **In-scope services**: the specific set of Microsoft services applicable to the assessment
- **Microsoft managed controls**: controls that Microsoft implements and tests
- **Your controls**: controls that you manage
- **Assessment score**: the percentage of the points achieved by completing improvement actions within that assessment

When creating assessments, you'll assign them to a **group**. You can configure groups in whatever way is most logical for your organization. For example, you may group assessments by year, compliance standard, service, teams within your organization, or some other way. Once you create groups, you can [filter you Compliance Manager dashboard](compliance-manager-setup.md#filtering-your-dashboard-view) to view your score by one or more groups.

#### Learn more

[Create and manage assessments in Compliance Manager](compliance-manager-assessments.md).

### Templates

Compliance Manager provides templates to help you quickly create assessments. You can modify these templates to create an assessment optimized for your needs. You can also build a custom assessment by creating a template with your own controls and actions. For example, you may want a template to cover an internal business process control, or a regional data protection standard that isn’t covered by one of our templates.

Creating your own templates lets you track not only Microsoft cloud assessments, but also any other risk assessments in scope for your organization.

#### Learn more

[View the templates provided by Compliance Manager](compliance-manager-templates-list.md).

[Get detailed instructions for creating and modifying templates Compliance Manager](compliance-manager-templates).

### Improvement actions

Improvement actions centralize your compliance activities. Each improvement action gives detailed implementation guidance to help you align with data protection regulations and standards. Actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

#### Learn more

[Use improvement actions to manage your compliance workflow](compliance-manager-improvement-actions.md).

## Supported languages

Compliance Manger is available in the following languages:

- English
- Chinese (Simplified)
- Chinese (Traditional)
- French
- German
- Italian
- Japanese
- Korean
- Portuguese (Brazilian)
- Russian
- Spanish

## Next steps: set up and customize

Learn how to sign in, assign permissions and roles, configure settings, and personalize your dashboard view at [Compliance Manager setup](compliance-manager-setup.md).

Then start customizing Compliance Score for your organization by [setting up assessments](compliance-manager-assessments.md).