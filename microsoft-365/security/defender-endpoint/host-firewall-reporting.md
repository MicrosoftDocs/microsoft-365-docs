---
title: Host firewall reporting in Microsoft Defender for Endpoint
description: Host and view firewall reporting in Microsoft 365 Defender portal.
keywords: windows defender, firewall
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.topic: article
author: dansimp
ms.author: dansimp
manager: dansimp
ms.technology: mde
ms.collection: m365-security-compliance
ms.custom: admindeeplinkDEFENDER
---

# Host firewall reporting in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

If you are a Global or security administrator, you can now host firewall reporting to the [Microsoft 365 Defender portal](https://security.microsoft.com). This feature enables you to view Windows 10, Windows 11, Windows Server 2019, and Windows Server 2022 firewall reporting from a centralized location.

## What do you need to know before you begin?

- You must be running Windows 10 or Windows 11, or Windows Server 2019, or Windows Server 2022.
- To onboard devices to the Microsoft Defender for Endpoint service, see [here](onboard-configure.md).
- For <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> to start receiving the data, you must enable **Audit Events** for Windows Defender Firewall with Advanced Security:
  - [Audit Filtering Platform Packet Drop](/windows/security/threat-protection/auditing/audit-filtering-platform-packet-drop)
  - [Audit Filtering Platform Connection](/windows/security/threat-protection/auditing/audit-filtering-platform-connection)
- Enable these events by using Group Policy Object Editor, Local Security Policy, or the auditpol.exe commands. For more information, see [here](/windows/win32/fwp/auditing-and-logging).
  - The two PowerShell commands are:
    - **auditpol /set /subcategory:"Filtering Platform Packet Drop" /failure:enable**
    - **auditpol /set /subcategory:"Filtering Platform Connection" /failure:enable**
```powershell
param (
    [switch]$remediate
)
try {

    $categories = "Filtering Platform Packet Drop,Filtering Platform Connection"
    $current = auditpol /get /subcategory:"$($categories)" /r | ConvertFrom-Csv    
    if ($current."Inclusion Setting" -ne "failure") {
        if ($remediate.IsPresent) {
            Write-Host "Remediating. No Auditing Enabled. $($current | ForEach-Object {$_.Subcategory + ":" + $_.'Inclusion Setting' + ";"})"
            $output = auditpol /set /subcategory:"$($categories)" /failure:enable
            if($output -eq "The command was successfully executed.") {
                Write-Host "$($output)"
                exit 0
            }
            else {
                Write-Host "$($output)"
                exit 1
            }
        }
        else {
            Write-Host "Remediation Needed. $($current | ForEach-Object {$_.Subcategory + ":" + $_.'Inclusion Setting' + ";"})."
            exit 1
        }
    }

}
catch {
    throw $_
} 
```

## The process

> [!NOTE]
> Make sure to follow the instructions from the section above and properly configure your devices for the early preview participation.

- After enabling the events, Microsoft 365 Defender will start to monitor the data.
  - Remote IP, Remote Port, Local Port, Local IP, Computer Name, Process across inbound and outbound connections.
- Admins can now see Windows host firewall activity [here](https://security.microsoft.com/firewall).
  - Additional reporting can be facilitated by downloading the [Custom Reporting script](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Firewall) to monitor the Windows Defender Firewall activities using Power BI.
  - It can take up to 12 hours before the data is reflected.

## Supported scenarios

The following scenarios are supported during Ring0 Preview.

### Firewall reporting

Here is a couple of examples of the firewall report pages. Here you will find a summary of inbound, outbound, and application activity. You can access this page directly by going to <https://security.microsoft.com/firewall>.

:::image type="content" source="images/host-firewall-reporting-page.png" alt-text="The Host firewall reporting page" lightbox="\images\host-firewall-reporting-page.png":::

These reports can also be accessed by going to **Reports** > **Security Report** > **Devices** (section) located at the bottom of the **Firewall Blocked Inbound Connections** card.

### From "Computers with a blocked connection" to device

Cards support interactive objects. You can drill into the activity of a device by clicking on the device name, which will launch the Microsoft 365 Defender portal in a new tab, and take you directly to the **Device Timeline** tab.

:::image type="content" source="images/firewall-reporting-blocked-connection.png" alt-text="The Computers with a blocked connection page" lightbox="\images\firewall-reporting-blocked-connection.png":::

You can now select the **Timeline** tab, which will give you a list of events associated with that device.

After clicking on the **Filters** button on the upper right-hand corner of the viewing pane, select the type of event you want. In this case, select **Firewall events** and the pane will be filtered to Firewall events.

:::image type="content" source="images/firewall-reporting-filters-button.png" alt-text="The Filters button" lightbox="\images\firewall-reporting-filters-button.png":::

### Drill into advanced hunting (preview refresh)

Firewall reports support drilling from the card directly into **Advanced Hunting** by clicking the **Open Advanced hunting** button. The query will be pre-populated.

:::image type="content" source="images/firewall-reporting-advanced-hunting.png" alt-text="The Open Advanced hunting button" lightbox="\images\firewall-reporting-advanced-hunting.png":::

The query can now be executed, and all related Firewall events from the last 30 days can be explored.

For additional reporting, or custom changes, the query can be exported into Power BI for further analysis. Custom reporting can be facilitated by downloading the [Custom Reporting script](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Firewall) to monitor the Windows Defender Firewall activities using Power BI.
