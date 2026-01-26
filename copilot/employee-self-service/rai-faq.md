---
title: Responsible AI FAQ for the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/05/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn how the Employee Self-Service agent uses AI.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Responsible AI FAQ for the Employee Self-Service agent

## What is Employee Self-Service?

The Employee Self-Service agent is a new set of capabilities to answer policy related questions and simplify HR and IT related tasks for faster resolution helping to improve the employee experience. The agent makes it easy for employees to:

- Retrieve the right information at the right time.
- Take actions on essential HR and IT tasks-in line without navigating to multiple tools and workspaces, including help and running diagnostics on Microsoft 365 products and services.

And while the Employee Self-Service agent is ready to go on day one, admins can further customize the agent with out-of-the-box preconfigured no-code starters for key workflows, and connectors to third-party HR or IT systems in Copilot Studio for faster Time-To-Value (TTV).

## What can Employee Self-Service do?

The Employee Self-Service agent within Microsoft 365 Copilot streamlines HR and IT tasks, providing faster resolutions and a more intuitive user experience. Key capabilities include retrieving and taking actions on HR and IT related tasks like:

- Benefits
- Starting a leave of absence
- Getting assistance for Microsoft 365 products
- Creating, retrieving, and updating IT tickets

These features empower employees to efficiently manage their tasks, enhancing their overall experience and productivity.

## What are Employee Self-Service’s intended uses?

The Employee Self-Service agent is designed to streamline and expedite various HR and IT tasks, providing faster resolutions and a more intuitive user experience. Its primary uses include:

- Retrieving and taking actions on HR and IT related queries.
- Providing quick personalized responses to employee questions
- Ensuring confidentiality in conversations
- Allowing employees to provide feedback to help shape the agent for Microsoft and its customers.

## How was Employee Self-Service evaluated? What metrics are used to measure performance?

The Employee Self-Service agent provides a topic out-of-box, which is disabled by default. This topic tries to identify queries related to:

- Discrimination
- Harassment
- Abuse
- Unethical behavior
- Retaliation
- Other sensitive issues

It responds with a predetermined response, ensuring that the LLM doesn't generate incorrect information for such queries. Your organization can define your own predetermined verbatim responses, update the topic as required, or disable the topic as required.

The Employee Self-Service agent is evaluated with manual red teaming with prompts customized for the scenarios. Microsoft evaluated more than 200 prompts for discrimination, harassment, abuse, and other sensitive use cases with zero defects identified (with default Employee Self-Service agent configuration and enabling the sensitive topic).

## What are the limitations of Employee Self-Service? How can users minimize the impact of Employee Self-Service’s limitations when using the system?

The Employee Self-Service agent relies on Microsoft Copilot Studio for processing of user queries. Microsoft Copilot Studio limitations inherently apply for Employee Self-Service as well. Refer to the Copilot Studio documentation for the protections in place for responsible AI.

## How does the emotional intelligence topic work?

Each Employee Self-Service agent starter includes the emotional intelligence (EQ) topic is included in each Employee Self-Service agent starter, which is called **Seek emotional intelligence**. This topic is designed to enhance conversations in the Employee Self-Service agent by making responses more empathetic, context-aware, and relevant for diverse audiences. This feature works by analyzing conversational context and tailoring replies to reflect emotional intelligence. The feature ensures users feel understood and valued in every interaction. The EQ topic is fully customizable and can be turned off entirely.

This topic isn't a replacement for human care or decision-making. It enhances responses to be supportive in tone, while maintaining factual accuracy and appropriate boundaries. Empathetic phrasing is used to make guidance clearer and more human, not to simulate emotional relationships. This topic doesn't infer mental health conditions, store emotional states, or use this information to profile users.

## What operational factors and settings allow for effective and responsible use of Employee Self-Service?

The Employee Self-Service agent provides authoritative responses based on the knowledge sources added and the external system solution packages configured. To provide users with authoritative responses, add appropriate knowledge sources, or configure external system solution packages.

## How do I provide feedback on Employee Self-Service?

To provide feedback on the Employee Self-Service agent, you can use the thumbs up or thumbs down buttons at the bottom of your Microsoft 365 Copilot results.

## Does the data retrieved from third-party external system solutions pass through Copilot RAI?

If the external system solution data is returned directly, such as inserting values like employee numbers into predefined starters without modification, it bypasses Copilot RAI. However, if the data is processed using a large language model (LLM) to generate a summarized or narrative response, such as explaining the meaning of a specific policy along with its value, then it goes through the summarization node. This action triggers Copilot RAI. This approach is also used for content like knowledge base articles, where the system may either return the article as-is or synthesize a concise summary using LLMs. In short, Copilot RAI is engaged only when LLM-based summarization or transformation of external system solution data is involved.

## What are plugins and how does Employee Self-Service use them?

Employee Self-Service provides out-of-box topics and external system solution packages (HR and IT connectors in the customize tab) to be used as per your business requirements. These topics can be customized as per your requirements, and you can also add your own topics.

## What data can Employee Self-Service provide to plugins? What permissions do Employee Self-Service plugins have?

Employee Self-Service doesn't provide any specific data until the point Power Platform admin configures a knowledge source, or external system solution packages. For adding SharePoint as a knowledge source, SharePoint permissions apply by default. For an external system solution package, it depends on the permissions granted by the tenant and the permissions the users have for the external system solution tools.

## What kinds of issues may arise when using Employee Self-Service enabled with plugins?

Connection failures to connected knowledge source or external system solution package may lead to access error respectively. To mitigate such errors, connection to knowledge source or external system solution package needs to be verified and corrected.
