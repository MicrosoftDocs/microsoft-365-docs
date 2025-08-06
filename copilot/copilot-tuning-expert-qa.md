---
title: Configure Copilot Tuning for expert Q&A
author: danielabom
ms.author: danielabo
manager: calvind
ms.reviewer: jwolk
ms.date: 07/16/2025
ms.topic: how-to
ms.localizationpriority: medium
description: Learn how to use Copilot Tuning to build an AI model for expert question & answer (Q&A).
---

# Configure Copilot Tuning for expert Q&A

Copilot Tuning models are designed to provide complex, domain-specific answers for user queries within your organization. These models require structured domain content and integrate with Copilot agents for interactive query processing. Explore best practices, scenarios, limitations, and requirements for effective implementation of expert question & answer (Q&A) scenarios.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## Capabilities

You can use the model maker to fine-tune a model that can complete the following capabilities:

- Acts as a special-purpose Declarative Agent trained on proprietary tenant knowledge in specialized domains (for example, telecom, tax, or human resources) that aren't available on the open web.
- Answers complex, domain-specific questions by reasoning across multiple documents and making sense of distributed content (for example, comparing regulatory implications across regions).
- Delivers context-rich, nuanced answers using a fine-tuned large-language model (LLM) trained to correlate domain-specific content across documents.
- Maintains scenario-appropriate tone, such as using an empathetic tone for HR-related responses.
- Uses the Microsoft 365 Copilot Search stack for real-time enrichment, especially for recently added or updated content.
- Preserves security and access controls by using Microsoft 365 security groups to gate model training and access.

## Limitations

The model supports various document formats, with the following specific limitations:

- Content must be stored in SharePoint and be in supported formats (.docx, .pdf, .aspx); elements like embedded images or tables aren't supported.
- Not intended for general productivity or web-wide knowledge queries; it's limited to tenant-specific content and not suitable for tasks like managing meetings or browsing general internet data.
- Depending on the snapshot time of training data, newer content must be enriched via Search.

## Prerequisites

Before you start, make sure that you have the following prerequisites in place:

1. You must have domain-specific content or documentation, such as legal playbooks, HR guidelines, technical documentation, policy manuals, or departmental procedures, that the model can use to answer questions. The content set that you use to train the model must consist of more than 20 files.
2. Configure the model agent with a Microsoft Entra ID security group or distribution list and create your own Entra ID groups to be added to the model.
3. Identify where your content is stored in SharePoint.

## Set up an expert Q&A model

Set up an **Expert Q&A model** using the Copilot Tuning model maker in Microsoft Copilot Studio.

### Model maker workflow

To set up an Expert Q&A model:

1. In Copilot Studio, select **Create a new model**, and provide the model name and description.
1. Click **Add knowledge** to add the sources your model is trained on.
1. Choose permissions. Copilot Studio checks the permissions for the selected content to ensure the security group or groups have appropriate access. Any inaccessible content isn't used during the training process.
1. Select the task type.
1. Continue to **Model instructions** to customize the behavior of your agent, like its tone, how it responds, and its primary objective. These instructions help shape how the model responds to users, so be clear and specific. For example, for legal content, you might ask for concise, professional replies.
1. Click **Prepare labeling data**. Your model is now available in the Copilot Tuning dashboard.
Once your model starts processing the knowledge sources, you'll receive an email notification within 24 hours confirming that your model is ready for training.

## Related content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
