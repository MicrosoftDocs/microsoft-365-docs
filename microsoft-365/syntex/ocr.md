---
title: Set up and manage optical character recognition in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: kkameth
ms.date: 07/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: admindeeplinkMAC
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to set up and manage optical character recognition in Microsoft Syntex.
---

# Set up and manage optical character recognition in Microsoft Syntex

Before you can use the optical character recognition (OCR) service in Microsoft Syntex, it must be configured in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use the OCR service in Syntex, you must first enter your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). OCR in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). 

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up the OCR service in Syntex. 

## Set up optical character recognition

You can configure the OCR service by using either or both of these methods:

- [Microsoft 365 admin center](#microsoft-365-admin-center)
- [Microsoft Purview compliance portal](#microsoft-purview-compliance-portal)

### Microsoft 365 admin center

You can set up the OCR service in the same admin area that you used to set up billing.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**. 

3. On the **Manage Microsoft Syntex** page, select **Optical character recognition**.

4. On the **Optical character recognition** page:

    a. Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, select **No sites** or **Selected sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.

### Microsoft Purview compliance portal

The compliance admin for your organization [configures the OCR settings for your tenant](../compliance/ocr-learn-about.md?#phase-3-configure-your-ocr-settings) in the Microsoft Purview compliance portal.

The compliance admin can specify which SharePoint sites to enable OCR to make that text available for [data loss prevention policies](../compliance/dlp-learn-about-dlp.md). If there are different sites specified in the two setup locations, the maximum number of sites will be enabled for OCR. You won't be charged twice for processing.

For more information, see [Learn about optical character recognition in Microsoft Purview](../compliance/ocr-learn-about.md).
