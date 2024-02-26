---
title: Create incident reports with Microsoft Copilot for Security in Microsoft Defender
description: Write incident reports with Microsoft Copilot for Security in Microsoft Defender.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident report, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, incident report creation, create report, create incident report, write incident report, write report, Microsoft Copilot for Security, Microsoft Defender, Copilot in Defender
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
ms.date: 04/01/2024
---

# Create an incident report with Microsoft Copilot for Security in Microsoft Defender

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender
- Microsoft Defender XDR

[Microsoft Copilot for Security](/security-copilot/microsoft-security-copilot) in Microsoft Defender assists security operations teams with writing incident reports efficiently. Utilizing Copilot for Security's AI-powered data processing, security teams can immediately create incident reports with a click of a button in Microsoft Defender.

A comprehensive and clear incident report is an essential reference for security teams and security operations management. However, writing a comprehensive report with the important details present can be a time-consuming task for security operations teams.Collecting, organizing, and summarizing incident information from multiple sources requires focus and detailed analysis to create an information-rich report. With Copilot for Defender, security teams can now instantly create an extensive incident report within the portal.

While an [incident summary](security-copilot-m365d-incident-summary.md) provides an overview of an incident and how it happened, an incident report consolidates incident information from various data sources available in Microsoft Sentinel and Microsoft Defender XDR. The Copilot-generated incident report also includes all analyst-driven steps and automated actions, the analysts involved in incident response, and the comments from the analysts. Whether security teams are using Microsoft Defender XDR, Microsoft Sentinel, or both, all relevant incident data are added into the generated incident report.

This guide lists the data in incident reports and contains steps on how to access the incident report creation capability within Microsoft Defender. It also includes information on how to provide feedback about the generated report.

> [!NOTE]
> The incident report generation capability is also available in the Copilot for Security standalone experience through the Microsoft Defender plugin. Know more about [preinstalled plugins in Microsoft Copilot for Security](/security-copilot/manage-plugins#preinstalled-plugins).

## Create an incident report

Copilot creates an incident report containing the following information:

- The main incident management actions' timestamps, including:
  - Incident creation and closure
  - First and last logs, whether the log was analyst-driven or automated, captured in the incident
- The analysts involved in incident response
- [Incident classification](manage-incidents.md#specify-the-classification), including analysts' comments on how the incident was evaluated and classified.
- Investigation actions applied by analysts and noted in the incident logs
- Remediation actions done, including:
  - Manual actions applied by analysts and noted in the incident logs
  - Automated actions applied by the system, including Microsoft Sentinel playbooks ran and Microsoft Defender XDR actions applied
- Follow up actions like recommendations, open issues, or next steps noted by the analysts in the incident logs

To create an incident report, perform the following steps:

1. Open an incident page. In the incident page, select **Generate incident report** located at the top right corner of the page. Alternately, you can select the report icon found in the Copilot pane.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig1-new-sec-copilot-m365d-create-report.png" alt-text="Screenshot highlighting the generate incident report and report icon buttons in the incident page." lightbox="../../media/copilot-in-defender/incident-report/fig1-expand-sec-copilot-m365d-create-report.png":::
2. Copilot creates the incident report. You can stop the report creation by selecting **Cancel** and restart report creation by selecting **Regenerate**. Additionally, you can restart report creation if you encounter an error.
3. The incident report card appears on the Copilot pane. The generated report depends on the incident information available from Microsoft Defender XDR and Microsoft Sentinel. Refer to the [recommendations](security-copilot-m365d-create-incident-report.md#recommendations-for-incident-report-creation) to ensure a comprehensive incident report.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig2-new-sec-copilot-m365d-create-report.png" alt-text="Screenshot of the incident report card in the incident page." lightbox="../../media/copilot-in-defender/incident-report/fig2-expand-sec-copilot-m365d-create-report.png":::
4. Select the three dots located on the right side of the incident report card. To copy the report, select **copy to clipboard** and paste the report to your preferred system, or **Post to comments and history** to add the report to the comments and history of the incident.
5. Select **Regenerate** to restart report creation. You can also **Open in Copilot** to view the results and continue accessing other plugins available in the Copilot for Security standalone portal.
6. Review the generated incident report. You can provide feedback on the report by selecting the feedback icon on the bottom of the results.

## Recommendations for incident report creation

Here are some recommendations to consider to ensure that Copilot generates a comprehensive and complete incident report:

- Classify and resolve the incident before generating the incident report.
- Ensure that you write and save comments in the Microsoft Sentinel activity log or in the Microsoft Defender XDR incident comments and history to include the comments in the incident report.
- Write comments using comprehensive and clear language. In-depth and clear comments provide better context about the response actions. See the following steps to know how to access the comments field:
  - [Add comments to incidents in Microsoft Defender XDR](manage-incidents.md#add-comments)
  - [Add comments to incidents in Microsoft Sentinel](/azure/sentinel/investigate-cases#comment-on-incidents)
- For ServiceNow users, [enable the Microsoft Sentinel and ServiceNow bi-directional sync](https://techcommunity.microsoft.com/t5/microsoft-sentinel-blog/what-s-new-introducing-microsoft-sentinel-solution-for/ba-p/3692840) to get more robust incident data.
- Copy the generated incident report and post it to the comments and history of the incident to ensure that the incident report is saved in the incident page.

## See also

- [Get started with Copilot for Security](/security-copilot/get-started-security-copilot)
- [Learn about other Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
