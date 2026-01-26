---
title: Customize Microsoft 365 Copilot with Copilot Tuning
description: Get an overview of the process to create a fine-tuned model with Copilot Tuning to customize Microsoft 365 Copilot for your organization.
author: lauragra
ms.author: lauragra
manager: calvind
ms.date: 10/27/2025
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.reviewer: calvind
---

# Customize Microsoft 365 Copilot with Copilot Tuning

Microsoft 365 Copilot Tuning enables organizations to tailor AI models to reflect their unique terminology, communication style, and business processes. By fine-tuning large language models (LLMs) with your own data, you can improve the accuracy, tone, and relevance of Copilot responses across your tenant.

Copilot Tuning goes beyond retention and retrieval to train tenant-specific LLMs on your organization's data while maintaining robust enterprise security, compliance, governance, and management controls. The LLMs are tuned for specific tasks like summarization, document generation, and expert Q&A.

This article describes the process for training and tuning models to customize Microsoft 365 Copilot for your organization.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## Tuning process overview

Using Copilot Tuning to create fine-tuned AI models for your organization involves the following training and tuning steps:

- **Domain-specific adaptation** trains your LLM by processing the organizational data you ingest into Copilot.
- **Supervised fine-tuning** adapts your model to specific tasks by training it on input-output pairs.
- **Reinforcement learning** helps your model to adopt your organization's style, tone, and preferences to further optimize Copilot responses.

> [!NOTE]
> The models that you tune are private. Your data isn't used to train general models for other tenants. All processing of your data is done in a tenant that only authorized users have access to, and specific individuals, typically administrators, have control over the training process.

### Domain-specific adaptation

Domain-specific adaptation occurs after your corpora is ingested. This adaptation involves processing the organization's content from its original format into a plain text format with one statement per line. This format ensures that the AI model doesn't have references to the original data.

During domain-specific adaptation, models are pretrained with a large corpus of unlabeled data from your organization to provide domain knowledge to your tenant's LLM. Unlike supervised fine-tuning, which involves teaching the model to give precise and accurate answers, domain-specific adaptation trains the model to be aware of the types of data within your organization and respond appropriately.

Domain adaptation enriches the model's understanding of your business domain to help Copilot understand the type of work you do. This enables Copilot to retrieve relevant knowledge quickly, rather than learning or taking multiple steps to retrieve a model during prompt engineering.

Client-side prompt engineering can further improve the results. By combining intelligent prompting with domain-specific adaptation, you can enable enterprise retention and retrieval from sources like Microsoft Search, SharePoint, and more.

### Supervised fine-tuning

Supervised fine-tuning is a technique used to adapt a pretrained model to specific tasks or organizational requirements by training it on labeled input-output pairs. This process helps the model learn to produce responses that align with your organization's preferred formats, tone, and compliance needs. Supervised fine-tuning:

- Teaches structure and tone - Models learn how to respond in ways that reflect your organization's voice.
- Improves task accuracy - By training on high-quality examples, the model becomes more reliable for enterprise use cases.
- Supports compliance - You can train models to recognize and respond to regulatory language and internal classifications.

Supervised fine-tuning is useful when you need the model to:

- Follow a specific Q&A format.
- Reflect your company's legal or HR communication style.
- Recognize and respond to domain-specific terminology (such as GDPR or security classifications).

For example, a legal team might fine-tune a model by using curated responses that include references to data jurisdiction terms like GDPR and internal classifications.

```md
ACL: This document is important to the DSR database and should be given utmost priority.
ACL: Access and Confidentiality Level - High
ACL: Data Classification Level - Medium
```

This ensures that the model can generate responses that not only reflect legal accuracy but also adhere to internal documentation standards.

Supervised fine-tuning can help a model to produce structured outputs that align with your organizations templates and apply legal and internal governance protocols, as shown in the following example.

**Prompt:** What security protections should be applied to this document?

**Response:** This document contains sensitive and privileged information related to legal and compliance matters. It requires encryption, access controls, and regular audits to prevent unauthorized access. Senior management must approve any changes to access controls.

Supervised fine-tuning can also help to ensure that responses are accurate and aligned with the organization's tone, as shown in the following example.

**Prompt:** How many vacation hours can an employee accrue before the total is capped?

**Response:** The maximum vacation balance is capped at 200 hours. Once this limit is reached, employees stop accruing more hours. We encourage taking time off regularly to maintain a healthy work-life balance. For more details, contact your supervisor or HR.

### Reinforcement learning

Reinforcement learning is a post-training technique that helps tailor LLMs to your organization's unique communication style, tone, and tool usage preferences. Unlike supervised fine-tuning, which teaches the model to produce correct outputs from labeled examples, reinforcement learning optimizes for subjective qualities by learning from feedback signals.

Reinforcement learning is helpful when you want your model to:

- Reflect a specific tone of voice (empathetic, formal, concise).
- Prefer certain tools (such as Microsoft Graph APIs over RAG-based retrieval).
- Avoid retrieving content from sensitive sources (like ACL-tagged documents).
- Learn from user feedback to continuously improve.

Reinforcement learning refines the model by scoring output based on organizational preferences, using both human and automated feedback to guide learning. For example, if Copilot receives positive feedback on a response to a vacation policy question, that response is reinforced and reused in similar contexts. Conversely, if a response is flagged for tone or content, the model learns to avoid that pattern.

## Advanced adaptation and maintenance

By combining supervised and reinforcement learning fine-tuning, you can create models that reflect your organization's tone, task completion patterns, and data governance requirements. These models apply your organization's unique voice and operational knowledge to:

- Maintain consistent tone and formatting across tasks.
- Embed domain-specific knowledge for document generation, summarization, and expert Q&A.
- Respect access controls and data classification policies during training and inference.
- Generate accurate responses aligned with your internal standards and user expectations.

You might encounter some challenges when tuning your model. For example, finding sufficient, high-quality labeled data for training can pose a challenge. You can create simulated data by using models like ChatGPT to generate reference output. You also want to ensure that your training data is sufficiently diverse. Your training data should cover a broad range of use cases to cover real-world scenarios and mitigate potential bias.

To best ensure model quality and compliance:

- Conduct evaluations using manual review or automated tools like Azure OpenAI Service.
- Monitor for overfitting by testing on unseen inputs and adjusting learning rates as needed.
- Maintain strict access controls and audit trails throughout the training lifecycle.

All evaluations are confidential and governed by Microsoft's Responsible AI principles.

You can continue to evolve your model by:

- Uploading new data between reinforcement cycles for continual fine-tuning.
- Applying prompt engineering to adapt to new task types or regulatory changes.
- Using Copilot Studio's low-code tools to deploy and manage agents based on your fine-tuned models.

## Related content

- [Copilot Tuning overview](copilot-tuning-overview.md)
- [Copilot Tuning admin guide](copilot-tuning-admin-guide.md)
