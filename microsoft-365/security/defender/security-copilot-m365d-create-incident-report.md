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

[Security Copilot](/copilot/microsoft-365-copilot-overview.md) in Microsoft 365 Defender assists security operations teams in simplifying investigation documentation. Utilizing Security Copilot's AI-powered data processing, security teams can immediately create accurate incident reports within Microsoft 365 Defender.

Incident responders usually conclude investigations by writing a report. The report usually includes a summary of the incident, a timeline of what happened and what remediation and solutions were deployed, the team members involved in the investigation, and recommendations to consider. The incident report is essential for current and future security decision making and investigations. However, putting together all the elements for the documentation can be time-consuming. Security teams can now instantly create an incident report within the portal with Security Copilot.

An incident report differs from an [incident summary](security-copilot-m365d-incident-summary.md). An incident summary is a high-level overview of the incident, while an incident report contains all the details of the investigation, including the actions taken by the team, the automation applied, and the comments from the analysts. Whether security teams are using Microsoft 365 Defender, Microsoft Sentinel, or both, all relevant incident data are added into the generated incident report.

This guide outlines what to expect and how to access the incident report creation capability within the portal, including information on how to provide feedback.

## Technical requirements

[Learn about the Security Copilot requirements](/copilot/microsoft-365-copilot-requirements.md).

## Create an incident report

Security Copilot creates an incident report containing the following details:

- The incident summary.
- The team members who responded to the incident.
- The timestamps for the first and last actions, including incident assignment and closure.
- Actions done on the incident, including:
  - Incident assignment or incident closure
  - [Portal-based](respond-first-incident-remediate.md#manual-remediation) and [automated](respond-first-incident-remediate.md#automatic-remediation) remediation actions from Microsoft 365 Defender and Microsoft Sentinel applied
  - Comments supplied by analysts
- The conclusion of the investigation.
- Gaps and follow up requirements to be addressed.

To create an incident report:

1. Select an incident. In the incident page, select **Generate incident report** located at the top right corner of the page. Alternately, you can select the report icon found in the Security Copilot pane.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png" alt-text="Highlighting generate incident report and report icon buttons in the incident page" lightbox="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png":::
2. Security Copilot creates the incident report. You can stop the report creation by selecting **Cancel** and restart report creation by selecting **Regenerate**. Additionally, you can restart report creation if you encounter an error.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig2-sec-copilot-m365d-create-report.png" alt-text="Security Copilot generating an incident report" lightbox="../../media/copilot-in-defender/incident-report/fig2-sec-copilot-m365d-create-report.png":::
3. The incident report card contains all the details related to the investigation. Contents of an incident report significantly varies per incident.  Refer to the recommendations section for best practices in creating incident reports.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig3-sec-copilot-m365d-create-report.png" alt-text="Incident report card in the incident page" lightbox="../../media/copilot-in-defender/incident-report/fig3-sec-copilot-m365d-create-report.png":::
4. You can copy the report details, add the details to an activity log, restart report creation, or see the results in the Security Copilot standalone product. To do any of these actions, select the three dots located on right side of the incident report card.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig4-sec-copilot-m365d-create-report.png" alt-text="User options in the incident report card" lightbox="../../media/copilot-in-defender/incident-report/fig4-sec-copilot-m365d-create-report.png":::
5. Selecting **Post to activity log** adds the incident report to the activity log.
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig5-sec-copilot-m365d-create-report.png" alt-text="Screenshot of the activity log with details from the incident report" lightbox="../../media/copilot-in-defender/incident-report/fig5-sec-copilot-m365d-create-report.png":::
6. A new tab opens when you select **Open in Security Copilot**.

## Managing feedback

You can validate an incident report's details and submit feedback about Security Copilot's results. Validating the results enable Security Copilot to learn further and deliver more accurate answers in the future.

[Follow these steps to provide your feedback about the results](security-copilot-m365d-incident-summary.md#managing-feedback).

## Recommendations for incident report creation

## Next steps

- [Summarize an incident](security-copilot-m365d-incident-summary.md)
- [Use guided responses when responding to threats](security-copilot-m365d-guided-response.md)
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)

## See also

- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot.md)
- [Get started with Security Copilot](/copilot/microsoft-365-copilot-requirements.md)
- [Learn about other Security Copilot embedded experiences](/copilot/experiences-security-copilot.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]