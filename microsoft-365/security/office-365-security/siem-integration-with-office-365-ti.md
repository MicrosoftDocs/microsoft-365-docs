---
title: "SIEM integration with Office 365 Advanced Threat Protection"
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
ms.date: 11/22/2019
ms.collection:
- M365-security-compliance
description: Integrate your organization&apos;s SIEM server with Office 365 Advanced Threat Protection and related threat events in the Office 365 Activity Management API.
---

# SIEM integration with Office 365 Advanced Threat Protection

If your organization is using a security incident and event management (SIEM) server, you can integrate Office 365 Advanced Threat Protection with your SIEM server. SIEM integration enables you to view information, such as malware or phish detected by Office 365 Advanced Protection, in your SIEM server reports. To set up SIEM integration, you use the [Office 365 Activity Management API](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-reference). 

The Office 365 Activity Management API retrieves information about user, admin, system, and policy actions and events from your organization's Office 365 and Azure Active Directory activity logs. The [Office 365 Advanced Threat Protection schema](https://docs.microsoft.com/office/office-365-management-api/office-365-management-activity-api-schema#office-365-advanced-threat-protection-and-threat-investigation-and-response-schema) works with Advanced Threat Protection, so if your organization has the Office 365 Advanced Threat Protection Plan 1 or Plan 2 or Office 365 E5, you can still use that same API for your SIEM server integration. 

As part of our recent updates, we have also added events from automated investigation and response capabilities in Office 365 ATP Plan 2 within the Office 365 Management Activity API. In addition to including data about core investigation details such as ID, name and status, it also contains high-level information about investigation actions and entities.   

The SIEM server or other similar system should poll the **audit.general** workload to access detection events. To learn more see [Get started with Office 365 Management APIs](https://docs.microsoft.com/office/office-365-management-api/get-started-with-office-365-management-apis). In addition, the following values of **AuditLogRecordType** are relevant for Office 365 ATP events:

### Enum: AuditLogRecordType - Type: Edm.Int32

#### AuditLogRecordType

|Value|Member name|Description|
|:-----|:-----|:-----|
|28|ThreatIntelligence|Phishing and malware events from Exchange Online Protection and Office 365 Advanced Threat Protection.|
|41|ThreatIntelligenceUrl|ATP Safe Links time-of-block and block override events from Office 365 Advanced Threat Protection.|
|47|ThreatIntelligenceAtpContent|Phishing and malware events for files in SharePoint Online, OneDrive for Business, and Microsoft Teams from Office 365 Advanced Threat Protection.|
|64|AirInvestigation|Automated investigation and response events, such as investigation details and relevant artifacts from Office 365 Advanced Threat Protection Plan 2.|


> [!IMPORTANT]
> You must be an Office 365 global administrator or have the security administrator role assigned for the Security & Compliance Center to set up SIEM integration with Office 365 Advanced Threat Protection.<br/>Audit logging must be turned on for your Office 365 environment. To get help with this, see [Turn Office 365 audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

## Related topics

[Office 365 threat investigation and response](office-365-ti.md)

[Automated investigation and response (AIR) in Office 365](automated-investigation-response-office.md)

[Office 365 Advanced Threat Protection](office-365-atp.md)

[Smart reports and insights in the Office 365 Security &amp; Compliance Center](reports-and-insights-in-security-and-compliance.md)
  
[Permissions in the Office 365 Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md)
  
