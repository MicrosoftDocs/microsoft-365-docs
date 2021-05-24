---
title: "Add or remove a geo administrator"
ms.reviewer: adwood
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection: SPO_Content
localization_priority: Normal
f1.keywords:
- NOCSH
description: Need to configure separate administrators for each geo location? Learn how to add or remove a geo administrator in Microsoft 365 Multi-Geo.
ms.custom: seo-marvel-apr2020
---

# Add or remove a geo administrator in Microsoft 365 Multi-Geo

You can configure separate administrators for each geo location that you have in your tenant. These administrators will have access to the SharePoint Online and OneDrive settings that are specific to their geo location.

Some services - such as the term store - are administered from the central location and replicated to satellite locations. The geo admin for the central location has access to these, whereas geo admins for satellite locations don't.

Global administrators and SharePoint Online administrators continue to have access to settings in the central location and all satellite locations.

## Configuring geo administrators

Configuring geo admins requires SharePoint Online PowerShell module.

Use [Connect-SPOService](/powershell/module/sharepoint-online/Connect-SPOService) to connect to the admin center of the geo location where you want to add the geo admin. (For example, Connect-SPOService  https://ContosoEUR-admin.sharepoint.com.)

To view the existing geo admins of a location, run `Get-SPOGeoAdministrator`

### Adding a user as a geo admin

To add a user as a geo admin, run `Add-SPOGeoAdministrator -UserPrincipalName <UPN>`

To remove a user as a Geo Admin of a location, run  `Remove-SPOGeoAdministrator -UserPrincipalName <UPN>`

### Adding a group as a geo admin

You can add a security group or a mail-enabled security group as a geo admin. (Distribution groups and Microsoft 365 Groups are not supported.)

To add a group as a geo administrator, run `Add-SPOGeoAdministrator -GroupAlias <alias>`

To remove a group as a geo administrator, run `Remove-SPOGeoAdministrator -GroupAlias <alias>`

Note that not all security groups have a group alias. If you want to add a security group that does not have an alias, run [Get-MsolGroup](/powershell/module/msonline/get-msolgroup) to retrieve a list of groups, find your security group's ObjectID, and then run:

`Add-SPOGeoAdministrator -ObjectID <ObjectID>`

To remove a group by using the ObjectID, run `Remove-SPOGeoAdministrator -ObjectID <ObjectID>`

## Related topics

[Add-SPOGeoAdministrator](/powershell/module/sharepoint-online/add-spogeoadministrator)

[Get-SPOGeoAdministrator](/powershell/module/sharepoint-online/get-spogeoadministrator)

[Remove-SPOGeoAdministrator](/powershell/module/sharepoint-online/remove-spogeoadministrator)

[Set an alias (MailNickName) for a security group](/powershell/module/azuread/set-azureadgroup)