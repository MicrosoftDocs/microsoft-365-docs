---
title: Host firewall reporting in Microsoft Defender for Endpoint
description: Host and view firewall reporting in Microsoft 365 security center. 
keywords: windows defender, firewall
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: normal
audience: ITPro
ms.topic: article
author: dansimp
ms.author: dansimp
manager: dansimp
ms.technology: mde
---

# Host firewall reporting in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

If you are an admin, you can now host firewall reporting to [Microsoft 365 security center](https://security.microsoft.com). This feature enables you to view Windows 10 and Windows Server 2019 firewall reporting from a centralized location. 

## What do you need to know before you begin? 

- You must be running Windows 10 or Windows Server 2019.
- To onboard devices to the Microsoft Defender for Endpoint service, see [here](onboard-configure.md). 
- For Microsoft 365 security center to start receiving the data, you must enable **Audit Events** for Windows Defender Firewall with Advanced Security: 
    - [Audit Filtering Platform Packet Drop](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-filtering-platform-packet-drop)
    - [Audit Filtering Platform Connection](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-filtering-platform-connection) 
- Enable these events by using Group Policy Object Editor, Local Security Policy, or the auditpol.exe commands. For more information, see [here](https://docs.microsoft.com/windows/win32/fwp/auditing-and-logging). 
    - The two PowerShell commands are:
        - **auditpol /set /subcategory:"Filtering Platform Packet Drop" /failure:enable** 
        - **auditpol /set /subcategory:"Filtering Platform Connection" /failure:enable** 

## The process
> [!NOTE]
> Make sure to follow the instructions from the section above and properly configure your devices for the early preview participation.

- After enabling the events, Microsoft 365 security center will start to monitor the data.
    - Remote IP, Remote Port, Local Port, Local IP, Computer Name, Process across inbound and outbound connections.
- Admins can now see Windows host firewall activity [here](https://security.microsoft.com/firewall).
    - Additional reporting can be facilitated by downloading the [Custom Reporting script](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Firewall) to monitor the Windows Defender Firewall activities using Power BI. 
    - It can take up to 12 hours before the data is reflected.

## Supported scenarios
The following scenarios are supported during Ring0 Preview. 

### Firewall reporting in security center

Here is a couple of examples of the firewall report pages. Here you will find a summary of inbound, outbound, and application activity. You can access this page directly by going to https://security.microsoft.com/firewall. 

> [!div class="mx-imgBorder"]
> ![Host firewall reporting page](../security/defender-endpoint/images/host-firewall-reporting-page.png)

These reports can also be accessed by going to **Reports** > **Security Report** > **Devices** (section) located at the bottom of the **Firewall Blocked Inbound Connections** card.

### From "Computers with a blocked connection" to device

Cards support interactive objects. You can drill into the activity of a device by clicking on the device name, which will launch https://securitycenter.microsoft.com in a new tab, and take you directly to the **Device Timeline** tab. 

> [!div class="mx-imgBorder"]
> ![Computers with a blocked connection](../security/defender-endpoint/images/firewall-reporting-blocked-connection.png)

You can now select the **Timeline** tab, which will give you a list of events associated with that device. 

After clicking on the **Filters** button on the upper right-hand corner of the viewing pane, select the type of event you want. In this case, select **Firewall events** and the pane will be filtered to Firewall events. 

> [!div class="mx-imgBorder"]
> ![Filters button](../security/defender-endpoint/images/firewall-reporting-filters-button.png)

### Drill into advanced hunting (preview refresh)

Firewall reports support drilling from the card directly into **Advanced Hunting** by clicking the **Open Advanced hunting** button. The query will be pre-populated. 

> [!div class="mx-imgBorder"]
> ![Open Advanced hunting button](../security/defender-endpoint/images/firewall-reporting-advanced-hunting.png)

The query can now be executed, and all related Firewall events from the last 30 days can be explored. 

For additional reporting, or custom changes, the query can be exported into Power BI for further analysis. Custom reporting can be facilitated by downloading the [Custom Reporting script](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Firewall) to monitor the Windows Defender Firewall activities using Power BI. 

 