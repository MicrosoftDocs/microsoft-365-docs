---
title: Configure and validate Microsoft Defender Antivirus network connections
description: Configure and test your connection to the Microsoft Defender Antivirus cloud protection service.
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
author: denisebmsft
manager: dansimp
ms.author: deniseb
ms.topic: conceptual
ms.custom: nextgen
ms.date: 06/26/2023
ms.reviewer: mkaminska; pahuijbr
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Configure and validate Microsoft Defender Antivirus network connections

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

> [!TIP]
> RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:
>
> ```https
> https://github.com/MicrosoftDocs/microsoft-365-docs/commits/public/microsoft-365/security/defender-endpoint/configure-network-connections-microsoft-defender-antivirus.md.atom
> ```

To ensure Microsoft Defender Antivirus cloud-delivered protection works properly, your security team must configure your network to allow connections between your endpoints and certain Microsoft servers. This article lists connections that must be allowed for using the firewall rules. It also provides instructions for validating your connection. Configuring your protection properly will ensure you receive the best value from your cloud-delivered protection services.

> [!IMPORTANT]
> This article contains information about configuring network connections only for Microsoft Defender Antivirus. If you are using Microsoft Defender for Endpoint (which includes Microsoft Defender Antivirus), see [Configure device proxy and Internet connectivity settings for Defender for Endpoint](configure-proxy-internet.md).

## Allow connections to the Microsoft Defender Antivirus cloud service

The Microsoft Defender Antivirus cloud service provides fast, and strong protection for your endpoints. It's optional to enable the cloud-delivered protection service. Microsoft Defender Antivirus cloud service is recommended, because it provides important protection against malware on your endpoints and network. For more information, see [Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) for enabling service with Intune, Microsoft Endpoint Configuration Manager, Group Policy, PowerShell cmdlets, or individual clients in the Windows Security app.

After you've enabled the service, you need to configure your network or firewall to allow connections between network and your endpoints. Because your protection is a cloud service, computers must have access to the internet and reach the Microsoft cloud services. Don't exclude the URL `*.blob.core.windows.net` from any kind of network inspection.

> [!NOTE]
> The Microsoft Defender Antivirus cloud service delivers updated protection to your network and endpoints. The cloud service should not be considered as only protection for your files that are stored in the cloud; instead, the cloud service uses distributed resources and machine learning to deliver protection for your endpoints at a faster rate than the traditional Security intelligence updates.

## Services and URLs

The table in this section lists services and their associated website addresses (URLs).

Make sure that there are no firewall or network filtering rules denying access to these URLs. Otherwise, you must create an allow rule specifically for those URLs (excluding the URL `*.blob.core.windows.net`). The URLs in the following table use port 443 for communication. (Port 80 is also required for some URLs, as noted in the following table.)

