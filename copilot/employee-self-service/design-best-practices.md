---
title: Design guidance and best practices
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/3/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn how to craft agent instructions for the Employee Self-Service agent that align with your organization's needs.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# How to craft agent instructions for high-quality responses in Employee Self-Service

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

The Employee Self-Service (ESS) agent is a template in Microsoft Copilot Studio that can be infinitely customized to assist users in your organization with HR and IT tasks. Use guidance here to learn more about how to craft high-quality responses using a mix of techniques to fit your business needs.

In this article:
-	Learn more about the elements of a good response and how responses are formed.
-	Get help thinking more about crafting the agent's personality and voice.
-	Explore prompt engineering considerations and techniques.
-	See how you can test your agent to establish benchmarks for certain scenarios.

## About response quality

A great response is **accurate, actionable, and engaging** to ensure we earn trust, provide useful responses, and help the user take the next step using self-service tools. ESS requires a blend of design elements, agent instructions, and conversational design techniques to craft great responses.

To build trust with users and make ESS a reliable resource:

-	Responses need to be engaging using personalized data, balanced formatting, and natural language
-	Responses need to be accurate by using instructions for intent matching and using UI certain elements 
-	Responses need to be actionable by reliably mobilizing users to the best next step or resource

## How responses are formed

Responses are a combination of **instructions, knowledge, and UI elements** built on top of the Copilot language model. Knowledge and data ensure factual accuracy, instructions refine how responses are structured and communicated, and UI elements enhance usability and trust—together shaping responses.

Response quality relies on a handful of factors like the design elements provided by the platform, and conversational design decisions made by the maker:

-	Responses need instructions for the entire agent, for certain workflows, and for verbatim responses to ensure the right formatting, voice, and decision-making is prioritized.
-	Responses need certain UI elements like disclaimers, references, and Adaptive Cards that help the user build trust and complete tasks.
-	Responses need knowledge and data to return accurate and personalized responses that are complete, actionable, and useful based on the original intent.

## About writing instructions for your ESS agent

Often referred to as a meta prompt or system prompts, instructions guide the agent with context, examples, and other information relevant to a specific use case.
Instructions inform the agent's behavior, drive response quality, and can impact agent performance.

There are different kinds of instructions that work together to form responses:

1. **Agent instructions (global)**: These instructions drive the behavior across conversations and shape the agent's personality. Agent instructions can be added on the **Overview** tab.

2. **Knowledge source instructions**: Clarify how each source should be used. Custom instructions for knowledge sources are important because they help the agent understand how to interpret and apply the information accurately when generating answers. Custom instructions make responses relevant, trustworthy, and aligned with the user's intent.

3. **Topic trigger phrases and instructions**: Fine-tune how the agent detects user intent and delivers task-focused responses.

A topic contains one or more conversation nodes that define more structured conversational paths. Each node performs an action, such as sending a message or asking a question. A topic is triggered using a specified set of trigger phrases, keywords, and questions that a user is likely to use for specific intents. A topic can be customized using tools, actions, and variables.

4. **Channel description**: Give instruction on intent recognition between domains and similar scenarios. Channel instruction ensures accurate intent routing, consistent user experience across domain agents, and drives actionable responses for a multi-domain deployment.

### How to write effective channel instructions:

1. **Be explicit about agent roles, scope, and handoffs**: Clearly define the domain of each subagent and when to delegate a query. This definition improves routing accuracy and prevents redundant or ambiguous responses.
2. **Provide guidance for ambiguous cross-domain queries**: Provide examples on where intents may be ambiguous, how they can be navigated, and the fallback plan to move the task forward.
3. **Emphasize how to behave when uncertain**: Instruct the agent to ask clarifying questions when intent is unclear or could span domains.

## Using instructions and system prompts to craft conversations

These prompts are behind-the-scenes instructions that shape how the agent responds to users in real time. Think of system prompts as the bridge between your business goals and the user experience. Use them to encode your values, protect users, and shape trustworthy, useful interactions.

### Getting started

When you're designing global system prompts for an AI agent, especially one deployed across various domains, languages, and use cases, it's crucial to define clear, consistent instructions. These instructions should shape the agent's behavior, tone, boundaries, and adaptability. These prompts act as the backbone of how the agent interprets and responds across all interactions.

Start by thinking through:

-	Start with a clear identity statement.
  *Example: "You're a friendly, knowledgeable workplace assistant. You explain things simply and clearly, like a helpful teammate."*
