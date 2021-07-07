---
title: Get user support for Microsoft Managed Desktop
description:  How users can get help with the service and devices
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Getting help for users

If you've reached the point in the [workflow](../service-description/user-support.md) where you need to request elevated device access or escalation to Microsoft, follow these steps:
 
>[!NOTE]
>These support options are not available for devices in the Test group.

## Elevation requests

Before you request elevated access to a device, it's best to review which actions are best suited.

- Typical actions are what this process is intended for and would be performed routinely while troubleshooting problems with Microsoft Managed Desktop devices. Examples include:
    - Elevating built-in system troubleshooters, the command prompt, or Windows PowerShell
    - Troubleshooting line-of-business applications
    - Using a workaround to correct something that should function by design (such as BitLocker activation or system time not updating)
    - Elevating Device Manager to do things like update drivers, uninstall a device, or scan for new changes

- Actions that aren't recommended include the following:
    - Installing software or browsers
    - Installing drivers outside of Windows settings, including those for peripherals
    - Installing .msi or .exe files
    - Installing Windows features

- Actions that aren't supported include the following:
    - Installing software or features that conflict with Microsoft Managed Desktop security or management capabilities or operations
    - Disabling a Windows feature that is required for Microsoft Managed Desktop, such as BitLocker
    - Modifying settings managed by your org

### To request elevation

1. Go to the portal at [https://aka.ms/mmdelevationrequest](https://aka.ms/mmdelevationrequest) and sign in with your Azure Active Directory credentials.
2. Select **New elevation request**.
3. Provide these details:
    - **Support ticket ID** from your own support ticketing system.
    - **Device name**: enter the device serial number and then select the device from the menu.
    - **Category**: Select the category that best fits your issue. If no option seems close, then select **Other** and provide more info in the **Title** and **Plan of action** fields. It's best to select a category if at all possible.
    - **Subcategory**: Select the one that best fits the issue. If no option seems close, then select **Other** and provide a short description in **Title**. In **Plan of action**, provide the troubleshooting steps you plan to take once elevation is granted.
4. Select **Submit**.


## Escalation requests

{SHOULD WE SAY SOMETHING GENERAL ABOUT WHEN/WHY TO REQUEST ESCALATION?}

If you need to escalate an issue to Microsoft, follow these steps:

1. Go to the portal at [https://aka.ms/mmdelevationrequest](https://aka.ms/mmdelevationrequest) and sign in with your Azure Active Directory credentials.
2. Select **Escalation requests**, and then select **New escalation request**.
3. Provide these details:
    - **Category**: Select the category that best fits your issue.
    - **Title**: Provide a very brief description.
    - **Description**: Add any additional details that could help our team understand the problem. If you need to attach files, you can do that by coming back to the request after you submit it.
    - **Primary contact information**: Provide info about how to contact the main person responsible for working with our team.
4. Select **Submit**.
5. Revisit the ticket in the same portal to interact with our team.