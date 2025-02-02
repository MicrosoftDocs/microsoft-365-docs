---
title: "Prevent guests from being added to a specific group"
ms.reviewer: rahulnayak
ms.date: 12/02/2023
author: DaniEASmith
ms.author: danismith
manager: jtremper
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
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
f1.keywords: NOCSH
recommendations: false
description: "Learn how to prevent guests from being added to a specific group"
---

# Prevent guests from being added to a specific Microsoft 365 group or Microsoft Teams team

If you want to allow guest access to most groups and teams, but have somewhere you want to prevent guest access, you can block guest access for individual groups and teams. (Blocking guest access to a team is done by blocking guest access to the associated group.) This prevents new guests from being added but does not remove guests that are already in the group or team.

If you use sensitivity labels in your organization, we recommend using them to control guest access on a per-group basis. For information about how to do this, [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md). This is the recommended approach.

## Change group settings using Microsoft Graph PowerShell

You can also prevent the addition of new guests to individual groups by using PowerShell. (Remember that the team's associated SharePoint site has [separate guest sharing controls](/sharepoint/change-external-sharing-site).)

You must use the `beta` version of [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview) to change the group-level guest access setting:

- If you haven't installed the module before, see [Installing the Microsoft Graph PowerShell module](/powershell/microsoftgraph/installation) and follow the instructions.

- If you have already installed the `beta` version, run `Update-Module Microsoft.Graph.Beta` to make sure it's the latest version of this module.

> [!NOTE]
> You must have global admin rights to run these commands. 

Run the following script, changing *\<GroupName\>* to the name of the group where you want to block guest access.

```PowerShell
Connect-MgGraph

$GroupName = "<GroupName>"
$templateId = (Get-MgBetaDirectorySettingTemplate | ? {$_.displayname -eq "group.unified.guest"}).Id
$groupID = (Get-MgBetaGroup -Filter "DisplayName eq '$GroupName'").Id

$params = @{
	templateId = "$templateId"
	values = @(
		@{
			name = "AllowToAddGuests"
			value = "false"
		}
	)
}

New-MgBetaGroupSetting -GroupId $groupID -BodyParameter $params

```

To verify your settings, run this command:

```PowerShell
(Invoke-GraphRequest -Uri https://graph.microsoft.com/beta/Groups/$groupId/settings -Method GET) | ConvertTo-Json | ConvertFrom-Json | fl Value
```

The verification looks like this:

![Screenshot of PowerShell window showing that guest group access has been set to false.](../media/09ebfb4f-859f-44c3-a29e-63a59fd6ef87.png)

If you wish to toggle the setting back to allow guest access to a particular group, run the following script, changing ```<GroupName>``` to the name of the group where you want to allow guest access.

```PowerShell
Connect-MgGraph

$GroupName = "<GroupName>"
$templateId = (Get-MgBetaDirectorySettingTemplate | ? {$_.displayname -eq "group.unified.guest"}).Id
$groupID = (Get-MgBetaGroup -Filter "DisplayName eq '$GroupName'").Id

$params = @{
	templateId = "$templateId"
	values = @(
		@{
			name = "AllowToAddGuests"
			value = "true"
		}
	)
}

New-MgBetaGroupSetting -GroupId $groupID -BodyParameter $params
```

## Allow or block guest access based on their domain

You can allow or block guests who are using a specific domain. For example, if your business (Contoso) has a partnership with another business (Fabrikam), you can add Fabrikam to your allowlist so your users can add those guests to their groups.

For more information, see [Allow or block invitations to B2B users from specific organizations](/azure/active-directory/b2b/allow-deny-list).

## Add guests to the global address list

By default, guests aren't visible in the Exchange Global Address List. Use the steps listed below to make a guest visible in the global address list.

Find the guest's ObjectID by running:

```PowerShell
Get-MgBetaUser -All | ?{$_.CreationType -eq "Invitation"}
```

Then run the following using the appropriate values for ObjectID, GivenName, Surname, DisplayName, and TelephoneNumber.

```PowerShell
Update-MgBetaUser -UserId cfcbd1a0-ed18-4210-9b9d-cf0ba93cf6b2 -ShowInAddressList -GivenName 'Megan' -Surname 'Bowen' -DisplayName 'Megan Bowen' -mobilePhone '555-555-5555'
```

## Related topics

[Collaboration governance planning recommendations](collaboration-governance-overview.md#collaboration-governance-planning-recommendations)

[Create your collaboration governance plan](collaboration-governance-first.md)

[Manage Group membership in the Microsoft 365 admin center](../admin/create-groups/add-or-remove-members-from-groups.md)
  
[Microsoft Entra access reviews](/azure/active-directory/active-directory-azure-ad-controls-perform-access-review)

[Update-MgUser](/powershell/module/microsoft.graph.users/update-mguser)
