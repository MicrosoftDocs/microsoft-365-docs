---
title: Microsoft Safety Scanner Download
ms.reviewer: 
description: Get the Microsoft Safety Scanner tool to find and remove malware from Windows computers.
keywords: security, malware
ms.service: microsoft-365-security
ms.subservice: intelligence
ms.mktglfcycl: secure
ms.sitesec: library
ms.localizationpriority: medium
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
---
# Microsoft Safety Scanner Download

Microsoft Safety Scanner is a scan tool designed to find and remove malware from Windows computers. Simply download it and run a scan to find malware and try to reverse changes made by identified threats.

- **[Download Microsoft Safety Scanner (32-bit)](https://go.microsoft.com/fwlink/?LinkId=212733)**

- **[Download Microsoft Safety Scanner (64-bit)](https://go.microsoft.com/fwlink/?LinkId=212732)**

> [!NOTE]
> Starting November 2019, Safety Scanner will be SHA-2 signed exclusively. Your devices must be updated to support SHA-2 in order to run Safety Scanner. To learn more, see [2019 SHA-2 Code Signing Support requirement for Windows and WSUS](https://support.microsoft.com/help/4472027/2019-sha-2-code-signing-support-requirement-for-windows-and-wsus).

## Important information

- The security intelligence update version of the Microsoft Safety Scanner matches the version described [in this web page](https://www.microsoft.com/wdsi/definitions).

- Microsoft Safety Scanner only scans when manually triggered. Safety Scanner expires 10 days after being downloaded. To rerun a scan with the latest anti-malware definitions, download and run Safety Scanner again. We recommend that you always download the latest version of this tool before each scan.

- Safety Scanner is a portable executable and does not appear in the Windows Start menu or as an icon on the desktop. Note where you saved this download.

- This tool does not replace your antimalware product. For real-time protection with automatic updates, use [Microsoft Defender Antivirus on Windows 11, Windows 10, and Windows 8](https://www.microsoft.com/windows/comprehensive-security) or [Microsoft Security Essentials on Windows 7](https://support.microsoft.com/help/14210/security-essentials-download). These antimalware products also provide powerful malware removal capabilities. If you are having difficulties removing malware with these products, you can refer to our help on [removing difficult threats](https://www.microsoft.com/wdsi/help/troubleshooting-infection).

## System requirements

Safety Scanner helps remove malicious software from computers running Windows 11, Windows 10, Windows 10 Tech Preview, Windows 8.1, Windows 8, Windows 7, Windows Server 2019, Windows Server 2016, Windows Server Tech Preview, Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2. For details, refer to the [Microsoft Lifecycle Policy](/lifecycle/).

## How to run a scan

1. Download this tool and open it.
2. Select the type of scan that you want to run and start the scan.
3. Review the scan results displayed on screen. For detailed detection results, view the log at **%SYSTEMROOT%\debug\msert.log**.

To remove this tool, delete the executable file (msert.exe by default).

For more information about the Safety Scanner, see the support article on [how to troubleshoot problems using Safety Scanner](https://support.microsoft.com/kb/2520970).

## Related resources

- [Troubleshooting Safety Scanner](https://support.microsoft.com/help/2520970/how-to-troubleshoot-an-error-when-you-run-the-microsoft-safety-scanner)
- [Microsoft Defender Antivirus](https://www.microsoft.com/windows/comprehensive-security)
- [Microsoft Security Essentials](https://support.microsoft.com/help/14210/security-essentials-download)
- [Removing difficult threats](https://support.microsoft.com/help/4466982/windows-10-troubleshoot-problems-with-detecting-and-removing-malware)
- [Submit file for malware analysis](https://www.microsoft.com/wdsi/filesubmission)
- [Microsoft antimalware and threat protection solutions](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)