|Service and description|URL|
|---|---|
|Microsoft Defender Antivirus cloud-delivered protection service is referred to as Microsoft Active Protection Service (MAPS).<br/> Microsoft Defender Antivirus uses the MAPS service to provide cloud-delivered protection.|`*.wdcp.microsoft.com` <br/>`*.wdcpalt.microsoft.com`<br/>`*.wd.microsoft.com`  |
|Microsoft Update Service (MU) and Windows Update Service (WU)<br/>These services will allow security intelligence and product updates.|`*.update.microsoft.com`<br/>`*.delivery.mp.microsoft.com`<br/>`*.windowsupdate.com` <br/>`ctldl.windowsupdate.com`<br/><br/>For more information, see [Connection endpoints for Windows Update](/windows/privacy/manage-windows-1709-endpoints#windows-update).|
|Security intelligence updates Alternate Download Location (ADL)<br/>This is an alternate location for Microsoft Defender Antivirus Security intelligence updates, if the installed Security intelligence is out of date (Seven or more days behind).|`*.download.microsoft.com`<br/>`*.download.windowsupdate.com` (Port 80 is required)<br/>`go.microsoft.com` (Port 80 is required)<br/>`https://www.microsoft.com/security/encyclopedia/adlpackages.aspx` <br/>`https://definitionupdates.microsoft.com/download/DefinitionUpdates/`<br/>`https://fe3cr.delivery.mp.microsoft.com/ClientWebService/client.asmx`|
|Malware submission storage<br/>This is an upload location for files submitted to Microsoft via the Submission form or automatic sample submission.|`ussus1eastprod.blob.core.windows.net`<br/>`ussus2eastprod.blob.core.windows.net`<br/>`ussus3eastprod.blob.core.windows.net`<br/>`ussus4eastprod.blob.core.windows.net`<br/>`wsus1eastprod.blob.core.windows.net`<br/>`wsus2eastprod.blob.core.windows.net`<br/>`ussus1westprod.blob.core.windows.net`<br/>`ussus2westprod.blob.core.windows.net`<br/>`ussus3westprod.blob.core.windows.net`<br/>`ussus4westprod.blob.core.windows.net`<br/>`wsus1westprod.blob.core.windows.net`<br/>`wsus2westprod.blob.core.windows.net`<br/>`usseu1northprod.blob.core.windows.net`<br/>`wseu1northprod.blob.core.windows.net`<br/>`usseu1westprod.blob.core.windows.net`<br/>`wseu1westprod.blob.core.windows.net`<br/>`ussuk1southprod.blob.core.windows.net`<br/>`wsuk1southprod.blob.core.windows.net`<br/>`ussuk1westprod.blob.core.windows.net`<br/>`wsuk1westprod.blob.core.windows.net`|
|Certificate Revocation List (CRL)<br/>Windows use this list while creating the SSL connection to MAPS for updating the CRL.|`http://www.microsoft.com/pkiops/crl/`<br/>`http://www.microsoft.com/pkiops/certs`<br/>`http://crl.microsoft.com/pki/crl/products`<br/>`http://www.microsoft.com/pki/certs`|
|Symbol Store <p>Microsoft Defender Antivirus uses the Symbol Store to restore certain critical files during the remediation flows.|`https://msdl.microsoft.com/download/symbols`|
|Universal GDPR Client<br/>Windows use this client to send the client diagnostic data.<br/><br/>Microsoft Defender Antivirus uses General Data Protection Regulation for product quality, and monitoring purposes.|The update uses SSL (TCP Port 443) to download manifests and upload diagnostic data to Microsoft that uses the following DNS endpoints:<br/>`vortex-win.data.microsoft.com`<br/>`settings-win.data.microsoft.com`|

## Validate connections between your network and the cloud

After allowing the URLs listed, test whether you're connected to the Microsoft Defender Antivirus cloud service. Test the URLs are correctly reporting and receiving information to ensure you're fully protected.

### Use the cmdline tool to validate cloud-delivered protection

Use the following argument with the Microsoft Defender Antivirus command-line utility (`mpcmdrun.exe`) to verify that your network can communicate with the Microsoft Defender Antivirus cloud service:

```console
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -ValidateMapsConnection
```

> [!NOTE]
> Open Command Prompt as an administrator. Right-click the item in the **Start** menu, click **Run as administrator** and click **Yes** at the permissions prompt. This command will only work on Windows 10, version 1703 or higher, or Windows 11.

For more information, see [Manage Microsoft Defender Antivirus with the mpcmdrun.exe commandline tool](command-line-arguments-microsoft-defender-antivirus.md).

### Attempt to download a fake malware file from Microsoft

You can download a sample file that Microsoft Defender Antivirus will detect and block if you're properly connected to the cloud. Visit [https://aka.ms/ioavtest1](https://aka.ms/ioavtest1) to download the file.

> [!NOTE]
> The downloaded file is not exactly malware. It's a fake file designed to test if you're properly connected to the cloud.

If you're properly connected, you'll see a warning Microsoft Defender Antivirus notification.

If you're using Microsoft Edge, you'll also see a notification message:

:::image type="content" source="../../media/wdav-bafs-edge.png" alt-text="The notification that malware was found in Edge" lightbox="../../media/wdav-bafs-edge.png":::

A similar message occurs if you're using Internet Explorer:

:::image type="content" source="../../media/wdav-bafs-ie.png" alt-text="The Microsoft Defender Antivirus notification that malware was found" lightbox="../../media/wdav-bafs-ie.png":::

#### View the fake malware detection in your Windows Security app

1. On your task bar, select the Shield icon, open the **Windows Security** app. Or, search the **Start** for *Security*.

2. Select **Virus & threat protection**, and then select **Protection history**.

1. 3. Under the **Quarantined threats** section, select **See full history** to see the detected fake malware.

   > [!NOTE]
   > Versions of Windows 10 before version 1703 have a different user interface. See [Microsoft Defender Antivirus in the Windows Security app](microsoft-defender-security-center-antivirus.md).

   The Windows event log will also show [Windows Defender client event ID 1116](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/).

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> 
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> 
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> 
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> 
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> 
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> 
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> 
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Configure device proxy and Internet connectivity settings for Microsoft Defender for Endpoint](configure-proxy-internet.md)
- [Use Group Policy settings to configure and manage Microsoft Defender Antivirus](use-group-policy-microsoft-defender-antivirus.md)
- [Important changes to Microsoft Active Protection Services endpoint](https://techcommunity.microsoft.com/t5/Configuration-Manager-Archive/Important-changes-to-Microsoft-Active-Protection-Service-MAPS/ba-p/274006) 


[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
