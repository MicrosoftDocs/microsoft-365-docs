---
title: "Microsoft Compliance Score"
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

 **Microsoft Compliance Score**, a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md), is now available for public preview. Read this article to understand what Compliance Score is, how it can help you manage compliance for your organization, and how to get started.

## What is Compliance Score

Microsoft Compliance Score is a new feature within the Microsoft 365 compliance center that calculates a personalized, risk-based score to help understand your organization's state of compliance with key standards and regulations. It provides recommended actions you can take to strengthen your overall compliance posture, and provides workflow capabilities to to help you efficiently carry out those actions. If you use [Compliance Manager](compliance-manager-overview.md), you'll notice that Compliance Score is now a standalone feature with its own design and capabilities to help you manage compliance more easily.

![Compliance Score - dashboard](media/compliance-score-dashboard.png)

### Simplified compliance management

Compliance Score helps to simplify and automate the process of managing compliance for your organization through a centralized, user-friendly experience. Specifically, Compliance Score provides:

- **Continuous assessment** - automatically scans through your Microsoft 365 environments to detect and monitor the effectiveness of data protection controls in your system
- **Suggested solutions** - provides recommendations and step-by-step guidance for how to implement controls to maximize your score
-  **Streamlined collaboration** - lets you easily assign, track, record, and report on compliance tasks with built-in workflow tools

## Relationship to Compliance Manager

Think of Compliance Score as a simplified version of Compliance Manager. While the two exist for now as distinct yet integrated tools, Compliance Score makes it easier to montior your overall compliance posture and take steps to improve it. 

During public preview, some functionality remains in Compliance Manager, such as managing assessments and creating templates. We recommend beginning all of your compliance management functions in Compliance Score. When you come to functions that are handled in Compliance Manager, you will be clearly directed to that tool. For that reason, some of this documentation directs you to Compliance Manager topics.

## Understanding your score

Your compliance score is based on a behavior-based scoring system for activities related to data protection, privacy, and security in your organization. It calculates a numerical percentage based on points you can achieve by implementing and testing controls.

Compliance Score gives you an out-of-the-box score based on the Microsoft 365 Data Protection Baseline, which is a set of controls that includes key regulations and standards. While this score is a good starting point for assessing your compliance posture, Compliance Score becomes more relevant and powerful for you once you personalize it by creating assessments, customizing controls, and taking recommended improvement actions. 

Compliance Score also synchronizes automatically with your [Microsoft Secure Score](../security/mtp/microsoft-secure-score.md), providing you with a more meaningful score and centralized management of activities that affect both sets of scores.

> [!NOTE]
> Compliance Score and Secure Score do not cover everything in Office 365 or Microsoft Intune. The data they provide is to increase understanding of your compliance posture to help you make informed risk-based decisions.

Visit other topics for details about [how your compliance score is calculated](compliance-score-methodology.md) and how to improve your score through the [Compliance Score workflow](working-with-compliance-score.md).

> [!IMPORTANT]
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Compliance Score should not be interpreted as a guarantee in any way.Compliance Score does not cover everything in Office 365 or Microsoft Intune.

## Key components: controls, assessments, templates, & groups

Compliance Score uses several components to help you manage your compliance activities. As you work with Compliance Score to assign, test, and monitor compliance activities, it’s helpful to have a basic understanding up front of these key components. This diagram shows the relationship among them:

![Relationships in Compliance Manager Version 3](media/compliance-manager-relationships.png)

### Controls

A control is a process container that defines how you manage compliance activities. Controls can be organized and grouped into assessments to meet the requirement of a standard, regulation, or law.

When you manage your compliance activities through improvement actions (the key elements of the [wokflow process](working-with-compliance-score.md#managing-compliance-activities-with-improvement-actions)), the control is represented on an improvement action's details page by its title, a description, references to related regulations and standards, and implementation instructions.

There are three types of controls:

1. **Microsoft-managed controls**: for each cloud service, these are controls for which only Microsoft has responsibility 
2. **Customer-managed controls**: controls for which only you have responsibility
3. **Shared management controls**: controls where responsibility is shared between Microsoft and you. These are added by Microsoft, and you can edit or disable them
 
### Assessments

Assessments are containers for organizing controls based on responsibilities shared between Microsoft and your organization. Assessments help you implement data protection safeguards specified by a compliance standard and applicable data protection standards, regulations, or laws. Your score within an assessment tells you

By default, the following Assessments are already created for your organization:

- Office 365 ISO 27001
- Office 365 NIST 800-53
- Office 365 GDPR

Assessments include several components:

- **In-scope services**: each assessment applies to a specific set of Microsoft services
- **Microsoft-managed controls**
- **Customer-managed controls**
- **Assessment score**: the percentage of the total possible score for customer-managed controls in the assessment; this helps you track the implementation of actions assigned to each control

> [!NOTE]
> Compliance Score displays your assessments and how they factor into your overall compliance score. However, during public preview you will be directed to Compliance Manager to manage your assessments.

View detailed instructions for [working with assessments in Compliance Manager](working-with-compliance-manager.md#assessments).

### Templates

Compliance Score provides pre-configured templates for assessments and allows you to create customized templates for customer-managed controls to suit your needs. You can create new templates by copying an existing template, or by importing controls information from an Excel file.

The pre-configured templates for Compliance Score are:

- [ISO 27001:2013](https://www.iso.org/obp/ui/#iso:std:iso-iec:27001:ed-2:v1:en)
- [ISO 27001:2019](https://www.iso.org/standard/71670.html)
- [ISO 27018:2019](https://www.iso.org/obp/ui/#iso:std:iso-iec:27018:ed-2:v1:en)
- [NIST 800-53](https://csrc.nist.gov/publications/detail/sp/800-53/rev-4/final)
- [NIST 800-171](https://csrc.nist.gov/publications/detail/sp/800-171/rev-1/final)
- [NIST Cybersecurity Framework (CSF)](https://www.nist.gov/cyberframework)
- [Cloud Security Alliance (CSA) Cloud Control Matrix (CCM) 3.0.1](https://cloudsecurityalliance.org/working-groups/cloud-controls-matrix/#_overview)
- [Federal Financial Institutions Examination Council (FFIEC) Information Security Booklet](https://ithandbook.ffiec.gov/it-booklets/information-security.aspx) 
- [HIPAA](https://www.hhs.gov/hipaa/for-professionals/index.html) / [HITECH](https://www.hhs.gov/hipaa/for-professionals/special-topics/hitech-act-enforcement-interim-final-rule/index.html)
- [FedRAMP Moderate](https://www.fedramp.gov/documents/)
- [European Union GDPR](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32016R0679&from=EN)
- [California Consumer Privacy Act (CCPA)](https://oag.ca.gov/privacy/ccpa)

> [!NOTE]
> During public preview, creating and customizing templates occurs within the Compliance Manager tool.

View detailed instructions for [creating and customizing templates in Compliance Manager](working-with-compliance-manager.md#templates).

### Groups

Groups allow you to organize assessments in a way that is logical to you. For example, you can group assessments by year, compliance standard, service, teams within your organization, or some other way. When two different assessments in the same group share customer-managed controls, the completion of implementation details, testing, and status for the control automatically synchronize to the same control in any other assessment in the group. This unifies the assigned improvement actions for each control across the group and reduces duplicating work.

Read more about [working with groups in Compliance Manager](working-with-compliance-manager.md#groups).

## Getting started

The next step is to read [Working with Compliance Score](working-with-compliance-score.md) for detailed instructions on accessing, optimizing, and working with Compliance Score.