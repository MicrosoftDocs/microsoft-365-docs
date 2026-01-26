---
title: Emotional intelligence and ambiguity in Employee Self-Service
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
description: Learn how to include Emotional intelligence, or EQ, and ambiguity in Employee Self-Service agents that align with your organization's needs.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# How emotional intelligence works in Employee Self-Service

The emotional intelligence (EQ) topic is included in each Employee Self-Service agent template and is called **Seek emotional intelligence**. This topic is designed to enhance conversations in Employee Self-Service agent by making responses more empathetic, context-aware, and relevant for diverse audiences. This topic:

- Detects emotional context in employee prompts (for example, stress, grief, frustration, uncertainty).
- Responds with empathy—validating the emotion and building trust.
- Combines empathy with actionable guidance so responses are both caring and useful.
- Provides fallback to ensure policy details and resources are always included, even when only generic empathy or wellness advice is possible.

## An example of when EQ matters:

A user prompts, "My dad passed away and I need to take time off." The EQ topic ensures the agent responds with compassion, acknowledges the loss, and provides clear steps for taking bereavement leave so it doesn't sound robotic or dismissive.

## How it works

This feature works by analyzing conversational context and tailoring replies to reflect emotional intelligence, ensuring that users feel understood and valued in every interaction. The EQ topic is fully customizable and can be turned off entirely.

1. **Trigger and detection**: Automatically activates when emotional signals appear in user messages (for example, "stressed," "urgent," "passed away").
1. **Empathetic response logic**: Starts with empathetic acknowledgment using varied phrases adapting the tone based on emotion type like: Grief or loss = Express care and sensitivity before sharing options.
1. **Boundaries**: No therapy, legal, or medical advice. Focus on actionable workplace guidance with empathy.

> [!NOTE]
> This topic isn't a replacement for human care or decision-making but rather enhances responses to be supportive in tone while maintaining factual accuracy and appropriate boundaries. Empathetic phrasing is used to make guidance clearer and more human, not to simulate emotional relationships. This topic doesn't infer mental health conditions, store emotional states, or use this information to profile users.

### Edit the EQ topic, or disable it if needed

Using the EQ topic is entirely optional, but it is recommended to deliver contextually aware responses for scenarios that may be relevant to the employee experience.

1. Go to the **Topics** tab in Copilot Studio and select the custom topic called **Seek Emotional Intelligence Response**. Here, the topic can be disabled (turned off) or edited to fit the needs of your organization.
1. To disable this topic, set the **Enabled** toggle to **Off**. Remove the topic reference and instructions from the agent **Instructions** on the **Overview** tab. Then, **Publish** changes when you're done.
1. To edit this topic, select the topic from the list and edit the **Description**, and **Variable response** strings as needed.

### Best practices for using EQ

Always test sensitive subjects or prompts that should be handled with care before releasing them broadly to users. When testing, test for signals of:

- **Emotional recognition**: Does the agent identify and respond to user emotions before providing solutions?
- **Tone calibration**: Is the response tone well-matched to the situation?
- **Supportive guidance**: Does the agent provide the appropriate level of emotional support while also solving problems?

## The ambiguity topic

The ambiguous topic is included as a custom topic in each Employee Self-Service agent template as **Seek clarification to avoid ambiguous answers**. This topic ensures the agent responds to unclear or multi-meaning prompts by asking for more details, which improves response accuracy and builds user trust. This topic:

- Detects ambiguous context in employee prompts (for example, "Find balance," "Tell me about leave," "Update my info").
- Prompts for clarification. The agent rephrases what it understood and asks targeted follow-up questions before acting.
- Provides fallback if clarification fails or intent remains unclear, ensuring the agent never guesses or delivers an irrelevant answer.

### An example of when clarification matters

A user prompts, "What's the policy?" The agent responds with something like, "Are you asking about HR policies, IT policies, or something else?" This prevents confusion and ensures the agent delivers the right help.

## How the ambiguity topic works

This topic works by automatically detecting ambiguous queries and intervening with clarification questions. The agent confirms with the user before taking any action, and provides a fallback response if intent remains unclear. The topic is always on by default but can be customized or disabled in Copilot Studio.

- **Trigger and detection**: Activates when a query is ambiguous, missing key details, or could have multiple interpretations.
- **Clarification response logic**: Rephrases the query and asks clear, targeted questions.
- **Boundaries**: No guessing or making assumptions; always confirm before acting.

### Edit the ambiguity topic, or disable it as needed

Using the Ambiguous topic is optional but recommended for delivering contextually accurate responses.

1. Go to the **Topics** tab in Copilot Studio and select the custom topic called **Seek Clarification to avoid ambiguous answers**. Here, the topic can be disabled or edited to fit your organization's needs.
1. To disable this topic, set the **Enabled** toggle to Off and remove references from agent instructions. Publish your changes when you're done.
1. To edit this topic, select the topic from the list and update the **Description** and **Variable response** strings as needed.

### Best practice for testing Ambiguous topic

Always test with real prompts that could be interpreted in multiple ways before releasing broadly. When testing, check for:

- **Early detection of ambiguity**: Does the agent flag unclear input before acting?
- **Clarifying questions**: Are follow-up questions targeted and context-aware?
- **Graceful fallback**: If clarification fails, does the agent avoid guessing and acknowledge the gap?
