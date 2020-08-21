---
title: SIEM integration with Advanced Threat Protection
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
localization_priority: None
search.appverid:
- MET150
- MOE150
ms.assetid: eb56b69b-3170-4086-82cf-ba40a530fa1b
ms.date: 08/21/2020
ms.collection:
- M365-security-compliance
description: "Integrate your organization's SIEM server with Office 365 Advanced Threat Protection and related threat events in the Office 365 Activity Management API."
ms.custom: seo-marvel-apr2020
---

# SIEM integration with Advanced Threat Protection

If your organization is using a security incident and event management (SIEM) server, you can integrate Office 365 Advanced Threat Protection (Office 365 ATP) with your SIEM server. You can set up this integration by using the [Office 365 Activity Management API](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference). 

SIEM integration enables you to view information, such as malware or phish detected by Office 365 ATP, in your SIEM server reports. 

- To see an example of SIEM integration with Office 365 ATP, see [Tech Community blog: Improve the Effectiveness of your SOC with Office 365 ATP and the O365 Management API](https://techcommunity.microsoft.com/t5/microsoft-security-and/improve-the-effectiveness-of-your-soc-with-office-365-atp-and/ba-p/1525185).

- To learn more about the Office 365 Management APIs, see [Office 365 Management APIs overview](https://docs.microsoft.com/office/office-365-management-api/office-365-management-apis-overview).

## How SIEM integration works

The Office 365 Activity Management API retrieves information about user, admin, system, and policy actions and events from your organization's Microsoft 365 and Azure Active Directory activity logs. If your organization has Office 365 ATP Plan 1 or 2, or Office 365 E5, then you can use the [Office 365 Advanced Threat Protection schema](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-schema#office-365-advanced-threat-protection-and-threat-investigation-and-response-schema).  

Recently, events from automated investigation and response capabilities in [Office 365 ATP Plan 2](office-365-atp.md#office-365-atp-plan-1-and-plan-2) were added to the Office 365 Management Activity API. In addition to including data about core investigation details such as ID, name and status, the API also contains high-level information about investigation actions and entities.

The SIEM server or other similar system polls the **audit.general** workload to access detection events. To learn more see [Get started with Office 365 Management APIs](https://docs.microsoft.com/office/office-365-management-api/get-started-with-office-365-management-apis). 


## Enum: AuditLogRecordType - Type: Edm.Int32

### AuditLogRecordType

The following table summarizes the values of **AuditLogRecordType** that are relevant for Office 365 ATP events:


|Value|Member name|Description|
|---|---|---|
|28|ThreatIntelligence|Phishing and malware events from Exchange Online Protection and Office 365 Advanced Threat Protection.|
|41|ThreatIntelligenceUrl|ATP Safe Links time-of-block and block override events from Office 365 Advanced Threat Protection.|
|47|ThreatIntelligenceAtpContent|Phishing and malware events for files in SharePoint Online, OneDrive for Business, and Microsoft Teams from Office 365 Advanced Threat Protection.|
|64|AirInvestigation|Automated investigation and response events, such as investigation details and relevant artifacts from Office 365 Advanced Threat Protection Plan 2.|
|

> [!IMPORTANT]
> You must be a global administrator or have the security administrator role assigned for the Security & Compliance Center to set up SIEM integration with Office 365 Advanced Threat Protection.<br/>Audit logging must be turned on for your Microsoft 365 environment. To get help with this, see [Turn audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

## See also

[Office 365 threat investigation and response](office-365-ti.md)

[Automated investigation and response (AIR) in Office 365](automated-investigation-response-office.md)


