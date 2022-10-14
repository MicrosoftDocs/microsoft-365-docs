---
title: Document understanding overview in Microsoft Syntex
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
description: Learn about document understanding in Microsoft Syntex.
---

# Document understanding overview in Microsoft Syntex


</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSu7]

</br>

Document understanding uses artificial intelligence (AI) models to automate classification of files and extraction of information. It works best with unstructured documents, such as letters or contracts. These documents must have text that can be identified based on phrases or patterns. The identified text designates both the type of file it is (its classification) and what you'd like to extract (its extractors).

> [!NOTE]
> See the [Syntex adoption: Get started guide](./adoption-getstarted.md) for more information about document understanding scenario examples.

Document understanding models are created and managed in a type of SharePoint site called a *content center*. When applied to a SharePoint document library, the model is associated with a content type has columns to store the information being extracted. The content type you create is stored in the SharePoint content type gallery. You can also choose to use existing content types to use their schema.

> [!NOTE]
> Read-only or sealed content types cannot be updated, so they can't be used in a model.

Add *classifiers* and *extractors* to your document understanding models to do the following actions:

- Classifiers are used to identify and classify documents that are uploaded to the document library. For example, a classifier can be "trained" to identify all *contract renewal* documents that are uploaded to the library. The contract renewal content type is defined by you when you create your classifier.

- Extractors pull information from these documents. For example, for each contract renewal document identified in your document library, columns will display that show the *Service Start Date* and *Client* for each document. 

You can use example files to train and test your classifiers and extractors in your model. Example files provide your model examples of what to look for when trying to identify and extract data from files. For example, you would train your contract renewal classifiers and extractors with examples of contract renewal documents your company works with. You can also use example files to test the effectiveness of your model.

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

- For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels.
   > [!NOTE]
   > Images that are very wide or have odd dimensions (for example, floor plans) might get truncated in the OCR process and lose accuracy.

- For PDF files, dimensions must be at most 17 x 17 inches, corresponding to Legal or A3 paper sizes and smaller.

- If scanned from paper documents, scans should be high-quality images.

- Must use the Latin alphabet (English characters).

### Supported file types

Document understanding models support the following file types:

- csv
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

### Supported languages

Document understanding models support *all* of the Latin-based languages, including:

- English
- French
- German
- Italian
- Spanish

## See also

[Create a classifier](create-a-classifier.md)

[Create an extractor](create-an-extractor.md)

[Create a content center](create-a-content-center.md)

[Create a form processing model](create-a-form-processing-model.md)

[Apply a model](apply-a-model.md)

[Difference between a document understanding and a form processing model](difference-between-document-understanding-and-form-processing-model.md)
  
[Form processing overview](form-processing-overview.md)

[Syntex accessibility mode](accessibility-mode.md)
