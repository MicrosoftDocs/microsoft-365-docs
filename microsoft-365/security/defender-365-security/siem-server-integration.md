---
title: SIEM server integration with Microsoft 365 services and applications
f1.keywords: 
  - NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 11/18/2019

localization_priority: Normal
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - Ent_Solutions
  - SIEM
  - seo-marvel-apr2020
description: Get an overview of Security Information and Event Management (SIEM) server integration with your Microsoft 365 cloud services and applications
ms.technology: mdo
ms.prod: m365-security
---

# Security Information and Event Management (SIEM) server integration with Microsoft 365 services and applications

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

## Summary

Is your organization using or planning to get a Security Information and Event Management (SIEM) server? You might be wondering how it integrates with Microsoft 365 or Office 365. This article provides a list of resources you can use to integrate your SIEM server with Microsoft 365 services and applications.

> [!TIP]
> If you don't have a SIEM server yet and are exploring your options, consider **[Microsoft Azure Sentinel](/azure/sentinel/overview)**.

## Do I need a SIEM server?

Whether you need a SIEM server depends on many factors, such as your organization's security requirements and where your data resides. Microsoft 365 includes a wide variety of security features that meet many organizations' security needs without additional servers, such as a SIEM server. Some organizations have special circumstances that require the use of a SIEM server. Here are some examples:

- *Fabrikam* has some content and applications on premises, and some in the cloud (they have a hybrid cloud deployment). To get security reports across all their content and applications, Fabrikam has implemented a SIEM server.

- *Contoso* is a financial services organization that has particularly stringent security requirements. They have added a SIEM server to their environment to take advantage of the extra security protection they require.

## SIEM server integration with Microsoft 365

A SIEM server can receive data from a wide variety of Microsoft 365 services and applications. The following table lists several Microsoft 365 services and applications, along with SIEM server inputs and resources to learn more.

****

|Microsoft 365 Service or Application|SIEM server inputs/methods|Resources to learn more|
|---|---|---|
|[Microsoft Defender for Office 365](defender-for-office-365.md)|Audit logs|[SIEM integration with Microsoft Defender for Office 365](siem-integration-with-office-365-ti.md)|
|[Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)|HTTPS endpoint hosted in Azure <p> REST API|[Pull alerts to your SIEM tools](../defender-endpoint/configure-siem.md)|
|[Microsoft Cloud App Security](/cloud-app-security/what-is-cloud-app-security)|Log integration|[SIEM integration with Microsoft Cloud App Security](/cloud-app-security/siem)|
|

> [!TIP]
> Take a look at [Azure Sentinel](/azure/sentinel/overview). Azure Sentinel comes with connectors for Microsoft solutions. These connectors are available "out of the box" and provide for real-time integration. You can use Azure Sentinel with your Microsoft 365 Defender solutions and Microsoft 365 services, including Office 365, Azure AD, Microsoft Defender for Identity, Microsoft Cloud App Security, and more.

### Audit logging must be turned on

Make sure that audit logging is turned on before you configure SIEM server integration.

- For SharePoint Online, OneDrive for Business, and Azure Active Directory, [audit logging is turned on in the Security & Compliance Center](../../compliance/turn-audit-log-search-on-or-off.md).

- For Exchange Online, see [Manage mailbox auditing](../../compliance/enable-mailbox-auditing.md).

## More resources

[Integrate security solutions in Azure Defender](/azure/security-center/security-center-partner-integration#exporting-data-to-a-siem)

[Integrate Microsoft Graph Security API alerts with a SIEM](/graph/security-integration)