---
title: Configure and validate Microsoft Defender Antivirus network connections
description: Configure and test your connection to the Microsoft Defender Antivirus cloud protection service.
keywords: antivirus, Microsoft Defender Antivirus, antimalware, security, defender, cloud, aggressiveness, protection level
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 06/04/2021
ms.reviewer: 
manager: dansimp
ms.technology: mde
ms.topic: article
---

# Configure and validate Microsoft Defender Antivirus network connections

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

To ensure Microsoft Defender Antivirus cloud-delivered protection works properly, your security team must configure your network to allow connections between your endpoints and certain Microsoft servers. This article lists the connections that must be allowed, such as by using firewall rules, and provides instructions for validating your connection. Configuring your protection properly helps ensure that you receive the best value from your cloud-delivered protection services.

See the blog post [Important changes to Microsoft Active Protection Services endpoint](https://techcommunity.microsoft.com/t5/Configuration-Manager-Archive/Important-changes-to-Microsoft-Active-Protection-Service-MAPS/ba-p/274006) for some details about network connectivity.

> [!TIP]
> Visit the Microsoft Defender for Endpoint demo website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the following features are working:
>
> - Cloud-delivered protection
> - Fast learning (including block at first sight)
> - Potentially unwanted application blocking

## Allow connections to the Microsoft Defender Antivirus cloud service

The Microsoft Defender Antivirus cloud service provides fast, strong protection for your endpoints. Enabling the cloud-delivered protection service is optional, however it's highly recommended because it provides important protection against malware on your endpoints and across your network.

> [!NOTE]
> The Microsoft Defender Antivirus cloud service is a mechanism for delivering updated protection to your network and endpoints. Although it's called a cloud service, it's not simply protection for files stored in the cloud, rather it uses distributed resources and machine learning to deliver protection to your endpoints at a rate that is far faster than traditional Security intelligence updates.

See [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) for details on enabling the service with Intune, Microsoft Endpoint Configuration Manager, Group Policy, PowerShell cmdlets, or on individual clients in the Windows Security app. 

After you've enabled the service, you may need to configure your network or firewall to allow connections between it and your endpoints. Because your protection is a cloud service, computers must have access to the internet and reach the Microsoft Defender for Office 365 machine learning services. Don't exclude the URL `*.blob.core.windows.net` from any kind of network inspection. 

The table below lists the services and their associated URLs. Make sure that there are no firewall or network filtering rules denying access to these URLs, or you may need to create an allow rule specifically for them (excluding the URL `*.blob.core.windows.net`). Below mention URLs are using port 443 for communication.


| Service and description | URL |
|:----|:---- |
| Microsoft Defender Antivirus cloud-delivered protection service, also referred to as Microsoft Active Protection Service (MAPS)<p>This service is used by Microsoft Defender Antivirus to provide cloud-delivered protection|`*.wdcp.microsoft.com` <p> `*.wdcpalt.microsoft.com` <p> `*.wd.microsoft.com`|
| Microsoft Update Service (MU) and Windows Update Service (WU) <p>These services allow for security intelligence and product updates	|`*.update.microsoft.com` <p> `*.delivery.mp.microsoft.com`<p> `*.windowsupdate.com` <p> For more details, see [Connection endpoints for Windows Update](/windows/privacy/manage-windows-1709-endpoints#windows-update)|
|Security intelligence updates Alternate Download Location (ADL)<p>This is an alternate location for Microsoft Defender Antivirus Security intelligence updates if the installed Security intelligence is out of date (7 or more days behind)|	`*.download.microsoft.com`  <p> `*.download.windowsupdate.com`<p>  `go.microsoft.com`<p> `https://fe3cr.delivery.mp.microsoft.com/ClientWebService/client.asmx`|
| Malware submission storage <p>This is the upload location for files submitted to Microsoft via the Submission form or automatic sample submission	| `ussus1eastprod.blob.core.windows.net` <p>    `ussus2eastprod.blob.core.windows.net` <p>    `ussus3eastprod.blob.core.windows.net` <p>    `ussus4eastprod.blob.core.windows.net` <p>    `wsus1eastprod.blob.core.windows.net` <p>    `wsus2eastprod.blob.core.windows.net` <p>    `ussus1westprod.blob.core.windows.net` <p>    `ussus2westprod.blob.core.windows.net` <p>    `ussus3westprod.blob.core.windows.net` <p>    `ussus4westprod.blob.core.windows.net` <p>    `wsus1westprod.blob.core.windows.net` <p>    `wsus2westprod.blob.core.windows.net` <p>    `usseu1northprod.blob.core.windows.net` <p>    `wseu1northprod.blob.core.windows.net` <p>    `usseu1westprod.blob.core.windows.net` <p>    `wseu1westprod.blob.core.windows.net` <p>    `ussuk1southprod.blob.core.windows.net` <p>    `wsuk1southprod.blob.core.windows.net` <p>    `ussuk1westprod.blob.core.windows.net` <p>    `wsuk1westprod.blob.core.windows.net` |
| Certificate Revocation List (CRL)|Used by Windows when creating the SSL connection to MAPS for updating the CRL	| `http://www.microsoft.com/pkiops/crl/` <p> `http://www.microsoft.com/pkiops/certs` <p>   `http://crl.microsoft.com/pki/crl/products` <p> `http://www.microsoft.com/pki/certs` |
| Symbol Store <p>The symbol store is used by Microsoft Defender Antivirus to restore certain critical files during remediation flows	| `https://msdl.microsoft.com/download/symbols` |
| Universal Telemetry Client <p>This client is used by Windows to send client diagnostic data<p> Microsoft Defender Antivirus uses telemetry for product quality monitoring purposes	| The update uses SSL (TCP Port 443) to download manifests and upload diagnostic data to Microsoft that uses the following DNS endpoints: <p> `vortex-win.data.microsoft.com` <p>   `settings-win.data.microsoft.com`|

## Validate connections between your network and the cloud

After allowing the URLs listed above, you can test if you're connected to the Microsoft Defender Antivirus cloud service and are correctly reporting and receiving information to ensure you're fully protected.

### Use the cmdline tool to validate cloud-delivered protection

Use the following argument with the Microsoft Defender Antivirus command-line utility (`mpcmdrun.exe`) to verify that your network can communicate with the Microsoft Defender Antivirus cloud service:

```console
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -ValidateMapsConnection
```

> [!NOTE]
> You need to open an administrator-level version of the command prompt. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt. This command will only work on Windows 10, version 1703 or higher.

For more information, see [Manage Microsoft Defender Antivirus with the mpcmdrun.exe commandline tool](command-line-arguments-microsoft-defender-antivirus.md).

### Attempt to download a fake malware file from Microsoft

You can download a sample file that Microsoft Defender Antivirus will detect and block if you're properly connected to the cloud.

Download the file by visiting [https://aka.ms/ioavtest](https://aka.ms/ioavtest).

> [!NOTE]
> This file is not an actual piece of malware. It's a fake file that is designed to test if you're properly connected to the cloud.

If you're properly connected, you'll see a warning Microsoft Defender Antivirus notification.

If you're using Microsoft Edge, you'll also see a notification message:

![Microsoft Edge informing the user that malware was found](images/defender/wdav-bafs-edge.png)

A similar message occurs if you're using Internet Explorer:

![Microsoft Defender Antivirus notification informing the user that malware was found](images/defender/wdav-bafs-ie.png)

You'll also see a detection under **Quarantined threats** in the **Scan history** section in the Windows Security app:

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Security**.

2. Select **Virus & threat protection**, and then select **Protection history**.

3. Under the **Quarantined threats** section, select **See full history** to see the detected fake malware.

   > [!NOTE]
   > Versions of Windows 10 before version 1703 have a different user interface. See [Microsoft Defender Antivirus in the Windows Security app](microsoft-defender-security-center-antivirus.md).

   The Windows event log will also show [Windows Defender client event ID 1116](troubleshoot-microsoft-defender-antivirus.md).

