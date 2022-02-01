---
title: Prebuilt models overview in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.customer: intro-overview
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about prebuilt models in Microsoft SharePoint Syntex.
---

# Prebuilt models overview in Microsoft SharePoint Syntex

In addition to [document understanding models](document-understanding-overview.md) and [form processing models](form-processing-overview.md), SharePoint Syntex provides prebuilt models to automate the extraction of information.

Prebuilt models are pretrained to recognize documents and the structured information in the documents. Instead of having to create a new custom model from scratch, you can iterate on an existing pretrained model to add specific fields that fit the needs of your organization. 

Prebuilt models use optical character recognition (OCR) combined with deep learning models to identify and extract predefined text and data fields common to specific document types. You start by analyzing one of your files against the prebuilt model. You then select the detected fields that make sense for your purpose. If the model doesn't detect the fields that you need, you can analyze again by using a different file.

Like document understanding models, prebuilt models are created and managed in the [content center](create-a-content-center.md). When applied to a SharePoint document library, the model is associated with a content type and has columns to store the information being extracted. 

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  

## File limitations

Document understanding models use Optical Character Recognition (OCR) technology to scan PDFs, images, and TIFF files. Files are scanned when you train a model with example files and when you run the model against files in a document library.

Note the following differences about Microsoft Office text-based files and OCR-scanned files (PDF, image, or TIFF):

- Office files: Truncated at 64,000 characters (in training and when run against files in a document library).

- OCR-scanned files: There's a 20-page limit.  

### Requirements

OCR processing works best on documents that meet the following requirements:

- JPG, PNG, or PDF format (text or scanned). Text-embedded PDFs are better, because there won't be any errors in character extraction and location.

- If your PDFs are password-locked, you must remove the lock before submitting them.

- The combined file size of the documents used for training per collection must not exceed 50 MB, and PDF documents shouldn't have more than 500 pages.

- For images, dimensions must be between 50 × 50 and 10,000 × 10,000 pixels.
   > [!NOTE]
   > Images that are very wide or have odd dimensions (for example, floor plans) might get truncated in the OCR process and lose accuracy.
 
- For PDF files, dimensions must be at most 17 x 17 inches, corresponding to Legal or A3 paper sizes and smaller.

- If scanned from paper documents, scans should be high-quality images.

- Must use the Latin alphabet (English characters).

### Supported file types

Prebuilt models support the following file types:

- doc
- docx
- eml
- heic
- heif
- htm
- html
- jpeg
- jpg
- markdown
- md
- msg
- pdf
- png
- ppt
- pptx
- rtf
- tif
- tiff
- txt
- xls
- xlsx



## See Also

[Create a content center](create-a-content-center.md)
[Create a form processing model](create-a-form-processing-model.md)
[Apply a document understanding model](apply-a-model.md)   

