---
title: Known issues and limitations for the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/13/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the known issues and limitations affecting the ESS (Employee Self-Service) agent and the workarounds you can employ.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Known issues and limitations for the Employee Self-Service agent

As you consider using the Employee Self-Service (ESS) Agent, we want to provide a clear view of known limitations—along with workarounds and roadmap visibility—to help you plan effectively and set the right expectations with your stakeholders.

This guide includes:

- Current Platform Constraints: Some features, like mobile readiness and multi-language experiences, are still in-progress and will be addressed in future roadmap releases.
- Connector Considerations: Third-party integrations require setup effort and technical expertise across stakeholders in your tenant. Details in later sections.
- Publishing & Deployment Nuances: ESS might not immediately appear in Teams or Copilot after publishing, and extra steps might be needed to make it visible and accessible to users.
- User Experience Gaps: Customizations like tone configuration, welcome messages ("Hello" topics), and sensitivity label recognition aren't fully supported yet but have guidance or planned support underway.
- Content Handling Limits: Semantic indexing has limits (~200 pages), and certain content formats (for example, link-only pages or Graph Connector content) might lead to reduced response quality.

Our goal is to be transparent, help you avoid surprises, and guide you toward quick wins using supported configurations and best practices.

Assess if this agent is a fit for your organization by viewing the whole list of known issues and limitations.

## Full list of known issues and limitations

