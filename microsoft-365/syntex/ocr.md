---
title: Overview of the OCR service in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: kkameth
ms.date: 05/30/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: admindeeplinkMAC
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about optical character recognition in Microsoft Syntex.
---

# Overview of the OCR service in Microsoft Syntex

Optical character recognition (OCR) in Microsoft Syntex lets you extract printed or handwritten text from images, such as posters, drawings, and product labels, as well as from documents like articles, reports, forms, and invoices.

The text is typically extracted as words, text lines, and paragraphs or text blocks, enabling access to digital version of the scanned text. The extracted information is indexed in search and can be made available for compliance features like [data loss prevention (DLP)](https://learn.microsoft.com/en-us/microsoft-365/compliance/dlp-learn-about-dlp?#learn-about-data-loss-prevention).

For example, you enable the OCR service and then add image files to your document library. Syntex automatically scans the image files, extracts the relevant text, and makes the text from the images available for search and indexing. This lets you quickly and accurately find the keywords and phrases you're looking for.

## Prerequisites

### Licensing

Before you can use the OCR service in Syntex, you must first enter your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). OCR in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). 

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up the OCR service in Syntex. 

## Set up OCR

You can set up the OCR service by using either of these methods:

- [Microsoft 365 admin center](#set-up-in-the-microsoft-365-admin-center) - Set up OCR settings in the same admin area that you used to set up billing.
- [Microsoft Purview compliance portal](#set-up-in-the-microsoft-purview-compliance-portal) - The compliance admin for your organization configures the OCR settings for your tenant.

### Microsoft 365 admin center

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**. 

3. On the **Manage Microsoft Syntex** page, select **OCR**.

4. On the **OCR** page, select the SharePoint libraries where you want to enable OCR. The default is no SharePoint libraries, but you can select **Edit** to choose specific SharePoint libraries or to choose all SharePoint libraries.

### Microsoft Purview compliance portal

You must be a compliance admin to configure the OCR settings in the Microsoft Purview compliance portal. Follow these [steps to configure the OCR settings for your tenant](https://learn.microsoft.com/en-us/microsoft-365/compliance/ocr-learn-about?#phase-3-configure-your-ocr-settings).

The compliance admin can specify which SharePoint sites to enable OCR to make that text available for [DLP policies](https://learn.microsoft.com/en-us/microsoft-365/compliance/dlp-learn-about-dlp?#learn-about-data-loss-prevention). If there are different sites specified in the two set up locations, the maximum number of sites will be enabled for OCR. You won't be charged twice for processing. To learn more about the compliance portal configuration of OCR, see [Learn about optical character recognition in Microsoft Purview](https://learn.microsoft.com/en-us/microsoft-365/compliance/ocr-learn-about?view=o365-worldwide).

## Requirements and limitations

### Supported file types

The OCR service is available for the following file types:

- JPEG
- JPG
- PNG
- BMP
- TIFF
- PDF (image only)

### Supported languages

The OCR service supports more than [150 languages](https://learn.microsoft.com/en-us/azure/cognitive-services/language-support).

### File limitations

- Image file sizes must be less than 50 MB.

- Images must be at least 50 x 50 pixels and not larger than 16,000 x 16,000 pixels.

- Only images uploaded after OCR has been enabled are scanned.

- Currently, images that are embedded in Office documents aren't supported.

