---
title: Resolve incidents with guided responses with Microsoft Copilot for Security in Microsoft Defender XDR
description: Resolve incidents with guided responses from Microsoft Copilot for Security in Microsoft Defender XDR.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, incident response playbooks, remediate incident, remediation actions, incident solution, resolve incidents, guided responses, security copilot guided response, copilot in security guided response, security copilot guided response in Microsoft Defender XDR, Microsoft Copilot for Security
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 03/01/2024
---

# Resolve incidents with guided responses from Microsoft Copilot for Security in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

[Microsoft Copilot for Security](/security-copilot/microsoft-security-copilot) in Microsoft Defender XDR supports incident response teams in immediately resolving incidents with guided responses. Copilot for Security and Microsoft Defender XDR use AI and machine learning capabilities to contextualize an incident and learn from previous investigations to generate appropriate response actions.

Responding to incidents in Microsoft Defender XDR often requires familiarity with the portal's available actions to stop attacks. In addition, new incident responders might have different ideas of where and how to start responding to incidents. The guided response capability of Copilot for Security in Microsoft Defender XDR allows incident response teams at all levels to confidently and quickly apply response actions to resolve incidents with ease.

This guide outlines how to access the guided response capability, including information on providing feedback about the responses.

> [!NOTE]
> The guided response capability is also available in the Copilot for Security standalone experience through the Microsoft Defender XDR plugin. Know more about [preinstalled plugins in Microsoft Security Copilot](/security-copilot/manage-plugins#preinstalled-plugins).

## Apply guided responses to resolve incidents

Guided responses recommend actions in the following categories:

- Triage - includes a recommendation to classify incidents as informational, true positive, or false positive
- Containment - includes recommended actions to contain an incident
- Investigation - includes recommended actions for further investigation
- Remediation - includes recommended response actions to apply to specific entities involved in an incident

Each card contains information about the recommended action, including the entity where the action needs to be applied and why the action is recommended. The cards also emphasize when a recommended action was done by automated investigation like [attack disruption](automatic-attack-disruption.md) or [automated investigation response](m365d-autoir.md).

**[INSERT SCREENSHOT OF AUTOMATION CARD]**

The guided response cards can be sorted based on the available status for each card. You can select a specific status when viewing the guided responses by clicking on **Status** and selecting the appropriate status you want to view. All guided response cards regardless of status are shown by default.

 :::image type="content" source="../../media/copilot-in-defender/guided-response/fig2-guided-responses-copilot.png" alt-text="Screenshot highlighting the status of responses in the Copilot pane in the Microsoft Defender XDR incident page." lightbox="../../media/copilot-in-defender/guided-response/fig2-guided-responses-copilot.png":::

To use guided responses, perform the following steps:

1. Open an incident page. Copilot automatically generates guided responses upon opening an incident page. The Copilot pane appears on the right side of the incident page, showing the guided response cards.

 :::image type="content" source="../../media/copilot-in-defender/guided-response/fig3-guided-responses-copilot.png" alt-text="Screenshot highlighting the Copilot pane with the guided responses in the Microsoft Defender XDR incident page." lightbox="../../media/copilot-in-defender/guided-response/fig3-guided-responses-copilot.png":::

2. Review each card before applying the recommendations. You have the option to apply, skip, or view the recommended action in the Copilot for Security portal. To view these options, select the three dots on top of a response card.

 :::image type="content" source="../../media/copilot-in-defender/guided-response/fig4-guided-responses-copilot.png" alt-text="Screenshot highlighting the options available to users for each guided response card in the Copilot pane in Microsoft Defender XDR." lightbox="../../media/copilot-in-defender/guided-response/fig4-guided-responses-copilot.png":::

3. To apply a recommended action, select the desired action from the dropdown menu or the action button found on each card.

 :::image type="content" source="../../media/copilot-in-defender/guided-response/fig5-guided-responses-copilot.png" alt-text="Screenshot highlighting the actions available to users for each guided response card in the Copilot pane in Microsoft Defender XDR." lightbox="../../media/copilot-in-defender/guided-response/fig5-guided-responses-copilot.png":::

4. You can provide feedback to each response card to continuously enhance future responses from Copilot. To provide feedback, select the feedback dropdown menu found on the bottom right of each card.

 :::image type="content" source="../../media/copilot-in-defender/guided-response/fig6-guided-responses-copilot.png" alt-text="Screenshot highlighting the feedback options available in each guided response card in the Copilot pane in Microsoft Defender XDR." lightbox="../../media/copilot-in-defender/guided-response/fig6-guided-responses-copilot.png":::

> [!NOTE]
> Action buttons that are grayed out mean these actions are limited by your permission. [Refer to the unified role-based access (RBAC) permissions](manage-rbac.md) page for more information.

Copilot for Security and Microsoft Defender XDR support incident response teams by enabling analysts to gain more context about response actions with additional insights. For remediation responses, incident response teams can view additional information with options like **View similar incidents** or **View similar emails**.

The **View similar incidents** action becomes available when there are other incidents within the organization that are similar to the current incident. The Similar incidents tab lists similar incidents that you can review. Microsoft Defender XDR automatically identifies similar incidents within the organization through machine learning. Incident response teams can use the information from these similar incidents to classify incidents and further review the actions done in those similar incidents.

The **View similar emails** action, which is specific to phishing incidents, takes you to the [advanced hunting](advanced-hunting-overview.md) page, where a KQL query to list similar emails within the organization is automatically generated. This automatic query generation related to an incident helps incident response teams further investigate other emails that might be related to the incident. You can review the query and modify it as needed.

## See also

- [Summarize an incident](security-copilot-m365d-incident-summary.md)
- [Create an incident report](security-copilot-m365d-create-incident-report.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Get started with Microsoft Copilot for Security](/security-copilot/get-started-security-copilot)
- [Learn about other Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
