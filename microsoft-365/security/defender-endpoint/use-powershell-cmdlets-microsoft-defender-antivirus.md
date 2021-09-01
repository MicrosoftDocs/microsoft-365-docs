---
title: Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus
description: In Windows 10, you can use PowerShell cmdlets to run scans, update Security intelligence, and change settings in Microsoft Defender Antivirus.
keywords: scan, command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 07/23/2020
ms.reviewer: 
manager: dansimp
ms.technology: mde
audience: ITPro
ms.topic: how-to
---

# Use PowerShell cmdlets to configure and manage Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

You can use PowerShell to perform various functions in Windows Defender. Similar to the command prompt or command line, PowerShell is a task-based command-line shell and scripting language designed especially for system administration. You can read more about it at the [PowerShell hub on MSDN](/previous-versions/msdn10/mt173057(v=msdn.10)).

For a list of the cmdlets and their functions and available parameters, see the [Defender cmdlets](/powershell/module/defender) topic.

PowerShell cmdlets are most useful in Windows Server environments that don't rely on a graphical user interface (GUI) to configure software.

> [!NOTE]
> PowerShell cmdlets should not be used as a replacement for a full network policy management infrastructure, such as [Microsoft Endpoint Configuration Manager](/configmgr), [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), or [Microsoft Defender Antivirus Group Policy ADMX templates](https://www.microsoft.com/download/101445).

Changes made with PowerShell will affect local settings on the endpoint where the changes are deployed or made. This means that deployments of policy with Group Policy, Microsoft Endpoint Configuration Manager, or Microsoft Intune can overwrite changes made with PowerShell.

You can [configure which settings can be overridden locally with local policy overrides](configure-local-policy-overrides-microsoft-defender-antivirus.md).

PowerShell is typically installed under the folder `%SystemRoot%\system32\WindowsPowerShell`.

## Use Microsoft Defender Antivirus PowerShell cmdlets

1. In the Windows search bar, type **powershell**.
2. Select **Windows PowerShell** from the results to open the interface.
3. Enter the PowerShell command and any parameters.

> [!NOTE]
> You may need to open PowerShell in administrator mode. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.

To open online help for any of the cmdlets type the following:

```PowerShell
Get-Help <cmdlet> -Online
```

Omit the `-online` parameter to get locally cached help.

## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus Cmdlets](/powershell/module/defender)