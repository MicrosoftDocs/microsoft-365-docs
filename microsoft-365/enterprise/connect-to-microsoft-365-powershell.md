---
title: "Connect to Microsoft 365 with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 06/30/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- scotvorg 
- Ent_O365
f1.keywords:
- CSH
ms.custom: 
- LIL_Placement
- O365ITProTrain
- Ent_Office_Other
ms.assetid: 5ebc0e21-b72d-46d8-96fa-00643b18eaec
description: "Connect to your Microsoft 365 tenant by using PowerShell for Microsoft 365 to do admin center tasks from the command line."
---

# Connect to Microsoft 365 with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

PowerShell for Microsoft 365 enables you to manage your Microsoft 365 settings from the command line. To connect to PowerShell, just install the required software and then connect to your Microsoft 365 organization.

There are two versions of the PowerShell module that you can use to connect to Microsoft 365 and administer user accounts, groups, and licenses:

- Azure Active Directory PowerShell for Graph, whose cmdlets include *AzureAD* in their name
- Microsoft Azure Active Directory Module for Windows PowerShell, whose cmdlets include *Msol* in their name

Currently, the Azure Active Directory PowerShell for Graph module doesn't completely replace the functionality of the Microsoft Azure Active Directory Module for Windows PowerShell module for user, group, and license administration. In some cases, you need to use both versions. You can safely install both versions on the same computer.

