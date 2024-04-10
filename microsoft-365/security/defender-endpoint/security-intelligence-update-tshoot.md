---
title: Security Intelligence update troubleshooting from Microsoft Update source
description: Learn how to troubleshoot security intelligence updates from your Microsoft Update source.
author: siosulli
ms.author: siosulli
manager: deniseb 
ms.date: 04/10/2024
ms.topic: troubleshooting
ms.service: defender-endpoint
ms.subservice: ngp
ms.localizationpriority: medium 
ms.collection: # Useful for querying on a set of strategic or high-priority content.
ms.custom: 
- partner-contribution
ms.reviewer: yongrhee
search.appverid: MET150
f1.keywords: NOCSH
audience: ITPro
---

# Troubleshooting Security Intelligence Updates from Microsoft Update source

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1 and 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)
- Microsoft Defender Antivirus

Use this article to learn how to troubleshoot security intelligence updates for Microsoft Defender Antivirus when the first source is from Microsoft Update (formerly known as Windows Update). Follow these steps to troubleshoot issues with getting your security intelligence updates:

1. Make sure that the URLs needed for security intelligence updates are allowed thru the firewall or proxy. See the Defender for Endpoint URL spreadsheets in [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md).

   If you're only using Microsoft Defender Antivirus, see the **Windows Update** section in [Manage connection endpoints for Windows 11 Enterprise](/windows/privacy/manage-windows-11-endpoints). 

2. Make sure that the URLs you reviewed during the previous step aren't SSL inspected. If not, you might see the following error in the event log:

   ```properties

   Source: Windows Defender
   
   Event ID: 2001 

   Microsoft Defender Antivirus has encountered an error trying to update security intelligence.

   Error code: 0x80072ee7

   Error description: The server name or address could not be resolved.

   ```

   What is error code `0x80072ee7`?

   ```properties

   C:\>err 0x80072ee7

   # as an HRESULT: Severity: FAILURE (1), Facility: 0x7, Code 0x2ee7

   # for hex 0x2ee7 / decimal 12007 :

   ERROR_INTERNET_NAME_NOT_RESOLVED                              inetmsg.h

   ERROR_INTERNET_NAME_NOT_RESOLVED                              wininet.h

   ```

3. Make sure that the Sservices needed for Windows Update are started. These services include:

   - Windows Update service

   - Background Intelligence Transfer Service (BITS) 

4. If you're using a [Fallback order](/microsoft-365/security/defender-endpoint/manage-protection-updates-microsoft-defender-antivirus) policy, make sure that *Microsoft Update* (`MicrosoftUpdateServer`) is the first item in the list.

5. Gather diagnostic data from the [Microsoft Defender for Endpoint Client Analyzer tool](download-client-analyzer.md). 

   - If you have Microsoft Defender for Endpoint Plan 2 and access to Live Response, you can gather the diagnostic data remotely. See [Collect support logs in Microsoft Defender for Endpoint using live response](troubleshoot-collect-support-log.md).

   - If you have Microsoft Defender for Endpoint Plan 1 or only Microsoft Defender Antivirus, you can gather the diagnostic data using the client analyzer on Windows. See [Run the client analyzer on Windows](run-analyzer-windows.md).

   - If either method doesn't work for you, use Microsoft Defender Antivirus diagnostic data collection. See [Collect Microsoft Defender Antivirus diagnostic data](collect-diagnostic-data.md).

6. When you have your diagnostic data, convert the `WindowsUpdate.etl` logs into a human readable format by using the PowerShell command, [Get-WindowsUpdateLog](/powershell/module/windowsupdate/get-windowsupdatelog). Use that information to troubleshoot issues with security intelligence updates.

## See also

- [Troubleshoot Microsoft Defender Antivirus settings](troubleshoot-settings.md)

- [Troubleshoot problems with tamper protection](troubleshoot-problems-with-tamper-protection.yml)