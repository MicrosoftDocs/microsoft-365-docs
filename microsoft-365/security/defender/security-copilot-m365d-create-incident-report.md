---
title: Create incident reports with Security Copilot in Microsoft 365 Defender
description: Use Security Copilot incident report creation embedded in Microsoft 365 Defender to write incident reports.
keywords: security copilot, microsoft 365 defender, embedded experience, incident report, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, incident report creation, create report, create incident report, write incident report, write report
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.date: 10/10/2023
---

# Create an incident report with Microsoft Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> The information in this article only applies to the Microsoft Security Copilot Early Access Program, an invite-only paid preview program for commercial customers. Some information in this article relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

[Security Copilot](/copilot/microsoft-365-copilot-overview.md) in Microsoft 365 Defender assists security operations teams with writing incident reports efficiently. Utilizing Security Copilot's AI-powered data processing, security teams can immediately create incident reports within Microsoft 365 Defender.

Security operations teams often write incident reports to record important information about an incident, including the summary, the team members who responded to the incident, what and when response actions were done, and follow up tasks recommended. A comprehensive incident report is an essential reference for security teams and security operations management. However, writing all necessary information for a comprehensive and clear incident report can be time-consuming. Security teams can now instantly create a cohesive incident report within the portal using Security Copilot.

While an [incident summary](security-copilot-m365d-incident-summary.md) provides an overview of an incident and how it happened, an incident report consolidates information about the response actions taken, including manual and automated response actions and playbooks used, the analysts involved in the response, and the comments from the analysts. Whether security teams are using Microsoft 365 Defender, Microsoft Sentinel, or both, all relevant incident data are added into the generated incident report.

This guide outlines what to expect and how to access the incident report creation capability within the portal, including information on how to provide feedback about the generated report.

## Technical requirements

[Learn about the Security Copilot requirements](/copilot/microsoft-365-copilot-requirements.md).

## Create an incident report

Security Copilot creates an incident report containing the following information:

- The timestamps for when any of the following actions were done, including:
  - Incident creation, assignment, and closure
  - Automated actions, like playbooks used or automated investigation responses, were applied
  - Manual actions, like comments added, status changed, or manual actions were applied
- The analysts involved in incident response.
- [Incident classification](manage-incidents.md#specify-the-classification), including analysts' comments on how the incident was evaluated and classified.
- Investigation actions done, including:
  - Determining the root cause of the incident
  - Manual or automated investigation responses done
- Remediation actions done, including:
  - Manual actions applied as stated in the comments and history of the incident
  - Microsoft Sentinel Playbooks used
  - Microsoft 365 Defender actions applied
- Follow up actions like recommendations, open issues, or next steps noted by the analysts in the comments and history of the incident.

To create an incident report, perform the following steps:

1. Navigate to the incident queue in **Incidents and Alerts** and select an incident. In the incident page, select **Generate incident report** located at the top right corner of the page. Alternately, you can select the report icon found in the Security Copilot pane.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png" alt-text="Highlighting generate incident report and report icon buttons in the incident page" lightbox="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png":::
2. Security Copilot creates the incident report. You can stop the report creation by selecting **Cancel** and restart report creation by selecting **Regenerate**. Additionally, you can restart report creation if you encounter an error.
3. The incident report card appears on the Security Copilot pane. The generated report depends on the information available in the incident's comments and history. Refer to the [recommendations](security-copilot-m365d-create-incident-report.md#recommendations-for-incident-report-creation) to ensure a comprehensive incident report.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig2-sec-copilot-m365d-create-report.png" alt-text="Incident report card in the incident page" lightbox="../../media/copilot-in-defender/incident-report/fig2-sec-copilot-m365d-create-report.png":::
4. Select the three dots located on the right side of the incident report card. To copy the report, select **copy to clipboard** and paste the report to your preferred system, or **Post to comments and history** to add the report to the comments and history of the incident. 
5. Select **Regenerate** to restart report creation or select **Open in Security Copilot** to see the results in the Security Copilot standalone portal.

## Managing feedback

You can validate and submit feedback about a generated incident report. Validating the generated report enables Security Copilot to learn further and deliver more accurate answers in the future.

[Follow these steps when providing feedback about the results](security-copilot-in-microsoft-365-defender.md#providing-feedback).

## Recommendations for incident report creation

Here are some recommendations to consider to ensure that Security Copilot generates a comprehensive and complete incident report:

- Classify and resolve the incident before generating the incident report.
- Save investigation logs, comments, and actions in Sentinel activity log or in the Microsoft 365 Defender comments and history to ensure that these are included in the incident report.
- Write comments using comprehensive and clear language. In-depth and clear comments provide better context about the response actions. See the following steps to know how to access the comments field:
  - [Add comments to incidents in Microsoft 365 Defender](manage-incidents.md#add-comments) 
  - [Add comments to incidents in Microsoft Sentinel](/azure/sentinel/investigate-cases.md#comment-on-incidents)
- For ServiceNow users, [enable the Microsoft Sentinel and ServiceNow bi-directional sync](https://techcommunity.microsoft.com/t5/microsoft-sentinel-blog/what-s-new-introducing-microsoft-sentinel-solution-for/ba-p/3692840) to get more robust incident data.
- Copy the generated incident report and post it to the comments and history of the incident. This ensures that the incident report is saved in the incident page.

## See also

- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot.md)
- [Get started with Security Copilot](/security-copilot/get-started-security-copilot.md)
- [Learn about other Security Copilot embedded experiences](/security-copilot/experiences-security-copilot.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]