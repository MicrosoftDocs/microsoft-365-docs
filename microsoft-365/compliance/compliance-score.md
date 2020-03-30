---
title: "Microsoft Compliance Score"
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
description: "Microsoft Compliance Score helps organizations simplify and automate risk assessments, and suggests recommended actions to help address risks."
---

# Microsoft Compliance Score (Preview)

[Microsoft Compliance Score](https://compliance.microsoft.com/compliancescore) helps to simplify the way you manage compliance and reduce compliance risks through a user-friendly experience. Compliance Score is available for public preview in the  [Microsoft 365 compliance center](microsoft-365-compliance-center.md).

**In this article:** Read this article to understand what Compliance Score is and how to set it up for your organization.

**Learn about updates:** Go to the [Compliance Score release notes](compliance-score-release-notes.md) to see what's new and known issues with the preview version of Compliance Score.

## What is Compliance Score

Microsoft Compliance Score is a preview feature in the Microsoft 365 compliance center to help you understand your organization's compliance posture. It calculates a risk-based score measuring your progress in completing actions that help reduce risks around data protection and regulatory standards.

You can use Compliance Score as a tool to track all of your risk assessments. It provides workflow capabilities to help you efficiently complete your risk assessments through a common tool.

If you currently use [Compliance Manager](compliance-manager-overview.md), you'll notice that Compliance Score is now a standalone feature with a simpler, more user-friendly design to help you manage compliance more easily. 

The main Compliance Score page is your custom dashboard. It shows your current score, helps you see what needs attention, and guides you to actions to improve your score. Your Compliance Score dashboard will look like this:

![Compliance Score - dashboard](../media/compliance-score-dashboard.png "Compliance Score dashboard")

### Simplified compliance management

Compliance Score helps simplify compliance management by providing:

- **Continuous assessments**: automatically scans through your Microsoft 365 environments to detect and monitor the effectiveness of data protection controls in your system
- **Recommended actions**: provides recommendations and step-by-step guidance for how to implement controls to maximize your score
-  **Built-in control mapping**: helps you stay current with the evolving compliance landscape by providing a built-in common control framework

> [!IMPORTANT] 
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Recommendations from Compliance Score and Compliance Manager should not be interpreted as a guarantee of compliance. This service is currently in preview and is subject to the terms and conditions in the [Online Services Terms](https://go.microsoft.com/fwlink/?linkid=2108910).

## Relationship to Compliance Manager

Think of Compliance Score as a simplified version of Compliance Manager. While the two exist as distinct yet integrated tools, Compliance Score makes it easier to monitor your overall compliance posture and take steps to improve it.

Compliance Score shares the same backend with Compliance Manager, so any data you may already have in Compliance Manager will show in Compliance Score.

During public preview, some functionality remains solely in Compliance Manager, such as managing assessments and creating templates. We recommend beginning all of your compliance management activities in Compliance Score. When you come to functions handled by Compliance Manager, you will be guided to that tool. For that reason, some of this documentation directs you to Compliance Manager topics.

Learn more about the relationship between Compliance Score and Compliance Manager in the [Compliance Score release notes](compliance-score-release-notes.md).

## Understanding your score

Compliance Score gives you an initial score based on the Microsoft 365 data protection baseline. This baseline is a set of controls that includes common industry regulations and standards. While this score is a good starting point for assessing your compliance posture, Compliance Score becomes more powerful once you add assessments that are more relevant to your organization.

For example, if your organization belongs to the financial services industry, you may want to add the FFIEC assessment. If your organization belongs to the healthcare industry, you can add the HIPAA/HITECH assessment. Learn how to [add assessments in Compliance Manager](working-with-compliance-manager.md#assessments).

Learn more about [how your compliance score is calculated and continuously monitored](compliance-score-methodology.md).


## Key components: controls, assessments, templates, groups

Compliance Score uses several components to help you manage your compliance activities. As you use Compliance Score to assign, test, and monitor compliance activities, it's helpful to have a basic understanding of the key components: controls, assessments, templates, and groups.

### Controls

A control defines how you assess and manage system configuration, organizational process, and people accountability to meet a specific requirement of a regulation, standard, or internal policy.

Compliance Score tracks two types of controls:

1. **Microsoft-managed controls**: controls for Microsoft cloud services, which Microsoft is responsible for implementing
2. **Customer-managed controls**: controls managed by your organization, which you are responsible for implementing
 
### Assessments

An assessment is an evaluation of a template that initiates the scoring process for your organization. Assessments group the actions necessary to meet the requirements of a standard, regulation, or law. For example, you may have an assessment that, when you complete all actions within it, brings your Office 365 settings in line with ISO 27001 requirements.

By default, Compliance Score provides your organization with an assessment based on the Microsoft 365 data protection baseline, a recommendation for reducing your data protection and compliance risks ([learn more](compliance-score-methodology.md#initial-score-based-on-microsoft-365-data-protection-baseline)).

Assessments include several components:

- **In-scope services**: the specific set of Microsoft services applicable to the assessment
- **Microsoft-managed controls**: controls that Microsoft implemented and tested
- **Customer-managed controls**: controls that you manage
- **Assessment score**: the percentage of the points achieved by completing actions within that assessment

> [!NOTE]
> Compliance Score displays your assessments and how they factor into your overall score. However, during public preview you will be directed to Compliance Manager to manage your assessments.

View [detailed instructions for managing assessments](working-with-compliance-manager.md#assessments), which is done in Compliance Manager.

### Templates

Compliance Score provides pre-configured templates for assessments. Compliance Score also allows you to take a pre-configured template and customize it by adding your own controls, or create your own templates to suit your needs. For example, you can create a template for your business process control, or a template for a regional data protection or compliance standard that isn't covered by one of the pre-configured templates. By bringing your own templates into Compliance Score, you can track not only Microsoft cloud assessments, but also any other risk assessments in scope for your organization.

The pre-configured templates for Compliance Score are:

1. [Brazil General Data Protection Law (LGPD)](https://go.microsoft.com/fwlink/?linkid=2115387)
2. [California Consumer Privacy Act (CCPA)](https://go.microsoft.com/fwlink/?linkid=2108871) (Preview)
3. [Cloud Security Alliance (CSA) Cloud Controls Matrix (CCM) 3.0.1](https://go.microsoft.com/fwlink/?linkid=2109076)
4. [European Union GDPR](https://go.microsoft.com/fwlink/?linkid=2108870)
5. [Federal Financial Institutions Examination Council (FFIEC) Information Security Booklet](https://go.microsoft.com/fwlink/?linkid=2109077)
6. [FedRAMP Moderate](https://go.microsoft.com/fwlink/?linkid=2108869)
7. [HIPAA](https://go.microsoft.com/fwlink/?linkid=2109078) / [HITECH](https://go.microsoft.com/fwlink/?linkid=2109079)
8. [IRAP](https://go.microsoft.com/fwlink/?linkid=2113709) / [Australian Government ISM](https://go.microsoft.com/fwlink/?linkid=2113024) (Preview)
9. [ISO 27001:2013](https://go.microsoft.com/fwlink/?linkid=2109073)
10. [ISO 27018:2014](https://go.microsoft.com/fwlink/?linkid=2109074)
11. [ISO 27701:2019](https://go.microsoft.com/fwlink/?linkid=2113025)
12. [Microsoft 365 Data Protection Baseline](compliance-score-methodology.md#initial-score-based-on-microsoft-365-data-protection-baseline)
13. [NIST 800-53 Rev. 4](https://go.microsoft.com/fwlink/?linkid=2109075)
14. [NIST 800-171](https://go.microsoft.com/fwlink/?linkid=2108867)
15. [NIST Cybersecurity Framework (CSF)](https://go.microsoft.com/fwlink/?linkid=2108868)
16. [SOC 1](https://go.microsoft.com/fwlink/?linkid=2115184)
17. [SOC 2](https://go.microsoft.com/fwlink/?linkid=2115184)

View [detailed instructions for creating templates](working-with-compliance-manager.md#templates), which is done in Compliance Manager.

### Groups

Groups allow you to organize assessments in a way that is logical to you. For example, you may choose to group assessments by year, compliance standard, service, teams within your organization, or some other way.

When two different assessments in the same group share customer-managed actions, the completion of implementation details, testing, and status for the action in one assessment automatically synchronizes to the same action in any other assessment in the group. This unifies the assigned improvement actions across the group and reduces duplicating work.

Learn how to [create groups in Compliance Manager](working-with-compliance-manager.md#groups). Once you create groups, you can [filter you Compliance Score dashboard](compliance-score-setup.md#filtering-your-dashboard-view) to view your score by one or more groups.

## Next step: begin setup

Learn how to sign in, set up permissions, and configure updates and dashboard views at [Compliance Score setup](compliance-score-setup.md).
