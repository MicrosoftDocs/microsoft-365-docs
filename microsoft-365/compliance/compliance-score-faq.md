---
title: "Microsoft Compliance Score FAQ"
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
description: "Find answers to frequently asked questions about Microsoft Compliance Score, which helps organizations simplify and automate risk assessments."
---

# Microsoft Compliance Score (Preview) frequently asked questions

## What is Compliance Score?

Microsoft Compliance Score is a preview feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) that helps you understand your organization’s compliance posture. It calculates a risk-based score measuring your progress in completing actions that help reduce risks around data protection and regulatory standards. You can use Compliance Score as a tool to track all of your risk assessments. It provides workflow capabilities to help you efficiently perform and complete your risk assessments through a common tool.

## How do I access Compliance Score?

Go to the [Microsoft 365 compliance center](https://compliance.microsoft.com/) and **sign in** with your Microsoft 365 global admin account. Select **Compliance Score** on the left navigation pane. You should then see your [Compliance Score dashboard with your score](compliance-score-setup.md#understand-the-compliance-score-dashboard).

## What roles or permissions are needed to use Compliance Score?

Compliance Score uses a role-based access control (RBAC) permission model, and the actions you can perform depend on the type of role assigned to you. Your organization's Microsoft 365 global admin is the person who can perform the setup functions and administer roles in Compliance Score. At a minium, users need the **Azure AD global reader** role to read data in Compliance Score. Learn more about permissions, roles, and setup procedures at [Compliance Score setup](compliance-score-setup.md).

## What is the difference between Compliance Score and Compliance Manager?

Compliance Score and Compliance Manager share the same backend, but they are two distinct features. Think of Compliance Score as a simplified version of Compliance Manager, giving you a more complete view of your organization's current compliance posture and the steps you can take to improve it. While you can take many actions directly within Compliance Score, some functionality resides only in Compliance Manager during public preview. Read more about the [relationship between Compliance Score and Compliance Manager](compliance-score.md#relationship-to-compliance-manager).

## Who should use Compliance Score and who should use Compliance Manager?

Compliance Score is useful for everyone in your organization who plays a role in monitoring compliance and carrying out activities to protect data and comply with regulatory standards. With Compliance Score, you don't need to be familiar with regulations and standards in order to easily see how to improve your organization's data protection. Compliance Score is the optimal starting place for all users. From here, you can see your compliance score, learn which recommended actions can minimizing risks, and, in many cases, launch right into the solutions to take those actions.

Compliance Manager is for users more directly responsible for configuring controls to meet the specific needs of your organization. This is because the work of managing assessments and creating custom templates to build assessments can only be done in Compliance Manager. Learn more about [which actions are supported only by Compliance Manager](compliance-score-release-notes.md#compliance-score-and-compliance-manager-relationship) during public preview.

## If I have a high score, does it mean I'm fully compliant?

No. Your compliance score measures your progress in completing recommended actions that help reduce risks around data protection and regulatory standards. It does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Compliance Score should not be interpreted as a guarantee in any way.

## What regulations and standards does Compliance Score monitor?

Compliance Score gives you an initial score based on the Microsoft 365 data protection baseline, which is a set of controls that includes common industry regulations and standards. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

Organizations can create and add custom assessments that are more relevant to their organization. Read more about [how Compliance Score calculates your score](compliance-score-methodology.md), and learn more about [assessments](compliance-score.md#key-components-controls-assessments-templates-groups).

## What is the difference between Compliance Score and Secure Score?

While Compliance Score provides a broad view of your organization's data protection and compliance posture, Microsoft Secure Score is a security analytics tool for helping to understand your security posture. Compliance Score is also a workflow tool; it lets organizations assign work to users, track the control implementation and test status, and upload evidence and create audit reports. By contrast, Secure Score focuses more on tracking the implementation status automatically and does audit the controls.

## Which cloud services are covered by Compliance Score?

Compliance Score currently provides assessments for Office 365 and Intune. Expanded coverage is expected in future releases, and will be noted on the [Compliance Score release notes](compliance-score-release-notes.md).

## Can I use Compliance Score for non-Microsoft products?

While Compliance Score provides continuous assessments and recommended actions only for Microsoft cloud services, you can add custom assessments in Compliance Manager for your on-premises, third-party services. In this way, you can use Microsoft Compliance Score as a SaaS compliance management tool to help you manage all the controls across your digital assets. View detailed instructions for [creating custom assessments in Compliance Manager](working-with-compliance-manager.md#assessments).

## Why can't I delete a template or assessment I no longer need?

While you can't delete an assessment, you can hide it from view. Review [instructions for hiding assessments](working-with-compliance-manager.md#hide-a-template-or-an-assessment).

## Is my data in Compliance Score and Compliance Manager secure?

Yes. .....TBD whether to include this question.

## What do I do if I get an error message that my subscription level is not sufficient?

TBD whether to include this question.