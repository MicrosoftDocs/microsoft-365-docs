---
title: What is Microsoft 365 Copilot?
description: Learn about what Microsoft 365 Copilot is and the common Copilot features in Microsoft 365 apps, like Word, Excel, PowerPoint, and Teams. This article answers common questions about Copilot, including what is Copilot, how Copilot works, and the benefits of using Copilot. What is M365 Copilot?
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 02/13/2025
audience: Admin
ms.reviewer: mandia
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot overview

**Microsoft 365 Copilot is an AI-powered tool that helps with your work tasks**.

Users enter a prompt in Copilot and Copilot responds with AI-generated information. The responses are in real-time and can include internet-based content and work content that users have permission to access.

Users get content relevant to their work tasks, and in the context of the Microsoft 365 app they're using.

For example, you're an Operations Manager and are working with human resources to update job descriptions. In a Copilot prompting session, you can ask Copilot to create a job description and also add qualifications that should be included in the description. In the same prompting session, you can expand the generated job description to also create different levels, like Level 1, Level 2, and Level 3.

You can also [create and use agents](/microsoft-365-copilot/extensibility) to customize your Copilot experience with your organization's data sources. For example, you're a warehouse manager and you need to know the status of a shipment. You can ask your Copilot shipping agent "What is the status of shipment 1234?" Copilot uses your data sources to get the information and can respond with the status.

This article is for IT admins. It describes the different components that Microsoft 365 Copilot uses and the Copilot features in the Microsoft 365 apps. To learn more about the architecture and how Copilot works, see [Microsoft 365 Copilot architecture and how it works](microsoft-365-copilot-architecture.md).

This article applies to:

- Microsoft 365 Copilot

