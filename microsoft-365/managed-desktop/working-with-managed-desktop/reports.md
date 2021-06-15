---
title: Work with reports
description:  The various reports available in Microsoft Managed Desktop
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

Microsoft Managed Desktop provides several reports and dashboards that IT admins in your organization can use to understand various aspects of the population of devices. 

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

## Endpoint analytics
Microsoft Managed Desktop is now integrated with [Endpoint analytics](/mem/analytics/overview). These reports give you insights for measuring how your organization is working and the quality of the experience delivered to your users. Endpoint analytics is in the **Reports** menu of [Microsoft Endpoint Manager](https://endpoint.microsoft.com/). To pivot a score to only include devices being managed by Microsoft Managed Desktop go to any report, select the **Filter** drop down, and then select **Microsoft Managed Desktop devices**.

If Endpoint analytics wasn't automatically configured for your Azure AD organization ("tenant") during enrollment, you can do that yourself. For more information, see [Onboard in the Endpoint analytics portal](/mem/analytics/enroll-intune#bkmk_onboard). You can enroll all your devices or, if you want to include only Microsoft Managed Desktop devices, select the **modern workplace device** groups for Test, First, Fast, and Broad. These reports might require different permissions. For more information, see [Permissions](/mem/analytics/overview#permissions) to ensure you have roles appropriately assigned.

> [!NOTE]
> To better respect privacy user privacy, there must be more than 10 Microsoft Managed Desktop devices enrolled with Endpoint analytics to use this filter.

 ## Inventory data

In addition to the other reports, you can export information about the devices managed by Microsoft Managed Desktop. In the **Devices** view of the **Devices** area of Microsoft Endpoint Manager, use the **Export all** tab to [download a detailed inventory report](device-inventory-report.md).
