---
title: EDR detection test for verifying device's onboarding and reporting service
description: EDR detection test to verify the device's proper onboarding and reporting to the service.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, deploy, uninstallation, intune, jamf, macos, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 01/15/2024
---

# EDR detection test for verifying device's onboarding and reporting services

#### Applies to:

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)

## Scenario requirements and setup

- Windows 11, Windows 10 version 1709 build 16273 or newer, Windows 8.1, or Windows 7 SP1.
- Windows Server 2022, Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, and Windows Server 2008 R2 SP1.
- Linux
- macOS
- Microsoft Defender for Endpoint
- Microsoft Defender for Endpoint on Linux
- Microsoft Defender for Endpoint on macOS

Endpoint detection and response for Endpoint provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats.

Run an EDR detection test to verify that the device is properly onboarded and reporting to the service. Perform the following steps on the newly onboarded device:

### Windows

1. Open a Command Prompt window

2. At the prompt, copy and run the command below. The Command Prompt window will close automatically.


```powershell
powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference= 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-WDATP-test\\invoice.exe');Start-Process 'C:\\test-WDATP-test\\invoice.exe'
```

3. If successful, the detection test will be marked as completed and a new alert will appear in few minutes.

### Linux

1. Download [script file](https://aka.ms/LinuxDIY) to an onboarded Linux server 


```bash
curl -o ~/Downloads/MDE Linux DIY.zip https://aka.ms/LinuxDIY
```

1. Extract the zip 

```bash
unzip ~/Downloads/MDE Linux DIY.zip
```

1. And run the following command: 

```bash
./mde_linux_edr_diy.sh
```

After a few minutes, a detection should be raised in Microsoft Defender XDR.

3. Look at the alert details, machine timeline, and perform your typical investigation steps.

### macOS

1. In your browser, Microsoft Edge for Mac or Safari, download *MDATP MacOS DIY.zip* from [https://aka.ms/mdatpmacosdiy](https://aka.ms/mdatpmacosdiy) and extract.

      The following prompt appears:

      > Do you want to allow downloads on "mdatpclientanalyzer.blob.core.windows.net"?<br/>
      > You can change which websites can download files in **Websites Preferences**.

4. Click **Allow**.

5. Open **Downloads**.

6. You must be able to see **MDATP MacOS DIY**.

   > [!TIP]
   > If you double-click **MDATP MacOS DIY**, you will get the following message:
   >
   > > **"MDATP MacOS DIY" cannot be opened because the developer cannot be verifier.**<br/>
   > > macOS cannot verify that this app is free from malware.<br/>
   > > **[Move to Trash]** **[Cancel]**

7. Click **Cancel**.

8. Right-click **MDATP MacOS DIY**, and then click **Open**.

    The system displays the following message:

    > **macOS cannot verify the developer of MDATP MacOS DIY. Are you sure you want to open it?**<br/>
    > By opening this app, you will be overriding system security which can expose your computer and personal information to malware that may harm your Mac or compromise your privacy.

9. Click **Open**.

    The system will display the following message:

    > Microsoft Defender for Endpoint - macOS EDR DIY test file<br/>
    > Corresponding alert will be available in the MDATP portal.

10. Click **Open**.

    In few minutes, an alert *macOS EDR Test Alert* is raised.

11. Go to Microsoft Defender portal (https://security.microsoft.com/).

12. Go to the **Alert** Queue.

    :::image type="content" source="images/b8db76c2-c368-49ad-970f-dcb87534d9be.png" alt-text="Screenshot that shows a macOS EDR test alert that shows severity, category, detection source, and a collapsed menu of actions":::

    The macOS EDR test alert shows severity, category, detection source, and a collapsed menu of actions.

    Look at the alert details and the device timeline, and perform the regular investigation steps.

 Next steps that you can consider performing are to add AV exclusions as needed for application compatibility or performance:

- [Configure and validate exclusions for Microsoft Defender for Endpoint on macOS](mac-exclusions.md)
- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
- [Manage suppression rules](manage-suppression-rules.md)
- [Create indicators of compromise (IoC)](manage-indicators.md)
- [Create and manage custom detections rules](../defender/custom-detection-rules.md)

Read through [Microsoft Defender for Endpoint Security Operations Guide](mde-sec-ops-guide.md).
