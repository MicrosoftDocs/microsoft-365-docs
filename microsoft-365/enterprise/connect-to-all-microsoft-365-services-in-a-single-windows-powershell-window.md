---
title: "Connect to all Microsoft 365 services in a single PowerShell window"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/05/2024
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
  - Ent_Office_Other
  - O365ITProTrain
  - httpsfix
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: 53d3eef6-4a16-4fb9-903c-816d5d98d7e8
description: "Summary: Connect to all Microsoft 365 services in a single PowerShell window."
---

# Connect to all Microsoft 365 services in a single PowerShell window

When you use PowerShell to manage Microsoft 365, you can have multiple PowerShell sessions open at the same time. You might have different PowerShell windows to manage user accounts, SharePoint Online, Exchange Online, Microsoft Teams, Microsoft Defender for Office 365 features (security), and Microsoft Purview compliance features.

This scenario isn't optimal for managing Microsoft 365, because you can't exchange data among those windows for cross-service management. This article describes how to use a single instance of PowerShell to manage Microsoft 365 accounts, Exchange Online, SharePoint Online, Microsoft Teams, and features in Defender for Office 365 Microsoft Purview compliance.

> [!NOTE]
>This article currently only contains the commands to connect to the Worldwide (+GCC) cloud. Notes provide links to articles about connecting to the other Microsoft 365 clouds.

## Before you begin

Before you can manage all of Microsoft 365 from a single instance of PowerShell, consider the following prerequisites:

- The Microsoft 365 work or school account that you use must be a member of a Microsoft 365 admin role. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md). This is a requirement for PowerShell for Microsoft 365, but not necessarily for all other Microsoft 365 services.

- You can use the following 64-bit versions of Windows:
  - Windows 11
  - Windows 10
  - Windows 8.1 or Windows 8
  - Windows Server 2019
  - Windows Server 2016
  - Windows Server 2012 R2 or Windows Server 2012
  - Windows 7 Service Pack 1 (SP1)*
  - Windows Server 2008 R2 SP1*

    \* You need to install Microsoft .NET Framework 4.5.*x* and then Windows Management Framework 3.0 or 4.0. For more information, see [Windows Management Framework](/powershell/scripting/windows-powershell/wmf/overview).

- You need to install the modules that are required for Microsoft Entra ID, Exchange Online, Defender for Office 365, Microsoft Purview compliance, SharePoint Online, and Teams:

  - [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation)
  - [SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)
  - [Teams PowerShell Module](/microsoftteams/teams-powershell-overview)
  - [Install and maintain the Exchange Online PowerShell module](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exchange-online-powershell-module)
  - [Teams PowerShell Overview](/microsoftteams/teams-powershell-overview)

- PowerShell must be configured to run signed scripts for Exchange Online, Defender for Office 365, and Microsoft Purview compliance. Run the following command in an elevated PowerShell session (a PowerShell session that you **Run as administrator**).

   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

## Connection steps

Follow these steps to connect to all the services in a single PowerShell window.

1. Open Windows PowerShell.

2. Run this command and enter your Microsoft 365 work or school account credentials.

   ```powershell
   $credential = Get-Credential
   ```

3. Run this command to connect to Microsoft Entra ID by using the Microsoft Graph PowerShell SDK.

   > [!NOTE]
   > The Azure Active Directory (AzureAD) PowerShell module is being deprecated and replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).
   >
   > Also see [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) and [Upgrade from Azure AD PowerShell to Microsoft Graph PowerShell](/powershell/microsoftgraph/migration-steps) for information on how to install and upgrade to Microsoft Graph PowerShell, respectively.

   The Microsoft Graph PowerShell SDK supports two types of authentication: delegated access, and app-only access. In this example, you'll use delegated access to sign in as a user, grant consent to the SDK to act on your behalf, and call the Microsoft Graph.

   For details on using app-only access for unattended scenarios, see [Use app-only authentication with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/app-only).

   **Determine required permission scopes**

   Each API in the Microsoft Graph is protected by one or more permission scopes. The user logging in must consent to one of the required scopes for the APIs you plan to use. In this example, we'll use the following APIs.

   - List users to find the user ID of the logged-in user.
   - List joinedTeams to get the Teams the user is a member of.
   - List channels to get the channels in a Team.
   - Send message to send a message to a Team's channel.

   The **User.Read.All** permission scope enables the first two calls, and the **Group.ReadWrite.All** scope enables the rest. These permissions require an admin account.

   For more information about how to determine what permission scopes you'll need, see [Using Find-MgGraphCommand](/powershell/microsoftgraph/find-mg-graph-command).

   **Connect to Microsoft Graph**

   To connect to your Microsoft 365 Organization, run the following command with example permission scopes:

   ``` powershell
   Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"
   ```

   The command prompts you to go to a web page to sign in with your credentials. Once you've done that, the command indicates success with a **Welcome To Microsoft Graph!** message. You only need to sign in once per session. Passing credentials to the ```Connect-MgGraph``` cmdlet is currently not supported.

   > [!TIP]
   > You can accretively add permissions by repeating the **Connect-MgGraph** command with the new permission scopes.

4. Run these commands to connect to SharePoint Online. Specify the organization name for your domain. For example, for "litwareinc\.onmicrosoft.com", the  organization name value is "litwareinc".

   ```powershell
   $orgName="<for example, litwareinc for litwareinc.onmicrosoft.com>"
   Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
   Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $Credential
   ```

5. Run these commands to connect to Exchange Online.

   ```powershell
   Import-Module ExchangeOnlineManagement
   Connect-ExchangeOnline -ShowProgress $true
   ```

   > [!Note]
   > To connect to Exchange Online for Microsoft 365 clouds other than Worldwide, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

6. Run these commands to connect to Security & Compliance PowerShell.

   ```powershell
   $acctName="<UPN of the account, such as belindan@litwareinc.onmicrosoft.com>"
   Connect-IPPSSession -UserPrincipalName $acctName
   ```

   > [!NOTE]
   > To connect to Security & Compliance PowerShell for Microsoft 365 clouds other than Worldwide, see [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

7. Run these commands to connect to Teams PowerShell.

   ```powershell
   Import-Module MicrosoftTeams
   $credential = Get-Credential
   Connect-MicrosoftTeams -Credential $credential
   ```

   > [!NOTE]
   > Skype for Business Online Connector is currently part of the latest Teams PowerShell module. If you're using the latest Teams PowerShell public release, you don't need to install the Skype for Business Online Connector.
   >
   > To connect to Microsoft Teams clouds other than *Worldwide*, see [Connect-MicrosoftTeams](/powershell/module/teams/connect-microsoftteams).

## Close the PowerShell window

To close down the PowerShell window, run this command to remove the active sessions to SharePoint Online, Teams, Defender for Office 365 and Microsoft Purview compliance:

```powershell
Disconnect-SPOService; Disconnect-MicrosoftTeams; Disconnect-ExchangeOnline
```

## See also

- [Connect to Microsoft 365 with Microsoft Graph PowerShell](connect-to-microsoft-365-powershell.md)
- [Manage SharePoint Online with PowerShell](manage-sharepoint-online-with-microsoft-365-powershell.md)
- [Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
