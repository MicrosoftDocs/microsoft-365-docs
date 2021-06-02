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
If you are a Microsoft Managed Desktop customer, we are now integrated with [Endpoint analytics](https://docs.microsoft.com/mem/analytics/overview). These reports give you insights for measuring how your organization is working and the quality of the experience delivered to your users. Endpoint analytics is found in [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) in the **Reports** menu. To pivot a score to only include devices being managed by Microsoft Managed Desktop go to any report, select the **Filter** drop down, then choose **Microsoft Managed Desktop devices**.

If Endpoint analytics was not automatically configured for your tenant during enrollment [go here to learn about onboarding](https://docs.microsoft.com/en-us/mem/analytics/enroll-intune#bkmk_onboard). You can enroll all your devices or choose to only include Microsoft Managed Desktop devices by only targeting the **modern workplace device** groups for test, first, fast, and broad. These reports may require different permissions, you should refer to this article on permissions to ensure you have roles appropriately assigned.

> [!NOTE]
> To better respect privacy user privacy, there must be more than 10 Microsoft Managed Desktop devices enrolled with endpoint analytics to use this filter.

 ## Inventory data

In addition to the other reports, you can export information about the devices managed by Microsoft Managed Desktop. In the **Devices** view of the **Devices** area of Microsoft Endpoint Manager, use the **Export all** tab to [download a detailed inventory report](device-inventory-report.md).
