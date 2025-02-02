---
title: Compare Microsoft 365 Copilot features in E3 and E5 licenses
description: Lists and compares the features available in Microsoft 365 E3 and E5 licenses that can help you get your data ready for Microsoft 365 Copilot.
f1.keywords:
- NOCSH
ms.author: mandia
author: MandiOhlinger
manager: laurawi
ms.date: 01/28/2025
audience: Admin
ms.reviewer: emilyblundo, sophieke
ms.topic: get-started
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 license feature comparison list to address oversharing for Microsoft 365 Copilot

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) is an AI-powered productivity assistant that can help users with different tasks, like finding information and creating content. You can use Copilot in your Microsoft 365 apps, like Word, Outlook, and Teams.

There are different features in the Microsoft 365 E3 and E5 licenses that can help you get your data ready for Copilot. These features can:

- Help prevent oversharing
- Declutter data sources
- Identify and label sensitive data in your Microsoft 365 and Office files

Use the information in this article to become familiar with the features available to you, based on your license. It can also help you decide which license is right for you based on the features your organization wants and needs.

If you're currently [licensed for Copilot](microsoft-365-copilot-licensing.md) or plan to get it, this article can help.

This article applies to:

- Microsoft 365 Copilot
- Microsoft SharePoint Premium - SharePoint Advanced Management (SAM)
- Microsoft Purview

## Microsoft 365 license feature table

The following table lists some of the features that can help get your data ready for Copilot. These features affect Copilot results and can help you manage Copilot interactions (prompts and responses).

| &nbsp; | E3 + SAM license | E5 + SAM license |
| --- | --- | --- |
| License requirements | - Microsoft 365 E3 or Office 365 E3 <br/>- Microsoft 365 Copilot <br/> - SharePoint Advanced Management (SAM)<br/><br/>Beginning in early 2025, SAM will be included with your Microsoft 365 Copilot license.| - Microsoft 365 E5 or Office 365 E5 <br/>- Microsoft 365 Copilot <br/> - SharePoint Advanced Management (SAM) <br/><br/>Beginning in early 2025, SAM will be included with your Microsoft 365 Copilot license.|
| Restricted SharePoint Search (RSS) | ✅  | ✅  |
| &nbsp; | &nbsp; | &nbsp; |
| **Microsoft Purview features** | &nbsp; | &nbsp; |
| Sensitivity labels |  ✅ <br/><br/> You can: <br/><br/>- Create custom labels. <br/> - Manually apply labels. | ✅ <br/><br/> You can: <br/><br/> - Create custom labels. <br/> - Create default labels and their policies. <br/> - Manually apply labels. <br/> - Automatically apply labels. <br/> - Apply labels to containers, like a SharePoint or Teams site |
| Data loss prevention (DLP)| ✅ <br/><br/>Policies can target: <br/><br/>- SharePoint <br/> - Exchange <br/> - OneDrive | ✅ <br/><br/> Policies can target: <br/><br/>- SharePoint <br/> - Exchange <br/> - OneDrive <br/> - Teams <br/> - Endpoints <br/><br/> Also use [DLP for Microsoft 365 Copilot](/purview/dlp-microsoft365-copilot-location-learn-about). |
| Adaptive Protection | n/a | ✅ |
| Data lifecycle management  | ✅ <br/><br/> You can: <br/><br/> - Create retention policies<br/> - Manually apply retention labels<br/> - Use Content explorer | ✅ <br/><br/> You can: <br/><br/> - Create retention policies<br/> - Manually apply retention labels<br/> - Automatically apply retention labels <br/> - Use Content explorer <br/> - Use Activity explorer <br/> - Use Data Lifecycle Management or Records Management |
| Communication Compliance | n/a | ✅ |
| eDiscovery | ✅ <br/><br/>Can search. | ✅ <br/><br/> Can search and delete. |
| Data Security Posture Management for AI (previously called AI Hub) |  ✅ <br/><br/> You can: <br/><br/>- View app info <br/>- Export activity <br/>- Turn on auditing | ✅ <br/><br/> You can: <br/><br/>- View app info <br/>- Export activity <br/>- Turn on auditing <br/>- View prompt & response |
| &nbsp; | &nbsp; | &nbsp; |
| **SharePoint Advanced Management (SAM) features** | &nbsp; | &nbsp; |
| Site ownership policy | ✅ | ✅ |
| Site lifecycle management | ✅ | ✅ |
| Data access governance (DAG) reports | ✅ | ✅ |
| Restricted access control (RAC) | ✅ | ✅ |
| Restricted content discoverability policy (RCD) | ✅ | ✅ |
| Change history report | ✅ | ✅ |

