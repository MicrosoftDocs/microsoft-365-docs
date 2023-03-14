---
title: Overview of OCR in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: kkameth; mikeplum
ms.date: 02/15/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about optical character recognition in Microsoft Syntex.
---

# Use the OCR service in Microsoft Syntex

Optical character recognition (OCR) in Microsoft Syntex lets you extract printed or handwritten text from images, such as posters, drawings, and product labels, as well as from documents like articles, reports, forms, and invoices.

The text is typically extracted as words, text lines, and paragraphs or text blocks, enabling access to digital version of the scanned text. This makes it possible for the extracted information to be available as metadata in search and in document libraries.

## Set up OCR

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> and set up OCR in Syntex.

### Licensing

Before you can use the OCR service in Syntex, you must first enter your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). OCR in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). 

### To set up OCR

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**. 

3. On the **Manage Microsoft Syntex** page, select **OCR**.

4. On the **OCR** page, select the SharePoint libraries where you want to enable OCR. The default is no SharePoint libraries, but you can select **Edit** to choose selected SharePoint libraries or all SharePoint libraries.

When OCR is applied, text is extracted from images within the files and indexed in search and made available for compliance features like data loss prevention (DLP). 

### Compliance center

The compliance admin can also specify which SharePoint sites to enable OCR to make that text available for DLP policies. If there are different sites specified in the two set up locations, the maximum number of sites will be enabled for OCR. You won't be charged twice for processing. To learn more about the compliance center configuration of OCR, see [link to article when available].

In the compliance center, OCR can be configured for Exchange embedded images and attachments, Teams embedded images, SPO and ODB image only PDF and TIFF, EXO all PDF and TIFF, and endpoint image only PDF and TIFF and images.  If the compliance admin has configured OCR, you'll be able to see a message in the Syntex set up area indicating that something has been configured in compliance. 

## Other requirements

### Supported file types

The OCR service is available for the following file types:

- JPEG
- JPG
- PNG
- BMP
- TIFF
- PDF (image only)

### Supported languages

OCR for printed text includes support for the following languages: TBD

OCR for handwritten text includes support for the following languages: TBD

### Limitations

- Image file sizes must be less than 20 MB.

- Images must be at least 50 x 50 pixels and not larger than 16,000 x 16,000 pixels.

- Only images uploaded after OCR has been enabled are scanned.

- Images that are embedded in Office documents are not currently supported.


Syntex OCR is billed based on transactions.  (See pricing page) 

A transaction is:  

For images (jpg, jpeg, png, bmp) - 1 document 

PDF, TIF, TIFF - 1 page 

Embedded images in Teams chats and emails - 1 per image 

OCR processing happens again every time the file is edited. 

If the same image is being sent across different email threads in the tenant, we will not send it for OCR again within the same 24 hour period. 

 

 