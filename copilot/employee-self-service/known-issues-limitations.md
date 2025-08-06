---
title: Known issues and limitations for the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/21/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the known issues and limitations affecting the ESS (Employee Self-Service) agent and the workarounds you can employ.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Known issues and limitations for the Employee Self-Service agent

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

As you consider previewing the Employee Self-Service (ESS) Agent, we want to provide a clear view of known limitations—along with workarounds and roadmap visibility—to help you plan effectively and set the right expectations with your stakeholders.

This guide includes:

- Current Platform Constraints: Some features, like multi-vertical/domain support, mobile readiness, and multi-language experiences, are still in progress and will be addressed in future roadmap releases.  
- Connector Considerations: Third-party integrations require setup effort and technical expertise across stakeholders in your tenant. Details in later sections.
- Publishing & Deployment Nuances: ESS might not immediately appear in Teams or Copilot after publishing, and extra steps might be needed to make it visible and accessible to users.
- User Experience Gaps: Customizations like tone configuration, welcome messages ("Hello" topics), and sensitivity label recognition aren't fully supported yet but have guidance or planned support underway.
- Content Handling Limits: Semantic indexing has limits (~200 pages), and certain content formats (for example, link-only pages or Graph Connector content) might lead to reduced response quality.
- Licensing and Flow Execution: Only prepackaged Agent Flows are included in ESS. Custom flows might incur per-execution costs when supported post-July 2025.

Our goal is to be transparent, help you avoid surprises, and guide you toward quick wins using supported configurations and best practices.

Assess if this agent is a fit for your organization by viewing the whole list of known issues and limitations.

## Full list of known issues and limitations

Applies to:

|Package              |Version    |
|---------------------|-----------|
|ESS agent            |1.0.0.70   |
|ServiceNow HR        |v1.1.06    |
|Workday              |v1.0.0.109 |
|SAP SuccessFactors   |v1.0.0.43  |
|ServiceNow LiveAgent |v.1.0.0.0  |
|ServiceNow IT        |v1.0.0.37  |

