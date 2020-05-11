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

# Deploy information protection for data privacy regulations with Microsoft 365

<!--
![The steps to empower remote workers with Microsoft 365](../media/empower-people-to-work-remotely/remote-workers-step-grid.png)
--> 


<!--

1. [Increase sign-in security with MFA](empower-people-to-work-remotely-secure-sign-in.md)
2. [Provide remote access to on-premises apps and services](empower-people-to-work-remotely-remote-access.md)
3. [Deploy endpoint management for your devices, PCs, and other endpoints](empower-people-to-work-remotely-manage-endpoints.md)
4. [Deploy remote worker productivity apps and services](empower-people-to-work-remotely-teams-productivity-apps.md)
5. [Create COVID-19 crisis communication venues](empower-people-to-work-remotely-communication-venues.md)
6. [Train remote workers and address usage feedback](empower-people-to-work-remotely-train-monitor-usage.md)

--> 

This solution provides guidance on how to plan for and protect sensitive personal data that is stored in Office 365 services and potentially subject to data privacy regulations like the European Union's General Data Protection Regulation (GDPR). This solution focuses on applicable “Microsoft Information Protection & Governance” solutions, Microsoft Compliance Score, and assessment tooling to help you “Know Your Data”. 
 
Additional information is also provided on the use of Microsoft identity, device and threat protection controls applied to data privacy needs, as well as Microsoft discovery and response tools. 

## Organization of this guidance material

To help organizations understand the Microsoft 365 tools available to help identify, manage, control and monitor personal data subject to one or more privacy-related regulations, this guidance is organized as follows:
 
1. Assessing data privacy risks, readiness, and the occurrence of target sensitive information types in your environment.
2. Using Microsoft Compliance Score and Compliance Manager to track and manage improvement actions related to compliance with data privacy regulations.
3. Common identity, device, and threat protection capabilities potentially impacting compliance with data privacy regulations.
4. Protecting information subject to data privacy regulation in your organization.
5. Governing information subject to data privacy regulation in your organization.
6. Monitoring and responding to data privacy incidents in your organization.

More detailed descriptions of each of the above elements are provided below, each corresponding to a separate article in this series.

![The steps to deploy information protection for data privacy regulations](../media/information-protection-deploy/information-protection-deploy-grid.png)

>[!Note]
>If you are already familiar with your data privacy obligations and are executing against an existing plan, you may want to jump straight to articles 3-6.

>[!Important]
>Following this guidance will not necessarily make you compliant with any data privacy regulation, especially considering the number of steps required that are outside the context of the technology. As such, organizations are responsible for ensuring their own compliance and are advised to consult their legal and compliance teams or to seek guidance and advice from third parties that specialize in compliance.
>

## Step 1. Assess data privacy risks and identify sensitive information 

Assessing data privacy regulations and risks that your organization is subject to is a key first step to take before starting to implement any related improvement actions, including those achievable through Microsoft 365 configuration. This may include an overall readiness assessment and/or identification of particular "Sensitive Information Types" that are subject to specific regulatory controls your organization needs to comply with, as well as the occurrence of them in your Office 365 environment.

For more information, see [Assess data privacy risks and identify sensitive information](.md).

## Step 2. Using Compliance Score and Compliance Manager 

Compliance Score and Compliance Manager provide an integrated set of tools available in the Microsoft 365 Compliance admin center and Services Trust Portal, respectively. Together, these tools provide you with a built-in ability to track and manage improvement actions overall as well as those related to multiple data privacy regulations that you are subject to (e.g. GDPR and HIPAA-HITECH).

The tools also allow you to leverage built in assessment templates specific to each regulation, where you can track action items (improvement actions) for each assessment template selected, as well as view specific regulatory controls and relate them to specific actions.

For more information, see [Use Compliance Score and Compliance Manager to manage improvement actions](.md).

## Step 3. Identity, Device and Threat Protection for data privacy regulation

Microsoft 365 provides a number of identity, device and threat protection capabilities that organizations can employ to help comply with data privacy regulatory compliance. 

This article briefly describes what the data privacy regulations generally call for in these areas, as well as provides a listing of related Microsoft 365 solutions, with links to more information to help you address any implementation requirements. 

For more information, see [Identity, Device and Threat Protection for data privacy regulation](.md).

## Step 4. Protect information subject to data privacy regulation

Data privacy regulations dictate a number of personal information protection controls that can be employed in your environment, including (per Compliance Score) more than 40 "Protect Information” controls across just the four data privacy regulations in our sample set (GDPR, HIPAA-HITECH, CCPA, LGPD).
This article lays out the main control schemes that can be used for addressing information protection needs for data privacy in your organization.

For more information, see [Protect information subject to data privacy regulation in your organization](.md).

## Step 5. Govern information subject to data privacy regulation

Data privacy regulations call for personal information governance controls that can be employed in your environment, including (per Compliance Score) more than 24 (for "Govern Information") overall across the four data privacy regulations in our sample set (GDPR, HIPAA-HITECH, CCPA, LGPD).

While the data privacy regulations are rather vague regarding what they call for in terms of what Microsoft refers to as "information governance" (essentially, purposeful retention, deletion and archiving), this article lays out the primary control schemes that can be used for addressing information governance needs for data privacy in your organization.

For more information, see [Govern information subject to data privacy regulation in your organization](.md).

## Step 6. Monitor and respond subject to data privacy regulation

This final article in the series highlights a few Microsoft 365 solutions available to help you monitor, investigate and respond to data privacy incidents in your organization as you operationalize related capabilities. 

Having processes, procedures and otherwise documentation for each of these may also be important to demonstrate compliance to regulatory bodies.

For more information, see [Monitor and respond to data privacy incidents in your organization](.md).

