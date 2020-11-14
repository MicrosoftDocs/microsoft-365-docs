---
title: Microsoft 365 NIST 800-53 action plan, priorities for the first 30 days, 90 days, and beyond
description: A prioritized action plan you can follow as you work to meet the requirements of the National Institute of Standards and Technology (NIST)
keywords: Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, NIST, NIST 800-53
author: BrendaCarter
localization_priority: Priority

ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 09/14/2018
f1.keywords:
- NOCSH
ms.author: bcarter
manager: laurawi
audience: itpro
ms.collection: 
- M365-security-compliance
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 NIST 800-53 action plan — Top priorities for your first 30 days, 90 days, and beyond

Microsoft 365 allows you to operate your enterprise with a cloud control framework, which aligns controls with multiple regulatory standards. Microsoft 365 includes Office 365, Windows 10, and Enterprise Mobility + Security. Microsoft's internal control system is based on the National Institute of Standards and Technology (NIST) special publication 800-53, and Office 365 has been accredited to latest NIST 800-53 standard.

Microsoft is recognized as an industry leader in cloud security. Using years of experience building enterprise software and running online services, our team is constantly learning and continuously updating our services and applications to deliver a secure cloud productivity service that meets rigorous industry standards for compliance. Microsoft's government cloud services, including Office 365 U.S. Government, meet the demanding requirements of the US Federal Risk and Authorization Management Program (FedRAMP), enabling U.S. federal agencies to benefit from the cost savings and rigorous security of the Microsoft Cloud.

This article includes a prioritized action plan you can follow as you work to meet the requirements of NIST 800-53. This action plan was developed in partnership with Protiviti, a Microsoft partner specializing in regulatory compliance. 

## Action plan outcomes

These recommendations are provided across three phases in a logical order with the following outcomes: 

|||
|:-----|:-----|
|**Phase**|**Outcomes**|
|30 days|*   Understand your NIST 800-53 requirements and consider engaging with a Microsoft Advisory Partner.<br>*   Learn and understand the Microsoft 365 built-in defense-in-depth strategy.  <br>*   Protect user and administrator access to Office 365. <br>*   Ensure all access to the system is auditable according to your organization's audit and accountability policies.|
|90 days|*   Enhance your anti-malware, patching, and configuration management program.<br>*   Use Microsoft 365 security capabilities to control access to the environment and to protect organizational information and assets.<br>*   Utilize built in auditing capabilities to monitor sensitive or risky activities within Office 365.<br>*   Deploy Defender for Office 365 for both links and attachments in email and Office documents.|
|Beyond 90 days|*   Use Microsoft 365 advanced tools and information protection to implement ongoing controls for devices and protection for corporate data.<br>*   Monitor ongoing compliance across Microsoft 365 and other Cloud applications.  <br>*   Use enhanced threat detection and protection capabilities with advanced threat analytics to provide a robust and layered security strategy for the organization. Develop an incident response plan to mitigate the effects of compromised systems in your organization.|

## 30 days — Powerful Quick Wins

These tasks can be accomplished quickly and have low impact to users.

