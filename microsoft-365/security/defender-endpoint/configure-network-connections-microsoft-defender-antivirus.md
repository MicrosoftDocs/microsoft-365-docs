---
title: Configure and validate Microsoft Defender Antivirus network connections
description: Configure and test your connection to the Microsoft Defender Antivirus cloud protection service.
ms.service: defender-endpoint
ms.subservice: ngp
ms.localizationpriority: medium
author: siosulli
manager: deniseb
ms.author: siosulli
ms.topic: conceptual
ms.custom: nextgen
ms.date: 06/26/2023
ms.reviewer: mkaminska; pahuijbr
ms.collection:
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Configure and validate Microsoft Defender Antivirus network connections

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**

- Windows

To ensure Microsoft Defender Antivirus cloud-delivered protection works properly, your security team must configure your network to allow connections between your endpoints and certain Microsoft servers. This article lists connections that must be allowed for using the firewall rules. It also provides instructions for validating your connection. Configuring your protection properly ensures you receive the best value from your cloud-delivered protection services.

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
|Microsoft Update Service (MU) and Windows Update Service (WU)<br/>These services allow security intelligence and product updates.|`*.update.microsoft.com`<br/>`*.delivery.mp.microsoft.com`<br/>`*.windowsupdate.com` <br/>`ctldl.windowsupdate.com`<br/><br/>For more information, see [Connection endpoints for Windows Update](/windows/privacy/manage-windows-1709-endpoints#windows-update).|
|Security intelligence updates Alternate Download Location (ADL)<br/>This is an alternate location for Microsoft Defender Antivirus Security intelligence updates, if the installed Security intelligence is out of date (Seven or more days behind).|`*.download.microsoft.com`<br/>`*.download.windowsupdate.com` (Port 80 is required)<br/>`go.microsoft.com` (Port 80 is required)<br/>`https://www.microsoft.com/security/encyclopedia/adlpackages.aspx` <br/>`https://definitionupdates.microsoft.com/download/DefinitionUpdates/`<br/>`https://fe3cr.delivery.mp.microsoft.com/ClientWebService/client.asmx`|
|Malware submission storage<br/>This is an upload location for files submitted to Microsoft via the Submission form or automatic sample submission.|`ussus1eastprod.blob.core.windows.net`<br/>`ussus2eastprod.blob.core.windows.net`<br/>`ussus3eastprod.blob.core.windows.net`<br/>`ussus4eastprod.blob.core.windows.net`<br/>`wsus1eastprod.blob.core.windows.net`<br/>`wsus2eastprod.blob.core.windows.net`<br/>`ussus1westprod.blob.core.windows.net`<br/>`ussus2westprod.blob.core.windows.net`<br/>`ussus3westprod.blob.core.windows.net`<br/>`ussus4westprod.blob.core.windows.net`<br/>`wsus1westprod.blob.core.windows.net`<br/>`wsus2westprod.blob.core.windows.net`<br/>`usseu1northprod.blob.core.windows.net`<br/>`wseu1northprod.blob.core.windows.net`<br/>`usseu1westprod.blob.core.windows.net`<br/>`wseu1westprod.blob.core.windows.net`<br/>`ussuk1southprod.blob.core.windows.net`<br/>`wsuk1southprod.blob.core.windows.net`<br/>`ussuk1westprod.blob.core.windows.net`<br/>`wsuk1westprod.blob.core.windows.net`|
|Certificate Revocation List (CRL)<br/>Windows use this list while creating the SSL connection to MAPS for updating the CRL.|`http://www.microsoft.com/pkiops/crl/`<br/>`http://www.microsoft.com/pkiops/certs`<br/>`http://crl.microsoft.com/pki/crl/products`<br/>`http://www.microsoft.com/pki/certs`|
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

Use the tables below to see error messages you might encounter along with information on the root cause and possible solutions:

|Error messages|Root cause|
|:---|:---|:---|
|Start Time: <Day_of_the_week> MM DD YYYY HH:MM:SS <br/> MpEnsureProcessMitigationPolicy: hr = 0x1 <br/> ValidateMapsConnection<br/>ValidateMapsConnection failed to establish a connection to MAPS (hr=0x80070006 httpcore=451)<br/> MpCmdRun.exe: hr = 0x80070006**<br/><br/> ValidateMapsConnection failed to establish a connection to MAPS (hr=0x80072F8F httpcore=451)<br/>MpCmdRun.exe: hr = 0x80072F8F <br/><br/> ValidateMapsConnection failed to establish a connection to MAPS (hr=0x80072EFE httpcore=451)<br/> MpCmdRun.exe: hr = 0x80072EFE| The root cause of these error messages is that the device doesn't have its system-wide WinHttp proxy configured. If you don’t set the system-wide WinHttp proxy, then the operating system isn't aware of the proxy and can’t fetch the CRL (the operating system does this, not Defender for Endpoint), which means that TLS connections to URLs like `http://cp.wd.microsoft.com/` will not fully succeed. You'll see successful (response 200) connections to the endpoints but the MAPS connections would still fail.|

|Solution|Description|
|:---|:---|
|Solution (Preferred) | Configure the system-wide WinHttp proxy that allows the CRL check.|
|Solution (Preferred 2) | - [Setup Redirect the Microsoft Automatic Update URL for a disconnected environment](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265983(v=ws.11)?redirectedfrom=MSDN) <br/> - [Configure a server that has access to the Internet to retrieve the CTL files](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265983(v=ws.11)?redirectedfrom=MSDN) <br/> - [Redirect the Microsoft Automatic Update URL for a disconnected environment](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn265983(v=ws.11)?redirectedfrom=MSDN) <br/> <br/> _Usefule references:_ <br/> - Go to **Computer Configuration > Windows Settings > Security Settings > Public Key Policies > Certificate Path Validation Settings** > **Select the Network Retrieval tab** > **Select Define these policy settings** > **Select to clear the Automatically update certificates in the Microsoft Root Certificate Program (recommended) check box.** <br/> - [Certificate Revocation List (CRL) Verification - an Application Choice](https://social.technet.microsoft.com/wiki/contents/articles/964.certificate-revocation-list-crl-verification-an-application-choice.aspx) <br/> - [https://support.microsoft.com/help/931125/how-to-get-a-root-certificate-update-for-windows](https://support.microsoft.com/help/931125/how-to-get-a-root-certificate-update-for-windows) <br/> - [https://technet.microsoft.com/library/dn265983(v=ws.11).aspx](https://technet.microsoft.com/library/dn265983(v=ws.11).aspx) <br/> - [/dotnet/framework/configure-apps/file-schema/runtime/generatepublisherevidence-element](/dotnet/framework/configure-apps/file-schema/runtime/generatepublisherevidence-element) - [https://blogs.msdn.microsoft.com/amolravande/2008/07/20/improving-application-start-up-time-generatepublisherevidence-setting-in-machine-config/](https://blogs.msdn.microsoft.com/amolravande/2008/07/20/improving-application-start-up-time-generatepublisherevidence-setting-in-machine-config/)|
|Work-around solution (Alternative) <br/> _Not best practice since you'll no longer check for revoked certificates or certificate pinning_.| Disable CRL check only for SPYNET. <br/> Configuring this registry SSLOption disables CRL check only for SPYNET reporting. It won’t impact other services.<br/><br/> To to this: <br/> Go to **HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet** > set SSLOptions (dword) to 0 (hex). <br/> - 0 – disable pinning and revocation checks <br/> - 1 – disable pinning <br/>  - 2 – disable revocation checks only <br/> - 3 – enable revocation checks and pinning (default)|

## Attempt to download a fake malware file from Microsoft

You can download a [sample file](/microsoft-365/security/defender-endpoint/defender-endpoint-demonstration-cloud-delivered-protection) that Microsoft Defender Antivirus will detect and block if you're properly connected to the cloud.

> [!NOTE]
> The downloaded file is not exactly malware. It's a fake file designed to test if you're properly connected to the cloud.

If you're properly connected, you'll see a warning Microsoft Defender Antivirus notification.

If you're using Microsoft Edge, you'll also see a notification message:

:::image type="content" source="../../media/wdav-bafs-edge.png" alt-text="The notification that malware was found in Edge" lightbox="../../media/wdav-bafs-edge.png":::

A similar message occurs if you're using Internet Explorer:

:::image type="content" source="../../media/wdav-bafs-ie.png" alt-text="The Microsoft Defender Antivirus notification that malware was found" lightbox="../../media/wdav-bafs-ie.png":::

### View the fake malware detection in your Windows Security app

1. On your task bar, select the Shield icon, open the **Windows Security** app. Or, search the **Start** for *Security*.

1. Select **Virus & threat protection**, and then select **Protection history**.

1. Under the **Quarantined threats** section, select **See full history** to see the detected fake malware.

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
