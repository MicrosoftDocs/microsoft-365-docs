---
title: Custom reporting solutions with automated investigation and response
keywords: SIEM, API, AIR, autoIR, Microsoft Defender for Endpoint, automated investigation, integration, custom report
f1.keywords: 
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
- MET150
- MOE150
ms.collection: 
- m365-security
- tier2
description: Learn how to integrate automated investigation and response with a custom or third-party reporting solution.
ms.date: 06/09/2023
ms.custom: 
- air
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Custom or third-party reporting solutions for Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

With [Microsoft Defender for Office 365](defender-for-office-365.md), you get [detailed information about automated investigations](air-view-investigation-results.md). However, some organizations also use a custom or third-party reporting solution. If your organization wants to integrate information about [automated investigations](air-about.md) with such a solution, you can use the Office 365 Management Activity API.

With [Microsoft Defender for Office 365](defender-for-office-365.md), you get [detailed information about automated investigations](air-view-investigation-results.md). However, some organizations also use a custom or third-party reporting solution. If your organization wants to integrate information about automated investigations with such a solution, you can use the Office 365 Management Activity API.

|Resource|Description|
|:---|:---|
|[Office 365 Management APIs overview](/office/office-365-management-api/office-365-management-apis-overview)|The Office 365 Management Activity API provides information about various user, admin, system, and policy actions and events from Microsoft 365 and Azure Active Directory activity logs.|
|[Get started with Office 365 Management APIs](/office/office-365-management-api/get-started-with-office-365-management-apis)|The Office 365 Management API uses Azure AD to provide authentication services for your application to access Microsoft 365 data. Follow the steps in this article to set this up.|
|[Office 365 Management Activity API reference](/office/office-365-management-api/office-365-management-activity-api-reference)|You can use the Office 365 Management Activity API to retrieve information about user, admin, system, and policy actions and events from Microsoft 365 and Azure AD activity logs. Read this article to learn more about how this works.|
|[Office 365 Management Activity API schema](/office/office-365-management-api/office-365-management-activity-api-schema)|Get an overview of the [Common schema](/office/office-365-management-api/office-365-management-activity-api-schema#common-schema) and the [Defender for Office 365 and threat investigation and response schema](/office/office-365-management-api/office-365-management-activity-api-schema#office-365-advanced-threat-protection-and-threat-investigation-and-response-schema) to learn about specific kinds of data available through the Office 365 Management Activity API.|

## See also

- [Microsoft Defender for Office 365](defender-for-office-365.md)
- [Automated investigation and response in Microsoft 365 Defender](/microsoft-365/security/defender/m365d-autoir)
