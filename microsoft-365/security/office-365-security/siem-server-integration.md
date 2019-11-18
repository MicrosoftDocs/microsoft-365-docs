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

## Summary

If your organization is using a Security Information and Event Management (SIEM) server, or if you are planning to get a SIEM server soon, you might be wondering how that'll integrate with Microsoft 365 or Office 365. This article provides a list of resources you can use to set up SIEM server integration with your Microsoft 365 services and applications.

> [!TIP]
> If you don't have a SIEM server yet and are exploring your options, consider **[Microsoft Azure Sentinel](https://docs.microsoft.com/azure/sentinel/overview)**.

## Do I need a SIEM server?

Whether you need a SIEM server depends on many factors, such as your organization's security requirements and where your data resides. Microsoft 365 includes a wide variety of security features that meet many organizations' security needs without additional servers, such as a SIEM server. Some organizations have special circumstances that require the use of a SIEM server. Here are some examples:

- *Fabrikam* has some content and applications on premises, and some in the cloud (they have a hybrid cloud deployment). To get security reports across all their content and applications, Fabrikam has implemented a SIEM server. 

- *Contoso* is a financial services organization that has particularly stringent security requirements. They have added a SIEM server to their environment to take advantage of the extra security protection they require.

## SIEM server integration with Microsoft 365

A SIEM server can receive data from a wide variety of Microsoft 365 services and applications. The following table lists several Microsoft 365 services and applications along with SIEM server inputs, and resources to learn more about SIEM server integration. 

| Microsoft 365 Service or Application | SIEM server inputs/methods | Resources to learn more |
| --- | --- | --- |
| [Office 365 Advanced Threat Protection](office-365-atp.md)  | Audit logs | [SIEM integration with Office 365 Advanced Threat Protection](siem-integration-with-office-365-ti.md) |
| [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/) | HTTPS endpoint hosted in Azure <br/>REST API| [Pull alerts to your SIEM tools](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-siem) |
| [Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security) | Log integration | [SIEM integration with Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/siem) |

> [!TIP]
> Take a look at [Azure Sentinel](https://docs.microsoft.com/azure/sentinel/overview), which comes with a number of connectors for Microsoft solutions, available out of the box and providing real-time integration, including Microsoft Threat Protection solutions, and Microsoft 365 sources, including Office 365, Azure AD, Azure ATP, and Microsoft Cloud App Security, and more.

### Audit logging must be turned on

Make sure audit logging is turned on before you configure SIEM server integration. 

- For SharePoint Online, OneDrive for Business, and Azure Active Directory, [audit logging is turned on in the Security & Compliance Center](https://docs.microsoft.com/office365/securitycompliance/turn-audit-log-search-on-or-off).

- For Exchange Online, [audit logging is turned on with Windows PowerShell](https://docs.microsoft.com/office365/securitycompliance/enable-mailbox-auditing).
 
## Additional resources

[Integrate security solutions in Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-partner-integration#exporting-data-to-a-siem)

[Integrate Microsoft Graph Security API alerts with a SIEM](https://docs.microsoft.com/graph/security-integration)