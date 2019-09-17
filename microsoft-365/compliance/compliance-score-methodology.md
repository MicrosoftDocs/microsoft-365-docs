---
title: "Compliance Score Methodology"
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
description: "Microsoft Compliance Manager is a free workflow-based risk assessment tool in the Microsoft Service Trust Portal. Compliance Manager enables you to track, assign, and verify regulatory compliance activities related to Microsoft cloud services."
---

# Compliance Score Methodology (Preview)

> [!NOTE]
> The Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. No service can guarantee that you are compliant with a standard or regulation, and the Compliance Score should not be interpreted as a guarantee in any way.

The Compliance Manager dashboard displays a total compliance score for Assessments in each Assessment tile. This is the overall Compliance Score for the Assessment and is the accumulation of points received for each implemented and tested control in the Assessment. For a new Assessment, the Compliance Score has an initial value for the included Microsoft-managed controls tested by independent third parties. Compliance Score can help prioritize which Assessments and controls to focus on to improve your overall compliance posture.

The displayed Compliance Score values for the control are applied *in their entirety* to the total Compliance Score on a pass/fail basis. Either the control is implemented and passes the subsequent assessment test or it does not. There is no partial credit for a partial implementation. Assigned points are added to the Compliance Score when the Control has:

- **Implementation Status** equals **Implemented** or **Alternative Implementation** and,
- **Test Result** equals **Passed**.

## Compliance score
  
In Compliance Manager, baseline scores move from the Control level to the Action Item level. Scores are based on the purpose (Detective, Preventative, or Corrective) and enforcement (Discretionary or Mandatory) of the Action Item.

Action Items are mapped to Controls, and when a Control is mapped to multiple Action Items, the sum of the Action Item Scores is the Control Score. The sum of the Control Score for all Controls in a given Assessment is the Assessment Score. The average score of all Assessments in a Group is the Compliance Score for that group.
  
### Mandatory or discretionary Controls
  
 **Mandatory Controls** are actions that cannot be bypassed either intentionally or accidentally. An example of a common mandatory control is a centrally managed password policy that sets requirements for password length, complexity, and expiration. Users must comply with these requirements to access the system.
  
 **Discretionary Controls** rely upon users to understand policy and act accordingly. For example, a policy requiring users to lock their computer when they leave it is a discretionary control because it relies on the user.
  
### Preventative, detective, or corrective Controls
  
 **Preventative Controls** are actions that prevent specific risks. For example, protecting information at rest using encryption is a preventative control against attacks, breaches. Separation of duties is a preventative control to manage conflict of interest and to guard against fraud.
  
 **Detective Controls** are actions that actively monitor systems to identify irregular conditions or behaviors that represent risk or that can be used to detect intrusions or determine if a breach has occurred. System access auditing and privileged administrative actions auditing are types of detective monitoring controls. Regulatory compliance audits are a type of detective control used to find process issues.
  
**Corrective Controls** are Controls that try to keep the adverse effects of a security incident to a minimum, take corrective action to reduce the immediate effect, and reverse the damage, if possible. Privacy incident response is a corrective control to limit damage and restore systems to an operational state after a breach.
  
Each Control has an assigned value in Compliance Manager based on the risk that it represents:

|**Type**|**Assigned Score**|
|:-----|:-----|
| Preventative Mandatory | 27 |
| Preventative Discretionary | 9 |
| Detective Mandatory | 3 |
| Detective Discretionary | 1 |
| Corrective Mandatory | 3 |
| Corrective Discretionary | 1 |
  
## Action Item workflow

Here's the basic workflow for a typical Action Item:
  
1. The Compliance, Risk, Privacy, and/or Data Protection Officer of an organization assigns a task to someone in the organization to implement a control. That person could be:

    - A business policy owner.
    - An IT implementer.
    - Another individual in the organization with responsibility to perform the task.

2. That individual performs the tasks necessary to implement the control, uploads evidence of implementation into Compliance Manager, and marks the Control tied to the Action Item as implemented. Once these tasks are completed, they assign the Action Item to an Assessor for validation.

    Assessors can be:

    - Internal assessors that perform validation of controls within an organization.
    - External assessors that examine, verify, and certify compliance, such as the third-party independent organizations that audit Microsoft's cloud services.

3. The Assessor validates the control and examines the evidence and marks the control as assessed and the results of the assessment.

Once all the Controls associated with an Assessment are assessed, the Assessment is complete.