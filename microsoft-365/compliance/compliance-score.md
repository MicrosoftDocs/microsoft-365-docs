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

 We are pleased to announce the public preview of  **Microsoft Compliance Score**, a new feature available in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md). Read this article to understand what Compliance Score is, how it can help you manage compliance for your organization, and how to get started.

## What is Compliance Score

Microsoft Compliance Score is a new feature within the Microsoft 365 compliance center. It provides a risk-based score and has expanded functionality to help you manage compliance for your organization,… and gives recommendations to help you address risk.

While Compliance Score used to be a component of [Compliance Manager](compliance-manager-overview.md), it is now a standalone feature with its own design and capabilities—many of which replace functions you previously performed in Compliance Manager (see how it works with Compliance Manager<link to subhead below>).

## Simplifying compliance management

Compliance Score helps to simplify and automate the process of managing compliance for your organization. It gives you a centralized, user-friendly environment in which to efficiently and comprehensively manage your organization’s data protection and risk management posture—from keeping track of regulatory changes to defining controls, conducting auditing and testing to preparing reports. Specifically, Compliance Score provides:

- **Continuous assessment** - helping to automatically detect and monitor control effectiveness in your system
- **Suggested solutions** - providing recommendations and step-by-step guidance to help improve your score
-  **Streamlined collaboration** - letting you easily assign, track, record, and report compliance activities with built-in workflow management

## Understanding your score

When you first come to Compliance Score, you see a dashboard featuring a numerical score. It is a percentage based on points you can achieve for implementing and testing controls in Assessments.

Compliance Score gives you an out-of-the-box score based on the Microsoft Data Protection Standard (MSDP), which is a set of controls that includes key regulations and standards. While this score is a good starting point for assessing your compliance posture, Compliance Score becomes more relevant and powerful for you once you customize it by creating assessments, customizing controls, and taking recommended improvement actions.

Visit other topics for details about [how your compliance score is calculated](compliance-score-methodology.md) and how to improve your score via the workflow <link to working with article>.

> [!NOTE]
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Compliance Score should not be interpreted as a guarantee in any way.

## Relationship to Compliance Manager

Many of the tasks you formerly performed in Compliance Manager now reside in Compliance Score. You should now use Compliance Score as the starting point for tasks such as monitoring your compliance, assigning improvement actions, etc. however, some functions remain housed in Compliance Manager, such as managing Assessments. We recommend beginning all of your compliance management functions in Compliance Score. When you come to functions that are handled in Compliance Manager, you will be guided along those points and will clearly know when you are being directed to that tool.

## Getting started

### How to access Compliance Score

- Go to the [Microsoft Compliance Center](https://compliance.microsoft.com/) and and **sign in** with your global administrator or compliance administrator account
- Select **Compliance Score** on the left-hand navigation

- Access to Compliance Store is restricted by permissions. View roles and permissions. <link to page/section>)

### What to do first

Give others access/rights permissions
Invite others to join 
Understanding workflow at-a-glance



There are three types of controls in Compliance Manager, **Microsoft-managed controls**, **customer-managed controls**, and **Shared management controls**

### Microsoft-managed controls

For each cloud service, Microsoft implements and manages a set of controls as part of Microsoft's compliance with various standards and regulations. Each control provides details about how Microsoft implemented the control, and how and when that implementation was tested and validated by Microsoft and/or by an independent third-party auditor.

### Customer-managed controls

This is the collection of controls managed by your organization. Your organization is responsible for customer-managed control implementation as part of your compliance process for a given standard or regulation. Customer-managed controls are organized into control families for the corresponding certification or regulation. Use the customer-managed controls to implement the recommended actions suggested by Microsoft as part of your compliance activities. Your organization can use the prescriptive guidance and recommended customer actions in each customer-managed control to manage the implementation and assessment process for that control.

Customer-managed controls in Assessments also have built-in workflow management functionality that you can use to manage and track your progress towards Assessment completion. With this workflow functionality, you can:

- Assign Action Items for each control
- Track assigned Action Items
- Upload evidence of the implementation of the control
- Document the testing and validation of the control
- Mark the Action Items as implemented and tested

For example, a Compliance Officer in your organization assigns an Action Item to an IT admin with the responsibility and necessary permissions to perform the recommended action. The IT admin uploads evidence of the implementation tasks (screenshots of configuration or policy settings) and assigns the Action Item back to the Compliance Officer when completed. The Compliance Officer evaluates the collected evidence, tests the implementation of the control, and records the implementation date and test results in Compliance Manager.

