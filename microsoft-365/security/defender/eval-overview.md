---
title: Evaluate and pilot Microsoft 365 Defender, an XDR solution
description: What is XDR security? How can you evaluate a Microsoft XDR in Microsoft 365 Defender? Use this blog series to plan your Microsoft 365 Defender trial lab or pilot environment to test and pilot a security solution designed to protect devices, identity, data, and applications. Start your XDR cyber security journey here and take that test to production.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.date: 09/15/2022
ms.localizationpriority: medium
manager: dansimp 
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-overview
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
---

# Evaluate and pilot Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender

## How this article series works

This series of articles is designed to step you through the entire process of setting up a trial XDR environment, *end-to-end*, so you can evaluate the features and capabilities of Microsoft 365 Defender and even promote the evaluation environment straight to production when and if you're ready.

If you're new to thinking about XDR, you can scan these 7 linked articles to get a feel for how comprehensive the solution is.

- [How to create the environment](eval-create-eval-environment.md)
- Set up or learn about each technology of this Microsoft XDR
  - [Microsoft Defender for Identity](eval-defender-identity-overview.md)
  - [Microsoft Defender for Office](eval-defender-office-365-overview.md)
  - [Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)
  - [Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)
- [How to investigate and respond using this XDR](eval-defender-investigate-respond.md)
- [Promote the trial environment to production](eval-defender-promote-to-production.md)

## Microsoft 365 Defender is a Microsoft XDR cyber security solution

Microsoft 365 Defender is an **eXtended detection and response (XDR) solution** that automatically collects, correlates, and analyzes signal, threat, and alert data from *across* your Microsoft 365 environment, including *endpoint, email, applications, and identities*. It leverages artificial intelligence (AI) and automation to *automatically* stop attacks, and remediate affected assets into a safe state.

Think of XDR as the next step in security, unifying endpoint (endpoint detection and response or EDR), email, app, and identity security in one place.

## Microsoft recommendations for evaluating Microsoft 365 Defender

Microsoft recommends you create your evaluation in an existing production subscription of Office 365. This way you will gain real-world insights immediately and can tune settings to work against current threats in your environment. After you've gained experience and are comfortable with the platform, simply promote each component, one at a time, to production.

## The anatomy of a cyber security attack

Microsoft 365 Defender is a Cloud-based, unified, pre- and post-breach enterprise defense suite. It coordinates *prevention*, *detection*, *investigation*, and *response* across endpoints, identities, apps, email, collaborative applications, and all of their data.

In this illustration an attack is underway. Phishing email arrives at the Inbox of an employee in your organization, who unknowingly opens the email attachment. This installs malware, which leads to a chain of events that could end with the theft of sensitive data. But in this case, Defender for Office 365 is in operation.

:::image type="content" source="../../media/defender/m365-defender-eval-threat-chain.png" alt-text="The various attack attempts" lightbox="../../media/defender/m365-defender-eval-threat-chain.png":::

In the illustration:

- **Exchange Online Protection**, part of Microsoft Defender for Office 365, can detect the phishing email and use mail flow rules (also known as transport rules) to make certain it never arrives in the Inbox.
- **Defender for Office 365** uses Safe Attachments to test the attachment and determine that it's harmful, so the mail that arrives either isn't actionable by the user, or policies prevent the mail from arriving at all.
- **Defender for Endpoint** manages devices that connect to the corporate network and detect device and network vulnerabilities that might otherwise be exploited.
- **Defender for Identity** takes note of sudden account changes like privilege escalation, or high-risk lateral movement. It also reports on easily exploited identity issues like unconstrained Kerberos delegation, for correction by the security team.
- **Microsoft Defender for Cloud Apps** notices anomalous behavior like impossible-travel, credential access, and unusual download, file share, or mail forwarding activity and reports these to the security team.

### Microsoft 365 Defender components secure devices, identity, data, and applications

Microsoft 365 Defender is made up of these security technologies, operating in tandem. You don't need all of these components to benefit from the capabilities of XDR and Microsoft 365 Defender. You will realize gains and efficiencies through using one or two as well.

|Component|Description|Reference material|
|---|---|---|
|Microsoft Defender for Identity|Microsoft Defender for Identity uses Active Directory signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization.|[What is Microsoft Defender for Identity?](/defender-for-identity/what-is)|
|Exchange Online Protection|Exchange Online Protection is the native cloud-based SMTP relay and filtering service that helps protect your organization against spam and malware.|[Exchange Online Protection (EOP) overview - Office 365](/microsoft-365/office-365-security/eop-about)|
|Microsoft Defender for Office 365|Microsoft Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs) and collaboration tools.|[Microsoft Defender for Office 365 - Office 365](/microsoft-365/office-365-security/defender-for-office-365)|
|Microsoft Defender for Endpoint|Microsoft Defender for Endpoint is a unified platform for device protection, post-breach detection, automated investigation, and recommended response.|[Microsoft Defender for Endpoint - Windows security](../defender-endpoint/microsoft-defender-endpoint.md)|
|Microsoft Defender for Cloud Apps|Microsoft Defender for Cloud Apps is a comprehensive cross-SaaS solution bringing deep visibility, strong data controls, and enhanced threat protection to your cloud apps.|[What is Defender for Cloud Apps?](/cloud-app-security/what-is-cloud-app-security)|
|Azure AD Identity Protection|Azure AD Identity Protection evaluates risk data from billions of sign-in attempts and uses this data to evaluate the risk of each sign-in to your environment. This data is used by Azure AD to allow or prevent account access, depending on how Conditional Access policies are configured. Azure AD Identity Protection is licensed separately from Microsoft 365 Defender. It is included with Azure Active Directory Premium P2.|[What is Identity Protection?](/azure/active-directory/identity-protection/overview-identity-protection)|

