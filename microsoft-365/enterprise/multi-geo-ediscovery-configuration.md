---
title: "Configure Microsoft 365 Multi-Geo eDiscovery"
ms.reviewer:
ms.date: 08/01/2024
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: multi-tenant
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.localizationpriority: medium
ms.collection: 
- Strat_SP_gtc
- must-keep
description: Learn how to use the Region parameter to configure eDiscovery for use in satellite locations in Microsoft 365 Multi-Geo.
---

# Microsoft 365 Multi-Geo eDiscovery configuration

[eDiscovery (Premium) capabilities](../compliance/overview-ediscovery-20.md) allow a Multi-Geo eDiscovery administrator to search all of the _Geographies_ without needing to utilize a "Region" security filter. Data is exported to the Azure instance of the _Primary Provisioned Geography_ location of the multi-geo _Tenant_.

Without eDiscovery (Premium) capabilities, an eDiscovery manager or administrator of a Multi-Geo _Tenant_ will be able to conduct eDiscovery only in the _Primary Provisioned Geography_ location of that _Tenant_. To support the ability to conduct eDiscovery for _Satellite Geography_ locations, a new compliance security filter parameter named "Region" is available via PowerShell. This parameter can be used by _Tenants_ whose _Primary Provisioned Geography_ location is in North America, Europe, or Asia Pacific. eDiscovery (Premium) is recommended for _Tenants_ whose _Primary Provisioned Geography_ location is not in North America, Europe, or Asia Pacific and who need to perform eDiscovery across _Satellite Geography_ locations.

A member of the **Organization Management** role group or a user with the **Role Management** role must assign eDiscovery Manager permissions in the Microsoft Purview portal to allow others to perform eDiscovery tasks and assign a "Region" parameter in their applicable Compliance Security Filter to specify the _Geography_ for conducting eDiscovery as _Satellite Geography_ location. Otherwise, no eDiscovery activities will be carried out for the _Satellite Geography_ location. Only one "Region" security filter per user is supported.

See [Assign eDiscovery permissions in the compliance portal](/purview/ediscovery-assign-permissions#before-you-assign-permissions) for more information. To configure the Compliance Security Filter for a Region, see [Configure Office 365 Multi-Geo eDiscovery](multi-geo-ediscovery-configuration.md).

When the eDiscovery Manager or Administrator role is set for a particular _Satellite Geography_ location, the eDiscovery Manager or Administrator will only be able to perform eDiscovery search actions against the SharePoint sites and OneDrive sites located in that _Satellite Geography_ location. If an eDiscovery Manager or Administrator attempts to search SharePoint or OneDrive sites outside the specified _Satellite Geography_ location, no results will be returned. Also, when the eDiscovery Manager or Administrator for a _Satellite Geography_ location triggers an export, data is exported to the Azure instance of that region. This helps organizations stay in compliance by not allowing content to be exported across controlled borders.

> [!NOTE]
> If it's necessary for an eDiscovery Manager to search across multiple SharePoint _Satellite Geography_ locations, another user account will need to be created for the eDiscovery Manager which specifies the alternate _Satellite Geography_ location where the OneDrive or SharePoint sites are located.

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

To set the Compliance Security Filter for a Region:

1. [Connect to Microsoft 365 Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell)

2. Use the following syntax:

   ```powershell
   New-ComplianceSecurityFilter -Action All -FilterName <TheNameYouWantToAssign> -Region <RegionValue> -Users <UserPrincipalName>
   ```

   For example:

   ```powershell
   New-ComplianceSecurityFilter -Action All -FilterName "NAM eDiscovery Managers" -Region NAM -Users adwood@contoso.onmicrosoft.com
   ```

See the [New-ComplianceSecurityFilter](/powershell/module/exchange/new-compliancesecurityfilter) article for additional parameters and syntax.
