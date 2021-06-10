---
title: "Additional information for Cloud Solution Providers"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/01/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
description: "Summary: Additional information for Cloud Solution Providers relevant to the migration from Microsoft Cloud Deutschland."
---

# Additional information for Cloud Solution Providers

Cloud Solution Providers (CSPs) supporting customers may need to take additional steps during the migration from Microsoft Cloud Deutschland to the new German datacenter region.

## Missing subscriptions in Azure

After [the subscription and license transition (phase 3)](ms-cloud-germany-transition-phases.md#Phase-9-&-10:-Azure-AD-Finalization) has been completed, Cloud Solution Providers may not have access to the Azure subscription anymore.

To recover access, follow these steps to [elevate access to manage all Azure subscriptions and management groups](https://docs.microsoft.com/en-us/azure/role-based-access-control/elevate-access-global-admin).