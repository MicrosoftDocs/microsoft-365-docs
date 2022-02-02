---
title: Activate a model on a local SharePoint site with Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to create a local model on a local SharePoint site with SharePoint Syntex.
---

# Activate a model on a local SharePoint site with Microsoft SharePoint Syntex

SharePoint Syntex now provides an option to create and train models locally on your own SharePoint site. You do not need to publish them to a content center. 

By activating document classification and extraction on your SharePoint site, SharePoint Syntex lets you classify files in document libraries, extract information from new files, and automate activities based on extracted information.

When you activate local model creation, the following lists and libraries will be added to your site:

- Models document library
- Training files document library
- Explanation templates list
- Model usage list

This feature is available only for creating [document understanding models](apply-a-model.md) and [prebuilt models](prebuilt-models.md). 

## Activate a model on a local site

1. From a SharePoint document library, select the files you want to analyze, and then select **Classify and extract**.

    ![Screenshot of a SharePoint document library with the Classify and extract option highlighted.](../media/content-understanding/local-model-classify-and-extract-option.png) 

2. The first time you use this feature, you'll see the following message.

    ![Screenshot of the Activate document classification and extraction infomation page.](../media/content-understanding/local-model-first-run-activate-message.png) 

3. Select **Activate** to continue. You'll see the following message.

    ![Screenshot of the Document classification and extraction activated message with the option to Create a model.](../media/content-understanding/local-model-activated-message.png) 

4. Select **Create a model**.