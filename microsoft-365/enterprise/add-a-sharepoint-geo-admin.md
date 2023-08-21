---
title: "Add or remove a geo administrator"
ms.reviewer: adwood
ms.date: 08/10/2020
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.collection: SPO_Content
ms.localizationpriority: medium
f1.keywords:
- NOCSH
description: Need to configure separate administrators for each geo location? Learn how to add or remove a geo administrator in Microsoft 365 Multi-Geo.
ms.custom:
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
---

# Add or remove a _Geography_ administrator in Microsoft 365 Multi-Geo

You can configure separate administrators for each _Geography_ location that you have in your _Tenant_. These administrators will have access to the SharePoint Online and OneDrive settings that are specific to their _Geography_ location.

Some services - such as the term store - are administered from the _Primary Provisioned Geography_ location and replicated to _Satellite Geography_ locations. The _Geography_ admin for the _Primary Provisioned Geography_ location has access to these, whereas _Geography_ admins for _Satellite Geography_ locations don't.

Global administrators and SharePoint Online administrators continue to have access to settings in the _Primary Provisioned Geography_ location and all _Satellite Geography_ locations.

## Configuring _Geography_ administrators

Configuring _Geography_ admins requires SharePoint Online PowerShell module.

Use [Connect-SPOService](/powershell/module/sharepoint-online/Connect-SPOService) to connect to the admin center of the _Geography_ location where you want to add the _Geography_ admin. (For example, Connect-SPOService  https://ContosoEUR-admin.sharepoint.com.)

To view the existing _Geography_ admins of a location, run `Get-SPOGeoAdministrator`

## Adding a user as a _Geography_ admin

To add a user as a _Geography_ admin, run `Add-SPOGeoAdministrator -UserPrincipalName <UPN>`

To remove a user as a _Geography_ Admin of a location, run  `Remove-SPOGeoAdministrator -UserPrincipalName <UPN>`

## Adding a group as a _Geography_ admin

You can add a security group or a mail-enabled security group as a _Geography_ admin. (Distribution groups and Microsoft 365 Groups are not supported.)

To add a group as a _Geography_ administrator, run `Add-SPOGeoAdministrator -GroupAlias <alias>`

To remove a group as a _Geography_ administrator, run `Remove-SPOGeoAdministrator -GroupAlias <alias>`

Note that not all security groups have a group alias. If you want to add a security group that does not have an alias, run [Get-MsolGroup](/powershell/module/msonline/get-msolgroup) to retrieve a list of groups, find your security group's ObjectID, and then run:

`Add-SPOGeoAdministrator -ObjectID <ObjectID>`

To remove a group by using the ObjectID, run `Remove-SPOGeoAdministrator -ObjectID <ObjectID>`

## Related topics

[Add-SPOGeoAdministrator](/powershell/module/sharepoint-online/add-spogeoadministrator)

[Get-SPOGeoAdministrator](/powershell/module/sharepoint-online/get-spogeoadministrator)

[Remove-SPOGeoAdministrator](/powershell/module/sharepoint-online/remove-spogeoadministrator)

[Set an alias (MailNickName) for a security group](/powershell/module/azuread/set-azureadgroup)
