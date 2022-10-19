---
title: Learn about insider risk management forensic evidence (preview)
description: Learn about insider risk management forensic evidence in Microsoft Purview. Forensic evidence is an investigative tool for viewing captured user activity to help determine whether the user's actions pose a risk and may lead to a security incident.
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
---

# Learn about insider risk management forensic evidence (preview)

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

Having visual context is crucial for security teams during forensic investigations to get better insights into potentially risky security-related user activities. With customizable event triggers and built-in user privacy protection controls, forensic evidence enables customizable visual activity capturing across devices to help your organization better mitigate, understand, and respond to potential data risks like unauthorized data exfiltration of sensitive data. You set the right policies for your organization, including what risky events are the highest priority for capturing forensic evidence, what data is most sensitive, and whether users are notified when forensic capturing is activated. Forensic evidence capturing is off by default and policy creation requires dual authorization.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Feature capabilities

- **Visual capturing** allows organizations to capture clips of key security-related user activities, allowing for more secure or compliant visibility and meeting organizational needs.
- **Protected user privacy** through multiple levels of approval for the activation of the capturing feature.
- **Customizable triggers and capturing options** mean that security teams can set up forensic evidence to meet their needs, whether it be based on incidents (for example, *Capture 5 min before and 10 min after a user has downloaded 'SecretResearchPlans.docx'*), or based on continuous capturing needs.
- **User-centric policy targeting** means that security and compliance teams can focus on activity by user, not device, for better contextual insights.
- **Strong role-based access controls (RBAC)** mean that the ability to set up and review forensic clips is tightly controlled and only available to individuals in the organization with the right permissions.
- **Deep integration with current insider risk management features**, making for easier onboarding and more familiar workflows for insider risk management administrators and a trusted single-platform approach.

## Capturing options

[Triggering events, global indicators, and policy indicators](/microsoft-365/compliance/insider-risk-management-settings#indicators) play an important role in all insider risk management policies, including forensic evidence policies. Triggering events are user actions that determine if users are brought into scope for evaluation in insider risk management policies. Global settings indicators are used to determine what activities are collected by insider risk management. Policy indicators are used to determine a risk score for an in-scope user.

Depending how your organization decides to configure forensic evidence, there are two capturing options:

- **Specific activities**: This policy option captures activity only when a triggering event has brought an approved user into scope for the forensic evidence policy and when the conditions for a policy indicator are detected for the user. For example, a user approved for forensic evidence capturing is brought in-scope to the forensic evidence policy and the user copies data to personal cloud storage services or portable storage devices. Capturing is scoped only to the configured time frame when the user is copying the data to the personal cloud storage service or portable storage device. Captures for this option will be available for review on the **Forensic evidence (preview)** tab on the **Alerts** dashboard.
- **All activities**: This policy option captures any activity performed by users. This includes mouse movement, keystrokes, and all activities defined by insider risk indicators. For example, your organization has a time-sensitive need for capturing activities for an approved user that is actively involved in potentially risky activities that may lead to a security incident. Policy indicators may not have reached the threshold for an alert to be generated by the policy and the potentially risky activity may not be documented. Continuous capturing help prevents the potentially risky activity from being missed or going undetected. Captures for this option will be available for review on the **Forensic evidence (preview)** tab on the **User activity reports (preview)** dashboard.

>[!IMPORTANT]
>Forensic evidence clips are deleted 120 days after they're captured or at the end of the preview period, whichever is sooner. You can download or transfer forensic evidence clips before they're deleted.

## Workflow

The overall workflow for detecting, investigating, and remediating alerts that contain clip capturing follows the [same basic steps](/microsoft-365/compliance/insider-risk-management#workflow) as other insider risk management policies. However, there are some notable differences for forensic evidence when configured in your organization:

- **Users subject to capturing must have explicit capturing requests and approvals**: This is an extra process not included as a part of configuring other insider risk management policies. Users assigned to the *Insider Risk Management* or *Insider Risk Management Admins* role groups must submit a request to users assigned to the *Insider Risk Management Approvers* role group before any user in your organization is eligible for any clip capturing options. For example, this requirement helps support organizational scenarios where your insider risk management admins must get explicit approval from your designated legal or human resources personnel before capturing for any user is enabled.
- **Devices must be onboarded and have the Microsoft Purview client installed**: Before forensic evidence can collect and store clips captured for eligible users, their devices must be onboarded to the Microsoft Purview compliance portal. Additionally, each device must have the Microsoft Purview Client installed. These prerequisites enable support for both online and offline device capturing.

## Ready to get started?

- See [Get started with insider risk management forensic evidence](/microsoft-365/compliance/insider-risk-management-forensic-evidence-configure) for step-by-step guidance to configure forensic evidence capturing in your organization.
- See [Get started with insider risk management](/microsoft-365/compliance/insider-risk-management-configure) to configure prerequisites, create policies, and start receiving alerts.
