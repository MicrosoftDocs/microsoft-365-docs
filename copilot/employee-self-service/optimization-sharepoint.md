---
title: Optimizing SharePoint content for Employee Self-Service agents
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
description: Learn the top recommendations for SharePoint knowledge sources in relation to Employee Self-Service agents.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Optimizing SharePoint content for Employee Self-Service agents

Copilot Studio grounds responses in your organization's authoritative knowledge sources and data using [configured knowledge sources](/microsoft-copilot-studio/knowledge-copilot-studio) and returns only what each user is authorized to see. Simple information architecture, clear document structure, detailed metadata, and well-governed access translate into higher quality, citation-backed answers.

Preparing SharePoint content for Copilot Studio and Employee Self-Service agent prevents oversharing, and gives employees fast, cited answers to common questions without leaving the agent they're already using.

**Who this is for**: SharePoint admins, knowledge managers, and content owners who want Employee Self-Service agents to use their SharePoint sites as authoritative knowledge sources.

- **For SharePoint admins**: Enforce least privilege access, versioning, and retention, returning only current, appropriate content.
- **For knowledge managers**: Centralize official content and label it consistently so Copilot Studio can ground answers in a single source of truth.
- **For content owners**: Write scannable, topic-focused pages with clear headings to improve retrieval and summarization quality.

## Best practices for SharePoint admins

Governance of SharePoint content ensures that Copilot delivers accurate, relevant, and compliant answers. Copilot surfaces only what users can access. Loose permissions lead to irrelevant or sensitive content appearing in responses.

### Carefully govern access to prevent oversharing

To minimize accidental content oversharing with Copilot results, it's crucial to implement best practice sharing settings. Proactive safeguards are key. To effectively prepare your organization for Copilot, set the appropriate sharing settings for end users at both the organization and site levels.

