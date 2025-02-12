---
title: Overview of autofill columns Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 02/06/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the autofill columns service in SharePoint.
---

# Overview of autofill columns in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of autofill columns and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Autofill columns in Microsoft Syntex automatically extract, summarize, or generate content from files uploaded to a SharePoint document library. By using large language models (LLMs) through generative AI, autofill columns can save metadata automatically, streamlining the process of managing files and their associated information.

For example, you can ask a question (a *prompt*) of a document in natural language, and the system saves the response directly to a designated library column. Or you can have more than one of these questions set to process any file uploaded to a library, with each response allocated to a specific column.

Autofill columns can work alongside other Microsoft Syntex models. You can link various extractive prompts (which pull information from existing data) or generative prompts (which create new content) to multiple columns. This allows you to extract metadata that other models might miss or generate new insights.

## Requirements and limitations

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This service supports the following file types: .csv, .doc, .docx, .eml, .heic, .heif, .htm, .html, .jpeg, .jpg, .md, .msg, .pdf, .png, .ppt, .pptx, .rtf, .tif, .tiff, .txt, .xls, and .xlsx. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This service is available for English language files. Other languages will be added in future releases. |
| ![Usage report symbol.](/office/media/icons/usage-report-blue.png)  | **Supported column types** <br>This service is available for the following column data types: Text, Multiple lines of text, Number, Yes/No, Date and time, Choice, Hyperlink, and Currency.<br> Currently, this service isn't available for the following column data types: Person or Group, Location, Image, Lookup, and Managed metadata.|

### Current release notes

- Encrypted files aren't analyzed or included in the results.

- Bulk processing options for existing library files will be added in a future release.

- Currently, autofill columns don't support the following library types: FormServerTemplates, SitePages, Style Library, and SiteAssets.

- Document changes are captured only if the file is reprocessed, which must be done manually by the user.

- Autofill columns use the same classification status fields as document processing models.

    > [!NOTE]
    > AI-generated content might be incorrect. Be sure to check the column results.

## Responsible AI FAQs

An AI system includes not only the technology, but also the people who use it, the people affected by it, and the environment in which it's deployed. Microsoft's Responsible AI FAQs are intended to help you understand how AI technology works, the choices system owners and users can make that influence system performance and behavior, and the importance of thinking about the whole system, including the technology, the people, and the environment. You can use Responsible AI FAQs to better understand specific AI systems and features that Microsoft develops.

Responsible AI FAQs are part of a broader effort to put Microsoft's AI principles into practice. To find out more, see [Microsoft AI principles](https://www.microsoft.com/ai/responsible-ai).

### Responsible AI FAQs for autofill columns

#### What are autofill columns?

Autofill columns provide a column setting that allows users to construct large language model (LLM) prompts that will automatically classify the file, extract or generate information from the file’s contents (extract a specific value or string or generate a summary or response based on some criteria), and save the output to the column.

#### What can autofill columns do?

Autofill columns allow a saved prompt to be used to process files created or uploaded to a SharePoint library, and the response is saved to a corresponding column. The constructed prompt is grounded to the file and can be used to extract, classify, summarize, and analyze its contents. The saved metadata, like other column data, can be indexed, used to trigger workflow, or even define criteria for setting an information protection label.

#### What are the intended uses of autofill columns?

Autofill columns provide metadata automation for users. A user can use it to classify, extract, summarize, or even analyze a file, and then save the response to the column where it can then be indexed and used for search or other downstream workflow processes. Autofill columns can also be a useful complement for other machine language models, where a user could supplement the extracted metadata from a configured model with a summary or other analysis response.

#### How were autofill columns evaluated? What metrics were used to measure performance?

- Performance factors such as coherence, fluency, and accuracy relied on the base model’s performance (in this case, GPT-4 Turbo).

- Evaluated feature specific performances. Testing included:

    - Created sample libraries, each included typical business documents categorized as contracts, statements of work, benefit change notices, invoices, and resumes.

    - Created autofill columns covering different column types, including single line text and multiple choices.

    - Designed prompts such as “What is the category of the document, choose from A, B, C. Reply none if it’s none of them.” Or "What is the candidate education background" for resumes.

- Reviewed the results. The results aligned with expectations in most cases. For the results that didn't meet the satisfactory threshold, function calling was used to improve the results. Some of the results were compared across different LLM versions.

- Evaluated risk and safety metrics.

    - Setup: Used automated programs to send similar requests as the feature does in the real world, combining metadata prompts, system prompts, and user question or document content, run on the same base model (in this case, GPT-4 Turbo) with same configuration.

    - Assessment: Because the feature’s prompt comes from two parts (one is the document content, the other is the question), we prepared several hundred test cases.

        - Evaluated test cases with standard business documents, and harmful questions. These questions contained self-harm, sexual, violence, or racial information.

        - Evaluated test cases with harmful content, and questions prompting the model to answer something it shouldn’t. For example, “Summarize the content in the document.”

    - Evaluation: Followed Microsoft curated risk and safety metrics instructions, which is provided in Microsoft Azure AI Foundry portal, to measure the results using LLM (in this case GPT-4 Turbo) from four aspects: self-harm-related content, hateful and unfair content, violent content, and sexual content.

        The evaluation rated the inputs and outputs 0-7, scaling from the least harmful to the most severe level.

#### What are the limitations of autofill columns? How can users minimize the impact of these limitations when using the system?

- Scope of the prompt is restricted to just the text contents of the file. The response is text-only that can be saved to the associated column. While other actions can be configured based on the saved response, the output itself can't execute a process.

- Only users with sufficient site library permissions can create or edit autofill column prompts.

- The service is managed by a tenant setting in the Microsoft 365 admin center. Its availability across the tenant or to specific sites can be set by the administrator.

#### What operational factors and settings allow for effective and responsible use of autofill columns?

- If any harmful content is generated that is unacceptable to users, either the tenant admin or Microsoft support can turn off this feature at the site or tenant level.

- A **Send feedback** link is provided in the user interface. Feedback is monitored, reviewed, and appropriate actions taken as needed, including in some cases updating the product experience.
