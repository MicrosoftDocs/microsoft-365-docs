---
title: Use a prebuilt model to detect sensitive information from documents in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 05/01/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to use a prebuilt sensitive information model in Microsoft Syntex.

---

# Use a prebuilt model to detect sensitive information from documents in Microsoft Syntex

The prebuilt *sensitive information model* analyzes and detects key information from documents. The model recognizes documents in various formats and [detects sensitive information](/azure/ai-services/language-service/personally-identifiable-information/concepts/entity-categories#entity-categories), such as personal identification numbers, personal physical and email addresses, phone numbers, and personal financial or health information. This model can also extract key sensitive information when selected.

## Set up a sensitive information model

To create and configure a sensitive information model, follow these steps:

1. Follow the instructions in [Create a model in Syntex](create-syntex-model.md#set-up-a-prebuilt-model) to create a prebuilt sensitive information model. Then continue with the following steps to complete your model.

    > [!NOTE]
    > You do not need to associate a content type for this prebuilt model.

2. On the **Models** page, in the **Add entities to detect** section, select **Add entities**.

    ![Screenshot of the new models page showing the Add entities to detect section.](../media/content-understanding/prebuilt-add-file-to-analyze-sensitive-info.png)

3. On the **Configure detection** page:

    - Select the language you want to use for this model. Only one language can be selected for each model. This model supports languages for both [handwritten text](/azure/ai-services/computer-vision/language-support#handwritten-text) and [print text](/azure/ai-services/computer-vision/language-support#print-text).

    - Select the sensitive information entities you want to detect, and then select **Next**.

    ![Screenshot of the Configure detection page.](../media/content-understanding/prebuilt-sensitive-configure-detection.png)

4. On the **Configure extraction** page, select the sensitive information entities you want to extract, and then select **Next**.

    ![Screenshot of the Configure extraction page.](../media/content-understanding/prebuilt-sensitive-select-extract.png)

5. On the **Test model** page, select **+Add files** to select sample files to test your model.

    ![Screenshot of the Test model page.](../media/content-understanding/prebuilt-sensitive-test-model-2.png)

    > [!NOTE]
    > This model does not detect or extract information from encrypted files.

6. On the **Apply model** page, select **+Add library**, and choose the library you want to add this model to, and then select **Add**. 

    ![Screenshot of the Apply model page.](../media/content-understanding/prebuilt-sensitive-apply-model-2.png)

7. In the document library, entities that are detected are displayed in one column and entities that are selected for extraction are displayed in another column per entity.

    ![Screenshot of the library showing entities detected.](../media/content-understanding/prebuilt-sensitive-entities-extracted.png)

For information about file types, languages, optical character recognition, and other considerations for this model, see [Requirements and limitations for models in Microsoft Syntex](requirements-and-limitations.md#prebuilt-models).
<!---
## Create a rule to apply a sensitivity label

To create a rule to automatically apply a sensitivity label or a retention to a document, see [link to article TBD].--->

