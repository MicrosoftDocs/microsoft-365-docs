---
title: SIEM integration with Microsoft Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
localization_priority: None
search.appverid: 
  - MET150
  - MOE150
ms.assetid: eb56b69b-3170-4086-82cf-ba40a530fa1b
ms.date: 08/21/2020
ms.collection: 
  - M365-security-compliance
description: Integrate your organization's SIEM server with Microsoft Defender for Office 365 and related threat events in the Office 365 Activity Management API.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# SIEM integration with Microsoft Defender for Office 365

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


If your organization is using a security information and event management (SIEM) server, you can integrate Microsoft Defender for Office 365 with your SIEM server. You can set up this integration by using the [Office 365 Activity Management API](/office/office-365-management-api/office-365-management-activity-api-reference).

SIEM integration enables you to view information, such as malware or phish detected by Microsoft Defender for Office 365, in your SIEM server reports.

- To see an example of SIEM integration with Microsoft Defender for Office 365, see [Tech Community blog: Improve the Effectiveness of your SOC with Defender for Office 365 and the O365 Management API](https://techcommunity.microsoft.com/t5/microsoft-security-and/improve-the-effectiveness-of-your-soc-with-office-365-atp-and/ba-p/1525185).

- To learn more about the Office 365 Management APIs, see [Office 365 Management APIs overview](/office/office-365-management-api/office-365-management-apis-overview).

## How SIEM integration works

The Office 365 Activity Management API retrieves information about user, admin, system, and policy actions and events from your organization's Microsoft 365 and Azure Active Directory activity logs. If your organization has Microsoft Defender for Office 365 Plan 1 or 2, or Office 365 E5, you can use the [Microsoft Defender for Office 365 schema](/office/office-365-management-api/office-365-management-activity-api-schema#office-365-advanced-threat-protection-and-threat-investigation-and-response-schema).

Recently, events from automated investigation and response capabilities in [Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2) were added to the Office 365 Management Activity API. In addition to including data about core investigation details such as ID, name and status, the API also contains high-level information about investigation actions and entities.

The SIEM server or other similar system polls the **audit.general** workload to access detection events. To learn more, see [Get started with Office 365 Management APIs](/office/office-365-management-api/get-started-with-office-365-management-apis).

## Enum: AuditLogRecordType - Type: Edm.Int32

### AuditLogRecordType

The following table summarizes the values of **AuditLogRecordType** that are relevant for Microsoft Defender for Office 365 events:

|Value|Member name|Description|
|---|---|---|
|28|ThreatIntelligence|Phishing and malware events from Exchange Online Protection and Microsoft Defender for Office 365.|
|41|ThreatIntelligenceUrl|Safe Links time-of-block and block override events from Microsoft Defender for Office 365.|
|47|ThreatIntelligenceAtpContent|Phishing and malware events for files in SharePoint Online, OneDrive for Business, and Microsoft Teams, from Microsoft Defender for Office 365.|
|64|AirInvestigation|Automated investigation and response events, such as investigation details and relevant artifacts, from Microsoft Defender for Office 365 Plan 2.|
|

> [!IMPORTANT]
> You must be a global administrator or have the security administrator role assigned for the Microsoft 365 security center to set up SIEM integration with Microsoft Defender for Office 365.
>
> Audit logging must be turned on for your Microsoft 365 environment. To get help with this, see [Turn audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

## See also

[Office 365 threat investigation and response](office-365-ti.md)

[Automated investigation and response (AIR) in Office 365](automated-investigation-response-office.md)