---
title: "Assess data privacy risks and identify sensitive information with Microsoft 365"
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

# Assess data privacy risks and identify sensitive information with Microsoft 365

Assessment of the data privacy regulations and risks that your organization is subject to is a key first step before implementing any related improvement actions, including those achievable through your Microsoft 365 configuration. 

## Potentially applicable data privacy regulations

For a good reference on the broader regulatory framework for data privacy regulations, refer to the [Microsoft Services Trust Portal](https://servicetrust.microsoft.com/) and the series of articles on the GDPR regulation [here](../compliance/gdpr.md), as well as other materials on the regulations you may be subject to in your industry and/or region.

### GDPR

The most well-known (and cited) of the data privacy regulations – the General Data Protection Regulation (GDPR) - regulates the collection, storage, processing, and sharing of any "personal data" - that which relates to an identified or identifiable natural person that is a resident of the European Union (EU). 

According to GDPR Article 4, “‘personal data’ means any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.”

## Other data privacy regulations

Other prominent data privacy regulations also specify requirements for the handling of personal data.

In the United States, these include (for example) the CCPA (California Consumer Protection Act (CCPA - [CCPA FAQ](../compliance/ccpa-faq.md)), HIPAA-HITECH (US health care privacy act), and the Graham Leach Bliley Act (GLBA). Additional state-specific regulations are also in-place and/or in development. 

Around the world, additional examples include Germany's "National GDPR Implementation Act" (BDSG), Brazil's LGPD (Brazil Data Protection Act), and many others.

## ISO 27001

Adherence to other standards like ISO 27001 has also been recognized by several European supervisory authorities as a valid proxy of intent across the people, process and technology spectrum (i.e., the standards it specifies overlap, and adherence to ISO-27001-driven protection mechanisms may be considered a proxy fulfilling some privacy obligations in certain circumstances).

## Regulatory clause mapping to Office 365 technical control categories

Many of the data privacy-related regulations have overlapping requirements (although with some notable differences), so organizations should understand which regulation(s) they are subject to prior to developing any technical control scheme, which this series of articles focuses on. 
For reference later in this document, excerpts from a sampling of data privacy regulations are provided in the table below. 

>[!Important]
>This is not intended to be an exhaustive list. Refer to Compliance Manager and/or your legal/compliance advisor for further information on the applicability of the cited sections to the technical control categories listed.
>

| Regulation | Article/section | Excerpt | Applicable technical control categories |
|:-------|:-----|:-------|:-------|
| GDPR | Article 5(1)(f) | Personal data shall be processed in a manner that ensures appropriate security of the personal data, including protection against unauthorized or unlawful processing and against accidental loss, destruction or damage, using appropriate technical or organizational measures ('integrity and confidentiality'.  |  (All) <br> Identity <br> Device <br> Threat Protection <br> Protect information <br> Govern information <br> Discover and respond |
|  | Article (32)(1)(a) | Taking into account the state of the art, the costs of implementation and the nature, scope, context and purposes of processing as well as the risk of varying likelihood and severity for the rights and freedoms of natural persons, the controller and the processor shall implement appropriate technical and organizational measures to ensure a level of security appropriate to the risk, including inter alia as appropriate: (a) the pseudonymization and encryption of personal data. | Protect information |
|  | Article (13)(2)(a) | "…the controller shall, at the time when personal data are obtained, provide the data subject with the following further information necessary to ensure fair and transparent processing: (a) the period for which the personal data will be stored, or if that is not possible, the criteria used to determine that period. | Govern information |
|  | Article (15)(1)(e) | The data subject shall have the right to obtain from the controller confirmation as to whether or not personal data concerning him or her are being processed, and where that is the case, access to the personal data and the following information: (e) the existence of the right to request from the controller rectification or erasure of personal data or restriction of processing of personal data concerning the data subject or to object to such processing | Discover and respond |
| LGPD | Article 46 | Processing agents shall adopt security, technical and administrative measures able to protect personal data from unauthorized accesses and accidental or unlawful situations of destruction, loss, alteration, communication or any type of improper or unlawful processing. | Protect information <br> Govern information <br> Discover and respond|
|  | Article 48 | The controller must communicate to the national authority and to the data subject the occurrence of a security incident that may create risk or relevant damage to the data subjects. | Discover and respond |
| HIPPA-HITECH | 45 CFR 164.312(e)(1) | Implement technical security measures to guard against unauthorized access to electronic protected health information that is being transmitted over an electronic communications network. | Protect information |
|  | 45 C.F.R. 164.312(e)(2)(ii) | Implement a mechanism to encrypt electronic protected health information whenever deemed appropriate. | Protect information |
|  | 45 CFR 164.312(c)(2) | Implement electronic mechanisms to corroborate that electronic protected health information has not been altered or destroyed in an unauthorized manner. | Govern information |
|  | 45 CFR 164.316(b)(1)(i) | If an action, activity or assessment is required by this subpart to be documented, maintain a written (which may be electronic) record of the action, activity, or assessment | Govern information |
|  | 45 CFR 164.316(b)(1)(ii) | Retain the documentation required by paragraph (b)(1) of this section for 6 years from the date of its creation or the date when it last was in effect, whichever is later. | Govern information |
|  | 45 C.F.R. 164.308(a)(1)(ii)(D) | Implement procedures to regularly review records of information system activity, such as audit logs, access reports, and security incident tracking reports | Discover and respond |
|  | 45 C.F.R. 164.308(a)(6)(ii) | Identify and respond to suspected or known security incidents; mitigate, to the extent practicable, harmful effects of security incidents that are known to the covered entity or business associate; and document security incidents and their outcomes. | Discover and respond |
|  | 45 C.F.R. 164.312(b) | Implement hardware, software, and/or procedural mechanisms that record and examine activity in information systems that contain or use electronic protected health information. | Discover and respond |
| CCPA | 1798.105(c) | A business that receives a verifiable request from a consumer to delete the consumer’s personal information pursuant to subdivision (a) of this section shall delete the consumer’s personal information from its records and direct any service providers to delete the consumer’s personal information from their records | Discover and respond |
|  | 1798.105(d) | (exceptions to 1798.105(c) <br> A business or a service provider shall not be required to comply with a consumer’s request to delete the consumer’s personal information if it is necessary for the business or service provider to maintain the consumer’s personal information in order to: (refer to the current regulation for additional information). | Discover and respond |
|||||

## Knowing your data

Regardless of the regulations you are subject to, where different user types inside and outside your organization interact with your systems - as well as where their personal data is stored, what type it is, and how much of it there is, and under what circumstances it was collected – are all important factors that may impact your overall personal data protection strategy, subject to whichever industry and/or government regulations apply to your organization. 
 
![alt text](../media/information-protection-deploy-assess/information-protection-deploy-assess-knowing-data.png)

**Data portability.** Data also moves around over time as it is processed (and refined/derivative products are created from it), so an initial snapshot is never enough - there needs to be an ongoing process for "knowing your data". This represents one of the biggest challenges for large organizations that handle significant volumes of personal data. Organizations that don't address the "know your data" problem could potentially end up with very high risk and possible fines from regulatory agencies.

![alt text](../media/information-protection-deploy-assess/information-protection-deploy-assess-data-lifecycle.png)
 
**Bottom line.** To address data privacy regulations, you can’t rely on general notions of where you think personal data might exist, either now or in the future. Generally, data privacy regulations require that organizations prove that they know where personal data is on an ongoing basis. This makes it important to take an initial snapshot of all your data sources for possible storage of personal information, including Office 365, as well as establish mechanism for ongoing monitoring and detection.

To help rationalize this challenge, we introduce a 3-step framework to get started for organizations that have not already assessed their overall readiness and/or risk associated with data privacy regulations. 

>[!Note]
>This is not meant to take the place of legal advisory services, rather, just provide some basic guidance and links to tools that may be of assistance in early stages.
>
 
## Step 1: Develop a foundational understanding of your organization's personal data scenarios 

Organizations need to gauge exposure to data privacy risk as a function of the type of personal data it currently manages, where it is stored, what protective controls are placed on it, how its lifecycle is managed, and who has access to it. 

As a starting point, it is important to inventory what types of personal data exist in your Office 365 environment, using these three categories as a framing mechanism:

A. Employee data required to carry out day-to-day business functions
B. Data the organization has about its business customers, partners, and other relationships (the B2B scenario)
C. Data the organization has about consumers who provide information to online services that the organization manages (the B2C scenario)

Each of these is shown in the following diagram and explored further below.

As shown in the diagram below, it is important to note that much of the personal data that is subject to data privacy regulation (at least on the non-employee side) is typically collected and stored outside of Office 365, so any personal data from consumer-facing web or mobile applications would need to have been fed/exported from such applications to Office 365 in order to be subject to data privacy scrutiny in Office 365. 

Thus, your data privacy exposure in Office 365 may be more limited relative to your web applications and CRM systems, which this series of articles does not intend to address.
 
![alt text](../media/information-protection-deploy-assess/information-protection-deploy-assess-data-types.png)

It is also important to think about the following common data privacy compliance challenges when evaluating your risk profile specific to the above data types/sources:

 -**Personal data distribution.** In general, how scattered is information about a given subject? Is it known well enough to convince regulatory bodies that proper controls are in place? Can it be investigated and remediated if needed?
- **Protecting against exfiltration.** How do we protect personal data of a given type/source from being compromised/breached and how to respond if it was?
- **Protection vs. risk.** What information protection mechanisms are appropriate relative to the risk and how to maintain business continuity/productivity and minimize end-user impact if end-user intervention is required? (e.g. manual classification/encryption)
- **Personal data retention.** How long does information containing personal data need to be kept around for valid business reasons and how to avoid past "keep it forever" stances, balanced with retention needs for business continuity?
- **Handling data subject requests.** What mechanisms will be needed to handle data subject requests (DSRs) and any remedial actions (e.g. anonymization, redaction, deletion, etc.).
- **Ongoing monitoring and reporting.** What sort of day-to-day monitoring, investigative and reporting techniques are available for the different data types/sources?
- **Limitations on data processing.** Are there limitations on data use for information collected or stored through these methods that the organization must reflect in privacy controls? For example, commitments that personal data will not be used by sales personnel may require your organization to put mechanisms in place to prevent transfer/storage of that information in systems associated with the sales organization.

### A. Type 1 - Employee data required to carry out day-to-day business functions

Organizations by nature need to collect data on employees for electronic identity and HR purposes, subject to what they agree to in their employee agreements. As long as a person works for a company, this is typically not an issue, although the organization may want to put mechanisms in place to prevent malicious actors from exfiltrating or leaking employee personal data of concern (e.g. social security numbers). 

If a person leaves a company, organizations typically have processes and procedures (as well as retention and deletion schedules) for removing user accounts, decommissioning mailboxes and personal drives, and changing the employee status in things like HR systems. For situations where litigation is involved, an employee (or another party to a legal investigation) may have valid reasons for obtaining information about personally-identifiable data stored in the organization's systems, and on some occasions may request that such data is removed or anonymized. 

To address such needs, organizations should have processes and procedures in place that address preventative, detective, and remedial needs to facilitate such requests, noting that some information about an employee may be reasonably considered crucial for business continuity (e.g. the fact that an individual authored a file or performed a function). 

>[!Note]
>We provide insights on related investigative and remediation techniques for personal data in Office 365 in the article: 7. Monitor and respond to data privacy incidents.
>Your organization may also wish to employ automated classification and protection schemes to make sure that personal data is controlled properly while inside the organization, as well as prevent it from leaving the organization in malicious actor situations. These topics are explored further in the article: 5. Protect information subject to data privacy regulation in your organization.
>
 
### B. Type 2 - Data the organization has about its business customers (the B2B scenario)

Collection of business to business information is also tricky in that organizations need to keep records of customer names and transactions in its various systems for business continuity purposes, yet protect that information from inadvertent or malicious exfiltration/leakage. Like employee data, organizations must have policies, procedures, and technical controls in place to protect such data, as well as age it out according to defined retention and deletion schedules. 

Typically, contracts with external customers, partners, and the other entities with which the organization does business will have language addressing the handling of such data, including protection, retention and deletion both during and after the entity has a relationship with the organization. 

### C. Type 3 - Data the organization has about consumers who provide information to online services that the organization manages (the B2C scenario)

This third category is the one most people think about when the subject of data privacy comes up, as leakage of an organization's consumer data - whether intentional (e.g. to a third party under contract to the provider) or unintentional (e.g. exfiltrated by a malicious actor) - is one of the primary reasons the EU (and others) enacted these regulations in the first place. Here's where the focus of many of the data privacy regulations like GDPR and CCPA come in, whereby organizations need to do concerted planning around the following:

- [Action plans](../compliance/gdpr-action-plan?view=o365-worldwide) and [accountability readiness checklists](../compliance/gdpr-arc-office365.md)
- [Data Protection Impact Assessments](../compliance/gdpr-data-protection-impact-assessments.md)
- [Breach notifications](../compliance/gdpr-breach-office365.md)
- [Data subject requests](../compliance/gdpr-dsr-office365.md)

If an organization does not do a lot of “direct from consumer” data collection, this third category may be less of an issue, from a risk perspective. However, organizations may still need to go through the processes outlined in the above articles to achieve compliance.

### Step 1 summary

In summary, understanding your exposure to risk and data privacy regulation is an important first step, based on a foundational understanding of your organization's personal data scenarios.

**Why is this so important?** If you don't have personal data from consumers in your Office 365 environment (or it is confined to certain parts of the environment), and the need for a technical control is predicated on there being consumer-type data exposure, then that technical control may only need to be employed in high risk parts of the environment, not everywhere. 

While an external organization (e.g. advisory firm) or “standard” control set recommendation (e.g. from Compliance Score) may help inform your control strategy, your choice of implementation should be driven by data inventory awareness in order to quantify the organization’s real risk exposure.

Most organizations will have at least some exposure to at least one of the above scenarios, however, so taking a holistic approach to assessing this landscape is important.

## Step 2: Assess your readiness for complying with data privacy regulations

Although it is GDPR specific, the questions posed in this free, Microsoft [GDPR assessment tool](https://www.microsoft.com/cyberassessment/en/gdpr/uso365) provide a good start towards understanding your overall data privacy readiness, if you have not established this already. 

Organizations subject to other data privacy regulations - such as CCPA in the United States or Brazil’s LGPD – may also benefit from this tool’s inventory of readiness due to a high degree of overlapping provisions with the GDPR.

GDPR Assessment consists of these sections:

| | |
|:-------|:-----|
| Governance | 1. Does your privacy policy explicitly state what data information is being processed? <br> 2. Do you regularly run (PIAs) Privacy Impact Assessments? <br> 3. Do you use a tool to manage Personal Information (PI)? <br> 4. Do you have legal authority to conduct business using PI data on any given individual? Do you track consent for data? <br> 5. Do you track, implement, and manage audit controls? Do you monitor for data leaks? |
| Deletion & Notification | 1.	Do you give explicit instructions on how users' data can be accessed? <br> 2.	Do you have documented processes in place for handling opt out consent? <br> 3.	Do you have an Automated Deletion process for data? <br> 4.	Do you have a process to validate identity when engaging with a customer? |
| Risk Mitigation and  Information Security | 1.	Do you use tools to scan unstructured data? <br> 2.	Are all servers up to date, and do you leverage firewalls to protect them? <br> 3.	Do you run regular backups of your servers? <br> 4.	Do you actively monitor for data leaks? <br> 5.	Do you encrypt your data at rest and in transmission? |
| Policy Management | 1. How do you manage your BCRs (Binding Corporate Rules)? <br> 2. Do you track consent for data? <br> 3. On a scale of 1 to 5, 5 being completely covered, do your contracts cover data classifications and handling requirements? <br> 4. Do you have and regularly test an incident response plan? <br> 5. What policy do you use to manage access? |
|||
 
## Step 3: Identify sensitive information types that occur in your Office 365 environment. 

This step involves identification of particular "Sensitive Information Types" that are subject to specific regulatory controls your organization needs to comply with, as well as the occurrence of them in your Office 365 environment. 

First, finding content in your environment containing personal can be a formidable task, formerly involving a combination of using Compliance Search, eDiscovery, Advanced eDiscovery DLP and/or auditing. 

With the new "Data Classification" solution in the Microsoft Compliance admin center, this has become much easier with the [Content Explorer](../compliance/data-classification-content-explorer.md) capability, which works with either out of the box (OOTB) or custom sensitive information types (SITs), including those related to personal data.
 
### Sensitive information types

The Microsoft Compliance admin center comes pre-loaded with over 100 SITs, most of them related to identifying and locating personal data. These built-in sensitive information types can help identify and protect credit card numbers, bank account numbers, passport numbers, and more, based on patterns that are defined by a regular expression (regex) or a function. To learn more, see [What the sensitive information types look for](../compliance/what-the-sensitive-information-types-look-for.md).

In addition to the built-in SITs, you can also create custom info types via three methods, including PowerShell, custom rules via exact data match (EDM), and through the Compliance Center admin UI, as highlighted in Article 3. Use Compliance Score and Compliance Manager to manage improvement actions. You can also customize an existing, built-in SIT.
 
### Custom Sensitive Information Types

As described in this article, Microsoft 365 includes many built-in sensitive information types (SITs) related to personal identifiable information (PII) that are ready for you to use in your organization. If you need to identify and protect an organization-specific or regional type of sensitive information, such as a custom format for employee IDs, or other personal information not already covered by a built-in SIT, you can create a custom sensitive information type or modify an existing, built-in type. 

Refer to the following articles which explore these in more depth:

- [Customize a built-in sensitive information type](../compliance/customize-a-built-in-sensitive-information-type.md)
- [Custom sensitive information types](../compliance/custom-sensitive-info-types.md)
- [Create a custom sensitive information type in the Security & Compliance Center](../compliance/create-a-custom-sensitive-information-type.md)
- [Create a custom sensitive information type in Security & Compliance Center PowerShell](../compliance/create-a-custom-sensitive-information-type-in-scc-powershell.md)
- [Create custom sensitive information types with Exact Data Match based classification](../compliance/create-custom-sensitive-information-types-with-exact-data-match-based-classification.md)

### Content Explorer

An important tool that is now available for determining the occurrence of sensitive information in your environment is the new [Content Explorer](https://docs.microsoft.com/microsoft-365/compliance/data-classification-content-explorer) in the Microsoft 365 Compliance admin center. This provides an automated tool for initial as well as ongoing scanning of the entire Office 365 environment for the occurrence of SITs and presenting the results in the Content Explorer tool.
 
Using the new Content Explorer tool allows you to quickly identify the locations of sensitive information in your environment, using either OOTB SITs or custom ones. This may involve establishing a process and assigned responsibility to regularly investigate the presence and location of sensitive information.

Along with the other steps highlighted in this article, this provides a starting point for identifying your overall risk exposure, readiness, and location of sensitive information to protect through planful Microsoft 365 configuration and monitoring, which are described in more detail in the remaining articles in this series. 

### Other methods to identify personal data in your environment

In addition to the Content Explorer, organizations have access to the "Content Search" capability to produce custom searches for and find personal data in their environment, using advanced search criteria and custom filters.

Detailed guidance on the use of Content Search for discovery of personal data is provided in [Search for and find personal data](../compliance/search-for-and-find-personal-data.md). Content Search and other discovery techniques are also explored in [Data Subject Requests for the GDPR and CCPA](../compliance/gdpr-dsr-office365.md#introduction-to-dsrs).

Additional insights on investigative and remediation techniques for personal data in Office 365 are provided in the article: 7. Monitor and respond to data privacy incidents.
