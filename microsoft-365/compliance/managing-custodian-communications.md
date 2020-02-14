---
title: "Work with communications in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: "Advanced eDiscovery makes it easy to manage the legal hold notification workflow around notifying custodians in legal investigations."
---

# Work with communications in Advanced eDiscovery

Advanced eDiscovery allows legal departments to simplify their processes around tracking and distributing legal hold notifications. The custodian communications tool enables legal departments to manage and automate the entire legal hold process, from initial notifications, to reminders, and to escalations, all in one location.

## What is a legal hold notification?

A legal hold (also known as a *litigation hold*) notice is a notification sent from an organization’s legal department to employees, contingent staff, or custodians of data that may be relevant to a legal investigation. These notifications instruct custodians to preserve electronically stored information as well as any content that may be relevant to an active or impending legal matter. Legal teams must know that each custodian has received, read, understood, and has agreed to comply with the given instructions.

## The legal hold notification process

An organization has a duty to preserve relevant information when it learns about an impending litigation or regulatory investigation. To comply with the preservation requirements of an investigation, the organization should immediately inform potential custodians about their duty to preserve relevant information.

With Advanced eDiscovery, legal teams can create and customize their legal hold notification workflow. The custodian communications tool lets legal teams to configure the following notices and workflows:

1. **Issuance notice**: A legal hold notice is issued (or initiated) by a notification from the legal department to custodians who may have relevant information about the case matter. This notice instructs the custodians to preserve any information that may be needed for discovery.
   
2.	**Re-Issuance notice**: During a case, custodians may be required to preserve additional content (or less content) than was previously requested. For this scenario, you can update the existing hold notice and re-issue it to custodians.

3.	**Release notice**: Once a matter is resolved and the custodian is no longer subject to a preservation requirement, the custodian can be released from the case. Additionally, you can notify the custodian that they are no longer required to preserve content, and provide instructions about how to resume their normal work activity with regard to their data.

4. **Reminders and escalations**: In some instances, just issuing a notice isn't enough to satisfy legal discovery requirements. With each notification, legal teams can schedule a set of reminder and escalation workflows to automatically follow-up with unresponsive custodians.

    - **Reminders**:  After a legal hold notice has been issued or re-issued to a set of custodians, an organization can set up reminders to alert unresponsive custodians.

    - **Escalations**: In some cases, if a custodian remains unresponsive even after a set of reminders over a period of time, the legal team can set up an escalation workflow to notify unresponsive custodians and their manager.

## Role groups and permissions 

Legal teams can control and segregate their case activity using eDiscovery-related role groups and permissions in the Security & Compliance Center. 

To create and manage legal hold notifications, a user must be part of the following role groups:

- **eDiscovery Manager** - Members of this role group can create and manage eDiscovery cases. They can add and remove members, place custodians and content locations on hold, manage legal hold notifications, create and edit Content Searches associated with a case, export the results of a Content Search, and prepare search results for analysis in Advanced eDiscovery. There are two sub-groups in this role group. The difference between these subgroups is based on scope.

  - **eDiscovery Manager** - Can view and manage the eDiscovery cases they create or are a member of. If another eDiscovery Manager creates a case but doesn't add a second eDiscovery Manager as a member of that case, the second eDiscovery Manager won't be able to view or open the case on the eDiscovery page in the Security & Compliance Center. eDiscovery Managers can also access their cases in Advanced eDiscovery to perform analysis tasks.

  - **eDiscovery Administrator** - Can perform all case management tasks that an eDiscovery Manager can do. Additionally, an eDiscovery Administrator can:
    
    - View all cases that are listed on the eDiscovery page.
    - Manage any case in the organization after they add themselves as a member of the case.
    - Access case data in Advanced eDiscovery for any case in the organization.

For more information, see [Assign eDiscovery permissions in the Security & Compliance Center](assign-ediscovery-permissions.md).