## Microsoft 365 Defender architecture

The diagram below illustrates high-level architecture for key Microsoft 365 Defender components and integrations. *Detailed* architecture for each Defender component, and use-case scenarios, are given throughout this series of articles.

:::image type="content" source="../../media/defender/m365-defender-eval-architecture.png" alt-text="A high-level architecture of the Microsoft 365 Defender portal" lightbox="../../media/defender/m365-defender-eval-architecture.png":::

In this illustration:

- Microsoft 365 Defender combines the signals from all of the Defender components to provide extended detection and response (XDR) across domains. This includes a unified incident queue, automated response to stop attacks, self-healing (for compromised devices, user identities, and mailboxes), cross-threat hunting, and threat analytics.
- Microsoft Defender for Office 365 safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. It shares signals resulting from these activities with Microsoft 365 Defender. Exchange Online Protection (EOP) is integrated to provide end-to-end protection for incoming email and attachments.
- Microsoft Defender for Identity gathers signals from servers running Active Directory Federated Services (AD FS) and on-premises Active Directory Domain Services (AD DS). It uses these signals to protect your hybrid identity environment, including protecting against hackers that use compromised accounts to move laterally across workstations in the on-premises environment.
- Microsoft Defender for Endpoint gathers signals from and protects devices used by your organization.
- Microsoft Defender for Cloud Apps gathers signals from your organization's use of cloud apps and protects data flowing between your environment and these apps, including both sanctioned and unsanctioned cloud apps.
- Azure AD Identity Protection evaluates risk data from billions of sign-in attempts and uses this data to evaluate the risk of each sign-in to your environment. This data is used by Azure AD to allow or prevent account access, depending on how Conditional Access policies are configured. Azure AD Identity Protection is licensed separately from Microsoft 365 Defender. It is included with Azure Active Directory Premium P2.

## Microsoft SIEM and SOAR can use data from Microsoft 365 Defender

Additional optional architecture components not included in this illustration:

- **Detailed signal data from all Microsoft 365 Defender components can be integrated into Microsoft Sentinel** and combined with other logging sources to offer full SIEM and SOAR capabilities and insights.
- **For more reading on using Microsoft Sentinel, an Azure SIEM, with Microsoft 365 Defender** as an XDR, take a look at this [Overview article](/azure/sentinel/microsoft-365-defender-sentinel-integration) and the Microsoft Sentinel and Microsoft 365 Defender [integration steps](/azure/sentinel/connect-microsoft-365-defender?tabs=MDE).
- For more on SOAR in Microsoft Sentinel (including links to playbooks in the Microsoft Sentinel GitHub Repository), please read [this article](/azure/sentinel/automate-responses-with-playbooks).

## The evaluation process for Microsoft 365 Defender cyber security

Microsoft recommends enabling the components of Microsoft 365 in the order illustrated:

:::image type="content" source="../../media/defender/m365-defender-eval-process.png" alt-text="A high-level evaluation process in the Microsoft 365 Defender portal" lightbox="../../media/defender/m365-defender-eval-process.png":::

The following table describes this illustration.

|Serial Number|Step|Description|
|---|---|---|
|1|[Create the evaluation environment](eval-create-eval-environment.md)|This step ensures you have the trial license for Microsoft 365 Defender.|
|2|[Enable Defender for Identity](eval-defender-identity-overview.md)|Review the architecture requirements, enable the evaluation, and walk through tutorials for identifying and remediating different attack types.|
|3|[Enable Defender for Office 365](eval-defender-office-365-overview.md)|Ensure you meet the architecture requirements, enable the evaluation, and then create the pilot environment. This component includes Exchange Online Protection and so you will actually evaluate *both* here.|
|4|[Enable Defender for Endpoint](eval-defender-endpoint-overview.md)|Ensure you meet the architecture requirements, enable the evaluation, and then create the pilot environment.|
|5|[Enable Microsoft Defender for Cloud Apps](eval-defender-mcas-overview.md)|Ensure you meet the architecture requirements, enable the evaluation, and then create the pilot environment.|
|6|[Investigate and respond to threats](eval-defender-investigate-respond.md)|Simulate an attack and begin using incident response capabilities.|
|7|[Promote the trial to production](eval-defender-promote-to-production.md)|Promote the Microsoft 365 components to production one-by-one.|

This order is commonly recommended and designed to leverage the value of the capabilities quickly based on how much effort is typically required to deploy and configure the capabilities. For example, Defender for Office 365 can be configured in less time than it takes to enroll devices in Defender for Endpoint. Of course, you should prioritize the components to meet your business needs, and can enable these in a different order.

## Go to the Next Step

[Learn about and/or create the Microsoft 365 Defender Evaluation Environment](eval-create-eval-environment.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
