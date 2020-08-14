---
title: "Connect to Exchange Online tenants with remote Windows PowerShell for DAP partners"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date:
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection: Ent_O365
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.assetid: ae5f1a87-8b77-4f93-a1b8-56f800aeb283
description: "Summary: Use remote Windows PowerShell to connect to Exchange Online by using the DelegatedOrg value."
---

# Connect to Exchange Online tenants with remote Windows PowerShell for Delegated Access Permissions (DAP) partners

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

> [!IMPORTANT]
> The procedures in this topic are only for Delegated Access Permission (DAP) partners. If you aren't a DAP partner, don't use the procedures in this topic. 
  
DAP partners are Syndication and Cloud Solution Providers (CSP) partners. They are frequently network or telecom providers to other companies. They bundle subscriptions into their service offerings to their customers. They own a partner tenancy that is automatically granted Administer On Behalf Of (AOBO) permissions to their Microsoft 365 customer tenancies so they can administer and report on all of their customer tenancies.

DAP partners can use Exchange Online PowerShell to manage customer Exchange Online settings and get Microsoft 365 reports from the command line. You use Windows PowerShell on your local computer to create a remote PowerShell session to Exchange Online. It's a simple three-step process where you enter your credentials, provide the required connection settings, and then import the Exchange Online cmdlets into your local Windows PowerShell session so that you can use them.

> [!NOTE]
> DAP partners can't use the procedures in [Connect to Exchange Online PowerShell using multi-factor authentication](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/mfa-connect-to-exchange-online-powershell) to connect to their customer tenant organizations in Exchange Online PowerShell. MFA and the Exchange Online Remote PowerShell Module don't work with delegated authentication.
  
## What do you need to know before you begin?

- Estimated time to complete: 5 minutes

- You can use the following versions of Windows:
    
  - Windows 10

  - Windows 8.1

  - Windows Server 2016

  - Windows Server 2012 or Windows Server 2012 R2

  - Windows 7 Service Pack 1 (SP1)<sup>*</sup>

  - Windows Server 2008 R2 SP1<sup>*</sup>

    <sup>*</sup> For older versions of Windows, you need to install the Microsoft.NET Framework 4.5 or later and then an updated version of the Windows Management Framework: 3.0, 4.0, or 5.1 (only one). For more information, see [Installing the .NET Framework](https://go.microsoft.com/fwlink/p/?LinkId=257868), [Windows Management Framework 3.0](https://go.microsoft.com/fwlink/p/?LinkId=272757), [Windows Management Framework 4.0](https://go.microsoft.com/fwlink/p/?LinkId=391344), and [Windows Management Framework 5.1](https://aka.ms/wmf5download).

- Windows PowerShell needs to be configured to run scripts, and by default, it isn't. You'll get the following error when you try to connect:

  `Files cannot be loaded because running scripts is disabled on this system. Provide a valid certificate with which to sign the files.`

  To require all PowerShell scripts that you download from the internet are signed by a trusted publisher, run the following command in an elevated Windows PowerShell window (a Windows PowerShell window you open by selecting **Run as administrator**):

    ```
    Set-ExecutionPolicy RemoteSigned
    ```

  You need to configure this setting only once on your computer, not every time you connect.

- For information about keyboard shortcuts that might apply to the procedures in this topic, see [Keyboard shortcuts in the Exchange admin center](https://go.microsoft.com/fwlink/p/?LinkId=534017).

## Connect to Exchange Online for customer organizations

1. On your local computer, open Windows PowerShell and run the following command.
    
    ```
    $UserCredential = Get-Credential
    ```

    In the **Windows PowerShell Credential Request** dialog box, enter your DAP administrator user name and password, and then click **OK**.
    
2. Replace _\<customer tenant domain name\>_ with the name of the tenant domain that you want to connect to, and run the following command:
    
    ```
    $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell-liveid?DelegatedOrg=<customer tenant domain name> -Credential $UserCredential -Authentication Basic -AllowRedirection
    ```

    The key step in this command is specifying which customer to access for the reporting information. You do this in the  _ConnectionURI_ parameter, where you provide the FQDN of the initial domain name as the value for `?DelegatedOrg=`. This value indicates the correct Exchange Online PowerShell endpoint to connect to. Remote PowerShell must connect to Microsoft 365 reporting in the context of a specific customer each time a report is run. After you connect to Exchange Online PowerShell, all subsequent commands are run in the context of the customer, which gives you access to all of the available reports for the customer.
    
3. Run the following command.
    
    ```
    Import-PSSession $Session
    ```

> [!NOTE]
> There's a limit of three simultaneous sessions that can run under one account. Be sure to disconnect the remote PowerShell session when you're finished. If you close the Windows PowerShell window without disconnecting the session, you can use up all the remote PowerShell sessions available to you, and you'll need to wait for the sessions to expire. To disconnect the remote PowerShell session, run the following command:

```
Remove-PSSession $Session
```
  
## How do you know this worked?

After Step 3, the Exchange Online cmdlets are imported into your local Windows PowerShell session as tracked by a progress bar. If you don't receive any errors, you connected successfully. A quick test is to run an Exchange Online cmdlet (for example, **Get-Mailbox**) and see the results.
  
If you receive errors, check the following requirements:
  
- A common problem is an incorrect password. Run the three steps again and pay close attention to the user name and password you enter in Step 1.
    
- The account you use to connect to Exchange Online must be enabled for remote PowerShell. For more information, see [Enable or disable access to Exchange Online PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=534018).
    
- TCP port 80 traffic needs to be open between your local computer and Exchange Online. It's probably open, but it's something to consider if your organization has a restrictive Internet access policy.
    
## Call the cmdlet directly with Invoke-Command

Importing a remote PowerShell session (Step 3) can be a lengthy process because it brings in _all_ Exchange Online cmdlets. This can be an issue in batch processing (for example, when you're running reports or making bulk changes for different tenants). As an alternative to using **Import-PSSession**, you can call cmdlets you want to use directly with **Invoke-Command**. For example, to call the **Get-Milbox** cmdlet, substitute this syntax for the `Import-PSSession $Session` command in Step 3:
  
```
Invoke-Command -Session $Session -ScriptBlock {Get-Mailbox}
```

## More reporting cmdlets

The cmdlets that you used in this topic are Windows PowerShell cmdlets. For more information about these cmdlets, see the following topics:
  
- [Get-Credential](https://go.microsoft.com/fwlink/p/?LinkId=389618)
    
- [New-PSSession](https://go.microsoft.com/fwlink/p/?LinkId=389621)
    
- [Import-PSSession](https://go.microsoft.com/fwlink/p/?LinkId=389619)
    
- [Remove-PSSession](https://go.microsoft.com/fwlink/p/?LinkId=389620)
    
- [Set-ExecutionPolicy](https://go.microsoft.com/fwlink/p/?LinkId=389623)
    

