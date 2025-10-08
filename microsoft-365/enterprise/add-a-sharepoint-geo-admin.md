---
title: "Add or remove a geo administrator"
ms.reviewer: anfra
ms.date: 06/19/2025
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.collection: 
- SPO_Content
- must-keep
ms.localizationpriority: medium
f1.keywords:
- NOCSH
description: Need to configure separate administrators for each geo location? Learn how to add or remove a geo administrator in Microsoft 365 Multi-Geo.
ms.custom:
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref, azure-ad-ref-level-one-done 
---

# Add or remove a _Geography_ administrator in Microsoft 365 Multi-Geo

You can configure separate administrators for each _Geography_ location that you have in your _Tenant_. These administrators will have access to the SharePoint and OneDrive settings that are specific to their _Geography_ location.

Some services - such as the term store - are administered from the _Primary Provisioned Geography_ location and replicated to _Satellite Geography_ locations. The _Geography_ admin for the _Primary Provisioned Geography_ location has access to these, whereas _Geography_ admins for _Satellite Geography_ locations don't.

Global administrators and SharePoint administrators continue to have access to settings in the _Primary Provisioned Geography_ location and all _Satellite Geography_ locations.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

## Configuring _Geography_ administrators

Configuring _Geography_ admins requires the SharePoint PowerShell module.

Use [Connect-SPOService](/powershell/module/microsoft.online.sharepoint.powershell/connect-sposervice) to connect to the admin center of the _Geography_ location where you want to add the _Geography_ admin. (For example, Connect-SPOService  https://ContosoEUR-admin.sharepoint.com.)

To view the existing _Geography_ admins of a location, run `Get-SPOGeoAdministrator`

## Adding a user as a _Geography_ admin

To add a user as a _Geography_ admin, run `Add-SPOGeoAdministrator -UserPrincipalName <UPN>`

To remove a user as a _Geography_ Admin of a location, run  `Remove-SPOGeoAdministrator -UserPrincipalName <UPN>`

## Adding a group as a _Geography_ admin

You can add a security group or a mail-enabled security group as a _Geography_ admin. (Distribution groups and Microsoft 365 Groups aren't supported.)

To add a group as a _Geography_ administrator, run `Add-SPOGeoAdministrator -GroupAlias <alias>`

To remove a group as a _Geography_ administrator, run `Remove-SPOGeoAdministrator -GroupAlias <alias>`

Note that not all security groups have a group alias. If you want to add a security group that doesn't have an alias, run [Get-MgGroup](/powershell/module/microsoft.graph.groups/get-mggroup) to retrieve a list of groups, find your security group's ObjectID, and then run:

`Add-SPOGeoAdministrator -ObjectID <ObjectID>`

To remove a group by using the ObjectID, run `Remove-SPOGeoAdministrator -ObjectID <ObjectID>`

## Related articles

[Add-SPOGeoAdministrator](/powershell/module/microsoft.online.sharepoint.powershell/add-spogeoadministrator)

[Get-SPOGeoAdministrator](/powershell/module/microsoft.online.sharepoint.powershell/get-spogeoadministrator)

[Remove-SPOGeoAdministrator](/powershell/module/microsoft.online.sharepoint.powershell/remove-spogeoadministrator)

[Set an alias (MailNickName) for a security group](/powershell/module/microsoft.graph.groups/update-mggroup)
