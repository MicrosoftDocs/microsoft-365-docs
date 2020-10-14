---
title: Breach Notification Under the GDPR
description: How Microsoft protects against a personal data breach and how Microsoft responds and notifies you if a breach occurs.
keywords: Office 365, Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR
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
---

# Breach Notification Under the GDPR

As a data processor, Office 365 will ensure that our customers are able to meet the GDPR's breach notification requirements as data controllers. To that end, we are committed to the following actions:

- Providing customers with an ability to specify a dedicated privacy contact who will be notified in the event breach. Customers will be able to specify this contact in Azure Active Directory.
- Notifying customers of a personal data breach within 72 hours of a breach being declared. Notification will be done by e-mail to the contact specified by the customer
- Initial notification will include, at the least, a description of the nature of the breach, approximation of user impact, and mitigation steps (if applicable). If our investigation is not complete at the time of initial notification, we will indicate next steps and timelines for subsequent communication in our initial notification

Microsoft recognizes that data controllers are responsible for conducting risk assessments and determining whether a breach requires notification of the customer's DPA, and our notification to customers will provide the information needed to make that assessment. Microsoft will therefore notify customers of any personal data breach, except for those cases where personal data is confirmed to be unintelligible (for example, encrypted data where integrity of the keys is confirmed).

## Office 365 investments in data security

In addition to our commitment to provide timely notification of breach, Office 365 strongly invests in systems, processes, and personnel to reduce the likelihood of personal data breach and to quickly detect and mitigate consequence of breach if it does occur.

Here is a description of some of our investments in this space:

- **Access Control Systems.** Office 365 maintains a "zero-standing access" policy, which means that engineers do not have access to the service unless it is explicitly granted in response to a specific incident that requires elevation of access. Whenever access is granted it is done under the principle of least privilege: permission granted for a specific request only allows for a minimal set of actions required to service that request. To do this, Office 365 maintains strict separation between "elevation roles", with each role only allowing certain pre-defined actions to be taken. The "Access to Customer Data" role is distinct from other roles that are more commonly used to administer the service and is scrutinized most heavily before approval. Taken together, these investments in access control greatly reduce the likelihood that an engineer in Office 365 inappropriately accesses customer data.

- **Security Monitoring Systems and Automation:** Office 365 maintains robust, real-time security monitoring systems. Among other issues, these systems raise alerts for attempts to illicitly access customer data, or for attempts to illicitly transfer data out of our service. Related to the points about access control mentioned previously, our security monitoring systems maintain detailed records of elevation requests that are made, and the actions taken for a given elevation request. Office 365 also maintains automatic resolution investments that automatically act to mitigate threats in response to issues we detect, and dedicated teams for responding to alerts that cannot be resolved automatically. To validate our security monitoring systems, Office 365 regularly conducts red-team exercises in which an internal penetration testing team simulates attacker behavior against the live environment. These exercises lead to regular improvements to our security monitoring and response capabilities.

- **Personnel and Processes:** In addition to the automation described previously, Office 365 maintains processes and teams responsible for both educating the broader organization about privacy and incident management processes, and for executing those processes during a breach. For example, a detailed privacy breach Standard Operating Procedure (SOP) is maintained and shared with teams throughout the organization. This SOP describes in detail the roles and responsibilities both of individual teams within Office 365 and centralized security incident response teams. These responsibilities span both what teams need to do to improve their own security posture (conduct security reviews, integrate with central security monitoring systems, and other best practices), and what teams would need to do if an actual breach (rapid escalation to incident response, maintain and provide specific data sources that will be used to expedite the response process). Teams are also regularly trained on data classification, and correct handling and storage procedures for personal data.

The major takeaway is that Office 365 strongly invests in reducing the likelihood and consequences of personal data breach impacting our customers. If personal data breach does occur, we are committed to rapidly notifying our customers once that breach is confirmed.

## What to expect in the event of breach

The section above describes the investments Office 365 takes to reduce the likelihood of data breach. In the unlikely event that breach does occur, customers should expect a predictable experience in terms of the following responses:

- Consistent incident response lifecycle within Office 365. As described above, Office 365 maintains detailed incident response SOPs describing how teams should prepare for breach and how they should operate if a breach does occur. This ensures that our protections and processes apply throughout the service.

- Consistent criteria for notifying customers. Our notification criteria focus on Confidentiality, Integrity, and Availability of customer data. Office 365 will directly notify customers if either the confidentiality or integrity of customer data is impacted. That is, we will notify customers if their data is accessed without proper authorization, or if there is inappropriate destruction or loss of data. Office 365 will also report issues impacting data availability, although this action is usually done through the Service Health Dashboard (SHD).

- Consistent notification details. When Office 365 does communicate regarding data breach, customers can expect specific details to be communicated: at minimum, we will provide the following details:

    - Timing of the breach and timing of breach awareness
    - The approximate number of users impacted
    - The type of user data that was breached
    - Actions needed to mitigate the breach, either by the controller or by the processor

Customers should also note that Office 365, as a data processor, will not determine the risk of data breach. Whenever personal data breach is detected, we will notify our customers and provide them with the details they need to accurately determine risk to impacted users and to decide whether further reporting to regulatory authorities is required. To that end, data controllers are expected to determine the following about the incident:

- Breach severity (that is, risk determination)
- Whether end users need to be notified
- Whether regulators (DPAs) need to be notified
- Specific steps that will be taken by the controller to mitigate the consequences of breach

## Contacting Microsoft

In some scenarios, a customer may become aware of a breach and may wish to notify Microsoft. The current protocol is for customers to notify Microsoft Support, which will then interface with engineering teams for more information. In this scenario, Microsoft engineering teams are similarly committed to providing the information customers need, through their support contact, in a timely fashion.

## Call to action for customers

As noted previously, Office 365 is committed to notifying customers within 72 hours of breach declaration. The customer's tenant administrator will be notified. Additionally, Office 365 recommends that customers designate a Global Privacy Contact alias, which can be done in the Azure Active Directory portal. In the event of personal data breach, this alias may be e-mailed in addition to the notification that will be sent to administrators.

The customer's privacy contact can be an individual within the organization, a distribution list (DL), or someone entirely outside of the organization. Office 365 only asks that customers provide an e-mail address for this contact, and customers will be able to specify this address in the Azure Active Directory portal, under the "Global Privacy Contact" field. This field is related to, but distinct from, the existing "Technical Contact" field in Azure Active Directory. If customers choose to specify a DL for this contact, they should ensure that the DL is configured to enable receipt of messages from external senders.

To summarize, Office 365 asks customers to do the following to receive the benefits of our breach notification processes:

- Decide on a contact to receive e-mail notifications regarding personal data breach. This contact should be aware of the controller's requirements under GDPR and should be prepared to interface with the organization's DPO and potentially the DPA shortly after receiving notification. Tenant administrators will also receive breach notifications and should similarly be aware of the controller's requirements under GDPR.
- Enter the privacy contact's e-mail address into the Azure Active Directory portal. If no Global Privacy Contact information is provided, Microsoft will only notify the tenant administrator
