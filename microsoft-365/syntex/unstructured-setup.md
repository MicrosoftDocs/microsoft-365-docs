---
title: Set up and manage unstructured document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/13/2025
audience: admin
ms.topic: conceptual
ms.custom: setup
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and manage unstructured document processing in SharePoint.
---

# Set up and manage unstructured document processing in Microsoft Syntex

The unstructured document processing service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use unstructured document processing, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Unstructured document processing is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up unstructured document processing.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up unstructured document processing

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), unstructured document processing is automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, unstructured document processing is turned on for libraries in all SharePoint sites. Follow these steps to limit on which sites users can create custom models to process files.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Billing and licenses**, select **Activate pay-as-you-go services**.

3. On the **Activate pay-as-you-go services** page, select **Get started**.

4. On the **Pay-as-you-go services** page, select the **Settings** tab, and then select **Syntex services**.

5. On the Syntex page, in the **Document & image services** section, select ***Unstructured document processing**.

6. On the **Unstructured document processing** panel:


    a. On the **Sites** tab, in the **Sites where models can be used** section, select **Edit**.

    b. On the **Sites where models can be used** panel, select **All sites** or **Selected sites (up to 100)**. For selected sites, follow the instructions to either select the sites or upload a CSV file listing a maximum of 100 sites. You can then manage site access permissions for the sites you selected.

    > [!NOTE]
    > You must be a member of any site that you want to include in the CSV file.

    > [!NOTE]
    > Disabling a site after a model is made available to process files on that site will not disable the model. Models can still be used to process files and incur charges. A model can be made available to process files by being created either on that site or in a content center.

    > [!NOTE]
    > For multi-geo environments, the **No sites** and **Selected sites** settings apply only to the primary geo of multi-geo tenants. If you want to restrict or add sites in non-primary geos, contact Microsoft support.

7. Select **Save**.

## Turn off unstructured document processing

When the unstructured document processing service is turned off, unstructured models won't run, and users won't be able to create or apply unstructured models.

Follow these steps to turn off unstructured document processing.

1. On the **Unstructured document processing** panel, on the **Settings** tab, clear the **Let people create and apply models to process files** check box.

2. Select **Save**.

    > [!NOTE]
    > For multi-geo environments, when the service is turned off, the service is off for all geos.
