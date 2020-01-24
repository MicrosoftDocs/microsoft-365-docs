---
title: "Compliance Score calculation"
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
---

# Microsoft Compliance Score (Preview) calculation

> [!IMPORTANT]
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Recommendations from Compliance Score and Compliance Manager should not be interpreted as a guarantee of compliance. This service is currently in preview and is subject to the terms and conditions in the [Online Services Terms](https://go.microsoft.com/fwlink/?linkid=2108910).

## Overview

The Compliance Score dashboard displays a score that measures your progress in completing improvement actions within controls. Your points accrue when you complete actions.

Your score is calculated based on the completion of Microsoft-managed actions and customer-managed actions. Each action has a different impact on your score, depending on the potential risks involved, so the score can help prioritize which action to focus on to improve your overall compliance posture.

The displayed Compliance Score values for the control are applied *in their entirety* to your total score on a pass/fail basis. Either the control is implemented and passes the subsequent assessment test or it does not. Assigned points are added to Compliance Score when the control has:

- **Implementation Status** equals **Implemented** or **Alternative Implementation** and,
- **Test Result** equals **Passed**.

The sum of points earned by taking improvement actions is the control score. The sum of your control scores is the assessment score. The sum of your assessment scores is your overall compliance score

## Initial score based on Microsoft 365 data protection baseline
  
Compliance Score gives you an out-of-the-box score based on the Microsoft 365 data protection baseline, which is a set of controls that includes key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

## How Compliance Score continuously assesses controls

Compliance Score automatically scans through your Microsoft 365 environment and detects your system settings, continuously and automatically updating your technical control status. Compliance Score uses Secure Score as the underlying engine that performs the monitoring. [Learn more about Secure Score and how it works](../security/mtp/microsoft-secure-score.md).

Your control status is updated on your Compliance Score dashboard every 24 hours. Once you follow a recommendation to implement a control, you will see the control status updated the next day.

For example, if you turn on multi-factor authentication (MFA) in the Azure AD portal, Compliance Score detects the setting and reflects that in the control access solution details. Conversely, if you didn’t turn on MFA, Compliance Score flags that as a recommended action for you to take.

During public preview, continuous assessment is available to a portion of controls, but not all.
  
## Control types and points

Compliance Score tracks two types of controls—Microsoft-managed and customer-managed—each of which have points that contribute to your overall score:

1. **Customer-managed points** contribute to your compliance score based on controls managed by your organization.
2. **Microsoft-managed points** contribute to your compliance score based on controls managed by Microsoft as a cloud service provider.

Controls are assigned a score value based on whether they are mandatory or discretionary, and whether they are preventative, detective, or corrective—as described below.

### Mandatory and discretionary controls

 - **Mandatory controls** are actions that cannot be bypassed either intentionally or accidentally. An example is a centrally-managed password policy that sets requirements for password length, complexity, and expiration. Users must comply with these requirements to access the system.
  
 - **Discretionary controls** rely upon users to understand policy and act accordingly. For example, a policy requiring users to lock their computer when they leave it is a discretionary control because it relies on the user.
  
### Preventative, detective, and corrective controls
  
 - **Preventative controls** address specific risks. For example, protecting information at rest using encryption is a preventative control against attacks and breaches. Separation of duties is a preventative control to manage conflict of interest and guard against fraud.
  
 - **Detective controls** actively monitor systems to identify irregular conditions or behaviors that represent risk or that can be used to detect intrusions or determine if a breach occurs. System access auditing and privileged administrative actions auditing are types of detective monitoring controls. Regulatory compliance audits are a type of detective control used to find process issues.
  
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
  