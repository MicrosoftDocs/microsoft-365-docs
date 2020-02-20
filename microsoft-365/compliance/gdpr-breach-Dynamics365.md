---
title: Dynamics 365 and Breach Notification Under the GDPR
description: How Dynamics 365 protects against a personal data breach and how Microsoft responds and notifies you if a breach occurs.
keywords: Dynamics 365, Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR
localization_priority: Priority
ms.prod: Microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: 
- GDPR
- M365-security-compliance
titleSuffix: Microsoft GDPR
---

# Dynamics 365 and Breach Notification Under the GDPR

Dynamics 365 takes its obligations under the General Data Protection Regulation (GDPR) seriously and takes extensive security measures to protect against data breaches. Microsoft works continuously to provide highly secure, enterprise-grade services for Dynamics 365 customers. The information in this section provides a summary of how Microsoft Dynamics 365 protects against security incident/data breach and the process we follow to respond and notify our customers.

## Microsoft Dynamics 365 built-in security features

Microsoft Dynamics 365 takes advantage of the cloud service infrastructure and built-in security features to keep data safe using security measures and mechanisms to protect data. In addition, Dynamics 365 provides efficient data access and collaboration with data integrity and privacy in the following areas: [secure identity, data protection, role based security, and threat management](https://www.microsoft.com/trustcenter/security/dynamics365-security).

## Incident response training

Each employee working on Microsoft Dynamics 365 is provided with training regarding security incidents and response procedures that are appropriate to their role. Every Microsoft Dynamics 365 employee receives training upon joining, and annual refresher training every year thereafter. The training is designed to provide the employee with a basic understanding of Microsoft’s approach to security so that upon completion of training, all employees understand:

- The definition of a security incident;
- The responsibility of all employees to report security incidents;
- How to escalate a potential security incident to Dynamics 365 Security Incident Response team;
- How the Dynamics 365 Security incident Response team responds to security incident;
- Special concerns regarding privacy, particularly customer privacy;
- Where to find additional information about security and privacy, and escalation contacts.

## How does Microsoft Dynamics 365 define security incident/potential breaches

A security incident/ data breach refers to events such as unlawful access to customer’s data stored on Microsoft equipment or in Microsoft facilities, or unauthorized access to such equipment or facilities that has the potential to result in the loss, disclosure, or alteration of customer data. Microsoft’s goal when responding to security incidents/ data breach is to protect customer data and Dynamics 365 services. Microsoft’s approach to managing a security incident conforms to the [National Institute of Standards and Technology](https://www.nist.gov/) (NIST) Special Publication (SP) [800-61](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf).

Microsoft does not monitor for or respond to security incidents within the customer’s realm of responsibility. A customer-only security compromise would not be processed as a Dynamics 365 security incident and would require the customer tenant to manage the response effort. Customer incident response may involve collaboration with Microsoft Dynamics 365 customer support, given appropriate service contracts.

## Detection of potential breaches

Dynamics 365 responds to a potential data breach according to the security incident response process, which is a subset of the Microsoft Dynamics 365 incident management plan. Dynamics 365 security incident response is implemented using a five-stage process: Detect, Assess, Diagnose, Stabilize, and Close. The Security Incident Response Team may alternate between the diagnose and stabilize stages as the investigation progresses. An overview of the security incident response process is below:

|**Stage**|**Description**|
|:-----|:-----|
| ***1 - Detect*** | First indication of a potential incident. |
| ***2 - Assess*** | An on-call incident response team member assesses the impact and severity of the event. Based on evidence, the assessment may or may not result in further escalation to the security response team. |
| ***3 - Diagnose*** | Security response experts conduct the technical or forensic investigation, identify containment, mitigation, and workaround strategies. If the security team believes that customer data may have become exposed to an unlawful or unauthorized individual, execution of the Customer Incident Notification process begins in parallel.|
| ***4 - Stabilize and Recover*** | The incident response team creates a recovery plan to mitigate the issue. Crisis containment steps such as quarantining impacted systems may occur immediately and in parallel with diagnosis. Longer term mitigations may be planned which occur after the immediate risk has passed. |
| ***5 - Close and Post-mortem*** | The incident response team creates a post-mortem that outlines the details of the incident, with the intention to revise policies, procedures, and processes to prevent a recurrence of the event. |

The [Dynamics Security Incident Management](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=266d445f-ea95-42de-9124-4b2118a639ee&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers) white paper further details how Microsoft investigates, manages, and responds to security incidents within Dynamics 365.

The detection processes used by Microsoft Dynamics 365 are designed to discover events that risk the confidentiality, integrity, and availability of Dynamics 365 services. Several events can trigger an investigation:

- Automated system alerts via internal monitoring and alerting frameworks. These alerts could come in the way of signature-based alarms such as antimalware, intrusion detection or via algorithms designed to profile expected activity and alert upon anomalies.
- First party reports running Microsoft Dynamics 365 services deployed in Public Cloud and Microsoft Dynamics 365 services deployed in Sovereign Cloud.
- Security vulnerabilities are reported to the [Microsoft Security Response Center (MSRC)](https://technet.microsoft.com/security/dn440717) via <secure@microsoft.com>. MSRC works with partners and security researchers around the world to help prevent security incidents and to advance Microsoft product security.
- Customer reports that describe suspicious activity attributed to the Microsoft Dynamics 365 Services (as opposed to activity occurring within the customer’s scope of responsibility).
- Security [Red Team and Blue Team](https://azure.microsoft.com/blog/red-teaming-using-cutting-edge-threat-simulation-to-harden-the-microsoft-enterprise-cloud/) activity. This strategy uses a highly skilled Red team of offensive security experts to uncover and attack potential weaknesses in Microsoft Dynamics 365 services. The security response Blue team must detect and defend against the Red Team’s activity. Both Red and Blue Team actions are used to verify that Microsoft Dynamics 365 security response efforts are effectively managing security incidents. Security Red Team and Blue Team activities are operated under requirements of responsibility to help ensure the protection of customer data.
- Escalations by operators of Microsoft Dynamics 365 services. Microsoft employees are trained to identify and escalate potential security issues.

## Microsoft Dynamics 365 data breach response

Microsoft assigns the investigation appropriate priority and severity levels by determining the functional impact, recoverability, and information impact of the incident. Both the priority and severity may change over the course of the investigation, based on new findings and conclusions. Security events involving imminent or confirmed risk to customer data are treated as high severity and worked around the clock to resolution. Microsoft Dynamics 365 defines privacy breach as a breach of “personal data of an online service end user or Microsoft employees.”

The Security Response Team works with Microsoft Dynamics 365 Security Engineers and Subject Matter Experts (SMEs) to classify the event based on factual data from the evidence. A security event may be classified as:

- **False Positive:** An event that meets detection criteria but is found to be part of a normal business practice and may need to be filtered. The service team will identify the root cause for false positives and will address them in a systematic way leveraging detection sources and fine-tuning them as needed.
- **Security Incident:** An incident where unlawful access to any Customer Data or Support Data stored on Microsoft’s equipment or in Microsoft’s facilities, or unauthorized access to such equipment or facilities resulting in loss, disclosure, or alteration of Customer Data or Support Data has occurred.
- **Customer Reportable Security/Privacy Incident (CRSPI):** Unlawful or unauthorized access to or use of Microsoft’s systems, equipment, or facilities resulting in disclosure, modification, or loss of customer data.
- **Privacy Incident:** A subtype of Security Incident involving personal data. Handling procedures are no different than a security incident.

For a CRSPI to be declared, Microsoft must determine that unauthorized access to customer data has or has very likely occurred and/or that there is a legal or contractual commitment that notification must occur. It is desired, but not required, that specific customer impact, resource access, and repair steps be known. An incident is generally declared CRSPI after the conclusion of the Diagnose stage of a security incident. However, the declaration may happen at any point that all pertinent information is available. The security incident manager must establish evidence beyond reasonable doubt that a reportable event has occurred to begin execution of the Customer Incident Notification Process.

Throughout the investigation, the security response team works closely with global legal advisors to help ensure that forensics are performed in accordance with legal obligations and commitments to customers. There are also significant restrictions on system and customer data viewing and handling in various operating environments. Sensitive or confidential data, as well as Customer Data, are not transferred out of the production environment without explicit written approval from the Incident Manager recorded in the corresponding incident ticket.

Microsoft verifies that customer and business risk is successfully contained, and that corrective measures are implemented. If necessary, emergency mitigation steps to resolve immediate security risks associated with the event are taken.

Microsoft also completes an internal post-mortem for data breaches. As a part of this exercise, sufficiency of response and operating procedures are evaluated, and any updates that may be necessary to Microsoft’s internal security policies or related processes are identified and implemented. Internal postmortems for data breaches are highly confidential records not available to customers. Postmortems may, however, be summarized and included in other customer event notifications. These reports are provided to external auditors for review as part of Dynamics 365 routine audit cycle.

## Customer notification

Microsoft Dynamics 365 notifies customers and regulatory authorities of data breaches as required. Microsoft relies on heavy internal compartmentalization in the operation of Dynamics 365 services. Data flow logs are also robust. As a benefit of this design, most incidents can be scoped to specific customers. The goal is to provide impacted customers with an accurate, actionable, and timely notice when their data has been breached.

The notification process upon a declared CRSPI will occur as expeditiously as possible while still considering the security risks of moving quickly. Generally, the process of drafting notifications occurs as the incident investigation is ongoing. Customer notices are delivered promptly from the time we declared a breach *except* for the following circumstances:

- Microsoft believes the act of performing a notification will increase the risk to other customers. For example, the act of notifying may tip off an adversary causing an inability to remediate.
- Other unusual or extreme circumstances vetted by Microsoft’s legal department and the Executive Incident Manager.

Microsoft Dynamics 365 provides customers with detailed information enabling them to perform internal investigations and assisting them in meeting end-user commitments, while not unduly delaying the notification process.

Notification of a personal data breach will be delivered to the customer by any means Microsoft selects, including via email. Notification of a data breach will be delivered to the list of customer contacts/ admins (only affected tenants) provided in Office Security Center, which is configurable by the customer/ tenant admin. To ensure that notification can be successfully delivered, it is the customer’s responsibility to ensure that the administrative contact information on each applicable subscription and online services portal is correct.

The Microsoft Dynamics 365 team may also elect to notify additional Microsoft personnel such as Customer Service (CSS) and the customer’s Account Manager(s) (AM) or Technical Account Manager(s) (TAM). These individuals often have close relationships with the customer and can facilitate faster remediation.

## Learn more

- [Microsoft Trust Center](https://www.microsoft.com/TrustCenter/Privacy/gdpr/default.aspx)
