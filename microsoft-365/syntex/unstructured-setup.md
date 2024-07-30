---
title: Set up and manage unstructured document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 06/12/2024
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
description: Learn how to set up and manage unstructured document processing in Microsoft Syntex.
---

# Set up and manage unstructured document processing in Microsoft Syntex

The unstructured document processing service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use unstructured document processing in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Unstructured document processing in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up unstructured document processing.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up unstructured document processing

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), unstructured document processing will be automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, unstructured document processing is turned on for libraries in all SharePoint sites. Follow these steps to manage which SharePoint sites users can use to create custom models to process files.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Files and content**, select **Automate content processes with Syntex**.

3. On the **Automate content processes with Syntex** page, select **Go to Syntex settings**.

4. On the Syntex page, under **Document & image services**, select ***Unstructured document processing**.

5. On the **Unstructured document processing** panel:

    a. Choose which site or sites this service should be enabled for.

    > [!NOTE]
    > Disabling a site after a model is made available to process files on that site will not disable the model. Models can still be used to process files and incur charges. A model can be made available to process files by being created either on that site or in a content center.

    b. To restrict user access to this service, under **Sites where models can be created**, select **Edit**. On the **Where can prebuilt models be used?** panel, select **No sites** or **Selected sites (up to 100)** and follow the instructions to either select the sites or upload a CSV file listing a maximum of 100 sites. You can then manage site access permissions for the sites you selected.

    > [!NOTE]
    > You must be a member of any site that you want to include in the CSV file.

    > [!NOTE]
    > For multi-geo environments, the **No sites** and **Selected sites** settings apply only to the primary geo of multi-geo tenants. If you want to restrict or add sites in non-primary geos, contact Microsoft support.

    c. Select **Save**.

## Turn off unstructured document processing

When the unstructured document processing service is turned off, unstructured models will not run, and users will not be able to create or apply unstructured models.

Follow these steps to turn off unstructured document processing.

1. On the **Manage Microsoft Syntex** page, select **Unstructured document processing**.

2. On the **Unstructured document processing** page, under **Status**, turn the toggle to **Off**.

    ![Screenshot of an Unstructured document processing panel showing the Status toggle.](../media/content-understanding/turn-off-service.png)

    > [!NOTE]
    > For multi-geo environments, when the service is turned off, the service is off for all geos.
