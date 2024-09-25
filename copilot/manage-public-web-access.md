---
title: Data, privacy, and security for web queries in Microsoft 365 Copilot and Microsoft Copilot
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 09/25/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
description: "Learn how to manage Microsoft 365 Copilot and Microsoft 365 access to web content for your organization."
---

# Data, privacy, and security for web queries in Microsoft 365 Copilot and Microsoft Copilot

Microsoft 365 Copilot chat and [Microsoft Copilot](/copilot/overview) chat have an optional feature that allows Copilot to reference web content when responding to user prompts. Allowing Microsoft 365 Copilot and Microsoft Copilot to reference web content improves the quality of Copilot responses by grounding them in the latest information from the web (referred to as "web grounding").

## Web grounding

When web grounding is enabled, Microsoft 365 Copilot and Microsoft Copilot may fetch information from the Bing search service when information from the web will help provide a better, more grounded response. Admin controls and a user-level web content plugin toggle (only for Microsoft 365 Copilot) are available to [manage whether web grounding is enabled](#controls-available-to-manage-web-grounding) in your environment.

### How web grounding works

When web grounding is enabled, Microsoft 365 Copilot and Microsoft Copilot parse the user’s prompt and identifies terms where web grounding would improve the quality of the response. Based on these terms, Copilot generates a search query that it sends to the Bing search service asking for more information.

This generated search query is different from the user’s original prompt—it consists of a few words informed by the user’s prompt. When using Microsoft 365 Copilot, the generated query won't include the entirety of a Microsoft 365 documents associated with the prompt. However, it may also be informed by data within a Microsoft 365 document under the following conditions:

- When a user enters a prompt into Copilot inside an Office application (for example, writing a prompt into Copilot in Microsoft Word while a relevant document is open).

- When the user explicitly references a specific document in their prompt (for example, asking Copilot about a specific document from copilot.cloud.microsoft).

The following information isn't included in the generated query sent to the Bing search service:

- The user's entire prompt, unless the prompt is very short (for example, "local weather")

- Entire Microsoft 365 files (for example, emails or documents) or files uploaded into Copilot

- Entire web pages or PDFs summarized by Copilot in Microsoft Edge (only for Microsoft Copilot)

- Any identifying information based on the user's Microsoft Entra ID (for example, username, domain, or tenant ID)

> [!NOTE]
> We’re making some improvements to web search query transparency in the near future. For more information, see
[Introducing web search query transparency for Microsoft 365 Copilot and Microsoft Copilot](https://techcommunity.microsoft.com/t5/microsoft-365-copilot/introducing-web-search-query-transparency-for-microsoft-365/ba-p/4253080).

The user's prompts and Copilot's responses are stored within Microsoft 365 and never leave the service boundary for both Microsoft 365 Copilot and Microsoft Copilot.

After Microsoft 365 Copilot and Microsoft Copilot receive additional information from the Bing search service, this information is used to compose the response returned to the user.

When a Microsoft 365 Copilot user submits their prompt with the web content plugin toggle (that is, web grounding) turned on, they may receive two separate responses:

1. If resources are found within Microsoft 365, the user will see:
    - **From your company's resources, emails, Teams messages, etc.**

2. If resources are found outside of Microsoft 365, the user will see:
    - **From the web:**

The user can see results from both. Additionally, if the results are from the web only, the user will see the same **From the web:** heading.

### Examples of generated search queries

The following table provides multiple examples of a user's prompt and the generated search queries sent to Bing. It also explains how Microsoft 365 Copilot and Microsoft Copilot formulate a response. Brackets indicate placeholders for specific information referenced by the user or inferred by Copilot.

> [!NOTE]
> Unlike with Microsoft 365 Copilot, users can't invoke organizational content like files, emails, or chats, when prompting in Microsoft Copilot chat. For examples of purely web-based user prompts for Microsoft Copilot, see [Generated search queries](/copilot/privacy-and-protections#generated-search-queries).

| User prompt                                                                                   | Generated search queries                                                               | How Copilot provides a response                                                                                                                                                                                                                                                                                                               |
|-----------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Who is my manager and what public information is available about them?                        | [Manager name]                                                                         | Copilot will find the name of the user's manager from Microsoft 365 data. It will then generate a Bing search query based on their name to see what information about them is available on the web.                                                                                                                                            |
| I'm looking for a document authored last week by [coworker].                                  | None                                                                                   | Copilot will return documents by [coworker] found in Microsoft 365 data. No web queries are generated.                                                                                                                                                                                                                                        |
| We're considering a possible acquisition of Fabrikam. Summarize financial information about the company, including their business strategy. | Fabrikam strategy<br>Fabrikam financials                                               | Copilot will return a response with two sections. One is headlined "From your company's data" that references information the user has access to in Microsoft 365. The other is headlined "From the web," which includes any publicly available information.                                                                                    |
| What decision did [coworker] make about shipping our Contoso product?                        | [Coworker name] decision about shipping Contoso product                                | Copilot will return a response based on information the user has access to in Microsoft 365.<br>Because there's no relevant information available on the web, Copilot doesn't include information from the web in the response.                                                                                                              |
| Summarize [internal strategy document about clean energy] and tell me if Fabrikam has publicly announced a similar approach. | Fabrikam clean energy policy announcements                                              | The user explicitly includes a reference to a specific document in Microsoft 365. Copilot reasons over this document and identifies "clean energy policy" as a major theme. "Clean energy policy" is added to the generated search query sent to the Bing search service (the document itself isn't included).<br>Copilot then takes web results returned from Bing and identifies any similarities between this public information and the strategy described in the internal document. |

### How Microsoft handles generated queries

Microsoft 365 Copilot and Microsoft Copilot both use generated search queries sent to the Bing search service to ground responses in web data. The way Microsoft handles these queries is identical in both services.

Generated search queries sent to the Bing search service have the user and tenant identifiers removed. They aren't shared with advertisers. Also, web grounding queries sent to Bing do **not** impact any of the following:

- Search Ranking
- Answers or features like Rich Captions
- Social features like Auto Suggest, Trending, and Zero Input

The Bing search service operates separately from Microsoft 365 and has different data-handling practices. The use of Bing is covered by the [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement) between each user and Microsoft, together with the [Microsoft Privacy Statement](https://www.microsoft.com/privacy/privacystatement). The [Microsoft Products and Services Data Protection Addendum (DPA)](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) doesn't apply to the use of web content plugin in Microsoft 365 Copilot, Microsoft Copilot, or the Bing search service.

## Controls available to manage web grounding

To manage web grounding so it aligns with organizational policies, user preferences, and security considerations, two distinct controls are introduced: one for IT Administrators and another for end-users (only for Microsoft 365 Copilot).

### IT administrator control for both Microsoft 365 Copilot and Microsoft Copilot

Web grounding in both Microsoft 365 Copilot and Microsoft Copilot is part of optional connected experiences for Microsoft 365. The [privacy setting for optional connected experiences](/microsoft-365-apps/privacy/manage-privacy-controls#policy-setting-for-optional-connected-experiences) allows IT admins to either enable or disable web grounding for users or user groups across the tenant they manage in accordance with their organization’s policies, data privacy laws, or other regulatory requirements. This applies to both Microsoft 365 Copilot and Microsoft Copilot.

If optional connected experiences, and thereby web grounding, are enabled, Microsoft 365 Copilot users within the tenant can choose for themselves whether to enable or disable web grounding using the web content plugin toggle. The web content plugin toggle isn't available as part of the Microsoft Copilot user experience.

When optional connected experiences are disabled for users or user groups by an IT admin, web grounding is disabled in Microsoft 365 Copilot and Microsoft Copilot for those users within the tenant. This setting would override a Microsoft 365 Copilot user’s selection with the web content plugin toggle, and they can't override this setting.

Disabling optional connected experiences restricts Microsoft Copilot, Microsoft 365 Copilot, and multiple experiences across Microsoft 365.

> [!NOTE]
> - For subscription plans that don’t include Microsoft 365 apps, the privacy setting for optional connected experiences doesn’t apply, and there is no option to manage the use of web content.
> - The privacy setting for optional connected experiences replaces the **Allow Copilot to improve responses with web content** control in the Microsoft 365 admin center previously used to manage web content in Microsoft 365 Copilot.

### End user toggle (only for Microsoft 365 Copilot)

The web content plugin end user toggle offers individual control over whether or not they want real-time web content in Microsoft 365 Copilot responses based on their personal preference. The end user toggle is only available as part of work chat in Microsoft 365 Copilot.

If optional connected experiences are enabled, this setting is enabled by default. When enabled, the user will receive responses grounded in real-time web content. If the IT admin has disabled optional connected experiences, this option isn't available to the Microsoft 365 Copilot user as part of work chat and web grounding is disabled.

If a Microsoft 365 Copilot user disables the web content plugin in work chat, web content isn't included in Copilot responses.

Microsoft 365 Copilot users can manage web grounding in work chat by following these steps:

1. Select the plugin menu at the bottom right of the chat input box in Microsoft 365 Copilot when using work chat.

   :::image type="content" source="media/copilot-prompt-box.png" alt-text="Image showing a cursor pointing to the plugin menu in the chat input box in Microsoft 365 Copilot.":::

2. Disable the web content plugin.

   :::image type="content" source="media/copilot-web-toggle.png" alt-text="Image showing a cursor pointing to the web content plugin toggle enabled.":::
