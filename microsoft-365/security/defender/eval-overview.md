---
title: Evaluate and pilot Microsoft 365 Defender, an XDR, to prevent, detect, investigate, respond, endpoints, identities, apps, email, collaborative applications, data.
description: Plan your Microsoft 365 Defender trial lab or pilot environment to try out and experience the security solution designed to protect devices, identity, data, and applications in your organization.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 06/25/2021
localization_priority: Normal
manager: dansimp 
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

# Evaluate and pilot Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender

Microsoft 365 Defender is an extended detection and response (XDR) solution that automatically collects, correlates and analyzes signal, threat and alert data from across your Microsoft 365 environment, including endpoint, email, applications and identities. It leverages extensive AI and automation to automatically stop attacks and remediate affected assets to a safe state. The following articles step you through the process of setting up a trial environment so you can evaluate the features and capabilities of Microsoft 365 Defender. 

As you walk through these articles, the steps will illustrate how to enable each component, configure settings, and begin monitoring with a pilot group. When you’re ready, you can finish by promotion your evaluation environment directly into production. 

Microsoft recommends you create your evaluation in an existing production subscription of Office 365. This way you will gain real-world insights immediately and can tune settings to work against current threats in your environment. After you’ve gained experience and are comfortable with the platform, simply promote each component, one at a time, to production. 


## The anatomy of an attack

Microsoft 365 Defender is a Cloud-based, unified, pre- and post-breach enterprise defense suite. It coordinates *prevention*, *detection*, *investigation*, and *response* across endpoints, identities, apps, email, collaborative applications, and all of their data.

In this illustration an attack is underway. Phishing email arrives at the Inbox of an employee in your organization, who unknowingly opens the email attachment. This installs malware, which leads to a chain of events that could end with the theft of sensitive data. But in this case, Defender for Office 365 is in operation.

![How Microsoft 365 Defender stops a chain of threats](../../media/defender/m365-defender-eval-threat-chain.png)

In the illustration:

- **Exchange Online Protection**, part of Microsoft Defender for Office 365, can detect the phishing email and use mail flow rules to make certain it never arrives in the Inbox.
- **Defender for Office 365** safe attachments tests the attachment and determines it is harmful, so the mail that arrives either isn't actionable by the user, or policies prevent the mail from arriving at all.
- **Defender for Endpoint** manages devices that connect to the corporate network and detect device and network vulnerabilities that might otherwise be exploited.
- **Defender for Identity** takes note of sudden account changes like privilege escalation, or high-risk lateral movement. It also reports on easily exploited identity issues like unconstrained Kerberos delegation, for correction by the security team.
- **Microsoft Cloud App Security** notices anomalous behavior like impossible-travel, credential access, and unusual download, file share, or mail forwarding activity and reports these to the security team.

### Microsoft 365 Defender components

Microsoft 365 Defender is made up of these security technologies, operating in tandem. You don’t need all of these components to benefit from the capabilities of XDR and Microsoft 365 Defender. You will realize gains and efficiencies through using one or two as well. 

|Component  |Description  |Reference material  |
|---------|---------|---------|
|Microsoft Defender for Identity     |      Microsoft Defender for Identity uses Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization.     |     [What is Microsoft Defender for Identity?](/defender-for-identity/what-is)   |
|Exchange Online Protection     |      Exchange Online Protection is the native cloud-based SMTP relay and filtering service that helps protect your organization against spam and malware.      |   [Exchange Online Protection (EOP) overview - Office 365](../office-365-security/overview.md)     |
|Microsoft Defender for Office 365     |     Microsoft Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools.      |    [Microsoft Defender for Office 365 - Office 365](../office-365-security/overview.md)    |
|Microsoft Defender for Endpoint     |     Microsoft Defender for Endpoint is a unified platform for device protection, post-breach detection, automated investigation, and recommended response.      |   [Microsoft Defender for Endpoint - Windows security](../defender-endpoint/microsoft-defender-endpoint.md)    |
|Microsoft Cloud App Security     |      Microsoft Cloud App security is a comprehensive cross-SaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.       |    [What is Cloud App Security?](/cloud-app-security/what-is-cloud-app-security)    |
|Azure AD Identity Protection|Azure AD Identity Protection evaluates risk data from billions of sign-in attempts and uses this data to evaluate the risk of each sign-in to your environment. This data is used by Azure AD to allow or prevent account access, depending on how Conditional Access policies are configured. Azure AD Identity Protection is licensed separately from Microsoft 365 Defender. It is included with Azure Active Directory Premium P2.|[What is Identity Protection?](/azure/active-directory/identity-protection/overview-identity-protection)|
| | | |