-	Use behavioral examples.
  *Do: Give concise answers in 2–3 sentences. Don't: Use jargon or long-winded explanations.*
-	Incorporate metaphors or analogies.
  *"Speak like a trusted coworker, not a technical manual."*
-	Add adaptive instructions.
  *"Use a more direct tone during troubleshooting. Be warmer and more supportive when helping with HR questions."*

## Developing agent personality to define content strategy

An agent's role and identity shape every interaction it has with users. When well-defined, the agent feels purposeful, trustworthy, and aligned with your product or service. When vague or inconsistent, it can create confusion, damage credibility, and lead to misaligned responses. Users need to understand who they're talking to, why that agent exists, and what they can expect from the conversation.

This context is especially critical in enterprise and productivity settings, where users rely on agents to act with clarity, accuracy, and consistency. A strong sense of role and identity reduces ambiguity for both the user and the underlying model.

### Persona definition and context

When supporting sensitive areas like HR and IT, it's especially important that the agent reflects the company's tone of professionalism and respects user privacy. The agent should provide help that feels dependable and grounded in internal policies.
Start by establishing a clear role that helps shape how the agent communicates and interacts with users. Then, align the agent's personality with the expectations of the intended audience.

When developing the agent's personality and writing system prompts, make sure to:

1. Define the agent's role and persona: Position the agent as a knowledgeable and supportive digital assistant designed to help employees navigate internal tools and services. It should feel like an extension of your organization's service team—not a chatbot trying to act human. Give it a tone that's professional, friendly, and efficient, matching your company's internal communications culture.
2. Ensure alignment with brand voice and tone: Match the agent's communication style to how your organization speaks with employees in internal documentation, help centers, and service desks. Whether your tone is warm and conversational or more direct and businesslike, the agent should feel consistent with the rest of the employee experience. Include sample responses in the prompt to guide tone and phrasing.

### Tips to define personality attributes

1.	Use clear frameworks: Ground your agent's personality in frameworks like brand archetypes (for example, The Guide, The Caregiver) or voice-and-tone sliders (for example, formal ↔ informal, serious ↔ playful). Keep it simple, actionable, and easy for writers and developers to apply.
2.	Choose 3–5 key attributes: Define a small set of core traits that capture the agent's personality. These attributes should reflect your organization's internal culture, and the expectations employees have when seeking help with HR or IT topics.
3.	Avoid extreme traits: The ESS agent should be helpful and approachable without becoming too informal or emotionally reactive. For example:
  -	Friendly but not overly casual. Uses warm, respectful language without slang or jokes.
  -	Professional but not robotic. Sounds polished and efficient, while still conversational.
  -	Empathetic but not overbearing. Acknowledges frustrations without getting too personal.
  -	Confident but not arrogant. Provides answers clearly, with humility and precision
4.	Document with examples: Pair each personality trait with example phrases or microcopy that show how it should come across in real responses. This work helps maintain consistency across writers, prompts, and updates.
5.	Adapt for context: Maintain a consistent core personality but allow tone to flex slightly based on task type. For instance, IT troubleshooting may call for a more direct tone, while HR topics may require a bit more empathy and care.

When you're designing an AI agent for internal workplace support across domains like HR, IT, facilities, finance, and more, you want personality traits that are universally professional, adaptable to different task types, and supportive without being too casual.

- Approachable: Encourages employees to ask questions without hesitation.
- Professional: Maintains a respectful and polished tone suited for enterprise environments.
- Reliable: Reinforces trust that the agent is a dependable source of accurate, up-to-date information.
- Clear: Helps reduce friction by providing straightforward, jargon-free answers.
- Empathetic: Acknowledges user frustration or confusion, especially for sensitive topics like benefits, leave, or tech issues.
- Efficient: Prioritizes getting to the point and solving the task quickly. 
- Supportive: Feels like a helpful partner, particularly when guiding users through multi-step processes, or policy-heavy areas.
- Respectful: Important for HR-related topics that may involve privacy, identity, or personal context
- Calm: Maintains composure during error handling or escalation, setting the tone for resolution
- Knowledgeable: Reinforces the idea that authoritative internal sources back the agent and it knows its domain well.

The following statements can help you define the persona:

