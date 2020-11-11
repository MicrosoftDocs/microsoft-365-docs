---
title: Data processor service for Windows Enterprise notification under the GDPR
description: How the data processor service for Windows Enterprise protects against a personal data breach and how Microsoft responds and notifies you if a breach occurs.
keywords: Data processor service for Windows Enterprise, Microsoft 365, Microsoft 365 documentation, GDPR
localization_priority: Priority
ROBOTS: NOINDEX, NOFOLLOW
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: daniha
author: DaniHalfin
manager: dansimp
audience: itpro
ms.collection: 
- GDPR
- M365-security-compliance
---

# Data processor service for Windows Enterprise breach notification under the GDPR

>[!NOTE]
>This topic is intended for participants in the data processor service for Windows Enterprise preview program and requires acceptance of specific terms of use. To learn
more about the program and agree to the terms of use, see [https://aka.ms/WindowsEnterprisePublicPreview](https://aka.ms/WindowsEnterprisePublicPreview).

Microsoft data processor service for Windows Enterprise takes its obligations under the General Data Protection Regulation (GDPR) seriously. Microsoft data processor service for Windows Enterprise takes extensive security measures to protect against data breaches. These include dedicated threat management teams that proactively anticipate, prevent, and mitigate malicious access.  Internal security measures such as port scanning, perimeter vulnerability scanning, and intrusion detection detect and prevent malicious access, as well as automated security processes, comprehensive information security and privacy policies, and security and privacy training for all personnel. 

Security is built into the Microsoft data processor service for Windows Enterprise from the ground up, starting with the [Security Development Lifecycle](https://www.microsoft.com/sdl/), a mandatory development process that incorporates privacy-by-design and privacy-by-default methodologies. The guiding principle of Microsoft's security strategy is to 'assume breach', which is an extension of the defense-in-depth strategy. By constantly challenging the security capabilities of the data processor service for Windows Enterprise, Microsoft can stay ahead of emerging threats. For more information on the data processor service for Windows Enterprise security, please review these [resources](https://www.microsoft.com/TrustCenter/Security/windows10-security) the data processor service for Windows Enterprise responds to a potential data breach according to the security incident response process. The data processor service for Windows Enterprise security incident response is implemented using a five-stage process: Detect, Assess, Diagnose, Stabilize, and Close. The Security Incident Response Team may alternate between the diagnose and stabilize stages as the investigation progresses. An overview of the security incident response process is below: 

|**Stage**|**Description**|
| ------- | ------------- |
| ***1 — Detect*** | First indication of a potential incident. |
| ***2 — Assess*** | An on-call incident response team member assesses the impact and severity of the event. Based on evidence, the assessment may or may not result in further escalation to the security response team. |
| ***3 — Diagnose*** | Security response experts conduct the technical or forensic investigation, identify containment, mitigation, and workaround strategies. If the security team believes that customer data may have become exposed to an unlawful or unauthorized individual, execution of the Customer Incident Notification process begins in parallel. |
| ***4 — Stabilize and Recover*** | The incident response team creates a recovery plan to mitigate the issue. Crisis containment steps such as quarantining impacted systems may occur immediately and in parallel with diagnosis. Longer term mitigations may be planned which occur after the immediate risk has passed. |
| ***5 — Close and Post-mortem*** | The incident response team creates a post-mortem that outlines the details of the incident, with the intention to revise policies, procedures, and processes to prevent a reoccurrence of the event. |

The detection processes used by Microsoft data processor service for Windows Enterprise are designed to discover events that risk the confidentiality, integrity, and availability of the data processor service for Windows Enterprise. Several events can trigger an investigation: 

 - Automated system alerts via internal monitoring and alerting frameworks. These alerts could come in the way of signature-based alarms such as anti-malware, intrusion detection or via algorithms designed to profile expected activity and alert upon anomalies.
 - First party reports from Microsoft Services running on Microsoft Azure and Azure Government.
 - Security vulnerabilities are reported to the [Microsoft Security Response Center (MSRC)](https://technet.microsoft.com/security/dn440717) via [secure@microsoft.com] (mailto:secure@microsoft.com). MSRC works with partners and security researchers around the world to help prevent security incidents and to advance Microsoft product security.
 - Customer reports via the Customer Support Portal or Microsoft Azure and Azure Government Management Portal, that describe suspicious activity attributed to the Azure infrastructure (as opposed to activity occurring within the customer's scope of responsibility).
 - Security [Red Team and Blue Team](https://azure.microsoft.com/blog/red-teaming-using-cutting-edge-threat-simulation-to-harden-the-microsoft-enterprise-cloud/) activity. This strategy uses a highly skilled Red Team of offensive Microsoft security experts to uncover and attack potential weaknesses in Azure. The security response Blue Team must detect and defend against the Red Team’s activity. Both Red and Blue Team actions are used to verify that Azure security response efforts are effectively managing security incidents. Security Red Team and Blue Team activities are operated under rules of engagement to help ensure the protection of customer data.
 - Escalations by operators of Azure Services. Microsoft employees are trained to identify and escalate potential security issues.

 ## Data processor service for Windows Enterprise Data Breach Response 

 Microsoft assigns the investigation appropriate priority and severity levels by determining the functional impact, recoverability, and information impact of the incident. Both the priority and severity may change over the course of the investigation, based on new findings and conclusions. Security events involving imminent or confirmed risk to customer data are treated as high severity and worked around the clock to resolution. Microsoft data processor service for Windows Enterprise categorizes the information impact of the incident into the following breach categories: 

| **Category**             | **Definition**                                                                                                                   |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------------- |
| ***None***               | No information was removed, changed, deleted, or otherwise compromised. |
| ***Privacy Breach***     | Sensitive personal data of taxpayers, employees, beneficiaries, etc. was accessed or removed. |
| ***Proprietary Breach*** | Unclassified proprietary information, such as protected critical infrastructure information (PCII), was accessed or removed. |
| ***Integrity Loss***     | Sensitive or proprietary information was changed or deleted. |

The Security Response Team works with Microsoft data processor service for Windows Enterprise Security Engineers and SMEs to classify the event based on factual data from the evidence. A security event may be classified as: 

 - **False Positive**: An event that meets detection criteria but is found to be part of a normal business practice and may need to be filtered. The service team will identify the root cause for false positives and will address them in a systematic way leveraging detection sources and fine-tuning them as needed. 
 - **Security Incident**: An incident where unlawful access to any Customer Data or Support Data stored on Microsoft's equipment or in Microsoft's facilities, or unauthorized access to such equipment or facilities resulting in loss, disclosure, or alteration of Customer Data or Support Data has occurred. 
 - **Customer-Reportable Security Incident (CRSI)**: An unlawful or unauthorized access to or use of Microsoft's systems, equipment, or facilities resulting in disclosure, modification, or loss of customer data. 
 - **Privacy Breach**: A subtype of Security Incident involving personal data. Handling procedures are no different than a security incident. 

 For a CRSI to be declared, Microsoft must determine that unauthorized access to customer data has or has very likely occurred and/or that there is a legal or contractual commitment that notification must occur. It is desired, but not required, that specific customer impact, resource access, and repair steps be known. An incident is generally declared a CRSI after the conclusion of the Diagnose stage of a security incident; however, the declaration may happen at any point that all pertinent information is available. The security incident manager must establish evidence beyond reasonable doubt that a reportable event has occurred to begin execution of the Customer Incident Notification Process. 

Throughout the investigation, the security response team works closely with global legal advisors to help ensure that forensics are performed in accordance with legal obligations and commitments to customers. There are also significant restrictions on system and customer data viewing and handling in various operating environments. Sensitive or confidential data, as well as Customer Data, are not transferred out of the production environment without explicit written approval from the Incident Manager recorded in the corresponding incident ticket. 

Microsoft verifies that customer and business risk is successfully contained, and that corrective measures are implemented. If necessary, emergency mitigation steps to resolve immediate security risks associated with the event are taken. 

Microsoft also completes an internal post-mortem for data breaches. As a part of this exercise, sufficiency of response and operating procedures are evaluated, and any updates that may be necessary to the Security Incident Response SOP or related processes are identified and implemented. Internal postmortems for data breaches are highly confidential records not available to customers. Postmortems may, however, be summarized and included in other customer event notifications. These reports are provided to external auditors for review as part of the data processor service for Windows Enterprise routine audit cycle. 

## Customer Notice

Microsoft data processor service for Windows Enterprise notifies customers and regulatory authorities of data breaches as required. Microsoft relies on heavy internal compartmentalization in the operation of the data processor service for Windows Enterprise. Data flow logs are also robust. As a benefit of this design, most incidents can be scoped to specific customers. The goal is to provide impacted customers with an accurate, actionable, and timely notice when their data has been breached. 

After the declaration of a CRSI, the notification process takes place as expeditiously as possible while still considering the security risks of moving quickly. Generally, the process of drafting notifications occurs as the incident investigation is ongoing. Customer notices are delivered in no more than 72 hours from the time we declared a breach except for the following circumstances: 

 - Microsoft believes the act of performing a notification will increase the risk to other customers. For example, the act of notifying may tip off an adversary causing an inability to remediate. 
 - Other unusual or extreme circumstances vetted by Microsoft's legal department Corporate External and Legal Affairs (CELA) and the Executive Incident Manager. 

 Microsoft data processor service for Windows Enterprise provides customers with detailed information enabling them to perform internal investigations and assisting them in meeting end user commitments, while not unduly delaying the notification process. 

Notification of a personal data breach will be delivered to the customer by any means Microsoft selects, including via email. Notification of a data breach will be delivered to the list of security contacts provided in Azure Defender, which can be configured by following the [implementation guidelines](https://docs.microsoft.com/azure/security-center/security-center-provide-security-contact-details). If contact information is not provided in Azure Defender, the notification is sent to one or more administrators in an Azure subscription. To ensure that notification can be successfully delivered, it is the customer's responsibility to ensure that the administrative contact information on each applicable subscription and online services portal is correct.

The data processor service for Windows Enterprise team may also elect to notify additional Microsoft personnel such as Customer Service (CSS) and the customer's Account Manager(s) (AM) or Technical Account Manager(s) (TAM). These individuals often have close relationships with the customer and can facilitate faster remediation 

For more information about how Microsoft detects and responds to a breach of personal data, see [Data Breach Notification Under the GDPR](https://servicetrust.microsoft.com/ViewPage/GDPRBreach) in the Service Trust Portal.
