---
title: Turn on Microsoft 365 Defender 
description: Learn how to enable Microsoft 365 Defender and start integrating your security incident and response.
keywords: get started, enable Microsoft 365 Defender, Microsoft 365 Defender, M365, security, data location, required permissions, license eligibility, settings page
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
    - m365-security
    - m365solution-getstarted
    - highpri
    - tier3
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 02/17/2021
---

# Turn on Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

[Microsoft 365 Defender](microsoft-365-defender.md) unifies your incident response process by integrating key capabilities across Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and Microsoft Defender for Identity. This unified experience adds powerful features you can access in the Microsoft 365 Defender portal.

Microsoft 365 Defender automatically turns on when eligible customers with the required permissions visit Microsoft 365 Defender portal. Read this article to understand various prerequisites and how Microsoft 365 Defender is provisioned.

## Check license eligibility and required permissions

A license to a Microsoft 365 security product generally entitles you to use Microsoft 365 Defender without additional licensing cost. We do recommend getting a Microsoft 365 E5, E5 Security, A5, or A5 Security license or a valid combination of licenses that provides access to all supported services.

For detailed licensing information, [read the licensing requirements](prerequisites.md#licensing-requirements).

### Check your role

You must be one of the following roles to turn on Microsoft 365 Defender:

- Global Administrator
- Security Administrator
- Security Operator
- Global Reader
- Security Reader
- Compliance Administrator
- Compliance Data Administrator
- Application Administrator
- Cloud Application Administrator

[View your roles in Azure AD](/azure/active-directory/users-groups-roles/directory-manage-roles-portal)

## Supported services

Microsoft 365 Defender aggregates data from the various supported services that you've already deployed. It will process and store data centrally to identify new insights and make centralized response workflows possible. It does this without affecting existing deployments, settings, or data associated with the integrated services.

To get the best protection and optimize Microsoft 365 Defender, we recommend deploying all applicable supported services on your network. For more information, [read about deploying supported services](deploy-supported-services.md).

## Onboard to the service

Onboarding to Microsoft 365 Defender is simple. From the navigation menu, select any item, such as **Incidents & alerts**, **Hunting**, **Action center**, or **Threat analytics** to initiate the onboarding process. 

### Data center location

Microsoft 365 Defender will store and process data in the [same location used by Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy). If you don't have Microsoft Defender for Endpoint, a new data center location is automatically selected based on the location of active Microsoft 365 security services. The selected data center location is shown in the screen.

Select **Need help?** in the Microsoft 365 Defender portal to contact Microsoft support about provisioning Microsoft 365 Defender in a different data center location.

> [!NOTE]
> In the past, Microsoft Defender for Endpoint automatically provisioned in European Union (EU) data centers when turned on through Microsoft Defender for Cloud. Microsoft 365 Defender will automatically provision in the same EU data center for customers who have provisioned Defender for Endpoint in this manner in the past.

### Confirm that the service is on

Once the service is provisioned, it adds:

- [Incidents management](incidents-overview.md)
- [Alerts queue](investigate-alerts.md)
- An action center for managing [automated investigation and response](m365d-autoir.md)
- [Advanced hunting](advanced-hunting-overview.md) capabilities
- Threat analytics

:::image type="content" source="../../media/overview-incident.png" alt-text="The navigation pane in the Microsoft 365 Defender portal with Microsoft 365 Defender features" lightbox="../../media/overview-incident.png":::
*Microsoft 365 Defender portal with incidents management and other capabilities*

### Getting Microsoft Defender for Identity data 

To enable the integration with Microsoft Defender for Cloud Apps, you'll need to log in to the Microsoft Defender for Cloud Apps at least once.

## Get assistance

To get answers to the most commonly asked questions about turning on Microsoft 365 Defender, [read the FAQ](m365d-enable-faq.md).

Microsoft support staff can help provision or deprovision the service and related resources on your tenant. For assistance, select **Need help?** in the Microsoft 365 Defender portal. When contacting support, mention Microsoft 365 Defender.

## Related topics

- [Frequently asked questions](m365d-enable-faq.md)
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Setup guides for Microsoft 365 Defender](deploy-configure-m365-defender.md)
- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [Microsoft Defender for Endpoint overview](../defender-endpoint/microsoft-defender-endpoint.md)
- [Defender for Office 365 overview](../office-365-security/defender-for-office-365.md)
- [Microsoft Defender for Cloud Apps overview](/cloud-app-security/what-is-cloud-app-security)
- [Microsoft Defender for Identity overview](/azure-advanced-threat-protection/what-is-atp)
- [Microsoft Defender for Endpoint data storage](../defender-endpoint/data-storage-privacy.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