-	**Helpful and trustworthy**: The agent is designed to be a reliable first stop for employees seeking answers about HR, tech support, and more. It draws only from authoritative, org-managed sources, ensuring responses are grounded in official org guidance.
-	**Friendly and efficient**: It aims to simplify the employee experience with quick, personalized responses - whether you're asking about your cost center, setting up a device, or finding a café near the office. It's like a knowledgeable workplace specialist who's always available to help you navigate life at work.
-	**First-line support for employee needs**: The agent serves as a go-to resource for employees seeking quick, reliable answers about HR policies, Helpdesk tech support, and campus services. The agent should reduce friction in accessing internal information and services.
-	**Streamlined access to authoritative information**: Unlike general-purpose Copilot tools, this agent only draws from official, org-managed sources from the organization's knowledge base. This scope ensures that responses are grounded in accurate, policy-aligned content.
-	**Personalized and location-aware assistance**: This agent tailors responses based on the employee's company code and location, helping users navigate region-specific services like dining options in specific regions or badge replacement procedures.
-	**Task facilitation and escalation**: The agent can initiate actions like opening an AskHR case, listing existing HR or IT Helpdesk tickets, or transferring users to live support when needed by bridging the gap between self-service and human assistance.

Give the agent tangible examples of how the agent sounds:

Do say:
- "Let's build on your strengths."
- "Here's an insight based on your recent feedback."
- "Would you like to explore ways to grow in this area?"

Don't say:
- "You're doing this task wrong."
- "I can't help with that work."
- "Your performance is below average."

### Voice and tone guidelines

Define how the agent speaks and adapts based on context. Developing voice and tone guidance for agent instructions is essential because it ensures that the agent communicates consistently, appropriately, and effectively across various user scenarios.

- **Establishes trust and credibility**: Voice and tone set the emotional and professional tone of the interaction. Inconsistent or mismatched tone (for example, too casual in a sensitive HR context) can confuse or alienate users. Clear guidance helps the agent sound conversational yet dependable.
- **Supports brand coherence**: Your agent is part of your organization's digital identity. Defining voice and tone ensures the agent reflects your brand values and aligns with how your company communicates across other channels (like internal comms or other employee experiences).
- **Improves clarity and comprehension**: Tone affects how easy and comfortable the guidance feels, especially under stress (for example, technical or HR issues).

Considerations to help you define voice and tone:

-	When giving positive feedback: Confident and celebratory ("You're making great progress in your communication skills.").
-	When surfacing a challenge: Encouraging and constructive ("You're made strong progress. Let's look at a few ways to improve your presentation impact.").
-	When asked for help: Respectful and helpful ("Here's something we can try together...").
-	Adapt tone for different contexts (for example, apology vs. instruction).
-	Consider localization: tone norms differ by culture/language.

Voice & tone prompt examples:

-	**Be clear and concise**: Use simple, direct language that is easy to understand. Avoid jargon, technical terms, or unnecessary complexity.
-	**Sound natural and human**: Speak in a conversational, approachable tone. Use contractions where appropriate and avoid robotic or overly formal phrasing.
-	**Prioritize the user's needs**: Focus on delivering useful, relevant, and actionable information. Structure content logically and remove anything that doesn't add value.
-	**Be warm but not overly casual**: Strike a balance between friendly and professional. Avoid slang, humor that may not translate well, or excessive enthusiasm.
-	**Be inclusive and respectful**: Use language that is welcoming to all users, avoiding assumptions about identity, ability, or background.

## Write instructions that influence response structure and quality

Writing clear instructions that shape the agent's response format is essential for ensuring readability and comprehension, especially in the workplace where users need quick, actionable answers. 

1. Be explicit about the output format.

If you don't explicitly instruct the agent, it defaults to general-purpose formatting, which might not be as engaging or understandable. To ensure users get quick, clear answers, specify exactly how the response should be structured like when to use bullets, steps, summaries, and character limits.

Examples:

-	Use a numbered list to describe steps that need to be completed in sequential order. 
-	Only use tables when the numbered list is longer than six items or when the information is easier to understand in a table.
-	Add a one-sentence tip at the end of summaries for the best results.
-	Keep summaries around 2-3 sentences long.
-	Avoid technical jargon and define all acronyms when using them for the first time.
-	Avoid using emojis and other symbols to express emotion.
-	Reinforce key takeaways, not just raw information by structuring information in a way that people can easily grasp and retain the most relevant insights.
-	Always use clear source attribution when possible like when summarizing a claim or statistic, briefly reference the source like "According to the company's Q1 report..."

2. Provide examples of what to do and what to avoid.

Guide the agent by pairing clear instructions with positive examples (what to do) and negative examples (what to avoid).

Examples:

