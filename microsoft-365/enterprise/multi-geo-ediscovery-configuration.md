---
title: "Configure Microsoft 365 Multi-Geo eDiscovery"
ms.reviewer: adwood
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: o365-solutions
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
localization_priority: Normal
ms.collection: Strat_SP_gtc
description: Learn how to use the Region parameter to configure eDiscovery for use in satellite locations in Microsoft 365 Multi-Geo.
---

# Microsoft 365 Multi-Geo eDiscovery configuration

[Advanced eDiscovery capabilities](../compliance/overview-ediscovery-20.md) allow a multi-geo eDiscovery administrator to search all of the geos without needing to utilize a "Region" security filter. Data is exported to the Azure instance of the central location of the multi-geo tenant. 

Without advanced eDiscovery capabilities, an eDiscovery manager or administrator of a multi-geo tenant will be able to conduct eDiscovery only in the central location of that tenant. To support the ability to conduct eDiscovery for satellite locations, a new compliance security filter parameter named "Region" is available via PowerShell. This parameter can be used by tenants whose central location is in North America, Europe, or Asia Pacific. Advanced eDiscovery is recommended for tenants whose central location is not in North America, Europe, or Asia Pacific and who need to perform eDiscovery across satellite geo locations. 

The Microsoft 365 global administrator must assign eDiscovery Manager permissions to allow others to perform eDiscovery and assign a "Region" parameter in their applicable Compliance Security Filter to specify the region for conducting eDiscovery as satellite location, otherwise no eDiscovery will be carried out for the satellite location.

When the eDiscovery Manager or Administrator role is set for a particular satellite location, the eDiscovery Manager or Administrator will only be able to perform eDiscovery search actions against the SharePoint sites and OneDrive sites located in that satellite location. If an eDiscovery Manager or Administrator attempts to search SharePoint or OneDrive sites outside the specified satellite location, no results will be returned. Also, when the eDiscovery Manager or Administrator for a satellite location triggers an export, data is exported to the Azure instance of that region. This helps organizations stay in compliance by not allowing content to be exported across controlled borders.

> [!NOTE]
> If it's necessary for an eDiscovery Manager to search across multiple SharePoint satellite locations, another user account will need to be created for the eDiscovery Manager which specifies the alternate satellite location where the OneDrive or SharePoint sites are located.

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

To set the Compliance Security Filter for a Region:

1. [Connect to Microsoft 365 Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell)

2. Use the following syntax:

   ```powershell
   New-ComplianceSecurityFilter -Action All -FilterName <TheNameYouWantToAssign> -Region <RegionValue> -Users <UserPrincipalName>
   ```

   For example:

   ```powershell
   New-ComplianceSecurityFilter -Action All -FilterName "NAM eDiscovery Managers" -Region NAM -Users adwood@contoso.onmicrosoft.com
   ```

See the [New-ComplianceSecurityFilter](/powershell/module/exchange/new-compliancesecurityfilter) article for additional parameters and syntax.