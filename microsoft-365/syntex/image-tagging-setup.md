---
title: Set up and manage image tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: shrganguly
ms.date: 07/27/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: admindeeplinkMAC
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set and configure image tagging in Microsoft Syntex.
---

# Set up and manage image tagging in Microsoft Syntex

The image tagging service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use image tagging in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Image tagging in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up image tagging in Syntex.  

## Set up image tagging

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), image tagging will be automatically set up and enabled for all SharePoint sites.

Although you enable pay-as-you-go billing for image tagging, you'll be charged only when [image tagging is enabled on a document library](image-tagging.md).

## Manage sites

By default, image tagging is available for libraries on all SharePoint sites. To turn off image tagging on all sites, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **Image tagging**.

4. On the **Image tagging** page, select **No libraries**, and then select **Save**.

