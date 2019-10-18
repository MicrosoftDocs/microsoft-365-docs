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

# Microsoft Compliance Score calculation (Preview)

> [!IMPORTANT]
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Recommendations from Compliance Score and Compliance Manager should not be interpreted as a guarantee of compliance.

## Overview

The Compliance Score dashboard displays a total compliance score for successfully completed improvement actions. This is the overall compliance score is the accumulation of points received for each implemented and tested control in each assessment. 

For a new assessment, the Compliance Score has an initial value for the included Microsoft-managed controls tested by independent third parties. The Compliance Score is calculated based on Microsoft-managed action scores and customer-managed action scores. Compliance Score can help prioritize which Assessments and controls to focus on to improve your overall compliance posture.

The displayed Compliance Score values for the control are applied *in their entirety* to the total Compliance Score on a pass/fail basis. Either the control is implemented and passes the subsequent assessment test or it does not. Assigned points are added to the Compliance Score when the control has:

- **Implementation Status** equals **Implemented** or **Alternative Implementation** and,
- **Test Result** equals **Passed**.

## Microsoft 365 Data Protection Baseline
  
Compliance Score gives you an out-of-the-box score based on the Microsoft 365 Data Protection Baseline, which is a set of controls that includes key regulations and standards. 

This baseline includes....???

This baseline is not...???
  
## Control types

Compliance Score manages three types of controls:

1. **Microsoft-managed controls**: for each cloud service, these are controls for which only Microsoft has responsibility
2. **Customer-managed controls**: controls for which only you have responsibility
3. **Shared management controls**: controls where responsibility is shared between Microsoft and you. These are added by Microsoft, and you can edit or disable them

Customer-managed and Microsoft-managed controls each have points that contribute to your overall compliance score:

- **Customer-managed points** contribute to your compliance score based on controls managed by your organization.
- **Microsoft-managed points** contribute to your compliance score based on controls managed by Microsoft as a cloud service provider.

### Mandatory and discretionary controls

 **Mandatory Controls** are actions that cannot be bypassed either intentionally or accidentally. An example of a common mandatory control is a centrally managed password policy that sets requirements for password length, complexity, and expiration. Users must comply with these requirements to access the system.
  
 **Discretionary Controls** rely upon users to understand policy and act accordingly. For example, a policy requiring users to lock their computer when they leave it is a discretionary control because it relies on the user.
  
### Preventative, detective, and corrective controls
  
 **Preventative controls** address specific risks. For example, protecting information at rest using encryption is a preventative control against attacks and breaches. Separation of duties is a preventative control to manage conflict of interest and to guard against fraud.
  
 **Detective controls** actively monitor systems to identify irregular conditions or behaviors that represent risk or that can be used to detect intrusions or determine if a breach occurs. System access auditing and privileged administrative actions auditing are types of detective monitoring controls. Regulatory compliance audits are a type of detective control used to find process issues.
  
**Corrective controls** try to keep the adverse effects of a security incident to a minimum, take corrective action to reduce the immediate effect, and reverse the damage if possible. Privacy incident response is a corrective control to limit damage and restore systems to an operational state after a breach.
  
Each control has an assigned value in Compliance Score based on the risk it represents:

|**Type**|**Assigned score**|
|:-----|:-----|
| Preventative mandatory | 27 |
| Preventative discretionary | 9 |
| Detective mandatory | 3 |
| Detective discretionary | 1 |
| Corrective mandatory | 3 |
| Corrective discretionary | 1 |
  