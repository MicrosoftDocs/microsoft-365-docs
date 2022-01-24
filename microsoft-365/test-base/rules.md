---
title: 'Application/Test rules'
description: Rules to be followed when uploading an application/test
search.appverid: MET150
author: andreicsibi-msft
ms.author: ancsibi
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 07/06/2021
ms.service: virtual-desktop
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---
# Application/Test rules

All applications or tests in Test Base need to comply with the following rules:

## Test Base folders 

The following folders are used by the Test Base infrastructure:
* %SYSTEMDRIVE%\USL
* %SYSTEMDRIVE%\Ffmpeg
* %SYSTEMDRIVE%\Monitoring
* %SYSTEMDRIVE%\powershell-yaml
* %SYSTEMDRIVE%\ProcMon
* %SYSTEMDRIVE%\PSTools
* %SYSTEMDRIVE%\TokenProviderTool
* %SYSTEMDRIVE%\USLPowershellModules
* %SYSTEMDRIVE%\UtcUtil
* %SYSTEMDRIVE%\WPT
* %SYSTEMDRIVE%\WULogs

> [!IMPORTANT]
> **Avoid the following**:
> * Blocking the execution of any process from these folders. If your application is anti-malware software, configure your app installation to allow unimpeded execution of all processes from these folders.
> * Tampering with any of these folders.

## Test Base registry keys

The applications/tests should not delete or modify any registry keys related to:
* Windows telemetry level
* Removing TLS 1.2
