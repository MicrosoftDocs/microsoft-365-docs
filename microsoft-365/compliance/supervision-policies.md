---
title: "Communication supervision in Microsoft 365 (Preview)"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
description: "Learn about communication supervision in Microsoft 365"
---

# Communication supervision in Microsoft 365 (Preview)

Communication supervision in Microsoft 365 allows you to capture employee communications for examination and remediation by designated reviewers. You can define specific policies to capture internal and external email, Microsoft Teams, or 3rd-party communications in your organization. Reviewers can examine the messages to make sure that they are compliant with your organization's message standards and resolve them according to their importance and severity.

Supervision policies help you overcome many modern compliance challenges associated with internal and external communications, including:

- Monitoring increasing types of communication channels
- The increasing volume of message data
- Regulatory enforcement & the risk of fines

In some organizations, there may be a separation of duties between IT support and the compliance management group. Microsoft 365 supports the separation between supervision policy feature configuration and the configuration of policies for captured communications. For example, the IT group for an organization may be responsible for setting up role permissions and groups to support supervision policies configured and managed by the organization's compliance team.

For a quick overview of supervision policies, see the [supervision policy video](https://youtu.be/C3Y8WZ7o_dI) on the [Microsoft Mechanics channel](https://www.youtube.com/user/OfficeGarageSeries).

To learn more about upcoming communication supervision feature improvements and availability, see the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap).

## Scenarios for communication supervision

Communication supervision policies can assist monitoring communications in your organization in several areas:

- **Corporate policies**

    Employees must comply with acceptable use, ethical standards, and other corporate policies in all their business-related communications. Communication supervision policies can detect policy violations and help you take corrective actions to help mitigate these types of incidents. For example, you could monitor your organization for potential human resources violations such as harassment or the use of inappropriate or offensive language in employee communications.

- **Risk management**

    Organizations are responsible to all communications distributed throughout their infrastructure and corporate network systems. Using communications supervision policies to help identify and manage potential legal exposure and risk can help minimize risks before they can damage corporate operations. For example, you could monitor your organization for unauthorized communications for confidential projects such as upcoming acquisitions, mergers, earnings disclosures, reorganizations, or leadership team changes.

- **Regulatory compliance**

    Most organizations must comply with some type of regulatory compliance standards as part of their normal operating procedures. These regulations often require organizations to implement some type of supervisory or oversight process for messaging that is appropriate for their industry. The Financial Industry Regulatory Authority (FINRA) Rule 3110 is a good example of a requirement for organizations to have supervisory procedures in place to monitor the activities of its employees and the types of businesses in which it engages. Another example may be a need to monitor broker-dealers in your organization to safeguard against potential money-laundering, insider trading, collusion, or bribery activities. Communication supervision policies can help your organization meet these requirements by providing a process to both monitor and report on corporate communications.

## Communication supervision workflow

Communication supervision helps you address common pain points associated with complying with internal policies and regulatory compliance requirements. With intelligent policy templates and a flexible workflow, you can use actionable insights to quickly resolve detected communication issues. Identifying and resolving communication issues with supervision in Microsoft 365 uses the following workflow:

WORKFLOW ARTWORK

### Configure

In this workflow step, you identify your compliance requirements and configure applicable supervision policies. You can choose from the following policy types: 

- **Offensive language and anti-harassment**: Use the *Monitor for offensive language* template to quickly create a supervision policy that uses an abusive language machine learning model to automatically detect content that may be considered as harassment.
- **Sensitive information**: Use the *Monitor for sensitive info* template to create a policy to monitor communications containing defined sensitive information types or keywords to help make sure important data isn't shared with people that shouldn't have access.
- **Regulatory compliance**: Use the FINRA info template to... 
- **Custom policy**: Custom policies allow you to configure specific communication channels, individual detection conditions, and the amount of content to review in your organization.

### Investigate

In this step, you look deeper into the issues detected as matching your supervision policies. This step includes the following actions: 

- **Alerts**:
- **Issue management**: 
- **Document review**:
- **Reviewing user activity history**:

### Resolve

You resolve supervision issues you've investigated using the following remediation options:

- Resolve
- Tag
- Notify the user
- Escalate to another reviewer
- Mark as a false positive
- Open a case in other Microsoft 365 compliance solutions:
    - Insider risk management case
    - Data investigation case
    - Advanced eDiscovery case

### Monitor


## Ready to get started?

To configure communication supervision for your Microsoft 365 organization, see [Configure communication supervision for your Microsoft 365 organization (Preview)](configure-supervision-policies.md). To configure communication supervision in your Office 365 organization, see [Configure communication supervision in Office 365](supervision-configure-office-365.md).
