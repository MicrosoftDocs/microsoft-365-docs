---
title: "Microsoft 365 Copilot overview"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/12/2024
audience: Admin
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
description: Learn how Microsoft 365 Copilot works, how it uses Microsoft Graph to get your organization user data, and the common Copilot features in Microsoft 365 apps, like Word, Excel, PowerPoint, and Teams.
ms.custom: [copilot-learning-hub]
---

# Microsoft 365 Copilot overview

[Microsoft 365 Copilot](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot) is an AI-powered productivity tool.

It provides real-time intelligence that enables users to complete tasks more efficiently, enhance their productivity & skills, and improve their overall work experience. Users get content relevant to their tasks, like drafting, summarizing, and answering questions; all in the context of their work within their Microsoft 365 app.

Microsoft 365 Copilot:

- Coordinates large language models (LLMs). LLMs are a type of artificial intelligence (AI) algorithms that use deep learning techniques and data sets to understand, summarize, predict, and generate content.

  These LLMs include pretrained models, like Generative Pre-Trained Transformers (GPT) (like GPT-4), that are designed to excel in these tasks.

- Uses content in Microsoft Graph, like emails, chats, and documents that users have permission to access.
- Pairs with the Microsoft 365 productivity apps that you use every day, like Word, Excel, PowerPoint, Outlook, Teams, and others.

To learn more, see:

