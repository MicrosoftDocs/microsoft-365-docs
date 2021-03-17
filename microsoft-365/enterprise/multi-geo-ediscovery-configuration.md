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

With [Advanced eDiscovery capabilities](https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20), a multi-geo eDiscovery manager or administrator can search all geos without needing to use a “Region” compliance security filter. In this case, data is exported to the Azure instance of the multi-geo tenant’s central location. Advanced eDiscovery is recommended for tenants whose central location is not in North America, Europe, or Asia Pacific and who need to perform eDiscovery across satellite geo locations.

Without advanced eDiscovery capabilities, a multi-geo eDiscovery manager or administrator can only conduct eDiscovery in the tenant's central location. To conduct eDiscovery for satellite locations, the eDiscovery manager or administrator must use the “Region” compliance security filter. "Region" is available via PowerShell and can only be used by tenants whose central location is in North America, Europe, or Asia Pacific. 

To conduct eDiscovery for satellite locations using the “Region” compliance security filter, the Microsoft 365 global administrator must:
- Assign the eDiscovery manager permission to allow others to conduct eDiscovery.
- Assign a "Region" parameter in the applicable Compliance Security Filter to specify which region is a satellite location for conducting eDiscovery

Otherwise, no eDiscovery will be conducted for the satellite location.

Without Advanced eDiscovery capabilities, when the eDiscovery manager or administrator role is set for a particular satellite location, the eDiscovery manager or administrator can only conduct eDiscovery for the SharePoint and OneDrive sites located in that satellite location. In this case, if an eDiscovery manager or administrator attempts to search SharePoint or OneDrive sites outside their specified satellite location, no results will be returned. Also, when the eDiscovery manager or administrator for a satellite location triggers an export, data is exported to that region's Azure instance. This helps organizations remain compliant by not allowing content to be exported across controlled borders.

> [!NOTE]
> If it's necessary for an eDiscovery manager or administrator to search across multiple satellite locations, you will need to create another user account for the eDiscovery manager or administrator, which specifies the alternate satellite location where the OneDrive or SharePoint sites are located.

[!INCLUDE [Microsoft 365 Multi-Geo locations](../includes/microsoft-365-multi-geo-locations.md)]

To set the Compliance Security Filter for a Region:

1. [Connect to Microsoft 365 Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell)

2. Use the following syntax:

   ```powershell
   New-ComplianceSecurityFilter -Action All -FilterName <TheNameYouWantToAssign> -Region <RegionValue> -Users <UserPrincipalName>
   ```

   For example:

   ```powershell
   New-ComplianceSecurityFilter -Action All -FilterName "NAM eDiscovery Managers" -Region NAM -Users adwood@contoso.onmicrosoft.com
   ```

See the [New-ComplianceSecurityFilter](https://docs.microsoft.com/powershell/module/exchange/new-compliancesecurityfilter) article for additional parameters and syntax.
