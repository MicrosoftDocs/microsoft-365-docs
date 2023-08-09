---
title: "Prevent guests from being added to a specific group"
ms.reviewer: rahulnayak
ms.date: 08/12/2020
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: "Learn how to prevent guests from being added to a specific group"
---

# Prevent guests from being added to a specific Microsoft 365 group or Microsoft Teams team

If you want to allow guest access to most groups and teams, but have somewhere you want to prevent guest access, you can block guest access for individual groups and teams. (Blocking guest access to a team is done by blocking guest access to the associated group.) This prevents new guests from being added but does not remove guests that are already in the group or team.

If you use sensitivity labels in your organization, we recommend using them to control guest access on a per-group basis. For information about how to do this, [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md). This is the recommended approach.

## Change group settings using Microsoft PowerShell

You can also prevent the addition of new guests to individual groups by using PowerShell. (Remember that the team's associated SharePoint site has [separate guest sharing controls](/sharepoint/change-external-sharing-site).)

You must use the preview version of [Azure Active Directory PowerShell for Graph](/powershell/azure/active-directory/install-adv2) (module name **AzureADPreview**) to change the group-level guest access setting:

- If you haven't installed any version of the Azure AD PowerShell module before, see [Installing the Azure AD Module](/powershell/azure/active-directory/install-adv2?preserve-view=true&view=azureadps-2.0-preview) and follow the instructions to install the public preview release.

- If you have the 2.0 general availability version of the Azure AD PowerShell module (AzureAD) installed, you must uninstall it by running `Uninstall-Module AzureAD` in your PowerShell session, and then install the preview version by running `Install-Module AzureADPreview`.

- If you have already installed the preview version, run `Install-Module AzureADPreview` to make sure it's the latest version of this module.

> [!NOTE]
> You must have global admin rights to run these commands. 

Run the following script, changing *\<GroupName\>* to the name of the group where you want to block guest access.

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

If you wish to toggle the setting back to allow guest access to a particular group, run the following script, changing ```<GroupName>``` to the name of the group where you want to allow guest access.

```PowerShell
$GroupName = "<GroupName>"

Connect-AzureAD

$template = Get-AzureADDirectorySettingTemplate | ? {$_.displayname -eq "group.unified.guest"}
$settingsCopy = $template.CreateDirectorySetting()
$settingsCopy["AllowToAddGuests"]=$True
$groupID= (Get-AzureADGroup -SearchString $GroupName).ObjectId
$id = (get-AzureADObjectSetting -TargetType groups -TargetObjectId $groupID).id
Set-AzureADObjectSetting -TargetType Groups -TargetObjectId $groupID -DirectorySetting $settingsCopy -id $id
```

## Allow or block guest access based on their domain

You can allow or block guests who are using a specific domain. For example, if your business (Contoso) has a partnership with another business (Fabrikam), you can add Fabrikam to your allowlist so your users can add those guests to their groups.

For more information, see [Allow or block invitations to B2B users from specific organizations](/azure/active-directory/b2b/allow-deny-list).

## Add guests to the global address list

By default, guests aren't visible in the Exchange Global Address List. Use the steps listed below to make a guest visible in the global address list.

Find the guest's ObjectID by running:

```PowerShell
get-AzureADUser -all $true | ?{$_.CreationType -eq "Invitation"}
```

Then run the following using the appropriate values for ObjectID, GivenName, Surname, DisplayName, and TelephoneNumber.

```PowerShell
Set-AzureADUser -ObjectId cfcbd1a0-ed18-4210-9b9d-cf0ba93cf6b2 -ShowInAddressList $true -GivenName 'Megan' -Surname 'Bowen' -DisplayName 'Megan Bowen' -TelephoneNumber '555-555-5555'
```

## Related topics

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Manage Group membership in the Microsoft 365 admin center](../admin/create-groups/add-or-remove-members-from-groups.md)
  
[Azure Active Directory access reviews](/azure/active-directory/active-directory-azure-ad-controls-perform-access-review)

[Set-AzureADUser](/powershell/module/azuread/set-azureaduser)
