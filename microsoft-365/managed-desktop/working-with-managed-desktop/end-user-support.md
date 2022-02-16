---
title: Get user support for Microsoft Managed Desktop
description:  How users can get help with the service and devices
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Getting help for users

If you've reached the point in the [workflow](../service-description/user-support.md) where you need to request elevated device access or escalation to Microsoft, follow these steps:

>[!NOTE]
>These support options are not available for devices in the Test group.

## Elevation requests

Before you request elevated access to a device, it's best to review which actions are best suited.

| Actions | Examples |
| ------ | ------ |
| **Typical actions** are intended for the elevation request process. It is performed routinely when troubleshooting problems with Microsoft Managed Desktop devices. | <ul><li>Elevating built-in system troubleshooters, the command prompt, or Windows PowerShell Troubleshooting line-of-business applications.</li><li>Using a workaround to correct something that should function by design (such as BitLocker activation or system time not updating).</li><li>Elevating Device Manager to do things like update drivers, uninstall a device, or scan for new changes.</li></ul>
| **Actions that aren't recommended** | <ul><li>Installing software or browsers.</li><li>Installing drivers outside of Windows settings, including drivers for peripherals.</li><li>Installing .msi or .exe files.</li><li>Installing Windows features.</li></ul>
| **Actions that aren't supported** | <ul><li>Installing software or features that conflict with Microsoft Managed Desktop security or management capabilities or operations.</li><li>Disabling a Windows feature that is required for Microsoft Managed Desktop, such as BitLocker.</li><li>Modifying settings managed by your organization.</li><ul>

**To request elevation:**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu.
1. In the **Microsoft Managed Desktop** section, select **Devices**, which contains two tabs: the **Devices** tab and the **Elevation requests** tab.
1. To create a new elevation request on the **Device** tab, select a single device that you want to elevate.
1. From the Device actions dropdown menu, select **Request elevation**. A new elevation request fly-in will appear with the device’s name pre-populated in that field.
1. Instead, to create a new elevation request in the **Elevations requests** tab, select **+New elevation request.**
1. Provide these details:
    - **Support ticket ID**: This is from your own support ticketing system.
    - **Device name**: This is only when creating request from the **Elevation requests** tab. Enter the device serial number and then select the device from the menu.
    - **Category**: Select the category that best fits your issue. If no option seems close, then select **Other**. It's best to select a category if at all possible.
    - **Title**: Provide a short description of the issue on the device.
    - **Plan of action**: Provide the troubleshooting steps you plan to take once elevation is granted.
1. Select **Submit**.
1. The list and details of all active and closed requests can be seen on the **Elevation requests** tab.

## Escalation requests

**To [escalate](../service-description/user-support.md#escalation-portal) an issue to Microsoft:**

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Tenant administration** menu.
2. In the Microsoft Managed Desktop section, select **Service requests**.
3. In the **Service requests** section, select **+ New support request**.
4. Provide a brief description in the **Title** field. Then, set the **Request type** to **Incident**.
5. Select the **Category** and **Sub-category** that best fits your issue. Then, select **Next**.
6. In the **Details** section, provide the following information:
    - **Description**: Add any extra details that could help our team understand the problem. If you need to attach files, you can do that by coming back to the request after you submit it.
    - **Primary contact information**: Provide information about how to contact the main person responsible for working with our team.
7. Select the **Severity** level. For more information, see [Support request severity definitions](../working-with-managed-desktop/admin-support.md#support-request-severity-definitions).
8. Provide as much information about the request as possible to help the team respond quickly. Depending on the type of request, you may be required to provide different details.
9. Review all the information you provided for accuracy.
10. When you're ready, select **Create**.
