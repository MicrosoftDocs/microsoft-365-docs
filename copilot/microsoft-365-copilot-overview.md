---
title: "Microsoft Copilot for Microsoft 365 overview"
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
- essentials-overview
description: "Learn about how Microsoft Copilot for Microsoft 365 works."
---

# Microsoft Copilot for Microsoft 365 overview

[Microsoft Copilot for Microsoft 365](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot) is an AI-powered productivity tool that coordinates large language models (LLMs), content in Microsoft Graph, and the Microsoft 365 apps that you use every day, such as Word, Excel, PowerPoint, Outlook, Teams, and others. This integration provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.

Copilot for Microsoft 365 uses a combination of LLMs, a type of artificial intelligence (AI) algorithm that uses deep learning techniques and vast data sets to understand, summarize, predict, and generate content. These LLMs include pre-trained models, such as Generative Pre-Trained Transformers (GPT) like GPT-4, designed to excel in these tasks.

## Copilot integration with Graph and Microsoft 365 Apps

[Microsoft Copilot for Microsoft 365](https://www.microsoft.com/microsoft-365/blog/2023/03/16/introducing-microsoft-365-copilot-a-whole-new-way-to-work/) is a sophisticated processing and orchestration engine that provides AI-powered productivity capabilities by coordinating the following components:

- Large language models (LLMs)

- Content in Microsoft Graph, such as emails, chats, and documents that you have permission to access.

- The Microsoft 365 apps that you use every day, such as Word and PowerPoint.

Microsoft 365 apps (such as Word, Excel, PowerPoint, Outlook, Teams, loop, and more) operate with Copilot to support users in the context of their work. Some of these features are detailed in the following table:

| Microsoft 365 App | Feature | Description |
|-----------------------|--------------------------------|---------------------------------------------------------|
| Word                  | Draft with Copilot             | Generate text with and without formatting in new or existing documents. Word files can also be used for grounding data |
|                       | Chat                           | Create content, summarize, ask questions about your document, and do light commanding via Chat. |
| PowerPoint            | Draft with Copilot             | Create a new presentation from a prompt or Word file, leveraging enterprise templates. PowerPoint files can also be used for grounding data |
|                       | Chat                           | Summary and Q&A |
|                       | Light commanding               | Add slides, pictures, or make deck-wide formatting changes. |
| Loop                  | Collaborative content creation | Create content that can be collaboratively improved through direct editing or refinement by Copilot. |
| Outlook               | Coaching tips                  | Get coaching tips and suggestions on clarity, sentiment, and tone, along with an overall message assessment and suggestions for improvement. |
|                       | Summarize                      | Summarize an email thread to help the user quickly understand the discussion. |
|                       | Draft with Copilot             | Pull from other emails or content across Microsoft 365 that the user already has access to. |
| Teams                 | Chat                           | Users can invoke Copilot in any chat. Copilot can summarize up to 30 days of the chat content prior to the last message in a given chat. Copilot uses only the single chat thread as source content for responses and can't reference other chats or data types (for example, meeting transcripts, emails, and files). Users can interact with Copilot by selecting pre-written prompts or writing their own questions. Responses include clickable citations that direct users to the relevant source content that was used. Conversations with Copilot take place in a side panel that allows users to copy and paste. Copilot conversations will disappear after the side panel is closed. |
|                       | Meetings                       | Users can invoke Copilot in meetings or calls within the same tenant. Copilot will use the transcript in real-time to answer questions from the user. It only uses the transcript and knows the name of the user typing the question. The user can type any question or use pre-determined prompts; however, Copilot will only answer questions related to the meeting conversation from the transcript. The user can copy/paste an answer and access Copilot after the meeting ends on the Recap page. |
|                       | Copilot                  | Allows users to access data across their Microsoft 365 Graph and leverage LLM functionality. Copilot can be accessed in Teams and when signed-in to Bing with an active directory account. |
|                       | Calls                  | Copilot in Teams Phone uses the power of AI to empower you to work more flexibly and intelligently, automating important administrative tasks of a call, such as capturing key points, task owners, and next steps, so you can stay focused on the discussion. Copilot in Teams Phone supports both voice over Internet Protocol (VoIP) and public switched telephone network (PSTN) calls.  |
|                       | Whiteboard                     | Makes meetings and brainstorm sessions more creative and effective. Use natural language to ask Copilot to generate ideas, organize ideas into themes, create designs that bring ideas to life and summarize whiteboard content. |
| OneNote               | Draft with Copilot             | Use prompts to draft plans, generate ideas, create lists, and organize information to help you easily find what you need.  |

To learn more about what's possible with Microsoft 365 Apps and Copilot, check out [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot).

## How does Microsoft Copilot for Microsoft 365 work?

Microsoft Copilot for Microsoft 365 capabilities that users see in Microsoft 365 Apps and other surfaces appear as intelligent features, functionality, and prompting capability. Our foundation LLMs and proprietary Microsoft technologies work together in an underlying system that helps you securely access, use, and manage your organizational data.

- **Microsoft 365 Apps** (such as Word, Excel, PowerPoint, Outlook, Teams, and Loop) operate with Copilot for Microsoft 365 to support users in the context of their work. For example, Copilot in Word is designed to assist users specifically in the process of creating, understanding, and editing documents. In a similar way, Copilot in the other apps helps users in the context of their work within those apps.

- **Microsoft Copilot with Graph-grounded chat** enables you to bring your work content and context to Microsoft Copilot's chat capabilities. With Graph-grounded chat, you can draft content, catch up on what you missed, and get answers to questions via open-ended prompts— all securely grounded in your work data. Use Graph-grounded Copilot at many surfaces, including within Microsoft Teams, at [Microsoft365.com](https://www.microsoft365.com/), and at [copilot.microsoft.com](https://copilot.microsoft.com/).

- **Microsoft Graph** has long been fundamental to Microsoft 365. It includes information about the relationships between users, activities, and your organization’s data. The Microsoft Graph API brings more context from customer signals into the prompt, such as information from emails, chats, documents, and meetings. For more information, see [Overview of Microsoft Graph](/graph/overview) and [Major services and features in Microsoft Graph](/graph/overview-major-services).

- **Semantic Index** for Copilot uses multiple LLMs that sit on top of Microsoft Graph to interpret user queries and produce sophisticated, meaningful, and multilingual responses that help you to be more productive. It allows you to search quickly through billions of vectors (mathematical representations of features or attributes) to help connect you with relevant and actionable information in your organization. For more information, see the [Semantic Index for Copilot article](https://aka.ms/SemanticIndex/Whitepaper)

The following diagram provides a visual representation of how Microsoft Copilot for Microsoft 365 works.

:::image type="content" source="media/copilot-architecture.png" alt-text="Diagram that shows the relationship among the components of Microsoft Copilot for Microsoft 365, such as Microsoft Graph and LLM." lightbox="media/copilot-architecture.png":::

Here's an explanation of how Microsoft Copilot for Microsoft 365 works:

- Copilot receives an input prompt from a user in an app, such as Word or PowerPoint.

- Copilot then pre-processes the input prompt through an approach called grounding, which improves the specificity of the prompt, to help you get answers that are relevant and actionable to your specific task. The prompt can include text from input files or other content discovered by Copilot, and Copilot sends this prompt to the LLM for processing. Copilot only accesses data that an individual user has existing access to, based on, for example, existing Microsoft 365 role-based access controls.

- Copilot takes the response from the LLM and post-processes it. This post-processing includes other grounding calls to Microsoft Graph, responsible AI checks, security, compliance and privacy reviews, and command generation.

- Copilot returns the response to the app, where the user can review and assess the response.

Microsoft Copilot for Microsoft 365 iteratively processes and orchestrates these sophisticated services to help produce results that are relevant to your organization because they're contextually based on your organizational data.

## Semantic Index

The semantic index brings a whole new world of understanding to your data in Microsoft 365. Through enhanced interactions with your individual and company data via the Microsoft Graph, and the creation of a new index, the semantic index is an improvement to Microsoft 365 search that lays the foundation for the next generation of Search and Copilot experiences. The semantic index respects security and policies in the Microsoft Graph so that when a user issues a query either directly via search or in Microsoft Copilot, it's always in the security context of the user, and only content that a user has access to is returned.

To learn more, see [Semantic Index for Copilot](/MicrosoftSearch/semantic-index-for-copilot).

## Availability

Copilot for Microsoft 365 is an add-on plan with the following licensing prerequisites:

- Microsoft 365 E5
- Microsoft 365 E3
- Office 365 E3  
- Office 365 E5
- Microsoft 365 A5 for faculty
- Microsoft 365 A3 for faculty
- Office 365 A5 for faculty
- Office 365 A3 for faculty
- Microsoft 365 Business Standard
- Microsoft 365 Business Premium

You can use the [Microsoft Copilot for Microsoft 365 setup guide](https://admin.microsoft.com/Adminportal/Home?Q=learndocs#/modernonboarding/microsoft365copilotsetupguide) in the Microsoft 365 admin center to assign the required licenses to users. For more information, see [Assign licenses to users in the Microsoft 365 admin center](/microsoft-365/admin/manage/assign-licenses-to-users) and [Microsoft Copilot for Microsoft 365 requirements](microsoft-365-copilot-requirements.md).

## Additional resources

You can learn more about Microsoft Copilot for Microsoft 365 by reviewing these resources:

- [Data, Privacy, and Security for Microsoft Copilot for Microsoft 365](microsoft-365-copilot-privacy.md)

- [The Copilot System: Explained by Microsoft](https://www.youtube.com/watch?v=E5g20qmeKpg) 

- [Semantic Index for Copilot: Explained by Microsoft](https://www.youtube.com/watch?v=KtsVRCsdvoU)

- [How Microsoft Copilot for Microsoft 365 works](https://www.youtube.com/watch?v=B2-8wrF9Okc)

- [How to get ready for Microsoft Copilot for Microsoft 365](https://aka.ms/M365CopilotAdmin)

- [Microsoft 365 AI help and learning](https://support.microsoft.com/copilot)

You can also stay up to date on the latest Copilot features, changes, and announcements using the [Message center](/microsoft-365/admin/manage/message-center) in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MessageCenter).