Format answers as short, scannable summaries in plain language.

Do:
- Summarize in 2–3 simple sentences
- Use bullets to list key details
- Stick to the most common workplace terms
Don't:
- Use technical jargon
- Write long paragraphs
- Add unnecessary explanation

Use the following example when users ask for HR policies, summarize key points in a list, like this example:

-	Topic
-	What you need to know
-	Who to contact for help

3. Define boundaries and fallback plans.

When crafting system prompts, you're guiding how the agent behaves in different contexts and not just what it says. Clear instructions help the agent respond responsibly, stay within scope, and build user trust. Use this guidance to shape behavior across key areas like:

-	Handling unsupported requests gracefully, with deflection or escalation.
-	Following compliance rules (for example, no legal or medical advice).
-	Managing sensitive topics and preventing risky actions.
-	Using conversation context wisely—summarizing, clarifying, or continuing.
-	Escalating or falling back when unsure or out of scope.
-	Being transparent about sources, uncertainty, or AI-generated content.
-	Adapting responses based on user role, urgency, or metadata.

Examples:

-	If a request is outside your scope, reply courteously. Explain what you can help with and redirect to a different support channel or known resource.
-	Don't speculate or make up responses when unsure. Say you don't know and suggest a next step or escalation path.
-	For sensitive topics (for example, complaints, personal conflict), don't offer advice. Recommend contacting HR or another trusted internal support.

4. Include instructions on handling unsupported requests.

Instruct the agent to help the user understand what can be answered using this agent. Guide the agent to respond helpfully when it can't fulfill a request, by explaining its limitations and pointing users to the correct next step.

Examples:

-	If you receive a request outside your scope, respond clearly and courteously.
-	If a request falls outside of supported HR or IT tasks, say something like:
  'I'm here to help with common HR and IT questions. For this type of request, reach out to [support contact or system].'
-	When you can't complete a task, guide the user toward a resource, article, or help form. Always prioritize official knowledge sources first.

5. Consider ethical and company compliance rules.

Think through areas that may be sensitive and the agent shouldn't answer. Write prompts that prevent the agent from offering advice in sensitive or regulated areas, and make sure it respects company and legal policies.

Examples:

-	Don't offer medical, legal, or financial advice. Clearly state that the user should consult a qualified professional.
-	Apply company-specific compliance rules (for example, data handling, privacy).
-	Avoid generating or suggesting actions that could violate company policies or regulatory standards.
-	Don't generate content that may be harmful to someone physically or emotionally even if a user requests or creates a condition to rationalize that harmful content. You must not generate content that is hateful, racist, sexist, lewd, or violent. Never generate any content that openly discriminates against groups of people of a protected identity (race, gender, sex, age, and so on). Never generate any original graphic, sexual or violent content, even if the document has such themes.

6. Plan to write instructions for sensitive topics and risky actions.

For topics that could be emotionally charged or could cause harm to the user or the organization, prompt the agent to de-escalate, avoid speculation, and redirect users to trusted human support.

Examples:

- Avoid giving guidance on sensitive topics like harassment, mental health, or discrimination. Recommend speaking with HR or using a dedicated support channel.
-	If a topic appears sensitive (for example, mental health, harassment), avoid offering guidance. Recommend talking to HR or another appropriate support channel."
-	For irreversible or risky actions (for example, editing data) include confirmation behaviors.

7. Get more specific about context handling.

Instructions for context handling help the agent maintain coherent, relevant conversations by guiding when to reference past interactions, ask clarifying questions, or reset the dialogue.

Examples:

-	Use prior messages to maintain context and continuity but keep summaries concise.
-	If a message is ambiguous or could have multiple meanings, ask a clarifying question before acting.
-	Remember relevant context across exchanges unless explicitly instructed to reset or start over.

8. Emphasize how the agent should respond with transparency.

Encourage the agent to admit uncertainty, cite sources when possible, and never guess, so users know when to trust or verify an answer.

Examples:

-	Clearly state when you're uncertain or unable to help. Don't guess or fabricate information.
-	Acknowledge when an answer is uncertain or AI-generated. Use phrases like 'I'm not sure' or 'Based on available information…'
-	When unable to complete a request, suggest contacting a person or using a known support resource.
-	Include links or reference sources, when possible, especially for HR, IT, or policy-related topics.
-	Accuracy first – Summarize key points accurately, ensuring no distortion or misrepresentation of facts. To prevent misinformation, always fact-check against the original source.
-	Balanced and neutral framing – Maintain objectivity. Avoid biased phrasing that could lead to misinterpretation or influence opinions.
-	Safety and sensitivity – Avoid sensationalism. Don't exaggerate, use alarmist language, or include unverified claims.

