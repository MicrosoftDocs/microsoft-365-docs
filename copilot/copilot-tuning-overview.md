---
title: "Microsoft 365 Copilot Tuning Overview (preview)"
f1.keywords:
ms.author: lauragra
author: lauragra
manager: calvind
ms.date: 05/19/2025
audience: Admin
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- magic-ai-copilot
description: "Learn how to use Microsoft 365 Copilot Tuning to create task-specific fine-tuned LLMs based on your tenant data."
---

# Microsoft 365 Copilot Tuning overview (preview)

> [!NOTE]
> Copilot Tuning is in prerelease and is not yet publicly available. The features described in this content are subject to change.

Microsoft 365 Copilot Tuning allows organizations to fine-tune large language models (LLMs) by using their own tenant data. These fine-tuned models power [agents](/microsoft-365-copilot/extensibility/overview-declarative-agent) that can perform domain-specific tasks based on the organization's unique knowledge. All training and AI processing happens within your Microsoft 365 tenant, so your data remains secure and governed by your existing compliance controls. The result is an AI assistant that behaves like an expert team member, providing tailored assistance in line with your organization's content and rules.

This article explains how organizations can use Copilot Tuning to create task-specific fine-tuned LLMs, how users can build agents on these fine-tuned models, and how IT administrators can govern the feature.