- [Your new way of working: Microsoft 365 Copilot](https://www.microsoft.com/microsoft-365/blog/2024/03/28/your-new-way-of-working-copilot-for-microsoft-365)
- [Microsoft 365 Copilot intro](https://www.microsoft.com/microsoft-365/business/copilot-for-microsoft-365)

This article describes how Microsoft 365 Copilot works, the components it uses, and the Copilot features in Microsoft 365 apps.

## How Microsoft 365 Copilot works

The following diagram provides a visual representation of how Microsoft 365 Copilot works.

:::image type="content" source="media/copilot-architecture.png" alt-text="Diagram that shows the relationship among the components of Microsoft 365 Copilot, like Microsoft Graph and LLM." lightbox="media/copilot-architecture.png":::

Let's take a look:

1. Copilot receives an input prompt from a user in a Microsoft 365 app, like Word or PowerPoint.

2. Copilot preprocesses the input prompt using **grounding**.

    Grounding improves the specificity of your prompt, and helps you get answers that are relevant and actionable to your specific task. The prompt can include text from input files or other content Copilot discovers.

    Copilot only accesses data that an individual user is authorized to access, based on, for example, existing Microsoft 365 role-based access controls. Copilot doesn't access data that the user doesn't have permission to access.

    To learn more, see [Data stored about user interactions with Microsoft 365 Copilot](microsoft-365-copilot-privacy.md#data-stored-about-user-interactions-with-microsoft-365-copilot).

3. Copilot sends the grounded prompt to the LLM. The LLM uses the prompt to generate a response that is contextually relevant to the user's task.

4. Copilot takes this response from the LLM and post-processes it.

5. This post-processing includes more grounding calls to Microsoft Graph, responsible AI checks, security, compliance and privacy reviews, and command generation.

Copilot returns the response to the app, where the user can review and assess the response.

The user's prompt and Copilot's response to that prompt is the **content of interactions**. The record of those interactions is in the user's Copilot interaction history. So, users can review and reuse their previous prompts.

## Copilot works with Microsoft 365 apps, Graph, and LLMs

Copilot has intelligent features, functionality, and prompting. These features are designed to help users in the context of their work within their Microsoft 365 apps.

Microsoft's LLMs and other components work together. They help users securely access and use your organizational data with AI-powered capabilities. Specifically, Microsoft 365 Copilot uses the following components:

✅ **Microsoft 365 apps**

Apps like Word, Excel, PowerPoint, Outlook, Teams, and Loop work with Copilot to support users in the context of their work. For example, Copilot in Word helps users create, understand, and edit documents.

For more features, see [Copilot features in Microsoft 365 apps](#copilot-features-in-microsoft-365-apps) (in this article).

✅ **Graph-grounded chat**

With Graph-grounded chat, you can draft content, review what you missed, and get answers to questions using open-ended prompts. This information is securely grounded in your work data.

You can use Graph-grounded Copilot in Microsoft Teams, at [Microsoft365.com](https://www.microsoft365.com/), and at [copilot.microsoft.com](https://copilot.microsoft.com/).

✅ **Microsoft Graph**

Microsoft Graph includes information about the relationships between users, activities, and your organization's data. The Microsoft Graph API brings more context from customer signals into the prompt, like information from emails, chats, documents, and meetings.

To learn more, see [Overview of Microsoft Graph](/graph/overview) and [Major services and features in Microsoft Graph](/graph/overview-major-services).

✅ **Semantic index**

Semantic index is generated from content in [Microsoft Graph](https://developer.microsoft.com/graph). It helps create contextually relevant responses to user prompts. It allows organizations to search through billions of vectors (mathematical representations of features or attributes) and return related results.

To learn more, see [Semantic index for Copilot](/microsoftsearch/semantic-index-for-copilot).

## Copilot features in Microsoft 365 apps

Microsoft 365 productivity apps (like Word, Excel, PowerPoint, Outlook, Teams, loop, and more) work with Copilot to support users in the context of their work.

> [!TIP]
> To learn how users can use Copilot within Microsoft 365 apps, including sample prompts, see [Copilot Lab](https://copilot.cloud.microsoft/prompts).

Some of these features include:

| Microsoft 365 App | Feature |
|---|---|
| **Word** | **Draft**—Generate text with and without formatting in new or existing documents. Word files can also be used for grounding data. <br/><br/> **Chat**—Create content, summarize, ask questions about your document, and do light commanding. |
| **PowerPoint** | **Draft**—Create a new presentation from a prompt or Word file using enterprise templates. PowerPoint files can also be used for grounding data. <br/><br/> **Chat**—Summary and Q&A <br/><br/> **Light commanding**—Add slides, pictures, or make deck-wide formatting changes. |
| **Excel** | **Draft**—Get suggestions for formulas, chart types, and insights about data in your spreadsheet. |
| **Loop** | **Collaborative content creation**—Create content that can be collaboratively improved through direct editing. |
| **Outlook** | **Coaching tips**—Get coaching tips and suggestions on clarity, sentiment, & tone, and an overall message assessment and suggestions for improvement. <br/><br/> **Summarize**—Summarize an email thread to quickly understand the discussion. <br/><br/> **Draft**—Pull from other emails or content across Microsoft 365 that the user already has access to. |
| **Teams** | **Chat**—Copilot can summarize up to 30 days of the chat content before the last message in a chat. <br/><br/>Copilot uses only the single chat thread as source content for responses. It can't reference other chats or data types, like meeting transcripts, emails, and files. Users can select prewritten prompts or write their own questions. Responses include clickable citations that direct users to the relevant source content that was used. <br/><br/> Conversations with Copilot take place in a side panel and allows users to copy and paste. Copilot conversations close when the side panel closes. <br/><br/> **Meetings**—Users can invoke Copilot in meetings or calls within the same tenant. Copilot uses the transcript in real-time to answer questions from the user. It only uses the transcript and knows the name of the user typing the question. <br/><br/> Users can type any question or use predetermined prompts. Copilot answers questions only related to the meeting conversation from the transcript. The user can copy/paste an answer and access Copilot after the meeting ends. <br/><br/> **Copilot**—Users access data across their Microsoft 365 Graph and use LLM functionality. Copilot can be accessed in Teams and when signed-in to Bing with an Active Directory account. <br/><br/> **Calls**—Automates important administrative tasks of a call, like capturing key points, task owners, and next steps. It supports voice over Internet Protocol (VoIP) and public switched telephone network (PSTN) calls. <br/><br/> **Whiteboard**—Use natural language to generate ideas, organize ideas into themes, create designs based on ideas, and summarize whiteboard content. |
| **OneNote** | **Draft**—Use prompts to draft plans, generate ideas, create lists, and organize information to help you find what you need. |
| **Forms** | **Draft**—Use prompts to draft questions and suggestions that help you create surveys, polls, and other forms. |

## Related content

- [Understand licensing for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md)
- [Get started with Microsoft 365 Copilot](microsoft-365-copilot-setup.md)
- [Read about Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Learn more about Copilot Lab](https://copilot.cloud.microsoft/prompts)
- Watch:

  - [Copilot system explained by Microsoft](https://www.youtube.com/watch?v=E5g20qmeKpg)
  - [Semantic Index explained by Microsoft](https://www.youtube.com/watch?v=KtsVRCsdvoU)
  - [Microsoft 365 Copilot, LLMs, and your apps](https://www.youtube.com/watch?v=B2-8wrF9Okc)
  - [Get ready for Microsoft 365 Copilot](https://aka.ms/M365CopilotAdmin)

- Stay up to date on the latest Copilot features, changes, and announcements using the [Message center](/microsoft-365/admin/manage/message-center) in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MessageCenter).
