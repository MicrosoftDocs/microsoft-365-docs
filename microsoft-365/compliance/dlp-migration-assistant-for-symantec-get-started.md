---
title: "Get started with the Microsoft Purview Data Loss Prevention migration assistant for Symantec"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
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

# Get started with the Microsoft Purview Data Loss Prevention migration assistant for Symantec (preview)

This article walks you through the prerequisites and installation of the [Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md).

## Before you begin

If you're using the Microsoft Purview Data Loss Prevention migration assistant for Symantec for the first time, ensure the following prerequisites are met:

> [!TIP]
> In case you are facing issues with launching the application after completing all the steps in this article, refer to [Troubleshooting](dlp-migration-assistant-for-symantec-use.md#troubleshooting).

### 1. Have appropriate Microsoft 365 subscription

Based on the workloads you need to cover for the policies created by the tool, you'll need the appropriate DLP licensing indicated [here](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-data-loss-prevention-endpoint-data-loss-protection-dlp).

### 2. Have appropriate user role & privileges

You need to have a *Global Administrator or Compliance Administrator* role to be able to use the migration assistant.

### 3. Check your Operating System

You'll need to download, install, and run the migration assistant on one of the following operating systems:

- Windows 11,10,8.1,7
- Windows Vista
- Windows Server 2008+
- Windows Server 2003 (excluding IA-64)

### 4. Install PowerShell

You must have PowerShell v7.2.6 or higher installed on your machine, before the migration assistant can be installed [Download Powershell-7.2.6-win-x64.msi core on your machine](https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/PowerShell-7.2.6-win-x64.msi).

### 5. Install .NET 6

You must have installed .NET v6.0.41 or higher on your machine, before the migration assistant can be installed. [Download .NET 6 core SDK on your machine](https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-6.0.401-windows-x64-installer).

### Export Symantec DLP policies

Before you begin migration process with the migration assistant, you'll also need your Symantec DLP policies.

You need to export these policies as XMLs from Symantec DLP. You can export the policies as explained [here](https://help.symantec.com/cs/DLP15.1/DLP/v28354460_v125428396/Policy-template-import-and-export).

## Installation steps

Follow these steps to install the Microsoft Purview Data Loss Prevention migration assistant for Symantec:

1. Download and launch **[MigrationAssistantforMicrosoftPurviewDLP.msi]( https://aka.ms/DLPMigrationAssistant)** file.
2. The following dialog box will open. Click **Next**.
     :::image type="content" source="../media/migration-assistant-for-dlp-dialog-box.png" alt-text="Screenshot of the dialog box for migration assistant tool.":::
3. Review the End-User License Agreement.
     :::image type="content" source="../media/migration-assistant-for-dlp-license-agreement.png" alt-text="Screenshot of End user license agreement of migration assistant tool.":::
4. After reviewing, accept the License Agreement and click **Next**.
     :::image type="content" source="../media/migration-assistant-for-dlp-license-agreement-accept.png" alt-text="Screenshot of ticking the acceptance box of Migration tool agreement.":::
5. Select the location where you want to install the migration assistant and click **Next**.
     :::image type="content" source="../media/migration-assistant-for-dlp-installation-path.png" alt-text="Screenshot of folder path for migration assistant installation.":::
6. Once installer is ready, click **Install** to begin installation.
     :::image type="content" source="../media/migration-assistant-for-dlp-install-dialog-box.png" alt-text="Screenshot of migration assistant installation dialog box. ":::
7. Wait while the migration assistant is being installed.
     :::image type="content" source="../media/migration-assistant-for-dlp-installation-status.png" alt-text="Screenshot of migration assistant installation status.":::
8. Once migration assistant is installed, click on **Finish** and close the dialog box.
    :::image type="content" source="../media/migration-assistant-for-dlp-finish-installation.png" alt-text="Screenshot of migration assistant installation completion.":::

## Next steps

Now that you have installed Microsoft Purview Data Loss Prevention migration assistant for Symantec (preview), you're ready to move on to your next step where you use the migration tool.

- [Using the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-use.md)

## See also

- [Learn about the Microsoft Purview Data Loss Prevention migration assistant for Symantec](dlp-migration-assistant-for-symantec-learn.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
