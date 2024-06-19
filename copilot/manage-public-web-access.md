---
title: Data, privacy, and security for web queries in Copilot for Microsoft 365
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/31/2023
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
description: "Learn how to manage Microsoft Copilot for Microsoft 365 access to web content for your organization."
---

# Data, privacy, and security for web queries in Copilot for Microsoft 365

Copilot for Microsoft 365 chat has an optional feature that allows Copilot to reference web content when responding to user prompts. Allowing Copilot for Microsoft 365 to reference web content improves the quality of Copilot responses by grounding them in the latest information from the web.

## Web content plugin

When the web content plugin is enabled, Copilot for Microsoft 365 may fetch information from the Bing Search service when information from the web will help provide a better, more grounded response. This feature is automatically turned on when the user first starts using Copilot. Admin controls and user-level toggle are available to [manage whether the web content plugin is enabled](#controls-available-to-manage-the-use-of-web-content) in your environment.

### How the web content plugin works

When the web content plugin is enabled, Copilot for Microsoft 365 parses the user’s prompt and identifies terms where web grounding would improve the quality of the response. Based on these terms, Copilot generates a search query that it sends to the Bing Search service asking for more information.

This generated search query is different from the user’s original prompt—it consists of a few words informed by the user’s prompt. The generated query will not include the entirety of a Microsoft 365 documents associated with the prompt. However, it may also be informed by data within a Microsoft 365 document under the following conditions:

- When a user enters a prompt into Copilot inside an Office application (for example, writing a prompt into Copilot in Microsoft Word while a relevant document is open).

- When the user explicitly references a specific document in their prompt (for example, asking Copilot about a specific document from copilot.microsoft.com).

The following information is not included in the generated query sent to the Bing Search service:

- The user’s entire prompt, unless the prompt is very short (for example, “local weather”)

- Entire Microsoft 365 files (for example, emails or documents)

- Any identifying information based on the user’s Microsoft Entra ID (for example, username, domain, or tenant ID)

The user's prompts and Copilot's responses are stored within Microsoft 365 and never leave the service boundary.

After Copilot for Microsoft 365 receives additional information from the Bing search service, this information is used to compose the response returned to the user.

When a user submits their prompt with the web toggle turned on, they may receive two separate responses:

1. If resources are found within Microsoft 365, the user will see:
    - **From your company's resources, emails, Teams messages, etc.**

2. If resources are found outside of Microsoft 365, the user will see:
    - **From the web:**

The user can see results from both. Additionally, if the results are from the web only, the user will see the same **From the web:** heading.

### Examples of generated search queries

The table below provides multiple examples of a user's prompt and the generated search queries sent to Bing. It also explains how Copilot for Microsoft 365 formulates a response. Brackets indicate placeholders for specific information referenced by the user or inferred by Copilot.

| User prompt                                                                                   | Generated search queries                                                               | How Copilot provides a response                                                                                                                                                                                                                                                                                                               |
|-----------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Who is my manager and what public information is available about them?                        | [Manager name]                                                                         | Copilot will find the name of the user’s manager from Microsoft 365 data. It will then generate a Bing search query based on their name to see what information about them is available on the web.                                                                                                                                            |
| I’m looking for a document authored last week by [coworker].                                  | None                                                                                   | Copilot will return documents by [coworker] found in Microsoft 365 data. No web queries are generated.                                                                                                                                                                                                                                        |
| We're considering a possible acquisition of Fabrikam. Summarize financial information about the company, including their business strategy. | Fabrikam strategy<br>Fabrikam financials                                               | Copilot will return a response with two sections. One is headlined “From your company’s data” that references information the user has access to in Microsoft 365. The other is headlined “From the web,” which includes any publicly available information.                                                                                    |
| What decision did [coworker] make about shipping our Contoso product?                        | [Coworker name] decision about shipping Contoso product                                | Copilot will return a response based on information the user has access to in Microsoft 365.<br>Because there is no relevant information available on the web, Copilot does not include information from the web in the response.                                                                                                              |
| Summarize [internal strategy document about clean energy] and tell me if Fabrikam has publicly announced a similar approach. | Fabrikam clean energy policy announcements                                              | The user explicitly includes a reference to a specific document in Microsoft 365. Copilot reasons over this document and identifies “clean energy policy” as a major theme. “Clean energy policy” is added to the generated search query sent to the Bing search service (the document itself is not included).<br>Copilot then takes web results returned from Bing and identifies any similarities between this public information and the strategy described in the internal document. |

### How Microsoft handles generated queries

The web content plugin in Copilot for Microsoft 365 and [Copilot with commercial data protection](/copilot/overview) both use generated search queries sent to the Bing search service to ground responses in web data. The way Microsoft handles these queries is identical in both services.

Generated search queries sent to the Bing search service are disassociated from the user ID and tenant ID. They are not shared with advertisers.

The Bing search service operates separately from Microsoft 365 and has different data-handling practices. The use of Bing is covered by the [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement) between each user and Microsoft, together with the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement). The [Microsoft Products and Services Data Protection Addendum (DPA)](https://www.microsoft.com/licensing/docs/view/Microsoft-Products-and-Services-Data-Protection-Addendum-DPA) does not apply to the use of web content plugin in Copilot for Microsoft 365, Copilot with commercial data protection, or the Bing search service.

## Controls available to manage the use of web content

To manage this capability so it aligns with organizational policies, user preferences, and security considerations, two distinct toggles are introduced: one for IT Administrators and another for end-users.

### IT administrator toggle

This toggle allows IT admins to either enable or disable the feature across the entire tenant they manage in accordance with their organization’s policies, data privacy laws, or other regulatory requirements.

By default, this setting is enabled. When enabled, all users within the tenant can choose for themselves whether to enable or disable the web content plugin.

When disabled by an IT admin, the web content plugin is disabled for all users within the tenant, regardless of the individual user’s setting. Users can't override this setting.

IT admins can disable the web content plugin following these steps (Note that it may take up to 24 hours to reflect changes:

For Search admins and Global admins:

1. In the Microsoft 365 admin center, go to **Settings** > **Search & intelligence**.

2. On the **Configurations** page, select **Improved responses with web content in Copilot for Microsoft 365**.

3. Select **Change**.

4. Unselect the checkbox for **Allow Copilot to improve responses with web content**.

5. Select **Save**.

All admin setting updates may take up to 24 hours to reflect any changes.

:::image type="content" source="media/copilot-search-and-intelligence.png" alt-text="Screenshot showing the Search and intelligence page for configurations in the Microsoft 365 admin center." lightbox="media/copilot-search-and-intelligence.png":::

For Global admins only:

1. In the admin center, go to **Settings** > **Org settings**.

2. On the Copilot page, select **Improved responses with web content in Copilot for Microsoft 365**.

3. Select **Change**.

4. Unselect the checkbox for **Allow Copilot to improve responses with web content**.

5. Select **Save**.

:::image type="content" source="media/copilot-improved-responses.png" alt-text="Screenshot showing the improved responses toggle enabled for Copilot for Microsoft 365." lightbox="media/copilot-improved-responses.png":::

>[!NOTE]
> This method is the only way to turn off the ability of Copilot for Microsoft 365 chat experiences to access web content. The privacy controls for optional connected experiences available with Microsoft 365 Apps can’t be used.

### End user toggle

The end user toggle offers individual control over whether they want real-time web content in Copilot responses or not based on their personal preference.

By default, this setting is enabled. When enabled, the user will receive responses grounded in real-time web content. If the IT admin toggle is disabled, this option is not available to the end user.

When disabled, web content is not included in Copilot responses.

Users can turn off this feature by following these steps:

1. Select the plugin menu at the bottom right of the chat input box in Copilot for Microsoft 365.

:::image type="content" source="media/copilot-prompt-box.png" alt-text="Image showing a cursor pointing to the plugin menu in the chat input box in Copilot for Microsoft 365.":::

2. Disable the web content plugin.

:::image type="content" source="media/copilot-web-toggle.png" alt-text="Image showing a cursor pointing to the web content plugin toggle enabled.":::
