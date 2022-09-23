---
title: "Limits in eDiscovery (Standard) case"
description: "This article describes the limits in eDiscovery (Standard) case in Microsoft 365."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
---

# Limits in eDiscovery (Standard)

The following table lists the limits for eDiscovery (Standard) cases and holds associated with a eDiscovery (Standard) case. For more information about Microsoft Purview eDiscovery (Standard), see [Overview of eDiscovery (Standard)](./get-started-core-ediscovery.md).
    
  | Description of limit | Limit |
  |:-----|:-----|
  |Maximum number of cases for an organization.  <br/> |No limit  <br/> |
  |Maximum number of case holds for an organization.  <br/> |10,000  <br/> |
  |Maximum number of mailboxes in a single case hold. This limit includes the combined total of user mailboxes, and the mailboxes associated with Microsoft 365 Groups, Microsoft Teams, and Yammer Groups.  <br/> |1,000  <br/> |
  |Maximum number of sites in a single case hold. This limit includes the combined total of OneDrive for Business sites, SharePoint sites, and the sites associated with Microsoft 365 Groups, Microsoft Teams, and Yammer Groups.  <br/> |100  <br/> |
  |Maximum number of cases displayed on the eDiscovery (Standard) home page, and the maximum number of items displayed on the Holds, Searches, and Export tabs within a case. <sup>1</sup> |1,000|

   > [!NOTE]
   > <sup>1</sup> To view a list of more than 1,000 cases, holds, searches, or exports, you can use the corresponding Office 365 Security & Compliance PowerShell cmdlets:
   > 
   > - [Get-ComplianceCase](/powershell/module/exchange/get-compliancecase)
   > - [Get-CaseHoldPolicy](/powershell/module/exchange/get-caseholdpolicy)
   > - [Get-ComplianceSearch](/powershell/module/exchange/get-compliancesearch)
   > - [Get-ComplianceSearchAction](/powershell/module/exchange/get-compliancesearchaction)

For more information about limits related to searches and exports associated with a eDiscovery (Standard) case, see [Limits for Content search and eDiscovery (Standard)](limits-for-content-search.md).