---
title: "SaaS linked apps"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: dansimp
ms.date: 08/26/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_TOC
- operations-pod
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "Gives an overview of software as a service (SaaS) linked apps."
---

# SaaS linked apps

The Microsoft 365 admin center gives you the flexibility to deploy single store apps, custom business line of apps, and bundled apps - also called **SaaS linked apps** - from a single location. We invited our independent software vendor (ISV) partners to link their SaaS offer with related free apps, such as Teams apps, Office add-ins, and SharePoint Framework solutions. For more information on how partners create these apps, see [How to plan a SaaS offer for the commercial marketplace](https://go.microsoft.com/fwlink/?linkid=2158277).

We help our admins discover these linked apps with the SaaS offer and manage them all at once from the integrated apps portal. The UX on the integrated apps portal allows the admin to apply the same gesture across all the apps at once.

An admin can choose not to deploy an app that is linked to an SaaS offer. In the integrated apps portal, admins then find the status of **More apps available** in the Deployed Apps list view. This status is to inform the admins that there are more integrations from the ISVs that aren't deployed.

## Unsupported scenarios

There are some scenarios when SaaS linked apps can't be managed from the integrated apps portal. You aren't able to deploy a single store add-in from the integrated apps portal for the following scenarios:

- The same add-in is linked to more than one SaaS offer.
- The SaaS offer is linked to add-ins, but it doesn't integrate with Microsoft Graph and no Microsoft Entra App ID is provided.
- The SaaS offer is linked to add-ins, but Microsoft Entra App ID provided for Microsoft Graph integration is shared across multiple SaaS offers.
