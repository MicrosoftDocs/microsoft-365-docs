---
title: Review alerts in Microsoft Defender for Endpoint
description: Review alert information, including a visualized alert story and details for each step of the chain.
keywords: incident, incidents, machines, devices, users, alerts, alert, investigation, graph, evidence
ms.service: microsoft-365-security
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
ms.date: 5/1/2020
ms.subservice: mde
search.appverid: met150
---

# Review alerts in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-managealerts-abovefoldlink)

The alert page in Microsoft Defender for Endpoint provides full context to the alert, by combining attack signals and alerts related to the selected alert, to construct a detailed alert story.

Quickly triage, investigate, and take effective action on alerts that affect your organization. Understand why they were triggered, and their impact from one location. Learn more in this overview.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4yiO5]

## Getting started with an alert

Selecting an alert's name in Defender for Endpoint will land you on its alert page. On the alert page, all the information will be shown in context of the selected alert. Each alert page consists of 4 sections:

1. **The alert title** shows the alert's name and is there to remind you which alert started your current investigation regardless of what you have selected on the page.
2. [**Affected assets**](#review-affected-assets) lists cards of devices and users affected by this alert that are clickable for further information and actions.
3. The **alert story** displays all entities related to the alert, interconnected by a tree view. The alert in the title will be the one in focus when you first land on your selected alert's page. Entities in the alert story are expandable and clickable, to provide additional information and expedite response by allowing you to take actions right in the context of the alert page. Use the alert story to start your investigation. Learn how in [Investigate alerts in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/investigate-alerts).
4. The **details pane** will show the details of the selected alert at first, with details and actions related to this alert. If you select any of the affected assets or entities in the alert story, the details pane will change to provide contextual information and actions for the selected object.

Note the detection status for your alert.

- Prevented: The attempted suspicious action was avoided. For example, a file either wasn't written to disk or executed.

  :::image type="content" source="images/detstat-prevented.png" alt-text="The page showing the prevention of a threat" lightbox="images/detstat-prevented.png":::

- Blocked: Suspicious behavior was executed and then blocked. For example, a process was executed but because it subsequently exhibited suspicious behaviors, the process was terminated.

  :::image type="content" source="images/detstat-blocked.png" alt-text="The page showing the blockage of a threat" lightbox="images/detstat-blocked.png":::

- Detected: An attack was detected and is possibly still active.

  :::image type="content" source="images/detstat-detected.png" alt-text="The page showing the detection of a threat" lightbox="images/detstat-detected.png":::

You can then also review the *automated investigation details* in your alert's details pane, to see which actions were already taken, as well as reading the alert's description for recommended actions.

:::image type="content" source="images/alert-air-and-alert-description.png" alt-text="The details pane with the alert description and automatic investigation sections highlighted" lightbox="images/alert-air-and-alert-description.png":::

Other information available in the details pane when the alert opens includes MITRE techniques, source, and additional contextual details.

> [!NOTE]
> If you see an *Unsupported alert type* alert status, it means that automated investigation capabilities cannot pick up that alert to run an automated investigation. However, you can [investigate these alerts manually](../defender/investigate-incidents.md#alerts).

## Review affected assets

Selecting a device or a user card in the affected assets sections will switch to the details of the device or user in the details pane.

- **For devices**, the details pane will display information about the device itself, like Domain, Operating System, and IP. Active alerts and the logged on users on that device are also available. You can take immediate action by isolating the device, restricting app execution, or running an antivirus scan. Alternatively, you could collect an investigation package, initiate an automated investigation, or go to the device page to investigate from the device's point of view.

   :::image type="content" source="images/device-page-details.png" alt-text="The details pane when a device is selected" lightbox="images/device-page-details.png":::

- **For users**, the details pane will display detailed user information, such as the user's SAM name and SID, as well as logon types performed by this user and any alerts and incidents related to it. You can select *Open user page* to continue the investigation from that user's point of view.

   :::image type="content" source="images/user-page-details.png" alt-text="The details pane when a  user is selected" lightbox="images/user-page-details.png":::

## Related topics

- [View and organize the incidents queue](view-incidents-queue.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
