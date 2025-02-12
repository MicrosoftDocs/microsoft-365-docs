---
title: Set up and manage autofill columns in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/13/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and manage sites for autofill columns in SharePoint.
---

# Set up and manage autofill columns in Microsoft Syntex

The autofill columns service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use autofill columns, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). The autofill columns service is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up autofill columns.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]  

## Set up autofill columns

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), autofill columns is automatically set up and turned on for all SharePoint sites.

## Manage sites

By default, the autofill columns service is turned on for libraries in all SharePoint sites. To limit which sites users can use autofill columns, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Settings > Org settings**</a>.

2. On the **Org settings** page, select **Pay-as-you-go services**.

3. On the **Pay-as-you-go services** page, select the **Settings** tab.

4. Under **Document & image services**, select **Autofill columns**.

5. On the **Autofill columns** panel, under **Sites where Autofill can be used when it's turned on**, select **Edit**.

6. On the **Sites where models can be created** panel, change the setting from **All sites** to **Selected sites (up to 100)** or **No sites**. For selected sites, follow the instructions to select the sites or upload a CSV listing of the sites. You can then manage site access permissions for the sites you selected.

7. Select **Save**.