### Shared management controls

A shared control refers to any control where Microsoft and customers both share responsibilities for implementation. For example, controls related to personnel screening, account and password management, and encryption require actions by both Microsoft and customers.

## Action Items

[Actions Items](working-with-compliance-manager.md#controls-and-actions) are included in customer-managed controls as part of the built-in workflow management functionality that you can use to manage and track your progress towards Assessment completion.

People in your organization can use Compliance Manager to review the customer-managed controls from all Assessments for which they are assigned. When a user signs in to Compliance Manager and opens the **Action Items** dashboard, a list of Action Items assigned to them is displayed. Depending on the Compliance Manager role assigned to the user, they can provide implementation or test details, update the Status, or assign Action Items.

Certification controls are usually implemented by one person and tested by another. For example, after Action Items initially assigned to one person for implementation are completed, Action Items are assigned to the next person to test and upload evidence. Any user with sufficient permissions for control assignments can assign and reassign Action Items. This enables central management of control assignments and decentralized routing of Action Items between implementors and testers.

## Permissions

Compliance Manager uses a role-based access control permission model. Only users who are assigned a user role may access Compliance Manager, and the actions allowed by each user are restricted by role type. [View a table](working-with-compliance-manager.md#permissions) showing the actions allowed for each permission.

The portal admin for Compliance Manager can set permissions for other users in within Compliance Manager by following these steps:

1. From the top **More** drop-down menu, select **Admin**, then **Settings**.
2. From here, select the role you want to assign and then add the employee you want to assign to that role. Users will then be able to perform certain actions.

In addition, users who are assigned the [Global Reader role in Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader) have read-only permission to access Compliance Manager; however they cannot edit data or perform any actions within Compliance Manager.

Note that there is no longer a default **Guest access** role. Each user must be assigned a role in order to access and work within Compliance Manager.
  
## Manage evidence

Compliance Manager can store evidence of your implementation tasks for performing testing and validation of customer-managed controls. Evidence includes documents, spreadsheets, screenshots, images, scripts, script output files, and other files. Compliance Manager also automatically receives telemetry and creates an evidence record for Action Items that are integrated with Secure Score. Any data uploaded as evidence into Compliance Manager is stored in the United States on Microsoft Cloud Storage sites. This data is replicated across Azure regions located in Southeast Asia and Western Europe.

## Templates

Compliance Manager provides pre-configured [templates](working-with-compliance-manager.md#templates) for Assessments and allows you to create customized templates for customer-managed controls for your compliance needs. New templates are created by importing controls information from an Excel file, or you can create a template from a copy of an existing template.

The pre-configured templates included with Compliance Manager are:
 
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

## Compliance Score

The [Compliance Score](compliance-score-methodology.md) is a core component of Compliance Manager that helps your organization understand and manage compliance. Like the [Microsoft Secure Score](../security/mtp/microsoft-secure-score.md), the Compliance Score is a behavior-based scoring system for activities related to data protection, privacy, and security in your organization. The Compliance Score for an Assessment is an expression of compliance with a given standard or regulation. The higher the numeric score, the better the compliance posture for the Assessment. Understanding the compliance scoring methodology is crucial for prioritizing required customer-managed control actions.
  
> [!IMPORTANT]
> The Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. No service can guarantee that you are compliant with a standard or regulation, and the Compliance Score should not be interpreted as a guarantee in any way.

## Secure Score integration

Compliance Manager is integrated with [Microsoft Secure Score](../security/mtp/microsoft-secure-score.md) to automatically apply Secure Score credit to the Compliance Score for synced Action Items. This is configurable for individual Action Items and provides a continuous update between the items.

For example, you have a security-related requirement for activating Azure Rights Management in your organization that also applies to a compliance-related Action Item. When Azure Rights Management is activated and processed by Secure Score, Compliance Manager receives notification of the update and the score for the Action Item automatically updates with completion credit.

## Ready to get started?

Start [working with Compliance Manager](working-with-compliance-manager.md) to manage regulatory compliance activities for your organization.

## Resources

- [Interactive guide: Assess and enhance your data protection controls with Compliance Manager](https://content.cloudguides.com/guides/Compliance%20Manager)
- [Microsoft Security, Privacy, and Compliance Tech Community](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/ct-p/SecurityPrivacyCompliance)