|||
|:-----|:-----|
|**Area**|**Tasks**|
|Understand your NIST 800-53 requirements and consider engaging with a Microsoft Advisory Partner.|•	Work with your Microsoft Partner to perform a gap analysis of your NIST 800-53 compliance for the organization and to develop a roadmap that charts your journey to compliance. <br>•   Use guidance in [Microsoft Compliance Manager](compliance-manager.md) to define and document policies and procedures for both access control and information sharing which addresses purpose, scope, roles, responsibilities, coordination among organizational entities, and compliance.|
|Learn and understand the Microsoft 365 built-in defense-in-depth strategy.|•	Assess and manage your compliance risks by using [Compliance Manager](compliance-manager.md) to conduct an NIST 800-53 assessment of your organization.  Align Microsoft 365 security controls for managing and mitigating risks to the assessment’s outcomes. <br>•	Utilize [Microsoft Secure Score](/security/office-365-security/office-365-secure-score.md) to track the organization’s usage of Microsoft 365 security capabilities over time within both Office 365 and on Windows 10 desktops. <br>•	Learn about Microsoft’s technologies and strategies used to provide [Office 365 data encryption](encryption.md), as well as strategies for [protection against denial-of-service attacks](https://docs.microsoft.com/office365/enterprise/office-365-defending-against-denial-of-service-attacks-overview) in the Microsoft Cloud.|
|Protect user and administrator access to Office 365.|•	Establish [strong credential management](https://docs.microsoft.com/azure/security/azure-ad-secure-steps#step-1---strengthen-your-credentials) to protect user account credentials. <br> •	Learn about [recommended identity and device access policies](../security/office-365-security/microsoft-365-policies-configurations.md) for Office 365 services.<br> •	Utilize the [Office 365 administrative roles](https://support.office.com/article/understanding-administrative-roles-52f29955-6a60-435f-aba9-eb69c898606a) to implement role-based access to administration capabilities and to enable separation of administration duties. Note: many administrator roles in Office 365 have a corresponding role in Exchange Online, SharePoint Online, and Skype for Business Online. Segment permissions to ensure that a single administrator does not have greater access than necessary.|
|Ensure all access to the system is audited according to your organization’s audit and accountability policies.|Enable [audit logging](search-the-audit-log-in-security-and-compliance.md) and [mailbox auditing](enable-mailbox-auditing.md) (for all Exchange mailboxes) to monitor Office 365 for potentially malicious activity and to enable forensic analysis of data breaches.|
|||

## 90 days — Enhanced Protections 
These tasks take a bit more time to plan and implement. 

|||
|:-----|:-----|
|**Area**|**Tasks**|
|Enhance your Anti-malware, patching, and configuration management program.|•	Protect corporate assets and desktops by deploying and enabling [ Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/deploy-windows-defender-antivirus) to your organization and leveraging its tight integration with Windows 10.<br>•	Keep track of quarantined infected systems and prevent further damage until remediation steps are taken.<br>•	Confidently rely on Microsoft 365 rigorous standard change management process for trusted updates, hotfixes, and patches.|
|Use Microsoft 365 security capabilities to control access to the environment and to protect organizational information and assets.|•	Implement [recommended identity and device access policies](../security/office-365-security/microsoft-365-policies-configurations.md) to protect user and administrative accounts. <br>• Implement  [Office 365 Message Encryption (OME)](ome.md) capabilities to help users comply with your organization’s policies when sending sensitive data via email.<br>•	Deploy [Windows Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) to all desktops for protection against malicious code, as well as data breach prevention and response.<br>•	Configure, test and deploy policies to identify, monitor and [automatically protect](apply-protection-to-personal-data-in-office-365.md) over 80 common sensitive data types within documents and emails, including financial, medical, and personally identifiable information.<br>•	Automatically inform email senders that they may be about to violate one of your policies — even before they send an offending message by configuring [Policy Tips](https://docs.microsoft.com/exchange/security-and-compliance/data-loss-prevention/policy-tips). Policy Tips can be configured to display a brief note (in Outlook, Outlook on the web, and OWA for devices) that provides information about possible policy violations during message creation.<br>•	Protect sensitive corporate data and meet your organization’s information sharing policies by implementing controls for [external sharing in SharePoint Online and OneDrive for Business](https://docs.microsoft.com/onedrive/manage-sharing). Ensure only authenticated external users can access corporate data.|
|Utilize built in auditing capabilities to monitor sensitive or risky activities within Office 365.|•	Enable [Alert Policies](alert-policies.md) in the Microsoft 365 security or compliance center to raise automatic notifications when sensitive activities occur, such as when a user's account privileges are elevated or when sensitive data is accessed. All privileged functions should be audited and monitored.<br>•	On a regular cadence, [search your audit logs](search-the-audit-log-in-security-and-compliance.md) in the security or compliance center to review changes that have been made to the tenant’s configuration settings.<br>•	For long-term storage of audit log data, use the Office 365 Management Activity API reference to integrate with a security information and event management (SIEM) tool.|
|Deploy Defender for Office 365 for both links and attachments in email and Office documents.|Implement [Microsoft Defender for Office 365](/security/office-365-security/office-365-atp) to help prevent the most common attack vectors including phishing emails and Office documents containing malicious links and attachments.|
|||

## Beyond 90 Days – Ongoing Security, Data Governance, and Reporting

These actions take longer and build on previous work.  

|||
|:-----|:-----|
|**Area**|**Tasks**|
|Use Microsoft 365 advanced tools and information protection to implement ongoing controls for devices and protection for corporate data.|*    Use [Microsoft Intune](https://docs.microsoft.com/intune/) to protect sensitive data stored and accessed on mobile devices and to ensure compliant corporate devices are used to access cloud services.|
|Monitor ongoing compliance across Microsoft 365 and other Cloud applications.|*    To evaluate performance against the organization's defined policies and procedures, use [Compliance Manager](compliance-manager.md) on an ongoing basis to perform regular assessments of the organization's enforcement of information security policies.<br>*    Use [Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/privileged-identity-management/pim-configure) to control and perform regular reviews of all users and groups with high levels of permissions (i.e. privileged or administrative users).<br>*    Deploy and configure [Privileged Access Management](https://docs.microsoft.com/microsoft-365/compliance/privileged-access-management-overview) to provide granular access control over privileged admin tasks in Office 365.  Once enabled, users will need to request just-in-time access to complete elevated and privileged tasks through an approval workflow that is highly scoped and time-bound.<br>*    Audit [non-owner mailbox access](https://docs.microsoft.com/Exchange/policy-and-compliance/non-owner-mailbox-access-reports) to identify potential leaks of information and to proactively review non-owner access on all Exchange Online mailboxes.<br>*    Use [Office 365 Alert Policies, data loss prevention reports, and  Microsoft Cloud App Security](https://docs.microsoft.com/Office365/SecurityCompliance/monitor-for-leaks-of-personal-data) to monitor your organization's usage of cloud applications and to implement advanced alerting policies based on heuristics and user activity.<br>*    Use [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) to automatically track risky activities, to identify potentially malicious administrators, to investigate data breaches, or to verify that compliance requirements are being met.|
|Leverage enhanced threat detection and protection capabilities with advanced threat analytics to provide a robust and layered security strategy for the organization. Develop an incident response plan to mitigate the effects of compromised systems in your organization.|*    Deploy and configure [Windows Advanced Threat Analytics](https://docs.microsoft.com/advanced-threat-analytics/) to leverage rich analytics and reporting to gain critical insights into which users are being targeted in your organization and the cyber-attack methodologies being exploited.<br>*    Leverage [Defender for Office 365 reports and analytics](/security/office-365-security/view-reports-for-atp.md) to analyze threats through insights into malicious content and malicious emails automatically detected within your organization.  Utilize built-in reports and message trace capabilities to investigate email messages that have been blocked due to an unknown virus or malware.<br>*    Use [Office 365 Threat Intelligence](/security/office-365-security/office-365-ti.md) to aggregate insights and information from various sources to get a holistic view of your cloud security landscape.<br>*    [Integrate Office 365 Threat Intelligence and Microsoft Defender for Endpoint](/security/office-365-security/integrate-office-365-ti-with-wdatp.md) to quickly understand if users' devices are at risk when investigating threats in Office 365.<br>*    Simulate common attack methods within your Office 365 environment using the [Office 365 Attack Simulator](/security/office-365-security/attack-simulator.md).  Review results from attack simulations to identify training opportunities for users and to validate your organization's incident response procedures.<br>*    Configure [permissions within the security or compliance center](/security/office-365-security/permissions-in-the-security-and-compliance-center.md) to ensure access to monitoring and audit data is restricted to approved users and integrated with the organization's incident response measures.|
|||

## Learn more

Learn more about [Microsoft and the NIST Cyber Security Framework (CSF)](offering-nist-csf.md), including NIST 800-53.
