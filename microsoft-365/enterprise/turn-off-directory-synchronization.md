---
title: "Turn off directory synchronization for Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 11/30/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
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
search.appverid:
- MET150
- MOE150
- MED150
ms.assetid: ee5f861e-bd48-4267-83d1-a4ead4b4a00d
description: In this article, find information about using PowerShell to turn off directory synchronization for Microsoft 365.
---

# Turn off directory synchronization for Microsoft 365
You can use PowerShell to turn off directory synchronization and convert your synchronized users to cloud-only. However, it isn't recommended that you turn off directory synchronization as a troubleshooting step. If you need assistance with troubleshooting directory synchronization, see the [Fixing problems with directory synchronization for Microsoft 365](fix-problems-with-directory-synchronization.md) article. 
  
[Contact support](https://support.office.com/article/32a17ca7-6fa0-4870-8a8d-e25ba4ccfd4b) for business products if needed.
  
## Turn off directory synchronization  
To turn off Directory synchronization:
  
1. First, install the Microsoft Graph PowerShell SDK. For instructions, see [Install the Microsoft Graph PowerShell SDK](https://learn.microsoft.com/en-us/powershell/microsoftgraph/installation?view=graph-powershell-1.0).
    
2. Use [Update-MgBetaOrganization](https://learn.microsoft.com/en-us/powershell/module/microsoft.graph.beta.identity.directorymanagement/update-mgbetaorganization?view=graph-powershell-beta) to disable directory synchronization: 
    
  ```powershell
$OrgID = (Get-MgOrganization).id
$params = @{
	onPremisesSyncEnabled = $null
}
Update-MgBetaOrganization -OrganizationId $OrgID -BodyParameter $params
  ```

Reference: [Daniel Bradleys Blog (Microsoft MVP)](https://ourcloudnetwork.com/turn-off-directory-synchronization-with-microsoft-graph-powershell/)

>[!Note]
>If you use this command, you must wait 72 hours before you can turn directory synchronization back on.
>
