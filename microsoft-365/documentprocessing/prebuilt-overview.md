---
title: Overview of prebuilt document processing
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 08/01/2025
audience: admin
ms.topic: concept-article
ms.custom: intro-overview
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about prebuilt document processing in SharePoint.
---

# Overview of prebuilt document processing

> [!NOTE]
> Through December 2025, you can try out a [limited amount](promo-syntex.md#included-monthly-capacity) of prebuilt document processing and other selected content services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out pay-as-you-go services](promo-syntex.md).

In addition to using [custom models](model-types-overview.md#custom-models), document processing offers prebuilt models that help automate information extraction from documents—no training required. These models are ready to use and designed to recognize common document types and data patterns, so you can get started quickly and scale efficiently.

> [!NOTE]
> Microsoft respects the privacy and ownership of data you use to train and process models. None of your organization's data is used or transferred by Microsoft to train AI models, large-language models, or any other models. Your data remains securely within your organization’s tenant. For more information, see [Microsoft data protection and privacy](https://www.microsoft.com/en-us/trust-center/privacy).

## Introduction to prebuilt models

Prebuilt document processing uses pretrained models that are already configured to recognize common document types and extract structured information. Instead of building a custom model from scratch, you can start with a prebuilt model and tailor it by adding fields specific to your organization’s needs.

These models combine optical character recognition (OCR) with deep learning to identify and extract predefined text and data fields. To get started, analyze a sample file using a prebuilt model. Then, select the fields that are relevant to your scenario. If the model doesn’t detect the fields you need, try analyzing a different file.

Like other models, prebuilt models are created and managed in the [content center](create-a-content-center.md). When you apply a model to a SharePoint document library, it links to a content type and includes columns to store the extracted information.

After publishing your model, use the content center to apply it to any SharePoint document library you have access to. 

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
