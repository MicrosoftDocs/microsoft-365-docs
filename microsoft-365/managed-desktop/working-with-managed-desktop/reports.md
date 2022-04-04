---
title: Work with reports
description:  The various reports available in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Work with reports

The Microsoft Endpoint Manager console brings together reporting from several products into a single location to help you monitor, and investigate issues with your Azure AD organization ("tenant") configuration and devices.

Microsoft Managed Desktop has a section in the **Reports** menu where you can find reports specific to Microsoft Managed Desktop's management of the registered devices. In several locations throughout Microsoft Endpoint Manager, you can filter reports from other product groups. You can include or exclude devices that are managed by Microsoft Managed Desktop.

## Microsoft Managed Desktop reports

Microsoft Managed Desktop provides several reports and dashboards. IT admins, in your organization, can use these reports and dashboards to understand various aspects of the population of devices. In Microsoft Endpoint Manager, navigate to the Reports section, under Microsoft Managed Desktop, select Managed devices.

In the **Summary** tab, you'll find quick metrics about device updates. Select **View details** of any metric to download additional information for offline analysis, including the underlying dataset for the metric.

When you select the **Reports** tab, you'll see descriptions for the available detailed reports. These reports are more comprehensive and support data visualization and filtering in the portal. You can also export the underlying data for offline analysis or distribution. The following reports are available today:

| Report | Description |
| ------ | ------ |
| [**Device status** report](device-status-report.md) (*in preview*) | This report shows your use of the Microsoft Managed Desktop service based on device activity and usage. |
| **Device status trend** (*in preview*) | This monitors trends in device status over the last 60 days for your Microsoft Managed Desktop devices. Trends can help  you associate device status with other changes over time, for example, new deployments. |
| [**Windows security updates** report](security-updates-report.md) (*in preview*) | This report shows how Windows security updates are released across your Microsoft Managed Desktop devices. |
| [**Application usage** report](app-usage-report.md) | This report provides information about typical app usage across your Microsoft Managed Desktop devices. For devices to provide data to this report, they must be set to the Optional diagnostic data level. |
| [**Service Metrics Report**](service-metrics-report.md) (*in preview*) | This report provides straightforward summaries of key metrics for Microsoft Managed Desktop month over month. |

## Endpoint analytics

Microsoft Managed Desktop is now integrated with [Endpoint analytics](/mem/analytics/overview). These reports give you insights for measuring how your organization is working and the quality of the experience delivered to your users. You can find Endpoint analytics in the **Reports** menu of [Microsoft Endpoint Manager](https://endpoint.microsoft.com/). To pivot a score to only include devices being managed by Microsoft Managed Desktop, go to any report, select the **Filter** dropdown, and then select **Microsoft Managed Desktop devices**.

If Endpoint analytics weren't automatically configured for your Azure AD organization ("tenant") during enrollment, you can do that yourself. For more information, see [Onboard in the Endpoint analytics portal](/mem/analytics/enroll-intune#bkmk_onboard). You can enroll all of your devices, or, if you want to include only Microsoft Managed Desktop devices, select the **modern workplace device** groups for Test, First, Fast, and Broad. These reports might require different permissions. For more information, see [Permissions](/mem/analytics/overview#permissions) to ensure you have roles appropriately assigned.

> [!NOTE]
> To better respect user privacy, there must be more than 10 Microsoft Managed Desktop devices enrolled with Endpoint analytics to use this filter.

## Intune reports

Microsoft Intune is one of the services we use to manage devices on your behalf.

In some cases, it can be helpful to use Intune reports to specifically monitor administration of your Microsoft Managed Desktop devices. You can exclude the devices we manage from the report you use to manage other devices. The following reports let you filter capability to include or exclude Microsoft Managed Desktop devices.

- [All devices](/mem/intune/remote-actions/device-management#get-to-your-devices)
- [Device compliance](/mem/intune/fundamentals/reports#device-compliance-report-organizational)
- [Noncompliant devices](/mem/intune/fundamentals/reports#noncompliant-devices-report-operational)

> [!NOTE]
> Custom Microsoft Managed Desktop roles guarantee access only to the Microsoft Managed Desktop reports. To access other parts of Microsoft Endpoint Manager, such as **All devices**, see [Role-based access control with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control).

## Microsoft Managed Desktop inventory data

In addition to the other reports, you can export information about the devices managed by Microsoft Managed Desktop. In Microsoft Endpoint Manager, navigate to the **Devices** section, under Microsoft Managed Desktop, select **Devices** and use the **Export all** tab to [download a detailed inventory report](device-inventory-report.md).
