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

- **Typical actions** are what this process is intended for and would be performed routinely while troubleshooting problems with Microsoft Managed Desktop devices. Examples include:
    - Elevating built-in system troubleshooters, the command prompt, or Windows PowerShell
    - Troubleshooting line-of-business applications
    - Using a workaround to correct something that should function by design (such as BitLocker activation or system time not updating)
    - Elevating Device Manager to do things like update drivers, uninstall a device, or scan for new changes

- **Actions that aren't recommended** include the following:
    - Installing software or browsers
    - Installing drivers outside of Windows settings, including those for peripherals
    - Installing .msi or .exe files
    - Installing Windows features

- **Actions that aren't supported** include the following:
    - Installing software or features that conflict with Microsoft Managed Desktop security or management capabilities or operations
    - Disabling a Windows feature that is required for Microsoft Managed Desktop, such as BitLocker
    - Modifying settings managed by your org

### To request elevation

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Devices** menu.
2. Look for the **Microsoft Managed Desktop** section, and then select the **Devices** blade, which contains two tabs–the **Devices** tab and the **Elevation requests** tab. 
3. To create a new elevation request on the **Device** tab, select a single device that you want to elevate, and then select **Request elevation** from the Device actions dropdown menu. A new elevation request fly-in pane will appear with the device’s name prepopulated in that field.
4. Alternatively, to create a new elevation request on the **Elevations requests** tab, select **+New elevation request.**
5. Provide these details:
    - **Support ticket ID** from your own support ticketing system.
    - **Device name**(only when creating request from the **Elevation requests** tab): Enter the device serial number and then select the device from the menu.
    - **Category**: Select the category that best fits your issue. If no option seems close, then select **Other**. It's best to select a category if at all possible.
    - **Title**: Provide a short description of the issue on the device.
    - **Plan of action**: Provide the troubleshooting steps you plan to take once elevation is granted. 
6. Select **Submit**.
7. The list and details of all active and closed requests can be seen on the **Elevation requests** Tab.



## Escalation requests


If you need to [escalate](../service-description/user-support.md#escalation-portal) an issue to Microsoft, follow these steps:

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Tenant administration** menu.
2. Look for the Microsoft Managed Desktop section, and then select **Service requests**.
3. On the **Service requests** blade, select **+ New support request**.
4. Provide a very brief description in the **Title** box. Then set the **Request type** to **Incident**. 
5. Select the **Category** and **Sub-category** that best fits your issue and select **Next**.
6. In the **Details** section, provide the following information:
    - **Description**: Add any additional details that could help our team understand the problem. If you need to attach files, you can do that by coming back to the request after you submit it.
    - **Primary contact information**: Provide info about how to contact the main person responsible for working with our team.
7. Select the **Severity** level. For more information, see Support request severity definitions.
8. Provide as much information about the request as possible to help the team respond quickly. Depending on the type of request, you may be required to provide different details.
9. Review all the information you provided for accuracy.
10. When you're ready, select **Create**.