- Switch defaults to "Specific people" for [sharing links at the organizational level](/sharepoint/turn-external-sharing-on-or-off#file-and-folder-links). Hide broad-scope options like "Everyone Except External Users" in the People Picker dropdown.
- Educate site owners on access request flows and [site-level controls](/sharepoint/get-ready-copilot-sharepoint-advanced-management#step-2-ensure-all-sites-have-valid-owners) to restrict member sharing.
- Use SharePoint Advanced Management (SAM) to [audit overshared sites](/sharepoint/get-ready-copilot-sharepoint-advanced-management#use-sharepoint-advanced-management-to-get-your-organization-ready-for-copilot) and apply expiration policies for stale links.

### Apply least privilege principles

Start with a pilot by limiting Copilot Studio to well-governed, low-risk sites before scaling.

- Confirm each site has an assigned site owner.
- Trim legacy sharing.
- [Enforce multifactor authentication](/microsoft-365/admin/security-and-compliance/set-up-multi-factor-authentication) (MFA).

### Audit external connectors

Validate that only approved connectors are active and scoped correctly in Copilot Studio's knowledge settings. [Learn more about Copilot Studio security and governance](/microsoft-copilot-studio/security-and-governance).

### Honor sensitivity labels and encryption

Agent makers and users can see the highest sensitivity label applied to sources used in the agent's response and individual reference labels in the chat. Audit and govern sensitivity labels for [SharePoint and OneDrive libraries](/purview/sensitivity-labels-sharepoint-default-label) to prevent data loss and prevention. Labels classify content (for example, Confidential, Highly Confidential) and enforce encryption.

## Best practices for knowledge managers

### Make sure your SharePoint information architecture is ready

Make it obvious where official content is located and how to navigate it. Well-structured information architecture (IA) reduces ambiguity and improves information retrieval so Employee Self-Service agent can more easily identify the right sources in which to ground its responses.

- If you haven't already, model your SharePoint sites and hubs on user [mental models](/sharepoint/information-architecture-modern-experience). Plan top level (global), hub, and local navigation and consider how to align IA to common tasks, roles, and regions.
- Prioritize search and findability by using clear, action-oriented labels in navigation, for page titles, and meta data just like you would act to improve search.
- Use content types consistently by defaulting to reusable content types (for example, policy, procedures, troubleshooting steps, FAQ) to standardize fields like owner, effective date, and region.

### Use metadata, managed properties, and taxonomies with intent

Using SharePoint metadata is a proven best practice for improving both the accuracy and completeness of LLM responses, including those generated by agents. When content is tagged with rich, consistent metadata (such as country/region, document type, owner, and review date) agents can more precisely filter, retrieve, and ground answers in the most relevant and up-to-date information.

This configuration reduces the risk of surfacing outdated or off-topic content and ensures that responses are tailored to the user's context (role, location, and so on) and needs. [Managed metadata](/sharepoint/managed-metadata) also enables more granular search and filtering, which is especially important in large or complex SharePoint environments, leading to more trustworthy and actionable AI-powered answers.

- Managed metadata: Create term sets for country/region, region, job function, document type, and more that can be used as [variables in Copilot Studio](/microsoft-copilot-studio/authoring-variables?tabs=webApp).
- Map metadata to managed properties: Always map important [site columns](https://support.microsoft.com/office/create-a-managed-metadata-column-8fad9e35-a618-4400-b3c7-46f02785d27f) to [managed properties](/sharepoint/crawled-and-managed-properties-overview) in the [SharePoint Search Schema](/sharepoint/manage-search-schema).

**Example**: Suppose you have a "Country/Region" column in your HR policies library. When you map this column to a managed property (like RefinableString100), This helps Employee Self-Service agent answer, "What is my parental leave policy in Germany?" with the correct, country/region-specific document, rather than a generic or irrelevant answer.

### Manage the content lifecycle so answers stay current

When your SharePoint content is governed with clear versioning, retention, and review policies, you empower everyone to find the right answer. This helps boost accuracy, since Employee Self-Service agent and other AI tools ground their responses in current, authoritative sources.

1. **Enable versioning** in [document libraries](/microsoft-365/community/versioning-basics-best-practices). This keeps a history of changes and ensures only the latest approved version is visible to end users. Consider requiring approval for published versions. **Example**: Drafts remain hidden until approved.
1. **Apply retention and expiry policies** to documents to ensure documents are retained for the required period and can be automatically deleted or reviewed when outdated. Example: HR policies autoexpire after one year unless renewed. Set up [retention labels to help manage the content lifecycle](/purview/auto-apply-retention-labels-scenario).
1. **Archive or delete** duplicated or outdated content to ensure only one authoritative copy exists in the published library. Example: Use metadata to mark "current," "archived," or "superseded" status.
1. **Automate these tasks** with Power Automate flows to notify owners when a document is due for review or when a new version is published and set up automate archiving or status changes based on review dates or retention label triggers.
1. **Regularly audit and review** content using periodic audits of libraries to ensure only current documents are published and use SharePoint views and reports to identify outdated or duplicate content.
1. **Communicate and train** content owners to use these best practices consistently to get the most out of your SharePoint knowledge sources.

## Best practices for content owners

### Start each article with a summary

A concise summary helps large language models (LLMs) quickly understand the main topic, purpose, and intended audience of the article. This enables the LLM to ground its answers in the most relevant section, reducing the risk of pulling information from the wrong part of a long document.

When Copilot or other LLMs generate answers, they often cite the section that best matches the user's question. A summary makes it easier for the model to select the correct passage for citation, improving user trust and transparency.

### Summary example for a SharePoint page:

**How to update your personal details**

To update your address, phone number, emergency contacts, or other personal details, go to the Employee Hub. Log in, navigate to the Personal Information section and make your changes. If you have questions or run into issues, contact HR for assistance.

### Structure content with headings and sections

Consistent use of header styles (H1, H2, and so on) reduces confusion for both AI and human readers. This usage helps Employee Self-Service agent:

- Identify key sections quickly.
- Understand relationships between topics.
- Retrieve the most relevant section for a user's question. 

Without clear headers, LLMs may pull information from the wrong section or miss important context, leading to incomplete or off-topic answers.

**Content example for IT guidance**:

[Heading 2] VPN access guide

[Heading 3] Eligibility

All full-time and part-time employees with a valid corporate email address are eligible to request VPN access.

[Heading 3] Setup Instructions

1. Download the VPN client from support.
1. Install the client and restart your device.
1. Launch the VPN app and sign in using your corporate credentials.

[Heading 3] How to apply

Submit a VPN access request through support. Approval is typically granted within 24 hours.

[Heading 3] Security requirements

You must have multifactor authentication (MFA) enabled and your device must meet minimum security standards (for example, antivirus, OS updates).

[Heading 3] Special cases/exceptions

Contractors and vendors must request VPN access through their manager and complete additional compliance checks.

[Heading 3] Related policies or links

- Hybrid Work Security Policy
- Support

### Use lists for clarity, not dense paragraphs or tables

Lists are easier to scan for all users, including those using assistive technologies like screen readers. This also benefits both human readers and LLMs, ensuring everyone can quickly find the information they need.

LLMs are designed to parse and summarize information. Lists break down complex tasks or exceptions into clear, discrete steps or points. Lists make it easier for the model to:

- Identify individual actions or requirements.
- Retrieve and present the most relevant step in response to a user's question.
- Avoid missing important details that might be buried in dense text.

> [!NOTE]
> Use tables sparingly:
> 
> LLMs prefer well-structured, contextualized text over tables because Employee Self-Service agent interprets information best when content has a clear semantic flow and accessible formatting. If a table is necessary, keep it simple and easy to consume. Use headings, bullet points, and consistent formatting to highlight key information instead of embedding it in tables.

#### Content example for setting up a laptop: 

**How to set up your work laptop**

*Instead of a dense paragraph like this*:

To set up your work laptop, you need to connect to Wi-Fi, sign in with your corporate credentials, install required software from the Tech Hub, and configure security settings like BitLocker and antivirus. You should also check for system updates and restart your device.

*Use a list for clarity*:

Wi-Fi setup checklist:

1. Connect to a secure Wi-Fi network.
1. Sign in using your corporate email and password.
1. Open Tech Hub and install required apps.
1. Enable BitLocker encryption and verify antivirus is active.
1. Check for OS updates and restart your device.

#### Content example when there are exceptions:

Exceptions:

**Admin rights required**:

Some tools (for example, developer SDKs, system utilities) require admin rights. Submit a request through support to proceed.

**License-limited software**:

Software with limited licenses (for example, Adobe Creative Suite) must be requested using the Software Request Form and approved by your manager.

**Unsupported tools**:

Tools not listed in the Tech Hub aren't supported. Use of these tools must be approved by your organization's IT manager and may require additional review.

### Include action steps and hyperlinks

Hyperlinks allow both users and LLMs to quickly access referenced resources, official documentation, or related tools. Hyperlinks provide context, and highlight calls to action, helping LLMs understand the flow and dependencies between tasks. This leads to more precise, context-aware answers. Ensure links are descriptive (for example, "Download Company Portal app") for clarity and accessibility.

#### Content example for instructions on using a tool:

*How to share a forward link using the Link manager tool*.

Steps:

1. Open the Link manager and sign in with your corporate credentials.
1. Find the link you want to share. You can use the search bar or filters.
1. Copy the URL in one of two ways:
    - Select the checkbox next to the link, then select **Share** > **Share URL** from the dropdown.
    - Select the **Copy** icon next to the **Vanity Name** field to copy the URL to your clipboard.
1. Share the link by pasting the copied URL into an email, Teams message, or browser.
1. (**Optional**) Share a QR code.
    1. Select **Share** > **Share QR Code** to generate a scannable code.
    1. A pop-up appears with the QR code you can download or share.

### Use lists for clarity, not dense paragraphs or tables 

The Employee Self-Service Agent can't find content in accordion webparts that use the **list-based** option. Use the **on-page** version instead.

## Resources

- [Add a SharePoint site, hub, or page as a knowledge source in Copilot Studio](https://microsoft.github.io/TechExcel-Designing-your-own-copilot-using-copilot-studio/docs/Ex05/0502.html)

- [Copilot Studio web app limits for SharePoint](/microsoft-copilot-studio/requirements-quotas#copilot-studio-web-app-sharepoint-limits)
