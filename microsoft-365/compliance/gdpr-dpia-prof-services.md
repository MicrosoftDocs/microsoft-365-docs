---
title: Guidance for Data Controllers Using Microsoft Professional Services
description: This document provides data controllers with information about Professional Services that will help them to determine whether a DPIA is needed and what details to include.
keywords: DPIA, Microsoft Professional Services, Microsoft 365 documentation, GDPR
robots:  "NOINDEX,NOFOLLOW"
author: herviicban
ms.localizationpriority: Priority
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: heicba
manager: laurawi
audience: itpro
ms.collection: GDPR
---

# Data Protection Impact Assessments: Guidance for Data Controllers Using Microsoft Professional Services

## Introduction to Microsoft Professional Services

Microsoft Professional Services includes a diverse group of technical architects, engineers, consultants, and support professionals dedicated to delivering on Microsoft's mission of empowering customers to do more and achieve more. Find out more about Microsoft Professional Services by going to the Microsoft Professional Services section on the Microsoft Trust Center (<https://www.microsoft.com/trustcenter/professional-services>).

Microsoft Professional Services takes its obligations under the General Data Protection Regulation (GDPR) seriously. The information in this document is designed to provide information about how Microsoft’s support and consulting offerings that customers can use when preparing Data Protection Impact Assessments (DPIAs) under GDPR.

### Introduction to DPIAs

Under the General Data Protection Regulation (GDPR), data controllers are required to prepare a DPIA for processing operations that are “likely to result in a high risk to the rights and freedoms of natural persons.” There is nothing inherent in Microsoft Professional Services that would necessarily require the creation of a DPIA by a data controller using it. Rather, whether a DPIA is required will be dependent on the details and context of the type of services and how the data controller uses the professional services.

The purpose of this document is to provide data controllers with information about Professional Services that will help them to determine whether a DPIA is needed and, if so, what details to include.

## Part 1 – Determining Whether A DPIA is Needed

Article 35 of the GDPR requires a data controller to create a Data Protection Impact Assessment “[w]here a type of processing in particular using new technologies, and taking into account the nature, scope, context and purposes of the processing, is likely to result in a high risk to the rights and freedoms of natural persons.” It further sets out particular factors that would indicate such a high risk, which are discussed in the following table. In determining whether a DPIA is needed, a data controller should consider these factors, along with any other relevant factors, in light of the data controller’s specific implementation(s) and use(s) of Professional Services.

***Table 1 - Risk factors and relevant information***

<!--start table here NO HEADER -->

|||
|:-----|:-----|
|**Risk Factor**|**Relevant Information about Professional Services**|
|A systematic and extensive evaluation of personal aspects relating to natural persons which is based on automated processing, including profiling, and on which decisions are based that produce legal effects concerning the natural person or similarly significantly affect the natural person;|Professional Services does perform certain routine or automated processing of data, such as break/fix support (e.g., assisting customers when their computer breaks), account migration, and analysis of system vulnerabilities. Professional Services solutions, excluding customer development covered under the note below, are not intended to perform processing on which decisions are based that produce legal or similarly significant effects on individuals.|
|Processing on a large scale[^1] of special categories of data (personal data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data for the purpose of uniquely identifying a natural person, data concerning health or data concerning a natural person's sex life or sexual orientation), or of personal data relating to criminal convictions and offences;|Professional Services are not intended to be utilized in work that requires the processing of special categories of personal data, excluding customer development covered under the note below.<p>However, a data controller could use Professional Services consulting solutions to process the enumerated special categories of data. For instance, Professional Services offers healthcare industry database development which could be used by a data controller to process personal data associated with a health condition. It is the responsibility of the controller to assess and either restrict or document this usage as appropriate.</p>|
| A systematic monitoring of a publicly accessible area on a large scale|Professional Services are not intended to be utilized in work that requires or facilitates such monitoring, excluding customer development covered under the note below.<p>If a data controller used Professional Services to develop this type of system or used IT systems to process data collected through such monitoring than it would be the responsibility of the data controller as described below.</p>|
|||

<!-- end of table -->
  
[Custom Development Note] Professional Services offers a wide variety of consulting solutions. A data controller could potentially request a solution that, in accordance with the above criteria, would be a high-risk solution. For instance, a data controller may request that Professional Services create a solution to develop a business intelligence engine for employment decisions or credit applications or a solution that involves user tracking, specialized use of Artificial Intelligence (AI)/Analytics, or processing of special categories of personal data.

At the start of an engagement, Professional Services has processes to evaluate and address high-risk solutions it may be asked to work on. As part of this, Professional Services may require assurances from the data controller on GDPR compliance (e.g. contractual terms), a plan for development of a DPIA, or other criteria (e.g. agreed operating guidelines) as required of a data processor under the GDPR. However, regardless of Microsoft’s actions it is the responsibility of the data controller to develop the DPIA with input where applicable from the processor of the customer’s data.

## Part 2 – Contents of a DPIA

Article 35(7) mandates that a Data Protection Impact Assessment specify the purposes of processing and a systematic description of the envisioned processing. A systematic description of a comprehensive DPIA might include factors such as the types of data processed, how long data is retained, where the data is located and transferred, and what third parties may have access to the data. In addition, the DPIA must include:

-   an assessment of the necessity and proportionality of the processing operations in relation to the purposes;

-   an assessment of the risks to the rights and freedoms of natural persons; and

-   the measures envisaged to address the risks, including safeguards, security measures and mechanisms to ensure the protection of personal data and to demonstrate compliance with this Regulation taking into account the rights and legitimate interests of data subjects and other persons concerned.

The table below contains information about Professional Services that is relevant to each of those elements. As in Part 1, data controllers must consider the details provided below, along with any other relevant factors, in the context of the controller’s specific implementation(s) and use(s) of Professional Services.

***Table 2 - Elements of DPIA for Relevant Professional Services***

<!--start table here -->

|||
|:-----|:-----|
|**Element of a DPIA** |**Relevant Information About Professional Services**|
|Purpose(s) of processing|The purpose(s) of processing data using Professional Services is determined by the controller that implements, configures, and uses it.<p>As specified by the [Microsoft Professional Services Data Protection Addendum](http://aka.ms/professionalservicesdpa) (MPSDPA), Microsoft, as a data processor, processes Support and Consulting Data only to provide the requested services to our customer, the data controller. Microsoft will not use Support and Consulting Data or information derived from it for any advertising or similar commercial purposes.</p>|
|The purpose(s) of processing data using Professional Services is determined by the controller that implements, configures, and uses it.|As specified by the [Microsoft Professional Services Data Protection Addendum](http://aka.ms/professionalservicesdpa) (MPSDPA), Microsoft, as a data processor, processes Support and Consulting Data only to provide the requested services to our customer, the data controller. Microsoft will not use Support and Consulting Data or information derived from it for any advertising or similar commercial purposes.|
|Categories of personal data processed|Support and Consulting data means all data, including all text, sound, video, image files, or software, that are provided to Microsoft by, or on behalf of, Customer (or that Customer authorizes Microsoft to obtain from an Online Service) through an engagement with Microsoft to obtain Professional Services or Support. This may include information collected over phone, chat, e-mail, or web form. It may include description of problems, files transferred to Microsoft to resolve support issues, automated troubleshooters, or by accessing customer systems remotely with customer permission.<p>Customer Data and Support Data do not include customer contact or billing data, such as subscription information, and payment data, which Microsoft collects and processes in its capacity as a data controller and which is outside the scope of this document.</p>|
|Data retention|Microsoft will retain Support and Consulting Data for the duration of the customer engagement plus a retention period after the engagement ends as necessary to ensure quality and continuity of service. As an example, after a support case is closed the data is data is normally retained for a period to ensure the ability to reference it if the issue re-emerges and the case is re-opened.<p>When Professional Services provides support, the engagement length is defined when the support case is closed. When Professional Services provides consulting services, the engagement length is often defined by the work order. In other cases, the engagement length is defined by the maintenance of the business relationship. In all cases, Support and Consulting Data will be deleted or returned on request or in accordance with the customer’s instructions without undue delay using the capabilities described in the Professional Services *Data Subject Rights Guide*.</p>|
|Location and transfers of personal data|Due to the nature of Professional Services, including the need to provide round-the-clock support, data may be transferred worldwide. A list of locations Microsoft operates in is available on request. For consulting services, data may be held in-country if agreed to within the work order.<p>For personal data from the European Economic Area and Switzerland, Microsoft will ensure that transfers of personal data to a third country or an international organization are subject to appropriate safeguards as described in Article 46 of the GDPR. In addition to Microsoft’s commitments under the Standard Contractual Clauses for processors and other model contracts as described in the [MPSDPA](http://aka.ms/professionalservicesdpa), Microsoft is certified to the EU-U.S. and Swiss-U.S. Privacy Shield Frameworks and the commitments they entail.|
|Data sharing with third parties|Microsoft shares data with third parties acting as our sub-processors to support functions such as customer and technical support, service maintenance, and other operations. Any subcontractors to which Microsoft transfers Support and Consulting Data will have entered into written agreements with Microsoft that are no less protective than the data protection terms of the [MPSDPA](http://aka.ms/professionalservicesdpa). All third-party sub-processors with which Support and Consulting Data is shared under the [MPSDPA](http://aka.ms/professionalservicesdpa) are included in the [Microsoft Commercial Support Contractors List](http://aka.ms/servicesapprovedsuppliers).<p>Microsoft will not disclose Support and Consulting Data to law enforcement unless required by law. If law enforcement contacts Microsoft with a demand for Support and Consulting Data, Microsoft will attempt to redirect the law enforcement agency to request that data directly from the customer. If compelled to disclose Support and Consulting Data to law enforcement, Microsoft will promptly notify the customer and provide a copy of the demand unless legally prohibited from doing so.<p>Upon receipt of any other third-party request for Support and Consulting Data, Microsoft will promptly notify the customer unless prohibited by law. Microsoft will reject the request unless required by law to comply. If the request is valid, Microsoft will attempt to redirect the third party to request the data directly from the customer.</p>|
|Data subject rights|When operating as a processor, Microsoft makes available to customer (data controllers) the personal data of its data subjects and the ability to fulfill data subject requests when they exercise their rights under the GDPR. We do so in a manner consistent with the functionality of the product and our role as a processor.  If we receive a request from the customer’s data subject to exercise one or more of its rights under the GDPR, we redirect the data subject to make its request directly to the data controller.<p>The *Professional Services Data Subject Request GDPR Documentation* provides a description of how the customer can address their data subject rights obligations in Professional Services.</p>|
An assessment of the necessity and proportionality of the processing operations in relation to the purposes|Such an assessment will depend on the controller’s needs and purposes of processing.<p>With regard to the processing carried out by Microsoft, such processing is necessary and proportional for the purpose of providing the services to the data controller. Microsoft commits to this in the [MPSDPA](http://aka.ms/professionalservicesdpa).</p>|
|An assessment of the risks to the rights and freedoms of data subjects|The key risks to the rights and freedoms of data subjects from the use of Professional Services will be a function of how and in what context the data controller implements, configures, and uses the professional services and any solutions provided by Professional Services.<p>However, as with any service, personal data held in the service may be at risk of unauthorized access or inadvertent disclosure. Measures Microsoft takes to address such risks are discussed below.</p>|
| The measures envisaged to address the risks, including safeguards, security measures and mechanisms to ensure the protection of personal data and to demonstrate compliance with the GDPR taking into account the rights and legitimate interests of data subjects and other persons concerned<!--is this the correct ending? -->|Microsoft is committed to helping protect the security of customer information. In compliance with the provisions of Article 32 of the GDPR, Microsoft has implemented and will maintain and follow appropriate technical and organizational measures intended to protect Support and Consulting Data against accidental, unauthorized or unlawful access, disclosure, alteration, loss, or destruction.<p>Further, Microsoft complies with all other GDPR obligations that apply to data processors, including but not limited to, data protection impact assessments and record keeping.</p>|
|||

<!-- end of table -->

[^1]: With respect to the criteria that the processing be on a “large scale,” Recital 91 of the GDPR clarifies that: “The processing of personal data should not be considered to be on a large scale if the processing concerns personal data from patients or clients by an individual physician, other health care professional or lawyer. In such cases, a data protection impact assessment should not be mandatory.”


#### Learn more
[Microsoft Trust Center](https://www.microsoft.com/TrustCenter/Privacy/gdpr/default.aspx)
