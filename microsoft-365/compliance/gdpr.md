---
title: General Data Protection Regulation
description: Learn about Microsoft technical guidance and find helpful information for the General Data Protection Regulation (GDPR).
keywords: Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR
localization_priority: Priority
ms.prod: microsoft-365-enterprise
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
ms.custom: seo-marvel-apr2020
---

# General Data Protection Regulation Summary

The General Data Protection Regulation (GDPR) introduces new rules for organizations that offer goods and services to people in the European Union (EU), or that collect and analyze data for EU residents no matter where you or your enterprise are located. This document guides you to information to help you honor rights and fulfill obligations under the GDPR when using Microsoft products and services. A [Recommended action plan for GDPR](gdpr-action-plan.md) and [Accountability Readiness Checklists](gdpr-arc.md) provide additional resources for assessing and implementing GDPR compliance.

## Terminology

Helpful definitions for GDPR terms used in this document:

- **Data Controller (Controller)**: A legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data.  
- **Personal data and data subject**: Any information relating to an identified or identifiable natural person (data subject); an identifiable natural person is one who can be identified, directly or indirectly.  
- **Processor**: A natural or legal person, public authority, agency, or other body, which processes personal data on behalf of the controller.  
- **Customer Data**: Data produced and stored in the day-to-day operations of running your business.

## What is the GDPR?

The GDPR gives rights to people to manage personal data collected by an organization. These rights can be exercised through a Data Subject Request (DSR). The organization is required to provide timely information regarding DSRs and data breaches, and perform Data Protection Impact Assessments (DPIAs).

Several points should be considered when implementing or assessing GDPR requirements:

- Developing or evaluating your GDPR-compliance data privacy policy.
- Assessing the data security of your organization.
- Who is your data controller?
- What data security processes may you have to perform?

The [Recommended action plan for GDPR](gdpr-action-plan.md) and [Accountability Readiness Checklists](gdpr-arc.md) may prompt additional thinking points.

The following tasks are involved to meet GDPR standards. Follow the links in the list for details regarding your implementation.  

- **[Data subject requests (DSR)](gdpr-data-subject-requests.md)**. A formal request by a data subject to a controller to take an action (change, restrict, access) regarding their personal data.
- **[Breach notification](gdpr-breach-notification.md)**. Under GDPR, a personal data breach is 'a breach of security leading to the accidental or unlawful destruction, loss, alteration, unauthorized disclosure of, or access to, personal data transmitted, stored, or otherwise processed.'
- **[Data protection impact assessment (DPIA)](gdpr-data-protection-impact-assessments.md)**. Data controllers are required under GDPR to prepare a DPIA for data operations that are 'likely to result in a high risk to the rights and freedoms of natural persons.'

As mentioned above, the Recommended action plan for GDPR and Accountability Readiness Checklists provide a guide to implementing or assessing GDPR conformance using Microsoft products and services.

## Use Microsoft Compliance Manager to assess your risk

[Microsoft Compliance Manager](compliance-manager.md) is a feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) to help you understand your organization's compliance posture and take actions to help reduce risks. Compliance Manager has a pre-built assessment for this regulation for Enterprise E5 customers. Find the template for building the assessment in the **assessment templates** page in Compliance Manager. Learn how to [build assessments in Compliance Manager](compliance-manager-assessments.md).

## Data Subject Request (DSR)

The GDPR grants individuals (or data subjects) certain rights in connection with the processing of their personal data, including the right to correct inaccurate data, erase data or restrict its processing, receive their data and fulfill a request to transmit their data to another controller. The controller is responsible for providing a timely, GDPR consistent reply. For technical details, refer to [Data Subject Requests](gdpr-data-subject-requests.md).  

### DSR FAQs

**What actions will be required to complete a DSR?**

DSRs involve six activities: Discovery, Access, Rectification, Restriction, Export, and Deletion.

**What are your data sources?**

A large fraction of an organization's data is generated in [Office applications](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-office365#using-the-content-search-ediscovery-tool-to-respond-to-dsrs) such as Excel and Outlook. You may also find data relevant to a DSR in [Insights](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-office365#part-2-responding-to-dsrs-with-respect-to-insights-generated-by-office-365) generated by Microsoft products and services, and [system-generated logs](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-office365#part-3-responding-to-dsrs-for-system-generated-logs).

**What kinds of data need to be searched?**

Personal data may be found in customer data, insights generated by Microsoft products and services, and system-generated logs.

**How will personal data be searched?**

Searching for personal data may vary across Microsoft products and services. Search tools include [Content Search](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-office365#using-the-content-search-ediscovery-tool-to-respond-to-dsrs), or [in-app search](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-office365#using-in-app-functionality-to-respond-to-dsrs) capacity. Administrators may access [system-generated logs](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dsr-office365#part-3-responding-to-dsrs-for-system-generated-logs) associated with a user's activity.  

**In what formats should personal data be made available?**

The GDPR 'right of data portability' allows a data subject to request a copy of personal data in a 'structured, commonly used, machine-readable format', and to request that your organization transmit these files to another data controller.

**What does the GDPR require and what are my responsibilities as the controller?**

As controller, the GDPR requires you to be able to:

- Give data subjects a copy of their personal data, together with an explanation of the categories of their data that are being processed, the purposes of that processing, and the categories of third parties to whom their data may be disclosed.
- Help every individual exercise their right to correct inaccurate personal data, erase data or restrict its processing, receive their data in a readable form, and where applicable, fulfill a request to transmit their data to another controller.

**What does the GDPR require and what are the responsibilities of Microsoft as processor?**

We must implement the appropriate technical and organizational measures to assist you in responding to requests from data subjects exercising their rights as discussed above.

**Where can I find GDPR-related information for on-premises servers?**

You can find a series of GDPR-related articles here. Produced by Microsoft, they provide recommended approaches for on-premises workload for SharePoint Server, Exchange Server, Project Server, Office Web Apps Server, Office Online Server, and on-premises file shares.

**How does Microsoft enable you to respond to data subject requests?**

Online Services offers a host of capabilities to enable you, as a controller, to respond to a data subject's request. Microsoft enterprise online services and administrative controls help you act on personal data responsive to data subject rights requests, allowing you to discover, access, rectify, restrict, delete, and export personal data that resides in the controller-managed data stored in Microsoft's cloud. Online Services also provides data in machine-readable form should you need it.

## Data Protection Impact Assessment

Under GDPR, data controllers are required to prepare a [Data Protection Impact Assessment](gdpr-data-protection-impact-assessments.md) (DPIA) for processing operations that are 'likely to result in a high risk to the rights and freedoms of natural persons.' There is nothing inherent in Microsoft products and services that need the creation of a DPIA. Rather, it depends on the details of your Microsoft configuration. A list of details that must be considered in Office can be found in [Contents of DPIA](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dpia-office365#part-2--contents-of-a-dpia)

### DPIA FAQs

**When should you conduct a DPIA?**

Controllers are required to perform a DPIA addressing risks to personal data security or as a result of a data breach. Specific examples of risk factors in Office are addressed in [Determining Whether a DPIA is Needed](https://docs.microsoft.com/microsoft-365/compliance/gdpr-dpia-office365#part-1--determining-whether-a-dpia-is-needed).  

**What is required to complete a DPIA?**

The GDPR mandates that a DPIA includes:

- Assessment of the necessity, and proportionality of data processing in relation to the DPIA's purpose.
- An assessment of the risks to the rights and freedoms of data subjects.
- Intended measures to address the risks, safeguards, security measures, and mechanisms to ensure the protection of personal data and demonstrate compliance with the GDPR.

**What are my responsibilities as a Controller?**

Under the GDPR, as a controller you are required to undertake DPIAs prior to data processing that is likely to result in a high risk to the rights and freedoms of individuals—in particular, processing using new technologies. The GDPR provides the following non-exhaustive list of cases in which DPIAs must be carried out:

- Automated processing for the purposes of profiling and similar activities that has legal effects or similarly significantly affects data subjects;  
- Processing on a large scale of special categories of personal data-data revealing racial or ethnic origin, political opinion, and the like—or of data relating to criminal convictions and offenses;  
- Systematic monitoring of a publicly accessible area on a large scale.  

The GDPR also requires that you must consult with your Data Protection Authority (DPA) before you begin any processing if you cannot identify sufficient processes to minimize high risks to data subjects.

**What are the responsibilities of Microsoft?**

Microsoft practices privacy by design and privacy by default in its engineering and business functions. As part of these efforts, Microsoft performs comprehensive privacy reviews on data processing operations that have the potential to cause impacts to the rights and freedoms of data subjects. Privacy teams embedded in the service groups review the design and implementation of services to ensure that personal data is processed in a respectful manner that accords with international law, user expectations, and our express commitments.

These privacy reviews tend to be granular — a particular service may receive dozens or hundreds of reviews. Microsoft rolls up these granular privacy reviews into Data Protection Impact Assessments (DPIAs) that cover major groupings of processing, which the Microsoft EU Data Protection Officer (DPO) then reviews. The DPO assesses the risks related to the data processing to ensure that sufficient mitigations are in place. If the DPO finds unmitigated risks, changes are recommended back to the engineering group. DPIAs will be reviewed and updated as data protection risks change.


Microsoft, as a processor, has a duty to assist controllers in ensuring compliance with the DPIA requirements laid out in the GDPR. To support our customers, relevant sections of Microsoft's DPIAs are abstracted and will be provided through this section in future updates with the intent of allowing controllers relying on Microsoft services to leverage the abstracts in order to create their own DPIAs.

## Breach Notification

The GDPR mandates notification requirements for data controllers and processors for a breach of personal data. As a data processor, Microsoft ensures that customers are able to meet the GDPR's breach notification requirements. Data controllers are responsible for assessing risks to data privacy and determining whether a breach requires notification of a customer's DPA. Microsoft provides the information needed to make that assessment. More information about how Microsoft detects and responds to a breach of personal data in [Data Breach Notification Under the GDPR](gdpr-breach-notification.md).

### Breach notification FAQs

**What constitutes a breach of personal data under the GDPR?**

Personal data means any information related to an individual that can be used to identify them directly or indirectly. A personal data breach is 'a breach of security leading to the accidental or unlawful destruction, loss, alteration, unauthorized disclosure of, or access to, personal data transmitted, stored, or otherwise processed.'

**What are your responsibilities as the controller?**

If a breach of personal data that is likely to result in a high risk to the rights and freedoms of individuals (such as discrimination, identity theft, fraud, financial loss, or damage to their reputation) occurs, the GDPR requires you to:

- Notify the appropriate Data Protection Authority (DPA) within 72 hours of becoming aware of it—for example, after Microsoft notifies you. If you don't notify the DPA within that time period, you'll need to explain why to the DPA. This notice to the DPA is required even where there is a risk to individuals that is not likely to result in a high risk.
- Notify the data subjects of the breach without undue delay.
- Document the breach including a description of the nature of the breach—such as how many people were impacted, the number of data records affected, the consequences of the breach, and any remedial action your organization is proposing or took.

**What are the responsibilities of Microsoft as the processor?**

After we become aware of a personal data breach, the GDPR requires us to notify you without undue delay. Where Microsoft is a processor our obligations reflect both GDPR requirements and our standard, worldwide contractual provisions. We consider that all confirmed personal data breaches are in scope; there is no risk of harm threshold. We will notify our customers whether the data breach was suffered by Microsoft directly or by any of our sub-processors. We have processes in place to quickly identify and contact security incident personnel you've identified in your organization. In addition, all sub-processors are contractually obliged to report their own breaches to Microsoft, and provide guarantees to that effect.

**How will MIcrosoft detect a data breach?**

All our services and personnel follow internal incident management procedures to ensure that we take proper precautions to avoid data breaches in the first place. However, in addition, Online Services have specific security controls in place across our platforms to detect data breaches in the rare event that they occur.

**How will Microsoft respond to a data breach?**

To support you for a breach of personal data Microsoft has:
    - Security personnel trained on the specific procedures to follow.
    - Has policies, procedures, and controls in place to ensure that Microsoft maintains detailed records. This response includes documentation that captures the facts of the incident, its effects, and remedial action, as well as tracking and storing information in our incident management systems.

**How will Microsoft notify me in the event of a data breach?**

Microsoft has policies and procedures in place to notify you promptly. To satisfy your notice requirements to the DPA, we will provide a description of the process we used to determine if a breach of personal data has occurred, a description of the nature of the breach and a description of the measures we took to mitigate the breach.

## Accountability Readiness Checklists for the GDPR

These [checklists](gdpr-arc.md) provide a convenient way to access information you may need to support the GDPR using Microsoft products. You can manage checklist items with [Microsoft Compliance Manager](compliance-manager.md) by referencing the Control ID and Control Title under Customer Managed Controls in the GDPR tile.

## GDPR FAQs

**Does Microsoft make commitments to its customers with regard to the GDPR?**

Yes. The GDPR requires  controllers (such as organizations using Microsoft's enterprise online services) only use processors (such as Microsoft) that provide sufficient guarantees to meet key requirements of the GDPR. Microsoft has taken the proactive step of providing these commitments to all Volume Licensing customers as part of their agreements.

**How does Microsoft help me comply?**

Microsoft provides tools and documentation to support your GDPR accountability. This includes support for Data Subject Rights, performing your own Data Protection Impact Assessments, and working together to resolve personal data breaches.

**What commitments are in the GDPR Terms?**

Microsoft's GDPR Terms reflect the commitments required of processors in Article 28. Article 28 requires that processors commit to:

- Only use subprocessors with the consent of the controller and remain liable for subprocessors.
- Process personal data only on instructions from the controller, including with regard to transfers.
- Ensure that persons who process personal data are committed to confidentiality.
- Implement appropriate technical and organizational measures to ensure a level of personal data security appropriate to the risk.
- Assist controllers in their obligations to respond to data subjects' requests to exercise their GDPR rights.
- Meet the breach notification and assistance requirements.
- Assist controllers with data protection impact assessments and consultation with supervisory authorities.
- Delete or return personal data at the end of provision of services.
- Support the controller with evidence of compliance with the GDPR.

**Under what basis does Microsoft facilitate the transfer of personal data outside of the EU?**

Microsoft has long used the Standard Contractual Clauses (also known as the Model Clauses) as a basis for transfer of data for its enterprise online services. The Standard Contractual Clauses are standard terms provided by the European Commission that can be used to transfer data outside the European Economic Area in a compliant manner. Microsoft has incorporated the Standard Contractual Clauses into all of our Volume Licensing agreements via the [Online Services Terms](http://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46). The Article 29 Working Party has found Microsoft's implementation of the Standard Contractual Clauses are compliant. And when the EU-US Privacy Shield became available, Microsoft was the first company to certify. See [Microsoft's certification to the Privacy Shield](https://www.privacyshield.gov/participant?id=a2zt0000000KzNaAAK&status=Active), and read the [Online Services Terms](http://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=46). The EU-US Privacy Shield helps customers that want to transfer their data to the US do so in a manner consistent with their data protection obligations.

**What are the other Microsoft compliance offerings?**

As a global company with customers in nearly every country in the world, Microsoft has a robust compliance portfolio to assist our customers. To view a complete list of our compliance offerings including FedRamp, HIPAA/HITECH, ISO 27001, ISO 27002, ISO 27018, NIST 800-171, UK G-Cloud, and many others visit our [compliance offering topics](offering-home.yml).

**How will GDPR affect my company?**

The GDPR imposes a wide range of requirements on organizations that collect or process personal data, including a requirement to comply with six key principles:

- *Transparency*, *fairness*, and *lawfulness* in the handling and use of personal data. You will need to be clear with individuals about how you are using personal data and will also need a "lawful basis" to process that data.
- Limiting the processing of personal data to *specified*, *explicit*, and *legitimate purposes*. You will not be able to reuse or disclose personal data for purposes that are not "compatible" with the purpose for which the data was originally collected.
- *Minimizing the collection and storage of personal data* to that which is adequate and relevant for the intended purpose.
- Ensuring the *accuracy of personal data* and enabling it to be *erased or rectified*. You will need to take steps to ensure that the personal data you hold is accurate and can be corrected if errors occur.
- *Limiting the storage of personal data*. You will need to ensure that you retain personal data only for as long as necessary to achieve the purposes for which the data was collected.
- Ensuring *security*, *integrity*, and *confidentiality of personal data*. Your organization must take steps to keep personal data secure through technical and organizational security measures.

You will need to understand what your organization's specific obligations are to the GDPR are and how you will meet them, though Microsoft is here to help you on your GDPR journey.

**What rights must companies enable under GDPR?**

The GDPR provides EU residents with control over their personal data through a set of 'data subject rights'. This includes the right to:

- Access information about how personal data is used.
- Access personal data held by an organization.
- Have incorrect personal data deleted or corrected.
- Have personal data rectified and erased in certain circumstances (sometimes referred to as the "right to be forgotten").
- Restrict or object to automated processing of personal data.
- Receive a copy of personal data.

**What are Processors and Controllers?**

A controller is a natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data. A processor is a natural or legal person, public authority, agency, or other body, which processes personal data on behalf of the controller.

**Does the GDPR apply to Processors and Controllers?**

Yes, the GDPR applies to both controllers and processors. Controllers must only use processors that take measures to meet the requirements of the GDPR. Under the GDPR, processors face additional duties and liability for noncompliance, or acting outside of instructions provided by the controller, as compared to the Data Protection Directive. Processor duties include, but are not limited to:

- Processing data only as instructed by the controller.
- Using appropriate technical and organizational measures to protect personal data.
- Assisting the controller with data subject requests.
- Ensuring subprocessors it engages meet these requirements.

**How much can companies be fined for noncompliance?**

Companies can be fined up to &euro;20m or 4% of annual global turnover, whichever is greater, for failure to meet certain GDPR requirements. Additional individual remedies could increase your risk if you fail to adhere to GDPR requirements.

**Does my business need to appoint a Data Protection Officer (DPO)?**

It depends on several factors identified within the regulation. Article 37 of the GDPR states that controllers and processors shall designate a data protection officer in any case where: (a) the processing is carried out by a public authority or body, except for courts acting in their judicial capacity; (b) the core activities of the controller or the processor consist of processing operations which, by virtue of their nature, their scope and/or their purposes, require regular and systematic monitoring of data subjects on a large scale; or (c) the core activities of the controller or the processor consist of processing on a large scale of special categories of data pursuant to Article 9 and personal data relating to criminal convictions and offenses referred to in Article 10.

**How much will it cost to meet compliance with the GDPR?**

Meeting compliance with the GDPR will cost time and money for most organizations, though it may be a smoother transition for those who are operating in a well-architected cloud services model and have an effective data governance program in place.

**How do I know if the data that my organization is processing is covered by the GDPR?**

The GDPR regulates the collection, storage, use, and sharing of 'personal data'. Personal data is defined broadly under the GDPR as any data that relates to an identified or identifiable natural person.

Personal data can include, but is not limited to, online identifiers (for example, IP addresses), employee information, sales databases, customer services data, customer feedback forms, location data, biometric data, CCTV footage, loyalty scheme records, health, and financial information and much more. It can even include information that does not appear to be personal-such as a photo of a landscape without people-where that information is linked by an account number or unique code to an identifiable individual. And even personal data that has been pseudonymized can be personal data if the pseudonym can be linked to a particular individual. 

Processing of certain "special" categories of personal data – such as personal data that reveals a person's racial or ethnic origin, or concerns their health or sexual orientation – is subject to more stringent rules than the processing of "ordinary" personal data. This evaluation of personal data is highly fact-specific, so we recommend engaging an expert to evaluate your specific circumstances.

**My organization is only processing data on behalf of others. Does it still need to comply with the GDPR?**

Yes. Although the rules differ somewhat, the GDPR applies to organizations that collect and process data for their own purposes ('controllers') as well as to organizations that process data on behalf of others ('processors'). This requirement is a shift from the existing Data Protection Directive, which applies to controllers.

**What specifically is deemed personal data?**

Personal data is any information relating to an identified or identifiable person. There is no distinction between a person's private, public, or work roles. Personal data can include:

- Name
- Home address
- Work address
- Telephone number
- Mobile number
- Email address
- Passport number
- National ID card
- Social Security Number (or equivalent)
- Driver's license
- Physical, physiological, or genetic information
- Medical information
- Cultural identity
- Bank details / account numbers
- Tax file number
- Work address
- Credit/Debit card numbers
- Social media posts
- IP address (EU region)
- Location / GPS data
- Cookies

**Am I allowed to transfer data outside of the EU?**

Yes, however the GDPR strictly regulates transfers of personal data of European residents to destinations outside the European Economic Area. You may need to set up a specific legal mechanism, such as a contract, or adhere to a certification mechanism in order to enable these transfers. Microsoft details the mechanisms we use in the Online Services Terms.

**I have data retention requirements through compliance. Do these requirements override the right to erasure?**

Where there are legitimate grounds for continued processing and data retention, such as 'for compliance with a legal obligation, which requires processing by Union or Member State law to which the controller is subject' (Article 17(3)(b)), the GDPR recognizes that organizations may be required to retain data. You should, however, make sure you engage your legal counsel to ensure that the grounds for retention are weighed against the rights and freedoms of the data subjects, their expectations at the time the data was collected, etc.

**Does the GDPR deal with encryption?**

Encryption is identified in the GDPR as a protective measure that renders personal data unintelligible when it is affected by a breach. Therefore, whether or not encryption is used may impact requirements for notification of a personal data breach. The GDPR also points to encryption as an appropriate technical or organizational measure in some cases, depending on the risk. Encryption is also a requirement through the Payment Card Industry Data Security Standard and part of the strict compliance guidelines specific to the financial services industry. Microsoft products and services such as Azure, Dynamics 365, Enterprise Mobility + Security, Office Microsoft 365, SQL Server/Azure SQL Database, and Windows 10 offer robust encryption for data in transit and data at rest.

**How does the GDPR change an organization's response to personal data breaches?**

The GDPR will change data protection requirements and make stricter obligations for processors and controllers regarding notice of personal data breaches. Under the new regulation, the processor must notify the data controller of a personal data breach, after having become aware of it, without undue delay. Once aware of a personal data breach, the controller must notify the relevant data protection authority within 72 hours. If the breach is likely to result in a high risk to the rights and freedoms of individuals, controllers will also need to notify impacted individuals without undue delay. Additional guidance on this topic is being developed by the EU's Article 29 Working Party.

Microsoft products and services—such as Azure, Dynamics 365, Enterprise Mobility + Security, Microsoft Office 365, and Windows 10—have solutions available today to help you detect and assess security threats and breaches and meet the GDPR's breach notification obligations.

## Additional resources

- [Address your needs around GDPR with one of our global partners offering Microsoft-based solutions](https://aka.ms/findgdprpartner)
- [Know how Microsoft manages your data, where it's located, who can access it and the terms, and more.](https://www.microsoft.com/trust-center/privacy)
- [Learn how Microsoft adheres to the principles of the EU-U.S. Privacy Shield framework](https://blogs.microsoft.com/eupolicy/2016/07/11/eu-u-s-privacy-shield-progress-for-privacy-rights/)
- [How Microsoft Detects and Responds to a Breach of Personal Data, and Notifies You Under the GDPR](https://www.microsoft.com/trust-center/privacy/gdpr-data-breach)
- [Assess your GDPR readiness today](https://discover.microsoft.com/gdpr-readiness-assessment/)
