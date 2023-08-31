---
title: Set up and manage taxonomy tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: shrganguly
ms.date: 08/31/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: admindeeplinkMAC, setup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and configure taxonomy tagging in Microsoft Syntex.
---

# Set up and manage taxonomy tagging in Microsoft Syntex

The taxonomy tagging service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use taxonomy tagging in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Taxonomy tagging in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up taxonomy tagging in Syntex.  

## Set up taxonomy tagging

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), taxonomy tagging will be automatically set up and enabled for all SharePoint sites.

## Manage sites

Manage which SharePoint sites users can use for taxonomy tagging.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **Taxonomy tagging**.

4. On the **Taxonomy tagging** page:

    a. Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, select **No SharePoint libraries** or **Libraries in selected SharePoint sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
