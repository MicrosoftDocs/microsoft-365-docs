---
title: Turn on Microsoft Threat Protection in the Microsoft 365 security center
description: Learn how to enable Microsoft Threat Protection and start integrating your security incident and response. 
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
---

# Turn on Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

Microsoft Threat Protection unifies your incident response process by integrating key capabilities across Microsoft Defender Advanced Threat Protection (ATP), Office 365 ATP, Microsoft Cloud App Security, and Azure ATP. This unified experience adds powerful features you can access in the Microsoft 365 security center.

To get the best protection and optimize Microsoft Threat Protection, we recommend deploying all applicable supported services on your network. For more information, [read about deploying supported services](deploy-supported-services.md).

## Check license eligibility and required permissions
A license to a Microsoft 365 security product generally entitles you to use Microsoft Threat Protection in Microsoft 365 security center without additional licensing cost. We do recommend getting a Microsoft 365 E5, E5 Security, A5, or A5 Security license or a valid combination of licenses that provides access to all supported services.

For detailed licensing information, [read the licensing requirements](prerequisites.md#licensing-requirements).

### Check your role
You must be a **global administrator** or a **security administrator** in Azure Active Directory to turn on Microsoft Threat Protection. [View your roles in Azure AD](https://docs.microsoft.com//azure/active-directory/users-groups-roles/directory-manage-roles-portal)

## Start using the service

Microsoft Threat Protection aggregates data from the various integrated services. It will process and store data centrally to identify new insights and make centralized response workflows possible. It does this without affecting existing deployments, settings, or data associated with the integrated services.

Before you turn on the service, the Microsoft 365 security center ([security.microsoft.com](https://security.microsoft.com)) shows the Microsoft Threat Protection settings page when you select **Incidents**, **Action center**, or **Hunting** from the navigation pane. These navigation options are not shown if you are not eligible to use Microsoft Threat Protection.

![Image of the Microsoft Threat Protection settings page shown if Microsoft Threat Protection has not been turned on](../../media/mtp-enable/mtp-settings.png)
*Microsoft Threat Protection settings in Microsoft 365 security center*

To turn on Microsoft Threat Protection, simply select **Turn on Microsoft Threat Protection** and apply the change. You can also access this option by selecting **Settings** ([security.microsoft.com/settings](https://security.microsoft.com/settings)) in the navigation pane and then selecting **Microsoft Threat Protection**.

>[!NOTE]
>If you don't see **Settings** in the navigation pane or couldn't access the page, check your permissions and licenses.

### Select data center location
If Microsoft Defender ATP has been provisioned for your organization, data will be stored and processed in the same data center location you have selected for [your Microsoft Defender ATP data](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy). If you don't have Microsoft Defender ATP, a new data center location is automatically selected based on the location of active Microsoft 365 security services. The selected data center location is shown in the screen.

### Confirm that the service is on
Once the service is provisioned, it adds:

- [Incidents management](incidents-overview.md)
- An action center for managing [automated investigation and response](mtp-autoir.md)
- [Advanced hunting](advanced-hunting-overview.md) capabilities

![Image of Microsoft 365 security center navigation pane with Microsoft Threat Protection features](../../media/mtp-enable/mtp-on.png)
*Microsoft 365 security center with incidents management and other Microsoft Threat Protection capabilities*

### Getting Azure ATP data
To share Azure ATP data with Microsoft Threat Protection, ensure that Microsoft Cloud App Security and Azure ATP integration is turned on. [Learn more about this integration](https://docs.microsoft.com/cloud-app-security/aatp-integration)


## Turn off Microsoft Threat Protection
To stop using Microsoft Threat Protection, go to **Settings** > **Microsoft Threat Protection** > **Opt-in / Opt-out** in the Microsoft 365 security center. Unselect **Turn on Microsoft Threat Protection** and apply the changes.

Corresponding features will be removed from the Microsoft 365 security center.

## Get assistance

Microsoft support staff can help provision or deprovision the service and related resources on your tenant. For assistance, select **Need help?** in the Microsoft 365 security center. When contacting support, mention Microsoft Threat Protection.

## Frequently asked questions

### I don’t have a Microsoft 365 E5 license. Can I still use Microsoft Threat Protection?

Customers with the following non-E5 licenses can use Microsoft Threat Protection:

- Microsoft Defender Advanced Threat Protection
- Azure Advanced Threat Protection
- Microsoft Cloud App Security
- Office 365 Advanced Threat Protection (Plan 2)
 
For a full list of supported licenses, [read the licensing requirements](prerequisites.md#licensing-requirements).

### Do I need to install or deploy anything to start using Microsoft Threat Protection?

No, Microsoft Threat Protection consolidates data from Microsoft 365 security services that you have already deployed. Once you turn it on, incident, automation, and hunting experiences will start working within the scope of the deployed products. If none of these products are properly deployed, Microsoft Threat Protection will not display any data and is unable to take any action.

To optimize your Microsoft Threat Protection experiences, we recommend deploying *all* supported [Microsoft 365 security products and services](deploy-supported-services.md).

### Where does Microsoft Threat Protection process and store my data?
Microsoft Threat Protection automatically selects an optimal location for the data center where consolidated data is processed and stored. If you have Microsoft Defender ATP, it selects the same location used by Microsoft Defender ATP. **If you don’t have Microsoft Defender ATP, the provisioning process selects...**

The data center location is shown before and after the service is provisioned in the settings page for Microsoft Threat Protection (**Settings > Microsoft Threat Protection**). **If you prefer to use another data center location, contact us…** 

### Where can I access Microsoft Threat Protection?

Microsoft Threat Protection is available in Microsoft 365 security center. To go to the security center, browse to the URL [https://security.microsoft.com](https://security.microsoft.com).

###	What permissions do I need to access Microsoft Threat Protection in Microsoft 365 security center?

Accounts assigned the following Azure Active Directory (AD) roles can access Microsoft Threat Protection functionality and data:

•	Global administrator
•	Security administrator
•	Security Operator
•	Global Reader
•	Security Reader

>[!NOTE]
>Role-based access control settings in Microsoft Defender ATP influence access to data. For more information, read about [managing access to Microsoft Threat Protection](mtp-permissions.md).

### What time zone does Microsoft Threat Protection default to?
By default, Microsoft Threat Protection displays time information in the UTC time zone. You can change this setting to use your local time zone. [Learn about setting the time zone](mtp-time-zone.md)

### How can I learn about new Microsoft Threat Protection feature and UI updates?

Microsoft regularly provides information through the various channels, including:

- The [message center](../../admin/manage/message-center.md) in Microsoft 365 admin center
- Blogposts in the [Microsoft 365 security & compliance tech community](https://techcommunity.microsoft.com/t5/security-privacy-and-compliance/bg-p/securityprivacycompliance)

Get the latest publicly available experiences by turning on [preview features](preview.md).

## Related topics

- [Microsoft Threat Protection overview](microsoft-threat-protection.md)
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Microsoft Defender ATP overview](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)
- [Office 365 ATP overview](../office-365-security/office-365-atp.md)
- [Microsoft Cloud App Security overview](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
- [Azure ATP overview](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp)
- [Microsoft Defender ATP data storage](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy)