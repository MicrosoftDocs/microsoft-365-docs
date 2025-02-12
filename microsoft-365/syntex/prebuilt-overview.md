---
title: Overview of prebuilt document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/22/2025
audience: admin
ms.topic: conceptual
ms.custom: intro-overview
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about prebuilt models in Microsoft Syntex.
---

# Overview of prebuilt document processing in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of prebuilt document processing and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

In addition to [custom models](model-types-overview.md#custom-models), Microsoft Syntex provides *prebuilt models* to automate the extraction of information.

> [!NOTE]
> Microsoft respects the privacy and ownership of data you use to train and process models in Syntex. None of your organization's data is used or transferred by Microsoft to train AI models, large-language models, or any other models. Your data remains securely within your organization’s tenant. For more information, see [Microsoft data protection and privacy](https://www.microsoft.com/en-us/trust-center/privacy).

## Introduction to prebuilt models

Prebuilt document processing uses [prebuilt models](#available-prebuilt-models) that are preconfigured to recognize documents and the structured information in the documents. Instead of having to create a new custom model from scratch, you can iterate on an existing pretrained model to add specific fields that fit the needs of your organization. 

Prebuilt models use optical character recognition (OCR) combined with deep learning models to identify and extract predefined text and data fields common to specific document types. You start by analyzing one of your files against the prebuilt model. You then select the detected fields that make sense for your purpose. If the model doesn't detect the fields that you need, you can analyze again by using a different file.

Like other models, prebuilt models are created and managed in the [content center](create-a-content-center.md). When applied to a SharePoint document library, the model is associated with a content type and has columns to store the information being extracted. 

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  

## Available prebuilt models

Currently, there are five prebuilt processing models available: [contracts](prebuilt-model-contract.md), [invoices](prebuilt-model-invoice.md), [receipts](prebuilt-model-receipt.md), [sensitive information](prebuilt-model-sensitive-info.md), and [simple document](prebuilt-model-simple.md).

- **[Contracts](prebuilt-model-contract.md).** The prebuilt *contracts processing model* analyzes and extracts key information from contract documents. The API analyzes contracts in various formats and extracts key contract information, such as client name and address, contract duration, and renewal date.

- **[Invoices](prebuilt-model-invoice.md).** The *invoices processing model* analyzes and extracts key information from sales invoices. The API analyzes invoices in various formats and [extracts key invoice information](/azure/applied-ai-services/form-recognizer/concept-invoice#field-extraction) such as customer name, billing address, due date, and amount due.

- **[Receipts](prebuilt-model-receipt.md).** The *receipts processing model* analyzes and extracts key information from sales receipts. The API analyzes printed and handwritten receipts and [extracts key receipt information](/azure/applied-ai-services/form-recognizer/concept-receipt#field-extraction) such as merchant name, merchant phone number, transaction date, tax, and transaction total.

- **[Sensitive information](prebuilt-model-sensitive-info.md).** The *sensitive information model* analyzes, detects, and extracts key information from documents. The API analyzes documents in various formats and [detects and extracts key sensitive information](prebuilt-model-sensitive-info-entities.md), such as personal and financial identification numbers, physical and email addresses, and phone numbers.

- **[Simple document](prebuilt-model-simple.md).** The *simple document processing model* offers a flexible, pretrained solution for extracting key-value pairs, selection marks, and named entities from basic structured documents. This model also supports barcodes and language detection.

<!---[detects sensitive information](/azure/ai-services/language-service/personally-identifiable-information/concepts/entity-categories)--->

Additional prebuilt models will be available in future releases.

## Requirements and limitations

For information about requirements to consider when choosing this model, see the [requirements and limitations for prebuilt document processing](prebuilt-requirements.md).