## Microsoft 365 Defender architecture

The diagram below illustrates high-level architecture for key Microsoft 365 Defender components and integrations. *Detailed* architecture for each Defender component, and use-case scenarios, are given throughout this series of articles.

![Microsoft 365 Defender high-level architecture](../../media/defender/m365-defender-eval-architecture.png)

In this illustration:

- Microsoft 365 Defender combines the signals from all of the Defender components to provide extended detection and response (XDR) across domains. This includes a unified incident queue, automated response to stop attacks, self-healing (for compromised devices, user identities, and mailboxes), cross-threat hunting, and threat analytics.
- Microsoft Defender safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. It shares signals resulting from these activities with Microsoft 365 Defender. Exchange Online Protection (EOP) is integrated to provide end-to-end protection for incoming emails and attachments.
- Microsoft Defender for Identity gathers signals from servers running Active Directory Federated Services (AD FS) and on-premises Active Directory Domain Services (AD DS). It uses these signals to protect your hybrid identity environment, including protecting against hackers that use compromised accounts to move laterally across workstations in the on-premises environment.
- Microsoft Defender for Endpoint gathers signals from and protects devices used by your organization.
- Microsoft Cloud App Security gathers signals from your organization's use of cloud apps and protects data flowing between your environment and these apps, including both sanctioned and unsanctioned cloud apps.
- Azure AD Identity Protection evaluates risk data from billions of sign-in attempts and uses this data to evaluate the risk of each sign-in to your environment. This data is used by Azure AD to allow or prevent account access, depending on how Conditional Access policies are configured. Azure AD Identity Protection is licensed separately from Microsoft 365 Defender. It is included with Azure Active Directory Premium P2.  

Additional optional architecture components not included in this illustration:

- Detailed signal data from all Microsoft Defender components can be integrated into Azure Sentinel and combined with other logging sources to offer full SIEM and SOAR capabilities and insights.

## The evaluation process

Microsoft recommends enabling the components of Microsoft 365 in the order illustrated:

![Microsoft 365 Defender high-level evaluation process](../../media/defender/m365-defender-eval-process.png)

The following table describes this illustration.

|      |Step  |Description  |
|------|---------|---------|
|1     | [Create the evaluation environment ](eval-environment.md)       |This step ensures you have the trial license for Microsoft 365 Defender.         |
|2     | [Enable Defender for Identity](eval-defender-identity-overview.md)        | Review the architecture requirements, enable the evaluation, and walk through tutorials for identifying and remediating different attack types.   |
|3     | [Enable Defender for Office 365 ](eval-defender-office-365-overview.md)       | Ensure you meet the architecture requirements, enable the evaluation, and then create the pilot environment. This component includes Exchange Online Protection and so you will actually evaluate *both* here.      |
|4     | [Enable Defender for Endpoint ](eval-defender-endpoint-overview.md)       | Ensure you meet the architecture requirements, enable the evaluation, and then create the pilot environment.         |
|5     | [Enable Microsoft Cloud App Security](eval-defender-mcas-overview.md)        |  Ensure you meet the architecture requirements, enable the evaluation, and then create the pilot environment.        |
|6     | [Investigate and respond to threats](eval-defender-investigate-respond.md)        |   Simulate an attack and begin using incident response capabilities.      |
|7     | [Promote the trial to production](eval-defender-promote-to-production.md)        | Promote the Microsoft 365 components to production one-by-one.        |
| | | |

This is a commonly recommended order designed to gain the value of the capabilities quickly based on how much effort is typically required to deploy and configure the capabilities. For example, Defender for Office 365 can be configured much quicker than is required to enroll devices for Defender for Endpoint. Of course you can prioritize the components to meet your business needs and enable these in a different order.

## Next steps

[Create the Microsoft 365 Defender Evaluation Environment](eval-create-eval-environment.md)
