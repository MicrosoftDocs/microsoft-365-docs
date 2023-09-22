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

# Create an incident report with Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

[Security Copilot](/copilot/microsoft-365-copilot-overview.md) in Microsoft 365 Defender assists security operations teams in simplifying investigation documentation. Utilizing Security Copilot’s AI-powered data processing, security teams can immediately create accurate incident reports within Microsoft 365 Defender.

Incident responders usually conclude investigations by writing a report that includes a summary of the incident, a timeline of what happened and what remediation and solutions were deployed, the team members involved in the investigation, and recommendations moving forward. This document is essential for current and future security decision making and investigations. However, putting together all the elements for the documentation can be time-consuming. Security teams can now instantly create an incident report within the portal with Security Copilot.

This guide outlines what to expect and how to access the incident report creation capability of Security Copilot within Microsoft 365 Defender, including information on how to provide feedback.

## Technical requirements

[Learn about the requirements for Security Copilot to get started](/copilot/microsoft-365-copilot-requirements.md).

## Create an incident report

Security Copilot helps you create an incident report that includes:

- An [overview of the incident](security-copilot-m365d-incident-summary.md) or attack.
- The team members who responded to the incident, including the response actions and timeframe for each member involved.
- The investigation actions and mitigation done.
- The conclusion of the investigation.
- Gaps and follow-up requirements to be addressed.

To create an incident report:

1. Select an incident. In the incident page, select **Generate incident report** located at the top right corner of the page. 
:::image type="content" source="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png" alt-text="Selecting PowerShell execution on the alert timeline view in the incident page of Microsoft 365 Defender" lightbox="../../media/copilot-in-defender/incident-report/fig1-sec-copilot-m365d-create-report.png":::
2. Security Copilot automatically creates the incident report on a new pane. To read all the details, select **See more**.
3. You can stop the report creation by selecting **Cancel**.
4. You can restart the report creation by selecting **Regenerate**. Additionally, you can restart report creation if you encounter an error in creation.
5. You can copy the report details by selecting the three dots at the top of the incident summary to access **Copy to clipboard**.
6. Note that a new tab opens when you select **See in Security Copilot**.

## Managing feedback

You can validate or report the incident report results provided by Security Copilot. Validating and reporting results enable Security Copilot to further learn and deliver more accurate answers in the future.

[Follow these steps to provide feedback](security-copilot-m365d-incident-summary.md#managing-feedback).

## Next steps
- [Summarize an incident](security-copilot-m365d-incident-summary.md) with Security Copilot in Microsoft 365 Defender
- Respond to incidents with Security Copilot in Microsoft 365 Defender
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md) with Security Copilot in Microsoft 365 Defender

## See also
-	[Security Copilot FAQ](/copilot/rai-faqs-security-copilot.md)
-	[Learn about Security Copilot features in Microsoft 365 Defender](security-copilot-in-microsoft-365-defender.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]