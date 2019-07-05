---
title: Analyze incidents in Microsoft 365 
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

# Analyze incidents 

**Applies to**:
- Microsoft 365

Analyze incidents that affect your network, understand what they mean, and collate evidence to resolve them. 

When you analyze an incident, you'll see:
- Incident details
- Incident comments and actions
- Tabs (alerts, machines, investigations, evidence, graph)

## Analyze incident details 
Click an incident to see the **Incident pane**. Select **Open incident page** to see the incident details and related information (alerts, machines, users, mailboxes, investigations, evidence, graph). 

### Alerts
You can investigate the alerts and see how they were linked together in an incident. 
Alerts are grouped into incidents based on the following reasons:
- Automated investigation - The automated investigation triggered the linked alert while investigating the original alert 
- File characteristics - The files associated with the alert have similar characteristics
- Manual association - A user manually linked the alerts
- Proximate time - The alerts were triggered on the same machine within a certain timeframe
- Same file - The files associated with the alert are exactly the same
- Same URL - The URL that triggered the alert is exactly the same

You can also manage an alert and see alert metadata along with other information.


### Machines / Devices 
You can also investigate the machines that are part of, or related to a given incident. You can do further investigative work and remediation actions within Microsoft 365 security center. 

### Users / Identities
See users that have been identified to be part of, or related to a given incident. To do further investigative work, selecting the user will open the Microsoft Cloud Apps portal where you can take remediation actions.

### Mailboxes
Investigate mail that's been identified to be part of, or related to an incident. To do further investigative work, selecting the mail related alert will open Office 365 Advanced Threat Protection where you can take remediation actions.

### Investigations
Select **Investigations** to see all the automatic investigations launched by the system in response to the incident alerts.


### Going through the evidence
Microsoft Threat Protection automatically investigates all the incidents' supported events and suspicious entities in the alerts, providing you with auto-response and information about the important files, processes, services, and more. This helps quickly detect and block potential threats in the incident. 

Each of the analyzed entities will be marked as infected, remediated, or suspicious. 


## Visualizing associated cybersecurity threats 
Microsoft Threat Protection aggregates the threat information into an incident so you can see the patterns and correlations coming in from various data points. You can view such correlation through the incident graph.

### Incident graph
The **Graph** tells the story of the cybersecurity attack. For example, it shows you what was the entry point, which indicator of compromise or activity was observed on an entity.


You can click the circles on the incident graph to view the details of the malicious files, associated file detections, how many instances has there been worldwide, whether it’s been observed in your organization, if so, how many instances.


