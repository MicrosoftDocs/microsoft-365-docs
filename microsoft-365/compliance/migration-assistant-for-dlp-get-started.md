---
title: "Get started with Migration Assistant for Microsoft Purview DLP"
f1.keywords:
- CSH
ms.author: v-aljupudi
author: alekyaj
manager: chrfox
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
description: "This article describes the prerequisites and configuration of the Migration Assistant tool for Microsoft Purview DLP."
---

# Get started with Migration Assistant for Microsoft Purview DLP

This article walks you through the prerequisites and installation of [Migration Assistant tool for Microsoft Purview DLP](migration-assistant-for-dlp-learn.md).

## Before you begin

If you're using Migration Assistant for Microsoft Purview DLP for the first time, ensure the following prerequisites are met:

> [!TIP]
> In case you are facing issues with launching the application after completing all the steps in this article, refer to the [Troubleshooting](migration-assistant-for-dlp-use.md#troubleshooting).

### 1. Have Appropriate M365 Subscription

To migrate your DLP policies with highest fidelity across all Microsoft workloads (Exchange, SharePoint Online, OneDrive for Business, Teams, Endpoint Devices) as well as third party cloud apps (like Box, Google Drive, etc.), your organization should have one of the following subscriptions:

- Microsoft 365 E5 or Office 365 E5 subscription
- Microsoft 365 E3 subscription with E5 Compliance add-on

### 2. Have Appropriate User Role & Privileges

You need to have a *Global Administrator or Compliance Administrator* role to be able to use Migration Assistant.

### 3. Check your Operating System

You will need to download, install, and run the Migration Assistant on one of the following operating systems:

- Windows 11,10,8.1,7
- Windows Vista
- Windows Server 2008+
- Windows Server 2003 (excluding IA-64)

### 4. Install PowerShell 7

You need to have the PowerShell 7 (v7.2.6) installed on the same machine where Migration Assistant will be installed to be able to successfully run Migration Assistant. [Click here to download Powershell-7.2.6-win-x64.msi core on your machine](https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/PowerShell-7.2.6-win-x64.msi).

### 5. Install .NET 6

You must have .NET 6 core SDK (v6.0.41) installed on the same machine where Migration Assistant will be installed to be able to successfully run Migration Assistant. [Click here to download .NET 6 core SDK on your machine](https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-6.0.401-windows-x64-installer).

### Export Symatec DLP Policies

Before you begin the migration process with Migration Assistant, you will also need your Symantec DLP policies.

You will need to export these policies as XMLs from Symantec DLP. You can export these as explained [here](https://help.symantec.com/cs/DLP15.1/DLP/v28354460_v125428396/Policy-template-import-and-export).

## Installation steps

Follow the steps given below to install Migration Assistant for Microsoft Purview DLP (Migration Assistant):

1. Download and launch **MigrationAssistantforMicrosoftPurviewDLP.msi** file.
2. The following dialog box will open. Click ‘Next’.
     :::image type="content" source="../media/migration-assistant-for-dlp-dialog-box.png" alt-text="Screenshot of the dialog box for Migration Assistant tool":::
3. Review the End-User License Agreement.
     :::image type="content" source="../media/migration-assistant-for-dlp-license-agreement.png" alt-text="Screenshot of End user license agreement of Migration Assistant tool":::
4. After reviewing, accept the License Agreement.
     :::image type="content" source="../media/migration-assistant-for-dlp-license-agreement-accept.png" alt-text="Screenshot of ticking the acceptance box of Migration tool agreement":::
5. Select the location where you want to install Migration Assistant and click ‘Next’.
     :::image type="content" source="../media/migration-assistant-for-dlp-installation-path.png" alt-text="Screenshot of folder path for Migration Assistant installation":::
6. Once installer is ready, click ‘Install’ to begin installation.
     :::image type="content" source="../media/migration-assistant-for-dlp-install-dialog-box.png" alt-text="Screenshot of Migration Assistant installation dialog box ":::
7. Please wait while Migration Assistant is being installed.
     :::image type="content" source="../media/migration-assistant-for-dlp-installation-status.png" alt-text="Screenshot of Migration Assistant installation status":::
8. Once Migration Assistant is installed, you click on ‘Finish’ and close the dialog box.
    :::image type="content" source="../media/migration-assistant-for-dlp-finish-installation.png" alt-text="Screenshot of Migration Assistant installation completion":::

## Next steps

Now that you have installed Migration Assistant for Microsoft Purview DLP (Preview), you are ready to move on to your next step where you use the migration tool.

- [Using Migration Assistant for Microsoft Purview DLP](migration-assistant-for-dlp-use.md)

## See also

- [Learn about Migration Assistant for Microsoft Purview DLP](migration-assistant-for-dlp-learn.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)