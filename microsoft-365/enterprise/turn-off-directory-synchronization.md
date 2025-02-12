---
title: "Turn off directory synchronization for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 09/03/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom:
  - Adm_O365
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
ms.collection:
- scotvorg
- Ent_O365
- M365-identity-device-management
- must-keep
search.appverid:
- MET150
- MOE150
- MED150
ms.assetid: ee5f861e-bd48-4267-83d1-a4ead4b4a00d
description: In this article, find information about using PowerShell to turn off directory synchronization for Microsoft 365.
---

# Turn off directory synchronization for Microsoft 365

You can use PowerShell to turn off directory synchronization and convert your synchronized users to cloud-only. However, it isn't recommended that you turn off directory synchronization as a troubleshooting step. If you need assistance with troubleshooting directory synchronization, see the [Fixing problems with directory synchronization for Microsoft 365](fix-problems-with-directory-synchronization.md) article.
  
[Contact support](https://support.office.com/article/32a17ca7-6fa0-4870-8a8d-e25ba4ccfd4b) if you need help with this procedure.

> [!NOTE]
> If your goal is to permanently disable synchronization in the tenant, you should first uninstall the synchronization client (such as Connect Sync or Cloud Sync).
> Disabling synchronization before uninstalling the sync client might result in the Entra Id Portal showing directory synchronization as **disabled**, but optional features such as Password Hash Synchronization show as **enabled**. Although this should not cause any issues, and the optional feature would not work when directory synchronization is disabled, it may lead to an unexpected status in the Portal.
  
## Turn off directory synchronization

To turn off Directory synchronization:
  
1. First, install the required software and connect to your Microsoft 365 subscription. For instructions, see [Connect with the Microsoft Graph PowerShell module for Windows PowerShell](/microsoft-365/enterprise/connect-to-microsoft-365-powershell#connect-with-microsoft-graph-powershell).

2. Use **Update-MgBetaOrganization** to disable directory synchronization:

  ```powershell
    # Install v1.0 and beta Microsoft Graph PowerShell modules 
    Install-Module Microsoft.Graph -Force
    Install-Module Microsoft.Graph.Beta -AllowClobber -Force 
    
    # Connect With Hybrid Identity Administrator Account
    Connect-MgGraph -scopes "Organization.ReadWrite.All,Directory.ReadWrite.All" 
    
    # Verify the current status of the DirSync Type
    Get-MgOrganization | Select OnPremisesSyncEnabled 
    
    # Store the Tenant ID in a variable named organizationId
    $organizationId = (Get-MgOrganization).Id 
    
    # Store the False value for the DirSyncEnabled Attribute
    $params = @{
    	onPremisesSyncEnabled = $false
    }
    
    # Perform the update
    Update-MgOrganization -OrganizationId $organizationId -BodyParameter $params 
    
    # Check that the command worked
    Get-MgOrganization | Select OnPremisesSyncEnabled
  ```

> [!Note]
> If you use this command, you must wait 72 hours before you can turn directory synchronization back on.
> This process will clear the following on-premises properties:
>   - DnsDomainName
>   - NetBiosName
>   - OnPremisesDistinguishedName
>   - OnPremisesSamAccountName
>   - OnpremisesUserPrincipalName
