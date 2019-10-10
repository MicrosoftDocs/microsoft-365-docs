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

## Introduction

 **Microsoft Compliance Score**, a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md), is now available for public preview. Read this article to understand what Compliance Score is, how it can help you manage compliance for your organization, and how to get started.

## What is Compliance Score

Microsoft Compliance Score is a new, streamlined experience that is part of your overall M365 compliance activity. As a new feature within the Microsoft 365 compliance center, Compliance Score calculates a personalized, risk-based score to help understand your organization's state of compliance with key standards and regulations, and recommends actions you can take to strengthen your overall compliance posture. If you use [Compliance Manager](compliance-manager-overview.md), you'll notice that Compliance Score is now a standalone feature with its own design and capabilities—many of which replace functions you previously performed within Compliance Manager. 

### Simplified compliance management

Compliance Score helps to simplify and automate the process of managing compliance for your organization through a centralized, user-friendly experience. Specifically, Compliance Score provides:

- **Continuous assessment** - automatically scans through your Microsoft 365 environments to detect and monitor the effectiveness of data protection controls in your system
- **Suggested solutions** - provides recommendations and step-by-step guidance for how to implement controls to maximize your score
-  **Streamlined collaboration** - lets you easily assign, track, record, and report on compliance tasks with built-in workflow tools

## Understanding your score

Your compliance score is based on a behavior-based scoring system for activities related to data protection, privacy, and security in your organization. It calculates a numerical percentage based on points you can achieve by implementing and testing controls.

Compliance Score gives you an out-of-the-box score based on the Microsoft Data Protection Standard (MSDP), which is a set of controls that includes key regulations and standards. While this score is a good starting point for assessing your compliance posture, Compliance Score becomes more relevant and powerful for you once you personalize it by creating assessments, customizing controls, and taking recommended improvement actions.

Visit other topics for details about [how your compliance score is calculated](compliance-score-methodology.md) and how to improve your score through the [workflow](working-with-compliance-score.md).

> [!IMPORTANT]
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Compliance Score should not be interpreted as a guarantee in any way.

## Relationship to Compliance Manager

Compliance Score acts as a simplified version of Compliance Manager. Many of the tasks you may be used to doing in Compliance Manager can now be done more easily in Compliance Score. So that you can benefit from improved functionality and experience, use Compliance Score as the starting point for monitoring your compliance score and working on compliance-strengthening activities (called **Improvement actions** in Compliance Score).

During public preview, some functionality remain in Compliance Manager, such as managing Assessments and creating templates. We recommend beginning all of your compliance management functions in Compliance Score. When you come to functions that are handled in Compliance Manager, you will be clearly directed to that tool. Accordingly, at points in this documentation, you will be directed to Compliance Manager topics.

## Key components: controls, assessments, templates, & groups

Compliance Score uses several components to help you manage your compliance activities. As you work with Compliance Score to assign, test, and monitor compliance activities, it’s helpful to have a basic understanding of the key terms and concepts below. This diagram  shows the relationship between the primary components:

INSERT SCREEN SHOT- ROB'S GROUPS DIAGRAM

### Controls

A control is an activity or process created to meet a certain standard, regulation, or law. Think of controls as process containers that define how you manage your compliance activities. They are organized into control families that align with the Assessment structure for corresponding certifications or regulations. When you manage your compliance activities through Improvement actions, the control is represented on the Improvement action page by its title at the top, a description, references to related regulations and standards , and implementation instructions.

There are three types of controls:

1. **Microsoft-managed controls**: for each cloud service, these are controls for which only Microsoft has responsibility. They appear in the inbox Templates and are added by Microsoft.
2. **Customer-managed controls**: controls for which only you have responsibility. They appear in the inbox Templates and are added by you.
3. **Shared management controls**: controls where responsibility is shared between Microsoft and you. These appear in the inbox Templates and are added by Microsoft; you can also edit or disable Microsoft-managed controls.
 
### Assessments

Assessments help you carry out the necessary tasks, or improvement actions, as specified by a compliance standard and applicable data protection standards, regulations, or laws. They can include actions that have been taken by Microsoft to protect your data. Think of them as containers that allow you to organize controls. They are completed when you take action to implement the controls included in the Assessment.

> [!NOTE]
> Compliance Score displays your assessments and how they factor into your overall compliance score. However, during public preview you will be directed to Compliance Manager to manage your assessments. Therefore, some instructions in this documentation link to Compliance Manager documentation.

By default, the following Assessments are already created for your organization:

- Office 365 ISO 27001
- Office 365 NIST 800-53
- Office 365 GDPR

Assessments include several components:

- **Microsoft-managed controls**
- **Customer-managed controls**
- **In-scope services**: each assessment applies to a specific set of Microsoft services
- **Assessment score**: the percentage of the total possible score for customer-managed controls in the Assessment. This helps you track the implementation of the Actions assigned to each control.- 

[View detailed instructions for working with Assessments](working-with-compliance-manager.md#assessments)

### Templates

Compliance Score provides pre-configured templates for Assessments and allows you to create customized templates for customer-managed controls for your compliance needs. New templates are created by importing controls information from an Excel file, or you can create a template from a copy of an existing template.

The pre-configured templates for Compliance Score are:

- [ISO 27001:2013](https://www.iso.org/obp/ui/#iso:std:iso-iec:27001:ed-2:v1:en)
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
> During public preview, creating and customizing templates occurs within the Compliance Manager tool. Therefore, instructions for working with templates will point to the documentation for Compliance Manager.

[View detailed instructions for creating and customizing templates](working-with-compliance-manager.md#templates)

### Groups

Groups allow you to logically organize Assessments. You can group Assessments by year, compliance standard, service, teams within your organization, or other groupings to help organize your compliance work. When two different Assessments in the same group share customer-managed controls, the completion of implementation details, testing, and status for the control automatically synchronize to the same control in any other Assessment in the Group. This unifies the assigned Improvement actions for each control across the group and reduces duplicating work.

[Read more about working with groups](working-with-compliance-manager.md#groups)

## Getting started

The next step is to read [Working with Compliance Score](working-with-compliance-score.md) for detailed instructions for accessing, optimizing, and working with Compliance Score.