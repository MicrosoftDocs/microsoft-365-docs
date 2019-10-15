---
title: View the results of an automated investigation in Microsoft Threat Protection 
description: During and after an automated investigation, you can view the results and key findings
keywords: automated, investigation, results, analyze, details, remediation, autoair
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
---

# View the results of an automated investigation in Microsoft Threat Protection

In Microsoft Threat Protection, when an automated investigation occurs, you can view details about that investigation during and after the automated investigation process. The investigation details view provides you with up-to-date status and the ability to approve any pending actions. 

![Investigation details](../images/mtp-air-investdetails.png)

## Open the investigation details view

You can open the investigation details view by selecting an item in the Action center, or by selecting an investigation from an incident details page.

### Select an item in the Action center

1. Go to [https://securityoperations.microsoft.com](https://securityoperations.microsoft.com) and sign in. 

2. In the navigation pane, choose **Action center**. 

3. On either the **Pending** or **History** tab, select an item.

### Open an investigation from an incident details page

1. Go to [https://securityoperations.microsoft.com](https://securityoperations.microsoft.com) and sign in. 

2. In the navigation pane, choose **Incidents**. 

3. Select an item in the list to open the incident details view.<br/>![Incident details](../images/mtp-incidentdetails-tabs.png)

4. On the **Investigations** tab, select an investigation in the list.

## Investigation details

The investigation details view resembles the following image:

![Investigation details](../images/mtp-air-investdetails.png)

In the Investigation details view, you can see information on the **Investigation graph**, **Alerts**, **Machines**, **Identities**, **Key findings**, **Entities**, **Log**, and **Pending actions** tabs, described in the following table.

|Tab	|Description |
|--------|--------|
|Investigation graph	|Provides a visual representation of the investigation. Depicts entities and lists threats found, along with alerts and whether any actions are awaiting approval.<p>You can click an item on the graph to view more details. For example, clicking the **Threats found** icon takes you to the **Key findings** tab. |
|Alerts	|Lists alerts associated with the investigation. Alerts can come from threat protection features on a user's machine, in Office apps, Cloud App Security, and other Microsoft 365 Threat Protection features.|
|Machines	|Lists machines included in the investigation along with remediation level.|
|Key findings	|Lists results from the investigation along with status and actions taken or pending. You can approve pending actions for devices and identities in on this tab.|
|Entities	|Lists user activities, files, processes, services, drivers, IP addresses, and persistence methods associated with the investigation, along with status and actions taken.|
|Log	|Provides a detailed view of all steps taken during the investigation, along with status.|
|Pending actions	|Lists items that require approval to proceed.|

## Remediation actions following automated investigation

When an automated investigation completes, a verdict is reached for every piece of evidence involved, and remediation actions are identified. In some cases, remediation actions are taken automatically; in other cases, remediation actions are pending approval. The following table lists possible verdicts and outcomes:

|Verdict	|Area	|Outcomes|
|------|------|------|
|Malicious	|Device (endpoints)<br/>Identity (user accounts)	|Remediation actions are taken automatically|
|Malicious	|Email content (URLs or attachments) | Recommended remediation actions are pending approval|
|Suspicious	|Device, identity, or email content |Recommended remediation actions are pending approval|
|Clean	|Device, identity, or email content	|No remediation actions are needed|

## Next steps

[Approve or reject actions related to automated investigation and remediation](mtp-autoir-actions.md)