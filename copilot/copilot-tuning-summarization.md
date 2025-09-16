---
title: Configure Copilot Tuning for document summarization
author: mkbond007
ms.author: mabond
manager: dansimp
ms.audience: ITPro
ms.reviewer: robertode
ms.date: 06/17/2025
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
description: Learn how to use Copilot Tuning to build an AI model for document summarization based on organizational knowledge.
---

# Get started with Copilot Tuning summarization

<!-- cSpell:ignore rloutlaw routlaw calvind robertode -->

Copilot Tuning summarization generates high-quality summaries from complex documents presented in your organization's communication style. Summary generation rephrases complex documents and can generate consistent outputs like:

- Automated executive reports
- Business contract abstracts
- Regulatory and internal documentation

Summarization is ideal when an organization has a high volume of documents that require consistent summaries in a particular style.

You customize Copilot Tuning summarization for your enterprise through fine tuning. Copilot Tuning maintains a consistent communication style for your organization, using text-based documents and summary pairs provided as training input. It operates in a tenant-specific, isolated environment within Microsoft 365, respecting the privacy commitments for your business. User data remains isolated within your tenant, safeguarding access by other entities.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## Key capabilities

Copilot Tuning summarization creates structured summaries with the following properties:

- Extraction and rephrasing of key information based on training examples
- Maintenance of the original document structure that prioritizes key information
- Summarization in the organizational voice and style

At the heart of Copilot Tuning is a customized large language model (LLM) tailored to your organization using advanced prompt and modeling techniques. This model ensures efficient and accurate generation summaries, consistent with the organization's voice, tone, and style.

Copilot Tuning employs training approaches like few-shot, fine-tuning, and retrieval-augmented generation (RAG) for enhanced agility and precision. These models improve productivity, ensure consistency across outputs, and integration with Microsoft 365, while mitigating risks associated with domain-specific terminology and confidential data.

## Model training requirements

The model training process requires input parameters that support text-based document and summary pairs in the following formats:

- .docx
- .pdf (with selectable text)
- .aspx format

These original document and summary pairs are required for training purposes to align the generated summaries to organization communication style.

## Model training setup

Copilot Tuning summarization has a straightforward model training process:

1. Data extraction: Information is sourced from platforms such as SharePoint. Document and Summary pairs are organized into structured formats ready for supervised training.

1. Data processing: Parent, document, and target tables are used as data sources for the training library.

1. Fine-tuning: Supervised fine-tuning aligns the model with your organization's specific tone and style using the provided document and summary pairs. Validation involves checking for preservation of key information and tone, using reserved test data and performance metrics.

This training aims to reduce discrepancies between current predictions and desired outputs based on the training examples. The model is trained on the document and summary pairs using a single pass. The retrieved data is processed using an LLM to create a customized summarization model that aligns closely with the user's existing output style, allowing fast and accurate inference.

The supervised fine-tuning step considers real-world training samples, allowing it to recognize key sections of a document and produce summaries efficiently and effectively.

## Model inference

The inference for Copilot Tuning summarization enables users to submit documents through platforms like Word, SharePoint, or Teams to obtain summaries in familiar environments. When a user provides a source document, the fine-tuned model efficiently creates a concise summary in short processing time while maintaining tone and document structure.

Summary generation is prioritized to extract key sections, clauses, and the document's core meaning, reflecting what's deemed most important according to the training examples. These summaries allow users to focus on value-add activities rather than manually reviewing documents to create summaries from scratch.

Feedback from users plays a pivotal role in maintaining summary quality and allowing for continuous improvement of the model's performance.

Copilot Tuning summarization is available within Microsoft 365 apps (like Word, SharePoint, or Teams) via declarative agents in Copilot where documents are submitted to Microsoft 365 Large Language Model in Azure AI.

## Enterprise integration

Copilot Tuning summarization embraces existing user workflows within the applications they already use and supports training process to create document summaries specific to organizational use-case like meetings or business reports.

## Related content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
- [Microsoft 365 Copilot Tuning FAQ](copilot-tuning-faq.yml)
- [Create declarative agents with Copilot Studio agent builder and Microsoft 365 Copilot Tuning models](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-tuned-models).
