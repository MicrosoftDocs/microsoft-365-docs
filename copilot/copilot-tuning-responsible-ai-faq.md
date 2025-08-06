---
title: Responsible AI FAQ for Microsoft 365 Copilot Tuning
f1.keywords:
ms.author: emrek
author: emrekiciman
manager: calvind
ms.date: 06/17/2025
audience: Admin
ms.topic: faq
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
- trust-pod
description: Get answers to frequently asked questions about responsible AI and Microsoft 365 Copilot Tuning
---

# Responsible AI FAQ for Microsoft 365 Copilot Tuning

<!-- cSpell:ignore calvind emrek emrekiciman pretrained -->

This FAQ article helps answer questions about the responsible use of AI in [Microsoft 365 Copilot Tuning](copilot-tuning-overview.md).

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## What is Microsoft 365 Copilot Tuning?

Copilot Tuning is a service that enhances the customization of Microsoft 365 Copilot and agents by fine-tuning models on tenant-specific data. With the capabilities provided by Copilot Tuning, organizations can use their proprietary data to improve the relevance and accuracy of AI-generated outputs. This fine-tuning ensures that the models understand and adhere to the unique terminology, workflows, and business processes of the organization.

Copilot Tuning enables the orchestration of custom workflows, allowing for the automation of complex business processes. By fine-tuning models on organizational data, Copilot agents can perform high-value tasks such as document generation, improved question answering, summarization, and others. These tasks are performed within the security and compliance boundaries of Microsoft 365.

## What are the capabilities of Copilot Tuning?

The purpose of Copilot Tuning is to extend the capabilities of Microsoft 365 Copilot and agents by providing greater customization and control over AI-generated behavior and output. The fine-tuning process involves customizing a pretrained model by training it further on a specific dataset that is relevant to the desired application. This process allows the model to learn the unique terminology, workflows, and business processes of the organization, resulting in more accurate and relevant outputs.

## What are the intended uses of Copilot Tuning?

Copilot Tuning and the adaptation and fine-tuning it provides to Microsoft 365 Copilot scenarios can be used for multiple purposes. The system's intended uses include:

- To enhance question answering quality. This use case includes improving response fluency, formatting, length, organization, multi-document reasoning, and domain-specific reasoning. For example, ensuring responses follow style guidelines and incorporate relevant domain-specific logic.
- To create drafts of specialized documents in accordance with standardized workflows. This use case includes merging various precedent documents and contextual information into a draft contract or report, while adhering to preferred style, organization, and other relevant specifications.
- To summarize documents. This use case includes extracting the essential points from documents pertinent to a specific task or objective, ensuring that the outputs are accurate and relevant while adhering to a desired structure and tone.

## What should model makers consider when applying capabilities to specific tasks?

Copilot Tuning's fine-tuning and adaptation improves AI quality, but it can still occasionally make mistakes. When applying Copilot Tuning within a specific setting, customers should evaluate the quality of Copilot Tuning and its reliability for their scenario.

When using Copilot Tuning to improve question & answer scenarios, fine-tuning data should be used to tailor responses to be understandable and useful to the specific audience. In service scenarios, such as customer service or HR scenarios, we recommend that there be an escalation path to address potential mistakes.

When using Copilot Tuning to improve document generation and summarization scenarios, the generated documents or summaries must be considered drafts. A human should review the drafts for correctness.

The following use cases aren't supported:

- Using Copilot Tuning fine-tuning to circumvent other platform-level AI safety constraints. For example, fine-tuning a language model to generate toxic content.
- Uses or misuses of AI systems that could possibly result in significant adverse impact on individuals and society. Examples include consequential impacts on legal position or life opportunities, risks of physical or psychological injury, and threats to human rights.

## Are there any limitations to Copilot Tuning?

Yes. The process of integrating tenant-specific data and workflows can be complex and time-consuming, requiring close collaboration between the customer and the deployment team. Furthermore, the system's effectiveness is dependent on the quality and availability of the organization's data, and there might be regional limitations in terms of deployment and support.

## What can model makers do to improve performance or resolve errors?

While fine-tuning can teach Copilot new knowledge and skills, the AI can still make mistakes. It's important for a human to validate its output to ensure accuracy and relevance. Errors can occur due to inaccuracies in the training data, model limitations, or the complexity of the tasks being performed.

### Curate training data

Curating and controlling access to training data is essential to mitigate the potential for data poisoning attacks and/or the inclusion of harmful content. Curating data involves implementing data validation and quality control measures, and appropriate restrictions on access to modify training data. Regular audits and monitoring of the data pipeline can help identify and address any anomalies or malicious activities promptly.

### Best practices for improving performance

Preparing high-quality and comprehensive training data is critical for improving the performance of the Copilot Tuning. We recommend models be regularly updated based on new data and feedback.

## How should model makers evaluate Copilot Tuning for specific use cases?

After using Copilot Tuning to create a task-specific, organization-specific agent, we recommend customers perform an evaluation of the agent to validate that its results are effective and appropriate for the task. If the results don't meet expectations, customers can adjust their training data or modify the instructions given to Copilot Tuning and repeat the fine-tuning process to achieve the desired results.

## Related content

- [Transparency Note for Microsoft 365 Copilot](microsoft-365-copilot-transparency-note.md)
- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)
- [Microsoft AI principles](https://www.microsoft.com/ai/responsible-ai)
- [Microsoft responsible AI resources](https://www.microsoft.com/ai/responsible-ai-resources)
- [Microsoft Azure learning courses on responsible AI](/ai)
