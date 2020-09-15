---
title: "Block guest users from a specific group"
ms.reviewer: arvaradh
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-collaboration
ms.custom: 
- M365solutions
f1.keywords: NOCSH
description: "Block guest users from a specific group"
---

# Block guest users from a specific group

If you want to allow guest access to most groups, but have some where you want to prevent guest access, you can block guest access for individual groups.

If you use sensitivity labels in your organization, we recommend using them to control guest access on a per-group basis. For information about how to do this, [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels-teams-groups-sites). This is the recommended approach.

You can also block guest access to individual groups by using Microsoft PowerShell.

You must use the preview version of [Azure Active Directory PowerShell for Graph](https://docs.microsoft.com/powershell/azure/active-directory/install-adv2) (module name **AzureADPreview**) to change the group-level guest access setting:

- If you haven't installed any version of the Azure AD PowerShell module before, see [Installing the Azure AD Module](https://docs.microsoft.com/powershell/azure/active-directory/install-adv2?view=azureadps-2.0-preview#installing-the-azure-ad-module) and follow the instructions to install the public preview release.

- If you have the 2.0 general availability version of the Azure AD PowerShell module (AzureAD) installed, you must uninstall it by running `Uninstall-Module AzureAD` in your PowerShell session, and then install the preview version by running `Install-Module AzureADPreview`.

- If you have already installed the preview version, run `Install-Module AzureADPreview` to make sure it's the latest version of this module.

> [!NOTE]
> You must have global admin rights to run these commands. 

Run the following script, changing */<GroupName/>* to the name of the group where you want to block guest access.

```PowerShell
$GroupName = "<GroupName>"

Connect-AzureAD

$template = Get-AzureADDirectorySettingTemplate | ? {$_.displayname -eq "group.unified.guest"}
$settingsCopy = $template.CreateDirectorySetting()
$settingsCopy["AllowToAddGuests"]=$False
$groupID= (Get-AzureADGroup -SearchString $GroupName).ObjectId
New-AzureADObjectSetting -TargetType Groups -TargetObjectId $groupID -DirectorySetting $settingsCopy
```

To verify your settings, run this command:

```PowerShell
Get-AzureADObjectSetting -TargetObjectId $groupID -TargetType Groups | fl Values
```

The verification looks like this:
    
![Screenshot of PowerShell window showing that guest group access has been set to false.](../media/09ebfb4f-859f-44c3-a29e-63a59fd6ef87.png)
  
## Allow or block guest access based on their domain

You can allow or block guest users who are using a specific domain. For example, if your business (Contoso) has a partnership with another business (Fabrikam), you can add Fabrikam to your Allow list so your users can add those guests to their groups.

For more information, see [Allow or block invitations to B2B users from specific organizations](https://docs.microsoft.com/azure/active-directory/b2b/allow-deny-list).

## Add guests to the global address list

By default, guests aren't visible in the Exchange Global Address List. Use the steps listed below to make a guest visible in the global address list.

Find the guest user's ObjectID by running:

```PowerShell
Get-AzureADUser -Filter "userType eq 'Guest'"
```

Then run the following using the appropriate values for ObjectID, GivenName, Surname, DisplayName, and TelephoneNumber.

```PowerShell
Set-AzureADUser -ObjectId cfcbd1a0-ed18-4210-9b9d-cf0ba93cf6b2 -ShowInAddressList $true -GivenName 'Megan' -Surname 'Bowen' -DisplayName 'Megan Bowen' -TelephoneNumber '555-555-5555'
```

## Related articles

[Manage Group membership in the Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/create-groups/add-or-remove-members-from-groups)
  
[Azure Active Directory access reviews](https://docs.microsoft.com/azure/active-directory/active-directory-azure-ad-controls-perform-access-review)

[Set-AzureADUser](https://docs.microsoft.com/powershell/module/azuread/set-azureaduser)