|Area |Limitation |Planned fix |Workaround / guidance |
|-----|-----------|------------|----------------------|
|Domain support |Limited to a single domain per environment (either HR or IT). |Multi-domain support within the same environment is planned for release in the second half of CY2025. |Begin with the domain that delivers the most immediate value to your organization—either HR or IT. If you need both, consider creating separate Power Platform environments: one for HR and another for IT. |
|Third-party Independent Software Vendors (ISV) |Power Platform connectors can't be used with on-premises gateway connections at this time. |There are no plans to include this functionality in the future roadmap. |If needed, consider moving your key content to a cloud platform like SharePoint or ServiceNow. |
|Third-party Independent Software Vendors (ISV) |Hierarchical Permissions in ServiceNow Graph Connector doesn't work currently. |Support for hierarchical permissions is planned for release in the second half of CY2025. |If you need support for Hierarchical Permissions in ServiceNow Knowledge for ESS Agent, fill [this form](https://forms.office.com/r/Cu7DTDg0uz). This feature isn't Generally Available, and we're allowlisting tenants on request basis. |
|Third-party Independent Software Vendors (ISV) |Third-party connector setup (like Workday, ServiceNow, or SuccessFactors) takes time, can be complex, and typically needs someone with deep technical expertise. |By design - there are no plans to include it in the future roadmap. |To work around this behavior, carefully follow the setup documentation and involve someone with subject matter expertise in configuring third-party systems. Alternatively, consider starting with SharePoint as your initial knowledge source. You can add ISV connectors once your IT team has the necessary expertise and capacity to manage the integration effectively. |
|Third-party Independent Software Vendors (ISV) |Only supports User Principal Name (UPN) based user mapping for third party integrations |Support for non-UPN based mapping is under evaluation and targeting for post-July 2025 |Work with the third party provider to have UPN based user-mapping for integrations |
|Third-party Independent Software Vendors (ISV) |Only supports single sign-on with User Principal Name (UPN) mapping for Microsoft Entra |Support for non-UPN based SSO is under evaluation and targeting for post-July 2025 |Work with the third party provider to have UPN based user-mapping for integrations |
|Third-party Independent Software Vendors (ISV) |The ESS Agent currently provides a limited set of prebuilt templates for both read and write scenarios. Other read/write use cases can be implemented through custom configuration in Copilot Studio, which might involve creating custom topics and integrating with APIs - requiring technical expertise | By design – there are no current plans to expand this set in the product roadmap | Collaborate with your Copilot Studio maker and technical teams to configure and extend the agent to support other read/write scenarios through custom development |
|Third-Party Identity Providers & Single Sign-on |Third-party identity providers (IdPs) and third-party single sign-on (SSO) aren't currently supported. |We're currently evaluating the feasibility of including this information in a future roadmap. |None currently. |
|Publishing |After you publish, it might take up to 48 hours for ESS to appear in Microsoft 365 Copilot. |By design - there are no plans to include it in the future roadmap. |To skip the wait, download the manifest in Copilot Studio and upload it manually to Integrated Apps in Microsoft 365 Admin Center. [Step-by-step guide](publish.md#workaround-if-publishing-takes-more-than-48-hours). |
|Publishing |The agent doesn't automatically appear in Teams or Copilot after publishing. |By design - there are no plans to include it in the future roadmap. |Ensure the app is approved in Integrated Apps and assigned to the correct security group. For detailed instructions, refer to the publishing steps outlined in the deployment documentation. |
|Publishing | ESS Agent currently doesn't support solution management capability in Power Platform as there are known issues in the platform to save customizations to a preferred solution and importing/exporting it to another Power Platform environment for ALM. | Working with Power Platform product group to address this issue in late summer 2025. | Manually import/export customizations from the default solution to the preferred solution and keep track of customizations documented in form of release notes. Currently, manual updates are set for the app source package for ESS Agent. Make sure you save all customizations in the preferred solution before applying the update and import customizations back post-update.  |
|User Experience |ESS isn't yet supported on mobile devices. |Support for both mobile access is planned for release in the second half of CY2025. |You can currently access ESS through the Microsoft 365 app on Android and iOS. However, some of the custom experience elements—like the official source badge, disclaimer, and certain visual features might not display as expected yet. We're actively working to improve how they appear on mobile phones. |
|User experience |You don't see the 'official source' badge when testing in Copilot Studio. |By design - there are no plans to include it in the future roadmap. |To see it live, publish the agent and try it in Microsoft 365 Copilot. |
|The agent doesn't yet support many languages—English is currently supported. |Support for multiple languages is planned for release by the end of 2025. |Begin with English-speaking users and regions—support for other languages is on the way. |
|User experience |Currently, you can't fully configure the tone/personality of the agent. |By design - there are no plans to include it in the future roadmap. |Influence tone using well-crafted starter prompts, disclaimers, and response phrasing to guide the tone you want. |
|User experience |The "Hello" topic isn't available by default and must be manually created and published as part of your ESS Agent setup. Without it, users might not receive a welcome message or clear guidance when they first interact with the agent. To ensure a smooth user experience, we recommend adding a custom "Hello" topic that introduces the agent, sets expectations, and explains what it can help with. |By design - there are no plans to include it in the future roadmap. |To ensure users have a smooth first interaction, create a custom topic that acts as your "Hello" or welcome message. You can name it something like "Welcome" or "Getting Started," and use trigger phrases such as "Hi", "Hello", or "Start". In the message, briefly explain what the ESS Agent can help with and how to ask questions. Publishing this custom topic replicates the behavior of a typical "Hello" experience and helps guide users from the start. |
|User experience |Sensitivity labels applied to content (for example, "Confidential" or "Internal Only") aren't supported. This lack of support means the agent doesn't recognize or respect content restrictions based on Microsoft Purview sensitivity labels. |Support for sensitivity labels is planned for release by July 2025. |Since the ESS Agent doesn't currently recognize sensitivity labels, we recommend managing access to sensitive content by using SharePoint permissions or security groups at the document or site level. This configuration ensures only the right users can access certain information, even if the content isn't labeled. Avoid using highly sensitive or restricted content as a source for the ESS Agent unless you're confident that access is already tightly controlled through permissions. |
|User experience |Clickable links aren't currently supported in the ESS Agent. This lack of support means the agent is unable to display clickable links directly within its answers, even if you included prompts designed to generate those links.  |Support for clickable links is planned for release in the second half of CY2025. |While clickable inks aren't currently supported, you can still guide the ESS Agent to mention source names in its response. For example, within your topic content or suggested answer, include phrasing like "According to our HR policy in SharePoint" or "You can find more details in the ServiceNow article titled 'Vacation Policy'." This messaging helps provide users with context about where the information is coming from, even if a clickable link isn't shown. |
|User experience |Agent names have length constraints, such as 42 characters maximum |No plans – dependent on Copilot Studio |Follow corporate naming conventions for agents that aren't long |
|Licensing and payment |Any custom agent flows outside the standard ESS package incurs charges based on each execution. |Support for custom agent flows beyond the standard ESS package is planned for release by July 2025. |Until support for custom agent flows becomes available, we recommend using the prebuilt Agent Flows included in the ESS package. These flows cover common scenarios and are designed to work out-of-the-box, without requiring more configuration or extra charges. They're a great way to get started and deliver value quickly while ensuring compatibility with the current ESS experience. |
|Licensing and payment |Pay-as-you-go billing users (non-M365 Copilot license) can't access personal graph data (chat, emails, calendar, and so on), but can access tenant graph like SharePoint and Copilot connector (graph connectors) |By design – there are no plans to change this behavior in near roadmap |Plan suitable licensing for each scenario or persona to ensure employees can access the information they need. |
|Licensing and payment |Billing reports in Microsoft Admin Center (MAC) and Power Platform Admin Center (PPAC) always show the name of the agent matching with the name published in the app store. At this time, it's "Employee Self-Service (Preview)" – even if the maker renamed it in Copilot Studio |By design – evaluating options with Platform teams to show the customized name for customers |Coordinate with billing stakeholders communicating the agent's name to identify easily for any billing implications that might come up |
|Licensing and payment | End users can continue consuming ESS Agent when there's no Copilot license assigned to them and the billing plan is disabled, or the message capacity is exhausted. | End users can't consume ESS Agent when the billing usage enforcement is rolled out by late summer 2025. | Enforce a billing plan in Copilot Studio per environment where the ESS Agent is being published. |
|Content related |Semantic indexing is limited to roughly 200 pages of content; anything beyond this limit isn't processed. |By design - there are no plans to include it in the future roadmap. |To stay within the ~200-page semantic indexing limit, consider breaking up your knowledge content into smaller, topic-focused libraries or SharePoint sites. Prioritize including only the most relevant and frequently used content in the initial knowledge source. Less critical or long-tail content can be stored separately and accessed through links or added later as needed. This configuration helps ensure the most valuable content is indexed and searchable by the ESS Agent. |
|Content related |If a page only has links and no actual content, it's not part of the summary the agent creates. |By design - there are no plans to include it in the future roadmap. |To ensure these pages are included in the summary, add a brief description or context alongside the links. Even a short paragraph explaining what the links are for or summarizing the content they point to can make the page eligible for summarization. This explanation helps the ESS Agent better understand and include the information during indexing. |
|Content related |You might notice lower-quality responses when the agent pulls information from Graph Connector content. |Enhanced response quality for Graph Connector content is planned for release in summer 2025. |To improve response quality, prioritize using SharePoint or directly integrated knowledge bases as your primary content sources, especially for high-impact topics. If you must use Graph Connector sources, ensure the content is well-structured, includes clear headings, and avoids overly long pages or lists of links. Adding short summaries or key takeaways at the top of each page can also help the agent generate better answers. |
|Security, compliance, and privacy | Workers council region deployments aren't supported. Deployment to users in regions requiring workers council approval (such as France and Germany). | We're currently evaluating the feasibility of including this functionality in a future roadmap. | Focus preview deployments on users located outside of workers council countries or regions where additional approvals are required for new tools like Employee Self-Service Agent. |

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

ESS deployments move faster when you involve the right stakeholders early. Align your v-team across HR, IT, and Business Owners using this guidance to streamline decision-making and remove blockers.

### Extend ESS actions

ESS comes with out-of-the-box actions for common Human Capital Management (HCM) scenarios—such as checking time-off balances, accessing HR policies, or updating employee information. If you need more, follow our topic authoring guide to create and customize more topics that meet your organization's unique needs.
