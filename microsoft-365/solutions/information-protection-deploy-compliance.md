---
title: "Use Compliance Manager to manage improvement actions"
ms.author: chvukosw
author: chvukosw
f1.keywords:
- NOCSH
manager: laurawi
ms.date: 09/29/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- m365solution-infoprotection
- m365solution-scenario
ms.custom: 
description: Learn how to use Compliance Score and Compliance Manager to improve your level of protection for personal data.
---

# Use Compliance Manager to manage improvement actions

Microsoft Compliance Manager can help you manage improvements related to data privacy regulations such as the European Union [General Data Protection Regulation (GDPR)](/compliance/regulatory/gdpr), [California Consumer Protection Act CCPA)](/compliance/regulatory/ccpa-faq), HIPAA-HITECH (US health care privacy act), and the Brazil Data Protection Act (LGPD).

This article provides guidance on the use of this tool for data privacy purposes.

>[!Note]
>Recommendations from Compliance Manager should not be interpreted as a guarantee of compliance. It is up to you to evaluate and validate the effectiveness of customer controls per your regulatory environment. These services are subject to the terms and conditions in the [Online Services Terms](https://go.microsoft.com/fwlink/?linkid=2108910). See also [Microsoft 365 licensing guidance for security and compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#compliance-manager)
>

## Getting started with Compliance Manager

#### What is Compliance Manager

[Compliance Manager](../compliance/compliance-manager.md) is a workflow-based risk assessment tool in the Microsoft 365 compliance center for managing regulatory compliance activities related to Microsoft cloud services. As part of your Microsoft 365 or Azure Active Directory (Azure AD) subscription, Compliance Manager helps you manage regulatory compliance within the shared responsibility model for Microsoft cloud services.

**Ready to use assessments**

Compliance Manager provides pre-built templates for [building assessments](../compliance/compliance-manager-assessments.md) that are aligned to data privacy-related regulations, such as GDPR and HIPAA/HITECH. The templates have built-in control mapping to help you take improvement actions for meeting the regulation's requirements. Each assessment provides information about the controls each regulation calls for specific to the target service, broken out by controls you manage and controls Microsoft manages. 

Using a pre-built template helps you quickly get started with risk assessments. As you become more proficient in using Compliance Manager, you can customize a pre-built template by adding your own controls and improvement actions, or you can create your own custom assessments to suit your organization's needs.

View the [full list of assessment templates](../compliance/compliance-manager-templates-list.md) provided by Compliance Manager.

**Real-time compliance score**

Compliance Manager also provides you with a compliance score that measures your progress in completing recommended improvement actions within controls. You can use this score to help monitor your progress and prioritize actions based on their potential to reduce risk.

#### Use the Compliance Manager quickstart guide

The [Compliance Manager quickstart](../compliance/compliance-manager-quickstart.md) guide provides graduated steps and links to key resources to help you work with Compliance Manager:

- [First visit: get familiar with Compliance Manager](../compliance/compliance-manager-quickstart.md#first-visit-get-to-know-compliance-manager)
    - Working with your Compliance Manager dashboard
    - Understanding your compliance score
    - Learning about improvement actions
    - Understanding assessments and templates
- [Ramping up: configure Compliance Manager to manage your compliance activities](../compliance/compliance-manager-quickstart.md#ramping-up-configure-compliance-manager-to-manage-your-compliance-activities)
    - Building and managing your first assessment
    - Performing implementation and testing work on improvement actions to complete controls in your assessments
    - Understanding how different actions impact your compliance score
- [Scaling up: use advanced functionality to meet your custom needs](../compliance/compliance-manager-quickstart.md#scaling-up-use-advanced-functionality-to-meet-your-custom-needs)
    - Creating your custom assessments to track non-Microsoft 365 products
    - Modifying existing templates to add or remove controls
    - Setting up automated testing of improvement actions

## How your compliance score is calculated

Your compliance score is calculated based on a combination of Microsoft and customer-managed control implementations. See [compliance score calculation](../compliance/compliance-score-calculation.md) for a detailed explanation.

Controls are assigned a score value based on whether they're mandatory or discretionary, and whether they're preventative, detective, or corrective. These collectively represent the risk of not implementing it relative to other controls.

As presented in the compliance score calculation article, preventative controls get a higher score than detective and corrective ones, and mandatory controls get a higher score than discretionary ones.

The Compliance Score admin UI does not list these parameters, nor does it provide the ability to filter by them. However, if you download the associated template from  Compliance Manager, the resulting data set does list these parameters for most regulations.

For technical controls, Compliance Manager automatically updates the improvement action score once the action has been successfully implemented and tested. Other, non-technical control actions&mdash;such as those that are operational or related to documentation&mdash;need to be recorded manually as implemented before points count toward your score.

You many also be implementing certain improvement actions for other purposes&mdash;for example using retention labels for reasons other than data privacy regulation compliance&mdash;so you would get credit for using such a feature even if it is being used for other purposes, and not part of a deliberate compliance action.

Your compliance score should be considered a relative measure to track improvement on a broad scale. You should not pursue a perfect score.

## Additional guidance

Here are a few important tips for using Compliance Manager to help you achieve data privacy regulation compliance:

- Each data privacy regulation has a combination of technical controls, documentation specifications, and operational, process, and reporting requirements. All of these show up in the improvement actions.

- To focus the view of improvement actions to your area of interest, you can filter by action type in the **Solutions** tab in the Compliance Manager admin. Learn more about [filtering your Compliance Manager dashboard view](../compliance/compliance-manager-setup.md#filtering-your-dashboard-view).

- The relative importance and priority of improvement actions identified in Compliance Manager should be considered as part of a broader risk review along with the data privacy risk you've determined your organization needs to manage.

- Even with improvement action aggregation across multiple regulatory requirements, if the regulation assessment templates for GDPR, LGPD, CCPA, and HIPAA-HITECH are selected, for example, almost 400 improvement actions will be listed in Compliance Manager. To better tackle this long list, use the improvement action filter to reduce the result set to a more manageable list.

- The Categories filter provides a means to filter improvement actions by logical grouping, which the Track, Prevent, Protect, Retain, and Investigate articles in this overall solution align to.

- Some of the controls listed in the improvement actions may be considered more directly tied to a specific regulatory article, while other controls may be more indirectly associated with the spirit of a regulation and many times are simply recommended activities or best practices.