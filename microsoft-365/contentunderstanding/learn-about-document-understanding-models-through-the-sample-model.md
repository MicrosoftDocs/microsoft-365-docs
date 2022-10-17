---
title: Import a sample document understanding model for Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.custom: intro-get-started
ms.service: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about document understanding models through the sample model.
---

# Import a sample document understanding model for Microsoft Syntex

Microsoft Syntex provides you with a sample model you can use to examine, giving you a better understanding of how to create your own models. The sample model also allows you to examine model components, such as its classifier, extractors, and explanations. You can also use the sample files to train the model.

## Import the sample model

To access the sample model, you need to first import the model to your content center.

1. From the content center, select **Models** to see your models list.</br>
2. On the **Models** page, select **Import sample model**.</br>

    ![Import sample model.](../media/content-understanding/import-sample-model.png) </br>

3. When the import completes, the **BenefitsChangeNotice** model home page will open. If you need to open the sample model in the future, you can do this from the models list in the content center. </br>

     ![Sample home page.](../media/content-understanding/sample-home-page.png)</br>

You can not only look through analyze the sample model to get a better understanding of how the model is constructed, but as a working model can go further and do things such as:

- Add a another extractor. For example, add one that extracts the *discount fee*.
- Apply the model to a document library, and upload some of the training files to it to see how the model classifies files and extracts data from them.

## Get sample models

You can access the [Syntex Samples repository](https://github.com/pnp/syntex-samples), which contains community samples that demonstrate different usage patterns of document understanding models. The samples in this repository contain both the document understanding model files and the files used to train the model. Once imported, you can use these models to process files and to view and edit the classifier and extractors.

## See also
[Create a classifier](create-a-classifier.md)

[Create an extractor](create-an-extractor.md)

[Document Understanding overview](document-understanding-overview.md)

[Create a form processing model](create-a-form-processing-model.md)  
