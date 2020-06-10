---
title: "Delegated administration FAQ"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: d6a87ce8-2c22-433a-b430-5eab14f6afdc
ms.custom:
- seo-marvel-apr2020
description: "This topic provides FAQs and answers for Microsoft partners and resellers who want to perform delegated Microsoft 365 administration tasks."
---

# Delegated administration FAQ

This topic provides frequently asked questions and answers for Microsoft partners and resellers who want to perform delegated administration tasks, including the ability to manage Exchange Online Protection (EOP) for other tenants (companies).

## I'm a reseller and I need to manage my customer's tenants; how does this work?

If you are a Microsoft partner or reseller, and you've signed up to be a Microsoft advisor, you can request permission to administer their tenant within the admin center. This is known as delegated administration, and it allows you to manage their Microsoft 365 tenant (including EOP settings) as if you were an administrator within their organization. The steps for performing delegated administration are as follows:

1. Sign up to be a [Microsoft Office 365 Advisor](https://aka.ms/cloudbenefits).

2. Sign up for delegated administration. Before you can start administering a customer's account, they must authorize you as a delegated administrator. To obtain their approval, you first [send them an offer for delegated administration](https://support.microsoft.com/office/26530dc0-ebba-415b-86b1-b55bc06b073e). (You can also offer delegated administration to your customer at a later time.)

3. Create the delegated admin account using the steps in [Add, change, or delete a subscription advisor partner](https://docs.microsoft.com/microsoft-365/admin/misc/add-partner).

Visit [Partners: Build your business and administer partner subscription](https://support.microsoft.com/office/30dd1681-47e0-4cbc-abfe-a222cd111319) for more information about how to set up delegated administration.

## I'm a customer, not a reseller, how can set up delegated administrator for my sub-tenants?

Delegated administration is only available for resellers and partners at this time. However, we've provided a sample Windows PowerShell script that will help you apply policies to your sub-tenants (companies). For more information, see [Sample script for applying EOP settings to multiple tenants](sample-script-for-applying-eop-settings-to-multiple-tenants.md).

## Can I prevent my sub-tenant admin from modifying my policy?

Microsoft 365 does not currently have this capability.

## Can I get consolidated reporting across all of my sub-tenants?

Consolidated reporting across the companies you manage is not available for the Microsoft 365 admin center reports at this time. However, you can do this by using [Microsoft Graph](https://docs.microsoft.com/graph/overview).
