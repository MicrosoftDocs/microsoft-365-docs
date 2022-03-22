---
title: Custom reporting solutions with automated investigation and response
keywords: SIEM, API, AIR, autoIR, Microsoft Defender for Endpoint, automated investigation, integration, custom report
f1.keywords: 
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: article
ms.localizationpriority: medium
search.appverid: 
- MET150
- MOE150
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
description: Learn how to integrate automated investigation and response with a custom or third-party reporting solution.
ms.date: 01/29/2021
ms.custom: 
- air
ms.technology: mdo
ms.prod: m365-security
---

# Custom or third-party reporting solutions for Microsoft Defender for Office 365

With [Microsoft Defender for Office 365](defender-for-office-365.md), you get [detailed information about automated investigations](air-view-investigation-results.md). However, some organizations also use a custom or third-party reporting solution. If your organization wants to integrate information about [automated investigations](office-365-air.md) with such a solution, you can use the Office 365 Management Activity API.

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

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
