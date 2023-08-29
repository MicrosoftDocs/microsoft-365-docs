---
title: View and manage incidents in Microsoft Defender for Business
description: View and manage alerts, respond to threats, manage devices, and review remediation actions on detected threats in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 08/11/2022
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# View and manage incidents in Microsoft Defender for Business

As threats are detected and alerts are triggered, incidents are created. Your company's security team can view and manage incidents in the Microsoft 365 Defender portal.

**This article includes**:

- [How to monitor your incidents and alerts](#monitor-your-incidents--alerts)
- [Alert severity](#alert-severity)
- [Next steps](#next-steps)


## Monitor your incidents & alerts

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, select **Incidents**. Any incidents that were created are listed on the page.

   :::image type="content" source="../../media/defender-business/mdb-incidents-list.png" alt-text="Screenshot of the Incidents list":::

2. Select an alert to open its flyout pane, where you can learn more about the alert. 

   :::image type="content" source="../../media/defender-business/mdb-incident-flyout.png" alt-text="Screenshot of incident selected with flyout open":::

3. In the flyout pane, you can see the alert title, view a list of assets (such as endpoints or user accounts) that were affected, take available actions, and use links to view more information and even open the details page for the selected alert. 

> [!TIP]
> Defender for Business is designed to help you address detected threats by offering up recommended actions. When you view an alert, look for the recommended actions to take. Also take note of the alert severity, which is determined not only on the basis of the threat severity, but also on the level of risk to your company. 

## Alert severity

When Microsoft Defender Antivirus assigns an alert severity based on the absolute severity of a detected threat (malware) and the potential risk to an individual endpoint (if infected). Defender for Business assigns an alert severity based on the severity of the detected behavior, the actual risk to an endpoint (device), and more importantly, the potential risk to your company. The following table lists a few examples:

| Scenario | Alert severity and reason |
|:---|:---|
| Microsoft Defender Antivirus detects and stops a threat before it does any damage. | **Informational**. The threat was stopped before any damage was done. |
| Microsoft Defender Antivirus detects malware that was executing within your company. The malware is stopped and remediated. | **Low**. Although some damage might have been done to an individual endpoint, the malware now poses no threat to your company. |
| Malware that is executing is detected by Defender for Business. The malware is blocked almost immediately. | **Medium** or **High**. The malware poses a threat to individual endpoints and to your company. |
| Suspicious behavior is detected but no remediation actions are taken yet. | **Low**, **Medium**, or **High**. The severity depends on the degree to which the behavior poses a threat to your company. |

## Next steps

- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)
- [View or edit device policies in Defender for Business](mdb-view-edit-policies.md)