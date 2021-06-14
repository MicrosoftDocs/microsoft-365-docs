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

Cloud Solution Providers (CSPs) supporting customers  need to take additional steps during the migration from Microsoft Cloud Deutschland to the new German datacenter region.

## Partner tenant migration

Partner Microsoft Cloud Deutschland tenants won't be migrated. Instead, a new Office 365 services tenant will be created for each Microsoft Partner in the new German datacenter region.

CSP customer tenants will be migrated to the new German datacenter region and be linked to the new Office 365 services tenant of the same partner. After customer transition, the partner can manage the customer using the new Office 365 services tenant in the German datacenter region.

## Missing subscriptions in Azure

After [the subscription and license transition (phase 3)](ms-cloud-germany-transition-phases.md#phase-9--10-azure-ad-finalization) has been completed, Cloud Solution Providers will not have access to the Azure subscription anymore.

To recover access, follow these steps to [elevate access to manage all Azure subscriptions and management groups](/azure/role-based-access-control/elevate-access-global-admin).
