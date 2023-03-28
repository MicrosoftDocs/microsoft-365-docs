---
title: Microsoft Purview Insider Risk Management and Communication Compliance privacy guide
description: Learn how Microsoft Purview Insider Risk Management and Microsoft Purview Communication Compliance are built with privacy by design, and how the solutions balance user privacy with tools that help detect and mitigate organizational risks. 
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 03/14/2023
audience: itpro
ms.collection:
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365solution-overview
- highpri
---

# Microsoft Purview Insider Risk Management and Communication Compliance privacy guide 

Microsoft Purview insider risk solutions provide organizations with the capability to help detect and mitigate potential risks and policy violations. The Microsoft Purview insider risk solutions include: 

- **Microsoft Purview Insider Risk Management** correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage, and security violations. Insider risk management enables customers to create policies to manage security and compliance.  
- **Microsoft Purview Communication Compliance** provides tools to help organizations detect potential regulatory compliance (for example SEC or FINRA) and business conduct violations such as sensitive or confidential information, harassing or threatening language, and sharing of adult content.  

Insider risk management and communication compliance are built with privacy by design and balance user privacy with tools that help detect and mitigate organizational risks. We are committed to protecting user trust and maintaining user-level privacy through our core privacy principles: 

- Pseudonymization
- Role-based access controls
- Admin explicit opt-in 
- Audit logs 

## Pseudonymization 

Pseudonymization helps protect end-user privacy by removing identifiable user details like user name or email address. Pseudonymization also helps prevent potential bias and conflicts of interest by removing identifiable user details (name, email) and personal data (title, department or location) exposed in the solution. For example, an employee named John Smith would be pseudonymized into a non-personal identifier such as ANON2340. Pseudonyms are on by default for specific roles such as *Insider Risk Management Analysts* and *Insider Risk Management Investigators* (review alerts and take action respectively) and *Communication Compliance Analysts* (review policy alerts). 

## Role-based access controls 

We also implement stringent role-based access controls, so only authorized insider risk management and communication compliance roles can use and access alerts and insights into potential policy violations. By default, global administrators do not have access to insider risk management and communication compliance features. This helps ensure that only the appropriate stakeholders can access the solution and details specific to their role permissions. Organizations have the option to assign users to specific role groups to manage different sets of features based on their responsibilities. For example, insider risk management and communication compliance admins can create, configure, and delete policies but can’t access or investigate alerts or cases. On the other hand, insider risk management and communication compliance investigators can access and investigate alerts and cases but can’t configure policies.  

Whether your organization chooses a single role group or multiple role groups to fit your organization's compliance and privacy requirements, both insider risk management and communication compliance allow admins to choose from predefined role group options within each solution. 

Learn more about role group options for each solution:   

- [Get started with insider risk management](insider-risk-management-configure.md#step-1-required-enable-permissions-for-insider-risk-management) 
- [Get started with communication compliance](communication-compliance-configure.md#step-1-required-enable-permissions-for-communication-compliance) 


## Admin explicit opt-in 

Insider risk management and communication compliance policies are set up to detect risky activities/communications and potential policy violations that could result in a security incident. Employees can only be explicitly scoped into a policy by an admin with the right permissions.  

Additionally, insider risk management and communication compliance indicators that help detect risky activities and communications that may lead to potential data security incidents are disabled by default. For example, indicators like “downloading content from OneDrive”, “sharing SharePoint files with people outside the organization”, or "sending sensitive information or harassing messages" are off by default. Insider risk management and communication compliance do not detect those activities without admin’s explicit opt-in. Admins with the right permissions must explicitly select and opt in one or more indicators in settings before a policy can detect those activities.  

Admin explicit opt-in controls help safeguard end-user privacy by ensuring the solutions are only flagging alerts and policy violations for users and indicators specified in the policies.   

## Audit logs 

All admin actions are logged in the Microsoft Purview insider risk solutions audit logs, enabling organizations to stay informed on all the actions taken within Microsoft Purview insider risk solutions, including when a policy was created and edited, a user was added, an admin viewed user activity insights, indicators were added, etc. 

Audit logs are enabled for all Microsoft 365 organizations by default to ensure organizations can audit the privileged admins’ actions and adhere to compliance and privacy requirements.  

Learn more about audit logs capabilities for each solution: 

- [Review activities with the insider risk management audit log](insider-risk-management-audit-log.md) 
- [Use communication compliance reports and audits](communication-compliance-reports-audits.md#audit) 


## Protect user trust and build a holistic insider risk program 

We strongly believe that user privacy and trust are essential for organizations to establish a holistic insider risk program. The right set of tools can help you address risks in a way that meets security needs. Learn how to [build a holistic insider risk management program](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE59jhs) with five elements that help companies have stronger data protection while ensuring user trust. 