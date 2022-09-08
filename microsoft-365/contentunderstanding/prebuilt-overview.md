---
title: Overview of prebuilt models in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.customer: intro-overview
ms.service: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about prebuilt models in SharePoint Syntex.
---

# Overview of prebuilt models in Microsoft SharePoint Syntex

In addition to [custom models](model-types-overview.md#custom-models), SharePoint Syntex provides *prebuilt models* to automate the extraction of information.

Prebuilt models are preconfigured to recognize documents and the structured information in the documents. Instead of having to create a new custom model from scratch, you can iterate on an existing pretrained model to add specific fields that fit the needs of your organization. 

Prebuilt models use optical character recognition (OCR) combined with deep learning models to identify and extract predefined text and data fields common to specific document types. You start by analyzing one of your files against the prebuilt model. You then select the detected fields that make sense for your purpose. If the model doesn't detect the fields that you need, you can analyze again by using a different file.

Like other models, prebuilt models are created and managed in the [content center](create-a-content-center.md). When applied to a SharePoint document library, the model is associated with a content type and has columns to store the information being extracted. 

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  

## Available prebuilt models

Currently, there are two prebuilt models available: [invoices](prebuilt-model-invoice.md) and [receipts](prebuilt-model-receipt.md).

- The *invoices model* analyzes and extracts key information from sales invoices. The API analyzes invoices in various formats and [extracts key invoice information](/azure/applied-ai-services/form-recognizer/concept-invoice#field-extraction) such as customer name, billing address, due date, and amount due.

- The *receipts model* analyzes and extracts key information from sales receipts. The API analyzes printed and handwritten receipts and [extracts key receipt information](/azure/applied-ai-services/form-recognizer/concept-receipt#field-extraction) such as merchant name, merchant phone number, transaction date, tax, and transaction total.

Additional prebuilt models will be available in future releases.

## Requirements

See [Requirements and limitations for models in SharePoint Syntex](requirements-and-limitations.md). 


<!---
- Supported file formats: JPEG, PNG, BMP, TIFF, and PDF (text-embedded or scanned).

- Supported languages: only English language invoices from the United States are currently supported. English sales receipts from Australia, Canada, United States, Great Britain, and India are supported.

- Text-embedded PDFs are best to eliminate the possibility of error in character extraction and location.

- For PDF and TIFF, up to 2,000 pages can be processed.

- The file size must be less than 50 MB.

- Image dimensions must be between 50 x 50 pixels and 10,000 x 10,000 pixels.

- PDF dimensions are up to 17 x 17 inches, corresponding to Legal or A3 paper size, or smaller.

- The total size of the training data is 500 pages or less.

### File limitations

Note the following differences about Microsoft Office text-based files and OCR-scanned files (PDF, image, or TIFF):

- Office files: Truncated at 64,000 characters (when run against files in a document library).

- OCR-scanned files: There's a 20-page limit.  

## Model considerations

- If two or more prebuilt models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only.

- If a prebuilt model is applied to a library that has a custom form processing model, the file is classified using the prebuilt model and any detected extractors for that model. If there are any empty columns that match the form processing model, the columns will be populated using those extracted values.

- Applying more than one custom form processing model to a library is not supported.
--->

## See also

[Use a prebuilt model to extract information from invoices](prebuilt-model-invoice.md)

[Use a prebuilt model to extract information from receipts](prebuilt-model-receipt.md)

 

