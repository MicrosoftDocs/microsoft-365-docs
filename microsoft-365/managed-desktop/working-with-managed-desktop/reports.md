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

The Microsoft Endpoint Manager console brings together reporting from several products into a single location to help you monitor and investigate issues with your Azure AD organization ("tenant") configuration and devices. Microsoft Managed desktop has a section Reports where you can find reports specific to Microsoft Managed Desktop's management of the devices you’ve registered. Additionally, in several locations throughout Microsoft Endpoint Manager you can filter reports from other product groups to specifically include or exclude your devices that are managed by Microsoft Managed Desktop. 

## Microsoft Managed Desktop reports
Microsoft Managed Desktop provides several reports and dashboards that IT admins in your organization can use to understand various aspects of the population of devices. You can find these reports by navigating to **Managed devices** under the *Microsoft Managed Desktop* section of the **Reports** menu in Microsoft Endpoint Manager. 

On the **Summary** tab you'll find quick metrics about device updates. Selecting **View details** of any metric will allow you to download additional information for offline analysis, including the underlying dataset for the metric.

When you select the **Reports** tab, you will see descriptions for the available detailed reports. These reports are more comprehensive and support visualization and filtering of the data in the portal as well as exporting the underlying data for offline analysis or distribution. The following reports are available today:
- The **Device status** *(preview)* shows your use of the Microsoft Managed Desktop service based on device activity and usage. 
- You can use **Device status trend** *(preview)* to monitor trends in device status over the last 60 days for your Microsoft Managed Desktop devices. Doing this can help  you associate device status with other changes over time, for example, new deployments. 
- The **Windows security updates** *(preview)* report shows how Windows security updates are released across your Microsoft Managed Desktop devices.

> [!NOTE]
> Reports in *(preview)* can change with limited notice as we make improvements based on feedback we receive during the public preview.

## Endpoint analytics
Microsoft Managed Desktop is now integrated with [Endpoint analytics](/mem/analytics/overview). These reports give you insights for measuring how your organization is working and the quality of the experience delivered to your users. Endpoint analytics is in the **Reports** menu of [Microsoft Endpoint Manager](https://endpoint.microsoft.com/). To pivot a score to only include devices being managed by Microsoft Managed Desktop go to any report, select the **Filter** drop down, and then select **Microsoft Managed Desktop devices**.

If Endpoint analytics wasn't automatically configured for your Azure AD organization ("tenant") during enrollment, you can do that yourself. For more information, see [Onboard in the Endpoint analytics portal](/mem/analytics/enroll-intune#bkmk_onboard). You can enroll all of your devices or, if you want to include only Microsoft Managed Desktop devices, select the **modern workplace device** groups for Test, First, Fast, and Broad. These reports might require different permissions. For more information, see [Permissions](/mem/analytics/overview#permissions) to ensure you have roles appropriately assigned.

> [!NOTE]
> To better respect privacy user privacy, there must be more than 10 Microsoft Managed Desktop devices enrolled with Endpoint analytics to use this filter.

## Intune reports
Microsoft Intune is one of the services we use to manage devices on your behalf. In some cases, it can be helpful to use Intune reports to specifically monitor administration of your Microsoft Managed Desktop devices. Or you might want to exclude the devices we manage from a report you use to manage other devices. The following reports let you filter capability to include or exclude Microsoft Managed Desktop devices.

- [All devices](/mem/intune/remote-actions/device-management#get-to-your-devices)
- [Device compliance](/mem/intune/fundamentals/reports#device-compliance-report-organizational)
- [Noncompliant devices](/mem/intune/fundamentals/reports#noncompliant-devices-report-operational)

> [!NOTE]
> Custom Microsoft Managed Desktop roles guarantee access only to the Microsoft Managed Desktop reports. To access other parts of Microsoft Endpoint Manager, such as **All devices**, see [Role-based access control with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control). 

## Microsoft Managed Desktop inventory data

In addition to the other reports, you can export information about the devices managed by Microsoft Managed Desktop. In the **Devices** view of the **Devices** area of Microsoft Endpoint Manager, use the **Export all** tab to [download a detailed inventory report](device-inventory-report.md).
