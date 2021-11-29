---
title: Troubleshooting issues when switching to Microsoft Defender for Endpoint
description: Learn how to troubleshoot issues when you make the switch to Microsoft Defender for Endpoint.
keywords: migration, windows defender, advanced endpoint protection, antivirus, antimalware, passive mode, active mode, troubleshooting
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-migratetomdatp
  - m365solution-overview
  - m365solution-mcafeemigrate
  - m365solution-symantecmigrate
ms.topic: conceptual
ms.custom: migrationguides
ms.date: 11/29/2021
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
ms.technology: mde
---

# Troubleshooting issues when switching to Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

This article provides troubleshooting information for security administrators who are experiencing issues when switching from a non-Microsoft endpoint protection solution to Microsoft Defender for Endpoint.

## Microsoft Defender Antivirus is getting uninstalled on Windows Server

When you make the switch to Defender for Endpoint, you begin with your non-Microsoft antivirus/antimalware protection in active mode. As part of the setup process, you configure Microsoft Defender Antivirus in passive mode. Occasionally, your non-Microsoft antivirus/antimalware solution might prevent Microsoft Defender Antivirus from running on Windows Server. In fact, it can look like Microsoft Defender Antivirus has been completely removed from Windows Server.

On Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, or Windows Server 2012 R2, you must set Microsoft Defender Antivirus to passive mode manually. This action helps prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using PowerShell, Group Policy, or a registry key.

You can set Microsoft Defender Antivirus to passive mode by setting the following registry key:

Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
Name: `ForceDefenderPassiveMode`
Type: `REG_DWORD`
Value: `1`

 > [!NOTE]
 > For passive mode to work on endpoints running Windows Server 2016 and Windows Server 2012 R2, those endpoints must be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).

For more information, see [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md).

