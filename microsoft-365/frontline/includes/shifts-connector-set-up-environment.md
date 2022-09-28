---
author: LanaChin
ms.author: v-lanachin
ms.date: 03/31/2022 
ms.topic: include
audience: admin
ms.service: msteams
---
1. Install PowerShell version 7 or later. For step-by-step guidance, see [Installing PowerShell on Windows](/powershell/scripting/install/installing-powershell-on-windows).

1. Run PowerShell in administrator mode.
1. Install the Microsoft Graph PowerShell module.

    ```powershell
    Install-Module Microsoft.Graph
    Import-Module Microsoft.Graph
    ```

    Verify that it's version 1.6.1 or later.

    ```powershell
    Get-InstalledModule Microsoft.Graph 
    ```

1. Install the Teams Preview PowerShell module.

    ```powershell
    Install-Module -Name MicrosoftTeams -AllowPrerelease -Force
    Import-Module MicrosoftTeams 
    ```

    Verify that it's at least version 4.1.0 and contains the Shifts connector cmdlets.

    ```powershell
    Get-Command -Module MicrosoftTeams -Name *teamsshiftsconnection* 
    ```

1. Set PowerShell to exit if an error occurs when running the script.

    ```powershell
    $ErrorActionPreference = "Stop" 
    ```

1. Enable scripts to run in Windows.

    ```powershell
    Set-ExecutionPolicy bypass 
    ```