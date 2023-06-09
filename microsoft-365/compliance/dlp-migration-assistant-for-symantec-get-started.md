---
title: "Get started with the Microsoft Purview Data Loss Prevention migration assistant for Symantec"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid: 
- MET150
description: "This article describes the prerequisites and configuration of the Microsoft Purview Data Loss Prevention migration assistant for Symantec."
---

# Get started with the Microsoft Purview Data Loss Prevention migration assistant for Symantec

This article walks you through the prerequisites and installation of the [Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md).

## Before you begin

If you're using the Microsoft Purview Data Loss Prevention migration assistant for Symantec for the first time, ensure the following prerequisites are met:

> [!TIP]
> If the application won't launch after completing all the steps in this article, refer to [Troubleshooting](dlp-migration-assistant-for-symantec-use.md#troubleshooting).

### 1. Have appropriate Microsoft 365 subscription

You'll need the appropriate DLP licensing for the locations that the migrated policies are scoped to. Check [here](https://aka.ms/dlplicensing).

### 2. Have appropriate user role and privileges

You need to have a *Global Administrator or Compliance Administrator* role to be able to use the migration assistant.

### 3. Check your Operating System

You can only install and run the migration assistant on these operating systems:

- Windows 11,10,8.1,7
- Windows Vista
- Windows Server 2008+
- Windows Server 2003 (excluding IA-64)

### 4. Install PowerShell

You must have PowerShell v7.2.6 or higher installed on the host machine. [Download Powershell-7.2.6-win-x64.msi core on your machine](https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/PowerShell-7.2.6-win-x64.msi).

### 5. Install .NET

You must have .NET desktop runtime v6.0.13 or higher installed on the host machine. [Download .NET 6.0 Desktop Runtime (v6.0.13) - Windows x64 Installer (microsoft.com)](https://dotnet.microsoft.com/download/dotnet/thank-you/runtime-desktop-6.0.13-windows-x64-installer?cid=getdotnetcore).

### Export Symantec DLP policies

Before you begin migration process, you need to export your Symantec DLP policies.

You need to export these policies as XML files from Symantec DLP. Export the policies using these [procedures](https://go.microsoft.com/fwlink/?linkid=2221525).

## Installation steps

Follow these steps to install the Microsoft Purview Data Loss Prevention migration assistant for Symantec:

1. Download and launch the **[migration assistant](https://aka.ms/DLPMigrationAssistant)** file.
2. The following dialog box will open. Select **Next**.
3. Review the End-User License Agreement.
4. After reviewing, accept the License Agreement and select **Next**.
5. Select the location where you want to install the migration assistant and select **Next**.
6. Once installer is ready, select **Install** to begin installation.
7. Wait while the migration assistant is being installed.
8. Once migration assistant is installed, select **Finish** and close the dialog box.

## Next steps

Now that you have installed Microsoft Purview Data Loss Prevention migration assistant for Symantec, you're ready to move on to your next step where you use the migration assistant.

- [Using the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-use.md)

## See also

- [Learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
