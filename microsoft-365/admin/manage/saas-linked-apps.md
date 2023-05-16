---
title: "SaaS linked apps"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 05/12/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: ""
---

# SaaS linked apps

The Microsoft 365 admin center gives you the flexibility to deploy single store apps, custom business line of apps and bundled apps - also called **SaaS linked apps** - from a single location. We have asked our ISV partners to link their SaaS offer with related free apps. such as Teams apps, Office add-ins, and SharePoint Framework solutions. For more information on how partners create these apps, see [How to plan a SaaS offer for the commercial marketplace](https://go.microsoft.com/fwlink/?linkid=2158277).

We help our admins discover these linked apps with the SaaS offer and manage them all at once from Integrated apps. The UX on the Integrated Apps portal allows the admin to apply the same gesture across all the apps at once.

An admin can choose not to deploy an app which is linked to an SaaS offer. On returning to Integrated apps, admins will find the status of **More apps available** in the Deployed Apps list view. This is to inform the admins that there are more integrations from the ISVs that haven’t been deployed yet.

There are the scenarios when SaaS linked apps cannot be managed from Integrated Apps.

## Unsupported scenarios

You won't be able to deploy a single store add-in from the Integrated apps portal for the following scenarios:

- The same add-in is linked to more than one SaaS offer.
- The SaaS offer is linked to add-ins, but it does not integrate with Microsoft Graph and no AAD App ID is provided.
- The SaaS offer is linked to add-ins, but AAD App ID provided for Microsoft Graph integration is shared across multiple SaaS offers.
