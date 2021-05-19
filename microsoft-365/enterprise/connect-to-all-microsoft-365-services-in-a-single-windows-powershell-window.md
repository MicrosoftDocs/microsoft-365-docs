---
title: "Connect to all Microsoft 365 services in a single PowerShell window"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 02/02/2021
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
- LIL_Placement
- Ent_Office_Other
- O365ITProTrain
- httpsfix
ms.assetid: 53d3eef6-4a16-4fb9-903c-816d5d98d7e8
description: "Summary: Connect to all Microsoft 365 services in a single PowerShell window."
---

# Connect to all Microsoft 365 services in a single PowerShell window

When you use PowerShell to manage Microsoft 365, you can have multiple PowerShell sessions open at the same time. You might have different PowerShell windows to manage user accounts, SharePoint Online, Exchange Online, Skype for Business Online, Microsoft Teams, and the Security &amp; Compliance center.
  
This scenario isn't optimal for managing Microsoft 365, because you can't exchange data among those windows for cross-service management. This article describes how to use a single instance of PowerShell to manage Microsoft 365 accounts, Skype for Business Online, Exchange Online, SharePoint Online, Microsoft Teams, and the Security &amp; Compliance Center.

>[!Note]
>This article currently only contains the commands to connect to the Worldwide (+GCC) cloud. Notes provide links to articles about connecting to the other Microsoft 365 clouds.

## Before you begin

Before you can manage all of Microsoft 365 from a single instance of PowerShell, consider the following prerequisites:
  
- The Microsoft 365 work or school account that you use must be a member of a Microsoft 365 admin role. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md). This is a requirement for PowerShell for Microsoft 365, but not necessarily for all other Microsoft 365 services.
    
- You can use the following 64-bit versions of Windows:
    
  - Windows 10
    
  - Windows 8.1 or Windows 8
    
  - Windows Server 2019
    
  - Windows Server 2016
    
  - Windows Server 2012 R2 or Windows Server 2012
    
  - Windows 7 Service Pack 1 (SP1)*
    
  - Windows Server 2008 R2 SP1*
    
    \* You need to install Microsoft .NET Framework 4.5.*x* and then Windows Management Framework 3.0 or 4.0. For more information, see [Windows Management Framework](/powershell/scripting/windows-powershell/wmf/overview).
    
    You need to use a 64-bit version of Windows because of the requirements for the Skype for Business Online module and one of the Microsoft 365 modules.
    
