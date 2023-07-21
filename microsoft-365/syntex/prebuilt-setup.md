---
title: Set up and manage prebuilt document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 07/12/2023
audience: admin
ms.topic: conceptual
ms.custom: setup
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and manage prebuilt document processing in Microsoft Syntex.
---

# Set up and manage prebuilt document processing in Microsoft Syntex

The prebuilt document processing service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use prebuilt document processing in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Prebuilt document processing in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up prebuilt document processing in Syntex.  

## Set up prebuilt document processing

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), prebuilt document processing will be automatically set up and enabled for all SharePoint sites.

## Manage sites

Manage which SharePoint sites users can use to create prebuilt models to process files.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**. 

3. On the **Manage Microsoft Syntex** page, select **Prebuilt document processing**.

4. On the **Prebuilt document processing** page:

    a. Choose which site or sites this service should be enabled for.

    > [!NOTE]
    > Disabling a site after a model is made available to process files on that site will not disable the model. Models can still be used to process files and incur charges. A model can be made available to process files by being created on that site or in a content center.

    b. To restrict user access to this service, select **No sites** or **Selected sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
