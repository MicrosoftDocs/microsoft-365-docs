---
title: Turn on Microsoft Threat Protection - Microsoft 365 security
description: Learn how to enable Microsoft Threat Protection (MTP) and start integrating your security incident and response. 
keywords: get started, enable MTP, Microsoft Threat Protection, M365, security, data location, required permissions, license eligibility, settings page
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-jun2020
---

# Turn on Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

Microsoft Threat Protection unifies your incident response process by integrating key capabilities across Microsoft Defender Advanced Threat Protection (ATP), Office 365 ATP, Microsoft Cloud App Security, and Azure ATP. This unified experience adds powerful features you can access in the Microsoft 365 security center.

To get the best protection and optimize Microsoft Threat Protection, we recommend deploying all applicable supported services on your network. For more information, [read about deploying supported services](deploy-supported-services.md).

>[!NOTE]
>To learn about Advanced Threat Protection, see [Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp?view=o365-worldwide).

## Check license eligibility and required permissions
A Microsoft 365 E5, E5 Security, A5, or A5 Security license or a valid combination of licenses provides access to supported services and entitles you to use Microsoft Threat Protection in Microsoft 365 security center without additional licensing cost.

For detailed licensing information, [read the licensing requirements](prerequisites.md#licensing-requirements).

### Check your role
You must be a **global administrator** or a **security administrator** in Azure Active Directory to turn on Microsoft Threat Protection. [View your roles in Azure AD](https://docs.microsoft.com//azure/active-directory/users-groups-roles/directory-manage-roles-portal)

## Start using the service

>[!IMPORTANT]
>Starting May 12, 2020, Microsoft will gradually roll out new, optimized experiences around [licensing requirements](prerequisites.md#licensing-requirements) and turning on Microsoft Threat Protection. For several weeks during this period, some customers will start to see changes to their portal experiences. Information about the new experiences are marked **New experience** in this article.

Microsoft Threat Protection aggregates data from the various integrated services. It will process and store data centrally to identify new insights and make centralized response workflows possible. It does this without affecting existing deployments, settings, or data associated with the integrated services.

Before you turn on the service, the Microsoft 365 security center ([security.microsoft.com](https://security.microsoft.com)) shows the Microsoft Threat Protection welcome page when you select **Incidents**, **Action center**, or **Hunting** from the navigation pane. These navigation options are not shown if you are not eligible to use Microsoft Threat Protection.

![Image of the Microsoft Threat Protection welcome page shown if feature turned off](../../media/mtp-welcome.png)
*Microsoft Threat Protection welcome page in Microsoft 365 security center*

To turn on Microsoft Threat Protection, simply complete the process from the welcome page. You can also turn on Microsoft Threat Protection by accessing **Settings** ([security.microsoft.com/settings](https://security.microsoft.com/settings)) in the navigation pane and selecting **Microsoft Threat Protection**.

>[!NOTE]
>If you don't see **Settings** in the navigation pane or couldn't access the page, check your permissions and licenses.

### Select data center location
If Microsoft Defender ATP has been provisioned for your organization, data will be stored and processed in the same data center location you have selected for [your Microsoft Defender ATP data](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy). If you don't have Microsoft Defender ATP, you will be asked to choose a new data center location specifically for Microsoft Threat Protection.

You need to provide consent before data is shared between services and aggregated.

**New experience:** Starting May 12, 2020, customers will gradually receive changes to this experience. For those with the new experience, the service automatically selects the optimal data center location for your aggregated data based on your existing Microsoft 365 security services. The selected data center location is shown in the screen.

### Confirm that the service is on
Once the service is provisioned, it adds:

- [Incidents management](incidents-overview.md)
- An action center for managing [automated investigation and response](mtp-autoir.md)
- [Advanced hunting](advanced-hunting-overview.md) capabilities

![Image of Microsoft 365 security center navigation pane with Microsoft Threat Protection features](../../media/mtp-on.png)
*Microsoft 365 security center with incidents management and other Microsoft Threat Protection capabilities*

### Getting Azure ATP data
To share Azure ATP data with Microsoft Threat Protection, ensure that Microsoft Cloud App Security and Azure ATP integration is turned on. [Learn more about this integration](https://docs.microsoft.com/cloud-app-security/aatp-integration)

## Turn off Microsoft Threat Protection
To stop using Microsoft Threat Protection, go to **Settings** > **Microsoft Threat Protection** > **Opt-in / Opt-out** in the Microsoft 365 security center. Unselect **Turn on Microsoft Threat Protection** and save the changes.

Corresponding features will be removed from the Microsoft 365 security center.

## Get assistance

Microsoft support staff can help provision or deprovision the service and related resources on your tenant. For assistance, select **Need help?** in the Microsoft 365 security center. When contacting support, mention Microsoft Threat Protection.

## Related topics

- [Microsoft Threat Protection overview](microsoft-threat-protection.md)
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Microsoft Defender ATP overview](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)
- [Office 365 ATP overview](../office-365-security/office-365-atp.md)
- [Microsoft Cloud App Security overview](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
- [Azure ATP overview](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp)
- [Microsoft Defender ATP data storage](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy)