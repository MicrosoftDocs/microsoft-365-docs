---
title: "Microsoft Compliance Score (preview) calculation"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Understand how Microsoft Compliance Score calculates a personalized score based on actions taken to address risks and improve your compliance posture."
ms.custom: seo-marvel-apr2020
---

# Compliance Score (preview) calculation

> [!IMPORTANT]
> Recommendations from Compliance Score and Compliance Manager should not be interpreted as a guarantee of compliance. It is up to you to evaluate and validate the effectiveness of customer controls per your regulatory environment. These services are currently in preview and subject to the terms and conditions in the [Online Services Terms](https://go.microsoft.com/fwlink/?linkid=2108910). See also [Microsoft 365 licensing guidance for security and compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## How Compliance Score works

The Compliance Score dashboard displays a score that measures your progress in completing improvement actions within controls. Each action has a different impact on your score, depending on the potential risks involved. Your score can help prioritize which action to focus on to improve your overall compliance posture.

The displayed Compliance Score values for the control are applied *in their entirety* to your total score on a pass/fail basis. Either the control is implemented and passes the subsequent assessment test, or it doesn't. 

Points are added to your compliance score when the control has:

- **Implementation Status** equals **Implemented** or **Alternative Implementation**, and
- **Test Result** equals **Passed**.

A control score is the sum of points earned by taking improvement actions. The sum of your control scores is the assessment score. **The sum of your assessment scores is your overall compliance score.**

## Initial score based on Microsoft 365 data protection baseline
  
Compliance Score gives you an initial score based on the Microsoft 365 data protection baseline. This baseline is a set of controls that includes key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

The data protection baseline assessment (provided by default to all organizations) is used to calculate your initial score before you configure any other assessments. Upon your first visit, Compliance Score is already collecting signals from your Microsoft 365 solutions. You’ll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take.

Because every organization has specific needs, Compliance Score relies on you to set up and manage your own assessments to help minimize and mitigate risk as comprehensively as possible.

## How Compliance Score continuously assesses controls

Compliance Score automatically scans through your Microsoft 365 environment and detects your system settings, continuously and automatically updating your technical control status. Secure Score is the underlying engine that performs the monitoring.

Your control status is updated on your Compliance Score dashboard every 24 hours. Once you follow a recommendation to implement a control, you'll see the control status updated the next day.

For example, if you turn on multi-factor authentication (MFA) in the Azure AD portal, Compliance Score detects the setting and reflects that in the control access solution details. Conversely, if you didn't turn on MFA, Compliance Score flags that as a recommended action for you to take.

During public preview, continuous assessment is available to a portion of controls, but not all.

#### Learn more
[Read about Secure Score and how it works](../security/mtp/microsoft-secure-score-new.md).
  
## Control types and points

Compliance Score tracks two types of controls—controls you manage and controls Microsoft manages—each of which have points that contribute to your overall score:

1. **Your points** contribute to your compliance score based on controls managed by your organization.
2. **Microsoft managed points** contribute to your compliance score based on controls managed by Microsoft as a cloud service provider.

Controls are assigned a score value based on whether they're mandatory or discretionary, and whether they're preventative, detective, or corrective.

### Mandatory and discretionary controls

 - **Mandatory controls** are actions that can't be bypassed, either intentionally or accidentally. An example is a centrally managed password policy that sets requirements for password length, complexity, and expiration. Users must follow these requirements to access the system.
  
 - **Discretionary controls** rely upon users to understand policy and act accordingly. For example, a policy requiring users to lock their computer when they leave it is a discretionary control because it relies on the user.
  
### Preventative, detective, and corrective controls
  
 - **Preventative controls** address specific risks. For example, protecting information at rest using encryption is a preventative control against attacks and breaches. Separation of duties is a preventative control to manage conflict of interest and guard against fraud.
  
 - **Detective controls** actively monitor systems to identify irregular conditions or behaviors that represent risk, or that can be used to detect intrusions or breaches. System access auditing and privileged administrative actions auditing are types of detective monitoring controls. Regulatory compliance audits are a type of detective control used to find process issues.
  
- **Corrective controls** try to keep the adverse effects of a security incident to a minimum, take corrective action to reduce the immediate effect, and reverse the damage if possible. Privacy incident response is a corrective control to limit damage and restore systems to an operational state after a breach.
  
Each control has an assigned value in Compliance Score based on the risk it represents:

|**Type**|**Assigned score**|
|:-----|:-----|
| Preventative mandatory | 27 |
| Preventative discretionary | 9 |
| Detective mandatory | 3 |
| Detective discretionary | 1 |
| Corrective mandatory | 3 |
| Corrective discretionary | 1 |
  
![Compliance Score controls point values](../media/compliance-score-controls-scoring.png "Compliance Score controls point values")