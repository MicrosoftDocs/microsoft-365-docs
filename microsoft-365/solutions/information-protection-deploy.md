---
title: "Deploy information protection for data privacy regulations with Microsoft 365"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 05/01/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- M365solutions
ms.custom: 
description: Configure the security and service infrastructure that allows your information to be protected from malicious users.
---
<!-- all core DLP and sensitive information type content and UX is moving away from the terms "sensitive information, sensitive data, sensitive content" in favor of "sensitive items" to minimize confusion with "sensitive information type"-->
# Deploy information protection for data privacy regulations with Microsoft 365

This solution provides guidance on how to plan for and protect sensitive personal data that is stored in Microsoft 365 services and potentially subject to data privacy regulations such as the European Union's General Data Protection Regulation (GDPR). This solution focuses on applicable Microsoft Information Protection & Governance solutions, Microsoft Compliance Score, and assessment tooling to help you know your data. 
 
Additional information is also provided on the use of Microsoft identity, device, and threat protection controls applied to data privacy needs, as well as Microsoft discovery and response tools. 

## Organization of this guidance material

To help you understand the Microsoft 365 tools available to identify, manage, control, and monitor personal data subject to one or more privacy-related regulations, this guidance is organized as follows:
 
- **Plan** Assessing data privacy risks, readiness, and the occurrence of target sensitive information types in your environment.
- **Track** Using Microsoft Compliance Score and Compliance Manager to track and manage improvement actions related to compliance with data privacy regulations.
- **Prevent** Common identity, device, and threat protection capabilities potentially impacting compliance with data privacy regulations.
- **Protect** Protecting information subject to data privacy regulation in your organization.
- **Retain** Governing information subject to data privacy regulation in your organization.
- **Investigate** Monitoring and responding to data privacy incidents in your organization.

More detailed descriptions of each of these elements correspond to a separate article in this solution.

![The steps to deploy information protection for data privacy regulations](../media/information-protection-deploy/information-protection-deploy-grid.png)

>[!Note]
>If you are already familiar with your data privacy obligations and are executing against an existing plan, you may want to focus on the Prevent, Protect, Retain, and Investigate guidance.

>[!Important]
>Following this guidance will not necessarily make you compliant with any data privacy regulation, especially considering the number of steps required that are outside the context of the technology. As such, organizations are responsible for ensuring their own compliance and are advised to consult their legal and compliance teams or to seek guidance and advice from third parties that specialize in compliance.
>

## Plan: Assess data privacy risks and identify sensitive information 

Assessing data privacy regulations and risks that your organization is subject to is a key first step to take before starting to implement any related improvement actions, including those achievable through Microsoft 365 configuration. This may include an overall readiness assessment or identification of particular sensitive information types that are subject to specific regulatory controls your organization needs to comply with, as well as the occurrence of them in your Microsoft 365 environment.

For more information, see [Assess data privacy risks and identify sensitive information](information-protection-deploy-assess.md).

## Track: Use Compliance Score and Compliance Manager 

Compliance Score and Compliance Manager provide an integrated set of tools available in the Microsoft 365 Compliance admin center and Services Trust Portal. Together, these tools provide you with a built-in ability to track and manage improvement actions overall as well as those related to multiple data privacy regulations to which you are subjected, such as GDPR and HIPAA-HITECH (United States health care privacy act).

The tools also allow you to leverage built in assessment templates specific to each regulation, where you can track action items (improvement actions) for each assessment template selected, as well as view specific regulatory controls, and relate them to specific actions.

For more information, see [Use Compliance Score and Compliance Manager to manage improvement actions](information-protection-deploy-compliance.md).

## Prevent: Use identity, device, and threat protection for data privacy regulation

Microsoft 365 provides a number of identity, device, and threat protection capabilities that organizations can employ to help comply with data privacy regulatory compliance. 

This article briefly describes what the data privacy regulations generally call for in these areas, as well as provides a listing of related Microsoft 365 solutions, with links to more information to help you address any implementation requirements. 

For more information, see [Use identity, device, and threat protection for data privacy regulation](information-protection-deploy-identity-device-threat.md).

## Protect information subject to data privacy regulation

Data privacy regulations dictate a number of personal information protection controls that can be employed in your environment, including more than forty Protect Information controls across just the four data privacy regulations in our sample set, which includes GDPR, California Consumer Protection Act (CCPA), HIPAA-HITECH (United States health care privacy act), and the Brazil Data Protection Act (LGPD).

For more information, see [Protect information subject to data privacy regulation in your organization](information-protection-deploy-protect-information.md).

This article lays out the main control schemes that can be used for addressing information protection needs for data privacy in your organization.

## Retain: Govern information subject to data privacy regulation

Data privacy regulations call for personal information governance controls that can be employed in your environment, including more than twenty-four (for Govern Information) overall across the four data privacy regulations in our sample set of GDPR, CCPA, HIPAA-HITECH, and LGPD.

For more information, see [Govern information subject to data privacy regulation in your organization](information-protection-deploy-govern.md).

While the data privacy regulations are rather vague regarding what they call for in terms of what Microsoft refers to as information governance (essentially, purposeful retention, deletion and archiving), this article lays out the primary control schemes that can be used for addressing information governance needs for data privacy in your organization.

## Investigate: Monitor and respond subject to data privacy regulation

There are Microsoft 365 solutions available to help you monitor, investigate, and respond to data privacy incidents in your organization as you operationalize related capabilities. 

Having processes, procedures and otherwise documentation for each of these may also be important to demonstrate compliance to regulatory bodies.

For more information, see [Monitor and respond to data privacy incidents in your organization](information-protection-deploy-monitor-respond.md).

