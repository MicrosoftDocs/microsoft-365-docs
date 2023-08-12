---
title: Overview of prebuilt document processing in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 10/12/2022
audience: admin
ms.topic: conceptual
ms.custom: intro-overview
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about prebuilt models in Microsoft Syntex.
---

# Overview of prebuilt document processing in Microsoft Syntex

In addition to [custom models](model-types-overview.md#custom-models), Microsoft Syntex provides *prebuilt models* to automate the extraction of information.

## Introduction to prebuilt models

Prebuilt document processing uses [prebuilt models](#available-prebuilt-models) that are preconfigured to recognize documents and the structured information in the documents. Instead of having to create a new custom model from scratch, you can iterate on an existing pretrained model to add specific fields that fit the needs of your organization. 

Prebuilt models use optical character recognition (OCR) combined with deep learning models to identify and extract predefined text and data fields common to specific document types. You start by analyzing one of your files against the prebuilt model. You then select the detected fields that make sense for your purpose. If the model doesn't detect the fields that you need, you can analyze again by using a different file.

Like other models, prebuilt models are created and managed in the [content center](create-a-content-center.md). When applied to a SharePoint document library, the model is associated with a content type and has columns to store the information being extracted. 

After publishing your model, use the content center to apply it to any SharePoint document library that you have access to.  

## Available prebuilt models

Currently, there are three prebuilt models available: [contracts](prebuilt-model-contract.md), [invoices](prebuilt-model-invoice.md), and [receipts](prebuilt-model-receipt.md).

- **Contracts.** The prebuilt *contracts model* analyzes and extracts key information from contract documents. The model recognizes contracts in various formats and extracts key contract information, such as client name and address, contract duration, and renewal date.

- **Invoices.** The prebuilt *invoices model* analyzes and extracts key information from sales invoices. The API analyzes invoices in various formats and [extracts key invoice information](/azure/applied-ai-services/form-recognizer/concept-invoice#field-extraction) such as customer name, billing address, due date, and amount due.

- **Receipts.** The prebuilt *receipts model* analyzes and extracts key information from sales receipts. The API analyzes printed and handwritten receipts and [extracts key receipt information](/azure/applied-ai-services/form-recognizer/concept-receipt#field-extraction) such as merchant name, merchant phone number, transaction date, tax, and transaction total.
 
Additional prebuilt models will be available in future releases.

## Requirements and limitations

For information about requirements to consider when choosing this model, see [Requirements and limitations for models in Microsoft Syntex](requirements-and-limitations.md). 



 
