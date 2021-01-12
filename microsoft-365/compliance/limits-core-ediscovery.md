---
title: "Limits in core eDiscovery case"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "This article describes the limits in core eDiscovery case in Microsoft 365."
---

# Limits in Core eDiscovery

The following table lists the limits for core eDiscovery cases and holds associated with a core eDiscovery case. For more information about Core eDiscovery, see [Overview of Core eDiscovery](ediscovery-cases.md).
    
  | Description of limit | Limit |
  |:-----|:-----|
  |Maximum number of cases for an organization  <br/> |No limit  <br/> |
  |Maximum number of case holds for an organization  <br/> |10,000  <br/> |
  |Maximum number of mailboxes in a single case hold  <br/> |1,000  <br/> |
  |Maximum number of SharePoint and OneDrive for Business sites in a single case hold  <br/> |100  <br/> |
  |Maximum number of cases displayed on the core eDiscovery home page, and the maximum number of items displayed on the Holds, Searches, and Export tabs within a case. <sup>1</sup> |1,000|
  |||

   > [!NOTE]
   > <sup>1</sup> To view a list of more than 1,000 cases, holds, searches, or exports, you can use the corresponding Office 365 Security & Compliance PowerShell cmdlets:
   > 
   > - [Get-ComplianceCase](https://docs.microsoft.com/powershell/module/exchange/get-compliancecase)
   > - [Get-CaseHoldPolicy](https://docs.microsoft.com/powershell/module/exchange/get-caseholdpolicy)
   > - [Get-ComplianceSearch](https://docs.microsoft.com/powershell/module/exchange/get-compliancesearch)
   > - [Get-ComplianceSearchAction](https://docs.microsoft.com/powershell/module/exchange/get-compliancesearchaction)

For more information about limits related to content searches and exports associated with a Core eDiscovery case, see [Limits for Content Search and Core eDiscovery](limits-for-content-search.md).