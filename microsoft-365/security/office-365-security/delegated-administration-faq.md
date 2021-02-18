---
title: Delegated administration FAQ
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: troubleshooting

localization_priority: Normal
ms.assetid: d6a87ce8-2c22-433a-b430-5eab14f6afdc
ms.custom: 
  - seo-marvel-apr2020
description: Admins can view frequently asked questions and answers about delegated administration tasks in Microsoft 365 for Microsoft partners and resellers.
ms.technology: mdo
ms.prod: m365-security
---

# Delegated administration FAQ

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


This article provides frequently asked questions and answers about delegated administration tasks in Microsoft 365 for Microsoft partners and resellers. Delegated administration includes the ability to manage Exchange Online Protection (EOP) settings for other tenants (companies).

## I'm a reseller and I need to manage my customer tenants. How does this work?

If you're a Microsoft partner or reseller, and you've signed up to be a Microsoft advisor, you can request _delegated administration_ capabilities in your customer's Microsoft 365 organization.

Delegated administration allows you to manage Microsoft 365  (including EOP settings) as if you were an admin within that organization. The steps to configure delegated administration are described in the following list:

1. Sign up to be a [Microsoft Office 365 Advisor](https://aka.ms/cloudbenefits).

2. Sign up for delegated administration. Before you can start administering a customer's tenant, they must authorize you as a delegated administrator. To obtain their approval, you first [send them an offer for delegated administration](https://support.microsoft.com/office/26530dc0-ebba-415b-86b1-b55bc06b073e). You can also offer delegated administration to your customer at a later time.

3. Create the delegated admin account using the steps in [Add, change, or delete a subscription advisor partner](../../admin/misc/add-partner.md).

Visit [Partners: Build your business and administer partner subscription](https://support.microsoft.com/office/30dd1681-47e0-4cbc-abfe-a222cd111319) for more information about how to set up delegated administration.

## I'm a customer, not a reseller. How can set up delegated administrator for my subtenants?

Delegated administration is only available for resellers and partners. However, there's a sample PowerShell script that will help you apply policies to your subtenants (companies). For more information, see [Sample script for applying EOP settings to multiple tenants](sample-script-for-applying-eop-settings-to-multiple-tenants.md).

## Can I prevent my subtenant admin from modifying my policy?

No. Microsoft 365 does not currently have this capability.

## Can I get consolidated reporting across all of my subtenants?

Consolidated reporting across the companies you manage isn't available in Microsoft 365 admin center reports. However, you can get reports by using [Microsoft Graph](https://docs.microsoft.com/graph/overview).
