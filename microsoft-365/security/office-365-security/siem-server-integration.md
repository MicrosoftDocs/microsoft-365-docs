---
title: "SIEM server integration with Microsoft 365 services and applications"
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 11/15/2019
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
ms.custom: 
 - Ent_Solutions
 - SIEM
description: "Read this article to get an overview of SIEM server integration with Microsoft 365."
---

# SIEM server integration with Microsoft 365 services and applications

## Overview

If your organization is using a Security Information and Event Management (SIEM) server, or if you are planning to get a SIEM server soon, you might be wondering how that'll integrate with your Microsoft 365, including Office 365 E5. This article provides a list of resources you can use to set up SIEM server integration with Microsoft 365 services and applications.

> [!TIP]
> If you don't have a SIEM server yet but are exploring your options, consider [Microsoft Azure Sentinel](https://docs.microsoft.com/azure/sentinel/overview).

## Do I need a SIEM server?

Whether you need a SIEM server depends on many factors, such as your organization's security requirements and where your data resides. Microsoft 365 offers a wide variety of security features that meet many organizations' security needs without additional servers, such as a SIEM server. Here are some example scenarios where organizations use SIEM servers:
- Fabrikam has content and applications both on premises and in the cloud (Fabrikam has a hybrid cloud deployment), ), you might consider implementing a SIEM server for extra protection. 
- Or, if your organization has particularly stringent security requirements you must meet, you might consider adding a SIEM server to your environment.

## SIEM server integration Microsoft 365

A SIEM server can receive data from a wide variety of Microsoft 365 services and applications. The following table lists several Microsoft 365 services and applications along with SIEM server inputs, and where to go to learn more about SIEM server integration. 

| Microsoft 365 Service or Application | SIEM server inputs | Resources to learn more |
| --- | --- | --- |
| [Office 365 Advanced Threat Protection](office-365-atp.md) <br/>or<br/>[Office 365 Threat Intelligence](office-365-ti.md) | Audit logs | [SIEM integration with Office 365 Advanced Threat Protection](siem-integration-with-office-365-ti.md) |
| [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) | Log integration | [SIEM integration with Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/siem) |
| [Microsoft Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/) | Log integration | [Pull alerts to your SIEM tools](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-siem) |
| [Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-intro) (Threat Protection and Threat Detection) | Alerts | [Azure Security data export to SIEM - Pipeline Configuration - Preview](https://docs.microsoft.com/azure/security-center/security-center-export-data-to-siem) |
|[Azure Advanced Threat Analytics](https://docs.microsoft.com/azure/security/azure-threat-detection) | Azure Monitor | [(Blog) Use Azure Monitor to integrate with SIEM tools](https://azure.microsoft.com/blog/use-azure-monitor-to-integrate-with-siem-tools) |
|[Azure Active Directory Identity Protection](https://docs.microsoft.com/azure/active-directory/identity-protection/overview) |Log integration |[Integrate Microsoft Graph Security API alerts with a SIEM](https://docs.microsoft.com/graph/security-siemintegration) |


## Audit logging must be turned on

Make sure audit logging is turned on before you configure SIEM server integration. 

- For SharePoint Online, OneDrive for Business, and Azure Active Directory, [audit logging is turned on in the Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/turn-audit-log-search-on-or-off).

- For Exchange Online, [audit logging is turned on with Windows PowerShell](https://docs.microsoft.com/office365/securitycompliance/enable-mailbox-auditing).
 
## See Also

[Cloud adoption and hybrid solutions](https://docs.microsoft.com/office365/enterprise/cloud-adoption-and-hybrid-solutions)
  
[Cloud adoption Test Lab Guides (TLGs)](https://docs.microsoft.com/office365/enterprise/cloud-adoption-test-lab-guides-tlgs)