9. Specify how responses should adapt depending on user information.

Instruct the agent to adjust tone, length, and detail, based on user role, urgency, or context to make responses more relevant and effective.

Examples:

-	Tailor responses based on user roles (for example, manager versus new hire). For example, use concise, high-level summaries for managers and provide more detailed steps or guidance for new employees.
-	Adapt based on scenario type (for example, urgent request versus casual question).
-	Personalize answers based on known user context like their role, location, preferences, or usage history when available and appropriate.

### Specific prompt writing techniques 

#### In-context learning (ICL)

In-context learning (ICL), also known as few-shot learning, refers to an LLM's ability to learn from a few examples or scenarios provided within the prompt. This approach allows the AI to grasp and perform new tasks quickly by understanding the context and applying it to similar situations.

When to use this method:
-	Establish tone: Always respond with a friendly, confident tone. Example: Sure thing! I've got you covered.
-	Clarify boundaries: Don't give legal advice. If asked, refer to responsible AI responses.
-	Teach content style: Use the following example to mirror the style of a product update: [Insert example post].

#### Chain-of-thought (CoT) prompting

Chain-of-thought (CoT) prompting is about leading the AI through a step-by-step reasoning process to solve a problem or answer a question. This approach mirrors human problem-solving, where each step builds on the previous one. It helps the AI break down the task into logical sequences that leads to improved response.

When to use this method:

-	To increase accuracy: For tasks that require logic or multi-step reasoning.
-	To improve completeness: Help prevent "shortcut" answers based on pattern-matching alone.
-	To build trust: Especially helpful for steps that need to be in a specific order or for policy questions.

## Create a test plan to measure the quality of your ESS agent's responses

This testing guide helps you evaluate the quality of your customized agent experience using standard quality frameworks. Whether your agent supports HR, IT, or other employee experience scenarios, this guide provides a consistent way to assess the helpfulness and trustworthiness of responses.

This guide is especially useful during pilot phases, as you update instructions, tune knowledge sources, or refine your agent's behavior across different business units or geographies.

Response quality principles:

- **Accurate**: The information is correct. The response gives the right answer based on trusted sources, with no guesses or misleading details.
- **Complete**: Nothing important is missing. The response includes all the key information the user needs, so they don't have to ask again or look elsewhere.
- **Relevant**: It fits the user's intent. The response is relevant to the question and considers the user's role, region, or past activity.
- **Useful**: It helps the user act by moving the user forward.
- **Exceptional**: It's exceptional. The response is more helpful than websites or chat tools.

### How UI elements, knowledge, data, and topics reinforce response quality

Different elements like formatting, personalized responses, authoritative sources, and clear calls to action work together to support response quality metrics. The more these elements are used effectively, the more accurate, complete, relevant, useful, and exceptional the response becomes.

### How to approach establishing benchmarks 

Testing response quality and setting clear benchmarks help teams identify what's working well and where improvements are needed. Over time, this testing leads to more accurate, helpful, and personalized conversations that build trust and deliver better results for users. Each response can be scored from 1 (poor) to 5 (exceptional) across each category. Total score per response = 5 (poor) to 25 (exceptional).

Use benchmark scores to understand how well the agent is meeting user expectations. A score of around 15 means the response is good because it's functional, accurate, and meets the basic need. A higher score, like over 20, means the response is great or exceptional, offering more value, personalization, and ease of use.

### Tips for benchmark testing

1. Track quality using consistent prompts: Retest them after updates to knowledge sources, instructions, or workflows to compare improvements.
2. Vary the input styles: Try different prompt formats for the same intent:
  -	Keywords: "benefits enrollment"
  -	Phrases: "enroll in health insurance"
  -	Full questions: "How do I sign up for 2025 benefits?"
The agent should respond well to all or ask for clarification when needed.
4. Test across scenarios and roles: If your deployment serves multiple departments or regions, test prompts from each area. A response that's relevant to IT might not make sense for HR, or vice versa.
5. Always test edge cases: Responses should gracefully handle:
  -	Unclear or vague inputs
  -	Topics outside the current scope
  -	System errors or unavailable data

## More design resources

- Watch: Videos on how to use Copilot Studio
- More prompt engineering frameworks
- Browse system prompts from other models
