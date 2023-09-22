---
title: Troubleshoot Microsoft Defender for Endpoint live response issues
description: Troubleshoot issues that might arise when using live response in Microsoft Defender for Endpoint
keywords: troubleshoot live response, live, response, locked, file
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: troubleshooting
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Troubleshoot Microsoft Defender for Endpoint live response issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

This page provides detailed steps to troubleshoot live response issues.

## File cannot be accessed during live response sessions

If while trying to take an action during a live response session, you encounter an error message stating that the file can't be accessed, you need to use the steps below to address the issue.

1. Copy the following script code snippet and save it as a PS1 file:

    ```powershell
    $copied_file_path=$args[0]
    $action=Copy-Item $copied_file_path -Destination $env:TEMP -PassThru -ErrorAction silentlyContinue

    if ($action){
         Write-Host "You copied the file specified in $copied_file_path to $env:TEMP Succesfully"
    }

    else{
        Write-Output "Error occoured while trying to copy a file, details:"
        Write-Output  $error[0].exception.message

    }
    ```

2. Add the script to the live response library.
3. Run the script with one parameter: the file path of the file to be copied.
4. Navigate to your TEMP folder.
5. Run the action you wanted to take on the copied file.

## Slow live response sessions or delays during initial connections

Live response leverages Defender for Endpoint sensor registration with WNS service in Windows. If you're having connectivity issues with live response, confirm the following details:

1. WpnService (Windows Push Notifications System Service) isn't disabled.
2. WpnService connectivity with WNS cloud isn't disabled via group policy or MDM setting. ['Turn off notifications network usage'](/windows/client-management/mdm/policy-csp-notifications) shouldn't be set to '1'.

Refer to the articles below to fully understand the WpnService service behavior and requirements:

- [Windows Push Notification Services (WNS) overview](/windows/uwp/design/shell/tiles-and-notifications/windows-push-notification-services--wns--overview)
- [Enterprise Firewall and Proxy Configurations to Support WNS Traffic](/windows/uwp/design/shell/tiles-and-notifications/firewall-allowlist-config)
- [Microsoft Push Notifications Service (MPNS) Public IP ranges](https://www.microsoft.com/download/details.aspx?id=44535)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
