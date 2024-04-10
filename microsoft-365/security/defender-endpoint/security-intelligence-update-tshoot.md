---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title: Security Intelligence update troubleshooting from Microsoft Update source
description: Security Intelligence update troubleshooting from Microsoft Update source
author:      YongRhee-MSFT # GitHub alias
ms.author:   yongrhee # Microsoft alias
ms.service: defender-endpoint
ms.topic: overview
ms.date:     04/10/2024
ms.subservice: ngp
---

# Troubleshooting Security Intelligence Updates from Microsoft Update source

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

- [Microsoft Defender for Endpoint Plan 1 and 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)

- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)

- Microsoft Defender Antivirus

In this article we will be going over troubleshooting Microsoft Defender Antivirus "Security Intelligence updates" when the first source is from Microsoft Update (MU) (used to be known as Windows Update (WU)).

Step 1) Check that the URL's needed for the "Security Intelligence update" are allowed thru the firewall or proxy.

Take a look at the MDE URL list for commercial (streamlined) or commercial (standard) using the spreadsheet available [here](/microsoft-365/security/defender-endpoint/configure-environment). 

If just using Microsoft Defender Antivirus, please review the Microsoft Update URL's needed in the "Windows Update" section [here](/windows/privacy/manage-windows-11-endpoints). 

Step 2) Make sure that the URL's in Step 1 are not being SSL inspected.

If Step 1 or 2 are missing, in the event log, you might see the following error:

Source: Windows Defender

Event ID: 2001 

Microsoft Defender Antivirus has encountered an error trying to update security intelligence.

Error code: 0x80072ee7

Error description: The server name or address could not be resolved.

What is error code 0x80072ee7?

C:\>err 0x80072ee7

# as an HRESULT: Severity: FAILURE (1), Facility: 0x7, Code 0x2ee7

# for hex 0x2ee7 / decimal 12007 :

  ERROR_INTERNET_NAME_NOT_RESOLVED                              inetmsg.h

  ERROR_INTERNET_NAME_NOT_RESOLVED                              wininet.h

Step 3) Make sure that the Services needed for Windows Update are started such as:

- Windows Update service

- Background Intelligence Transfer Service (BITS) 

Step 4) If using "[Fallback order](/microsoft-365/security/defender-endpoint/manage-protection-updates-microsoft-defender-antivirus)" policy, make sure that "Microsoft Update" (MicrosoftUpdateServer) is the first item in the line.

Step 5) Gather the MDE Client Analyzer diagnostic data.

If you have Microsoft Defender for Endpoint Plan 2 and Live Response access, you can gather the diagnostic data remotely:

[https://learn.microsoft.com/microsoft-365/security/defender-endpoint/troubleshoot-collect-support-log](/microsoft-365/security/defender-endpoint/troubleshoot-collect-support-log?view=o365-worldwide)

If you have Microsoft Defender for Endpoint Plan 1 or Microsoft Defender Antivirus, you can gather the diagnostic data:

[https://learn.microsoft.com/microsoft-365/security/defender-endpoint/run-analyzer-windows](/microsoft-365/security/defender-endpoint/run-analyzer-windows)

If for some reason, you are unable to run the MDE Client Analyzer diagnostic data, please use the Microsoft Defender Antivirus diagnostic data collection (aka "Support Cab"):

[https://learn.microsoft.com/microsoft-365/security/defender-endpoint/collect-diagnostic-data](/microsoft-365/security/defender-endpoint/collect-diagnostic-data)

Step 6) Once you have the diagnostic data, you are able to convert the WindowsUpdate.etl logs into a human readable format by using [Get-WindowsUpdateLog](/powershell/module/windowsupdate/get-windowsupdatelog?view=windowsserver2022-ps)

