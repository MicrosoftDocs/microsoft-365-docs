---
title: Set up and manage content assembly in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: anrasto, shrganguly
ms.date: 09/26/2024
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn to create set up and manage content assembly in Microsoft Syntex.
---

# Set up and manage content assembly in Microsoft Syntex

The content assembly service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use content assembly in Microsoft Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Content assembly in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up content assembly.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up content assembly

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), content assembly will be automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, content assembly is available for libraries on all SharePoint sites. To turn off content assembly on all sites, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Files and content**, select **Automate content processes with Syntex**.

3. On the **Automate content processes with Syntex** page, select **Go to Syntex settings**.

4. On the Syntex page, in the **Document & image services** section, select **Content assembly**.

5. On the **Content assembly** panel, select **Edit**.

6 On the **Which SharePoint sites should show the option to create templates and generate documents**, select **No libraries**, and then select **Save**.