>[!Note]
>You can also connect with the [Azure Cloud Shell](#connect-with-the-azure-cloud-shell) from the Microsoft 365 admin center.
>


## What do you need to know before you begin?

>[!NOTE]
> The Azure Active Directory Module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

**Operating system**

You must use a 64-bit version of Windows. Support for the 32-bit version of the Microsoft Azure Active Directory Module for Windows PowerShell ended in 2014.

You can use the following versions of Windows:
    
  - Windows 10, Windows 8.1, Windows 8, or Windows 7 Service Pack 1 (SP1) 
    
  - Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 SP1

>[!Note]
>For Windows 8.1, Windows 8, Windows 7 Service Pack 1 (SP1), Windows Server 2012 R2, Windows Server 2012, and Windows Server 2008 R2 SP1, download and install the [Windows Management Framework 5.1](https://www.microsoft.com/download/details.aspx?id=54616).

**PowerShell**

- For the Azure Active Directory PowerShell for Graph module, you must use PowerShell version 5.1.

- For the Microsoft Azure Active Directory Module for Windows PowerShell module, you must use PowerShell version 5.1 or later, up to PowerShell version 6. You can't use PowerShell version 7.
       
>[!Note]
>These procedures are intended for users who are members of a Microsoft 365 admin role. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).


## Connect with the Azure Active Directory PowerShell for Graph module

Commands in the Azure Active Directory PowerShell for Graph module have *AzureAD* in their cmdlet name. You can install the [Azure Active Directory PowerShell for Graph](/powershell/azure/active-directory/install-adv2) module or [Azure PowerShell](/powershell/azure/install-az-ps).

For procedures that require the new cmdlets in the Azure Active Directory PowerShell for Graph module, follow these steps to install the module and connect to your Microsoft 365 subscription.

> [!Note]
> For information about support for different versions of Windows, see [Azure Active Directory PowerShell for Graph module](/powershell/azure/active-directory/install-adv2) .

### Step 1: Install the required software

These steps are required only one time on your computer. But you'll likely need to update the software periodically.
  
1. Open a Windows PowerShell Command Prompt window.
    
2. Run this command:
    
    ```powershell
    Install-Module -Name AzureAD
    ```

  By default, the PowerShell Gallery (PSGallery) isn't configured as a trusted repository for **PowerShellGet**. The first time you use the PSGallery, you'll see the following message:

```console
Untrusted repository

You are installing the modules from an untrusted repository. If you trust this repository, change its InstallationPolicy value by running the `Set-PSRepository` cmdlet.

Are you sure you want to install the modules from 'PSGallery'?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"):
```

Answer **Yes** or **Yes to All** to continue with the installation.

3.  Run this command to import the module:
    
    ```powershell
    Import-Module  AzureAD
    ```
    
### Step 2: Connect to Azure AD for your Microsoft 365 subscription

To connect to Azure Active Directory (Azure AD) for your Microsoft 365 subscription with an account name and password or with multi-factor authentication, run one of these commands from a Windows PowerShell command prompt. (It doesn't have to be elevated.)

| Office 365 cloud | Command |
|:-------|:-----|
| Office 365 Worldwide (+GCC) | `Connect-AzureAD` |
| Office 365 operated by 21 Vianet | `Connect-AzureAD -AzureEnvironmentName AzureChinaCloud` |
| Office 365 Germany | `Connect-AzureAD -AzureEnvironmentName AzureGermanyCloud` |
| Office 365 U.S. Government DoD and Office 365 U.S. Government GCC High | `Connect-AzureAD -AzureEnvironmentName AzureUSGovernment` |
|||

In the **Sign into your account** dialog box, type your Microsoft 365 work or school account user name and password, and then select **OK**.

If you're using multi-factor authentication, follow the instructions to provide additional authentication information, such as a verification code.

After you connect, you can use the cmdlets for the [Azure Active Directory PowerShell for Graph module](/powershell/module/azuread).

## Connect with the Microsoft Azure Active Directory Module for Windows PowerShell

>[!Note]
>Cmdlets in the Microsoft Azure Active Directory Module for Windows PowerShell have *Msol* in their name.

PowerShell version 7 and later don't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with *Msol* in their name. For PowerShell version 7 and later, you must use the Microsoft Graph PowerShell SDK.

PowerShell Core doesn't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with *Msol* in their name. Run these cmdlets from Windows PowerShell.
    
### Step 1: Install the required software

These steps are required only one time on your computer. But you'll likely need to update the software periodically.
  
1.  If you're not running Windows 10, install the 32-bit version of the Microsoft Online Services Sign-in Assistant: [Microsoft Online Services Sign-in Assistant for IT Professionals RTW](https://download.microsoft.com/download/7/1/E/71EF1D05-A42C-4A1F-8162-96494B5E615C/msoidcli_32bit.msi).
    
2. Follow these steps to install and import the Microsoft Azure Active Directory Module for Windows PowerShell:
    
   1. Open an elevated Windows PowerShell command prompt (run Windows PowerShell as an administrator).
   1.  Run the **Install-Module MSOnline** command.
   1. If you're prompted to install the NuGet provider, type **Y** and press Enter.
   1. If you're prompted to install the module from PSGallery, type **Y** and press Enter.
   1. Run the **Import-Module MSOnline** command to import the module.
    
### Step 2: Connect to Azure AD for your Microsoft 365 subscription

To connect to Azure AD for your Microsoft 365 subscription with an account name and password or with multi-factor authentication, run one of these commands from a Windows PowerShell command prompt. (It doesn't have to be elevated.)

| Office 365 cloud | Command |
|:-------|:-----|
| Office 365 Worldwide (+GCC) | `Connect-MsolService` |
| Office 365 operated by 21 Vianet | `Connect-MsolService -AzureEnvironment AzureChinaCloud` |
| Office 365 Germany | `Connect-MsolService -AzureEnvironment AzureGermanyCloud` |
| Office 365 U.S. Government DoD and Office 365 U.S. Government GCC High | `Connect-MsolService -AzureEnvironment USGovernment` |
|||

In the **Sign into your account** dialog box, type your Microsoft 365 work or school account user name and password, and then select **OK**.

If you're using multi-factor authentication, follow the instructions to provide additional authentication information, such as a verification code.

### How do you know it worked?

If you don't get an error message, you connected successfully. For quick test,  run a Microsoft 365 cmdlet, such as  **Get-MsolUser**, and see the results.
  
If you get an error message, check the following issues:
  
- **A common problem is an incorrect password**. Run [Step 2](#step-2-connect-to-azure-ad-for-your-microsoft-365-subscription) again, and pay close attention to the user name and password that you enter.
    
- **The Microsoft Azure Active Directory Module for Windows PowerShell requires that Microsoft .NET Framework 3.5.*x* is enabled on your computer**. It's likely that your computer has a newer version installed (for example, 4 or 4.5.*x*). But backward compatibility with older versions of the .NET Framework can be enabled or disabled. For more information, see the following articles:
    
  - For Windows Server 2012 or Windows Server 2012 R2, see [Enable .NET Framework 3.5 by using the Add Roles and Features Wizard](/previous-versions/windows/it-pro/windows-8.1-and-8/dn482071(v=win.10)).
    
  - For Windows 7 or Windows Server 2008 R2, see [You can't open the Azure Active Directory Module for Windows PowerShell](/troubleshoot/azure/active-directory/cant-open-aad-module-powershell).

  - For Windows 10, Windows 8.1, and Windows 8, see [Install the .NET Framework 3.5 on Windows 10, Windows 8.1, and Windows 8](/dotnet/framework/install/dotnet-35-windows-10).

  
- **Your version of the Microsoft Azure Active Directory Module for Windows PowerShell might be out of date.** To check, run the following command in PowerShell for Microsoft 365 or the Microsoft Azure Active Directory Module for Windows PowerShell:
    
  ```powershell
  (Get-Item C:\Windows\System32\WindowsPowerShell\v1.0\Modules\MSOnline\Microsoft.Online.Administration.Automation.PSModule.dll).VersionInfo.FileVersion
  ```

    If the version number returned is lower than *1.0.8070.2*, uninstall the Microsoft Azure Active Directory Module for Windows PowerShell and install from [Step 1](#step-1-install-the-required-software), above.

- **If you get a connection error message**, see ["Connect-MsolService: Exception of type was thrown" error](/office365/troubleshoot/active-directory/connect-msoservice-throw-exception).
    
- **If you get a "Get-Item: Cannot find path" error message**, run this command:


   ```powershell
     (dir "C:\Program Files\WindowsPowerShell\Modules\MSOnline").Name
   ```

## Connect with the Azure Cloud Shell

To connect with and use the Azure Cloud Shell from the Microsoft 365 admin center, select the PowerShell window icon from the upper-right corner of the task bar. In the **Welcome to Azure Cloud Shell** pane, select **PowerShell**.

You will need an active Azure subscription for your organization that is tied to your Microsoft 365 subscription. If you don't already have one, you can create one. Once you have an Azure subscription, a PowerShell window opens from which you can run PowerShell commands and scripts.

For more information, see [Azure Cloud Shell](/azure/cloud-shell/overview).



## See also

- [Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
- [Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
- [Connect to all Microsoft 365 services in a single Windows PowerShell window](connect-to-all-microsoft-365-services-in-a-single-windows-powershell-window.md)
