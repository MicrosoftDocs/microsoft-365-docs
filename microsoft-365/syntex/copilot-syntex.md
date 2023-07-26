---
title: Overview of Syntex File Q&A for Copilot (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: ssquires
ms.date: 07/24/2023
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to File Q&A for Copilot to easily find information in Microsoft Syntex.
---

# Overview of Syntex File Q&A for Copilot (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

Microsoft Syntex now brings the power of assistive AI into your organization's intelligent document processing.

Syntex File Q&A for Copilot analyzes the text of a selected file in a SharePoint document library, in OneDrive for Business, or in Teams. It then generates a set of questions you can ask about the information in the file. The questions can be used to quickly identify the type of document, generate a summary of information in the document, and identify key points or other important information. You can also ask your own questions, such as "When does this contract expire?" or "What is the fee schedule for this project?"

## To use Syntex File Q&A for Copilot

1. From a SharePoint document library, select a document.

2. On the ribbon, select **Copilot**.

    ![Screenshot of a document library page showing a document selected and the Copilot button on the ribbon.](../media/content-understanding/copilot-document-selected.png)

3. The first time you use Syntex File Q&A for Copilot, you'll see this **Copilot** panel.

    ![Screenshot of the first-run experience Copilot panel.](../media/content-understanding/copilot-panel-first-run.png)

4. After that, you'll see this **Copilot** panel.

    ![Screenshot of the Copilot panel.](../media/content-understanding/copilot-panel.png)

5. On the **Copilot** panel, you can:

    - Select one of the questions Copilot has generated for you tailored for the specific file. Or select **Refresh** (![Image of the Refresh icon.](../media/content-understanding/copilot-refresh-icon.png)) to generate more questions.

       ![Screenshot of the generated questions on the Copilot panel.](../media/content-understanding/copilot-generated-questions.png)

    - In the text box, enter your own specific question or make a request.

       ![Screenshot of the text box on the Copilot panel.](../media/content-understanding/copilot-text-box.png)

<!---    - In the text box, select **More from Syntex** to find more information about the file.

       ![Screenshot of the text box on the Copilot panel with the starter prompt highlighted.](../media/content-understanding/copilot-starter-prompt.png)--->

> [!NOTE]
> If you want to clear the current session, at the top of the **Copilot** panel, select **More options** (<sup>**...**</sup>), and then select **Clear session**.

## Current limitations

- Syntex File Q&A for Copilot currently works on Word (.docx), PowerPoint (.pptx), and text-readable .pdf file types. More file types will be added in the future.

- Syntex File Q&A for Copilot is currently only available to customers in the United States, and currently only understands instructions in English. More languages and locales will be added in the future.

- Syntex File Q&A for Copilot works on a single selected file at a time, and it only processes the first 4,000 tokens (approximately six pages).

- Syntex File Q&A for Copilot won't process encrypted files or files stamped with "Confidential" or "Highly Confidential" sensitivity labels.

- Syntex File Q&A for Copilot doesn't save the context of your session, but you can copy the information if you want to save it.

> [!IMPORTANT]
> It's important that you review any content the AI generates for you to make sure it has accurately produced what you wanted.

## Data security and privacy

The new Copilot experiences don't change Microsoft's commitment and principles for data security and privacy. Learn more about [Microsoft's standards for data security and privacy](https://techcommunity.microsoft.com/t5/microsoft-365-blog/administration-of-microsoft-365-in-the-new-era-of-ai/ba-p/3767079) and [how data is maintained in the Azure OpenAI service](/legal/cognitive-services/openai/data-privacy#how-is-data-retained-and-what-customer-controls-are-available).

## Let us know what you think

If you have a suggestion for Syntex File Q&A for Copilot, or if there's something you like or something you don't like about it, you can submit feedback to Microsoft from the **Copilot** panel. Select **More options** (<sup>**...**</sup>), and then select **Send feedback**.

  ![Screenshot of the Copilot panel showing the Send feedback option.](../media/content-understanding/copilot-send-feedback.png)

This feedback is used to help us improve your experience in Syntex File Q&A for Copilot.
