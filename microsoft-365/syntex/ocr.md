---
title: Set up and manage optical character recognition in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: kkameth
ms.date: 09/26/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to set up and manage optical character recognition in Microsoft Syntex.
---

# Set up and manage optical character recognition in Microsoft Syntex

The optical character recognition (OCR) service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use the OCR service in Microsoft Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). OCR in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up the OCR service.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up optical character recognition

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), OCR will be automatically set up and enabled for all SharePoint sites for Microsoft Syntex.

### Set up data loss prevention policies using OCR

The compliance admin for your organization can also [configure the OCR settings for your tenant](../compliance/ocr-learn-about.md?#phase-3-configure-your-ocr-settings) for [data loss prevention policies](../compliance/dlp-learn-about-dlp.md) in the Microsoft Purview compliance portal.

The compliance admin can specify which SharePoint sites to include for data loss prevention. If there are different sites specified for Syntex and data loss prevention, the maximum number of sites will be enabled for OCR. You won't be charged twice for processing.

For more information, see [Learn about optical character recognition in Microsoft Purview](../compliance/ocr-learn-about.md).

## Manage sites enabled for Syntex

Follow these steps to manage which SharePoint sites have OCR enabled for Microsoft Syntex in the Microsoft 365 admin center.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Files and content**, select **Automate content processes with Syntex**.

3. On the **Automate content processes with Syntex** page, select **Go to Syntex settings**.

4. On the Syntex page, in the **Document & image services** section, select **Optical character recognition**.

5. On the **Optical character recognition** panel:

    a. Choose the site or sites on which this service should be enabled.

    b. To restrict user access to this service, under **Select the SharePoint libraries where you would like to enable optical character recognition**, select **No sites** or **Selected sites (up to 100)**. Follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