> [!TIP]
> - Home users might automatically get Microsoft Copilot, which is the free consumer version. To learn more, see [How can Copilot help you?](https://www.microsoft.com/microsoft-copilot/for-individuals) and [Welcome to Copilot on Windows](https://support.microsoft.com/windows/welcome-to-copilot-on-windows-675708af-8c16-4675-afeb-85a5a476ccb0).
> - Get sample prompts at the [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts) and training at the [Microsoft 365 Copilot Skilling Center](https://adoption.microsoft.com/copilot/skilling-center/).
> - Learn more about data privacy at [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## The technical details

:::image type="content" source="media/microsoft-365-copilot-architecture/copilot-tenant-architecture.svg" alt-text="Diagram that shows the Microsoft 365 tenant architecture with Microsoft 365 Copilot and your user data." lightbox="media/microsoft-365-copilot-architecture/copilot-tenant-architecture.svg":::

Microsoft 365 Copilot:

- Pairs with the Microsoft 365 productivity apps that you use every day, like Word, Excel, PowerPoint, Outlook, Teams, and others.

  So, you can use Copilot in Word to help create a document, in Excel to get suggestions for formulas, in Outlook to summarize an email thread, and in Teams to summarize meetings.

- Uses content in [Microsoft Graph](/graph/overview) to personalize the responses with a user's work emails, chats, and documents. Copilot only shows the data that users have permission to access.

- Coordinates large language models (LLMs). LLMs are a type of artificial intelligence (AI) algorithms. These algorithms use deep learning techniques and data sets to understand, summarize, predict, and generate content.

  The LLMs include pretrained models, like Generative Pre-Trained Transformers, like GPT-4, that are designed for these tasks. To learn more about Generative Pre-Trained Transformers (GPT), ask [Copilot](https://copilot.microsoft.com).

To learn more, see:

- [Microsoft 365 Copilot architecture and how it works](microsoft-365-copilot-architecture.md)
- [Microsoft 365 Copilot service description](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot)
- Video: [Copilot system explained by Microsoft](https://www.youtube.com/watch?v=E5g20qmeKpg)
- Video: [Microsoft 365 Copilot, LLMs, and your apps](https://www.youtube.com/watch?v=B2-8wrF9Okc)
- Video: [How to get ready for Microsoft 365 Copilot](https://aka.ms/M365CopilotAdmin)

## Copilot works with Microsoft 365 apps and Microsoft Graph

Copilot has intelligent features, functionality, and prompting. These features are designed to help users in the context of their work within their Microsoft 365 apps.

Microsoft's LLMs and other components work together. They help users securely access and use your organizational data with AI-powered capabilities. Specifically, Microsoft 365 Copilot uses the following components:

✅ **Microsoft 365 apps**

Apps like Word, Excel, PowerPoint, Outlook, Teams, and Loop work with Copilot to support users in the context of their work. For example, Copilot in Word helps users create, understand, and edit documents.

For more features, see [Copilot features in Microsoft 365 apps](#copilot-features-in-microsoft-365-apps) (in this article).

✅ **Microsoft 365 Copilot Chat**

With Microsoft 365 Copilot Chat, you can draft content, review what you missed, and get answers to questions using open-ended prompts. This information is securely grounded in your work data.

You can use Microsoft 365 Copilot Chat in Microsoft Teams, in the Microsoft 365 Copilot Chat app, at [Microsoft365.com](https://www.microsoft365.com/), and at [copilot.microsoft.com](https://copilot.microsoft.com/).

✅ **Microsoft Graph**

Microsoft Graph includes information on users, their activities, and the organization data they can access. The Microsoft Graph API brings a personalized context into the prompt, like information from a user's emails, chats, documents, and meetings.

To learn more, see [Overview of Microsoft Graph](/graph/overview) and [Major services and features in Microsoft Graph](/graph/overview-major-services).

✅ **Semantic indexing for Microsoft 365 Copilot**

Microsoft 365 Copilot enhances search relevance and accuracy by using advanced lexical and semantic understanding of Microsoft Graph data, resulting in more contextually precise information retrieval. Copilot preserves security, compliance, and privacy, ensuring organizational boundaries are respected while offering seamless user experience.

To learn more, see [Semantic indexing for Microsoft 365 Copilot](/microsoftsearch/semantic-index-for-copilot) and [Semantic Index explained by Microsoft](https://www.youtube.com/watch?v=KtsVRCsdvoU) (opens YouTube's website).

## Copilot features in Microsoft 365 apps

Microsoft 365 productivity apps (like Word, Excel, PowerPoint, Outlook, Teams, and Loop) work with Copilot to support users in the context of their work.

> [!TIP]
> To learn how users can use Copilot within Microsoft 365 apps, including sample prompts, see [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts).

Some of these features include:

| Microsoft 365 App | Feature |
|---|---|
| **Word** | **Draft**—Generate text with and without formatting in new or existing documents. Word files can also be used for grounding data. <br/><br/> **Chat**—Create content, summarize, ask questions about your document, and do light commanding. |
| **PowerPoint** | **Draft**—Create a new presentation from a prompt or Word file using enterprise templates. PowerPoint files can also be used for grounding data. <br/><br/> **Chat**—Summary and Q&A <br/><br/> **Light commanding**—Add slides, pictures, or make deck-wide formatting changes. |
| **Excel** | **Draft**—Get suggestions for formulas, chart types, and insights about data in your spreadsheet. |
| **Loop** | **Collaborative content creation**—Create content that can be collaboratively improved through direct editing. |
| **Outlook** | **Coaching tips**—Get coaching tips and suggestions on clarity, sentiment, & tone, and an overall message assessment and suggestions for improvement. <br/><br/> **Summarize**—Summarize an email thread to quickly understand the discussion. <br/><br/> **Draft**—Pull from other emails or content across Microsoft 365 that the user already has access to. |
| **Teams** | **Chat**—Copilot can summarize up to 30 days of the chat content before the last message in a chat. <br/><br/>Copilot uses only the single chat thread as source content for responses. It can't reference other chats or data types, like meeting transcripts, emails, and files. Users can select prewritten prompts or write their own questions. Responses include clickable citations that direct users to the relevant source content that was used. <br/><br/> Conversations with Copilot take place in a side panel and allows users to copy and paste. Copilot conversations close when the side panel closes. <br/><br/> **Meetings**—Users can invoke Copilot in meetings or calls within the same tenant. Copilot uses the transcript in real-time to answer questions from the user. It only uses the transcript and knows the name of the user typing the question. <br/><br/> Users can type any question or use predetermined prompts. Copilot answers questions only related to the meeting conversation from the transcript. The user can copy/paste an answer and access Copilot after the meeting ends. <br/><br/> **Copilot**—Users access data across their Microsoft 365 Graph and use LLM functionality. <br/><br/> **Calls**—Automates important administrative tasks of a call, like capturing key points, task owners, and next steps. It supports voice over Internet Protocol (VoIP) and public switched telephone network (PSTN) calls. |
| **Whiteboard** | **Draft**—Use natural language to generate ideas, organize ideas into themes, create designs based on ideas, and summarize whiteboard content. |
| **OneNote** | **Draft**—Use prompts to draft plans, generate ideas, create lists, and organize information to help you find what you need. |
| **Forms** | **Draft**—Use prompts to draft questions and suggestions that help you create surveys, polls, and other forms. |

## Microsoft 365 services that help support Copilot

In your Microsoft 365 license, there are services and features that can help you get your data and organization ready for Copilot.

- **SharePoint Advanced Management (SAM)**

  Microsoft SharePoint Premium – SharePoint Advanced Management (SAM) can help you reduce oversharing and cleanup inactive sites. These tasks help declutter Copilot's data sources and improve the quality of the responses.

  To learn more, see [Get ready for Microsoft 365 Copilot with SharePoint Advanced Management (SAM)](/sharepoint/get-ready-copilot-sharepoint-advanced-management).

- **Restricted SharePoint Search**

  Restricted SharePoint Search (RSS) RSS gives you time to review and configure the correct permissions on your SharePoint sites. You add the reviewed & corrected sites to an allowed list that Copilot can access.

  To learn more, see [Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search).

- **Microsoft Purview**

  Microsoft Purview can classify and label your data based on the sensitivity of the content. It can also help prevent unauthorized sharing or leakage and review Copilot prompts and responses.

  To learn more, see [Microsoft Purview data security and compliance protections for generative AI apps](/purview/ai-microsoft-purview).

- **Microsoft Agents**

  Agents are scoped or focused versions of Microsoft 365 Copilot that act as AI assistants and can automate business processes. For example, you can create an agent that creates help desk tickets, or a human resources agent that looks up employee info from your data source.

  To learn more, see [Microsoft 365 Copilot extensibility overview](/microsoft-365-copilot/extensibility).

More resources:

- [Compare features in the Microsoft 365 licenses that affect Copilot](microsoft-365-copilot-license-feature-overview.md)
- Get your data ready for Microsoft 365 Copilot using the [E3 license admin guide](microsoft-365-copilot-e3-guide.md) or [E5 license admin guide](microsoft-365-copilot-e5-guide.md).

## Related content

- [Get licensing info](microsoft-365-copilot-licensing.md) and [set up Microsoft 365 Copilot](microsoft-365-copilot-setup.md).
- Learn about [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).
- Get [sample prompts at the Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts) and [training at the Microsoft 365 Copilot Skilling Center](https://adoption.microsoft.com/copilot/skilling-center/).
- Stay up to date on the latest Copilot features, changes, and announcements using the [Message center](/microsoft-365/admin/manage/message-center) in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MessageCenter).
