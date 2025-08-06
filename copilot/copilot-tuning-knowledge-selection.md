---
title: Selecting knowledge for Microsoft 365 Copilot Tuning
description: Learn how to prepare and select the right knowledge sources when fine-tuning Microsoft 365 Copilot, including required document types, data limitations, and best practices.
author: msplants
ms.author: jwolk
manager: calvind
ms.topic: concept-article
ms.date: 07/17/2025
ms.localizationpriority: medium
---

# Selecting knowledge for Microsoft 365 Copilot Tuning

<!-- cSpell:ignore msplants jwolk calvind -->

[Microsoft 365 Copilot Tuning](copilot-tuning-overview.md) creates a task-specific fine-tuned model based on specific knowledge provided by the model maker. By selecting  knowledge from your company's internal documents, you enable the model to learn your unique terminology, style, and procedures.

Selecting knowledge for Copilot Tuning means identifying and preparing the right set of content from your organization that the model learns from. Knowledge selection includes gathering representative documents, examples, and instructions that capture the expertise you want the fine-tuned model to mimic. For example, a legal department could fine-tune a model on the firm's past case briefs and templates, so an agent that uses the model can draft contracts in the firm's style and terminology. The better the selected knowledge reflects your domain and task, the more the model produces relevant, high-quality results.

In this article, we introduce how to select and prepare knowledge for Copilot Tuning. You learn about the types of documents needed, how to organize them, and basic requirements (like minimum data samples and file formats). By understanding knowledge selection, you can ensure your fine-tuned model is effective and aligned with your needs.

## Preparing the right knowledge for tuning

Selecting knowledge is the first and most critical step in Copilot Tuning. You should curate a high-quality training dataset from your most relevant and authoritative content. The key is to provide examples that teach the model exactly what you expect it to do. The content you choose depends on the task type. Copilot Tuning currently supports three primary task scenarios: [expert question & answer (Q&A)](copilot-tuning-expert-qa.md), [document generation](copilot-tuning-doc-generation.md), and [document summarization](copilot-tuning-summarization.md). For each scenario, consider the following requirements:

- **Supported file formats and content:** All Copilot Tuning tasks support common text-based document formats. You can use Word documents (.doc, .docx), HTML files (.html, .aspx), Markdown files (.md), or PDF files processed by Optical Character Recognition (OCR) as source materials. You can also include Excel documents (.xls, .xlsx) for expert Q&A. The tuning process ingests the text content from these files. It doesn't learn from images, embedded tables, or other non-text elements in the documents. Ensure that the important information in your training documents is in textual form. For example, if a filePDF contains a chart, include a textual explanation of that chart's insights in the document.

- **Number of documents:** You must provide more than 20 samples (documents for Q&A and summarization; input-output pairs for document generation) to Copilot Tuning. Usually hundreds or thousands of samples is ideal, and you can provide a maximum of 10k. The quality of samples is more important than raw quantity. We highly suggest you focus you data preparation time on finding as many high quality samples that are well-aligned with what you expect your fine-tuned model to do.

- **Model instructions:** During the model configuration process, Copilot Tuning asks the model maker to provide answers to a series of model instructions to guide the system on how to use the knowledge you selected. Each task type has its own questions about the selected knowledge source. Prepare clear, structured answers to each question. Expert Q&A requires a description of the data in the knowledge source and how it's organized. Document generation requires you to specify how the original input, changes, and output draft document are referred to in your organization. Summarization requires you to specify how to refer to the summaries. It's important that this information is clear and accurately represents your data in order for the system to be most effective.

## Limitations and considerations

While Copilot Tuning is powerful, there are important limitations and considerations to keep in mind when selecting knowledge for fine-tuning.

- **Text-only understanding:** The fine-tuning process only learns from textual content in your documents. The model doesn't understand information in images, diagrams, scanned PDFs, or other non-text formats. Similarly, complex formatting like detailed tables or embedded spreadsheets might not translate into the model's training. The text might be read, but the structural meaning could be lost. Make sure any crucial data is expressed in plain text form in the training materials or in the supplementary instructions. For example, instead of expecting the model to learn a procedure from a flowchart image, write out the steps from that flowchart in text.

- **Content scope and model capacity:** Large documents might be truncated or need to be broken into parts. Underlying models have context length limits when learning patterns. If you have lengthy files (dozens of pages), consider whether all that content is needed for tuning. It might be better to train on multiple smaller, focused documents than one large file. Ensure your examples concentrate on the relevant portions to the target task. Irrelevant or extraneous text in training data can confuse the model. At the same time, avoid training data that is too brief or insufficient.

- **Static snapshot of knowledge:** The fine-tuned model represents a snapshot of the knowledge at the time of training. It doesn't automatically update if your source documents change or new documents are added. For example, if you fine-tune a model on a policy manual and that manual gets revised next quarter, the model will still reflect the old policy until you retrain it with the new information. This behavior is different from the standard Copilot behavior, which uses retrieval-augmented generation to search live data at query time. Fine-tuning trades real-time updating for deeper learned expertise. You should plan to retrain (or at least evaluate) the model periodically or when significant changes in your domain occur.

    > [!IMPORTANT]
    > Changes to document permissions after training don't affect the model immediately. If someone loses access to a source file after the model was trained, the model might still include knowledge from that file. As an admin, you might need to regulate model access or retrain if necessary to comply with any evolving access policies.

By understanding these limitations, you can better plan your knowledge selection and set correct expectations for the tuned model. Mitigate the limitations by providing good data and maintaining the model over time.

## Overhead and maintenance

Implementing Copilot Tuning does introduce some overhead in terms of effort and ongoing maintenance, which is manageable with proper planning.

- **Initial effort to prepare data:** The most labor-intensive part is collecting and organizing the training knowledge. Plan to spend time finding suitable documents and reformatting or annotating them. For example, removing any sensitive sections that shouldn't be in the training, or writing the structured change instructions. You might also need to coordinate with colleagues (for example, domain experts who know which documents are the best examples). This upfront effort is crucial—better preparation leads to far less frustration later. Treat it as an investment in creating your expert dataset.

- **Iteration and evaluation:** Fine-tuning is often an iterative process. The first model version might not be perfect. After the model is trained, spend time testing it with realistic prompts. Have subject matter experts evaluate the outputs. You might discover that the model is weak on a certain subtopic or format. In that case, go back and add a few more training examples or refine your instructions, then retrain. Build in time for at least one or two refinement cycles. Each cycle means a bit more data prep and another training run.

## Related content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
- [Introducing Microsoft 365 Copilot Tuning (Microsoft 365 Blog)](https://www.microsoft.com/microsoft-365/blog/2025/05/19/introducing-microsoft-365-copilot-tuning-multi-agent-orchestration-and-more-from-microsoft-build-2025/)
