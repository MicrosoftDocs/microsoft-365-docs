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

[Microsoft Security Copilot](/security-copilot/microsoft-security-copilot) in Microsoft 365 Defender assists security operations teams with writing incident reports efficiently. Utilizing Security Copilot's AI-powered data processing, security teams can immediately create incident reports with a click of a button in Microsoft 365 Defender.

A comprehensive and clear incident report is an essential reference for security teams and security operations management. However, writing a comprehensive report with the important details present can be a time-consuming task for security operations teams as it involves collecting, organizing, and summarizing incident information from multiple sources. Security teams can now instantly create an extensive incident report within the portal.

While an [incident summary](security-copilot-m365d-incident-summary.md) provides an overview of an incident and how it happened, an incident report consolidates incident information from various data sources available in Microsoft Sentinel and Microsoft 365 Defender, including all analyst-driven steps and automated actions, the analysts involved in the response, and the comments from the analysts. Whether security teams are using Microsoft 365 Defender, Microsoft Sentinel, or both, all relevant incident data are added into the generated incident report.

This guide outlines what to expect and how to access the incident report creation capability within the portal, including information on how to provide feedback about the generated report.

## Technical requirements

[Learn about the Security Copilot requirements](/security-copilot/microsoft-365-copilot-requirements).

## Create an incident report

Security Copilot creates an incident report containing the following information:

- The main incident management actions' timestamps, including:
  - Incident creation and closure
  - First and last logs, whether the log was analyst-driven or automated, captured in the incident
- The analysts involved in incident response.
- [Incident classification](manage-incidents.md#specify-the-classification), including analysts' comments on how the incident was evaluated and classified.
- Investigation actions applied by analysts and noted in the incident logs
- Remediation actions done, including:
  - Manual actions applied by analysts and noted in the incident logs
  - Automated actions applied by the system, including Microsoft Sentinel Playbooks ran and Microsoft 365 Defender actions applied
- Follow up actions like recommendations, open issues, or next steps noted by the analysts in the incident logs.

To create an incident report, perform the following steps:okra

1. Open an incident page. In the incident page, select **Generate incident report** located at the top right corner of the page. Alternately, you can select the report icon found in the Security Copilot pane.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png" alt-text="Screenshot highlighting the generate incident report and report icon buttons in the incident page." lightbox="../../media/copilot-in-defender/incident-report/fig1-expanded-sec-copilot-m365d-create-report.png":::
2. Security Copilot creates the incident report. You can stop the report creation by selecting **Cancel** and restart report creation by selecting **Regenerate**. Additionally, you can restart report creation if you encounter an error.
3. The incident report card appears on the Security Copilot pane. The generated report depends on the incident information available from Microsoft 365 Defender and Microsoft Sentinel. Refer to the [recommendations](security-copilot-m365d-create-incident-report.md#recommendations-for-incident-report-creation) to ensure a comprehensive incident report.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig2-sec-copilot-m365d-create-report.png" alt-text="Screenshot of the incident report card in the incident page." lightbox="../../media/copilot-in-defender/incident-report/fig2-expanded-sec-copilot-m365d-create-report.png":::
4. Select the three dots located on the right side of the incident report card. To copy the report, select **copy to clipboard** and paste the report to your preferred system, or **Post to comments and history** to add the report to the comments and history of the incident.
5. Select **Regenerate** to restart report creation. You can also opt to **Open in Security Copilot** to view the results and continue accessing other plugins available in the Security Copilot standalone portal.

## Managing feedback

You can validate and submit feedback about a generated incident report. Validating the generated report enables Security Copilot to learn further and deliver more accurate answers in the future.

[Follow these steps when providing feedback about the results](security-copilot-in-microsoft-365-defender.md#providing-feedback).

## Recommendations for incident report creation

Here are some recommendations to consider to ensure that Security Copilot generates a comprehensive and complete incident report:

- Classify and resolve the incident before generating the incident report.
- While investigating an incident, write and save comments in the Microsoft Sentinel activity log or in the Microsoft 365 Defender incident comments and history to ensure that these are included in the incident report.
- Write comments using comprehensive and clear language. In-depth and clear comments provide better context about the response actions. See the following steps to know how to access the comments field:
  - [Add comments to incidents in Microsoft 365 Defender](manage-incidents.md#add-comments) 
  - [Add comments to incidents in Microsoft Sentinel](/azure/sentinel/investigate-cases.md#comment-on-incidents)
- For ServiceNow users, [enable the Microsoft Sentinel and ServiceNow bi-directional sync](https://techcommunity.microsoft.com/t5/microsoft-sentinel-blog/what-s-new-introducing-microsoft-sentinel-solution-for/ba-p/3692840) to get more robust incident data.
- Copy the generated incident report and post it to the comments and history of the incident. This ensures that the incident report is saved in the incident page.

## See also

- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot)
- [Get started with Security Copilot](/security-copilot/get-started-security-copilot)
- [Learn about other Security Copilot embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]