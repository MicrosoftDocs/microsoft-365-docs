---
title: "Microsoft 365 Copilot overview"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/20/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
description: "Learn about how Microsoft 365 Copilot works."
---

# Microsoft 365 Copilot overview

[Microsoft 365 Copilot](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot) is an AI-powered productivity tool that coordinates large language models (LLMs), content in Microsoft Graph, and the Microsoft 365 apps that you use every day, such as Word, Excel, PowerPoint, Outlook, Teams, and others. This integration provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.

Microsoft 365 Copilot uses a combination of LLMs, a type of artificial intelligence (AI) algorithm that uses deep learning techniques and vast data sets to understand, summarize, predict, and generate content. These LLMs include pre-trained models, such as Generative Pre-Trained Transformers (GPT) like GPT-4, designed to excel in these tasks.

## Copilot integration with Graph and Microsoft 365 Apps

[Microsoft 365 Copilot](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is a sophisticated processing and orchestration engine that provides AI-powered productivity capabilities by coordinating the following components:

- Large language models (LLMs)

- Content in Microsoft Graph, such as emails, chats, and documents that you have permission to access.

- The Microsoft 365 apps that you use every day, such as Word and PowerPoint.

Microsoft 365 apps (such as Word, Excel, PowerPoint, Outlook, Teams, and Loop) operate with Copilot to support users in the context of their work. Some of these features are detailed in the following table:

| **Microsoft 365 App** | **Feature**                    | **Description**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|-----------------------|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Word                  | Draft with Copilot             | Generate text with and without formatting in new or existing documents                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|                       | Chat                           | Create content, summarize, ask questions about your document, and do light commanding via Chat.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| PowerPoint            | Draft with Copilot             | Create from Prompt or File, leveraging enterprise templates. Integration with DALL-E, OpenAI’s image generator, also allows users to ask Copilot to create custom images.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                       | Chat                           | Summary, Q&A, ChatGPT integration.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|                       | Light commanding               | Add slides, pictures, or make deck-wide text changes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Loop                  | Collaborative content creation | Create content that can be collaboratively improved through direct editing or refinement by Copilot.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Outlook               | Coaching tips                  | Get coaching tips and suggestions on clarity, sentiment, and tone, along with an overall message assessment and suggestions for improvement.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|                       | Summarize                      | Summarize an email thread to help the user quickly understand the discussion. It can draft and suggest replies to email.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|                       | Leverage content               | Pull from other emails or content across Microsoft 365 that user already has access to.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Teams                 | Chat                           | Users can invoke Copilot in any chat. Copilot can summarize up to 30 days of the chat content prior to the last message in a given chat. Copilot uses only the single chat thread as source content for responses and cannot reference other chats or data types (e.g., meeting transcripts, emails, files). Users can interact with Copilot by selecting prewritten prompts or writing their own questions. Responses include clickable citations that direct users to the relevant source content that was used. Conversations with Copilot take place in a side panel that allows users to copy and paste. Copilot conversations are ephemeral and will disappear after the side panel is closed. |
|                       | Meetings                       | Users can invoke Copilot in meetings or calls within the same tenant. Copilot will use the transcript in real-time to answer questions from the user. It only uses the transcript and knows the name of the user typing the question. The user can type any question or use pre-determined prompts; however, Copilot will only answer questions related to the meeting conversation from the transcript. The user can copy/paste an answer and access Copilot after the meeting ends on the Recap page. Copilot interaction history with the user is kept for 24hrs.                                                                                                                                 |
|                       | Business Chat                  | Allows users to access data across their Microsoft 365 Graph and leverage LLM functionality. Business chat can be accessed in Teams and when signed-in to Bing with an active directory account.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|                       | Whiteboard                     | Makes meetings and brainstorm sessions more creative and effective. Use natural language to ask Copilot to generate ideas, organize ideas into themes, create designs that bring ideas to life and summarize whiteboard content.                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| OneNote               | Draft with Copilot             | Use prompts to draft plans, generate ideas, create lists, and organize information to help you easily find what you need.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |

To learn more about what's possible with Microsoft 365 Apps and Copilot, check out [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot).

## How does Microsoft 365 Copilot work?

Microsoft 365 Copilot capabilities that users see in Microsoft 365 Apps and other surfaces appear as intelligent features, functionality, and prompting capability. Our foundation LLMs and proprietary Microsoft technologies work together in an underlying system that helps you securely access, use, and manage your organizational data.

- **Microsoft 365 Apps** (such as Word, Excel, PowerPoint, Outlook, Teams, and Loop) operate with Microsoft 365 Copilot to support users in the context of their work. For example, Copilot in Word is designed to assist users specifically in the process of creating, understanding, and editing documents. In a similar way, Copilot in the other apps helps users in the context of their work within those apps.

- **Chat** enables Microsoft 365 Copilot users to leverage cross-app intelligence, simplifying their workflow across multiple apps. Chat uses the power of the foundation LLMs, a user's organizational data, and a user's apps to generate a response. Chat is available in a range of experiences, including Teams (chat), Bing, Microsoft Edge, and the Microsoft 365 app.

- **Microsoft Graph** has long been fundamental to Microsoft 365. It includes information about the relationships between users, activities, and your organization’s data. The Microsoft Graph API brings more context from customer signals into the prompt, such as information from emails, chats, documents, and meetings. For more information, see [Overview of Microsoft Graph](/graph/overview) and [Major services and features in Microsoft Graph](/graph/overview-major-services).

- **Semantic Index** for Copilot uses multiple LLMs that sit on top of Microsoft Graph to interpret user queries and produce sophisticated, meaningful, and multilingual responses that help you to be more productive. It allows you to search quickly through billions of vectors (mathematical representations of features or attributes) to help connect you with relevant and actionable information in your organization. For more information on Semantic Index for Copilot, [review this video](https://www.youtube.com/watch?v=KtsVRCsdvoU).

The following diagram provides a visual representation of how Microsoft 365 Copilot works.

:::image type="content" source="media/microsoft-365-copilot-architecture.jpg" alt-text="Diagram that shows the relationship among the components of Microsoft 365 Copilot, such as Microsoft Graph and LLM." lightbox="media/microsoft-365-copilot-architecture.jpg":::

Here's an explanation of how Microsoft 365 Copilot works:

- Copilot receives an input prompt from a user in an app, such as Word or PowerPoint.

- Copilot then pre-processes the input prompt through an approach called grounding, which improves the specificity of the prompt, to help you get answers that are relevant and actionable to your specific task. The prompt can include text from input files or other content discovered by Copilot, and Copilot sends this prompt to the LLM for processing. Copilot only accesses data that an individual user has existing access to, based on, for example, existing Microsoft 365 role-based access controls.

- Copilot takes the response from the LLM and post-processes it. This post-processing includes other grounding calls to Microsoft Graph, responsible AI checks, security, compliance and privacy reviews, and command generation.

- Copilot returns the response to the app, where the user can review and assess the response.

Microsoft 365 Copilot iteratively processes and orchestrates these sophisticated services to help produce results that are relevant to your organization because they're contextually based on your organizational data.

## Semantic Index

The Semantic Index for Copilot is a separate index or map of your user and company data— identifying relationships and connections. It works with Copilot and the Microsoft Graph to create a sophisticated map of all data and content in your organization to enable Microsoft 365 Copilot to deliver personalized, relevant, and actionable responses. The Semantic Index is part of the Microsoft 365 service and is created automatically. Although you can’t disable the index, you can exclude files and folders from it.

:::image type="content" source="media/semantic-index-for-copilot.png" alt-text="Diagram that shows the relationship among the components of Semantic Index, graph connectors, and Microsoft 365 Copilot.":::
  
For example, when you ask it about the “Q2 Sales Report,” it doesn’t simply look for documents with those words in the file name or body. Instead, it understands that “sales reports are produced by Vittorio on the finance team and created in Excel.” And it uses that conceptual understanding to determine your intent to help you find what you need.

As illustrated below, the Semantic Index for Copilot is critical to getting relevant, actionable responses to prompts in Microsoft 365 Copilot (and it enhances enterprise search results users – whether or not they use Copilot).

:::image type="content" source="media/compare-semantic-index-for-copilot.png" alt-text="Diagram that compares the difference in search with Semantic Index.":::

Microsoft 365, the Microsoft Graph, and the Semantic Index for Copilot enable an unprecedented expressiveness for search, chat, and Copilots leveraging Microsoft 365 data. This expressiveness is foundational to surface the right grounding data to get the most out of Microsoft 365 Copilot with your organizational data. To learn more about how to manage this, check out these resources:

- [How to prepare for Microsoft 365 Copilot](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/how-to-prepare-for-microsoft-365-copilot/ba-p/3851566)

- [Get started with Copilot in Microsoft 365](microsoft-365-copilot-setup.md)

- [Microsoft 365 Copilot adoption site](https://adoption.microsoft.com/copilot/)

## Availability

Microsoft 365 Copilot is currently available only through the Microsoft 365 Copilot [Early Access Program](https://www.microsoft.com/microsoft-365/blog/2023/05/09/introducing-the-microsoft-365-copilot-early-access-program-and-new-capabilities-in-copilot/) (EAP), an invitation-only, worldwide preview.

The Semantic Index will begin rolling out later this year.

If you aren’t in the Microsoft 365 Copilot EAP, you can still start [preparing your organization for Copilot](microsoft-365-copilot-setup.md).

## Additional resources

You can learn more about Microsoft 365 Copilot by reviewing these resources:

- [Data, Privacy, and Security for Microsoft 365 Copilot](/DeployOffice/privacy/microsoft-365-copilot#how-does-microsoft-365-copilot-work)

- [The Copilot System: Explained by Microsoft](https://www.youtube.com/watch?v=E5g20qmeKpg) 

- [Semantic Index for Copilot: Explained by Microsoft](https://www.youtube.com/watch?v=KtsVRCsdvoU)

- [How Microsoft 365 Copilot works](https://www.youtube.com/watch?v=B2-8wrF9Okc)

- [How to get ready for Microsoft 365 Copilot](https://aka.ms/M365CopilotAdmin)

- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)

You can also stay up to date on the latest Copilot features, changes, and announcements using the [Message center](/microsoft-365/admin/manage/message-center) in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MessageCenter).