> [!VIDEO https://learn-video.azurefd.net/vod/player?id=7b2cdaf2-fb86-421d-9932-8a2b02cbdbc5]

## Key capabilities and scenarios

Copilot Tuning allows for fine-tuning of LLMs through an intuitive no-code UI. Business analysts or subject-matter experts can use their domain knowledge to fine-tune LLMs on relevant tenant data, allowing the model to learn their unique voice and procedures that are custom to the organization. For example, a legal department analyst can fine-tune a model using the firm's past case briefs and templates to create a contract drafting agent that writes documents using the firm's unique style and terminology.

Copilot Tuning provides the following key capabilities and benefits:

- **No-code model fine-tuning** - Fine-tune LLMs on internal data by using an intuitive interface in Microsoft Copilot Studio.

- **Domain-specific agents** - Build specialized Copilot agents based on the fine-tuned models that are tailored to business tasks. You can create agents for scenarios like expert Q&A, proposal generation, or report summarization that behave like an expert in that domain. The agent produces results with the appropriate tone, vocabulary, and level of detail for the organization.

- **More intuitive insights and automation** - Encoding your organization's business know-how into Copilot enables analysis and content creation tuned to your organization. Tasks that might take days of manual effort (searching documents, compiling data, writing drafts) can be done in minutes by the agent. This allows your analysts and subject-matter experts to focus on higher-value work while Copilot handles routine or information-heavy tasks.

- **Integration with data sources** - Copilot Tuning can use the rich content already in your Microsoft 365 ecosystem. You select knowledge sources; the model then learns from this tenant data to ensure that the agent's responses are grounded in the organization's information. Because Copilot is integrated with Microsoft Graph, the agent can also reason over live enterprise data, giving you a powerful tool to query and summarize up-to-date information from Microsoft 365.

Your organization can use Copilot Tuning for the following scenarios:

- **Q&A** - Create domain-specialized agents that understand and reason over tenant-specific content—such as regulations, tax codes, or scientific reports—across formats like .docx, .pdf, and .html. Tuned to reflect the organization's tone, terminology, and compliance language, Q&A agents provide clause-aware answers, summaries, and cross-document comparisons (for example, regulatory differences across regions). These agents are optimized for stable, text-heavy content in deep domain-driven workflows where precision and context matter.

- **Document generation** - Train the model on document templates and past reports to generate first drafts of complex documents that would otherwise require multiple prompts and model outputs. For example, you can create a Proposal Writer agent that assembles sales proposals or drafts legal contracts in the company-approved format and tone.

- **Summarization** - Generate high-quality, structured summaries of complex documents that reflect your organization's tone, formatting, and content priorities. Ideal for high-volume or high stakes use cases like legal, regulatory, or executive reporting, summarization agents ensure consistency, reduce manual effort, and adapt to your preferred summary style. Train your LLM with example pairs to produce summaries that are clear, actionable, and aligned with your internal standards.

## Fine-tune the LLM

To successfully produce a task-specific agent that captures your organization's expertise, you need to fine-tune the LLM.

Apply the following best practices to tune the LLM:

- **Start with clear objectives** - Identify a high-value task to ensure that the agent delivers tangible outcomes and that you focus your time, data, and effort on work that drives a meaningful return. Copilot Tuning currently supports three primary task types: expert Q&A, document generation, and document summarization.

- **Curate quality training data** - Gather the most relevant and up-to-date documents for the task. The effectiveness of fine-tuning depends on good data. Use authoritative sources such as policy documents, proprietary reports, approved templates, and finalized deliverables that reflect your organization's standards, format, and decision logic.

    For tasks like document generation or summarization, provide high-quality input/output pairs to help the model learn structure, tone, and content expectations.

- **Define clear instructions and constraints** - When configuring the model in Copilot Studio, you can input instructions for the agent's tone and behavior. Provide clear guidelines; for example, "Use a professional and friendly tone" or "Only use information from official 2023 policy manual." You can also supply starter prompts or example questions to steer the model's responses. These help the agent understand context and style.

- **Use preview and evaluation tools** - Copilot Tuning includes evaluation steps. After your model is trained, test it with sample queries or tasks. Copilot Studio allows you to compare test results against baseline answers. Review the outputs to ensure that they meet your expectations for accuracy and tone. If they don't, refine your training data or instructions and retrain.

- **Iterate with feedback** - Treat fine-tuning as an iterative process. Monitor how the agent performs in use. Regularly update the model with new data or corrections to keep it accurate. For example, if policies change or you notice opportunities for further refinement, incorporate those updates and run another fine-tuning round.

- **Know when to use Copilot vs. fine-tuning** - If your scenario is broad or the information changes daily, using Copilot's Retrieval Augmented Generation (RAG), which searches your content at query time, might be sufficient. Fine-tuning works best for well-defined, repetitive tasks where the model needs a deep understanding of static content or a particular style. If your task depends on general reference or lightweight synthesis, start with Copilot. If the output needs to reflect your organization's specific voice, structure, or reasoning - especially for repeatable, high-value tasks - that's a signal to invest in fine-tuning. 

## Use agents tuned on LLMs

After you fine-tune the model, users can create and deploy an agent based on that model by using Copilot Studio agent builder.

Users interact with agents based on fine-tuned models just like they interact with Copilot - either via the Microsoft 365 Copilot app or Copilot Chat in Teams or another app. They can ask natural language questions, and the agent responds based on its fine-tuned knowledge.

Agents based on fine-tuned models provide the following benefits to your organization:

- **Increased productivity** - Agents act as intelligent assistants in daily work. Users can get instant answers or generate content based on their organization's data. Users can also complete tasks faster by relying on agents to generate summaries, analyze data, draft communications, and more.

- **Consistency and accuracy** - Agent responses based on a fine-tuned model are consistent with organizational data. This reduces the risk of errors due to outdated documents or external search engines.

- **Solution creation** - Copilot Tuning empowers users to create AI-powered solutions to solve their specific productivity needs. This fosters a culture of innovation in the organization.

- **Improved collaboration** - Agents provide a way to make organizational expertise available to all users. This helps to remove knowledge silos in the organization and increase information sharing and collaboration.

Apply the following best practices when creating agents based on fine-tuned models:

- **Understand the model's scope** - What data and task is the agent based on? Was it trained on HR documents up to 2022? Is it meant only for summarizing certain reports? Knowing the scope helps you ask the right questions and not expect it to do unrelated tasks.

- **Provide clear prompts** - When interacting with the agent, ask clear, specific questions. Though the model is fine-tuned, well-phrased queries yield better results. For example, instead of asking "Tell me about benefits", ask "What is the maternity leave policy for full-time employees?" Fine-tuned agents can handle complex queries, but clarity helps it provides more precise information.

- **Include starter prompts** - Starter prompts are displayed in the agent UI and help users understand the agent's capabilities. Tailor your starter prompts to the key scenarios for your fine-tuned agent to help users take full advantage of the agent's knowledge.

- **Refine and iterate** - Agents based on fine-tuned models support multi-turn conversations. If the agent's response isn't exactly what you need, refine your prompt or ask follow-up questions. The fine-tuned agent uses the follow-up questions to adjust its response.

- **Apply security best practices** - Don't ask fine-tuned agents to provide information that should be confidential, and handle agent responses in accordance with your organization's policies.

- **Provide feedback to further tune agents** - Use the feedback mechanism to train or tweak the fine-tuned agent to improve its performance. Providing regular feedback helps the agent to continuously improve. In Copilot, users can choose the thumbs-up and thumbs-down icons to submit feedback on the agent's responses. This feedback is sent to Microsoft and helps the product team identify common issues and improve model performance over time.

## Admin settings and governance

Copilot Tuning provides tenant-wide settings, security, and governance features to enable admins to set up the environment with the appropriate guardrails in place.

The following key admin features are available for Copilot Tuning:

- **Access control** - AI admins can enable Copilot Tuning for their organization or for a specific subset of users. For example, an admin might enable Copilot Tuning only for the R&D and Legal departments, and designate certain users in those teams to create fine-tuned models and specialized agents. After a model is trained and deployed, the AI admin controls who has access to the trained model.

- **Microsoft 365 admin center governance** - Admins can monitor fine-tuning projects and agents via the Copilot management section in the Microsoft 365 admin center. They can view which custom models are deployed and delete a model if it becomes obsolete.

- **Security and compliance** - Copilot Tuning is built with enterprise-grade security. Model training occurs in a tenant-isolated environment, and the resulting model inherits the access permissions of the underlying data. No customer data is transmitted to external services during training; the fine-tuning happens within the secure cloud associated with your tenant.
  
    Copilot Tuning excludes any files that the security group or groups applied to the model don't have permissions to access. It also suggests security groups to add to its training data to maximize its knowledge. This provides an extra layer of security for the model. 

    > [!NOTE]
    > When you fine-tune a model, the model weights are adjusted based on the training data. Changes to access permissions on the training data aren't automatically applied to the model; AI admins need to update the permissions on the model in the Microsoft 365 admin center.

    Any Microsoft Graph data returned in Copilot responses also honors document permissions; responses won't include information a user doesn't have access to. 

- **Deployment and monitoring** - When a model is fine-tuned and deployed, builders can use it in  an agent and share the agent with users in the organization who have access to the model. Admins can control who has access to the agent via security groups, and can monitor agent usage via Copilot usage analytics dashboards.

## Disclaimer

The AI administrator is responsible for ensuring that your use of this product complies with all applicable data protection, privacy, and intellectual property laws. This includes meeting your obligations as a Data Controller under regulations such as the GDPR or CCPA.

### Data Controller Obligations

- You are responsible for how data is collected, stored, and used within your tenant environment.
- You must ensure that your data practices meet legal requirements for transparency, consent, access, and deletion.
- You are responsible for verifying the accuracy, appropriateness, and compliance of any outputs generated from this system before using them. May require reviewing with the subject matter experts.

### Copyright and Model Training

- If you choose to train a custom model using your own data, you must ensure that you have the appropriate rights or licenses for any copyrighted materials included in the training set.
- Copyright protection will not apply to models trained using unauthorized copyrighted content. You assume full responsibility for any such use.

### Data Deletion

- If a user whose data has been used in training a model submits a valid deletion request under GDPR (or similar regulations), you will be required to retrain the model.
- When you fine-tune a model, the model weights are adjusted based on the training data. You have the option to delete the fine-tuned model at any time.

## Related content

- [Agents for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/agents-overview)
- [Build agents with Copilot Studio agent builder](/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build)
- [Copilot Studio overview](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio)