|Area |Limitation |Planned fix |Workaround / guidance |
|-----|-----------|------------|----------------------|
|External systems integration |Power Platform connectors can't be used with on-premises gateway connections at this time. |There are no plans to include this functionality in the future roadmap. |If needed, consider moving your key content to a cloud platform like SharePoint or ServiceNow. |
|External systems integration |Third-party connector setup (like Workday, ServiceNow, or SuccessFactors) takes time and typically needs someone with deep technical expertise. |By design - there are no plans to include it in the future roadmap. |To work around this behavior, carefully follow the setup documentation and involve someone with subject matter expertise in configuring third-party systems. Alternatively, consider starting with SharePoint as your initial knowledge source. You can add external system solution connectors once your IT team has the necessary expertise and capacity to manage the integration effectively. |
|Third-Party Identity Providers and Single Sign-on |Third-party identity providers (IdPs) and single sign-on (SSO) aren't fully evaluated for each of the configuration topologies. |We intend to address each configuration topology as they're reported. |Reach out to Microsoft support by submitting a support case when you encountered issues with third-party IdPs and/or SSO, so the product group can evaluate it. |
|Publishing |After you publish, it might take up to 48 hours for the Employee Self-Service agent to appear in Microsoft 365 Copilot. |By design - there are no plans to include it in the future roadmap. |To skip the wait, download the manifest in Copilot Studio and upload it manually to Integrated Apps in Microsoft 365 Admin Center. [Step-by-step guide](publish.md#workaround-if-publishing-takes-more-than-48-hours). |
|Publishing |The agent doesn't automatically appear in Teams or Copilot after publishing. |By design - there are no plans to include it in the future roadmap. |Make sure the app is approved in Integrated Apps and assigned to the correct security group. For detailed instructions, refer to the publishing steps outlined in the deployment documentation. |
|Publishing |The agent currently functions only in the Copilot chat channel. The Teams app has open issues. |A fix is coming with roadmap updates. |As in Copilot Studio, both the Copilot chat and Teams channel are available as one option. Employee Self-Service agent is published to both channels. Users use the agent only in Copilot chat and don't deploy the agent in Teams in Copilot Agent publishing options, under the Microsoft admin center. |
|Publishing |Autoupdate for the Employee Self-Service agent and any external systems accelerator packages isn't supported. |A fix is coming with roadmap updates. |Makers are required to manually update both the ESS Agent core package and any associated external systems accelerator packages. |
|User Experience |The Employee Self-Service agent isn't supported yet on mobile devices. |Support for both mobile access is planned for release in 2026. |You can currently access the Employee Self-Service agent through the Microsoft 365 app on Android and iOS. However, some of the custom experience elements—like the official source badge, disclaimer, and certain visual features might not display as expected yet. We're actively working to improve how they appear on mobile phones. |
|User experience |You don't see the 'official source' badge when testing in Copilot Studio. |By design - there are no plans to include it in the future roadmap. |To see it live, publish the agent and try it in Microsoft 365 Copilot. |
|User experience |The "Hello" topic isn't available by default and must be manually created and published as part of your Employee Self-Service agent setup. Without it, users might not receive a welcome message or clear guidance when they first interact with the agent. To ensure a smooth user experience, we recommend adding a custom "Hello" topic that introduces the agent, sets expectations, and explains what it can help with. |By design - there are no plans to include it in the future roadmap. |To ensure users have a smooth first interaction, create a custom topic that acts as your "Hello" or welcome message. You can name it something like "Welcome" or "Getting Started," and use trigger phrases such as "Hi", "Hello", or "Start". In the message, briefly explain what the Employee Self-Service agent can help with and how to ask questions. Publishing this custom topic replicates the behavior of a typical "Hello" experience and helps guide users from the start. |
|User experience |Agent names have length constraints, such as 42 characters maximum. |No plans – dependent on Copilot Studio. |Follow corporate naming conventions for agents that aren't long. |
|Workday/ServiceNow consent dialog appears for all users | When employees use the Employee Self-Service agent for the first time and the agent connects to external systems (for example, Workday or ServiceNow), a consent dialog may appear, asking the user to authorize the connection. This dialog requests permission to use the employee's credentials to retrieve data from those systems (for example, to execute SOAP operations in Workday). </br>This dialog can appear for all users, even when the organization prefers to authorize on behalf of employees. End users must manually approve the consent to continue interacting with the agent, which may interrupt the experience or cause confusion. |Currently, this setting isn't configurable directly within Copilot Studio. The only option is for support to disable this setting after a support ticket is filed. |Customers who prefer to disable this per-user consent prompt can request to have the feature disabled. To file this request: </br>**1**. Submit a **support request through the Microsoft 365 admin center**. </br>**2**. In your request, specify that you'd like to **disable the Workday or ServiceNow consent dialog** for the Employee Self-Service agent and authorize the connection on behalf of all users. </br>**3**. Once the request is received, Microsoft Support makes the change that allows tenant-level authorization. |
|Licensing and payment |Pay-as-you-go billing users (non-M365 Copilot license) can't access personal graph data (chat, emails, calendar, and so on), but can access tenant graph like SharePoint and Copilot connector (graph connectors) |By design – there are no plans to change this behavior in near roadmap |Plan suitable licensing for each scenario or persona to ensure employees can access the information they need. |
|Licensing and payment |Billing reports in Microsoft Admin Center (MAC) and Power Platform Admin Center (PPAC) always show the name of the agent matching with the name published in the app store. At this time, it's "Employee Self-Service-HR" and "Employee Self-Service-IT - even if the maker renamed it in Copilot Studio. |By design – evaluating options with Platform teams to show the customized name for customers. |Coordinate with billing stakeholders communicating the agent's name to identify easily for any billing implications that might come up. |
|Licensing and payment | End users can continue consuming the Employee Self-Service agent when there's no Copilot license assigned to them and the billing plan is disabled, or the message capacity is exhausted. |End users can't consume the Employee Self-Service agent when the billing usage enforcement is rolled out by late summer 2025. | Enforce a billing plan in Copilot Studio per environment where the Employee Self-Service agent is being published. |
|Content related |Semantic indexing is limited to roughly 200 pages of content; anything beyond this limit isn't processed. |By design - there are no plans to include it in the future roadmap. |To stay within the ~200-page semantic indexing limit, consider breaking up your knowledge content into smaller, topic-focused libraries or SharePoint sites. Prioritize including only the most relevant and frequently used content in the initial knowledge source. Less critical or long-tail content can be stored separately and accessed through links or added later as needed. This configuration helps ensure the most valuable content is indexed and searchable by the Employee Self-Service agent. |
|Content related |If a page only has links and no actual content, it's not part of the summary the agent creates. |By design - there are no plans to include it in the future roadmap. |To ensure these pages are included in the summary, add a brief description or context alongside the links. Even a short paragraph explaining what the links are for or summarizing the content they point to can make the page eligible for summarization. This explanation helps the Employee Self-Service agent better understand and include the information during indexing. |
|Content related |You might notice lower-quality responses when the agent pulls information from Graph Connector content. |Enhanced response quality for Graph Connector content is planned for release in summer 2025. |To improve response quality, prioritize using SharePoint or directly integrated knowledge bases as your primary content sources, especially for high-impact topics. If you must use Graph Connector sources, ensure the content is well-structured, includes clear headings, and avoids overly long pages or lists of links. Adding short summaries or key takeaways at the top of each page can also help the agent generate better answers. |
|Relevance and user context |Employee Self-Service agent is unable to consistently apply profile data, like location, role, and company code, to give personalized and relevant responses. |In-progress on roadmap for improvement in 2026. |To improve response quality, prioritize adding as much user context in the prompt, such as, "What is the healthcare policy for full-time employees in Australia?" |

## Platform dependency - known issues and limitations

- [Power platform known issues](/power-platform/admin/view-known-issues)
- [Microsoft Dataverse - Connectors known issues](/connectors/commondataserviceforapps/)
- [Copilot Studio quotas and limits](/microsoft-copilot-studio/requirements-quotas)
- [ServiceNow - Connectors](/connectors/service-now/#known-issues-and-limitations)
- [ServiceNow Knowledge Microsoft 365 Copilot connector](/microsoftsearch/servicenow-knowledge-connector#limitations)
- [SAP OData - Connectors](/connectors/sapodata/#known-issues-and-limitations)

## Tips for getting started smoothly

### Start with quick wins

Connector setup—especially for platforms like Workday and ServiceNow—often requires coordination between IT and HR. For faster time-to-value, start with knowledge retrieval from SharePoint and ServiceNow, which are easier to configure and deploy.

### Get the right V-team in place

Employee Self-Service agent deployments move faster when you involve the right stakeholders early. Align your v-team across HR, IT, and Business Owners using this guidance to streamline decision-making and remove blockers.

### Extend Employee Self-Service agent actions

The Employee Self-Service agent comes with out-of-the-box actions for common Human Capital Management (HCM) scenarios—such as checking time-off balances, accessing HR policies, or updating employee information. If you need more, follow our topic authoring guide to create and customize more topics that meet your organization's unique needs.
