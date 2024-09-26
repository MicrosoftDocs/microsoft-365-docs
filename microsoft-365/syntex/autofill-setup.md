---
title: Set up and manage autofill columns in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 09/26/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up autofill columns in Microsoft Syntex.
---

# Set up and manage autofill columns in Microsoft Syntex

The autofill columns service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use autofill columns in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Autofill columns in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up autofill columns.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]  

## Set up autofill columns

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), autofill columns is automatically set up and turned on for all SharePoint sites.

## Manage sites

By default, autofill columns is turned on for libraries in all SharePoint sites. Follow these steps to limit which sites users can use autofill columns.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Files and content**, select **Automate content processes with Syntex**.

3. On the **Automate content processes with Syntex** page, select **Go to Syntex settings**.

4. On the Syntex page, in the **Document & image services** section, select **Autofill columns**.

5. On the **Autofill columns** panel:

    a. Choose the site or sites on which this service should be enabled.

    b. To restrict user access to this service, under **Sites where Autofill can be used when it's turned on**, select **Edit**. On the **Where can autofill columns be used?** panel, change the setting from **All sites** to **Selected sites (up to 100)** or **No sites**. For selected sites, follow the instructions to select the sites or upload a CSV listing of the sites. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