---

To learn more about these features and how they can prepare your data for Copilot, see:

- [Microsoft 365 Copilot admin guide for E3 licenses](microsoft-365-copilot-e3-guide.md)
- [Microsoft 365 Copilot admin guide for E5 licenses](microsoft-365-copilot-e5-guide.md)

To learn more about licensing, see:

- [Microsoft 365 Copilot licensing](microsoft-365-copilot-licensing.md)
- [Microsoft Purview service description](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-purview-service-description)
- [Microsoft SharePoint Premium - SharePoint Advanced Management licensing](/sharepoint/advanced-management#licensing)

## More features to help get your data ready for Copilot

Microsoft continues to invest in features that help you get ready for Copilot. This section describes some more services and features that are available to you.

### Data Security Posture Management (DSPM) in Microsoft Purview

[Data Security Posture Management for AI](/purview/ai-microsoft-purview) is a central location that helps you secure data for AI apps and proactively monitor AI use. It has preconfigured policies that focus on AI and reports that give information into AI use within your organization.

To access DSPM for AI (previously called AI Hub), use the following steps:

1. Sign into the [Microsoft Purview portal](https://purview.microsoft.com/) as an admin in one of the groups listed at [Microsoft Purview Data Security Posture Management for AI - permissions](/purview/ai-microsoft-purview-permissions).
1. Select **Solutions** > **Data Security Posture Management for AI** > **Recommendations**.
1. Create the recommended policies.
1. Select **Reports** to view details of the Copilot interactions.

To learn more about these policies, see [Data Security Posture Management for AI - one-click policies](/purview/ai-microsoft-purview-considerations#one-click-policies-from-the-ai-hub).

### Copilot dashboard in Viva Insights

[Viva Insights](/viva/insights/introduction) provides actionable insights to help your organization get ready to deploy AI, drive adoption, and measure the effect of Copilot.

The dashboard shows metrics on readiness, adoption, impact, and sentiment.

1. Open the Teams app.
2. In the Teams vertical toolbar, select the ellipses > **Viva Insights**.
3. On the navigation panel, select **Copilot Dashboard**.

To learn more, see [Microsoft Copilot Dashboard for Microsoft 365 customers](/viva/insights/org-team-insights/copilot-dashboard).

### Microsoft Security Copilot

[Security Copilot](/copilot/security/microsoft-security-copilot) is a natural language, assistive AI experience. It helps support security professionals in various end-to-end scenarios, like incident response, threat hunting, intelligence gathering, posture management, and more.

Security Copilot integrates with other services that help you manage device and data security, like Microsoft Purview, Microsoft Defender, and Microsoft Intune.

To learn more, see:

- [Get started with Microsoft Security Copilot](/copilot/security/get-started-security-copilot)
- [Access training and more technical readiness resources at the Microsoft Security Copilot Adoption hub](https://aka.ms/SecurityCopilot/Adoption)

## Get started with your E3 or E5 features

The next step is to start using the features in your license:

- [Microsoft 365 Copilot admin guide for E3 licenses](microsoft-365-copilot-e3-guide.md)
- [Microsoft 365 Copilot admin guide for E5 licenses](microsoft-365-copilot-e5-guide.md)

## Related content

- [Microsoft 365 Copilot licensing](microsoft-365-copilot-licensing.md)
- [Microsoft 365 Copilot admin guide for E3 licenses](microsoft-365-copilot-e3-guide.md)
- [Microsoft 365 Copilot admin guide for E5 licenses](microsoft-365-copilot-e5-guide.md)
- [Microsoft 365 Copilot adoption resources](https://adoption.microsoft.com/copilot)
