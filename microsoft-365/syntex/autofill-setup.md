---
title: Set up and manage autofill columns in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 03/01/2024
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

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up autofill columns in Syntex.  

## Set up autofill columns

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), autofill columns is automatically set up and turned on for all SharePoint sites.

## Manage sites

By default, autofill columns is turned on for libraries in all SharePoint sites. Follow these steps to limit which sites users can use autofill columns.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Microsoft Syntex** panel, select **Autofill columns**.

4. On the **Autofill columns** panel:

    a. Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, under **Sites where autofill columns can be used when it's turned on**, select **Edit**. On the **Where can autofill columns be used?** panel, select **No sites** or **Selected sites (up to 100)** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
