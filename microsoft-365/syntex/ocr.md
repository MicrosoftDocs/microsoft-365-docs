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

The text is typically extracted as words, text lines, and paragraphs or text blocks, enabling access to digital version of the scanned text. This makes it possible for the information to be available as metadata in search and in document libraries.

## Requirements

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up OCR in Syntex.

## Requirements

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up OCR in Syntex.

### Licensing

To use OCR in Syntex, you must enter your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Syntex OCR is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). 

## Set up OCR

Once that step is completed, Global and SharePoint admins can enter SharePoint sites where they would like OCR to be applied through the Set up Syntex flow. (The choices are no sites, selected sites, all sites).  The default is no sites. When OCR is applied, text is extracted from images within the files and indexed in search and made available for compliance features like DLP. 

Once the Azure subscription in entered, the compliance admin can also specify which SharePoint sites to OCR to make that text available for DLP. If there are different sites specified in the two set up locations, the maximum number of sites will be OCRed and the customer will not be double charged for processing. To learn more about the compliance center configuration of OCR,  (Read more here) In the compliance center, OCR can be configured for Exchange embedded images and attachments, Teams embedded images, SPO and ODB image only PDF and TIFF, EXO all PDF and TIFF, endpoint image only PDF and TIFF and images.  If compliance admin has configured OCR, you will be able to tell from the Syntex set up area that something has been configured in compliance. 
 
## OCR supported languages

OCR for printed text includes support for the following languages: TBD

OCR for handwritten text includes support for the following languages: TBD


Syntex OCR is billed based on transactions.  (See pricing page) 

A transaction is:  

For images (jpg, jpeg, png, bmp) - 1 document 

PDF, TIF, TIFF - 1 page 

Embedded images in Teams chats and emails - 1 per image 

OCR processing happens again every time the file is edited. 

If the same image is being sent across different email threads in the tenant, we will not send it for OCR again within the same 24 hour period. 

 

 