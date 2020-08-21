---
title: "Microsoft Compliance Score (preview)"
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
description: "Microsoft Compliance Score (preview) helps organizations simplify and automate risk assessments, and suggests recommended actions to help address risks."
---

# Microsoft Compliance Score (preview)

**In this article:** Learn what Compliance Score is, how it helps simplify the way you manage compliance, and how to set it up for your organization.

**What's new:** The June 2020 release includes new functionality to create and manage assessments, and to view controls within Compliance Score. Visit the [Compliance Score release notes](compliance-score-release-notes.md) to see what's new in the public preview of Compliance Score.

## What is Compliance Score

[Microsoft Compliance Score](https://compliance.microsoft.com/compliancescore) is a preview feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization's compliance posture. It calculates a risk-based score measuring your progress in completing actions that help reduce risks around data protection and regulatory standards.

You can use Compliance Score as a tool to track all of your risk assessments. It provides workflow capabilities to help you efficiently complete your risk assessments through a common tool.

[Compliance Manager](compliance-manager-overview.md) users will notice that Compliance Score is now a standalone feature with a simpler, more user-friendly design to help organizations more easily manage compliance.

The main Compliance Score page is your custom dashboard. It shows your current score, helps you see what needs attention, and guides you to actions to improve your score. Your Compliance Score dashboard will look like this:

![Compliance Score - dashboard](../media/compliance-score-dashboard.png "Compliance Score dashboard")

### Simplified compliance management

Compliance Score helps simplify compliance management by providing:

- **Continuous assessments**: automatically scans through your Microsoft 365 environments to detect and monitor the effectiveness of data protection controls in your system
- **Recommended actions**: provides recommendations and step-by-step guidance for how to implement controls to maximize your score
-  **Built-in control mapping**: helps you stay current with the evolving compliance landscape by providing a built-in common control framework

> [!IMPORTANT]
> Recommendations from Compliance Score and Compliance Manager should not be interpreted as a guarantee of compliance. It is up to you to evaluate and validate the effectiveness of customer controls per your regulatory environment. These services are currently in preview and subject to the terms and conditions in the [Online Services Terms](https://go.microsoft.com/fwlink/?linkid=2108910). See also [Microsoft 365 licensing guidance for security and compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Relationship to Compliance Manager

Think of Compliance Score as a simplified experience of Compliance Manager. While the two exist as distinct yet integrated tools, Compliance Score makes it easier to monitor your overall compliance posture and take steps to improve it.

Compliance Score shares the same backend with Compliance Manager. Anything that you do in one tool will surface in the other tool.

Some functionality for assessment and template management remains in Compliance Manager during public preview. We recommend beginning all of your compliance management activities in Compliance Score. When you come to functions handled by Compliance Manager, we’ll guide you there.

#### Learn more

[Understand the relationship between Compliance Score and Compliance Manager](compliance-score-release-notes.md#compliance-score-relationship-to-compliance-manager).

## Understanding your score

Compliance Score awards you points for completing actions taken to comply with a regulation, standard, or policy. Each action has a different impact on your score depending on the potential risks involved. Your score can help prioritize which action to focus on to improve your overall compliance posture.

Compliance Score gives you an initial score based on the Microsoft 365 data protection baseline.  This baseline is a set of controls that includes key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

The data protection baseline assessment is used to calculate your initial score before you configure any other assessments. Upon your first visit, Compliance Score is already collecting signals from your Microsoft 365 solutions. You’ll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take.

Because every organization has specific needs, Compliance Score relies on you to set up and manage your own assessments to better mitigate risks. For example, if your organization belongs to the financial services industry, you may want to add the FFIEC assessment. If your organization belongs to the healthcare industry, you can add the HIPAA/HITECH assessment.

#### Learn more

[Understand how your compliance score is calculated and continuously monitored](compliance-score-methodology.md).

[Create and manage assessments in Compliance Score](compliance-score-assessments.md).

## Key components: controls, assessments, templates, improvement actions

Compliance Score uses several components to help you manage your compliance activities. As you use Compliance Score to assign, test, and monitor compliance activities, it’s helpful to have a basic understanding of the key components: controls, assessments, templates, and improvement actions.

### Controls

A control is a requirement of a regulation, standard, or policy. It defines how you assess and manage system configuration, organizational process, and people responsible for meeting a specific requirement of a regulation, standard, or policy.

Compliance Score tracks two types of controls:

1. **Microsoft managed controls**: controls for Microsoft cloud services, which Microsoft is responsible for implementing
2. **Your controls**: sometimes referred to as customer controls, these are controls implemented and managed by your organization

#### Learn more

[Monitor progress of your controls](compliance-score-assessments.md#monitor-assessment-progress-and-controls).

### Assessments

An assessment is grouping of controls from a specific regulation, standard, or policy. Completing the actions within an assessment help you meet the requirements of a standard, regulation, or law. For example, you may have an assessment that, when you complete all actions within it, brings your Microsoft 365 settings in line with ISO 27001 requirements.

Assessments have several components:

- **In-scope services**: the specific set of Microsoft services applicable to the assessment
- **Microsoft managed controls**: controls that Microsoft implements and tests
- **Your controls**: controls that you manage
- **Assessment score**: the percentage of the points achieved by completing improvement actions within that assessment

When creating assessments, you'll assign them to a **group**. You can configure groups in whatever way is most logical for your organization. For example, you may group assessments by year, compliance standard, service, teams within your organization, or some other way. Once you create groups, you can [filter you Compliance Score dashboard](compliance-score-setup.md#filtering-your-dashboard-view) to view your score by one or more groups.

#### Learn more

[Create and manage assessments in Compliance Score](compliance-score-assessments.md).

### Templates

Compliance Score provides templates that are ready for you to quickly create assessments. You can modify these templates to create an assessment optimized for your needs. You can also create a Custom Assessment by developing your own template with your own controls and actions. For example, you may want a template to cover an internal business process control, or a regional data protection standard that isn’t covered by one of our templates.

Creating your own templates lets you track not only Microsoft cloud assessments, but also any other risk assessments in scope for your organization.

#### Learn more

[View the templates available in Compliance Score for building assessments](compliance-score-templates.md).

[Get detailed instructions for creating and modifying templates Compliance Manager](working-with-compliance-manager.md#templates).

### Improvement actions

Improvement actions centralize your compliance activities. Each improvement action gives detailed implementation guidance to help you align with data protection regulations and standards. Actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

#### Learn more

[Use improvement actions to manage your compliance workflow](compliance-score-improvement-actions.md).

## Next steps: set up and customize

Learn how to sign in, set permissions and roles, configure Secure Score updates, and personalize your dashboard view at [Compliance Score setup](compliance-score-setup.md).

Then start customizing Compliance Score for your organization by [setting up assessments](compliance-score-assessments.md).