- You need to install the modules that are required for Azure Active Directory (Azure AD), Exchange Online, SharePoint Online, Skype for Business Online and Teams:
    
  - [Azure Active Directory V2](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module)
  - [SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251)
  - [Skype for Business Online, PowerShell Module](/microsoftteams/teams-powershell-overview)
  - [Exchange Online PowerShell V2](/powershell/exchange/exchange-online-powershell-v2#install-and-maintain-the-exchange-online-powershell-v2-module)
  - [Teams PowerShell Overview](/microsoftteams/teams-powershell-overview)
    
-  PowerShell must be configured to run signed scripts for Skype for Business Online and the Security &amp; Compliance Center. Run the following command in an elevated PowerShell session (a PowerShell session that you **Run as administrator**).
    
   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

## Connection steps when using just a password

Follow these steps to connect to all the services in a single PowerShell window when you're using just a password for sign-in.
  
1. Open Windows PowerShell.
    
2. Run this command and enter your Microsoft 365 work or school account credentials.
    
   ```powershell
   $credential = Get-Credential
   ```

3. Run this command to connect to Azure AD by using the Azure Active Directory PowerShell for Graph module.
    
   ```powershell
   Connect-AzureAD -Credential $credential
   ```
  
   Or if you're using the Microsoft Azure Active Directory Module for Windows PowerShell module, run this command.
      
   ```powershell
   Connect-MsolService -Credential $credential
   ```

   > [!Note]
   > PowerShell Core doesn't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with *Msol* in their name. You must run these cmdlets from PowerShell.

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

6. Run these commands to connect to the Security &amp; Compliance Center.
    
   ```powershell
   $acctName="<UPN of the account, such as belindan@litwareinc.onmicrosoft.com>"
   Connect-IPPSSession -UserPrincipalName $acctName
   ```

   > [!Note]
   > To connect to the Security &amp; Compliance Center for Microsoft 365 clouds other than Worldwide, see [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

7. Run these commands to connect to Teams PowerShell (and Skype for Business Online)
    
   ```powershell
   Import-Module MicrosoftTeams
   $credential = Get-Credential
   Connect-MicrosoftTeams -Credential $credential
   ```
  
   > [!Note]
   > Skype for Business Online Connector is currently part of the latest Teams PowerShell module. If you're using the latest Teams PowerShell public release, you don't need to install the Skype for Business Online Connector.
  
   > [!Note]
   > To connect to Microsoft Teams clouds other than *Worldwide*, see [Connect-MicrosoftTeams](/powershell/module/teams/connect-microsoftteams).
  


### Azure Active Directory PowerShell for Graph module

Here are the commands for all the services in a single block when you use the Azure Active Directory PowerShell for Graph module. Specify the name of your domain host and the UPN for the sign-in and run them all at the same time.
  
```powershell
$orgName="<for example, litwareinc for litwareinc.onmicrosoft.com>"
$acctName="<UPN of the account, such as belindan@litwareinc.onmicrosoft.com>"
$credential = Get-Credential -UserName $acctName -Message "Type the account's password."
#Azure Active Directory
Connect-AzureAD -Credential $credential
#SharePoint Online
Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -credential $credential
#Exchange Online
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -ShowProgress $true
#Security & Compliance Center
Connect-IPPSSession -UserPrincipalName $acctName
#Teams and Skype for Business Online
Import-Module MicrosoftTeams
Connect-MicrosoftTeams -Credential $credential
```

### Microsoft Azure Active Directory Module for Windows PowerShell module

Here are the commands for all the services in a single block when you use the Microsoft Azure Active Directory Module for Windows PowerShell module. Specify the name of your domain host and the UPN for the sign-in and run them all at one time.
  
```powershell
$orgName="<for example, litwareinc for litwareinc.onmicrosoft.com>"
$acctName="<UPN of the account, such as belindan@litwareinc.onmicrosoft.com>"
$credential = Get-Credential -UserName $acctName -Message "Type the account's password."
#Azure Active Directory
Connect-MsolService -Credential $credential
#SharePoint Online
Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -credential $credential
#Exchange Online
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -ShowProgress $true
#Security & Compliance Center
Connect-IPPSSession -UserPrincipalName $acctName
#Teams and Skype for Business Online
Import-Module MicrosoftTeams
Connect-MicrosoftTeams -Credential $credential
```

## Connection steps when using multi-factor authentication

### Azure Active Directory PowerShell for Graph module

Here are all the commands in a single block to connect to multiple Microsoft 365 services when you use multi-factor authentication with the Azure Active Directory PowerShell for Graph module.

```powershell
$acctName="<UPN of the account, such as belindan@litwareinc.onmicrosoft.com>"
$orgName="<for example, litwareinc for litwareinc.onmicrosoft.com>"
#Azure Active Directory
Connect-AzureAD
#SharePoint Online
Connect-SPOService -Url https://$orgName-admin.sharepoint.com
#Exchange Online
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName $acctName -ShowProgress $true
#Security & Compliance Center
Connect-IPPSSession -UserPrincipalName $acctName
#Teams and Skype for Business Online
Import-Module MicrosoftTeams
Connect-MicrosoftTeams
```
### Microsoft Azure Active Directory Module for Windows PowerShell module

Here are all the commands in a single block to connect to multiple Microsoft 365 services when you use multi-factor authentication with the Microsoft Azure Active Directory Module for Windows PowerShell module.

```powershell
$acctName="<UPN of the account, such as belindan@litwareinc.onmicrosoft.com>"
$orgName="<for example, litwareinc for litwareinc.onmicrosoft.com>"
#Azure Active Directory
Connect-MsolService
#SharePoint Online
Connect-SPOService -Url https://$orgName-admin.sharepoint.com
#Exchange Online
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName $acctName -ShowProgress $true
#Security & Compliance Center
Connect-IPPSSession -UserPrincipalName $acctName
#Teams and Skype for Business Online
Import-Module MicrosoftTeams
Connect-MicrosoftTeams
```

## Close the PowerShell window

To close down the PowerShell window, run this command to remove the active sessions to Skype for Business Online, SharePoint Online, and Teams:
  
```powershell
Remove-PSSession $sfboSession ; Disconnect-SPOService ; Disconnect-MicrosoftTeams 
```

## See also

- [Connect to Microsoft 365 with PowerShell](connect-to-microsoft-365-powershell.md)
- [Manage SharePoint Online with PowerShell](manage-sharepoint-online-with-microsoft-365-powershell.md)
- [Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
