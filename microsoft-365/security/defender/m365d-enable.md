---
title: Turn on Microsoft Defender XDR 
description: Learn how to enable Microsoft Defender XDR and start integrating your security incident and response.
keywords: get started, enable Microsoft Defender XDR, Microsoft Defender XDR, M365, security, data location, required permissions, license eligibility, settings page
search.product: eADQiWindows 10XVcnh
ms.service: defender-xdr
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
    - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 09/21/2023
---

# Turn on Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

[Microsoft Defender XDR](microsoft-365-defender.md) unifies your incident response process by integrating key capabilities across Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and Microsoft Defender for Identity. This unified experience adds powerful features you can access in the Microsoft Defender portal.

Microsoft Defender XDR automatically turns on when eligible customers with the required permissions visit Microsoft Defender portal. Read this article to understand various prerequisites and how Microsoft Defender XDR is provisioned.

## Check license eligibility and required permissions

A license to a Microsoft 365 security product generally entitles you to use Microsoft Defender XDR without additional licensing cost. We do recommend getting a Microsoft 365 E5, E5 Security, A5, or A5 Security license or a valid combination of licenses that provides access to all supported services.

For detailed licensing information, [read the licensing requirements](prerequisites.md#licensing-requirements).

### Check your role

You must be one of the following roles to turn on Microsoft Defender XDR:

- Global Administrator
- Security Administrator
- Security Operator
- Global Reader
- Security Reader
- Compliance Administrator
- Compliance Data Administrator
- Application Administrator
- Cloud Application Administrator

[View your roles in Microsoft Entra ID](/azure/active-directory/users-groups-roles/directory-manage-roles-portal)

## Supported services

Microsoft Defender XDR aggregates data from the various supported services that you've already deployed. It will process and store data centrally to identify new insights and make centralized response workflows possible. It does this without affecting existing deployments, settings, or data associated with the integrated services.

To get the best protection and optimize Microsoft Defender XDR, we recommend deploying all applicable supported services on your network. For more information, [read about deploying supported services](deploy-supported-services.md).

## Onboard to the service

Onboarding to Microsoft Defender XDR is simple. From the navigation menu, select any item, such as **Incidents & alerts**, **Hunting**, **Action center**, or **Threat analytics** to initiate the onboarding process. 

### Data center location

Microsoft Defender XDR will store and process data in the [same location used by Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy). If you don't have Microsoft Defender for Endpoint, a new data center location is automatically selected based on the location of active Microsoft 365 security services. The selected data center location is shown in the screen.

Select **Need help?** in the Microsoft Defender portal to contact Microsoft support about provisioning Microsoft Defender XDR in a different data center location.

> [!NOTE]
> In the past, Microsoft Defender for Endpoint automatically provisioned in European Union (EU) data centers when turned on through Microsoft Defender for Cloud. Microsoft Defender XDR will automatically provision in the same EU data center for customers who have provisioned Defender for Endpoint in this manner in the past.

### Confirm that the service is on

Once the service is provisioned, it adds:

- [Incidents management](incidents-overview.md)
- [Alerts queue](investigate-alerts.md)
- An action center for managing [automated investigation and response](m365d-autoir.md)
- [Advanced hunting](advanced-hunting-overview.md) capabilities
- Threat analytics

:::image type="content" source="../../media/overview-incident.png" alt-text="The navigation pane in the Microsoft Defender portal with Microsoft Defender XDR features" lightbox="../../media/overview-incident.png":::
*Microsoft Defender portal with incidents management and other capabilities*

### Getting Microsoft Defender for Identity data 

To enable the integration with Microsoft Defender for Cloud Apps, you'll need to log in to the Microsoft Defender for Cloud Apps at least once.

## Get assistance

To get answers to the most commonly asked questions about turning on Microsoft Defender XDR, [read the FAQ](m365d-enable-faq.md).

Microsoft support staff can help provision or deprovision the service and related resources on your tenant. For assistance, select **Need help?** in the Microsoft Defender portal. When contacting support, mention Microsoft Defender XDR.

## Related topics

- [Frequently asked questions](m365d-enable-faq.md)
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Setup guides for Microsoft Defender XDR](deploy-configure-m365-defender.md)
- [Microsoft Defender XDR overview](microsoft-365-defender.md)
- [Microsoft Defender for Endpoint overview](../defender-endpoint/microsoft-defender-endpoint.md)
- [Defender for Office 365 overview](../office-365-security/defender-for-office-365.md)
- [Microsoft Defender for Cloud Apps overview](/cloud-app-security/what-is-cloud-app-security)
- [Microsoft Defender for Identity overview](/azure-advanced-threat-protection/what-is-atp)
- [Microsoft Defender for Endpoint data storage](../defender-endpoint/data-storage-privacy.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
