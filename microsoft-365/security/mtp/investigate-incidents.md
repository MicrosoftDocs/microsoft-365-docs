---
title: Investigate incidents in Microsoft Threat Protection
description: Analyze incidents related to machines, users, and mailboxes.
keywords: incident, incidents, machines, devices, users, identities, mail, email, mailbox, investigation, graph, evidence
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Investigate incidents in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection


Investigate incidents that affect your network, understand what they mean, and collate evidence so that you can devise an effective remediation plan. 

You can start an investigation by selecting an incident from the queue. This opens the incident page where you'll find more information on:
- Incident details
- Incident comments and actions
- Tabs (alerts, machines, investigations, evidence, graph)

## Investigate incident details 
The incident page provides valauble insight on 

Seeing the severity and the affected entities 



From the incidents queue, click an incident to see the **Incident pane**. Select **Open incident page** to see the incident details and related information (alerts, devices, users, mailboxes, investigations, evidence).

![Image of incident details](../images/indicent-details.png)


### Alerts





uses sophisticated  

So whether they are events seen on the same machine or files that show similar characteristics, or alerts that were triggered on the same user within a certain timeframe, you'll be able to see all the related alerts in one place.


You can check all the alerts related to the incident and other information about them such as severity, entities that were involved in the alert, the detection source of the alerts (Azure ATP, Microsoft Defender ATP , Office  365 ATP) and the reason they were linked together. 

### Devices 
The devices tab lists all the devices where alerts related to the incident are seen. You can do further investigative work and remediation actions within Microsoft 365 security center.

### Users
See users that have been identified to be part of, or related to a given incident. To do further investigative work, selecting the user will open the Microsoft Cloud App Security portal where you can take remediation actions.


### Mailboxes
Investigate mail that's been identified to be part of, or related to an incident. To do further investigative work, selecting the mail related alert will open Office 365 Advanced Threat Protection where you can take remediation actions.

### Investigations
Select **Investigations** to see all the automatic investigations launched by the system in response to the incident alerts.


## Going through the evidence
Microsoft Threat Protection automatically investigates all the incidents' supported events and suspicious entities in the alerts, providing you with auto-response and information about the important files, processes, services, and more. This helps quickly detect and block potential threats in the incident. 

Each of the analyzed entities will be marked as infected, remediated, or suspicious. 



## Related topics
- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)