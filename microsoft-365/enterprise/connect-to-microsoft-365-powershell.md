---
title: "Connect to Microsoft 365 with Microsoft Graph PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/03/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: high
ms.collection:
- scotvorg 
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom:
  - LIL_Placement
  - O365ITProTrain
  - Ent_Office_Other
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: 5ebc0e21-b72d-46d8-96fa-00643b18eaec
description: "Connect to your Microsoft 365 tenant by using Microsoft Graph PowerShell to do admin center tasks from the command line."
---

# Connect to Microsoft 365 with Microsoft Graph PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Microsoft Graph PowerShell enables you to manage your Microsoft 365 settings from the command line. This article shows you how to install the required software and then connect to your Microsoft 365 organization using the Microsoft Graph PowerShell SDK.

Currently, the Azure Active Directory PowerShell for Graph module doesn't completely replace the functionality of the Microsoft Azure Active Directory module for Windows PowerShell for application proxy management, user, and contact administration. In some cases, you need to use both versions. You can safely install both versions on the same computer.

<a name='connect-with-the-azure-active-directory-powershell-for-graph-module'></a>

## What do you need to know before you begin?

> [!NOTE]
> The Azure Active Directory (AzureAD) PowerShell module is being deprecated and replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).
>
> Also see [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) and [Upgrade from Azure AD PowerShell to Microsoft Graph PowerShell](/powershell/microsoftgraph/migration-steps) for information on how to install and upgrade to Microsoft Graph PowerShell, respectively.

#### Prerequisites

PowerShell 7 and later is the recommended PowerShell version for use with the Microsoft Graph PowerShell SDK on all platforms. There are no other prerequisites to use the SDK with PowerShell 7 or later.

The following prerequisites are required to use the Microsoft Graph PowerShell SDK with Windows PowerShell.

- Upgrade to PowerShell 5.1 or later
- Install .NET Framework 4.7.2 or later
- Update PowerShellGet to the latest version using Install-Module PowerShellGet

The PowerShell script execution policy must be set to remote signed or less restrictive. Use Get-ExecutionPolicy to determine the current execution policy. For more information, see about_Execution_Policies. To set the execution policy, run:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

##### Operating system

You must use a 64-bit version of Windows. You can use the following versions of Windows:

- Windows 11, Windows 10, Windows 8.1, Windows 8, or Windows 7 Service Pack 1 (SP1)

- Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, Windows Server 2012, or Windows Server 2008 R2 SP1

> [!NOTE]
> For Windows 8.1, Windows 8, Windows 7 Service Pack 1 (SP1), Windows Server 2012 R2, Windows Server 2012, and Windows Server 2008 R2 SP1, download and install the [Windows Management Framework 5.1](https://www.microsoft.com/download/details.aspx?id=54616).

To use Microsoft Graph PowerShell, you must use at least PowerShell version **5.1**.

> [!NOTE]
> These procedures are intended for users who are members of a Microsoft 365 admin role. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).

<a name='connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell'></a>

## Connect with Microsoft Graph PowerShell

In this section, you'll learn how to connect to your Microsoft 365 organization using the Microsoft Graph PowerShell SDK. You can visit [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) for more guidance.

### Step 1: Install the required software

The Microsoft Graph PowerShell SDK is published in the [PowerShell Gallery](https://www.powershellgallery.com/packages/Microsoft.Graph).

These steps are required only one time on your computer. However, you'll likely need to update the software periodically.

#### Install the Microsoft Graph PowerShell SDK and beta module

The Microsoft Graph PowerShell SDK comes in two modules, Microsoft.Graph and Microsoft.Graph.Beta, that you'll install separately. These modules call the Microsoft Graph v1.0 and Microsoft Graph beta endpoints, respectively. You can install the two modules on the same PowerShell version.

1. Open a Windows PowerShell Command Prompt window. Depending on the permissions of your logged-in account, you may need to open the PowerShell window in Administrator mode.

2. To install the v1 module of the SDK in PowerShell Core or Windows PowerShell, run the following command:

    ```powershell
    Install-Module Microsoft.Graph -Scope CurrentUser
    ```

3. Run this command to install the beta module:

    ```powershell
    Install-Module Microsoft.Graph.Beta
    ```

After the installation is completed, you can verify the installed version with the following command:

```powershell
Get-InstalledModule Microsoft.Graph
```

<a name='step-2-connect-to-azure-ad-for-your-microsoft-365-subscription'></a>

### Step 2: Connect to your Microsoft 365 subscription

The PowerShell SDK supports two types of authentication: delegated access, and app-only access. In this guide, you'll use delegated access to sign in as a user, grant consent to the SDK to act on your behalf, and call the Microsoft Graph.

For details on using app-only access for unattended scenarios, see [Use app-only authentication with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/app-only).

#### Determine required permission scopes

Each API in the Microsoft Graph is protected by one or more permission scopes. The user logging in must consent to one of the required scopes for the APIs you plan to use. In this example, we'll use the following APIs.

- List users to find the user ID of the logged-in user.
- List joinedTeams to get the Teams the user is a member of.
- List channels to get the channels in a Team.
- Send message to send a message to a Team's channel.

The **User.Read.All** permission scope enables the first two calls, and the **Group.ReadWrite.All** scope enables the rest. These permissions require an admin account.

For more information about how to determine what permission scopes you'll need, see [Using Find-MgGraphCommand](/powershell/microsoftgraph/find-mg-graph-command).

To connect to your Microsoft 365 Organization, run the following command:

``` powershell
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"
```

The command prompts you to go to a web page to sign in with your credentials. Once you've done that, the command indicates success with a **Welcome To Microsoft Graph!** message. You only need to sign in once per session.

> [!TIP]
> You can accretively add permissions by repeating the **Connect-MgGraph** command with the new permission scopes.

## See also

- [Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
- [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started)
