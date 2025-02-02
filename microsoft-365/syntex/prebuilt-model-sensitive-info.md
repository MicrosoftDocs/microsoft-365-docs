---
title: Use a prebuilt model to detect sensitive information from documents in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: karlha
ms.date: 06/28/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to use a prebuilt sensitive information model in Microsoft Syntex.

---

# Use a prebuilt model to detect sensitive information from documents in Microsoft Syntex

The *sensitive information prebuilt model* analyzes and detects key information from documents, and then optionally extracts the information. The model recognizes documents in various formats and [detects sensitive information](prebuilt-model-sensitive-info-entities.md), such as personal and financial identification numbers, physical and email addresses, and phone numbers.

<!---[detects sensitive information](/azure/ai-services/language-service/personally-identifiable-information/concepts/entity-categories)--->

## Set up a sensitive information model

To create and configure a sensitive information model, follow these steps:

1. Follow the instructions in [Create a model in Syntex](create-syntex-model.md?tabs=layout-method%2Csensitive-information-processing#tabpanel_2_sensitive-information-processing) to create a sensitive information model. Then continue with the following steps to complete your model.

    > [!NOTE]
    > When you create a sensitive information model, you will notice that, unlike other models, you don't have the options to select a content type or to apply sensitivity or retention labels. If you need to associate a content type, you'll need to create a different model type. The ability to apply security labels will be provided in a future release.

2. On the **Models** page, in the **Add entities to detect** section, select **Add entities**.

    ![Screenshot of the new models page showing the Add entities to detect section.](../media/content-understanding/prebuilt-add-file-to-analyze-sensitive-info.png)

3. On the **Configure detection** page:

    - Select the language you want to use for this model. Only one language can be selected for each model.

        > [!NOTE]
        > This model supports [multiple languages](/azure/ai-services/language-service/personally-identifiable-information/language-support?tabs=documents) and detects sensitive information for both [handwritten text](/azure/ai-services/computer-vision/language-support#handwritten-text) and [printed text](/azure/ai-services/language-service/personally-identifiable-information/language-support?tabs=documents#pii-language-support).

    - From the list of supported entities, select the sensitive information entity or entities you want to detect, and then select **Next**.

    ![Screenshot of the Configure detection page.](../media/content-understanding/prebuilt-sensitive-configure-detection.png)

4. On the **Configure extraction** page, you see the list of sensitive information entities you chose to detect. Select the entities you want to extract into columns, and then select **Next**.

    ![Screenshot of the Configure extraction page.](../media/content-understanding/prebuilt-sensitive-select-extract.png)

5. On the **Test model** page, you test the model to make sure it detects and extracts the entities you want. Select **+Add files** to select sample files to test your model.

    ![Screenshot of the Test model page.](../media/content-understanding/prebuilt-sensitive-test-model-2.png)

    > [!NOTE]
    > This model does not detect or extract information from encrypted files.

6. On the **Apply model** page, select **+Add library**, and choose the library you want to apply this model to, and then select **Add**.

    ![Screenshot of the Apply model page.](../media/content-understanding/prebuilt-sensitive-apply-model-2.png)

7. In the document library, entities that are detected are displayed in the **Entities detected** column, and entities that are selected for extraction are displayed in their respective columns.

    ![Screenshot of the library showing entities detected.](../media/content-understanding/prebuilt-sensitive-entities-extracted.png)

For information about file types, languages, optical character recognition, and other considerations for this prebuilt model, see [Requirements and limitations for prebuilt document processing in SharePoint](prebuilt-requirements.md).
<!---
## Create a rule to apply a sensitivity label

To create a rule to automatically apply a sensitivity label or a retention to a document, see [link to article TBD].--->

