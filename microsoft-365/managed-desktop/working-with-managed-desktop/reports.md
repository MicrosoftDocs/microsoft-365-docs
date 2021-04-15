---
title: Work with reports
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Work with reports

Microsoft Managed Desktop provides several reports and dashboards that IT admins in your organization can use to understand various aspects of the population of devices. You'll find reports in two locations: in [Microsoft Endpoint Manager](https://endpoint.microsoft.com) and in the [Microsoft 365 Admin Center](https://admin.microsoft.com/adminportal/home?previewoff=false#/microsoftmanageddesktop). 

## Reports in Microsoft Endpoint Manager

The Microsoft Endpoint Manager console brings together reporting from several products into a single location to help you monitor and investigate issues with your Azure AD organization ("tenant") configuration and devices. Microsoft Managed desktop has a section under **Reports** in the main menu where you can find reports specific to Microsoft Managed Desktop's management of the devices you’ve registered.

These reports include:
- **Managed devices** > **Feature updates**: This view shows the overall status of feature updates across your Microsoft Managed Desktop devices.
- **Managed devices** > **Office updates**: This view shows the overall status of Office updates across your Microsoft Managed Desktop devices.

Additionally, in several locations throughout Microsoft Endpoint Manager you can filter reports from other product groups to specifically include or exclude your devices that are managed by Microsoft Managed Desktop. These reports have integrated this filtering capability:

- [All devices](/mem/intune/remote-actions/device-management#get-to-your-devices)
- [Device compliance](/mem/intune/fundamentals/reports#device-compliance-report-organizational)
- [Noncompliant devices](/mem/intune/fundamentals/reports#noncompliant-devices-report-operational)

> [!NOTE]
> Custom Microsoft Managed Desktop roles guarantee access only to the Microsoft Managed Desktop reports. To access other parts of Microsoft Endpoint Manager, such as **All devices**, see [Role-based access control with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control). 

## Reports in Microsoft 365 Admin Center

You can find Microsoft Managed Desktop insights reports by opening the [Microsoft 365 Admin Center](https://admin.microsoft.com/adminportal/home?previewoff=false#/microsoftmanageddesktop), and then navigating to **Reports** and selecting **Microsoft Managed Desktop**. You can also follow the direct link to these reports from the **Microsoft Managed Desktop** tab on the homepage [Microsoft Endpoint Manager](https://endpoint.microsoft.com). 

These reports include: 

- [Usage insights](usage-insights.md) - This view provides usage metrics for your Microsoft Managed Desktop devices.
- [Reliability insights](reliability-insights.md) - This view provides you with a health summary of your managed devices.
- [Battery insights](battery-insights.md) - This view shows you information about the energy consumption of apps and projected battery life for devices in your environment.
- [Windows security update insights](security-update-insights.md) - This view shows you information about the status of security updates for your Microsoft Managed Desktop devices.

 ## Inventory data

In addition to the other reports, you can export information about the devices managed by Microsoft Managed Desktop. In the **Devices** view of the **Devices** area of Microsoft Endpoint Manager, use the **Export all** tab to [download a detailed inventory report](device-inventory-report.md).