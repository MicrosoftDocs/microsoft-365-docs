---
title: Breach Notification
description: Learn how Microsoft services protect against a personal data breach and how Microsoft responds and notifies you if a breach occurs.
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
ms.custom:
- seo-marvel-mar2020
titleSuffix: Microsoft GDPR
---

# GDPR Breach Notification

The General Data Protection Regulation (GDPR) introduces new rules for organizations that offer goods and services to people in the European Union (EU), or that collect and analyze data for EU residents no matter where you or your enterprise are located. Additional details can be found in the [GDPR Summary topic](gdpr.md). This document leads you to information on the completion of Breach Notifications under the GDPR using Microsoft products and services.

## What constitute a breach of personal data under the GDPR?

Personal data means any information related to an individual that can be used to identify them directly or indirectly. A personal data breach is 'a breach of security leading to the accidental or unlawful destruction, loss, alteration, unauthorized disclosure of, or access to, personal data transmitted, stored, or otherwise processed'.

## Terminology

Helpful definitions for GDPR terms used in this document:

- *Data Controller (Controller)*: A legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data.  
- *Personal data* and *data subject*: Any information relating to an identified or identifiable natural person (data subject); an identifiable natural person is one who can be identified, directly or indirectly.  
- *Processor*: A natural or legal person, public authority, agency, or other body, which processes personal data on behalf of the controller.  
- *Customer Data*: Data produced and stored in the day-to-day operations of running your business.

## Microsoft and Breach Notification

Microsoft takes its obligations under the General Data Protection Regulation (GDPR) seriously. A security incident/data breach refers to events such as unlawful access to customer's data stored on Microsoft equipment or in Microsoft facilities, or unauthorized access to such that has the potential to result in the loss, disclosure, or alteration of customer data.

As a data processor, Microsoft ensures that service customers are able to meet the GDPR's breach notification requirements as data controllers. Our notification provides the information needed to make that assessment. Microsoft notifies customers of any personal data breach, except for those cases where personal data is confirmed to be unintelligible (for example, encrypted data where integrity of the keys is confirmed).

Data controllers are responsible for assessing risks to data privacy and determining whether a breach requires notification of a customer's DPA. Microsoft provides the information needed, along with your GDPR compliance policy, to make that assessment.

Initial notification includes a description of the nature of the breach, approximate user impact, and mitigation steps (if applicable). If our investigation is not complete at the time of initial notification, we will indicate next steps and timelines for subsequent communication. For more information about how Microsoft detects and responds to a breach of personal data, see [Data Breach Notification Under the GDPR](https://servicetrust.microsoft.com/ViewPage/GDPRBreach) in the Service Trust Portal.

Details regarding breach notification for specific Microsoft products and services is given below.
  
1. **[Office 365](gdpr-breach-Office365.md)**  
    Microsoft invests extensively in systems, processes, and personnel to reduce the likelihood of personal data breach and to quickly detect and mitigate consequence of breach if it does occur. Additional details can be read at [Office 365 Investments in Data Security](https://docs.microsoft.com/microsoft-365/compliance/gdpr-breach-office365#office-365-investments-in-data-security).

    A customer may become aware of a breach and wish to contact Microsoft. In this case, notify Microsoft Support, which will then interface with engineering teams for more information.

2. **[Azure & Dynamics 365](gdpr-breach-azure-dynamics.md)**  
    Microsoft has a global, 24x7 incident response service that works to mitigate the effects of attacks against Microsoft Azure and Dynamics 365.

    - *Detection of Breaches*: Since both Microsoft and the customer have security obligations, Azure services employ a shared responsibility model to define security and operational accountabilities. Microsoft does not monitor or respond to security incidents within the customer's realm of responsibility. Customer incident response may involve collaboration with Azure [customer support](https://azure.microsoft.com/support/options/), given appropriate service contracts. Microsoft Azure also offers various services (for example, [Azure Defender](https://azure.microsoft.com/services/security-center/)) that customers can utilize for developing and managing security incident response.

        For a list of events that trigger a breach investigation in Microsoft Azure, see [Detection of Potential Breaches](https://docs.microsoft.com/microsoft-365/compliance/gdpr-breach-azure-dynamics#detection-of-potential-breaches). [Azure and Breach Notification under the GDPR](gdpr-breach-azure-dynamics.md) further details how Microsoft investigates, manages, and responds to security incidents within Azure.

    - *Data Breach Response*: Microsoft determines appropriate priority and severity levels of a breach by investigating the functional impact, recoverability, and information impact of the incident. Priority and severity may change over the course of the investigation, based on new findings and conclusions.
    Microsoft's security response team works closely with global legal advisors to help ensure that forensics are performed in accordance with legal obligations and commitments to customers. These processes are detailed in [Azure's Data Breach Response](https://docs.microsoft.com/microsoft-365/compliance/gdpr-breach-azure-dynamics#azures-data-breach-response).

    - *Customer Notification*: Microsoft Azure notifies customers and regulatory authorities of data breaches as required. Customer notices are delivered in no more than 72 hours from the time we declared a breach except for the following circumstances:

        - Microsoft believes the act of performing a notification increases the risk to other customers.
        - The 72-hour timeline may leave some incident details available. These details will be provided to you as the investigation proceeds.

        Further details can be found in [Customer Notification](https://docs.microsoft.com/microsoft-365/compliance/gdpr-breach-azure-dynamics#customer-notification).

3. **[Microsoft Support and Professional Services](gdpr-breach-Microsoft-Support-Professional-Services.md)**  
    The nature of professional services means that some data protection incidents may fall within the customer's realm of responsibility. When Microsoft Professional Services identifies a data protection incident, it follows documented industry standard response plan as outlined in [Scope & Limits of Data Protection Incident Response Process](https://docs.microsoft.com/microsoft-365/compliance/gdpr-breach-microsoft-support-professional-services#scope--limits-of-data-protection-incident-response-process).

## Breach notification admin tools

- **Set you organization's privacy contact**: Tenant Administrators can use the [Azure Active Directory Admin Portal](https://go.microsoft.com/fwlink/p/?linkid=2052736) to define your organization's privacy contact should Microsoft need to communicate with them.

## Learn more

- [Microsoft Trust Center](https://www.microsoft.com/trust-center/privacy/gdpr-overview)
