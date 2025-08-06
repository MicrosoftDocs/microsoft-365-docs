---
title: Release Notes for Microsoft 365 Copilot
description: Lists the features that have reached General Availability in each release of Microsoft 365 Copilot.
f1.keywords:
- NOCSH
ms.author: mandia
author: MandiOhlinger
manager: laurawi
ms.date: 08/5/2025
audience: Admin
ms.reviewer: briandesouza
ms.topic: get-started
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

# Microsoft 365 Copilot release notes

This page lists the latest features and improvements for Microsoft 365 Copilot. It includes changes that are generally available (Current Channel for Microsoft 365 apps) and specific to each platform.

## [All features](#tab/all)
<!--- All features regardless of platform go here  -->
<!-- 84976,94586,83228,97391,98372,95029,64023,99774,97856,95297,100348,100344,100339,100338,100350,99397,99368,98331,97241,96111,95253,84428,79743,78252,78115,78114,78099,84472 -->
## August 5, 2025
Updates released between July 22, 2025, and August 5, 2025.
### Copilot extensibility
- **Admin pre-approval for trusted declarative agents** [Web]

  Admins can now pre-approve specific agents so their actions are always allowed without extra confirmation. This reduces interruptions and helps ensure a smooth workflow in integrated apps.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Discover and install Copilot agents easily** 

  Users in Word and PowerPoint can seamlessly find and install Copilot agents directly from the Unified App Store.
 <a href="/copilot/microsoft-365/copilot-agent-install" target="_blank">Learn more.</a>
- **Enhance agent builder with full screen mode** [Windows, Mac, Web]

  Enjoy an improved agent builder experience with a full-screen view that streamlines the process of creating and managing your agents.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Enhanced adaptive card capabilities in declarative agents** 

  Developers now have access to enhanced adaptive card functionalities—including task modules, stage view, inline actions, and charts—directly in declarative agents for richer app experiences.
 <a href="/training/modules/copilot-declarative-agent-action-api-plugin-adaptive-cards-vsc/" target="_blank">Learn more.</a>
- **Enhanced Q&A accuracy for SharePoint files** [Windows, Web]

  Improve the precision of Q&A interactions on SharePoint files that include tables, comments, and formatting. Benefit from more relevant and insightful responses whether you're working with Word, PDF, or PowerPoint files.
- **Fine-tune models with tenant data** 

  Developers and makers can fine-tune a model used in Microsoft 365 Copilot using their tenant data.
 <a href="/copilot/microsoft-365/copilot-tuning-overview" target="_blank">Learn more.</a>
- **Get relevant calendar results by time period** [Windows, Web]

  Quickly summarize meetings for a specific day to stay on top of your schedule and focus on the events that matter most.
- **Improve email responses with extra context** [Windows, Web]

  Get fuller email replies that expand your initial lists, indicate the number of related messages, and let you easily paginate for more details—all to help you manage your inbox more effectively.
 <a href="https://support.microsoft.com/topic/schedule-copilot-prompts-29dfd5fb-211a-4515-88a6-730b8074e489" target="_blank">Learn more.</a>
- **Schedule meetings with smart time insights** [Windows, Web]

  Easily discover optimal meeting times and streamline Outlook handoffs with intelligent calendar suggestions that make scheduling a breeze.
 <a href="https://support.microsoft.com/office/how-do-i-use-the-the-scheduling-assistant-to-find-meeting-times-bdd6c165-4186-45f1-ad9e-5af067ac69a3" target="_blank">Learn more.</a>
- **Semantically index more document pages** 

  With improved indexing, P99 documents can now include up to 180,000 characters (about 90-100 pages) for more comprehensive document insights, while P99.99 documents support up to 1.8 million characters (about 900–1,000 pages), which is a significant increase from the previous 18-20 page limit.
 <a href="/microsoftsearch/semantic-index-for-copilot" target="_blank">Learn more.</a>
### Copilot Studio
- **Ground your agents with live enterprise data** [Web]

  You can now enhance your copilots built with Microsoft Copilot Studio by incorporating structured data from both Microsoft and select non-Microsoft systems. These copilots enable users to ask natural language questions about enterprise systems within their Power Platform tenants. Building on the natural language query capabilities introduced with Microsoft Dataverse knowledge, Microsoft is extending this functionality to include certain third-party services.
 <a href="/microsoft-copilot-studio/knowledge-real-time-connectors" target="_blank">Learn more.</a>
- **Only use grounded knowledge for agent response** [Windows, Web]

  Prevent agents from using model-trained knowledge by turning off internal knowledge, ensuring responses are based on specified grounded sources.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge#prioritize-your-knowledge-sources-over-general-knowledge" target="_blank">Learn more.</a>
### Microsoft 365 admin center
- **Onboard SharePoint Agents as a PayG scenario in CCS** [Web]

  This feature introduces SharePoint Agents to the Pay-as-you-go tab under Copilot → Billing & usage, aligning with the existing workflow used for Microsoft 365 Copilot Chat. Administrators will gain the ability to manage and monitor SharePoint Agent consumption through the familiar Pay-as-you-go interface, ensuring consistent oversight across Copilot experiences. Integration with the SharePoint backend via API enables precise usage tracking and billing for this new scenario.
 <a href="/microsoft-365/services/pay-as-you-go-services" target="_blank">Learn more.</a>
### Microsoft 365 Copilot App
- **Ask Microsoft 365 Copilot for insights using Click to Do** [Windows]

  Streamline your workflow by seamlessly sharing highlighted content with   Microsoft 365 Copilot using Click to Do for quick insights and assistance.
 <a href="/windows/client-management/manage-click-to-do" target="_blank">Learn more.</a>
- **Start an instant chat with Copilot** [Windows]

  Launch a chat with Copilot quickly using the quick view for instant assistance. Use the Win+C shortcut or the Copilot key on supported devices.
### Microsoft 365 Copilot Chat
- **Share agents with your enterprise** [Windows, Web]

  Generate sharing links for your agents in Business Chat. If the recipient doesn't have the agent, they'll be directed to the Microsoft 365 application catalog to install it. If they do, the agent will open directly in Microsoft 365 Copilot Business Chat.
 <a href="https://support.microsoft.com/topic/how-to-share-your-agent-44981c08-ab64-43f1-bcf8-ebadfc5469cc" target="_blank">Learn more.</a>
### Microsoft Intune
- **Analyze error codes efficiently** 

  Use Copilot to analyze Intune error codes from device configuration profiles, compliance policies, and app installations, simplifying troubleshooting.
 <a href="/intune/intune-service/copilot/copilot-devices" target="_blank">Learn more.</a>
- **Compare device settings to uncover issues** 

  Easily compare settings on two devices using Copilot in Intune to identify potential misconfigurations.
 <a href="/intune/intune-service/copilot/copilot-devices" target="_blank">Learn more.</a>
- **Get device summaries with Copilot** 

  Access device-specific information such as installed apps and group membership using Copilot in Intune for better device management.
 <a href="/intune/intune-service/copilot/copilot-devices" target="_blank">Learn more.</a>
### PowerPoint
- **Copilot uses enterprise assets hosted on SharePoint OAL when creating presentations now** [Mac, Windows, Web]

  Once you integrate your organization's assets into a Sharepoint OAL (Organization Asset Library) you will be able to create presentations with your organization's image.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
- **Copilot uses Enterprise assets hosted on Templafy when creating presentations now** [Mac, Windows, Web]

  Once you connect your asset library hosted with Templafy to Microsoft365 and Copilot, you will be able to create presentations with your organization's images.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
### SharePoint
- **Manage site ownership effectively** [Web]

  The site ownership policy enables you to define and enforce ownership criteria for your SharePoint sites, automating actions to prevent data risks if sites remain ownerless for over three months.
 <a href="/sharepoint/create-sharepoint-site-ownership-policy" target="_blank">Learn more.</a>
### Teams
- **Ability to Stop Copilot while it is generating a response** [Windows]

  Copilot in Teams  now has a 'stop' button after sending a prompt. This allows the user to stop Copilot's response either before the response has started to generate, or even after the response is generating. The user can then start a new prompt if they wish.
- **Interpreter agent for seamless communication** [Windows, Mac]

  Interpreter Agent acts like an instant translator during your Teams meetings. It listens to the spoken language in a meeting and immediately translates it into another language in real-time. This allows participants who speak different languages to understand each other and collaborate more effectively without waiting. Whether you're holding a business meeting, customer calls, or project discussions, the AI interpreter in Teams ensures everyone can participate fully, enhancing communication and productivity across diverse teams. It supports 9 different languages: English, Italian, German, French, Portuguese (Brazil), Japanese, Spanish, Chinese (Mandarin), and Korean.
 <a href="https://support.microsoft.com/office/interpreter-in-microsoft-teams-meetings-c7efe2bb-535d-42ab-a5c4-d2d91619b46d" target="_blank">Learn more.</a>
- **Translated Intelligent meeting recap for multilingual meetings (Copilot and Teams Premium)** [Windows, Mac]

  Now, intelligent meeting recap supports multilingual meetings, ensuring you can easily catch up on key discussions even when multiple languages were spoken. After the meeting, your recap is automatically generated in the translation language you selected for live transcription and captions.
 <a href="https://support.microsoft.com/office/recap-in-microsoft-teams-c2e3a0fe-504f-4b2c-bf85-504938f110ef" target="_blank">Learn more.</a>
### Word
- **Access audio overviews in Word** [Web]

  Generate a convenient audio overview of your document through Copilot from the Summary tab, enhancing your document review process.
 <a href="https://support.microsoft.com/topic/listen-to-an-audio-overview-of-your-document-9b2fad37-021e-4e89-b33b-323e850f9ae0" target="_blank">Learn more.</a>
- **Kickstart your document with contextual prompts** [Windows]

  Copilot suggests prompts by including files and meetings based on your recent activity, helping you draft a new document in Word seamlessly.
- **Use Writing suggestions to review content in Word** [Mac]

  Enhance your document content with AI-generated writing suggestion in the Copilot context menu. Get suggestions on logical structure, flow, and tone to make your documents more impactful.
 <a href="https://support.microsoft.com/topic/use-writing-suggestions-to-review-content-in-word-fa09c055-d623-4d20-954f-9b064a5a7c80" target="_blank">Learn more.</a>


<!-- 95840,98124,78170,73064,95241,97367,100044,97230,95268,95263,100351,99775,99156,98362,97883,95681,95248,95192,93065,83328,80346,74714,98515,98840 -->
## July 22, 2025
Updates released between July 8, 2025, and July 22, 2025.
### Copilot extensibility
- **Hebrew support in Agent builder** [Windows, Web]

  Integrate Hebrew language support in agent builder to build accessible, localized solutions that simplify multilingual deployments and enhance user engagement.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-availability" target="_blank">Learn more.</a>
- **Increased support for uploading up to 20 documents to agents’ knowledge** [Windows, Web]

  End users and makers can now upload up to 20 documents to ground agents with richer, embedded knowledge in Microsoft Copilot Studio agent builder.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge" target="_blank">Learn more.</a>
- **Share agents from embedded builder** [Windows, Web]

  Users can share agents from an embedded agent builder to other individual users or group chats.
 <a href="/microsoft-365/admin/manage/manage-embedded-knowledge-agents?" target="_blank">Learn more.</a>
- **Share agents with context-aware link previews** [Windows, Web]

  Streamline your interactions by using context-aware buttons that adapt based on where links are shared—making it easier to take the right action in chats and meetings.
- **Upload and embed knowledge in declarative agents** [Windows, Web]

  Empower your agents with enriched context by uploading your own files and embedding crucial knowledge for personalized, day-to-day assistance.
 <a href="/microsoft-copilot-studio/knowledge-add-file-upload" target="_blank">Learn more.</a>
- **Users can share agents from SharePoint** [Web]

  Users can share agents via links from SharePoint to Teams group chats. This means users will be able to chat and collaborate with SharePoint agents in group chats. The shared links will unfurl into preview cards with actionable buttons to 'Add to this chat'.
 <a href="/sharepoint/get-started-sharepoint-agents" target="_blank">Learn more.</a>
### Copilot Studio
- **Easily find and use knowledge data sources** [Web]

  In Copilot Studio agent builder you can now quickly identify and select the right knowledge data sources without manually scanning long lists. This streamlined workflow helps you get to the insights you need faster for everyday tasks.
 <a href="/power-platform/release-plan/2025wave1/microsoft-copilot-studio/use-teams-chats-as-knowledge-sources" target="_blank">Learn more.</a>
### Excel
- **Ask Copilot to generate formulas** [Web]

  Type “=” anywhere on your grid or in the formula bar and let Copilot generate formulas from natural language, making complex calculations simpler and faster.
 <a href="https://support.microsoft.com/office/generate-formulas-with-copilot-in-excel-d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>
- **Copilot advanced text analysis in Excel** [Web]

  Copilot can now analyze text by identifying themes and sentiments, citing data examples, and inserting a column with labels—helping you quickly uncover actionable insights.
 <a href="https://support.microsoft.com/topic/text-insights-in-excel-cecc7821-39c1-4e12-8bd6-4d4348370585" target="_blank">Learn more.</a>
- **Copilot icon on the grid in Excel for the web for M365 personal and family** [Web]

  Access AI-powered support directly from your spreadsheet with a single click. The Copilot icon helps you stay in your flow by offering instant insights while you work.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/how-to-get-started-with-copilot/4383870" target="_blank">Learn more.</a>
### Microsoft 365 Copilot app
- **Get an audio overview of a notebook** [Web]

  Turn the files in your notebook into a dynamic audio overview for an engaging listening experience. Simply select “Get audio overview” at the top of your notebook—available in English only, with more languages coming soon.
 <a href="https://support.microsoft.com/topic/get-an-audio-overview-of-your-notebook-with-microsoft-365-copilot-notebooks-a22df989-b9cd-47fb-abac-e888d8f10cd9" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Dictate your prompts in Copilot Chat** [Windows, Web]

  You can now use the dictation button to input your prompts via speech, making interactions with Copilot more natural and efficient. 
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=475968" target="_blank">Learn more.</a>
- **[Researcher](https://go.microsoft.com/fwlink/?linkid=2329838) available in GA** [Windows, Mac, Web]

  The [Researcher](https://go.microsoft.com/fwlink/?linkid=2329838) agent is pre-installed in Copilot Chat for all worldwide users. Find it in the left navigation pane alongside other agents, giving you quick access to research tools as part of the Copilot Premium license.
 <a href="https://www.microsoft.com/microsoft-365/blog/2025/06/02/researcher-and-analyst-are-now-generally-available-in-microsoft-365-copilot/?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>
### Microsoft 365 Purview compliance portal
- **Data Security Posture Management for AI - Data Risk Assessments.** [Web]

  Admins can drive better security outcomes by reviewing default assessments, examining data sensitivity, and monitoring user accesses—all to quickly identify risks and remediate them in daily operations.
 <a href="/purview/dspm-for-ai" target="_blank">Learn more.</a>
### PowerPoint
- **Create a presentation with Microsoft 365 Copilot from menus** [Windows]

  You can quickly begin a new presentation using Microsoft 365 Copilot from the PowerPoint start menu or file menu. Copilot is easily accessible when you open PowerPoint or click the File tab, helping to simplify your workflow.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
- **Microsoft 365 Copilot generates the new presentation in a new file when starting from an existing presentation** [Mac, Windows]

  Now, when creating a presentation using Microsoft 365 Copilot from an existing presentation using, it will create the new presentation in a new file without affecting the original presentation
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
- **Reference multiple files in your presentation creation using Microsoft 365 Copilot** [Windows, Mac, Web]

  Enhance your PowerPoint presentations by referencing up to five files with Microsoft 365 Copilot, making it easier to incorporate detailed insights and comprehensive data without switching contexts.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Teams
- **Catch up on meetings with AI recaps on mobile**

  On iOS and Android, view AI-generated notes, tasks, @mentions, and speaker-indexed recordings so you can quickly get up to speed when you miss a meeting.
 <a href="/microsoftteams/intelligent-recap-calls-meetings" target="_blank">Learn more.</a>
### Word
- **Catch up on a summary of document comments in the top of your document** [Web]

  Copilot now has a Discussion tab in the top of your document to summarize open comments, helping you quickly understand what people have said.
- **Easily write a prompt or choose quick actions from the Copilot icon in your Word doc** [Mac, Windows]

  The Copilot icon in your document margin makes it easy to quickly add a prompt or choose from a range of quick options Copilot can offer.
 <a href="https://www.microsoft.com/microsoft-365-life-hacks/everyday-ai/how-to-use-copilot-in-microsoft-word?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>
- **Include citations in drafted content** [Web]

  Enhance the credibility and reliability of your documents with Copilot’s ability to automatically include citations when drafting content from referenced sources. This feature ensures proper attribution and helps maintain academic and professional standards in your work.
- **Listen to an audio summary of your document** [Web]

  Transform your Word document into a dynamic audio experience with Copilot. Enjoy a podcast-style discussion that makes your content easy to consume on the go. Currently available in English, this feature allows you to listen to your documents anytime, anywhere.
 <a href="https://support.microsoft.com/topic/listen-to-an-audio-overview-of-your-document-9b2fad37-021e-4e89-b33b-323e850f9ae0" target="_blank">Learn more.</a>
- **Preserve text formatting in drafted content** [Windows]

  Word Copilot now preserves the styling of surrounding content when generating text, ensuring a seamless and professional authoring experience. Copilot now understands and respects more contextual formatting—whether the user is writing in a list, table, heading, or styled paragraph. This includes support for bold, italic, underline, and links. This allows the generated text to better match the structure and basic formatting of the document. The result is a smoother authoring experience with less need for manual reformatting.
- **Reference very large documents when prompting Copilot** [Web]

  Easily work with extensive documents by typing a forward slash (/) or selecting the attach icon to choose a document up to 3,000 pages long. This becomes the basis of the content you're requesting from Copilot, making it seamless to generate content from detailed sources.
 <a href="https://support.microsoft.com/topic/keep-it-short-and-sweet-a-guide-on-the-length-of-documents-that-you-provide-to-copilot-66de2ffd-deb2-4f0c-8984-098316104389" target="_blank">Learn more.</a>


<!-- 84996,84872,95244,83178,77803,78628,96771,99373,99334,97490,95294,97932,97885,97801,94703,93106,79744,97959,95285,95282,95281,64005 -->
## July 8, 2025
Updates released between June 24, 2025, and July 8, 2025.
### Copilot extensibility
- **Ability to use the Graph connector selector when using Teams Toolkit**

  Developers using Teams Toolkit to author declarative agents can select specific Graph connectors to improve their knowledge grounding.
 <a href="https://github.com/OfficeDev/microsoft-365-agents-toolkit/blob/dev/packages/vscode-extension/CHANGELOG.md#new-features" target="_blank">Learn more.</a>
- **Add Dataverse as knowledge in Copilot** [Web, Windows]

  Users can now include Dataverse as a knowledge source in Copilot, enabling more comprehensive responses and insights.
 <a href="/microsoft-365-copilot/extensibility/build-declarative-agents?tabs=ttk&tutorial-step=1" target="_blank">Learn more.</a>
- **Audit and eDiscovery for Copilot actions and declarative agents** [Windows, Web]

  View detailed audit logs and eDiscovery records for Copilot actions and declarative agents in Microsoft Purview to simplify compliance and investigation workflows.
 <a href="/purview/audit-copilot" target="_blank">Learn more.</a>
- **Automatic project scaffolding in Teams Toolkit for building Graph connectors**

  Developers can now leverage an automatic project scaffolding for Graph connector applications within the Teams Toolkit, allowing for the generation of a full production-ready Graph connector application from just an API description file, significantly reducing setup time and complexity.
 <a href="/microsoft-365-copilot/extensibility/build-your-first-connector" target="_blank">Learn more.</a>
- **Deploy Copilot agents for easy discovery** [Windows, Web]

  Deploy Copilot agents in the store for user discovery directly from your apps. Users can get new agents, open the store, install, and use them seamlessly within App Chat.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?" target="_blank">Learn more.</a>
- **Developers can use TypeSpec as an authoring experience**

  Developers can use TypeSpec as an authoring experience for declarative agents and API plugins in Teams Toolkit.
 <a href="/microsoft-365-copilot/extensibility/build-declarative-agents-typespec" target="_blank">Learn more.</a>
- **Discover, acquire, and manage agents through in-app store in Word and PowerPoint** [Windows, Web]

  With Copilot extensibility, users can discover, acquire, and manage agents through the unified store. We are excited to introduce the Microsoft 365 unified store to Office documents, enabling users to discover, acquire, and manage agents directly within the in-app store for Word and PowerPoint, with Excel support coming soon.
 <a href="https://devblogs.microsoft.com/microsoft365dev/office-addins-at-build-2025/#modernized-store-for-office-add-ins-and-copilot-agents" target="_blank">Learn more.</a>
- **Ground agents in Outlook email**

  Makers can now build custom agents that read and reason over Outlook messages, delivering answers that reflect the latest decisions and context stored in your inbox—no data migration or retraining needed.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Publish Microsoft Copilot Studio agents to Microsoft 365 Copilot**

  Organizations can now publish, manage, and use agents built with Copilot Studio directly within the Microsoft 365 Copilot app—across both web and desktop—and in Microsoft Teams, bringing intelligent assistance into the flow of everyday work.
 <a href="/microsoft-365-copilot/extensibility/overview-custom-engine-agent?toc=%2Fmicrosoftteams%2Fplatform%2Ftoc.json&bc=%2Fmicrosoftteams%2Fplatform%2Fbreadcrumb%2Ftoc.json" target="_blank">Learn more.</a>
### Copilot Studio
- **See performance metrics for every knowledge source** [Web]

  Review usage frequency, answer rate, and error rate for each knowledge source to spot high-value content and quickly fix low-performing links, keeping your agents accurate and helpful.
 <a href="/power-platform/release-plan/2025wave2/microsoft-copilot-studio/analyze-action-usage-agents" target="_blank">Learn more.</a>
### Excel
- **Copilot in Excel with Python | Reasoning Model Integration (Think Deeper)** [Mac, Windows, Web]

  While performing advanced analysis with Copilot in Excel with Python, users can choose the "Think Deeper" mode to get a more elaborate and detailed plan, followed by automatic execution to generate Python code, results, and explanations. This improves performance on complex asks by leveraging the power of the latest AI reasoning models.
 <a href="https://support.microsoft.com/office/364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
### Microsoft 365 Admin Center
- **Metadata for Shared agent management in Microsoft 365 admin center** [Web]

  IT admins can view metadata for Shared agents in Microsoft 365 admin center similar to metadata information for line of business applications built by customer organization. It provides IT admins the opportunity to explore all data besides honoring UX filters for a seamless user experience.
 <a href="/microsoft-365/admin/manage/manage-shared-agents" target="_blank">Learn more.</a>
### Microsoft 365 Copilot App
- **Create in the Microsoft 365 Copilot app** [Windows, Web]

  The creative hub for AI led artifact generation capabilities.
 <a href="https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-create-6e0c616d-69fb-42f2-a4cb-c59e006ec4f5" target="_blank">Learn more.</a>
- **Updated UI for Microsoft 365 Copilot App** [Windows, Web]

  The Microsoft 365 Copilot app is your starting place for AI at work, offering quick access to secure AI chat, search, files, and content creation in one seamless app.
 <a href="https://www.microsoft.com/en-us/microsoft-365/blog/2025/04/23/microsoft-365-copilot-built-for-the-era-of-human-agent-collaboration/" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Locate your Copilot Pages in Microsoft 365 Copilot Chat navigation pane** [Windows, Web]

  For quick access to your Copilot Pages, find all page artifacts created across your apps/modules in one place underneath the Chat section in the Microsoft 365 Copilot app.
 <a href="https://techcommunity.microsoft.com/blog/nonprofittechies/introduction-to-microsoft-copilot-pages/4421413" target="_blank">Learn more.</a>
### Microsoft Purview compliance portal
- **Data assessments in Microsoft Purview AI Hub** [Web]

  Create targeted assessments, review sensitivity and access for key locations, and take remediation actions to reduce oversharing risks—all from one dashboard.
 <a href="/purview/dspm-for-ai" target="_blank">Learn more.</a>
### OneNote
- **Copilot Chat on OneNote for web and in Teams** [Web]

  User can enjoy  the power of Microsoft Copilot to OneNote for web and in Teams.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/increase-your-productivity-with-copilot-on-onenote-web-and-onenote-in-teams/4374756" target="_blank">Learn more.</a>
### Teams
- **Copilot in Meetings will suggest follow up questions to ask it** [Windows, Mac]

  When Copilot in Teams Meetings responds to a prompt, it will also suggest follow up prompts to ask Copilot that build on the prior response. These questions will generally be based on the response it gave prior, and could be related to honing in on a particular topic, asking for more details, or even reformatting the content into a table if appropriate.
 <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1" target="_blank">Learn more.</a>
### Viva Connections
- **New News feature in Microsoft Teams** [Android, Windows, iOS, Web]

  This update replaces the current Feed experience in Viva Connections across desktop, mobile, and web platforms with a SharePoint News reader experience. This new experience presents SharePoint news from organizational sites, boosted news, users' followed sites, frequent sites, and people they work with in an immersive reader format. It includes a Copilot-powered news summary as well, available only in Teams for Windows desktop in this initial release.
 <a href="https://techcommunity.microsoft.com/blog/viva_connections_blog/introducing-enterprise-news-reader-in-viva-connections/4383832" target="_blank">Learn more.</a>
### Word
- **Automatic summary of documents on file-open in Word** [Windows, Mac, Web]

  When users open a document, Copilot generates a summary in the Word window. You can hide the summary or open the Copilot chat pane to ask specific questions about the document.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Implement coaching suggestions when rewriting your text with Copilot** [Web]

  Enhance your writing process by letting Copilot apply tailored coaching tips when rewriting your selected text—refine your documents effortlessly.
 <a href="https://support.microsoft.com/topic/use-coaching-to-review-content-in-word-for-the-web-fa09c055-d623-4d20-954f-9b064a5a7c80" target="_blank">Learn more.</a>
- **Kickstart your document with contextual prompts** [Mac]

  Copilot leverages your recent files and meetings to suggest contextual prompts, helping you quickly draft a new document for day-to-day tasks.


<!-- 84447,98006,96078,95296,95230,83646,81354,97565,95267,76606,97885,97810,97309,97034,95597,94574,94070,83213,99889,95904,95903,79335,96243,84996,97832,97496,98196,97305,95679,95290,96368,84987,84440 -->
## June 24, 2025
Updates released between June 10, 2025, and June 24, 2025.
### Copilot extensibility
- **Admins can manage Copilot extensibility under Copilot tab in Microsoft 365 admin center** [Windows, Web]

  Admins have options to manage Copilot extensibility under Copilot tab including agent management for IT published agents and shared agents.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Build agents faster with built in Office skills** [Windows, Web]

  Empower your agent building by consuming built-in Office skills like Q&A on documents and PowerPoint summaries. This feature speeds up integrations, reduces the need for custom solutions, and delivers context-aware insights for a smarter agent experience.
- **Build custom engine agents with Copilot Studio**

  Use Copilot Studio to create, test, and update custom engine agents that run seamlessly in Microsoft 365 Copilot Chat and Teams, streamlining your development and deployment process.
 <a href="/microsoft-365-copilot/extensibility/overview-custom-engine-agent" target="_blank">Learn more.</a>
- **Declarative agents can read the current document in WXP** [Windows, Web]

  Improve your workflow with agents that dynamically interact with open documents. Receive real-time suggestions, automate edits, and extract key data to streamline reviews and boost productivity.
 <a href="https://adaptivecards.microsoft.com/?topic=Action.InsertImage" target="_blank">Learn more.</a>
- **Developers can use Copilot Studio to create declarative agents that include Teams Channel as knowledge**

  Developers can use Copilot Studio to create declarative agents that include Teams Channel as knowledge.
- **Developers can use Teams Toolkit to create declarative agents that include Teams Channel as knowledge**

  Developers can use Teams Toolkit to create declarative agents that include Teams Channel as knowledge.
- **Discover, acquire, and manage agents through in-app store** [Windows, Web]

  Users can now easily discover, acquire, and manage Copilot agents directly within their Word and PowerPoint documents through a unified in-app store. This streamlined experience simplifies adding new capabilities—and Excel support is coming soon.
 <a href="https://devblogs.microsoft.com/microsoft365dev/office-addins-at-build-2025/#modernized-store-for-office-add-ins-and-copilot-agents" target="_blank">Learn more.</a>
- **Manage custom Copilot agents in Agent Center** [Windows, Web]

  Organize, store, and update your declarative Copilot agents in one place. Agent Center lets developers register in-context actions, fine-tune prompts, and test behavior faster—so IT admins can roll out reliable, task-specific Copilot experiences at scale.
 <a href="https://devblogs.microsoft.com/microsoft365dev/introducing-the-agent-store-build-publish-and-discover-agents-in-microsoft-365-copilot/" target="_blank">Learn more.</a>
- **Microsoft 365 Agents Toolkit uses Kiota as the API plugin generation tool**

  The Microsoft 365 Agents Toolkit now generate API plugins using Kiota. This unlocks new scenarios in the Agents Toolkit like searching our repository of public APIs, visually selecting the main integration endpoints and improving the maintainability of existing plugins by adding new endpoints as the developer continue evolving their agents.
 <a href="https://github.com/OfficeDev/microsoft-365-agents-toolkit/blob/dev/packages/vscode-extension/CHANGELOG.md#600---may-19-2025" target="_blank">Learn more.</a>
- **Non-citation links remain visible in custom actions** [Windows, Web]

  Links returned from your custom actions are no longer redacted when they aren’t part of a citation, letting users follow the full URL for easier validation and deeper exploration.
 <a href="https://techcommunity.microsoft.com/blog/microsoftdefenderforoffice365blog/safelinks-protection-for-links-generated-by-m365-copilot-chat-and-office-apps/4396828" target="_blank">Learn more.</a>
### Copilot Studio
- **Add custom Copilot Studio agents to Microsoft 365** [Web]

  Publish your Copilot Studio agent to the Microsoft 365 channel in one click, then roll it out to yourself, a pilot group, or your whole org. Messages, quick replies, adaptive cards, and multi-turn chat work instantly, while Power Platform analytics and governance keep everything secure and measurable.
 <a href="/microsoft-365-copilot/extensibility/publish" target="_blank">Learn more.</a>
- **Automate repetitive tasks with agent flows** [Web]

  Build agent flows in Copilot Studio using natural language to automate workflows with AI-powered actions. Makers can build intelligent, scalable, and flexible automations for tasks ranging from intelligent summarization to advanced approvals - and get fast, consistent results.
 <a href="/microsoft-copilot-studio/flows-overview" target="_blank">Learn more.</a>
- **C2 image upload and Q&A** [Web]

  Allow your Microsoft Copilot Studio agent to analyze images that users upload during conversations with the agent. This feature enhances visual content collaboration with intelligent insights for everyday tasks.
 <a href="/microsoft-copilot-studio/image-input-analysis" target="_blank">Learn more.</a>
- **Quarantine compromised agent to boost security**

  Give IT admins a critical tool to isolate potentially compromised agents, reducing risk and protecting your network without disrupting daily operations.
 <a href="/rest/api/power-platform/powervirtualagents/bots/set-bot-as-quarantined?branch=lane-adminsdk-AprMay2025" target="_blank">Learn more.</a>
### Excel
- **Use Copilot with any table in the workbook, referring by natural language** [iOS, Web, Mac, Windows]

  Copilot uses the context of your prompt to pick what selection of data to answer about and reason over, including tables in other sheets.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/smarter-context-awareness-for-copilot-in-excel/4424939" target="_blank">Learn more.</a>
### Microsoft 365 Copilot app
- **Copilot Notebooks** [Web]

  Copilot Notebook in the Microsoft 365 Copilot app streamlines your workflow by integrating notebook functionality directly into the app.
 <a href="https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-notebooks-0775e693-11c6-4d80-8aba-fcc81a737a06" target="_blank">Learn more.</a>
- **Upload phone images to Copilot in Office apps** [Windows]

  Snap a photo on your phone and send it straight to Copilot in Word, PowerPoint, Excel, or OneNote to generate content, extract text, or get design ideas—no cables or transfers needed.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/upload-a-phone-image-to-microsoft-365-copilot/4398121" target="_blank">Learn more.</a>
- **Use Copilot suggested prompts for recommended entities** [Windows, Mac, Web]

  Empower your work with a $30 Copilot license by clicking on curated prompts within recommended entities. Uncover key insights on demand—helping you boost productivity in everyday tasks.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/getting-the-most-from-the-copilot-prompt-gallery/4383106" target="_blank">Learn more.</a>
### Microsoft 365 Copilot
- **Copilot Prompt Gallery – share prompts with a Teams team** [Windows, Web]

  Share custom prompts with members of a Microsoft Teams team directly from Copilot Prompt Gallery, allowing colleagues to easily discover and reuse them in Copilot Chat.
 <a href="https://support.microsoft.com/topic/sharing-prompts-with-a-team-2fa7a228-8645-4dc4-beec-d75d6d0bc752" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Catch up on Task related emails through Microsoft 365 Copilot Chat.** [Windows]

  Users can use Microsoft 365 Copilot Chat to prioritize emails that require immediate attention, address urgent tasks, or contain action items or questions. Timely identification of such emails will help users complete these tasks efficiently or plan their work effectively.
- **Find any past Copilot conversation instantly** [Web]

  Search your Copilot Chat history by keyword to revisit decisions, copy answers, or resume a discussion without endless scrolling.
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=388371" target="_blank">Learn more.</a>
- **Locate your Copilot Pages in Copilot Chat navigation pane** [Windows, Web]

  For quick access to your Copilot Pages, find all page artifacts created across your apps/modules in one place underneath the Chat section in the Microsoft 365 Copilot app.
 <a href="https://techcommunity.microsoft.com/blog/nonprofittechies/introduction-to-microsoft-copilot-pages/4421413" target="_blank">Learn more.</a>
- **Play back responses as audio** [Windows, Web]

  Listen to Copilot's replies with a built-in read aloud feature—ideal for multitasking or when you need to review content hands-free.
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=475967" target="_blank">Learn more.</a>
- **Scheduled prompts** [Windows, Mac, Web, Teams]

  Plan ahead by scheduling essential prompts for repeated tasks in Copilot chat. Create a productive routine that helps you stay organized and efficient.
 <a href="/copilot/microsoft-365/scheduled-prompts" target="_blank">Learn more.</a>
### Microsoft Clipchamp
- **Clipchamp Copilot video creator** [Windows, Web]

  Create a video draft on any topic by providing a prompt. Clipchamp will generate a script, source stock footage and music, add AI voice-over, text overlays, and transitions—giving you a ready-to-edit project you can export to OneDrive.
 <a href="https://support.microsoft.com/topic/how-to-create-video-with-copilot-7586329a-64e0-4ae9-9444-0da5b1c2b848" target="_blank">Learn more.</a>
### Microsoft Loop
- **Rich artifacts in Copilot Pages** [Web]

  You can now create rich artifacts, including interactive charts, tables, complex diagrams, and code created with Copilot from enterprise or web data. Artifacts can be added to Pages to further edit and refine with Copilot. They are interactive and stay in sync across Microsoft 365 when shared for collaborative work.
 <a href="https://support.microsoft.com/topic/turn-raw-data-into-dynamic-visuals-with-microsoft-365-copilot-pages-8a88637e-87f7-4099-b1c3-1472c2ba625c" target="_blank">Learn more.</a>
### Outlook
- **Content language is the default summarize language** [Mac]

  When summarizing Copilot will try to identify the language of the email and summarize in that language.
 <a href="https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-outlook-07420c70-099e-4552-8522-7d426712917b?storagetype=live" target="_blank">Learn more.</a>
### PowerPoint
- **Create a PowerPoint slide from a file or prompt** [Web, Windows, Mac]

  Creating impactful slides can be challenging and time-consuming. Copilot helps you quickly turn your ideas and files into a fully designed slide with content ready to edit and refine, making the presentation creation and refinement process more personalized and efficient.
 <a href="https://support.microsoft.com/topic/add-a-slide-from-a-file-with-copilot-in-powerpoint-9034b581-38df-46be-a725-986cbbd4b5d4" target="_blank">Learn more.</a>
- **Designer is now part of Copilot, enhanced with new template and slide suggestions** [Mac, Windows, Web]

  Enjoy familiar Designer slide layouts and presentation template suggestions in a vertical gallery. Copilot now brings you enhanced suggestions to quickly build impactful presentations.
 <a href="https://support.microsoft.com/office/create-professional-slide-layouts-with-designer-53c77d7b-dc40-45c2-b684-81415eac0617" target="_blank">Learn more.</a>
- **Easily select a template while you create a new PowerPoint presentation with Copilot** [Mac, Web, Windows]

  When creating a new presentation with Copilot in PowerPoint, choose a template from your organization's collection for on-brand presentations, or select from Microsoft's handpicked templates, ensuring the new presentation is built as per your chosen template.
 <a href="https://support.microsoft.com/topic/keep-your-presentation-on-brand-with-copilot-046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>
- **Reference a PDF file when creating a presentation with Microsoft 365 Copilot** [Mac, Windows, Web]

  You can now reference a PDF file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Teams
- **Copilot generated summaries for call transfers on Teams phone devices** [Android]

  Copilot generated summary provides an overview of the details and outcomes of transferred calls. It includes information such as the caller's details, the reason for the transfer, and the final resolution.
 <a href="https://support.microsoft.com/office/get-started-with-copilot-in-microsoft-teams-phone-97c55ffb-1499-4b0a-8caa-980ebb4b697b" target="_blank">Learn more.</a>
- **Speaker recognition and attribution in Teams Rooms on Android** [Android]

  Enhance your meetings with real-time speaker recognition and transcript attribution in Teams Rooms on Android. This feature identifies voices through cloud-enabled intelligent speakers and lets you securely enroll voices via Teams Settings—note that a Teams Rooms Pro license is required.
 <a href="/microsoftteams/rooms/voice-recognition?branch=main&branchFallbackFrom=pr-en-us-14676" target="_blank">Learn more.</a>


<!-- 83163,93511,99006,97583,75354,97166,95275,99896,99890,99009,97921,97647,97603,97372,97288,96951,96241,96065,84642,84119,81005,80339,77194,72079,97492,80341 -->
## June 10, 2025
Updates released between May 29, 2025, and June 10, 2025.
### Copilot extensibility
- **One-click setup for all connectors** [Windows, Web]

  New and existing connectors now install in a single step within the admin center, speeding up data integration and reducing support calls.
 <a href="/microsoft-365-copilot/extensibility/overview-copilot-connector" target="_blank">Learn more.</a>
### Copilot Studio
- **Encrypt Copilot content with your own keys** [Web]

  Microsoft Copilot Studio now allows you to use your own customer manager encryption keys (CMKs, hosted in Microsoft Azure Key Vault) to govern how Copilot Studio encrypts your copilot content.
By using customer managed encryption keys (CMKs), you can ensure that any data provided to your agent by your users, and the data you provide to Microsoft, is encrypted with your own keys.
You maintain control of your keys, providing you further protection over the security of your data and ensuring you have control over how your data is stored at rest.
Key capabilities include hosting with Azure Key Vault to manage your keys, lifetimes, and rotation periods, encryption of all of your content, including copilot topics, settings and configurations, and conversation transcript data, rotation of CMKs, and, evocation of access, if necessary.
 <a href="/microsoft-copilot-studio/admin-customer-managed-keys" target="_blank">Learn more.</a>
- **Improve the agent template gallery in the create page** [Web]

  Experience a redesigned agent template gallery that makes it simple to find and select the right templates quickly. This modern, organized layout boosts productivity and encourages more frequent use.
 <a href="/microsoft-copilot-studio/authoring-install-agent" target="_blank">Learn more.</a>
### Excel
- **Create with Copilot generates templates and tables** [Web]

  Create with Copilot in Excel empowers you to generate tailored templates and tables simply by writing prompts. Its multi-turn conversation refines schemas, formulas, and visuals for a polished result.
- **Improvements to Copilot chat experience** [Windows, Web, Mac]

  Improvements to the Excel Copilot chat experience to give more consistent responses to all chat questions.
### Microsoft 365 Copilot Chat
- **Advanced email filtering in Copilot chat** [Windows]

  Quickly surface exactly the emails you need—ask Microsoft 365 Copilot Chat for “last week’s external emails,” “threads I haven’t replied to,” “purple-category mail,” or “summarize German emails" "emails where I’m on the To line”—and focus on what matters most.
- **Find emails awaiting your reply** [Windows]

  Tell Microsoft 365 Copilot Chat “show me emails that I need to reply” and instantly see unread, read, @mentioned emails or emails with some question, task that you haven’t answered—while hiding threads you’ve already closed—so you can clear your inbox with confidence.
- **Manage Microsoft 365 Copilot personalization in one place**

  A new tenant-level control groups personal-productivity AI features under a single toggle, letting admins enable or disable them globally or by Entra group with ease.
 <a href="/graph/control-enhanced-personalization-privacy" target="_blank">Learn more.</a>
- **Microsoft 365 Copilot Chat: Updates to Copilot Chat response output** [Web]

  Easily interact with Microsoft Graph content represented by bolder references, new action bar, and more.
- **Module UI refresh** [Windows, Web]

  Copilot Chat is designed to provide a streamlined UI, making it easy to get started and achieve your goals quickly. It offers a helpful, understanding, and personalized experience, allowing you to search for past interactions, content, agents, or pages with ease.
 <a href="https://support.microsoft.com/en-us/topic/get-started-with-microsoft-365-copilot-chat-5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>
- **Simplified Input box update** [Windows, Web]

  We've made it easier for users to type prompts with access to CIQ, local files, attach cloud files, and agents by adding it under the Plus Menu.
### Microsoft Loop
- **Add a Loop workspace to your Teams channel** [Web]

  Pin a Loop workspace as a channel tab so everyone can brainstorm, co-create, and organize project content in real time while membership, governance, and compliance stay in sync.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/collaborate-in-real-time-with-workspaces-in-teams/4414334" target="_blank">Learn more.</a>
- **Copilot Pages module on Microsoft 365 Copilot mobile app** [iOS]

  With the Copilot Pages module in the Microsoft 365 Copilot app on your mobile, you can now access all of your Pages in one place on the go.
 <a href="https://support.microsoft.com/topic/create-edit-and-share-microsoft-365-copilot-pages-from-your-phone-6426dfd5-081c-4a9f-b35e-830685deeda7" target="_blank">Learn more.</a>
- **Create Copilot Pages from Copilot Chat on your mobile phone** [iOS]

  Create Copilot Pages on your mobile phone to continue working on the go. Pages shared in Microsoft 365 are interactive and automatically synchronized for seamless collaboration.
 <a href="https://support.microsoft.com/en-us/topic/create-edit-and-share-microsoft-365-copilot-pages-from-your-phone-6426dfd5-081c-4a9f-b35e-830685deeda7" target="_blank">Learn more.</a>
### Microsoft Purview compliance portal
- **Data Security Posture Management for AI** [Web]

  Microsoft Purview Data Security Posture Management for AI (DSPM for AI) is a centralized location to gain insights into generative AI activity including the sensitive data flowing in AI prompts.
 <a href="/purview/ai-microsoft-purview-considerations" target="_blank">Learn more.</a>
- **Gain DLP policy insights with Copilot** [Web]

  Let Copilot instantly summarize Data Loss Prevention policies across locations, classifiers, and notifications. Use natural-language prompts to zoom into specific policies, spot gaps, and adjust settings faster—keeping your organization’s data posture aligned without manual digging.
 <a href="/purview/dlp-test-dlp-policies#get-insights-with-security-copilot" target="_blank">Learn more.</a>
### OneNote
- **Include OneNote pages in Copilot reasoning**

  Copilot can now use your OneNote content as context, helping you generate more informed summaries, drafts, and action items.
### Outlook
- **Custom Instructions for draft with Copilot** [Android, Windows, iOS, Mac, Web]

  Give Copilot some instructions about your emails - like the tone, length, greeting - so your Copilot generated drafts sound more like you want them to. #newoutlookforwindow
- **Schedule a meeting from an email with Copilot** [Android, Windows, iOS, Mac, Web]

  Turn any email thread into a meeting in one click. Copilot builds a complete invite for your review —title, agenda, attendee list, and a summary of the email conversation—plus attaches the original email thread so everyone is up to speed. Available in the new Outlook for Windows, web, Mac, and mobile. #newoutlookforwindows
 <a href="https://support.microsoft.com/office/create-a-meeting-and-agenda-with-copilot-in-outlook-31a44dfa-62bb-4751-82c4-14327a26759f" target="_blank">Learn more.</a>
### PowerPoint
- **Microsoft 365 Copilot Chat: Reference a TXT file when creating a presentation with Copilot** [Windows, Mac, Web]

  You can now reference a TXT file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Teams
- **Improvements to the transcription experience in meetings** [Windows, Mac]

  These updates enhance the transcription experience in meetings. When transcription, recording, or Copilot is enabled, users are prompted to choose the spoken language for accurate captions. Once transcription is running, only the organizer, co-organizers, and transcript initiator can change that language. A new settings page under Caption settings > Language settings > Meeting spoken language, along with a matching option under Transcript > Language settings, streamlines configuration. If someone speaks a language that doesn’t match the selected one, The organizer/co-organizer and initiator receives a mismatch notification so they can adjust quickly.
 <a href="https://support.microsoft.com/office/use-live-captions-in-microsoft-teams-meetings-4be2d304-f675-4b57-8347-cbd000a21260#:~:text=The%20meeting%20organizer%2C%20co%2Dorganizer(s)%2C%20transcript,Select%20Update%20to%20change." target="_blank">Learn more.</a>
- **Microsoft Teams: Intelligent recap support for ad-hoc meetings and calls in GCC High** [Android, Windows, iOS, Mac, Web]

  Intelligent meeting recap is now available in GCC High for impromptu calls and meetings, like those started from ‘Meet now’ and calls started from chat. You can easily browse the recording by speakers and topics, as well as access AI-generated notes, AI-generated tasks, and name mentions after the ad-hoc meeting ends. This capability is available for users with a Teams Premium or M365 Copilot license.
### Viva Glint
- **Feature access management for Copilot in Viva Glint** [Web]

  Enable or disable Copilot in Viva Glint for specific users directly from the Microsoft 365 admin center, giving you granular control over AI access.
 <a href="/viva/feature-access-management" target="_blank">Learn more.</a>
### Word
- **Draft content from up to 10 chosen references** [Mac, Windows]

  Type a forward slash (/) to pick as many as ten files, meetings, or emails for Copilot to cite while drafting your document. The release started with 10 chosen references but is expanding to support up to 20.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/expanding-reference-capabilities-with-microsoft-365-copilot-in-word/4406054" target="_blank">Learn more.</a>
- **Write a prompt for selected portions of text in Word** [Mac]

  Writing a prompt to draft content based on your selection no longer expands your selection to the entire paragraph, table, or list. You can prompt based on a single sentence or item.
- **Write a prompt for selected text in Word** [Windows]

  Draft content based only on the sentence or list item you highlight—no more expanding the selection to the entire paragraph or table.


<!-- 84861,96546,96718,97369,97368,95365,95364,94668,96235,96064,97319,97318,99424,97439,95187,97261,96531,97084,96912,95901,95897,94435,84445,84435,81914,95901 -->
## May 29, 2025
Updates released between May 13, 2025, and May 29, 2025.
### Copilot extensibility
- **Create agents that learn from a Teams channel**

  Build custom Copilot agents that pull knowledge directly from a chosen Teams channel, letting them answer FAQs or surface project updates without extra coding.
- **Insert images in adaptive cards for richer interactions** [Windows, Web]

  Make your adaptive cards more dynamic by adding images—perfect for illustrating ideas, sharing visual data, or engaging users with eye-catching content. This feature helps teams communicate clearly, support diverse learning styles, and create more memorable interactions in everyday workflows.
 <a href="/microsoft-copilot-studio/guidance/adaptive-card-summarize-responses" target="_blank">Learn more.</a>
- **Unified Agent Management for admins in Microsoft 365 admin center** [Windows, Web]

  Admins can consistently manage Copilot agents in the Microsoft 365 admin center, regardless of how they were built, simplifying deployment and governance.
 <a href="/microsoft-365/admin/manage/manage-plugins-for-copilot-in-integrated-apps" target="_blank">Learn more.</a>
### Copilot Studio
- **Reuse connector and API actions across multiple copilots** [Web]

  Take an action that already works in Copilot for Sales and publish it to Customer Service—or any other eligible Copilot—in a few clicks. Skip duplicate setup, speed up delivery, and keep functionality consistent, all with built-in admin approval flows.
 <a href="/microsoft-copilot-studio/agent-extend-action-rest-api" target="_blank">Learn more.</a>
- **Unpublish connector actions when data or services change** [Web]

  Roll back a published connector to draft so it no longer appears in Microsoft 365 Copilot. Makers can pause their own connectors, and admins can disable any connector to update configurations or retire obsolete services—without deleting them.
 <a href="/power-platform/release-plan/2025wave1/microsoft-copilot-studio/unpublish-connector-actions-copilot-agents" target="_blank">Learn more.</a>
### Excel
- **Access Copilot tools right from the grid** [Windows]

  A handy Copilot icon and context menu now follow your work in the worksheet, letting you launch summaries, formula help, and more without breaking focus.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/how-to-get-started-with-copilot/4383870" target="_blank">Learn more.</a>
- **Improved fallback answers in Copilot Chat** [Web]

  When specific data isn’t found, Copilot seamlessly shifts to general reasoning so conversations keep flowing and users avoid dead ends in Excel for the web.
- **Visual outline confirms Copilot's data range** [Mac]

  When you call on Copilot, Excel now draws a clear border around the table or cell range in focus. Instantly see exactly what data will be summarized, cleaned, or chart-ready—so you can adjust the selection before Copilot gets to work.
### Forms
- **Automate response collection and insights in Forms** [Web]

  Copilot builds a follow-up plan, sends reminders, tracks progress, and surfaces early trends—then hands off to Excel for deeper analysis—so you spend less time chasing respondents and more time acting on feedback.
 <a href="https://techcommunity.microsoft.com/blog/microsoftformsblog/introducing-new-agentic-features-for-copilot-in-forms-%E2%80%93-create-refine-and-share-/4406237" target="_blank">Learn more.</a>
- **Copilot in Forms can now reference files to help generate drafts** [Web]

  When creating a form with Copilot, users can now reference existing documents such as Word, Excel, and PowerPoint. Users can also reference an existing form by pasting the form's URL into the prompt box. Additionally, Copilot can search and suggest relevant files when generating a form, so users can easily create a draft that meets their needs.
 <a href="https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-forms-c9941b72-b32e-4c7e-9af9-e603929bb1d2" target="_blank">Learn more.</a>
- **Copilot in Forms has been refreshed to help users better refine and edit their forms** [Web]

  Copilot in Forms has been revamped to more easily help users refine and modify their forms. Users can now type prompts to Copilot to help with editing and refinement, so they can get tailored suggestions and easily get their forms ready to send.
 <a href="https://techcommunity.microsoft.com/blog/microsoftformsblog/introducing-new-agentic-features-for-copilot-in-forms-%E2%80%93-create-refine-and-share-/4406237" target="_blank">Learn more.</a>
### Microsoft 365 admin center
- **Usage reports – monitor Copilot.cloud.microsoft/Teams/Outlook activity in Microsoft 365 Copilot Chat usage report** [Web]

  Track active users and last activity dates for Copilot.cloud.microsoft, Teams, and Outlook—even for employees without a Copilot license—to gauge grassroots adoption and fine-tune rollout plans in Microsoft 365 Copilot Chat usage report.
 <a href="/microsoft-365/admin/activity-reports/microsoft-copilot-usage" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Analyze usage of declarative agent in Developer Portal**

  Developers of custom app and published apps can analyze declarative agent usage in Developer Portal. By using these analytics, developers can gain valuable insights into how users interact with your app, identify areas for improvement, and make data-driven decisions to enhance the overall user experience.
 <a href="/microsoftteams/platform/concepts/build-and-test/analyze-your-apps-usage-in-developer-portal?tabs=custom-apps-built-for-your-org" target="_blank">Learn more.</a>
- **Bring Azure AI Search indexes into Copilot Studio knowledge** [Web]

  Attach existing Azure AI Search indexes as grounding data, enabling natural-language queries over enterprise content with minimal setup and no added cost.
- **Copilot Chat now offers access to cloud files to insert in user prompts** [Windows, Web]

  In the Web tab of Copilot Chat or Microsoft 365 Copilot, users can browse OneDrive or SharePoint, select a file, and drop it into their prompt to give Copilot precise context for richer responses.
- **Enable agent builder for Copilot chat** [Windows, Web]

  Empower developers with the ability to build custom agents to support Copilot Chat. This feature streamlines the creation of tailored chat experiences that enhance everyday communication and workflow.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Enhanced typography improves readability** [Windows]

  Enjoy crisper fonts, roomier line spacing, clear headers, and neatly formatted tables and code blocks—making every Copilot chat easier to scan, share, and act on.
- **Expanded reference panel for sources and search results** [Windows]

  The reference widget now shows both cited sources and relevant web results, helping you verify information, resolve ambiguities, and ask smarter follow-up questions without leaving the chat.
- **Ground copilots with real-time data from Salesforce, ServiceNow, and more** [Web]

  Connect structured records from popular non-Microsoft apps directly in Copilot Studio so users can ask, “Show my open Zendesk tickets” and get instant answers without leaving chat.
- **Pay-as-you-go policies keep Copilot costs in check** [Windows, Web]

  Allocate budgets by department, set usage caps, and manage access from the admin center so your organization can innovate with Copilot while staying on budget.
  <a href="/copilot/microsoft-365/pay-as-you-go/overview" target="_blank">Learn more.</a>
- **Safe Links validates redacted URLs** [Windows]

  When Copilot masks a link, Safe Links now scans it instantly and alerts users to malicious sites, adding an extra layer of protection before anyone clicks. 
 <a href="https://techcommunity.microsoft.com/blog/microsoftdefenderforoffice365blog/safelinks-protection-for-links-generated-by-m365-copilot-chat-and-office-apps/4396828" target="_blank">Learn more.</a> 
### PowerPoint
- **Ask Copilot to rewrite text as a list** [Web, Mac, Windows]

  Transform paragraphs into clear bullet points or lists with a single command—ideal for quickly organizing content when preparing your presentation.
 <a href="https://support.microsoft.com/topic/elevate-your-presentation-game-with-copilot-s-text-rewrite-feature-in-powerpoint-d70b140b-bb3f-46b7-be64-ceec526a8dcd" target="_blank">Learn more.</a>
### Word
- **Ask agents to refine any text selection** [Windows, Web]

  Highlight a section of your document and let Copilot agents rewrite, shorten, or expand it—keeping the rest of your file private while you perfect the details.
- **Ask Copilot to analyze document visuals** [Mac]

  Add any image, chart, or diagram to your prompt and Copilot instantly extracts text, explains trends, suggests alt text, and surfaces quick insights—making documents more accessible and informative in seconds.
- **Chat with Copilot about any image or chart** [Windows]

  Drop a visual into Copilot chat to extract text, get a plain-language description, generate alt text, or request quick insights—perfect for accessibility checks or fast analysis.
 <a href="https://support.microsoft.com/topic/file-upload-in-microsoft-copilot-8b7bf432-9576-4b16-9dee-6c19a4169e62" target="_blank">Learn more.</a>


<!-- 84071,75164,96970,94471,93054,97570,83243,96611,99154,96312,98521,98109,97225,96829,96255,96244,94126,93931,93064,93062,84439,83241,95055,72529,99153 -->
## May 13, 2025
Updates released between April 29, 2025, and May 13, 2025.
### Copilot Studio
- **Deeper visibility into agent runs**

  Trace every agent session from trigger to transcript. Inspect actions, inputs, and outputs in one place to debug faster, refine behavior, and document compliance.
 <a href="/power-platform/release-plan/2024wave2/change-history" target="_blank">Learn more.</a>
- **Monitor autonomous agents with detailed analytics** [Web]

  Instantly see run volume, trigger breakdowns, success rates, action paths, and run-time details for every autonomous agent. Use these insights to spot failures, tune performance, and boost reliability before your users notice issues.
- **Single connector for knowledge and actions** [Web]

  You can now reuse connector actions across multiple Copilot deployments without recreating them each time. This feature lets you select a previously published action—such as one from Copilot for Sales—and publish it to other endpoints, such as Copilot for Customer Service, with just a few clicks. It’s enabled by default and streamlines deployment while reducing duplication.
 <a href="/power-platform/release-plan/2024wave2/microsoft-copilot-studio/publish-connector-actions-multiple-copilot-deployments" target="_blank">Learn more.</a>
### Excel
- **Advanced analysis with Python and Copilot** [Windows]

  Chat with your spreadsheet and let Copilot run Python scripts to surface trends, build rich visuals, and test what-if scenarios—now fully localized for your team’s language.
 <a href="https://support.microsoft.com/office/copilot-in-excel-with-python-364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
- **Ask Copilot about any part of your sheet** [Web, Mac, Windows, iOS]

  When you ask questions about your worksheet, Copilot can look at the content of your sheet and use it to inform an answer to your question. This will include understanding worksheet data on your selected area, beyond tables and ranges, and provide Copilot answers in chat.
- **Easily access copilot on web** [Web]

  Find a dedicated Copilot icon in your web spreadsheet, allowing you to tap into AI-powered insights and streamline tasks without breaking your workflow.
 <a href="https://support.microsoft.com/office/get-started-with-copilot-in-excel-d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>
- **Visual cue for Copilot’s data context** [Web]

  A subtle outline now highlights the exact cells or table Copilot is working with, so you can confirm the right data is selected before insights or edits are generated.
### Microsoft 365 admin center
- **AI adoption score** [Web]

  A new people experiences category in Adoption Score in the Microsoft 365 admin center introduces AI adoption metrics, helping organizations understand how Microsoft Copilot features are being used across Microsoft 365.
 <a href="/microsoft-365/admin/adoption/ai-adoption-score#organizational-messages-in-ai-adoption-score" target="_blank">Learn more.</a>
- **Manage pay-as-you-go billing for Copilot** [Windows, Web]

  Admins can manage pay-as-you-go billing directly within Copilot settings in the Microsoft 365 admin center. This capability is available to users with Global admin, AI admin, and Global reader roles.
 <a href="/copilot/microsoft-365/pay-as-you-go/setup" target="_blank">Learn more.</a>
- **Overview of Copilot for admin** [Web]

  Streamline IT management with Copilot’s real-time, contextually relevant insights that help you make faster, data-driven decisions in the Microsoft 365 admin center.
 <a href="https://aka.ms/copilotinmac" target="_blank">Learn more.</a>
### Microsoft 365 Copilot app
- **Copilot in Excel with Python for Mac** [Mac]

  Speak plain English and let Copilot write and run Python for forecasting, machine learning, and rich visuals—results land right on the grid in Excel for Mac.
 <a href="https://support.microsoft.com/office/copilot-in-excel-with-python-364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Conversation history grouped by time frame**

  Copilot Chat now clusters past sessions into daily and weekly views, making it easier to scan, revisit, and manage your conversations.
- **Copilot pages in Government Clouds** [Windows]

  Copilot Pages is an interactive, shareable canvas in Microsoft 365 Copilot Chat designed for multiplayer AI collaboration. With Pages, users can turn Copilot responses into something durable with a side-by-side page where users can edit and share with others to collaborate. Now available for Government Cloud users.
 <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>
- **Create web-aware agents in Agent Builder**

  Build declarative agents that draw knowledge from up to four public websites, delivering more precise, source-linked answers inside Microsoft 365 chat experiences.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Image generation in mobile Copilot chat** [Android, iOS]

  Create images using natural language to visualize concepts and ideas within the flow of work, directly in Copilot on Microsoft 365, Teams, and Outlook mobile apps.
- **Unified prompt box across web and work chats** [Windows, Web]

  Enjoy a consistent prompting experience across Copilot Chat with an input box that looks and behaves the same in both work and web chat modes.
### Microsoft Graph
- **Agent plugins for Semantic Kernel :** [Developer]

  Accelerate Copilot solutions by adding ready-made plugins that tap Microsoft 365 data and actions through Semantic Kernel—so you can build smarter agents with far less code.
 <a href="/dotnet/api/microsoft.semantickernel.declarativeagentextensions" target="_blank">Learn more.</a>
### Microsoft Viva
- **AI Administrator can manage Microsoft Copilot Dashboard settings** [Web]

  Delegate Copilot Dashboard control to the new Entra AI Administrator role, giving admins the  permissions they need without granting AI admin privileges.
 <a href="/viva/insights/advanced/admin/manage-settings-copilot-dashboard" target="_blank">Learn more.</a>
### OneDrive
- **Ask Copilot questions about images** [Web]

  Select up to five pictures in OneDrive Web and chat with Copilot to summarize, extract text, or describe what’s inside—perfect for cataloging photos or pulling details from scanned documents.
 <a href="https://support.microsoft.com/topic/ask-about-a-topic-without-opening-your-files-8ea1bb0d-5ae7-4f81-8cb8-cd755862834b" target="_blank">Learn more.</a>
### PowerPoint
- **Get slide template suggestions as you create** [Windows]

  Copilot now recommends polished layouts the moment you add or name a slide, letting you stay in the flow and skip manual design hunts.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/jumpstart-your-presentations-with-slide-starters/4407669" target="_blank">Learn more.</a>
- **Suggestions for slide templates as you work** [Mac, Web]

  On PowerPoint for Mac, Copilot proposes design-ready layouts as soon as you insert a slide or start typing a title, helping you build polished decks faster.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/jumpstart-your-presentations-with-slide-starters/4407669" target="_blank">Learn more.</a>
### Viva Insights
- **Viva Insights now included in Microsoft 365 Copilot subscriptions** [Windows, Web]

  Create advanced, custom reports with Viva Insights to understand Copilot adoption, productivity and business impact. Full access to Viva Insights is available now with Microsoft 365 Copilot subscriptions.
### Word
- **Choose the level of detail for summaries when documents are opened** [Windows, Mac, Web]

  Tailor each document opening with your preferred summary style—select brief, standard, or detailed insights to match your workflow.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Key statistics at a glance in Copilot summaries** [Web]

  Instantly see critical numbers—totals, dates, percentages, and more—in the Understanding tab, so you can grasp a document’s quantitative story in seconds.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Suggested questions help you explore any document** [Web]

  The Understanding tab now proposes smart questions about the file you’re reading—just click one to see Copilot’s answer and dive deeper without crafting your own prompt.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>


<!-- 81919,84441,95810,96545,96544,78144,73690,82869,77902,94411,98033,97295,96404,97414,83947,81916,96508,96512 -->
## April 29, 2025
Updates released between April 16, 2025, and April 29, 2025.
### Excel
- **Ask Copilot to extract insights from inserted images** [Windows]

  Transform images in your Excel workflows into actionable data. Simply insert an image into the prompt area and ask Copilot to break down details and trends, so you can make informed decisions on the fly.
- **Formula Explain on grid entry points** [Web]

  Understand complex formulas by triggering step-by-step explanations directly from the grid. Copilot breaks down calculations and clarifies references so you gain confidence when working with your data.
 <a href="https://support.microsoft.com/topic/understanding-formulas-with-copilot-7838fb47-7309-4dac-ba7a-8080cb75ee06" target="_blank">Learn more.</a>
- **Paste images into Copilot chat** [Web, Windows]

  Ask questions about images you insert into the prompt area to extract key data for your spreadsheets.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/add-images-to-your-copilot-prompts-in-word-and-powerpoint/4359423" target="_blank">Learn more.</a>
- **Seamless transition from clean data to Copilot chat** [Web]

  After finalizing your data with Clean Data, effortlessly switch to Copilot chat for deeper insights and analysis.
 <a href="https://support.microsoft.com/office/clean-data-in-excel-7fe20d89-3f57-46d3-b659-e8f3ee853bda" target="_blank">Learn more.</a>
### Microsoft 365 Copilot extensibility
- **Agent builder now available in new regions** [Windows, Web]

  You can now access Copilot Studio agent builder in Norway, Sweden, South Korea, and South Africa.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-availability#regional-availability" target="_blank">Learn more.</a>
- **Developers using Copilot Studio can use API key auth for actions in a declarative agent**

  Developers using Copilot Studio can now leverage API key authentication to perform actions in a declarative agent, enhancing security and integration ease.
 <a href="/microsoft-365-copilot/extensibility/overview-api-plugins" target="_blank">Learn more.</a>
- **Grounding with metered consumption in Copilot Studio**

  Makers can now ground their agents built in Copilot Studio with their enterprise data using metered consumption. This ensures compliant access to your enterprise data estate without need to export or egress content to an alternate location or public cloud, creating vector embeddings, or custom RAG solutions. This feature provides flexible and cost-effective access to secure data retrieval.
 <a href="/microsoft-365-copilot/extensibility/prerequisites" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Microsoft 365 Copilot for GCC Environments: Wave 2** [Windows]

  Bringing Microsoft 365 Copilot GCC your AI assistant for work in the GCC environment. It combines the power of Large Language Models with your work content and context, to help you draft and rewrite, summarize and organize, catch up on what you missed, and get answers to questions via open prompts. Copilot generates answers using the rich, people-centric data and insights available in the Microsoft Graph. Microsoft 365 Copilot GCC is now available in Stream, SharePoint, OneNote, and Pages in Loop.
 <a href="https://techcommunity.microsoft.com/blog/publicsectorblog/what%E2%80%99s-new-in-microsoft-365-copilot-for-government/4399086" target="_blank">Learn more.</a>
- **Submit feedback on the agent builder experience** [Windows, Web]

  Improve your custom Copilot Chat solutions by providing targeted feedback on RAI and agent response during test chats. This direct input helps refine and enhance the builder experience.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder#submit-feedback" target="_blank">Learn more.</a>
### Microsoft Purview
- **GCC Microsoft Purview capabilities for Microsoft 365 Copilot** [Web]

  Microsoft Purview is launching several capabilities in government cloud environments that help secure and govern data in Microsoft 365 Copilot. These are capabilities in Information Protection, Data Lifecycle Management, Audit, eDiscovery, and Communication Compliance. These capabilities will be available once Microsoft 365 Copilot is deployed.
 <a href="/purview/ai-microsoft-purview" target="_blank">Learn more.</a>
### Outlook
- **Chat with Copilot in Outlook for Mac** [Mac]

  The same Microsoft Copilot experience you can get in the Microsoft Teams app, at copilot.microsoft.com (work mode) and in other places is now available from within Microsoft Outlook for Mac. You can find the Copilot app in the left app bar.
 <a href="https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-outlook-07420c70-099e-4552-8522-7d426712917b" target="_blank">Learn more.</a>
- **Prepare for meetings with AI-generated insights** [Web]

  Stay ahead of busy schedules by using the proactive “Prepare” button in your inbox to generate key meeting insights and summarize relevant files—helping you arrive ready to engage.
 <a href="https://support.microsoft.com/topic/prepare-for-your-meeting-with-copilot-f23326fc-7721-45f1-875e-23e77aaf3d89" target="_blank">Learn more.</a>
### SharePoint
- **Restricted access control enhancements** [Web]

  New enhancements for RAC policy for SharePoint administrators to restrict access to SharePoint sites including managing Microsoft 365 group connected sites with Microsoft 365 groups or Security groups.
 <a href="/sharepoint/restricted-access-control" target="_blank">Learn more.</a>
### Viva Learning
- **AI & Copilot Resources provider availability to all Viva Learning users** [Windows, Web, Teams]

  The AI & Copilot Resources provider is now enabled by default for all Viva Learning users. Administrators now have the ability to manage the visibility of this provider within Viva Learning.
 <a href="/viva/learning/ai-and-copilot-resources" target="_blank">Learn more.</a>
- **Copilot Academy availability to all Microsoft 365 users** [Windows, Web, Teams]

  Copilot Academy is now accessible to users without Copilot licenses. Admins now  have the option to select their preferred access settings for Copilot Academy.
 <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>
### Word
- **Coach is now generally available across all markets and languages that Copilot currently supports** [Web]

  Coach is now generally available across all markets and languages that Copilot currently supports, ensuring a consistent experience for every user.
 <a href="https://support.microsoft.com/topic/use-coaching-to-review-content-in-word-for-the-web-fa09c055-d623-4d20-954f-9b064a5a7c80" target="_blank">Learn more.</a>
- **Reference a whole folder when prompting Copilot** [Web]

  Quickly attach a folder from OneDrive or SharePoint by typing a forward slash (/) or selecting the attach icon. Copilot now uses the 10 most recent files from your selected folder to streamline your document creation.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/expanding-reference-capabilities-with-microsoft-365-copilot-in-word/4406054" target="_blank">Learn more.</a>
- **Replace your selection with generated content** [Web, Mac, Windows]

  Selecting the Replace button lets you instantly replace your selected text with content that was generated in Draft with Copilot.


<!-- 95249,84156,76195,73845,97889,95286,95264,96345,84526,83221,83405 -->
## April 16, 2025
Updates released between April 2, 2025, and April 16, 2025.
### Excel
- **Access Copilot on-grid in Windows** [Windows]

  A Copilot icon appears right within your spreadsheet on Windows, giving you quick AI assistance as you work to keep your flow uninterrupted.
 
- **Graph-grounded chat** [Windows, Mac, Web]

  Ask Copilot in Excel for insights drawn from your chats, documents, meetings, and emails via Microsoft Graph—enhancing your workbook analysis with contextual organizational data.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
- **Use Copilot to search for answers from the web** [Windows, Mac, Web]

  In Excel, simply ask Copilot to search the web for answers and integrate the insights directly into your workbook, making data analysis even smoother.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
### Microsoft 365 admin center
- **AI Admin role has permissions to manage agents** [Web]

  As an AI Admin, you manage agents with various capabilities including creating and overseeing Copilot connections that index data in Graph and perform actions, controlling which makers can build these connections and regulating the data sources used, maintaining observability over all connections, approving or denying agents, pre-installing them without requiring consent, and viewing them in Microsoft 365 admin center integrated apps page.
 
### Microsoft 365 Copilot Chat
- **Get contextual suggestions during Copilot agent conversations** [Windows, Web]

  Speed up tasks with AI-driven prompts for next steps in Copilot Chat. See real-time suggestions to refine queries, dive deeper into topics, or resolve issues faster during agent interactions.
 
- **Support for longer prompts** [Windows, Web]

  Copilot Chat now supports larger inputs for smoother handling of extensive documents and data.
 
### Microsoft 365 Copilot extensibility
- **Discover agents for unlicensed and metered users** [Windows, Web]

  Empower more users with easy access to agents tailored to their needs—even if they are unlicensed or metered—broadening Copilot’s reach across your organization.
 <a href="/microsoft-365-copilot/extensibility/debugging-copilot-agent" target="_blank">Learn more.</a>

- **Enable developer mode in Copilot Chat** [Developer]

  Leverage Microsoft 365 Copilot Chat developer mode directly within your development tools, simplifying the process to build and test custom integrations.
 <a href="/microsoft-365-copilot/extensibility/debugging-copilot-agent" target="_blank">Learn more.</a>

### OneNote
- **Copilot-powered organization in OneNote** [Windows]

  Transform a flat list of pages within a section to have an intuitive hierarchy. Ask Copilot in chat to organize your section and apply the update for a streamlined Notebook organization experience.
 <a href="https://support.microsoft.com/topic/organize-your-notes-with-copilot-in-onenote-f7d0477b-676c-4fa1-8c82-8900bb888618" target="_blank">Learn more.</a>
### PowerPoint
- **Copilot in PowerPoint has improved performance when summarizing your presentation** [Web]

  PowerPoint Copilot now updates its language models regularly to deliver faster summaries, helping you quickly review your presentation content.
 
### SharePoint
- **Author engaging web pages with Authoring** [Web]

  Combine the power of Large Language Models, your data in the Microsoft Graph, built-in or custom templates, and existing documents to create high-quality SharePoint pages while ensuring enterprise-level data security and privacy.
 <a href="https://techcommunity.microsoft.com/blog/spblog/create-pages-with-copilot-in-sharepoint/4394588" target="_blank">Learn more.</a>


## April 2, 2025
Updates released between March 20, 2025, and April 2, 2025.
### Copilot Studio
- **Enhanced SharePoint URL support in Copilot Studio** [Web]

  Previously, only SharePoint site URLs could be used as knowledge for Copilot Studio agents. Users can now use SharePoint file, folder, and site URLs, including links from the Share button or browser address bar; once the URLs are added, the agents will be grounded to the content within the URL. Additionally, more granular error messages help with transparency and managing expectations.
 <a href="/microsoft-copilot-studio/knowledge-add-sharepoint" target="_blank">Learn more.</a>
- **Public website scoping for agents** [Web]

  Makers can now scope agents' knowledge sources to specific websites, enhancing the precision of web searches. This capability, previously available in custom agents from Microsoft Copilot Studio, is now extended to agents in the Microsoft  365 context.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build#add-knowledge-sources" target="_blank">Learn more.</a>
- **SharePoint knowledge for agents** [Web]

  Makers can now leverage additional data sources, including Dataverse and SharePoint, when building autonomous agents. This expands the variety of use cases for autonomous agents.
- **Use agent builder in Copilot chat** [Web]

  Create custom agents in Copilot chat to streamline repetitive tasks and achieve consistency. Use specific instructions and grounding details to save time, reuse your agents, and enhance team productivity.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
### Excel
- **Gain insights with Copilot and Python in Excel on Web** [Web]

  Using everyday language, ask Copilot to perform advanced analytics like machine learning and predictive forecasting, which would usually take hours or require special skills. Copilot writes Python code and inserts it on the grid, providing deeper insights and stunning/ visuals. Available in multiple languages on Excel for the Web.
 <a href="https://support.microsoft.com/office/364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
- **Read aloud for Excel text responses** [Web]

  Users can now use the Read Aloud button on the Copilot response card to have an audio narration of the response, enhancing accessibility and ease of information consumption.
### Microsoft 365 admin center
- **View security information and certification evidence** 

  Admins in Microsoft 365 Admin center can view the evidence of audits, and self-attestation to provide further confidence as to the certification, and compliance, of public apps and agents.
### Microsoft 365 Copilot Chat
- **Ask questions about images with natural language** [Android, iOS, Web]

  Easily gain insights from images by asking natural language questions. Upload images for quick analysis using advanced vision models—helping you make sense of visual data across your apps.
- **Enhance email insights with interactive hovers** [Web]

  Enjoy enriched emails with interactive hovers that reveal contextual details—like sender info, dates, and follow-up prompts—to streamline your daily workflow.
### Microsoft 365 Copilot Studio
- **Collect user feedback in Copilot Studio agent builder** [Web]

  Makers can also now submit feedback—compliments, problems, or suggestions—directly to the product team from inside the Microsoft 365 agent builder. This can be done at any stage of the authoring process, including comments and optional metadata for troubleshooting. This feature allows quick issue reporting without disrupting workflow and enables the product team to address feedback efficiently.
 <a href="/power-apps/maker/canvas-apps/agent-builder#provide-feedback" target="_blank">Learn more.</a>
### Microsoft Loop
- **Load existing Copilot pages and create multiple pages** [Web]

  With multipage functionality in Copilot Pages, users can load existing pages and create multiple pages within a single conversation.
 <a href="https://support.microsoft.com/topic/add-copilot-chat-responses-to-multiple-pages-a5c40f74-55d0-4f1f-80d8-539ccc1a4bcb" target="_blank">Learn more.</a>
- **Recap changes over a longer time** [Web]

  Recap changes in Loop over extended periods, such as the last week or last 30 days, instead of being limited to the current session. This feature helps users share updates more effectively.
### PowerPoint
- **Translate your presentation** [Windows, Web, Mac]

  Produce a translated copy of your entire presentation in about 40 languages while preserving your slide design and structure, making global collaboration effortless.
 <a href="https://support.microsoft.com/topic/translate-your-presentation-with-copilot-2c622fca-daaf-457c-bc74-f3496cf44a85" target="_blank">Learn more.</a>
### Viva Engage
- **Questions surfacing in Copilot results**

  Viva Engage questions from communities, storyline, and Answers surface in Copilot results.
 <a href="" target="_blank">Learn more.</a>
### Word
- **Narrate your ideas to Copilot** [iOS]

  Brainstorm out loud and let Copilot convert your voice notes into structured documents, making it easier to organize and develop your ideas.
- **Rewrite with Copilot** [iOS]

  Get suggestions from Copilot on how to rewrite any text, helping you improve clarity and style effortlessly.
- **Simplified prompt experience in chat** [Web]

  The chat experience in Word is now simplified with access to attachments, images, and agents now accessed form a single plus-sign menu.
- **Visualize as table** [iOS]

  Easily convert plain text into structured tables, helping you organize and present data more effectively in your daily work.

## March 19, 2025

Updates released between March 5, 2025, and March 19, 2025.

### Copilot Studio

- **Use generative actions** [Web]  

  Replace manual topic triggers with AI-powered orchestration. You can now configure an agent to use generative AI to dynamically select relevant topics or plugin actions, creating more fluid conversations while reducing manual topic configuration. <a href="/microsoft-copilot-studio/advanced-generative-actions" target="_blank">Learn more.</a>

- **Create automated copilots triggered by events** [Web]  

  Automates routine tasks by triggering copilots on events like table updates, new documents, or incoming emails—minimizing manual effort and keeping processes running smoothly. <a href="/microsoft-copilot-studio/authoring-triggers-about" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Enhanced transparency for declarative agent metadata**  

  Admins can now view granular metadata in the Microsoft 365 Admin Center—including data source details and custom actions—for declarative agents. This clarity enables more informed decisions on app availability and management across your organization.

- **Manage shared Copilot agents across your organization** [Web]  

  Tenant admins can now view, search, and block shared Copilot agents in the admin center. Maintain control over agent usage and ensure compliance with organizational policies.

### Microsoft 365 Copilot App

- **View, edit and share Copilot Pages on mobile** [Android, iOS]  

  Stay productive while on the go—use the Microsoft 365 mobile app to view, edit, or share Copilot-generated pages instantly. Collaborate with colleagues in real time, whether you’re commuting or between meetings. <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Copilot on Edge Update** [Web]  

  Copilot on Edge has been updated and requires users to update their version of Edge to version 134.0.3124.51 or newer to receive the latest functionality. This update includes file upload availability on the web tab as well as a smoother authentication experience via the Edge Work Profile.

- **Enhanced large file support in Copilot Chat**  

  Work seamlessly with larger documents in Copilot Chat. You can now reference and interact with bigger files, such as lengthy reports or detailed presentations.

- **Prompt suggestions in Copilot chat** [Windows, Web, Mac]  

  Get started in Copilot chat quickly with automatic prompt suggestions that enhance your productivity by providing relevant and context-aware prompts based on your previous interactions.

### Microsoft 365 Copilot extensibility

- **Support for message extension and declarative agents** [Windows, Web]  

  Transform legacy plugins into integrated experiences by exposing them as declarative agents—enhance Office apps like Word, Excel, and PowerPoint with message extensions.

### Microsoft Loop

- **Track collaborative changes with "who did what and when"** [Web]  

  Ask Copilot about recent edits in Loop workspaces to identify contributors, review timeline updates, and maintain clarity during team projects. Example: "Show changes to the onboarding checklist this week."

### OneNote

- **Support image input in OneNote chat** [Windows]  

  Ask Copilot to analyze image input and organize your notebook pages by detecting themes and topics. Quickly group pages and update your Notebook structure with a simple click.

### Microsoft 365 Copilot

- **Share a Copilot prompt with a Teams team** [Windows, Web]  

  Easily share custom prompts from the Copilot Prompt Gallery with your Microsoft Teams team. This streamlined sharing makes it simple for team members to discover and make the most of these prompts in their daily workflow. <a href="https://support.microsoft.com/topic/sharing-prompts-with-a-team-2fa7a228-8645-4dc4-beec-d75d6d0bc752?OCID=copilot_ongoingemail_feb25" target="_blank">Learn more.</a>

### SharePoint

- **Create and share agents** [Web]  

  Easily create agents by selecting SharePoint sites or files and share them with your team in SharePoint or Teams to boost collaboration. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/ignite-2024-sharepoint-agents-now-in-general-availability/4298746" target="_blank">Learn more.</a>

- **Use Data Access Governance to analyze tenant permissions** [Web]  

  Leverage detailed reports on permissioned user counts and sharing links to identify oversharing risks and make informed governance decisions. <a href="/sharepoint/data-access-governance-reports" target="_blank">Learn more.</a>

## March 4, 2025

Updates released between February 20, 2025, and March 4, 2025. 

### Microsoft 365 Copilot Chat

- **Search archived mailboxes in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Leverage Copilot Chat to search emails across both primary and archived mailboxes by appending 'from my archives' or 'also look for emails in my archives' in your prompts to quickly locate key messages.

- **Support lockbox for GenAI** [Web]  

  Lets you review and approve data access requests in real time—ensuring sensitive information is safeguarded during critical support interactions. 

- **Enrichment of Messages in Copilot Chat** [Web]  

  This feature enhances your communication experience by making it easier to understand and interact with your chat messages in Copilot  Chat. With this feature, you will see cards and hoverable experiences that provide additional details of the chat without leaving your current view. This means you can quickly grasp the context of your conversations and find the information you need more efficiently.
   
### Copilot Studio

- **Add enterprise data with new graph connections** [Web]  

  Connect your organization’s data seamlessly using pre-configured graph connectors like Stack Overflow, and Salesforce Knowledge. Build smarter agents with semantic search—no custom solution required. <a href="/microsoftsearch/salesforce-knowledge-connector" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Enhanced Copilot admin page with comprehensive tools** [Web]  

  Navigate a refreshed admin interface featuring Overview, Health, Discover, and Settings—delivering key metrics, insights, and controls to tailor Copilot to your organization’s needs.

- **Simplify Copilot license assignment** [Web]  

  Use a data-driven license optimizer to identify users who gain the most value from Copilot. Streamline assignments in the admin center for efficient adoption across your organization.

### Microsoft 365 Copilot App

- **View, edit and share Copilot Pages on mobile** [iOS]  

  Stay productive no matter where you are. With mobile access to Copilot Pages, you can view, edit, and share content on the go, ensuring seamless collaboration with colleagues. <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Simplified 1-page Graph Connector setup**  

  Quickly set up external data connections with a single, simplified page for all Graph Connectors, reducing complexity and saving admin time. <a href="/microsoftsearch/configure-connector" target="_blank">Learn more.</a>

- **Create Copilot agents with scoped web knowledge**  

  Build customized Copilot agents that integrate up to four public web sites. Enhance functionality with targeted web knowledge for smarter, context-aware experiences. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

### PowerPoint

- **Add speaker notes to all slides with one command** [Windows]  

  Speed up your presentation creation by having Copilot automatically add speaker notes to every slide, getting your narrative draft ready in a flash. <a href="https://support.microsoft.com/topic/add-speaker-notes-to-your-presentations-using-copilot-7139266b-8a1d-4056-8e30-4edcc4d80873" target="_blank">Learn more.</a>

- **Narrative builder creates slides with tables** [Windows, Web, Mac]  

  Convert grounded content from Word documents into dynamic slides with tables. Enhance your presentations with structured, data-driven visuals effortlessly.

## February 19, 2025

Updates released between February 5, 2025, and February 19, 2025. 

### Microsoft 365 Copilot Chat

- **Enhanced entity context card** [Web]  

  Enjoy smoother motion, improved reliability, and a more intuitive experience with the upgraded entity context card—making it easier to explore contextual details as you work. <a href="https://support.microsoft.com/topic/using-context-iq-to-refer-to-specific-files-people-and-more-in-microsoft-365-copilot-272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Increased results in Copilot Chat responses** [Web]  

  Get more comprehensive email and calendar results in Copilot Chat responses to easily summarize messages or track your meetings throughout the day.

### Excel

- **Get powerful insights with python** [Windows]  

  Explore your data naturally with advanced analysis that leverages Python—no expert coding needed to uncover trends and create dynamic visualizations.

### Microsoft Teams

- **AI-enabled file summaries on mobile** [Android, iOS]  

  Summarize Word, PowerPoint, and PDF files on mobile by tapping the summary icon or selecting “Summarize with Copilot” for a quick, digestible overview—even on small screens.

- **Intelligent meeting recap for instant meetings (premium)** [Windows, Mac]  

  Effortlessly browse meeting recordings by speaker and topic and access AI-generated notes, tasks, and mentions for instant meetings—empowering premium Copilot users with comprehensive insights. <a href="https://support.microsoft.com/office/meeting-recap-in-microsoft-teams-c2e3a0fe-504f-4b2c-bf85-504938f110ef" target="_blank">Learn more.</a>

### OneNote

- **Enhance note-taking with iterative content proposals** [Windows]  

  Refine your notes on the fly by iterating prompts and reviewing alternate drafts, giving you a dynamic, customizable note-taking experience. <a href="https://support.microsoft.com/topic/take-notes-with-copilot-in-onenote-d5ddf33d-2bab-48de-9096-79df65f81207" target="_blank">Learn more.</a>

- **Take notes with Copilot directly in the flow from the canvas** [Windows]  

  Seamlessly gather and create notes right on your page with Copilot integrated into your personal OneNote notebook, making in-flow note-taking more intuitive. <a href="https://support.microsoft.com/topic/take-notes-with-copilot-in-onenote-d5ddf33d-2bab-48de-9096-79df65f81207" target="_blank">Learn more.</a>

### PowerPoint

- **Create a presentation from a file-based prompt** [Windows, Web, Mac]  

  Pull key facts and data from a selected file to shape your narrative. Simply provide Copilot with a prompt and quickly build your deck with relevant information. <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

### Viva Insights

- **Copilot dashboard for usage and retention insights** [Windows, Web, Android, iOS, Mac]  

  Dive into usage frequency, compare top user groups, and track retention metrics—all in a single, comprehensive dashboard for actionable insights. <a href="/viva/insights/org-team-insights/copilot-dashboard#interpreting-the-data" target="_blank">Learn more.</a>

- **Simplify analysis with advanced insights**  

  Build queries quickly with Copilot’s intelligent suggestions for relevant metrics, filters, and attributes, streamlining your data analysis process effortlessly. <a href="/viva/insights/advanced/analyst/copilot-query" target="_blank">Learn more.</a>

### Word

- **Chat with Copilot about selected text** [Windows, Web, Mac]  

  Highlight text, start a chat with Copilot, and receive responses tailored to what you’ve selected. Get targeted writing assistance and refine your content in real time.

## February 4, 2025

Updates released between January 24, 2025, and February 4, 2025. 

### Microsoft 365 Clipchamp

- **Video creation in Copilot Visual Creator powered by Clipchamp** [Web]  

  Type your prompt and Clipchamp writes a bespoke script, sources high-quality footage, and assembles a video project with music, voiceover, text overlays, and transitions. Open your draft in the Clipchamp app to continue editing, exporting, and sharing your video. <a href="https://techcommunity.microsoft.com/blog/microsoft_365blog/clipchamp-elevating-work-communication-with-seamless-video-creation-in-copilot/4375660
  " target="_blank">Learn more.</a>

### Microsoft 365 Copilot App

- **Updates to the Microsoft 365 (Office) app** [Windows, Web, Android, iOS]  

  The Microsoft 365 Copilot app (formerly Microsoft 365 app) has a new name and icon. <a href="https://support.microsoft.com/office/the-microsoft-365-app-transition-to-the-microsoft-365-copilot-app-22eac811-08d6-4df3-92dd-77f193e354a5" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Access support pages in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  View organizational support pages directly within Copilot Chat, for quick help and guidance in your workflow.

- **Accommodate user’s time zones in Copilot** [Windows, Web, Android, iOS]  

  Copilot now references your local time zone when responding helping to avoid confusion and scheduling errors.

- **Charts, graphs, and data analysis in Copilot for Microsoft 365** [Windows, Web]  

  Use natural language to create charts, graphs, and data analysis in Copilot Chat work mode.

- **Get more Copilot value with Microsoft 365 Copilot** [Web]  

  Easily add full Copilot Chat capabilities including grounding conversations in work data and accessing Copilot in your favorite Microsoft 365 apps by purchasing or requesting a Microsoft 365 Copilot license directly in Copilot Chat. <a href="https://www.microsoft.com/microsoft-365/blog/2024/12/02/three-new-ways-small-and-medium-sized-businesses-can-purchase-microsoft-365-copilot" target="_blank">Learn more.</a>

- **Automatic session titles for easier organization** [Web]  

  Let Copilot Chat generate smart, descriptive titles for your chat sessions, making it simpler to find and revisit important conversations.

### Excel

- **Entry point from the column header** [Web]  

  Offers an intuitive option to access column tools directly from the header, speeding up your workflow in Excel. 

### Microsoft Teams

- **Speaker recognition and attribution in BYOD rooms with Copilot** [Windows, Mac]  

  Take advantage of speaker recognition and transcript attribution, unleashing new AI capabilities in any meeting space, whether or not it has a Teams Rooms system deployed. This feature identifies and attributes people in live transcripts, utilizing a unique voice profile for each participant enabling intelligent recaps and unlocking maximum value from Microsoft 365 Copilot in Teams meetings. Users can easily and securely enroll their voices via Teams Settings. This feature requires a Microsoft 365 Copilot or Teams Premium license for the user hosting the meeting for Copilot experiences and intelligent recaps, respectively. <a href="/microsoftteams/rooms/voice-recognition" target="_blank">Learn more.</a>

### PowerPoint

- **Use Copilot to rewrite, trim, or formalize text** [Web, Mac]  

  Transform your presentation text by letting Copilot fix grammar, shorten lengthy content, or adopt a more professional tone—perfect for crafting clear, polished slides.

### Microsoft 365 Copilot

- **Share a prompt with a co-worker** [Windows, Web]  

  Easily create, save, and share your favorite prompts using Copilot Prompt Gallery, inspiring your co-workers to achieve more with Copilot. <a href="/copilot/microsoft-365/copilot-prompt-gallery-export-prompts" target="_blank">Learn more.</a>

### SharePoint

- **Restricted Content Discovery** [Web]  

  Prevent specific SharePoint sites from being discoverable in tenant-wide search and Copilot. <a href="/sharepoint/restricted-content-discovery" target="_blank">Learn more.</a>

### Word

- **Browse cloud files with the file picker** [Mac]  

  Use a file picker to browse your cloud directory and include relevant files without searching by name, making it easy to add key references to your draft.

- **Draft from selected text, lists, or tables** [iOS]  

  Generate new content right where you work by selecting text, lists, or tables and tapping into Copilot’s on-canvas menu. Quickly refine drafts and collaborate more interactively. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/draft-with-copilot-in-word-on-a-selection-of-text-a-list-or-a-table/4191926" target="_blank">Learn more.</a>

- **Draft with Copilot** [iOS]  

  Quickly produce paragraphs or entire sections for your documents, whether you’re creating a brand-new file or adding to existing text. <a href="https://support.microsoft.com/office/draft-and-add-content-with-copilot-in-word-069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>

- **Reference data from the Microsoft cloud when drafting with Copilot in Word** [Windows, Web, Mac]  

  Draft with Copilot now supports attaching rich content from the Microsoft cloud—including emails and meetings—resulting in more contextually relevant content. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Reference plain text files in Copilot** [Windows, Web, Mac]  

  Add .txt files as sources with Copilot in Word, streamlining your process when working with text-based research or background content.

## January 23, 2025

Updates released between January 8, 2025, and January 23, 2025.
### Forms

- **Smart reminders with Copilot in Forms** [Web]  

  Copilot in Forms now offers smart reminders to help you monitor response progress and get more engagement with your forms, delivered right to your email inbox. <a href="https://support.microsoft.com/topic/smart-reminders-in-copilot-in-forms-d41f412f-f64a-4bee-b745-eebf58b7e036" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS]  

  Microsoft 365 Copilot Chat—free, secure AI chat powered by GPT-4o with agents accessible right in chat, and IT controls including enterprise data protection and agent management. Copilot Chat serves as a powerful new on-ramp for everyone in your organization to build an AI habit. Get started with Copilot Chat with the updated <a href="https://www.m365copilot.com/" target="_blank">Microsoft 365 Copilot app</a> (formerly Microsoft 365 app). <a href="https://www.microsoft.com/microsoft-365/blog/2025/01/15/copilot-for-all-introducing-microsoft-365-copilot-chat" target="_blank">Learn more.</a>

- **Updated Copilot Chat responses UI** [Windows]  

  Enjoy a more intuitive Copilot experience with streamlined message boundaries, refined message count alerts, and a clearly positioned security badge for higher trust and transparency.

- **Updated meeting entity card in Copilot Chat** [Windows, Web]  

  Check meeting details like RSVP status, date, and attachments without switching contexts in Copilot Chat.

- **Copilot agents available in Copilot Chat web mode** [Web]

  In Copilot Chat web mode, discover and use Copilot agents available for your organization. Agents are custom grounded chats that include specific knowledge sources from work and web.

### Microsoft 365 Copilot App

- **Control auto-start behavior on windows** [Windows]  

  Adjust Windows settings to let users auto-launch the M365 app upon login, while giving admins the option to enforce group policy controls for enterprise needs.

- **Keep the app running in the background** [Windows]  

  Enable the setting to keep the app active as a background process after closing, ensuring faster subsequent launches without a full reload.

### Microsoft 365 Copilot extensibility

- **Consistent user experience with developer-submitted plugins**  

  Developer-submitted plugins (ME, PPC, DV) are promoted to agents seamlessly, ensuring a uniform user experience and simplifying plugin management.

- **Use agents in Copilot Chat Web mode**  

  You can now access agents in the web-grounded Copilot Chat, enabling you to get access to additional sources of knowledge across both the work and web grounded experiences of Copilot Chat. <a href="https://support.microsoft.com/topic/get-started-with-agents-for-microsoft-365-copilot-169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Studio

- **Enable makers to configure SharePoint as a knowledge source for agents** [Web] 

  Empowers makers to connect SharePoint, giving agents a richer context for delivering accurate and relevant responses. <a href="/microsoft-copilot-studio/authoring-review-activity" target="_blank">Learn more.</a>

### PowerPoint

- **Generate summaries for longer presentations** [Windows, Web, Mac]  

  Copilot now supports text summaries up to 40k words (around 150 slides), giving you richer information and more polished layouts. <a href="https://support.microsoft.com/office/summarize-your-presentation-with-copilot-in-powerpoint-499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

- **Listen to Copilot's responses with Read Aloud** [Windows, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

### SharePoint

- **Copilot in SharePoint** [Web]  

  Copilot in SharePoint combines the power of Large Language Models (LLMs), your data in the Microsoft Graph, and best practices to create engaging web content. Get assistance drafting your content when creating new pages. Adjust the tone, expand meeting bullets into structured text, or get help making your message more concise. All within our existing commitments to data security and privacy in the enterprise. <a href="https://support.microsoft.com/topic/write-with-copilot-in-sharepoint-rich-text-editor-afc720be-666b-4d87-801e-b8ff62f309bb" target="_blank">Learn more.</a>

### Microsoft Teams

- **Require explicit consent for meeting recording and transcription.**  

  Manage meeting recording policies via the Teams admin center or PowerShell to require explicit participant consent before recording or transcription in ad-hoc meetings or group calls. When enabled and recording/transcription starts, all participants are muted with cameras and sharing turned off until they give explicit consent to be recorded and transcribed, ensuring a compliant meeting experience.

### Viva Amplify

- **Microsoft 365 Copilot in Viva Amplify editor** [Web]  

  The superpowers of Microsoft 365 Copilot integrates seamlessly into Viva Amplify, transforming content creation. Use Copilot in Amplify to auto-rewrite for suggestions, expand or condense text, and adjust tone for consistent, relevant messaging. <a href="/viva/amplify/copilot-in-viva-amplify" target="_blank">Learn more.</a>

### Viva Insights

- **Copilot dashboard access can be granted using Entra groups** [Web]  

  Global admins can now grant Microsoft Copilot Dashboard access using Microsoft Entra ID (AAD) Groups, reducing the manual effort needed for management. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

- **New Copilot adoption metrics and completing total actions taken** [Windows, iOS, Mac]  

  This adds seven new Copilot adoption metrics to the Copilot dashboard and Viva Insights Advanced insights. It also updates the "total actions taken" metric in the Copilot dashboard to include these new Copilot adoption metrics. <a href="https://techcommunity.microsoft.com/blog/viva_insights_blog/new-microsoft-copilot-analytics-features-now-available-%E2%80%93-novemberdecember-2024/4356206" target="_blank">Learn more.</a>

### Word

- **Get started on a draft immediately with example prompts** [Windows, Mac]  

  On blank documents, Copilot in Word offers one-click example prompts to help you get started quickly. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Listen to Copilot's responses with Read Aloud** [Windows, Web, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

## January 7, 2025

Updates released between December 18, 2024, and January 7, 2025.
### Microsoft 365 Copilot

- **Access Copilot Prompt Gallery in Word and PowerPoint mobile apps** [Android, iOS]  

  Discover and use suggested Copilot prompts in Prompt Gallery within the Word and PowerPoint apps on iOS and Android. Enhance your productivity on the go with helpful AI suggestions.

### Microsoft 365 admin center

- **Track usage of Microsoft 365 Copilot Chat** [Web]  

  Filter data by date range, review Microsoft Copilot usage by app entry point, and use these insights plan adoption strategies more confidently. <a href="/microsoft-365/admin/activity-reports/microsoft-copilot-usage" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Include Code Interpreter in agents** [Windows, Web]  

  Enhance your agents by including Code Interpreter for advanced data analysis tasks in agent builder. <a href="/microsoft-365-copilot/extensibility/add-agent-capabilities#enable-code-interpreter" target="_blank">Learn more.</a>

### OneNote

- **Use Copilot quick actions in OneNote: Rewrite, Summarize, and Create To-Dos** [Windows]  

  Enhance your notes by using Copilot directly on the OneNote canvas. Instantly generate summaries, create to-do lists, or rewrite selected content within your notes. <a href="https://support.microsoft.com/office/rewrite-text-with-copilot-in-onenote-a33f14c9-b2f4-46b0-87b9-389690221610" target="_blank">Learn more.</a>

### Outlook

- **Schedule meetings with Copilot chat in Outlook** [Windows, Web]  

  Save time and streamline your day by asking Copilot to schedule meetings for you in Outlook. Whether it's a 1:1 or focus time, Copilot will find the best available time slots with ease. <a href="https://support.microsoft.com/topic/8090e7b3-5b1d-4c6d-9b06-02edac062f58" target="_blank">Learn more.</a>

- **Switch between Work and Web grounding in Microsoft 365 Copilot Chat** [Android, iOS]  

  In Outlook mobile apps, you can now toggle between Microsoft 365 Graph (Work) and Web grounding in Microsoft 365 Copilot Chat. Choose the grounding source that best suits your needs for more personalized assistance.

### Viva Amplify

- **Copilot in Viva Amplify editor** [Web]  

  Experience the power of Copilot right in your Amplify editing workflow. You can quickly auto-rewrite sections of your text, expand or condense content to match your preferred length, and seamlessly adjust the tone—casual, engaging, or professional—to suit your audience. <a href="https://support.microsoft.com/topic/introduction-to-copilot-in-viva-amplify-768222a0-9b83-402f-861e-9f7691183368" target="_blank">Learn more.</a>

### Viva Insights

- **Expand your understanding of Copilot adoption with enhanced metrics** [Windows, iOS, Mac]  

  Access seven new Copilot metrics and see them reflected in "total actions taken," helping you better track how teams use Copilot. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-adoption" target="_blank">Learn more.</a>

- **New metrics for enterprise data-protected prompts** [Windows, Web, Android, iOS, Mac]  

  Gain visibility into prompts submitted through Microsoft 365 Copilot Chat (web) and enterprise data-protected Copilot scenarios. <a href="/viva/insights/advanced/reference/metrics#microsoft-365-copilot-metrics" target="_blank">Learn more.</a>

### Viva Learning

- **Copilot Academy support for external content** [Web]  

  Enhance your learning experience with a wider range of external content in Copilot Academy, including links to Copilot Prompt Gallery. <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>

## December 17, 2024

### Microsoft 365 Copilot

- **Microsoft 365 Copilot GCC general availability** [Windows, Web]  

  Your AI assistant for work in the GCC (Government Community Cloud) environment. It combines the power of large language models (LLMs) with your work content and context, to help you draft and rewrite, summarize and organize, catch up on what you missed, and get answers to questions via prompts. <a href="https://aka.ms/M365CopilotGCCBlog" target="_blank">Learn more.</a>

### Microsoft Purview

- **Generate keyword query language from natural language prompt in eDiscovery with Copilot for Security** [Web]  

  Copilot for Security is embedded in eDiscovery to enable users to provide a search prompt in natural language and will translate into keyword query language to help expedite the start of an eDiscovery search. <a href="/purview/ediscovery-natural-language-query" target="_blank">Learn more.</a>

### OneNote

- **Use Copilot in OneNote on Mac and iPad** [iOS, Mac]  

  Experience the power of Copilot across OneNote for Mac and iPad. Quickly summarize, rewrite, and understand your notes, whether at your desk or on the go. <a href="https://support.microsoft.com/office/welcome-to-copilot-in-onenote-34b30802-02ae-4676-a88c-82f8d5e586dd" target="_blank">Learn more.</a>

### PowerPoint

- **Ask Copilot about visuals while in PowerPoint** [Windows, Web]  

  Now you can add an image to your chat with Copilot. You can ask questions about the image, extract text, get a description of a chart, translate information, or generate alt text. This helps you stay in the flow of work while getting necessary information to continue working on your document.

### Viva Pulse

- **Templates for Copilot readiness, adoption and impact** [Windows, Web, Android, iOS, Mac]  

  Use new templates to measure employee sentiment and assess your organization's Copilot adoption—all within your Viva Pulse subscription.

### Word

- **Ask Copilot about visuals while in Word** [Windows, Web]  

  Now you can add an image to your chat with Copilot. You can ask questions about the image, extract text, get a description of a chart, translate information, or generate alt text. This helps you stay in the flow of work while getting necessary information to continue working on your document.

## November, 2024

### Microsoft 365 Copilot Chat

- **Audit copilot queries leaving the Microsoft 365 boundary**  

  Allow admins to track and review copilot-generated queries that access external data, ensuring robust compliance and oversight.

- **Admin control over Copilot web search access** [Web]  

  Administrators can now manage user access to web search within Copilot using policies in config.office.com. This provides better control over how users interact with web content through Copilot. <a href="/copilot/microsoft-365/manage-public-web-access" target="_blank">Learn more.</a>

- **Focus Copilot responses on specific emails in Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Narrow down Copilot responses by specifying a particular email folder, sub-folder, or subject line. Get more precise assistance by directing Copilot to the emails that matter most to you.

- **Jumpstart with prebuilt prompts in Microsoft 365 Copilot Chat** [Web]  

  Quickly get started in Microsoft 365 Copilot Chat by exploring and using prebuilt prompts designed to help you maximize productivity from the get-go.

- **Save and reuse your favorite prompts in Copilot** [Windows, Web]  

  Easily save your most-used prompts in Microsoft 365 Copilot Chat and Copilot Prompt Gallery website, keeping them at your fingertips for quicker interactions. <a href="https://support.microsoft.com/topic/55373730-2627-46a5-b0d8-772abe22dba4" target="_blank">Learn more.</a>

- **Search for meetings with external attendees**  

  Effortlessly find and access meetings that include people from other organizations using the improved search functionality in Microsoft 365 Copilot Chat.

- **Share your feedback with in-chat rating in Copilot** [Windows, Web]  

  Easily rate your experience with Copilot's web-grounded chat on a 1-5 scale. Your feedback helps us improve Copilot to better meet your needs.

- **Use web-grounded Copilot chat in Teams and Outlook** [Windows, Web]  

  Enhance your Copilot chat in Teams and Outlook with the latest information from the web. Get up-to-date answers and insights directly within your conversations.

- **View web queries used by Copilot for greater transparency** [Web]  

  See the exact web queries Copilot sends in response to your prompts, along with the list of websites queried, enhancing your awareness and control over the information process.

### Microsoft 365 admin center

- **AI administrator role** [Web]  

  Empower designated admins to manage Copilot securely with the new AI administrator role—providing control without full Global admin permissions.

- **Copilot usage report for Business Chat** [Web]  

  Monitor usage data for Copilot Business Chat (web and work) directly in the admin center to support adoption and strategic planning.

### Excel

- **Perform advanced analysis with Python integration** [Windows]  

  Leverage Python within Excel through Copilot to conduct advanced data analysis, unlocking new insights from your data. <a href="https://support.microsoft.com/office/copilot-in-excel-with-python-364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Add image generation to agents** [Windows, Web]  

  Enhance your agents by including image generation capabilities in agent builder <a href="/microsoft-365-copilot/extensibility/add-agent-capabilities#image-generator" target="_blank">Learn more.</a>

- **Create agents in Microsoft 365 Copilot via agent builder** [Windows, Web]  

  Use agent builder to create agents that contain specific instructions and knowledge, such as SharePoint files, to suit your needs. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

### Microsoft 365 Copilot

- **Copilot Prompt Gallery available in Word and PowerPoint on iOS** [iOS]  

  Use suggested prompts directly from your Word and PowerPoint apps on iOS to spark creativity and streamline your workflow.

- **Copilot prompt gallery – nonprofit, consumer goods, and mobility prompt collections** [Windows]  

  Explore new prompt collections tailored for the nonprofit, consumer goods, and mobility sectors. Enhance your productivity with specialized prompts that fit your industry needs.

### Microsoft Loop

- **Reference documents within loop copilot prompts** [Web]  

  Enhance your Loop experience by linking directly to Word, Excel, or PowerPoint files—just add a command to summarize or extract key points from your documents.

### OneNote

- **Copilot chat on Mac** [Mac]  

  Transform your note-taking on Mac with natural language commands that help you understand, summarize, and rewrite notes—perfect for meeting prep and creative brainstorming.

### PowerPoint

- **Build a narrative with file-based topics** [Windows, Web, Mac]  

  Create compelling presentations by integrating topic suggestions linked to your documents—whether Word files, PDFs, or encrypted docs—for a well-grounded narrative.

### Microsoft Teams

- **Disable Copilot in meetings** [Windows, Android, iOS, Mac]  

  You can now turn Copilot off in your meeting settings. Copilot, recording, and transcription are disabled for meetings where Copilot is off. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### SharePoint

- **Control site creation permissions with Restricted Site Creation** [Web]  

  Administrators can now manage who can create different types of SharePoint sites. Configure specific user groups with permissions to create Team sites, Communication sites, or all sites, enhancing governance and control. <a href="/sharepoint/restricted-site-creation" target="_blank">Learn more.</a>

- **Manage inactive sites with new lifecycle policies** [Web]  

  SharePoint administrators can now set up policies to detect inactive sites, notify site owners, and automatically archive or set sites to read-only if no action is taken. This helps in managing unused content and optimizing resources. <a href="/sharepoint/site-lifecycle-management" target="_blank">Learn more.</a>

- **Site Access Review for scalable governance** [Web]  

  SharePoint administrators can now request site owners to review permissions directly from Data Access Governance reports. This helps in identifying and correcting potential oversharing, enhancing security and compliance. <a href="https://aka.ms/DAGSiteAccessReviews" target="_blank">Learn more.</a>

- **Use Data Access Governance to analyze permissions and prevent Oversharing** [Web]  

  As a SharePoint admin, you can now leverage Data Access Governance (DAG) to understand your tenant's permission landscape. Generate reports that highlight sites with permissioned users exceeding your specified number to identify potential oversharing. <a href="/sharepoint/data-access-governance-reports" target="_blank">Learn more.</a>

### Viva Glint

- **Summarize survey comments for key insights** [Web]  

  Quickly uncover top issues and potential solutions from employee feedback by asking natural language questions—empowering leaders to act on valuable insights.

### Word

- **Fine-tune rewrite responses in Copilot in Word** [Windows]  

  Customize the output from Copilot's Rewrite feature by specifying how the text should change to better suit your needs. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Reference larger files and write longer prompts with Copilot** [Windows, Web, Mac]  

  Create more detailed drafts by writing prompts over 2,000 characters and referencing files totaling up to 75,000 words. <a href="https://support.microsoft.com/topic/66de2ffd-deb2-4f0c-8984-098316104389" target="_blank">Learn more.</a>

## October, 2024

### Microsoft 365 Copilot Chat

- **Access local files in Microsoft 365 Copilot Chat** [Web]  

  Upload and reference your local files directly within Copilot Chat prompts by using the Local Files button or typing '/', making your interactions more informed and efficient. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Get contextual summaries in Edge sidebar with Microsoft 365 Copilot Chat** [Web]  

  Receive instant contextual summaries directly in the Edge Sidebar while using Microsoft 365 Copilot Chat, helping you quickly grasp information without leaving your browsing experience.

- **Solve complex tasks in Copilot chat** [Web]  

  Use Copilot to solve complex math problems, analyze data, generate visualizations, and more in Copilot chat.

### Microsoft 365 Copilot

- **Expanded industry prompt collections in Copilot Prompt Gallery** [Windows]  

  We have expanded our industry prompt collections in Prompt Gallery with new prompt collections tailored to the nonprofit, consumer goods, and mobility sectors.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 12 additional languages across all features: Bulgarian, Croatian, Estonian, Greek, Indonesian, Latvian, Lithuanian, Romanian, Serbian (Latin), Slovak, Slovenian, and Vietnamese. Microsoft 365 Copilot also improved the handling of language variants: Dutch (Belgium), German (Switzerland), English (UK), Spanish (Mexico), and French (Canada). <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Create agents in Copilot with instructions and knowledge sources** [Windows, Web]  

  Users can build Copilot agents that include specific instructions and knowledge, such as SharePoint files, directly from Copilot Chat using Copilot Studio Agent Builder. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

- **Customize your agent list in Copilot across apps** [Windows, Web]  

  Reorder or remove agents from your agent list, with updates based on your most recently used agents and admin-installed agents, available in Copilot Chat, Microsoft Teams, and Microsoft 365.

- **Invoke agents with @mentions across apps** [Windows, Web]  

  Users can now @mention agents to invoke them in-context within Copilot Chat, Word, and PowerPoint, enhancing workflow efficiency. <a href="https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

- **Start conversations easily with Agent starter prompts** [Windows, Web]  

  Select from conversation starter prompts to begin using an agent quickly and effortlessly. <a href="https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

### Microsoft Teams

- **Empower meeting organizers to adjust Copilot availability** [Windows, Android, iOS, Mac]  

  Admins can now set Copilot in Teams meetings to  'During and After Meeting' and allow meeting organizers to change it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Outlook

- **Rewrite selected text in emails using Copilot** [Windows, Web, Android, iOS, Mac]  

  Select specific parts of your drafted email and ask Copilot in new Outlook to rewrite it or provide more information to rewrite it. Provide detailed instructions or adjust the tone and length to suit your needs.

### PowerPoint

- **Create presentations with new slide types using Copilot** [Windows]  

  When creating a presentation with Copilot, you'll now see agenda, section, and conclusion slides, giving your presentations better structure.


- **Custom slideshow of key slides** [Windows]  

  Ask Copilot to show key slides, and you'll have one-click access to play a custom presentation of the most important slides.

- **Enhanced creation and editing with Copilot** [Windows]  

  Copilot now offers richer information, elevated visual structures, better images, and more polished layouts when creating or editing your presentations. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

### Viva Insights

- **New Microsoft 365 Copilot Chat prompts submitted through Teams** [Windows, iOS, Mac]  

  Adding new Microsoft 365 Copilot Chat prompts submitted through Teams metric to Copilot dashboard and Viva Insights Advanced insights.

### Word

- **Fine-tune rewrite responses in Copilot in Word** [Mac]  

  Customize the output from Copilot's Rewrite feature by specifying how the text should change to better suit your needs. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Get started on a draft immediately with example prompts** [Web]  

  On blank documents, Copilot in Word offers one-click example prompts to help you get started quickly.

- **Reference up to 10 Items when drafting with Copilot** [Windows, Mac]  

  Expand your drafting capabilities by referencing up to 10 items—such as files, emails, and meetings—when using Copilot in Word. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

## September, 2024

### Microsoft 365 Copilot Chat

- **Access Microsoft 365 Copilot Chat work mode in Microsoft 365 app on mobile** [Android, iOS]  

  Ground your Copilot conversations in your work content with Microsoft 365 Copilot Chat in the Microsoft 365 app.

- **Convert Microsoft 365 Copilot Chat conversations into shareable pages** [Web]  

  Transform Microsoft 365 Copilot Chat Copilot responses in work mode into editable and shareable pages, so you can easily access and distribute important information.

- **Generate images in Microsoft 365 Copilot Chat** [Web]  

  Create custom images directly within Microsoft 365 Copilot Chat. Using natural language, ask Copilot to generate images. <a href="https://support.microsoft.com/topic/6cd168f3-1cf0-478e-bd75-31d6526d2504" target="_blank">Learn more.</a>

- **Get started quicker with grounded prompts** [Windows, Web]  

  Copilot Chat prompt suggestions now include relevant files, people, and meetings to help you get started with grounded prompts. Clicking the prompt card will add the prompt text and related file into the input box where you can select a different file, person, or meeting to fit your needs.

### Excel

- **Access Copilot from the cell context menu** [Windows, Web]  

  Easily launch Copilot in Excel directly from the cell context menu, streamlining your workflow. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

- **Copilot in Excel is generally available** [Windows, Web, iOS, Mac]  

  Copilot in Excel, now no longer in Preview but Generally Available, works alongside you to analyze and explore your data, answering questions in natural language and revealing insights without the need for complex formulas. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Identify suggested candidates for Copilot licensing** [Web]  

  Improve license assignment decisions and maximize Microsoft 365 Copilot adoption. In the Microsoft 365 Copilot usage report readiness section, a new "Suggested Candidates" column helps you assign licenses to users who are most likely to get the most value for Microsoft 365 Copilot, based on factors such as usage of relevant Microsoft 365 apps. <a href="/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness#additional-details-for-suggested-candidate-for-copilot" target="_blank">Learn more.</a>

### Microsoft 365 Copilot

- **AI-generated Images with Copilot and Microsoft Designer** [Windows, Web, Mac]  

  Microsoft Designer integration in Copilot chat allows you to generate that perfect image, providing limitless creativity and bringing your presentations to life. <a href="https://support.microsoft.com/topic/6cd168f3-1cf0-478e-bd75-31d6526d2504" target="_blank">Learn more.</a>

- **Insert brand-approved images from SharePoint using Copilot** [Windows, Web]  

  Keep your documents and presentations on brand by adding company-approved images directly from your SharePoint organization asset library through Copilot. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot in Teams meetings considers meeting chat** [Windows, Mac]  

  When generating meeting summaries or answering questions, Copilot in Teams will now use the chat and transcript as context, providing more accurate and relevant responses. <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1" target="_blank">Learn more.</a>

### OneDrive

- **Copilot in OneDrive** [Web]  

  Copilot in OneDrive, available on the web, allows you to ask questions and extract information from your files. Get summaries and insights from Word, PDF, PowerPoint, Excel, and text files. <a href="https://support.microsoft.com/office/get-started-with-copilot-in-onedrive-7fc81e10-e0cf-4da8-af2e-9876a2770e5d" target="_blank">Learn more.</a>

### Outlook

- **Instantly apply coaching suggestions from Copilot to your emails** [Web, Android, iOS, Mac]  

  Improve your email writing with Coaching by Copilot in new Outlook. Request a full rewrite based on Copilot's feedback or apply the suggestions with a single click. <a href="https://support.microsoft.com/topic/91a3cd56-1586-4a31-85c7-2eb8cdb02405" target="_blank">Learn more.</a>

### PowerPoint

- **Create presentations with new slide types using Copilot** [Web, Mac]  

  When creating a presentation with Copilot, you'll now see agenda, section, and conclusion slides, giving your presentations better structure.

- **Access your organization’s approved images** [Mac]  

  Seamlessly connect to your SharePoint asset library to find and add brand-approved images, keeping your presentations and documents consistently on brand.

- **Custom slideshow of key slides** [Mac]  

  Ask Copilot to show key slides, and you'll have one-click access to play a custom presentation of the most important slides.

- **Improved template support with Copilot** [Windows, Web, Mac]  

  Update your templates to PowerPoint's best practices, and Copilot will generate beautiful, on-brand slides every time you create a presentation. <a href="https://support.microsoft.com/topic/046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>

### Viva Glint

- **View Glint and Pulse survey results in Viva Insights Copilot Dashboard** [Web]  

  Leaders and adoption specialists can now initiate Copilot impact surveys and view the results from Viva Glint or Viva Pulse directly within the Viva Insights Copilot Dashboard. Understand the ROI of deploying Copilot and AI tools in your organization. <a href="/viva/glint/setup/copilot-impact-template" target="_blank">Learn more.</a>

### Viva Insights

- **Analyze adoption and impact trends**  

  Adding trendlines to show metric movements over past 6-month time periods, before vs after Copilot comparisons, and providing the option to view an estimated dollar value for the existing Copilot assisted hours metric. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact#about-this-report" target="_blank">Learn more.</a>

- **Delegate access to Copilot Dashboard**  

  You can delegate access to your organizational insights or the Copilot Dashboard to other people within your company.

  By granting delegate access, someone else at your company, such as your chief of staff or one of your direct reports, would have the same access you have to the insights. They can view them and operationalize business decisions based on the data.

### Viva Learning

- **Providing Copilot Academy access to all Microsoft 365 Copilot users** [Web]  

  Microsoft Copilot Academy is now available for all users with a Microsoft 365 Copilot license or any Viva Learning license (premium, suite, or the Microsoft 365-included version). <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>

### Word

- **Easily write a prompt or choose quick actions from the Copilot icon in your Word doc** [Web]  

  The Copilot icon in your document margin now lets you easily write a prompt or choose quick actions, making AI assistance more accessible.

- **Reference up to 10 Items when drafting with Copilot** [Web, iOS]  

  Expand your drafting capabilities by referencing up to 10 items—such as files, emails, and meetings—when using Copilot in Word. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Use Copilot to enhance pasted text in Word** [Windows, Mac]  

  Copilot in Word now offers more options when you paste text. Reword content, transform it into tables or lists, and more, making it easier to format and organize your documents efficiently.

## August, 2024

### Microsoft 365 Copilot

- **Copilot Prompt Gallery is now available on iOS and Android** [Android, iOS]  

  Explore and use suggested prompts in Copilot Prompt Gallery within the Teams app on iOS and Android. Stay productive with ready-made prompts to use on the go.

- **Try prompts directly from the Copilot Prompt Gallery website** [Windows, Web]  

  Quickly launch suggested prompts from the Copilot Prompt Gallery website in Microsoft 365 Copilot Chat by clicking the "Try in" button on the prompt card.

### Excel

- **Custom chart and PivotTable creation** [Windows, Web, iOS, Mac]  

  You can now ask Copilot for more specific charts and PivotTables, including specifying the X and Y axes. Customize your data presentations more precisely.

- **Formula data summaries from columns** [Windows, Web, iOS, Mac]  

  Add a single formula to summarize column data into one cell. This feature allows you to calculate data across columns and return a single result, simplifying data analysis.

- **Suggest conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Ask Copilot to suggest conditional formatting for your data. Receive a list of prompts that might highlight key insights in your data.

- **Summarize text columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can analyze columns of text to provide summaries, such as identifying main themes in survey responses. Understand your text data more effectively.

### Forms

- **Copilot helps students understand quiz solutions** [Web]  

  After submitting quizzes, students can now receive Copilot-assisted explanations for correct and incorrect answers. This feature aids learning by providing detailed solution steps.

### Microsoft Teams

- **Copilot summarizes content over specified time periods** [Windows, Android, iOS, Mac]  

  Copilot can now identify and summarize information over specific time periods, responding accurately to queries like "yesterday," "last month," or "last year." <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c" target="_blank">Learn more.</a>

- **Linked files in Copilot replies** [Windows, Android, iOS, Mac]  

  We have optimized Copilot in Microsoft Teams to include linked files in Copilot answers for quicker and more reliable retrieval of files and links, making your experience smoother and more efficient.


### Outlook

- **Microsoft 365 Copilot Chat in Outlook Mobile** [Android, iOS]  

  The Microsoft 365 Copilot Chat experience is now available in Outlook for iOS and Android. Enhance your mobile email experience with AI-powered assistance on the go.

- **Schedule meetings from an email with Copilot in new Outlook** [Windows, Web]  

  Quickly shift from an email thread to a meeting invite by clicking "Schedule with Copilot." Copilot summarizes the conversation, drafts an agenda, and includes key context automatically.

### PowerPoint

- **Build your story with Narrative Builder** [Windows, Web, iOS, Mac]  

  Copilot helps you form your narrative and turns it into a fully designed presentation, streamlining the creative process.

- **Custom slideshow of key slides** [Web]  

  Ask Copilot to show key slides, and you'll have one-click access to play a custom presentation of the most important slides.

- **Improved presentation summary richness** [Windows, Web, iOS, Mac]  

  Copilot now leverages the latest GPT models to provide richer summaries when generating presentations, enhancing the quality of your content.

### Viva Insights

- **Analyze Copilot impact over time** [Windows, Web, Android, iOS, Mac]  

  View trendlines of key productivity metrics over 6 months and estimate the financial value of Copilot-assisted hours. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact" target="_blank">Learn more.</a>

### Word

- **Document Summaries in Microsoft 365 Mobile App Previews** [iOS]  

  Copilot generates summaries of files that you can view in the file browser of the Microsoft 365 mobile app, helping you understand content without opening the file.

## July, 2024

### Microsoft 365 Copilot Chat

- **Access cloud files via Context IQ in Microsoft 365 Copilot Chat** [Web]  

  Easily include relevant documents in your chats with Context IQ suggestions. Now access "Browse Cloud Files" from the "Attach Cloud Files" button. <a href="https://support.microsoft.com/topic/using-context-iq-to-refer-to-specific-files-people-and-more-in-microsoft-365-copilot-272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

### Excel

- **Advanced conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Copilot now supports complex conditional formatting, such as highlighting rows based on multiple criteria. Enhance your data visualization with more formulaic formatting options.

- **Improved data insights in Copilot** [Windows, Web, iOS, Mac]  

  Copilot is now better at answering questions about data insights like trends and correlations. Get more meaningful analysis to make informed decisions.

- **Preview and apply changes suggested by Copilot** [Windows, Web, iOS, Mac]  

  Before Copilot makes changes to your Excel data, you'll now receive a description and an "Apply" button. This gives you more control over your data and allows for refinements before applying changes.

- **Preview conditional formatting rules** [Windows, Web, iOS, Mac]  

  When setting a conditional formatting rule, Copilot's response will include a preview of the style and an explanation of the formula. This helps you understand and apply formatting more confidently.

- **Support for data ranges resembling tables** [Windows, Web, iOS, Mac]  

  Copilot can now reason over data ranges with a single row of headers, even if they aren't formatted as formal tables. This makes data analysis more flexible.

### Microsoft 365 admin center

- **Gain visibility into Microsoft 365 Copilot Chat usage** [Web]  

  Access usage metrics for Microsoft 365 Copilot Chat to inform your adoption strategies. <a href="/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage" target="_blank">Learn more.</a>

### Microsoft Loop

- **Copilot-Assisted Loop Page Creation** [Web]  

  Collaborate with Copilot to create structured Loop pages quickly. Start from scratch or modify existing pages or templates with AI assistance for efficient teamwork.

### PowerPoint

- **Create presentations from encrypted Word documents** [Windows, Web, iOS, Mac]  

  Copilot for PowerPoint can now create presentations using Word documents that have a protected sensitivity label, expanding your content creation options securely.

- **Easier access to Copilot in PowerPoint** [Windows, Web, iOS, Mac]  

  Access Copilot in PowerPoint more easily with new on-canvas entry points. Start enhancing your presentations with AI assistance in fewer clicks.

### Viva Engage

- **Viva Engage Copilot Adoption Community** [Web]  

  Kickstart your Copilot adoption journey with a templatized community in Viva Engage. Get setup checklists, suggested content, suggested members, and top Q&A to engage your employees effectively. <a href="/viva/engage/engage-365-copilot-adoption-platform" target="_blank">Learn more.</a>

### Viva Insights

- **Microsoft Copilot Dashboard powered by Viva Insights** [Windows, Web, Android, iOS, Mac]  

  The Microsoft Copilot Dashboard available to all Microsoft 365 Copilot customers at no extra cost. Access it via the Viva Insights app to monitor Copilot adoption and impact. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

### Word

- **Bing search integration brings the power of the web to your chats in Word** [Mac]  

  Ask Copilot a question in Word chat, and Copilot generates an answer using the power of integrated Bing search. And you never have to leave the app.

- **Bring the latest from your organization into your Word chats with Microsoft Copilot Graph-grounded search.** [Mac]  

  Bring the latest from your organization into your Word chats with Microsoft Graph-grounded search. Access people-centric data and insights seamlessly.

- **Summarize longer documents in chat** [Windows, Web, iOS, Mac]  

  Copilot in Word can now summarize longer documents, with the upper limit increased to about four times more words (approx. 80k words). Get comprehensive overviews of lengthy content.

## June, 2024

### Microsoft 365 Copilot Chat

- **Contextual prompt suggestions in Microsoft 365 Copilot Chat** [Windows]  

  Microsoft 365 Copilot Chat now shows contextual prompt suggestions when you hover over entities like files, events, and people. Quickly access relevant information to enhance your productivity.

### Excel

- **Copilot works on any selection in Excel** [Windows, Web, iOS, Mac]  

  Copilot now enables the edit box on any worksheet, regardless of selection. It intelligently finds the nearest table or data range for your analysis queries, making data manipulation more flexible.

- **Excel Copilot Chat Helper for Your Data Queries** [Web]  

  Get conversational Excel-specific answers to your Excel-related questions with the Copilot chat helper.

### Forms

- **Copilot helps you draft quizzes and answers** [Web]  

  Teachers and staff can use Copilot in Forms to generate quizzes, including correct answers. Now they can focus more on helping students engage with assessments, icebreakers, and trivia, and less on writing and programming.

- **Gather more responses with Copilot suggestions** [Web]  

  Copilot in Forms now suggests the best distribution channels and settings when sending out forms or quizzes. Reach your audience more effectively and increase engagement.

### Microsoft Teams

- **Admins can enforce Copilot during and after meetings** [Windows, Android, iOS, Mac]  

  Admins can set Copilot in Teams meetings to  'During and After Meeting' and prevent meeting organizers from changing it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

- **Control access to recordings and transcripts** [Windows, Android, iOS, Mac]  

  Introducing new meeting settings that allow you to control who can access recordings, transcripts, and prompt Copilot. Enhance your meeting security and privacy with these granular controls.

- **Intelligent Recap available for Copilot users** [Windows, Mac]  

  Copilot users can now access Intelligent Recap after meetings and calls. Browse recordings by speakers and topics, and access AI-generated meeting notes, action items, and @mentions, all designed to keep you informed.

### OneNote

- **Access company information via Copilot in OneNote** [Windows]  

  Prompt Copilot in OneNote to get responses from all your company information stored in the Microsoft cloud. Find the data you need without leaving your note-taking app.

### Outlook

- **Microsoft 365 Copilot Chat in classic Outlook** [Windows]  

  The Microsoft 365 Copilot Chat experience is now available in classic Outlook. Access AI-powered assistance directly from the App Bar on the left to enhance your email productivity.

### PowerPoint

- **Copilot adds transitions and animations automatically** [Windows, Web, iOS, Mac]  

  When creating presentations from prompts or files, Copilot will now automatically add transitions and animations. This enhancement brings your slides to life without extra effort.

- **Create presentations from PDF files with Copilot** [Windows, Web, iOS]  

  You can now generate PowerPoint presentations directly from PDF files using Copilot. This feature simplifies the process of turning documents into engaging presentations.

- **Improved content when creating presentations from prompts** [Windows, Web, iOS, Mac]  

  Experience increased depth and richness of content when you create a presentation from a prompt. Copilot now provides better formatting and more detailed slides to enhance your presentations.

### Viva Amplify

- **Copilot deployment kit now in Viva Amplify** [Web]  

  Prepare and launch Copilot in your organization effortlessly using the new deployment kit in Viva Amplify. Access pre-written and formatted publications to educate users on Copilot features and develop their AI skills, ensuring a smooth rollout. <a href="https://techcommunity.microsoft.com/blog/viva_amplify_blog/copilot-deployment-kit-in-viva-amplify-now-generally-available/4161748" target="_blank">Learn more.</a>

### Viva Insights

- **Specific date ranges on Copilot Dashboard**  

  In the Copilot Dashboard you will now see a specific date range identified in the upper right corner to clarify the measurement timeframe. This date range reflects a trailing 28 day period and is not configurable. For a custom date range analysis, use analyst workbench. <a href="https://techcommunity.microsoft.com/blog/viva_insights_blog/copilot-dashboard-update-%E2%80%93-features-and-data-interpretation-guide/4165494" target="_blank">Learn more.</a>

### Word

- **Find the perfect visual with Copilot + Designer in Word** [Windows, Web, Mac]  

  Enhance your documents with AI-generated images using the new integration of Microsoft Designer in Copilot Chat. Also search for stock images and brand assets to bring your content to life seamlessly.

- **Use a url to reference supported files in Copilot in Word** [iOS]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

- **Use Draft with Copilot in Word based on text, list, or table selection** [Windows, Mac]  

  Use Draft with Copilot in Word with the on-canvas Copilot menu when a user selects text, a list, or a table, which generates new content from Copilot and provides a richer, more interactive experience.

- **Visualize as table** [iOS]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling.

## May, 2024

### Microsoft 365 Copilot Chat

- **Enhanced Reference visibility in Microsoft 365 Copilot Chat** [Windows]  

  References in Microsoft 365 Copilot Chat responses are now unfurled by default at the bottom of each reply. This improvement increases transparency and makes it easier to discover the sources behind Copilot responses.

- **Grounding suggestions when pasting cloud file URLs in Microsoft 365 Copilot Chat** [Web]  

  When you paste file URLs as references in your prompts, Microsoft 365 Copilot Chat now informs you about inline referencing via Context IQ. Access Context IQ in chat using "/" or the "Attach Clip" option to enhance your interactions.

- **Proactive file suggestions for enhanced grounding in Microsoft 365 Copilot Chat** [Web]  

  Microsoft 365 Copilot Chat now proactively informs you about grounding opportunities when typing prompts. Highlighted text and file data source insertions help you create more effective and context-rich prompts.

### Microsoft 365 Copilot

- **Explore curated prompt collections for various roles and industries in Copilot Prompt Gallery** [Windows, Web]  

  Discover and filter through a curated collection of Microsoft-authored prompts tailored for Marketing, HR, Finance, Retail, and Manufacturing roles. These prompts help you get the most out of Copilot with prompts tailored to your role or industry.

### Microsoft Loop

- **Use Copilot in Loop components across Teams and Outlook** [Web]  

  People with a Copilot license can now leverage Copilot in Loop when they paste Loop components into Teams, Outlook, and Meeting Notes.

### Microsoft Teams

- **Copilot notification in unrecorded meetings** [Windows, Android, iOS, Mac]  

  When Copilot is started in a meeting that isn't being recorded, every participant is notified that Copilot is active.


### Outlook

- **Microsoft 365 Copilot Chat available in new Outlook for Windows and web** [Windows, Web, Android, iOS]  

  Access the power of Microsoft 365 Copilot Chat directly within Outlook  on the web and the new Outlook for Windows. Access Microsoft 365 Copilot Chat through the left app bar.

### SharePoint

- **Introducing Restricted SharePoint Search for Copilot** [Web]  

  Administrators can now enable Restricted SharePoint Search to disable organization-wide search and select up to 100 specific SharePoint sites accessible in search and Copilot experiences. Users will still interact with their OneDrive content in Copilot, balancing accessibility and security.

- **Monitor configuration changes with change history reports**  

  Administrators can now create custom reports to track changes made to SharePoint configurations across your organization. Review detailed CSV reports of site actions and organizational setting changes from the past 180 days to ensure compliance and maintain oversight.

### Word

- **Use a url to reference supported files in Copilot in Word** [Windows, Mac]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

- **Use Copilot to enhance pasted text in Word** [Web]  

  Copilot in Word now offers more options when you paste text. Reword content, transform it into tables or lists, and more, making it easier to format and organize your documents efficiently.

- **Use Draft with Copilot in Word based on text, list, or table selection** [Web]  

  Use Draft with Copilot in Word with the on-canvas Copilot menu when a user selects text, a list, or a table, which generates new content from Copilot and provides a richer, more interactive experience.

## April, 2024

### Microsoft 365 Copilot Chat

- **Microsoft 365 Copilot Chat now available in the Microsoft 365 app** [Android, iOS]  

  Microsoft 365 mobile app users with a Microsoft 365 Copilot license can receive answers grounded in their organizational Graph data, enhancing mobile productivity.

- **Use file links to reference files in your prompts** [Windows, Web]  

  Easily refer to files in your Copilot Chat prompts by pasting their URL links, streamlining your workflow and saving time.

### Excel

- **Create Formula Columns Using Data from Multiple Tables** [Windows, Web, iOS, Mac]  

  Support for functions like XLOOKUP and SUMIF allows you to create formula columns that utilize data across multiple tables.

- **Generate multiple formula columns with a single prompt** [Windows, Web, iOS, Mac]  

  Use Copilot in Excel to create several formula-based columns at once. For example, ask Copilot to split a full name into first and last name columns, and watch it generate both formulas in one go.

### Forms

- **Copilot helps you rewrite and extend your forms** [Web]  

  Beyond drafting from scratch, Copilot in Forms can now assist you in rewriting titles, descriptions, or questions, and adding more content to your surveys.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 17 additional languages across all features: Arabic, Chinese (Traditional), Czech, Danish, Dutch, Finnish, Hebrew, Hungarian, Korean, Norwegian (Bokmal), Polish, Portuguese (Portugal), Russian, Swedish, Thai, Turkish, and Ukrainian. <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

- **Microsoft 365 Copilot Data Residency Commitments** [Web]  

  We have added new commitments covering stored content of interactions with Microsoft 365 Copilot to existing data residency commitments, enhancing data compliance.

### Microsoft Loop

- **Access Copilot in Loop easily from the right side of the page** [Web]  

  We have added an entry point on the right side of the page to make Loop Copilot's Draft and Rewrite capabilities more accessible.


### Microsoft Stream

- **Quickly summarize videos with Copilot in Stream** [Web]  

  Copilot in Stream uses AI to help you get insights from videos, allowing you to summarize content or ask in-depth questions efficiently. <a href="https://support.microsoft.com/office/welcome-to-microsoft-copilot-in-stream-0b531ea9-2d9d-4830-97e4-2c1b2b8ca31d" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot understands previous conversations in chats and channels** [Windows, Android, iOS, Mac]  

  When you ask follow-up questions in chats or channels, Copilot now has context from past interactions to provide more accurate answers.

### OneDrive

- **Share Word documents with AI-generated summaries** [Web]  

  Users can now include an AI-generated summary when sharing Word documents, helping recipients understand content quickly and collaborate efficiently.

### OneNote

- **Use Copilot with your handwritten notes** [Windows]  

  Copilot in OneNote now supports inked notes, allowing you to summarize, rewrite, or generate to-do lists from your handwritten content.

### Outlook

- **Control the 'Summary by Copilot' banner in new Outlook** [Web]  

  You can now choose to show or hide the 'Summary by Copilot' banner in your emails for a personalized experience.

- **Copilot chat now available in new Outlook** [Windows, Web]  

  Access Copilot chat within Outlook to type and receive responses while managing your emails, all in a convenient side panel.

- **Draft Emails with Copilot in Classic Outlook for Windows** [Windows]  

  Copilot combines the power of AI and Outlook data to help you draft new messages or replies effortlessly.

### SharePoint

- **Advanced tenant rename in SharePoint Advanced Management** [Web]  

  Change your SharePoint domain with greater control, including prioritizing up to 4,000 sites for early execution and supporting tenants with up to 100,000 sites. <a href="/sharepoint/change-your-sharepoint-domain-name#advanced-tenant-rename" target="_blank">Learn more.</a>

- **Restricted Access Control** [Web]  

  Control permissions of sensitive data by restricting SharePoint sites and OneDrive's access to specific users and their corresponding Copilot. <a href="/sharepoint/sharepoint-copilot-best-practices#step-2---prevent-oversharing-and-control-access-with-sharepoint-and-onedrive" target="_blank">Learn more.</a>

### Viva Engage

- **Copilot in Viva Engage enhances communication and connection** [Web]  

  Copilot in Viva Engage helps you catch up on what's happening in your network and write engaging communications that support your goals.

### Whiteboard

- **Discover Whiteboard Copilot with First Run Experience** [Windows, Web]  

  First-time users will be guided to discover and leverage the power of Whiteboard Copilot features through an interactive introduction.

### Word

- **Bing search integration brings the power of the web to your chats in Word** [Windows, Web]  

  Ask Copilot a question in Word chat, and Copilot generates an answer using the power of integrated Bing search. And you never have to leave the app.

- **Bring the latest from your organization into your Word chats with Microsoft Copilot Graph-grounded search.** [Windows, Web]  

  Bring the latest from your organization into your Word chats with Microsoft Graph-grounded search, enhancing the power of Copilot.

- **Draft with Copilot supports referencing files encrypted with sensitivity labels** [Windows, Web, Mac]  

  Draft with Copilot now allows you to reference files encrypted with sensitivity labels, ensuring secure document creation.

- **Fine-tune rewrite responses in Copilot in Word** [Web]  

  Customize the output from Copilot's Rewrite feature by specifying how the text should change to better suit your needs.

- **Use a url to reference supported files in Copilot in Word** [Web]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

## March, 2024

### Microsoft 365 Copilot Chat

- **Rich entity representations in Copilot responses** [Windows, Web, Android, iOS, Mac]  

  Copilot now provides richer representations of entities like people, events, and files within responses, enhancing context and usability.

### Excel

- **Enable Copilot in Excel by saving files to OneDrive or SharePoint** [Windows, Mac]  

  To use Copilot in Excel, save your files to OneDrive or SharePoint with AutoSave on. You'll receive prompts to help you set this up if needed.

- **Speak to Copilot in Excel with new input methods** [Windows, Web, iOS, Mac]  

  You can now use your microphone to send prompts to Copilot in Excel, and explore the Prompt Guide for customized suggestions.

### Microsoft 365 admin center

- **Send Copilot welcome emails when assigning licenses to users** [Web]  

  Help users get started with Copilot faster. When assigning Microsoft 365 Copilot licenses, you can now send users a welcome email containing helpful resources and tips to maximize their Copilot experience.

### Microsoft Teams

- **Customize your draft message when you compose with Copilot** [Windows, Android, iOS, Mac]  

  You can now instruct Copilot to adjust your draft message however you'd like. Adjust the message with a custom prompt, like "add a call to action" or "/make it persuasive". <a href="https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7" target="_blank">Learn more.</a>


- **Enhanced Copilot UI with new date dividers** [Windows, Android, iOS, Mac]  

  We have improved the Copilot user interface with new date dividers for chats, channels, and meeting Copilot.


### Viva Insights

- **Analyze Copilot metrics with flexible queries in Analyst Workbench**  

  Use the Analyst Workbench to perform flexible Copilot queries on metrics, providing deeper insights into AI usage.

### Word

- **Share Word documents with AI summaries** [Web]  

  Include an AI-generated document summary when sharing Word documents. Recipients get a rich preview, aiding quicker understanding and collaboration.

## February, 2024

### Forms

- **Create and customize Forms quickly with Copilot** [Web]  

  Use natural language to describe the form you need, and Copilot will generate it for you. Copilot can also help you customize your form with a theme or apply response settings, to help drive engagement from your audience.

### Microsoft Teams

- **Copilot side pane stays open across group chats** [Windows, Mac]  

  When you open Copilot in a group chat, it will remain open even as you navigate between different chats, saving you time.

### Outlook

- **Get Coaching from Copilot for an email draft in Classic Outlook for Windows** [Windows]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness.

### Word

- **Summarize your document using chat prompts** [iOS]  

  Ask via chat to summarize your document, highlighting key points for quick understanding and review.

## January, 2024

### Excel

- **Enjoy conversational Copilot in Excel** [Windows, Web, iOS, Mac]  

  Copilot in Excel now remembers the context of your chats, allowing for follow-up questions and clarifications for a smoother experience.

### Microsoft Purview

- **Communication Compliance-Detect Microsoft 365 Copilot interactions template** [Web]  

  Communication Compliance is introducing a new template dedicated to analyzing all Microsoft 365 Copilot  prompts and responses, to help ensure content prohibited by customers' policies, such as harassing or threatening language, isn't being used Microsoft 365 interfaces. This scales Communication Compliance's reach, consistent with Microsoft 365's expanding interfaces. In addition, administrators are also able to select Copilot chats as a checked location in the policy creation wizard for any new or existing policies. This empowers administrators to fine-tune their management strategy precisely to their organization's needs, with a focus on user privacy protection. Whether it's setting specific conditions or deploying trainable classifiers, this feature provides flexibility and adaptability in compliance management, ensuring your organization's communications remain secure, compliant, and respectful of user privacy.


### Word

- **Get answers and enhance content with chat in Word** [iOS]  

  Ask specific questions about your document or request additional details to enhance your content, making your writing process more efficient.

- **Visualize as table** [Windows]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling.

## December, 2023

### Microsoft 365 admin center

- **Track Copilot readiness and usage across Microsoft 365** [Web]  

  Easily assess your organization's technical eligibility, license assignment, and active usage of Microsoft 365 Copilot. Understand which apps drive engagement, monitor trends over time, and use these insights to guide licensing and adoption strategy decisions. <a href="/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness" target="_blank">Learn more.</a>

### Word

- **Visualize as table** [Mac]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

## November, 2023

### Microsoft 365 Copilot Chat

- **Access Microsoft 365 Copilot Chat on Microsoft365.com** [Windows, Web]  

  Use Microsoft 365 Copilot Chat directly from microsoft365.com/chat, providing a unified experience across platforms. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

- **Extend Microsoft 365 Copilot Chat to third-party connectors** [Windows]  

  Support for retrieval and synthesis of content from enabled third-party Graph connectors is now available.

- **Insert entities into prompts in Microsoft 365 Copilot Chat** [Windows, Web]  

  Use '/' to add entities in prompts submitted to Copilot, focusing responses on the most relevant information. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Mac]  

  Your single destination to take on any task, combining AI power with your work content to draft content, catch up, and get answers. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

### Excel

- **Add formula columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot provides formula suggestions with explanations, helping you create new columns based on your data. <a href="https://support.microsoft.com/topic/d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>

- **Generate data insights with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can suggest insights like summaries, trends, and outliers, returning results as charts or PivotTables to enhance your analysis. <a href="https://support.microsoft.com/topic/52d97339-86c0-431c-b46c-e7b07b2898dd" target="_blank">Learn more.</a>

- **Use Copilot to highlight, filter, and sort data in Excel tables** [Windows, Web, iOS, Mac]  

  Transform your data by asking Copilot to format your Excel tables. You can highlight top values, filter specific entries, or sort data. For example, ask Copilot to highlight the top 3 values in a column, and it will apply conditional formatting. <a href="https://support.microsoft.com/topic/05302e3f-de42-4475-b235-be9cb3d4e936" target="_blank">Learn more.</a>

### Microsoft Loop

- **Collaborate with Copilot in Loop** [Web]  

  Work together with Copilot and your team to create content, generate ideas, and refine results collaboratively. <a href="https://support.microsoft.com/topic/76d3401f-01c8-4f6f-a2d3-006af0850a36" target="_blank">Learn more.</a>

- **Enjoy richer Copilot in Loop outputs with formatting and tables** [Web]  

  Copilot can now produce results with rich formatting, including headings and tables, for more organized content.

- **Experience visual updates to the Copilot Block** [Web]  

  The Copilot Block now blends more naturally into your page, with AI interactions happening in the right margin.

- **Generate Page Summaries with Copilot in Loop** [Web]  

  Insert a 'Page Summary' component to have Copilot summarize the content on your current Loop page. <a href="https://support.microsoft.com/topic/5e2c071f-c734-4798-a7a5-2c9d8fa648d1" target="_blank">Learn more.</a>

- **Get insights from your current page content** [Web]  

  Copilot can answer questions based on the content on your current Loop page, providing summaries and analyses. <a href="https://support.microsoft.com/topic/b5baf628-c39c-44e8-8b2f-d67bf23f9af6" target="_blank">Learn more.</a>

- **Rewrite existing content with Copilot** [Web]  

  Leverage Copilot to help rewrite, supplement, or gain insights from content that already exists in Loop. <a href="https://support.microsoft.com/topic/a3057c16-a065-49e8-ad04-e0a453168377" target="_blank">Learn more.</a>

- **See when teammates are editing prompts** [Web]  

  Loop Copilot now indicates when a teammate is actively writing or refining a prompt, enhancing collaboration. <a href="https://support.microsoft.com/topic/76d3401f-01c8-4f6f-a2d3-006af0850a36" target="_blank">Learn more.</a>

- **Summarize and share changes with your team** [Web]  

  Use the Recap experience to have Copilot generate a summary of your changes and share it with your team. <a href="https://support.microsoft.com/topic/e0044a51-6919-46bf-8dac-2e4f300988d5" target="_blank">Learn more.</a>

### Microsoft Purview

- **Microsoft Purview capabilities for Microsoft 365 Copilot** [Web]  

  Microsoft Purview is launching several capabilities that help with security and compliance of data in Microsoft 365 Copilot. These are capabilities in Information Protection, Data Lifecycle Management, Audit, eDiscovery, and Communication Compliance.

### Microsoft Teams

- **Copilot available in a channel post conversation** [Windows, Web, Android, iOS, Mac]  

  Copilot can summarize and support Q&A on a channel post conversation, assisting you directly in your channel conversations.

- **Copilot to summarize and answer Q&A in Teams Chat** [Windows, Web, Android, iOS, Mac]  

  Copilot helps you catch up on conversations by providing summaries and answering questions in Teams chats.

- **Use Copilot in meetings, 1:1 and group calls** [Windows, Web, Android, iOS, Mac]  

  Get summaries, action items, and more after meetings and calls through Copilot in the side panel.

### OneNote

- **Access powerful AI tools in the new OneNote pane** [Windows]  

  Use the new pane to summarize key points, extract insights and to-do lists, generate ideas, and rewrite your text for improved clarity and tone. <a href="https://support.microsoft.com/topic/8be75b91-d4d3-461e-af9a-fadfe208b589" target="_blank">Learn more.</a>

### Outlook

- **Compose emails effortlessly on Outlook for Android and iOS** [Android, iOS]  

  Provide a prompt and generate a full email. Customize the tone and length to suit your needs, streamlining your email writing process. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Draft emails with Copilot in new Outlook** [Windows, Web, Mac]  

  Use Copilot to draft new emails from prompts, adjust length and tone, and even select parts of an email and use Copilot to rewrite those specific sections effortlessly. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get Coaching from Copilot for an email draft in new Outlook** [Web, Android, iOS, Mac]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get quick summaries of email threads in new Outlook** [Web]  

  Receive concise summaries of email conversations, helping you stay informed without reading every message. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

- **Meeting Recap in Calendar** [Windows, Web]  

  After a meeting ends, open the event from your calendar in the new Outlook to view the meeting summary, mentions, tasks, and more, helping you catch up and collaborate asynchronously.

- **Summarize email conversations on Outlook for Android and iOS** [Android, iOS]  

  Quickly get summaries of entire email threads, helping you catch up on conversations efficiently. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

- **Summarize email threads in Classic Outlook for Windows** [Windows]  

  Summarize email conversations, extract key points, and receive recommended actions, enhancing your productivity. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

### PowerPoint

- **Automatically add an agenda slide to your presentation** [Windows, Web, iOS, Mac]  

  Generate and insert an agenda slide based on your existing content, helping you prepare your audience for what's ahead.

- **Convert Word documents into presentations** [Windows, iOS, Mac]  

  Transform your Word documents into fully designed PowerPoint presentations, simplifying the creation process. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create a presentation from a simple prompt** [Windows, Web, iOS, Mac]  

  Provide a prompt and Copilot will help you generate a presentation, saving you time and effort <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create presentations using your organization's templates** [Windows, Web, iOS, Mac]  

  Generate presentations that utilize your company's templates, ensuring consistency and alignment with your brand. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Edit your presentation in Copilot chat** [Windows, Web, iOS, Mac]  

  Add slides, add animations, or organize your presentation in Copilot chat, streamlining your editing process. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>


- **Get answers about your presentation** [Windows, Web, iOS, Mac]  

  Ask questions about your existing PowerPoint presentation to quickly retrieve information and insights.

- **Organize your presentation's flow easily** [Windows, Web, iOS, Mac]  

  Structure your slides, add sections, and insert an agenda slide to improve the overall flow of your presentation. <a href="https://support.microsoft.com/topic/a207eea3-7a56-4225-88f1-54dd37cdcf6a" target="_blank">Learn more.</a>

- **Summarize your presentation and identify key points** [Windows, Web, iOS, Mac]  

  Generate summaries, highlight key slides, and identify action items from your presentation, making it easier to review and share essential information. <a href="https://support.microsoft.com/topic/499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

### Whiteboard

- **Generate ideas effortlessly** [Windows, Web, Android, iOS]  

  Brainstorm by generating short text ideas, fueling your creativity during collaborative sessions.

- **Organize your ideas into themes** [Windows, Web, Android, iOS]  

  Categorize and group your ideas into themes, helping you visualize and structure your brainstorming sessions.

- **Summarize your Whiteboard sessions** [Windows, Web, Android, iOS]  

  Create summaries of your Whiteboard content, capturing key points from your collaborative work.

### Word

- **Apply highest sensitivity label to generated content** [Windows, Web, iOS, Mac]  

  Ensure your documents maintain appropriate confidentiality levels as labels are automatically updated when referencing files with higher sensitivity.

- **Draft with Copilot** [Windows, Web, iOS, Mac]  

  Draft new content for your blank or existing documents, helping you write faster and with ease. <a href="https://support.microsoft.com/topic/069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>

- **Get answers and enhance content with chat in Word** [Windows, Web, Mac]  

  Ask specific questions about your document or request additional details to enhance your content, making your writing process more efficient. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Rewrite with Copilot** [Windows, Web, iOS, Mac]  

  Get suggestions for how to rewrite any text in your document, enhancing clarity and effectiveness. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Summarize your document using chat prompts** [Windows, Web, Mac]  

  Ask via chat to summarize your document, highlighting key points for quick understanding and review. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use chat in Word's Viewing mode** [Windows, Mac]  

  Access chat while in Viewing mode to ask questions about the document's content without switching to Editing mode, improving your reading experience. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use voice prompts for assistance** [Windows, Web, Mac]  

  Use voice to dictate into the Copilot chat prompt field

- **Visualize as table** [Web]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

## [Windows](#tab/win)
<!--- All features that have 'Windows' tag  -->
<!-- 84976,94586,83228,95029,64023,99774,100348,100344,100339,100338,99368,98331,97241,79743,84472 -->
## August 5, 2025
Updates released between July 22, 2025, and August 5, 2025.
### Copilot extensibility
- **Enhance agent builder with full screen mode** [Windows, Mac, Web]

  Enjoy an improved agent builder experience with a full-screen view that streamlines the process of creating and managing your agents.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Enhanced Q&A accuracy for SharePoint files** [Windows, Web]

  Improve the precision of Q&A interactions on SharePoint files that include tables, comments, and formatting. Benefit from more relevant and insightful responses whether you're working with Word, PDF, or PowerPoint files.
- **Get relevant calendar results by time period** [Windows, Web]

  Quickly summarize meetings for a specific day to stay on top of your schedule and focus on the events that matter most.
- **Improve email responses with extra context** [Windows, Web]

  Get fuller email replies that expand your initial lists, indicate the number of related messages, and let you easily paginate for more details—all to help you manage your inbox more effectively.
 <a href="https://support.microsoft.com/topic/schedule-copilot-prompts-29dfd5fb-211a-4515-88a6-730b8074e489" target="_blank">Learn more.</a>
- **Schedule meetings with smart time insights** [Windows, Web]

  Easily discover optimal meeting times and streamline Outlook handoffs with intelligent calendar suggestions that make scheduling a breeze.
 <a href="https://support.microsoft.com/office/how-do-i-use-the-the-scheduling-assistant-to-find-meeting-times-bdd6c165-4186-45f1-ad9e-5af067ac69a3" target="_blank">Learn more.</a>
### Copilot Studio
- **Only use grounded knowledge for agent response** [Windows, Web]

  Prevent agents from using model-trained knowledge by turning off internal knowledge, ensuring responses are based on specified grounded sources.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge#prioritize-your-knowledge-sources-over-general-knowledge" target="_blank">Learn more.</a>
### Microsoft 365 Copilot App
- **Ask Microsoft 365 Copilot for insights using Click to Do** [Windows]

  Streamline your workflow by seamlessly sharing highlighted content with   Microsoft 365 Copilot using Click to Do for quick insights and assistance.
 <a href="/windows/client-management/manage-click-to-do" target="_blank">Learn more.</a>
- **Start an instant chat with Copilot** [Windows]

  Launch a chat with Copilot quickly using the quick view for instant assistance. Use the Win+C shortcut or the Copilot key on supported devices.
### Microsoft 365 Copilot Chat
- **Share agents with your enterprise** [Windows, Web]

  Generate sharing links for your agents in Business Chat. If the recipient doesn't have the agent, they'll be directed to the Microsoft 365 application catalog to install it. If they do, the agent will open directly in Microsoft 365 Copilot Business Chat.
 <a href="https://support.microsoft.com/topic/how-to-share-your-agent-44981c08-ab64-43f1-bcf8-ebadfc5469cc" target="_blank">Learn more.</a>
### PowerPoint
- **Copilot uses enterprise assets hosted on SharePoint OAL when creating presentations now** [Mac, Windows, Web]

  Once you integrate your organization's assets into a Sharepoint OAL (Organization Asset Library) you will be able to create presentations with your organization's image.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
- **Copilot uses Enterprise assets hosted on Templafy when creating presentations now** [Mac, Windows, Web]

  Once you connect your asset library hosted with Templafy to Microsoft365 and Copilot, you will be able to create presentations with your organization's images.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
### Teams
- **Ability to Stop Copilot while it is generating a response** [Windows]

  Copilot in Teams  now has a 'stop' button after sending a prompt. This allows the user to stop Copilot's response either before the response has started to generate, or even after the response is generating. The user can then start a new prompt if they wish.
- **Interpreter agent for seamless communication** [Windows, Mac]

  Interpreter Agent acts like an instant translator during your Teams meetings. It listens to the spoken language in a meeting and immediately translates it into another language in real-time. This allows participants who speak different languages to understand each other and collaborate more effectively without waiting. Whether you're holding a business meeting, customer calls, or project discussions, the AI interpreter in Teams ensures everyone can participate fully, enhancing communication and productivity across diverse teams. It supports 9 different languages: English, Italian, German, French, Portuguese (Brazil), Japanese, Spanish, Chinese (Mandarin), and Korean.
 <a href="https://support.microsoft.com/office/interpreter-in-microsoft-teams-meetings-c7efe2bb-535d-42ab-a5c4-d2d91619b46d" target="_blank">Learn more.</a>
- **Translated Intelligent meeting recap for multilingual meetings (Copilot and Teams Premium)** [Windows, Mac]

  Now, intelligent meeting recap supports multilingual meetings, ensuring you can easily catch up on key discussions even when multiple languages were spoken. After the meeting, your recap is automatically generated in the translation language you selected for live transcription and captions.
 <a href="https://support.microsoft.com/office/recap-in-microsoft-teams-c2e3a0fe-504f-4b2c-bf85-504938f110ef" target="_blank">Learn more.</a>
### Word
- **Kickstart your document with contextual prompts** [Windows]

  Copilot suggests prompts by including files and meetings based on your recent activity, helping you draft a new document in Word seamlessly.


<!-- 98124,78170,100044,97230,95268,100351,99775,95681,95248,80346,98515,98840 -->
## July 22, 2025
Updates released between July 8, 2025, and July 22, 2025.
### Copilot extensibility
- **Hebrew support in Agent builder** [Windows, Web]

  Integrate Hebrew language support in agent builder to build accessible, localized solutions that simplify multilingual deployments and enhance user engagement.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-availability" target="_blank">Learn more.</a>
- **Increased support for uploading up to 20 documents to agents’ knowledge** [Windows, Web]

  End users and makers can now upload up to 20 documents to ground agents with richer, embedded knowledge in Microsoft Copilot Studio agent builder.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge" target="_blank">Learn more.</a>
- **Share agents from embedded builder** [Windows, Web]

  Users can share agents from an embedded agent builder to other individual users or group chats.
 <a href="/microsoft-365/admin/manage/manage-embedded-knowledge-agents" target="_blank">Learn more.</a>
- **Share agents with context-aware link previews** [Windows, Web]

  Streamline your interactions by using context-aware buttons that adapt based on where links are shared—making it easier to take the right action in chats and meetings.
- **Upload and embed knowledge in declarative agents** [Windows, Web]

  Empower your agents with enriched context by uploading your own files and embedding crucial knowledge for personalized, day-to-day assistance.
 <a href="/microsoft-copilot-studio/knowledge-add-file-upload" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Dictate your prompts in Copilot Chat** [Windows, Web]

  You can now use the dictation button to input your prompts via speech, making interactions with Copilot more natural and efficient. 
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=475968" target="_blank">Learn more.</a>
- **Researcher available in GA** [Windows, Mac, Web]

  The researcher agent is pre-installed in Copilot Chat for all worldwide users. Find it in the left navigation pane alongside other agents, giving you quick access to research tools as part of the Copilot Premium license.
 <a href="https://www.microsoft.com/microsoft-365/blog/2025/06/02/researcher-and-analyst-are-now-generally-available-in-microsoft-365-copilot/?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>
### PowerPoint
- **Create a presentation with Microsoft 365 Copilot from menus** [Windows]

  You can quickly begin a new presentation using Microsoft 365 Copilot from the PowerPoint start menu or file menu. Copilot is easily accessible when you open PowerPoint or click the File tab, helping to simplify your workflow.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
- **Microsoft 365 Copilot generates the new presentation in a new file when starting from an existing presentation** [Mac, Windows]

  Now, when creating a presentation using Microsoft 365 Copilot from an existing presentation using , it will create the new presentation in a new file without affecting the original presentation
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
- **Reference multiple files in your presentation creation using Microsoft 365 Copilot** [Windows, Mac, Web]

  Enhance your PowerPoint presentations by referencing up to five files with Microsoft 365 Copilot, making it easier to incorporate detailed insights and comprehensive data without switching contexts.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Word
- **Easily write a prompt or choose quick actions from the Copilot icon in your Word doc** [Mac, Windows]

  The Copilot icon in your document margin makes it easy to quickly add a prompt or choose from a range of quick options Copilot can offer.
 <a href="https://www.microsoft.com/microsoft-365-life-hacks/everyday-ai/how-to-use-copilot-in-microsoft-word?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>
- **Preserve text formatting in drafted content** [Windows]

  Word Copilot now preserves the styling of surrounding content when generating text, ensuring a seamless and professional authoring experience. Copilot now understands and respects more contextual formatting—whether the user is writing in a list, table, heading, or styled paragraph. This includes support for bold, italic, underline, and links. This allows the generated text to better match the structure and basic formatting of the document. The result is a smoother authoring experience with less need for manual reformatting.


<!-- 84996,84872,95244,77803,99334,95294,97932,97885,97801,94703,64005 -->
## July 8, 2025
Updates released between June 24, 2025, and July 8, 2025.
### Copilot extensibility
- **Add Dataverse as knowledge in Copilot** [Web, Windows]

  Users can now include Dataverse as a knowledge source in Copilot, enabling more comprehensive responses and insights.
 <a href="/microsoft-365-copilot/extensibility/build-declarative-agents?tabs=ttk&tutorial-step=1" target="_blank">Learn more.</a>
- **Audit and eDiscovery for Copilot actions and declarative agents** [Windows, Web]

  View detailed audit logs and eDiscovery records for Copilot actions and declarative agents in Microsoft Purview to simplify compliance and investigation workflows.
 <a href="/purview/audit-copilot" target="_blank">Learn more.</a>
- **Deploy Copilot agents for easy discovery** [Windows, Web]

  Deploy Copilot agents in the store for user discovery directly from your apps. Users can get new agents, open the store, install, and use them seamlessly within App Chat.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Discover, acquire, and manage agents through in-app store in Word and PowerPoint** [Windows, Web]

  With Copilot extensibility, users can discover, acquire, and manage agents through the unified store. We are excited to introduce the Microsoft 365 unified store to Office documents, enabling users to discover, acquire, and manage agents directly within the in-app store for Word and PowerPoint, with Excel support coming soon.
 <a href="https://devblogs.microsoft.com/microsoft365dev/office-addins-at-build-2025/#modernized-store-for-office-add-ins-and-copilot-agents" target="_blank">Learn more.</a>
### Excel
- **Copilot in Excel with Python | Reasoning Model Integration (Think Deeper)** [Mac, Windows, Web]

  While performing advanced analysis with Copilot in Excel with Python, users can choose the "Think Deeper" mode to get a more elaborate and detailed plan, followed by automatic execution to generate Python code, results, and explanations. This improves performance on complex asks by leveraging the power of the latest AI reasoning models.
 <a href="https://support.microsoft.com/office/364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
### Microsoft 365 Copilot App
- **Create in the Microsoft 365 Copilot app** [Windows, Web]

  The creative hub for AI led artifact generation capabilities.
 <a href="https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-create-6e0c616d-69fb-42f2-a4cb-c59e006ec4f5" target="_blank">Learn more.</a>
- **Updated UI for Microsoft 365 Copilot App** [Windows, Web]

  The Microsoft 365 Copilot app is your starting place for AI at work, offering quick access to secure AI chat, search, files, and content creation in one seamless app.
 <a href="https://www.microsoft.com/en-us/microsoft-365/blog/2025/04/23/microsoft-365-copilot-built-for-the-era-of-human-agent-collaboration/" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Locate your Copilot Pages in Microsoft 365 Copilot Chat navigation pane** [Windows, Web]

  For quick access to your Copilot Pages, find all page artifacts created across your apps/modules in one place underneath the Chat section in the Microsoft 365 Copilot app.
 <a href="https://techcommunity.microsoft.com/blog/nonprofittechies/introduction-to-microsoft-copilot-pages/4421413" target="_blank">Learn more.</a>
### Teams
- **Copilot in Meetings will suggest follow up questions to ask it** [Windows, Mac]

  When Copilot in Teams Meetings responds to a prompt, it will also suggest follow up prompts to ask Copilot that build on the prior response. These questions will generally be based on the response it gave prior, and could be related to honing in on a particular topic, asking for more details, or even reformatting the content into a table if appropriate.
 <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1" target="_blank">Learn more.</a>
### Viva Connections
- **New News feature in Microsoft Teams** [Android, Windows, iOS, Web]

  This update replaces the current Feed experience in Viva Connections across desktop, mobile, and web platforms with a SharePoint News reader experience. This new experience presents SharePoint news from organizational sites, boosted news, users' followed sites, frequent sites, and people they work with in an immersive reader format. It includes a Copilot-powered news summary as well, available only in Teams for Windows desktop in this initial release.
 <a href="https://techcommunity.microsoft.com/blog/viva_connections_blog/introducing-enterprise-news-reader-in-viva-connections/4383832" target="_blank">Learn more.</a>
### Word
- **Automatic summary of documents on file-open in Word** [Windows, Mac, Web]

  When users open a document, Copilot generates a summary in the Word window. You can hide the summary or open the Copilot chat pane to ask specific questions about the document.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>


<!-- 98006,95296,83646,81354,97565,95267,97885,97034,83213,99889,95904,95903,79335,84996,97832,98196,97305,95679,96368 -->
## June 24, 2025
Updates released between June 10, 2025, and June 24, 2025.
### Copilot extensibility
- **Admins can manage Copilot extensibility under Copilot tab in Microsoft 365 admin center** [Windows, Web]

  Admins have options to manage Copilot extensibility under Copilot tab including agent management for IT published agents and shared agents.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Build agents faster with built in Office skills** [Windows, Web]

  Empower your agent building by consuming built-in Office skills like Q&A on documents and PowerPoint summaries. This feature speeds up integrations, reduces the need for custom solutions, and delivers context-aware insights for a smarter agent experience.
- **Declarative agents can read the current document in WXP** [Windows, Web]

  Improve your workflow with agents that dynamically interact with open documents. Receive real-time suggestions, automate edits, and extract key data to streamline reviews and boost productivity.
 <a href="https://adaptivecards.microsoft.com/?topic=Action.InsertImage" target="_blank">Learn more.</a>
- **Discover, acquire, and manage agents through in-app store** [Windows, Web]

  Users can now easily discover, acquire, and manage Copilot agents directly within their Word and PowerPoint documents through a unified in-app store. This streamlined experience simplifies adding new capabilities—and Excel support is coming soon.
 <a href="https://devblogs.microsoft.com/microsoft365dev/office-addins-at-build-2025/#modernized-store-for-office-add-ins-and-copilot-agents" target="_blank">Learn more.</a>
- **Manage custom Copilot agents in Agent Center** [Windows, Web]

  Organize, store, and update your declarative Copilot agents in one place. Agent Center lets developers register in-context actions, fine-tune prompts, and test behavior faster—so IT admins can roll out reliable, task-specific Copilot experiences at scale.
 <a href="https://devblogs.microsoft.com/microsoft365dev/introducing-the-agent-store-build-publish-and-discover-agents-in-microsoft-365-copilot/" target="_blank">Learn more.</a>
- **Non-citation links remain visible in custom actions** [Windows, Web]

  Links returned from your custom actions are no longer redacted when they aren’t part of a citation, letting users follow the full URL for easier validation and deeper exploration.
 <a href="https://techcommunity.microsoft.com/blog/microsoftdefenderforoffice365blog/safelinks-protection-for-links-generated-by-m365-copilot-chat-and-office-apps/4396828" target="_blank">Learn more.</a>
### Excel
- **Use Copilot with any table in the workbook, referring by natural language** [iOS, Web, Mac, Windows]

  Copilot uses the context of your prompt to pick what selection of data to answer about and reason over, including tables in other sheets.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/smarter-context-awareness-for-copilot-in-excel/4424939" target="_blank">Learn more.</a>
### Microsoft 365 Copilot app
- **Upload phone images to Copilot in Office apps** [Windows]

  Snap a photo on your phone and send it straight to Copilot in Word, PowerPoint, Excel, or OneNote to generate content, extract text, or get design ideas—no cables or transfers needed.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/upload-a-phone-image-to-microsoft-365-copilot/4398121" target="_blank">Learn more.</a>
- **Use Copilot suggested prompts for recommended entities** [Windows, Mac, Web]

  Empower your work with a $30 Copilot license by clicking on curated prompts within recommended entities. Uncover key insights on demand—helping you boost productivity in everyday tasks.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/getting-the-most-from-the-copilot-prompt-gallery/4383106" target="_blank">Learn more.</a>
### Microsoft 365 Copilot
- **Copilot Prompt Gallery – share prompts with a Teams team** [Windows, Web]

  Share custom prompts with members of a Microsoft Teams team directly from Copilot Prompt Gallery, allowing colleagues to easily discover and reuse them in Copilot Chat.
 <a href="https://support.microsoft.com/topic/sharing-prompts-with-a-team-2fa7a228-8645-4dc4-beec-d75d6d0bc752" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Catch up on Task related emails through Microsoft 365 Copilot Chat.** [Windows]

  Users can use Microsoft 365 Copilot Chat to prioritize emails that require immediate attention, address urgent tasks, or contain action items or questions. Timely identification of such emails will help users complete these tasks efficiently or plan their work effectively.
- **Locate your Copilot Pages in Copilot Chat navigation pane** [Windows, Web]

  For quick access to your Copilot Pages, find all page artifacts created across your apps/modules in one place underneath the Chat section in the Microsoft 365 Copilot app.
 <a href="https://techcommunity.microsoft.com/blog/nonprofittechies/introduction-to-microsoft-copilot-pages/4421413" target="_blank">Learn more.</a>
- **Play back responses as audio** [Windows, Web]

  Listen to Copilot's replies with a built-in read aloud feature—ideal for multitasking or when you need to review content hands-free.
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=475967" target="_blank">Learn more.</a>
- **Scheduled prompts** [Windows, Mac, Web, Teams]

  Plan ahead by scheduling essential prompts for repeated tasks in Copilot chat. Create a productive routine that helps you stay organized and efficient.
 <a href="/copilot/microsoft-365/scheduled-prompts" target="_blank">Learn more.</a>
### Microsoft Clipchamp
- **Clipchamp Copilot video creator** [Windows, Web]

  Create a video draft on any topic by providing a prompt. Clipchamp will generate a script, source stock footage and music, add AI voice-over, text overlays, and transitions—giving you a ready-to-edit project you can export to OneDrive.
 <a href="https://support.microsoft.com/topic/how-to-create-video-with-copilot-7586329a-64e0-4ae9-9444-0da5b1c2b848" target="_blank">Learn more.</a>
### PowerPoint
- **Create a PowerPoint slide from a file or prompt** [Web, Windows, Mac]

  Creating impactful slides can be challenging and time-consuming. Copilot helps you quickly turn your ideas and files into a fully designed slide with content ready to edit and refine, making the presentation creation and refinement process more personalized and efficient.
 <a href="https://support.microsoft.com/topic/add-a-slide-from-a-file-with-copilot-in-powerpoint-9034b581-38df-46be-a725-986cbbd4b5d4" target="_blank">Learn more.</a>
- **Designer is now part of Copilot, enhanced with new template and slide suggestions** [Mac, Windows, Web]

  Enjoy familiar Designer slide layouts and presentation template suggestions in a vertical gallery. Copilot now brings you enhanced suggestions to quickly build impactful presentations.
 <a href="https://support.microsoft.com/office/create-professional-slide-layouts-with-designer-53c77d7b-dc40-45c2-b684-81415eac0617" target="_blank">Learn more.</a>
- **Easily select a template while you create a new PowerPoint presentation with Copilot** [Mac, Web, Windows]

  When creating a new presentation with Copilot in PowerPoint, choose a template from your organization's collection for on-brand presentations, or select from Microsoft's handpicked templates, ensuring the new presentation is built as per your chosen template.
 <a href="https://support.microsoft.com/topic/keep-your-presentation-on-brand-with-copilot-046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>
- **Reference a PDF file when creating a presentation with Microsoft 365 Copilot** [Mac, Windows, Web]

  You can now reference a PDF file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>


<!-- 97166,95275,99896,99890,99009,97921,97372,97288,96951,81005,80339,77194,72079 -->
## June 10, 2025
Updates released between May 29, 2025, and June 10, 2025.
### Copilot extensibility
- **One-click setup for all connectors** [Windows, Web]

  New and existing connectors now install in a single step within the admin center, speeding up data integration and reducing support calls.
 <a href="/microsoft-365-copilot/extensibility/overview-copilot-connector" target="_blank">Learn more.</a>
### Excel
- **Improvements to Copilot chat experience** [Windows, Web, Mac]

  Improvements to the Excel Copilot chat experience to give more consistent responses to all chat questions.
### Microsoft 365 Copilot Chat
- **Advanced email filtering in Copilot chat** [Windows]

  Quickly surface exactly the emails you need—ask Microsoft 365 Copilot Chat for “last week’s external emails,” “threads I haven’t replied to,” “purple-category mail,” or “summarise German emails" "emails where I’m on the To line”—and focus on what matters most.
- **Find emails awaiting your reply** [Windows]

  Tell Microsoft 365 Copilot Chat “show me emails that I need to reply” and instantly see unread, read, @mentioned emails or emails with some question, task that you haven’t answered—while hiding threads you’ve already closed—so you can clear your inbox with confidence.
- **Module UI refresh** [Windows, Web]

  Copilot Chat is designed to provide a streamlined UI, making it easy to get started and achieve your goals quickly. It offers a helpful, understanding, and personalized experience, allowing you to search for past interactions, content, agents, or pages with ease.
 <a href="https://support.microsoft.com/en-us/topic/get-started-with-microsoft-365-copilot-chat-5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>
- **Simplified Input box update** [Windows, Web]

  We've made it easier for users to type prompts with access to CIQ, local files, attach cloud files, and agents by adding it under the Plus Menu.
### Outlook
- **Custom Instructions for draft with Copilot** [Android, Windows, iOS, Mac, Web]

  Give Copilot some instructions about your emails - like the tone, length, greeting - so your Copilot generated drafts sound more like you want them to. #newoutlookforwindow
- **Schedule a meeting from an email with Copilot** [Android, Windows, iOS, Mac, Web]

  Turn any email thread into a meeting in one click. Copilot builds a complete invite for your review —title, agenda, attendee list, and a summary of the email conversation—plus attaches the original email thread so everyone is up to speed. Available in the new Outlook for Windows, web, Mac, and mobile. #newoutlookforwindows
 <a href="https://support.microsoft.com/office/create-a-meeting-and-agenda-with-copilot-in-outlook-31a44dfa-62bb-4751-82c4-14327a26759f" target="_blank">Learn more.</a>
### PowerPoint
- **Microsoft 365 Copilot Chat: Reference a TXT file when creating a presentation with Copilot** [Windows, Mac, Web]

  You can now reference a TXT file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Teams
- **Improvements to the transcription experience in meetings** [Windows, Mac]

  These updates enhance the transcription experience in meetings. When transcription, recording, or Copilot is enabled, users are prompted to choose the spoken language for accurate captions. Once transcription is running, only the organizer, co-organizers, and transcript initiator can change that language. A new settings page under Caption settings > Language settings > Meeting spoken language, along with a matching option under Transcript > Language settings, streamlines configuration. If someone speaks a language that doesn’t match the selected one, The organizer/co-organizer and initiator receives a mismatch notification so they can adjust quickly.
 <a href="https://support.microsoft.com/office/use-live-captions-in-microsoft-teams-meetings-4be2d304-f675-4b57-8347-cbd000a21260#:~:text=The%20meeting%20organizer%2C%20co%2Dorganizer(s)%2C%20transcript,Select%20Update%20to%20change." target="_blank">Learn more.</a>
- **Microsoft Teams: Intelligent recap support for ad-hoc meetings and calls in GCC High** [Android, Windows, iOS, Mac, Web]

  Intelligent meeting recap is now available in GCC High for impromptu calls and meetings, like those started from ‘Meet now’ and calls started from chat. You can easily browse the recording by speakers and topics, as well as access AI-generated notes, AI-generated tasks, and name mentions after the ad-hoc meeting ends. This capability is available for users with a Teams Premium or M365 Copilot license.
### Word
- **Draft content from up to 10 chosen references** [Mac, Windows]

  Type a forward slash (/) to pick as many as ten files, meetings, or emails for Copilot to cite while drafting your document. The release started with 10 chosen references but is expanding to support up to 20.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/expanding-reference-capabilities-with-microsoft-365-copilot-in-word/4406054" target="_blank">Learn more.</a>
- **Write a prompt for selected text in Word** [Windows]

  Draft content based only on the sentence or list item you highlight—no more expanding the selection to the entire paragraph or table.


<!-- 84861,96546,96718,97368,94668,95187,97261,96531,96912,95901,95897,81914,95901 -->
## May 29, 2025
Updates released between May 13, 2025, and May 29, 2025.
### Copilot extensibility
- **Insert images in adaptive cards for richer interactions** [Windows, Web]

  Make your adaptive cards more dynamic by adding images—perfect for illustrating ideas, sharing visual data, or engaging users with eye-catching content. This feature helps teams communicate clearly, support diverse learning styles, and create more memorable interactions in everyday workflows.
 <a href="/microsoft-copilot-studio/guidance/adaptive-card-summarize-responses" target="_blank">Learn more.</a>
- **Unified Agent Management for Admins in Microsoft admin center** [Windows, Web]

  Admins can consistently manage Copilot agents in the Microsoft admin center, regardless of how they were built, simplifying deployment and governance.
 <a href="/microsoft-365/admin/manage/manage-plugins-for-copilot-in-integrated-apps" target="_blank">Learn more.</a>
### Excel
- **Access Copilot tools right from the grid** [Windows]

  A handy Copilot icon and context menu now follow your work in the worksheet, letting you launch summaries, formula help, and more without breaking focus.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/how-to-get-started-with-copilot/4383870" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Copilot Chat now offers access to cloud files to insert in user prompts** [Windows, Web]

  In the Web tab of Copilot Chat or Microsoft 365 Copilot, users can browse OneDrive or SharePoint, select a file, and drop it into their prompt to give Copilot precise context for richer responses.
- **Enable agent builder for Copilot chat** [Windows, Web]

  Empower developers with the ability to build custom agents to support Copilot Chat. This feature streamlines the creation of tailored chat experiences that enhance everyday communication and workflow.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Enhanced typography improves readability** [Windows]

  Enjoy crisper fonts, roomier line spacing, clear headers, and neatly formatted tables and code blocks—making every Copilot chat easier to scan, share, and act on.
- **Expanded reference panel for sources and search results** [Windows]

  The reference widget now shows both cited sources and relevant web results, helping you verify information, resolve ambiguities, and ask smarter follow-up questions without leaving the chat.
- **Pay-as-you-go policies keep Copilot costs in check** [Windows, Web]

  Allocate budgets by department, set usage caps, and manage access from the admin center so your organization can innovate with Copilot while staying on budget.
 <a href="/copilot/microsoft-365/pay-as-you-go/overview" target="_blank">Learn more.</a>
- **Safe Links validates redacted URLs** [Windows]

  When Copilot masks a link, Safe Links now scans it instantly and alerts users to malicious sites, adding an extra layer of protection before anyone clicks.
 <a href="https://techcommunity.microsoft.com/blog/microsoftdefenderforoffice365blog/safelinks-protection-for-links-generated-by-m365-copilot-chat-and-office-apps/4396828)" target="_blank">Learn more.</a>
### PowerPoint
- **Ask Copilot to rewrite text as a list** [Web, Mac, Windows]

  Transform paragraphs into clear bullet points or lists with a single command—ideal for quickly organizing content when preparing your presentation.
 <a href="https://support.microsoft.com/topic/elevate-your-presentation-game-with-copilot-s-text-rewrite-feature-in-powerpoint-d70b140b-bb3f-46b7-be64-ceec526a8dcd" target="_blank">Learn more.</a>
### Word
- **Ask agents to refine any text selection** [Windows, Web]

  Highlight a section of your document and let Copilot agents rewrite, shorten, or expand it—keeping the rest of your file private while you perfect the details.
- **Chat with Copilot about any image or chart** [Windows]

  Drop a visual into Copilot chat to extract text, get a plain-language description, generate alt text, or request quick insights—perfect for accessibility checks or fast analysis.
 <a href="https://support.microsoft.com/topic/file-upload-in-microsoft-copilot-8b7bf432-9576-4b16-9dee-6c19a4169e62" target="_blank">Learn more.</a>


<!-- 96970,94471,97570,83243,96611,97225,96244 -->
## May 13, 2025
Updates released between April 29, 2025, and May 13, 2025.
### Excel
- **Advanced analysis with Python and Copilot** [Windows]

  Chat with your spreadsheet and let Copilot run Python scripts to surface trends, build rich visuals, and test what-if scenarios—now fully localized for your team’s language.
 <a href="https://support.microsoft.com/office/copilot-in-excel-with-python-364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
- **Ask Copilot about any part of your sheet** [Web, Mac, Windows, iOS]

  When you ask questions about your worksheet, Copilot can look at the content of your sheet and use it to inform an answer to your question. This will include understanding worksheet data on your selected area, beyond tables and ranges, and provide Copilot answers in chat.
### Microsoft 365 admin center
- **Manage pay-as-you-go billing for Copilot** [Windows, Web]

  Admins can manage pay-as-you-go billing directly within Copilot settings in the Microsoft 365 admin center. This capability is available to users with Global admin, AI admin, and Global reader roles.
 <a href="/copilot/microsoft-365/pay-as-you-go/setup" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Copilot pages in Government Clouds** [Windows]

  Copilot Pages is an interactive, shareable canvas in Microsoft 365 Copilot Chat designed for multiplayer AI collaboration. With Pages, users can turn Copilot responses into something durable with a side-by-side page where users can edit and share with others to collaborate. Now available for Government Cloud users.
 <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>
- **Unified prompt box across web and work chats** [Windows, Web]

  Enjoy a consistent prompting experience across Copilot Chat with an input box that looks and behaves the same in both work and web chat modes.
### PowerPoint
- **Get slide template suggestions as you create** [Windows]

  Copilot now recommends polished layouts the moment you add or name a slide, letting you stay in the flow and skip manual design hunts.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/jumpstart-your-presentations-with-slide-starters/4407669" target="_blank">Learn more.</a>
### Viva Insights
- **Viva Insights now included in Microsoft 365 Copilot subscriptions** [Windows, Web, TeamsAndSurfaceDevices]

  Create advanced, custom reports with Viva Insights to understand Copilot adoption, productivity and business impact. Full access to Viva Insights is available now with Microsoft 365 Copilot subscriptions.
### Word
- **Choose the level of detail for summaries when documents are opened** [Windows, Mac, Web]

  Tailor each document opening with your preferred summary style—select brief, standard, or detailed insights to match your workflow.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
<!-- 81919,96545,96544,77902,97414,81916,96508,96512 -->
## April 29, 2025
Updates released between April 16, 2025, and April 29, 2025.
### Excel
- **Ask Copilot to extract insights from inserted images** [Windows]

  Transform images in your Excel workflows into actionable data. Simply insert an image into the prompt area and ask Copilot to break down details and trends, so you can make informed decisions on the fly.
- **Paste images into Copilot chat** [Web, Windows]

  Ask questions about images you insert into the prompt area to extract key data for your spreadsheets.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/add-images-to-your-copilot-prompts-in-word-and-powerpoint/4359423" target="_blank">Learn more.</a>
### Microsoft 365 Copilot extensibility
- **Agent builder now available in new regions** [Windows, Web]

  You can now access Copilot Studio agent builder in Norway, Sweden, South Korea, and South Africa.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-availability#regional-availability" target="_blank">Learn more.</a>
### Microsoft Copilot Chat
- **M365 Copilot for GCC Environments: Wave 2** [Windows]

  Bringing Microsoft 365 Copilot GCC your AI assistant for work in the GCC environment. It combines the power of Large Language Models with your work content and context, to help you draft and rewrite, summarize and organize, catch up on what you missed, and get answers to questions via open prompts. Copilot generates answers using the rich, people-centric data and insights available in the Microsoft Graph. Microsoft 365 Copilot GCC is now available in Stream, SharePoint, OneNote, and Pages in Loop.
 <a href="https://techcommunity.microsoft.com/blog/publicsectorblog/what%E2%80%99s-new-in-microsoft-365-copilot-for-government/4399086" target="_blank">Learn more.</a>
- **Submit feedback on the agent builder experience** [Windows, Web]

  Improve your custom Copilot Chat solutions by providing targeted feedback on RAI and agent response during test chats. This direct input helps refine and enhance the builder experience.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder#submit-feedback" target="_blank">Learn more.</a>
### Viva Learning
- **AI & Copilot Resources provider availability to all Viva Learning users** [Windows, Web, Teams]

  The AI & Copilot Resources provider is now enabled by default for all Viva Learning users. Administrators now have the ability to manage the visibility of this provider within Viva Learning.
 <a href="/viva/learning/ai-and-copilot-resources" target="_blank">Learn more.</a>
- **Copilot Academy availability to all Microsoft 365 users** [Windows, Web, Teams]

  Copilot Academy is now accessible to users without Copilot licenses. Admins now  have the option to select their preferred access settings for Copilot Academy.
 <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>
### Word
- **Replace your selection with generated content** [Web, Mac, Windows]

  Selecting the Replace button lets you instantly replace your selected text with content that was generated in Draft with Copilot.


<!-- 95249,84156,76195,73845,95264,96345,84526 -->
## April 16, 2025
Updates released between April 2, 2025, and April 16, 2025.
### Excel
- **Access Copilot on-grid in Windows** [Windows]

  A Copilot icon appears right within your spreadsheet on Windows, giving you quick AI assistance as you work to keep your flow uninterrupted.
 
- **Graph grounded chat** [Windows, Mac, Web]

  Ask Copilot in Excel for insights drawn from your chats, documents, meetings, and emails via Microsoft Graph—enhancing your workbook analysis with contextual organizational data.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
- **Use Copilot to search for answers from the web** [Windows, Mac, Web]

  In Excel, simply ask Copilot to search the web for answers and integrate the insights directly into your workbook, making data analysis even smoother.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Get contextual suggestions during Copilot agent conversations** [Windows, Web]

  Speed up tasks with AI-driven prompts for next steps in Copilot Chat. See real-time suggestions to refine queries, dive deeper into topics, or resolve issues faster during agent interactions.
 
- **Support  for longer prompts** [Windows, Web]

  Copilot Chat now supports larger inputs for smoother handling of extensive documents and data.
 
### Microsoft 365 Copilot extensibility
- **Discover agents for unlicensed and metered users** [Windows, Web]

  Empower more users with easy access to agents tailored to their needs—even if they are unlicensed or metered—broadening Copilot’s reach across your organization.
 <a href="/microsoft-365-copilot/extensibility/debugging-copilot-agent" target="_blank">Learn more.</a>

### OneNote
- **Copilot-powered organization in OneNote** [Windows]

  Transform a flat list of pages within a section to have an intuitive hierarchy. Ask Copilot in chat to organize your section and apply the update for a streamlined Notebook organization experience.
 <a href="https://support.microsoft.com/topic/organize-your-notes-with-copilot-in-onenote-f7d0477b-676c-4fa1-8c82-8900bb888618" target="_blank">Learn more.</a>


<!-- 84823 -->
## April 2, 2025
Updates released between March 20, 2025, and April 2, 2025.
### PowerPoint
- **Translate your presentation** [Windows, Web, Mac]

  Produce a translated copy of your entire presentation in about 40 languages while preserving your slide design and structure, making global collaboration effortless.
 <a href="https://support.microsoft.com/topic/translate-your-presentation-with-copilot-2c622fca-daaf-457c-bc74-f3496cf44a85" target="_blank">Learn more.</a>


## March 19, 2025

Updates released between March 5, 2025, and March 19, 2025.

### Microsoft 365 Copilot Chat

- **Prompt suggestions in Copilot chat** [Windows, Web, Mac]  

  Get started in Copilot chat quickly with automatic prompt suggestions that enhance your productivity by providing relevant and context-aware prompts based on your previous interactions.

### Microsoft 365 Copilot extensibility

- **Support for message extension and declarative agents** [Windows, Web]  

  Transform legacy plugins into integrated experiences by exposing them as declarative agents—enhance Office apps like Word, Excel, and PowerPoint with message extensions.

### OneNote

- **Support image input in OneNote chat** [Windows]  

  Ask Copilot to analyze image input and organize your notebook pages by detecting themes and topics. Quickly group pages and update your Notebook structure with a simple click.

### Microsoft 365 Copilot

- **Share a Copilot prompt with a Teams team** [Windows, Web]  

  Easily share custom prompts from the Copilot Prompt Gallery with your Microsoft Teams team. This streamlined sharing makes it simple for team members to discover and make the most of these prompts in their daily workflow. <a href="https://support.microsoft.com/topic/sharing-prompts-with-a-team-2fa7a228-8645-4dc4-beec-d75d6d0bc752?OCID=copilot_ongoingemail_feb25" target="_blank">Learn more.</a>

## March 4, 2025

Updates released between February 20, 2025, and March 4, 2025. 

### Microsoft 365 Copilot Chat

- **Search archived mailboxes in Copilot Chat** [Windows, Web, Android, iOS, Mac]    

  Leverage Copilot to search emails across both primary and archived mailboxes by appending 'from my archives' or 'also look for emails in archives' in your prompts to quickly locate key messages.

### PowerPoint

- **Add speaker notes to all slides with one command** [Windows]  

  Speed up your presentation creation by having Copilot automatically add speaker notes to every slide, getting your narrative draft ready in a flash. <a href="https://support.microsoft.com/topic/add-speaker-notes-to-your-presentations-using-copilot-7139266b-8a1d-4056-8e30-4edcc4d80873" target="_blank">Learn more.</a>

- **Narrative builder creates slides with tables** [Windows, Web, Mac]  

  Convert grounded content from Word documents into dynamic slides with tables. Enhance your presentations with structured, data-driven visuals effortlessly.

## February 19, 2025

Updates released between February 5, 2025, and February 19, 2025. 

### Excel

- **Get powerful insights with python** [Windows]  

  Explore your data naturally with advanced analysis that leverages Python—no expert coding needed to uncover trends and create dynamic visualizations.

### Microsoft Teams

- **Intelligent meeting recap for instant meetings (premium)** [Windows, Mac]  

  Effortlessly browse meeting recordings by speaker and topic and access AI-generated notes, tasks, and mentions for instant meetings—empowering premium Copilot users with comprehensive insights. <a href="https://support.microsoft.com/office/meeting-recap-in-microsoft-teams-c2e3a0fe-504f-4b2c-bf85-504938f110ef" target="_blank">Learn more.</a>

### OneNote

- **Enhance note-taking with iterative content proposals** [Windows]  

  Refine your notes on the fly by iterating prompts and reviewing alternate drafts, giving you a dynamic, customizable note-taking experience. <a href="https://support.microsoft.com/topic/take-notes-with-copilot-in-onenote-d5ddf33d-2bab-48de-9096-79df65f81207" target="_blank">Learn more.</a>

- **Take notes with Copilot directly in the flow from the canvas** [Windows]  

  Seamlessly gather and create notes right on your page with Copilot integrated into your personal OneNote notebook, making in-flow note-taking more intuitive. <a href="https://support.microsoft.com/topic/take-notes-with-copilot-in-onenote-d5ddf33d-2bab-48de-9096-79df65f81207" target="_blank">Learn more.</a>

### PowerPoint

- **Create a presentation from a file-based prompt** [Windows, Web, Mac]  

  Pull key facts and data from a selected file to shape your narrative. Simply provide Copilot with a prompt and quickly build your deck with relevant information. <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

### Viva Insights

- **Copilot dashboard for usage and retention insights** [Windows, Web, Android, iOS, Mac]  

  Dive into usage frequency, compare top user groups, and track retention metrics—all in a single, comprehensive dashboard for actionable insights. <a href="/viva/insights/org-team-insights/copilot-dashboard#interpreting-the-data" target="_blank">Learn more.</a>

### Word

- **Chat with Copilot about selected text** [Windows, Web, Mac]  

  Highlight text, start a chat with Copilot, and receive responses tailored to what you’ve selected. Get targeted writing assistance and refine your content in real time.

## February 4, 2025

Updates released between January 24, 2025, and February 4, 2025.

### Microsoft 365 Copilot App

- **Updates to the Microsoft 365 (Office) app** [Windows, Web, Android, iOS]  

  The Microsoft 365 Copilot app (formerly Microsoft 365 app) has a new name and icon. <a href="https://support.microsoft.com/office/the-microsoft-365-app-transition-to-the-microsoft-365-copilot-app-22eac811-08d6-4df3-92dd-77f193e354a5" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Access support pages in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  View organizational support pages directly within Copilot Chat, for quick help and guidance in your workflow.

- **Accommodate user’s time zones in Copilot** [Windows, Web, Android, iOS]  

  Copilot now references your local time zone when responding helping to avoid confusion and scheduling errors.

- **Charts, graphs, and data analysis in Copilot for Microsoft 365** [Windows, Web]  

  Use natural language to create charts, graphs, and data analysis in Copilot Chat work mode.

### Microsoft Teams

- **Speaker recognition and attribution in BYOD rooms with Copilot** [Windows, Mac]  

  Take advantage of speaker recognition and transcript attribution, unleashing new AI capabilities in any meeting space, whether or not it has a Teams Rooms system deployed. This feature identifies and attributes people in live transcripts, utilizing a unique voice profile for each participant enabling intelligent recaps and unlocking maximum value from Microsoft 365 Copilot in Teams meetings. Users can easily and securely enroll their voices via Teams Settings. This feature requires a Microsoft 365 Copilot or Teams Premium license for the user hosting the meeting for Copilot experiences and intelligent recaps, respectively. <a href="/microsoftteams/rooms/voice-recognition" target="_blank">Learn more.</a>

### Microsoft 365 Copilot

- **Share a prompt with a co-worker** [Windows, Web]  

  Easily create, save, and share your favorite prompts using Copilot Prompt Gallery, inspiring your co-workers to achieve more with Copilot. <a href="/copilot/microsoft-365/copilot-prompt-gallery-export-prompts" target="_blank">Learn more.</a>

### Word

- **Reference data from the Microsoft cloud when drafting with Copilot in Word** [Windows, Web, Mac]  

  Draft with Copilot now supports attaching rich content from the Microsoft cloud—including emails and meetings—resulting in more contextually relevant content. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Reference plain text files in Copilot** [Windows, Web, Mac]  

  Add .txt files as sources with Copilot in Word, streamlining your process when working with text-based research or background content.

## January 23, 2025

Updates released between January 8, 2025, and January 23, 2025.
### Microsoft 365 Copilot Chat

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS]  

  Microsoft 365 Copilot Chat—free, secure AI chat powered by GPT-4o with agents accessible right in chat, and IT controls including enterprise data protection and agent management. Copilot Chat serves as a powerful new on-ramp for everyone in your organization to build an AI habit. Get started with Copilot Chat with the updated <a href="https://www.m365copilot.com" target="_blank">Microsoft 365 Copilot app</a> (formerly Microsoft 365 app). <a href="https://www.microsoft.com/microsoft-365/blog/2025/01/15/copilot-for-all-introducing-microsoft-365-copilot-chat" target="_blank">Learn more.</a>

- **Updated Copilot Chat responses UI** [Windows]  

  Enjoy a more intuitive Copilot experience with streamlined message boundaries, refined message count alerts, and a clearly positioned security badge for higher trust and transparency.

- **Updated meeting entity card in Copilot Chat** [Windows, Web]  

  Check meeting details like RSVP status, date, and attachments without switching contexts in Copilot Chat.

### Microsoft 365 Copilot App

- **Control auto-start behavior on windows** [Windows]  

  Adjust Windows settings to let users auto-launch the M365 app upon login, while giving admins the option to enforce group policy controls for enterprise needs.

- **Keep the app running in the background** [Windows]  

  Enable the setting to keep the app active as a background process after closing, ensuring faster subsequent launches without a full reload.

### PowerPoint

- **Generate summaries for longer presentations** [Windows, Web, Mac]  

  Copilot now supports text summaries up to 40k words (around 150 slides), giving you richer information and more polished layouts. <a href="https://support.microsoft.com/office/summarize-your-presentation-with-copilot-in-powerpoint-499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

- **Listen to Copilot's responses with Read Aloud** [Windows, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

### Viva Insights

- **New Copilot adoption metrics and completing total actions taken** [Windows, iOS, Mac]  

  This adds seven new Copilot adoption metrics to the Copilot dashboard and Viva Insights Advanced insights. It also updates the "total actions taken" metric in the Copilot dashboard to include these new Copilot adoption metrics. <a href="https://techcommunity.microsoft.com/blog/viva_insights_blog/new-microsoft-copilot-analytics-features-now-available-%E2%80%93-novemberdecember-2024/4356206" target="_blank">Learn more.</a>

### Word

- **Get started on a draft immediately with example prompts** [Windows, Mac]  

  On blank documents, Copilot in Word offers one-click example prompts to help you get started quickly. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Listen to Copilot's responses with Read Aloud** [Windows, Web, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

## January 7, 2025

Updates released between December 18, 2024, and January 7, 2025.
### Microsoft 365 Copilot extensibility

- **Include Code Interpreter in agents** [Windows, Web]  

  Enhance your agents by including Code Interpreter for advanced data analysis tasks in agent builder. <a href="/microsoft-365-copilot/extensibility/add-agent-capabilities#enable-code-interpreter" target="_blank">Learn more.</a>

### OneNote

- **Use Copilot quick actions in OneNote: Rewrite, Summarize, and Create To-Dos** [Windows]  

  Enhance your notes by using Copilot directly on the OneNote canvas. Instantly generate summaries, create to-do lists, or rewrite selected content within your notes. <a href="https://support.microsoft.com/office/rewrite-text-with-copilot-in-onenote-a33f14c9-b2f4-46b0-87b9-389690221610" target="_blank">Learn more.</a>

### Outlook

- **Schedule meetings with Copilot chat in Outlook** [Windows, Web]  

  Save time and streamline your day by asking Copilot to schedule meetings for you in Outlook. Whether it's a 1:1 or focus time, Copilot will find the best available time slots with ease. <a href="https://support.microsoft.com/topic/8090e7b3-5b1d-4c6d-9b06-02edac062f58" target="_blank">Learn more.</a>

### Viva Insights

- **Expand your understanding of Copilot adoption with enhanced metrics** [Windows, iOS, Mac]  

  Access seven new Copilot metrics and see them reflected in "total actions taken," helping you better track how teams use Copilot. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-adoption" target="_blank">Learn more.</a>

- **New metrics for enterprise data-protected prompts** [Windows, Web, Android, iOS, Mac]  

  Gain visibility into prompts submitted through Microsoft 365 Copilot Chat (web) and enterprise data-protected Copilot scenarios. <a href="/viva/insights/advanced/reference/metrics#microsoft-365-copilot-metrics" target="_blank">Learn more.</a>

## December 17, 2024

### Microsoft 365 Copilot

- **Microsoft 365 Copilot GCC general availability** [Windows, Web]  

  Your AI assistant for work in the GCC (Government Community Cloud) environment. It combines the power of large language models (LLMs) with your work content and context, to help you draft and rewrite, summarize and organize, catch up on what you missed, and get answers to questions via prompts. <a href="https://aka.ms/M365CopilotGCCBlog" target="_blank">Learn more.</a>

### PowerPoint

- **Ask Copilot about visuals while in PowerPoint** [Windows, Web]  

  Now you can add an image to your chat with Copilot. You can ask questions about the image, extract text, get a description of a chart, translate information, or generate alt text. This helps you stay in the flow of work while getting necessary information to continue working on your document.

### Viva Pulse

- **Templates for Copilot readiness, adoption and impact** [Windows, Web, Android, iOS, Mac]  

  Use new templates to measure employee sentiment and assess your organization's Copilot adoption—all within your Viva Pulse subscription.

### Word

- **Ask Copilot about visuals while in Word** [Windows, Web]  

  Now you can add an image to your chat with Copilot. You can ask questions about the image, extract text, get a description of a chart, translate information, or generate alt text. This helps you stay in the flow of work while getting necessary information to continue working on your document.

## November, 2024

### Microsoft 365 Copilot Chat

- **Focus Copilot responses on specific emails in Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Narrow down Copilot responses by specifying a particular email folder, sub-folder, or subject line. Get more precise assistance by directing Copilot to the emails that matter most to you.

- **Save and reuse your favorite prompts in Copilot** [Windows, Web]  

  Easily save your most-used prompts in Microsoft 365 Copilot Chat and Copilot Prompt Gallery website, keeping them at your fingertips for quicker interactions. <a href="https://support.microsoft.com/topic/55373730-2627-46a5-b0d8-772abe22dba4" target="_blank">Learn more.</a>

- **Share your feedback with in-chat rating in Copilot** [Windows, Web]  

  Easily rate your experience with Copilot's web-grounded chat on a 1-5 scale. Your feedback helps us improve Copilot to better meet your needs.

- **Use web-grounded Copilot chat in Teams and Outlook** [Windows, Web]  

  Enhance your Copilot chat in Teams and Outlook with the latest information from the web. Get up-to-date answers and insights directly within your conversations.

### Excel

- **Perform advanced analysis with Python integration** [Windows]  

  Leverage Python within Excel through Copilot to conduct advanced data analysis, unlocking new insights from your data. <a href="https://support.microsoft.com/office/copilot-in-excel-with-python-364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Add image generation to agents** [Windows, Web]  

  Enhance your agents by including image generation capabilities in agent builder <a href="/microsoft-365-copilot/extensibility/add-agent-capabilities#image-generator" target="_blank">Learn more.</a>

- **Create agents in Microsoft 365 Copilot via agent builder** [Windows, Web]  

  Use agent builder to create agents that contain specific instructions and knowledge, such as SharePoint files, to suit your needs. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

### PowerPoint

- **Build a narrative with file-based topics** [Windows, Web, Mac]  

  Create compelling presentations by integrating topic suggestions linked to your documents—whether Word files, PDFs, or encrypted docs—for a well-grounded narrative.

### Microsoft 365 Copilot   

- **Copilot prompt gallery – nonprofit, consumer goods, and mobility prompt collections** [Windows]  

  Explore new prompt collections tailored for the nonprofit, consumer goods, and mobility sectors. Enhance your productivity with specialized prompts that fit your industry needs.

### Microsoft Teams

- **Disable Copilot in meetings** [Windows, Android, iOS, Mac]  

  You can now turn Copilot off in your meeting settings. Copilot, recording, and transcription are disabled for meetings where Copilot is off. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Word

- **Fine-tune rewrite responses in Copilot in Word** [Windows]  

  Customize the output from Copilot's Rewrite feature by specifying how the text should change to better suit your needs. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Reference larger files and write longer prompts with Copilot** [Windows, Web, Mac]  

  Create more detailed drafts by writing prompts over 2,000 characters and referencing files totaling up to 75,000 words. <a href="https://support.microsoft.com/topic/66de2ffd-deb2-4f0c-8984-098316104389" target="_blank">Learn more.</a>

## October, 2024

### Microsoft 365 Copilot

- **Expanded industry prompt collections in Copilot Prompt Gallery** [Windows]  

  We have expanded our industry prompt collections in Prompt Gallery with new prompt collections tailored to the nonprofit, consumer goods, and mobility sectors.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 12 additional languages across all features: Bulgarian, Croatian, Estonian, Greek, Indonesian, Latvian, Lithuanian, Romanian, Serbian (Latin), Slovak, Slovenian, and Vietnamese. Microsoft 365 Copilot also improved the handling of language variants: Dutch (Belgium), German (Switzerland), English (UK), Spanish (Mexico), and French (Canada). <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Create agents in Copilot with instructions and knowledge sources** [Windows, Web]  

  Users can build Copilot agents that include specific instructions and knowledge, such as SharePoint files, directly from Copilot Chat using Copilot Studio Agent Builder. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

- **Customize your agent list in Copilot across apps** [Windows, Web]  

  Reorder or remove agents from your agent list, with updates based on your most recently used agents and admin-installed agents, available in Copilot Chat, Microsoft Teams, and Microsoft 365.

- **Invoke agents with @mentions across apps** [Windows, Web]  

  Users can now @mention agents to invoke them in-context within Copilot Chat, Word, and PowerPoint, enhancing workflow efficiency. <a href="https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

- **Start conversations easily with Agent starter prompts** [Windows, Web]  

  Select from conversation starter prompts to begin using an agent quickly and effortlessly. <a href="https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

### Microsoft Teams

- **Empower meeting organizers to adjust Copilot availability** [Windows, Android, iOS, Mac]  

  Admins can now set Copilot in Teams meetings to  'During and After Meeting' and allow meeting organizers to change it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Outlook

- **Rewrite selected text in emails using Copilot** [Windows, Web, Android, iOS, Mac]  

  Select specific parts of your drafted email and ask Copilot in new Outlook to rewrite it or provide more information to rewrite it. Provide detailed instructions or adjust the tone and length to suit your needs.

### PowerPoint

- **Create presentations with new slide types using Copilot** [Windows]  

  When creating a presentation with Copilot, you'll now see agenda, section, and conclusion slides, giving your presentations better structure.


- **Custom slideshow of key slides** [Windows]  

  Ask Copilot to show key slides, and you'll have one-click access to play a custom presentation of the most important slides.

- **Enhanced creation and editing with Copilot** [Windows]  

  Copilot now offers richer information, elevated visual structures, better images, and more polished layouts when creating or editing your presentations. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

### Viva Insights

- **New Microsoft 365 Copilot Chat prompts submitted through Teams** [Windows, iOS, Mac]  

  Adding new Microsoft 365 Copilot Chat prompts submitted through Teams metric to Copilot dashboard and Viva Insights Advanced insights.

### Word

- **Reference up to 10 Items when drafting with Copilot** [Windows, Mac]  

  Expand your drafting capabilities by referencing up to 10 items—such as files, emails, and meetings—when using Copilot in Word. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

## September, 2024

### Microsoft 365 Copilot Chat

- **Get started quicker with grounded prompts** [Windows, Web]  

  Copilot Chat prompt suggestions now include relevant files, people, and meetings to help you get started with grounded prompts. Clicking the prompt card will add the prompt text and related file into the input box where you can select a different file, person, or meeting to fit your needs.

### Excel

- **Access Copilot from the cell context menu** [Windows, Web]  

  Easily launch Copilot in Excel directly from the cell context menu, streamlining your workflow. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

- **Copilot in Excel is generally available** [Windows, Web, iOS, Mac]  

  Copilot in Excel, now no longer in Preview but Generally Available, works alongside you to analyze and explore your data, answering questions in natural language and revealing insights without the need for complex formulas. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

### Microsoft 365 Copilot

- **AI-generated Images with Copilot and Microsoft Designer** [Windows, Web, Mac]  

  Microsoft Designer integration in Copilot chat allows you to generate that perfect image, providing limitless creativity and bringing your presentations to life. <a href="https://support.microsoft.com/topic/6cd168f3-1cf0-478e-bd75-31d6526d2504" target="_blank">Learn more.</a>

- **Insert brand-approved images from SharePoint using Copilot** [Windows, Web]  

  Keep your documents and presentations on brand by adding company-approved images directly from your SharePoint organization asset library through Copilot. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot in Teams meetings considers meeting chat** [Windows, Mac]  

  When generating meeting summaries or answering questions, Copilot in Teams will now use the chat and transcript as context, providing more accurate and relevant responses. <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1" target="_blank">Learn more.</a>

### PowerPoint

- **Improved template support with Copilot** [Windows, Web, Mac]  

  Update your templates to PowerPoint's best practices, and Copilot will generate beautiful, on-brand slides every time you create a presentation. <a href="https://support.microsoft.com/topic/046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>

### Word

- **Use Copilot to enhance pasted text in Word** [Windows, Mac]  

  Copilot in Word now offers more options when you paste text. Reword content, transform it into tables or lists, and more, making it easier to format and organize your documents efficiently.

## August, 2024

### Microsoft 365 Copilot

- **Try prompts directly from the Copilot Prompt Gallery website** [Windows, Web]  

  Quickly launch suggested prompts from the Copilot Prompt Gallery website in Microsoft 365 Copilot Chat by clicking the "Try in" button on the prompt card.

### Excel

- **Custom chart and PivotTable creation** [Windows, Web, iOS, Mac]  

  You can now ask Copilot for more specific charts and PivotTables, including specifying the X and Y axes. Customize your data presentations more precisely.

- **Formula data summaries from columns** [Windows, Web, iOS, Mac]  

  Add a single formula to summarize column data into one cell. This feature allows you to calculate data across columns and return a single result, simplifying data analysis.

- **Suggest conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Ask Copilot to suggest conditional formatting for your data. Receive a list of prompts that might highlight key insights in your data.

- **Summarize text columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can analyze columns of text to provide summaries, such as identifying main themes in survey responses. Understand your text data more effectively.

### Microsoft Teams

- **Copilot summarizes content over specified time periods** [Windows, Android, iOS, Mac]  

  Copilot can now identify and summarize information over specific time periods, responding accurately to queries like "yesterday," "last month," or "last year." <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c" target="_blank">Learn more.</a>

- **Linked files in Copilot replies** [Windows, Android, iOS, Mac]  

  We have optimized Copilot in Microsoft Teams to include linked files in Copilot answers for quicker and more reliable retrieval of files and links, making your experience smoother and more efficient.


### Outlook

- **Schedule meetings from an email with Copilot in new Outlook** [Windows, Web]  

  Quickly shift from an email thread to a meeting invite by clicking "Schedule with Copilot." Copilot summarizes the conversation, drafts an agenda, and includes key context automatically.

### PowerPoint

- **Build your story with Narrative Builder** [Windows, Web, iOS, Mac]  

  Copilot helps you form your narrative and turns it into a fully designed presentation, streamlining the creative process.

- **Improved presentation summary richness** [Windows, Web, iOS, Mac]  

  Copilot now leverages the latest GPT models to provide richer summaries when generating presentations, enhancing the quality of your content.

### Viva Insights

- **Analyze Copilot impact over time** [Windows, Web, Android, iOS, Mac]  

  View trendlines of key productivity metrics over 6 months and estimate the financial value of Copilot-assisted hours. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact" target="_blank">Learn more.</a>

## July, 2024

### Excel

- **Advanced conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Copilot now supports complex conditional formatting, such as highlighting rows based on multiple criteria. Enhance your data visualization with more formulaic formatting options.

- **Improved data insights in Copilot** [Windows, Web, iOS, Mac]  

  Copilot is now better at answering questions about data insights like trends and correlations. Get more meaningful analysis to make informed decisions.

- **Preview and apply changes suggested by Copilot** [Windows, Web, iOS, Mac]  

  Before Copilot makes changes to your Excel data, you'll now receive a description and an "Apply" button. This gives you more control over your data and allows for refinements before applying changes.

- **Preview conditional formatting rules** [Windows, Web, iOS, Mac]  

  When setting a conditional formatting rule, Copilot's response will include a preview of the style and an explanation of the formula. This helps you understand and apply formatting more confidently.

- **Support for data ranges resembling tables** [Windows, Web, iOS, Mac]  

  Copilot can now reason over data ranges with a single row of headers, even if they aren't formatted as formal tables. This makes data analysis more flexible.

### PowerPoint

- **Create presentations from encrypted Word documents** [Windows, Web, iOS, Mac]  

  Copilot for PowerPoint can now create presentations using Word documents that have a protected sensitivity label, expanding your content creation options securely.

- **Easier access to Copilot in PowerPoint** [Windows, Web, iOS, Mac]  

  Access Copilot in PowerPoint more easily with new on-canvas entry points. Start enhancing your presentations with AI assistance in fewer clicks.

### Viva Insights

- **Microsoft Copilot Dashboard powered by Viva Insights** [Windows, Web, Android, iOS, Mac]  

  The Microsoft Copilot Dashboard available to all Microsoft 365 Copilot customers at no extra cost. Access it via the Viva Insights app to monitor Copilot adoption and impact. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

### Word

- **Summarize longer documents in chat** [Windows, Web, iOS, Mac]  

  Copilot in Word can now summarize longer documents, with the upper limit increased to about four times more words (approx. 80k words). Get comprehensive overviews of lengthy content.

## June, 2024

### Microsoft 365 Copilot Chat

- **Contextual prompt suggestions in Microsoft 365 Copilot Chat** [Windows]  

  Microsoft 365 Copilot Chat now shows contextual prompt suggestions when you hover over entities like files, events, and people. Quickly access relevant information to enhance your productivity.

### Excel

- **Copilot works on any selection in Excel** [Windows, Web, iOS, Mac]  

  Copilot now enables the edit box on any worksheet, regardless of selection. It intelligently finds the nearest table or data range for your analysis queries, making data manipulation more flexible.

### Microsoft Teams

- **Admins can enforce Copilot during and after meetings** [Windows, Android, iOS, Mac]  

  Admins can set Copilot in Teams meetings to  'During and After Meeting' and prevent meeting organizers from changing it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

- **Control access to recordings and transcripts** [Windows, Android, iOS, Mac]  

  Introducing new meeting settings that allow you to control who can access recordings, transcripts, and prompt Copilot. Enhance your meeting security and privacy with these granular controls.

- **Intelligent Recap available for Copilot users** [Windows, Mac]  

  Copilot users can now access Intelligent Recap after meetings and calls. Browse recordings by speakers and topics, and access AI-generated meeting notes, action items, and @mentions, all designed to keep you informed.

### OneNote

- **Access company information via Copilot in OneNote** [Windows]  

  Prompt Copilot in OneNote to get responses from all your company information stored in the Microsoft cloud. Find the data you need without leaving your note-taking app.

### Outlook

- **Microsoft 365 Copilot Chat in classic Outlook** [Windows]  

  The Microsoft 365 Copilot Chat experience is now available in classic Outlook. Access AI-powered assistance directly from the App Bar on the left to enhance your email productivity.

### PowerPoint

- **Copilot adds transitions and animations automatically** [Windows, Web, iOS, Mac]  

  When creating presentations from prompts or files, Copilot will now automatically add transitions and animations. This enhancement brings your slides to life without extra effort.

- **Create presentations from PDF files with Copilot** [Windows, Web, iOS]  

  You can now generate PowerPoint presentations directly from PDF files using Copilot. This feature simplifies the process of turning documents into engaging presentations.

- **Improved content when creating presentations from prompts** [Windows, Web, iOS, Mac]  

  Experience increased depth and richness of content when you create a presentation from a prompt. Copilot now provides better formatting and more detailed slides to enhance your presentations.

### Word

- **Find the perfect visual with Copilot + Designer in Word** [Windows, Web, Mac]  

  Enhance your documents with AI-generated images using the new integration of Microsoft Designer in Copilot Chat. Also search for stock images and brand assets to bring your content to life seamlessly.

- **Use Draft with Copilot in Word based on text, list, or table selection** [Windows, Mac]  

  Use Draft with Copilot in Word with the on-canvas Copilot menu when a user selects text, a list, or a table, which generates new content from Copilot and provides a richer, more interactive experience.

## May, 2024

### Microsoft 365 Copilot Chat

- **Enhanced Reference visibility in Microsoft 365 Copilot Chat** [Windows]  

  References in Microsoft 365 Copilot Chat responses are now unfurled by default at the bottom of each reply. This improvement increases transparency and makes it easier to discover the sources behind Copilot responses.

### Microsoft 365 Copilot

- **Explore curated prompt collections for various roles and industries in Copilot Prompt Gallery** [Windows, Web]  

  Discover and filter through a curated collection of Microsoft-authored prompts tailored for Marketing, HR, Finance, Retail, and Manufacturing roles. These prompts help you get the most out of Copilot with prompts tailored to your role or industry.

### Microsoft Teams

- **Copilot notification in unrecorded meetings** [Windows, Android, iOS, Mac]  

  When Copilot is started in a meeting that isn't being recorded, every participant is notified that Copilot is active.


### Outlook

- **Microsoft 365 Copilot Chat available in new Outlook for Windows and web** [Windows, Web, Android, iOS]  

  Access the power of Microsoft 365 Copilot Chat directly within Outlook  on the web and the new Outlook for Windows. Access Microsoft 365 Copilot Chat through the left app bar.

### Word

- **Use a url to reference supported files in Copilot in Word** [Windows, Mac]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

## April, 2024

### Microsoft 365 Copilot Chat

- **Use file links to reference files in your prompts** [Windows, Web]  

  Easily refer to files in your Copilot Chat prompts by pasting their URL links, streamlining your workflow and saving time.

### Excel

- **Create Formula Columns Using Data from Multiple Tables** [Windows, Web, iOS, Mac]  

  Support for functions like XLOOKUP and SUMIF allows you to create formula columns that utilize data across multiple tables.

- **Generate multiple formula columns with a single prompt** [Windows, Web, iOS, Mac]  

  Use Copilot in Excel to create several formula-based columns at once. For example, ask Copilot to split a full name into first and last name columns, and watch it generate both formulas in one go.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 17 additional languages across all features: Arabic, Chinese (Traditional), Czech, Danish, Dutch, Finnish, Hebrew, Hungarian, Korean, Norwegian (Bokmal), Polish, Portuguese (Portugal), Russian, Swedish, Thai, Turkish, and Ukrainian. <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot understands previous conversations in chats and channels** [Windows, Android, iOS, Mac]  

  When you ask follow-up questions in chats or channels, Copilot now has context from past interactions to provide more accurate answers.

### OneNote

- **Use Copilot with your handwritten notes** [Windows]  

  Copilot in OneNote now supports inked notes, allowing you to summarize, rewrite, or generate to-do lists from your handwritten content.

### Outlook

- **Copilot chat now available in new Outlook** [Windows, Web]  

  Access Copilot chat within Outlook to type and receive responses while managing your emails, all in a convenient side panel.

- **Draft Emails with Copilot in Classic Outlook for Windows** [Windows]  

  Copilot combines the power of AI and Outlook data to help you draft new messages or replies effortlessly.

### Whiteboard

- **Discover Whiteboard Copilot with First Run Experience** [Windows, Web]  

  First-time users will be guided to discover and leverage the power of Whiteboard Copilot features through an interactive introduction.

### Word

- **Bing search integration brings the power of the web to your chats in Word** [Windows, Web]  

  Ask Copilot a question in Word chat, and Copilot generates an answer using the power of integrated Bing search. And you never have to leave the app.

- **Bring the latest from your organization into your Word chats with Microsoft Copilot Graph-grounded search.** [Windows, Web]  

  Bring the latest from your organization into your Word chats with Microsoft Graph-grounded search, enhancing the power of Copilot.

- **Draft with Copilot supports referencing files encrypted with sensitivity labels** [Windows, Web, Mac]  

  Draft with Copilot now allows you to reference files encrypted with sensitivity labels, ensuring secure document creation.

## March, 2024

### Microsoft 365 Copilot Chat

- **Rich entity representations in Copilot responses** [Windows, Web, Android, iOS, Mac]  

  Copilot now provides richer representations of entities like people, events, and files within responses, enhancing context and usability.

### Excel

- **Enable Copilot in Excel by saving files to OneDrive or SharePoint** [Windows, Mac]  

  To use Copilot in Excel, save your files to OneDrive or SharePoint with AutoSave on. You'll receive prompts to help you set this up if needed.

- **Speak to Copilot in Excel with new input methods** [Windows, Web, iOS, Mac]  

  You can now use your microphone to send prompts to Copilot in Excel, and explore the Prompt Guide for customized suggestions.

### Microsoft Teams

- **Customize your draft message when you compose with Copilot** [Windows, Android, iOS, Mac]  

  You can now instruct Copilot to adjust your draft message however you'd like. Adjust the message with a custom prompt, like "add a call to action" or "/make it persuasive". <a href="https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7" target="_blank">Learn more.</a>


- **Enhanced Copilot UI with new date dividers** [Windows, Android, iOS, Mac]  

  We have improved the Copilot user interface with new date dividers for chats, channels, and meeting Copilot.


## February, 2024

### Microsoft Teams

- **Copilot side pane stays open across group chats** [Windows, Mac]  

  When you open Copilot in a group chat, it will remain open even as you navigate between different chats, saving you time.

### Outlook

- **Get Coaching from Copilot for an email draft in Classic Outlook for Windows** [Windows]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness.

## January, 2024

### Excel

- **Enjoy conversational Copilot in Excel** [Windows, Web, iOS, Mac]  

  Copilot in Excel now remembers the context of your chats, allowing for follow-up questions and clarifications for a smoother experience.

### Word

- **Visualize as table** [Windows]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling.

## November, 2023

### Microsoft 365 Copilot Chat

- **Access Microsoft 365 Copilot Chat on Microsoft365.com** [Windows, Web]  

  Use Microsoft 365 Copilot Chat directly from microsoft365.com/chat, providing a unified experience across platforms. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

- **Extend Microsoft 365 Copilot Chat to third-party connectors** [Windows]  

  Support for retrieval and synthesis of content from enabled third-party Graph connectors is now available.

- **Insert entities into prompts in Microsoft 365 Copilot Chat** [Windows, Web]  

  Use '/' to add entities in prompts submitted to Copilot, focusing responses on the most relevant information. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Mac]  

  Your single destination to take on any task, combining AI power with your work content to draft content, catch up, and get answers. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

### Excel

- **Add formula columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot provides formula suggestions with explanations, helping you create new columns based on your data. <a href="https://support.microsoft.com/topic/d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>

- **Generate data insights with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can suggest insights like summaries, trends, and outliers, returning results as charts or PivotTables to enhance your analysis. <a href="https://support.microsoft.com/topic/52d97339-86c0-431c-b46c-e7b07b2898dd" target="_blank">Learn more.</a>

- **Use Copilot to highlight, filter, and sort data in Excel tables** [Windows, Web, iOS, Mac]  

  Transform your data by asking Copilot to format your Excel tables. You can highlight top values, filter specific entries, or sort data. For example, ask Copilot to highlight the top 3 values in a column, and it will apply conditional formatting. <a href="https://support.microsoft.com/topic/05302e3f-de42-4475-b235-be9cb3d4e936" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot available in a channel post conversation** [Windows, Web, Android, iOS, Mac]  

  Copilot can summarize and support Q&A on a channel post conversation, assisting you directly in your channel conversations.

- **Copilot to summarize and answer Q&A in Teams Chat** [Windows, Web, Android, iOS, Mac]  

  Copilot helps you catch up on conversations by providing summaries and answering questions in Teams chats.

- **Use Copilot in meetings, 1:1 and group calls** [Windows, Web, Android, iOS, Mac]  

  Get summaries, action items, and more after meetings and calls through Copilot in the side panel.

### OneNote

- **Access powerful AI tools in the new OneNote pane** [Windows]  

  Use the new pane to summarize key points, extract insights and to-do lists, generate ideas, and rewrite your text for improved clarity and tone. <a href="https://support.microsoft.com/topic/8be75b91-d4d3-461e-af9a-fadfe208b589" target="_blank">Learn more.</a>

### Outlook

- **Draft emails with Copilot in new Outlook** [Windows, Web, Mac]  

  Use Copilot to draft new emails from prompts, adjust length and tone, and even select parts of an email and use Copilot to rewrite those specific sections effortlessly. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Meeting Recap in Calendar** [Windows, Web]  

  After a meeting ends, open the event from your calendar in the new Outlook to view the meeting summary, mentions, tasks, and more, helping you catch up and collaborate asynchronously.

- **Summarize email threads in Classic Outlook for Windows** [Windows]  

  Summarize email conversations, extract key points, and receive recommended actions, enhancing your productivity. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

### PowerPoint

- **Automatically add an agenda slide to your presentation** [Windows, Web, iOS, Mac]  

  Generate and insert an agenda slide based on your existing content, helping you prepare your audience for what's ahead.

- **Convert Word documents into presentations** [Windows, iOS, Mac]  

  Transform your Word documents into fully designed PowerPoint presentations, simplifying the creation process. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create a presentation from a simple prompt** [Windows, Web, iOS, Mac]  

  Provide a prompt and Copilot will help you generate a presentation, saving you time and effort <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create presentations using your organization's templates** [Windows, Web, iOS, Mac]  

  Generate presentations that utilize your company's templates, ensuring consistency and alignment with your brand. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Edit your presentation in Copilot chat** [Windows, Web, iOS, Mac]  

  Add slides, add animations, or organize your presentation in Copilot chat, streamlining your editing process. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>


- **Get answers about your presentation** [Windows, Web, iOS, Mac]  

  Ask questions about your existing PowerPoint presentation to quickly retrieve information and insights.

- **Organize your presentation's flow easily** [Windows, Web, iOS, Mac]  

  Structure your slides, add sections, and insert an agenda slide to improve the overall flow of your presentation. <a href="https://support.microsoft.com/topic/a207eea3-7a56-4225-88f1-54dd37cdcf6a" target="_blank">Learn more.</a>

- **Summarize your presentation and identify key points** [Windows, Web, iOS, Mac]  

  Generate summaries, highlight key slides, and identify action items from your presentation, making it easier to review and share essential information. <a href="https://support.microsoft.com/topic/499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

### Whiteboard

- **Generate ideas effortlessly** [Windows, Web, Android, iOS]  

  Brainstorm by generating short text ideas, fueling your creativity during collaborative sessions.

- **Organize your ideas into themes** [Windows, Web, Android, iOS]  

  Categorize and group your ideas into themes, helping you visualize and structure your brainstorming sessions.

- **Summarize your Whiteboard sessions** [Windows, Web, Android, iOS]  

  Create summaries of your Whiteboard content, capturing key points from your collaborative work.

### Word

- **Apply highest sensitivity label to generated content** [Windows, Web, iOS, Mac]  

  Ensure your documents maintain appropriate confidentiality levels as labels are automatically updated when referencing files with higher sensitivity.

- **Draft with Copilot** [Windows, Web, iOS, Mac]  

  Draft new content for your blank or existing documents, helping you write faster and with ease. <a href="https://support.microsoft.com/topic/069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>

- **Get answers and enhance content with chat in Word** [Windows, Web, Mac]  

  Ask specific questions about your document or request additional details to enhance your content, making your writing process more efficient. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Rewrite with Copilot** [Windows, Web, iOS, Mac]  

  Get suggestions for how to rewrite any text in your document, enhancing clarity and effectiveness. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Summarize your document using chat prompts** [Windows, Web, Mac]  

  Ask via chat to summarize your document, highlighting key points for quick understanding and review. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use chat in Word's Viewing mode** [Windows, Mac]  

  Access chat while in Viewing mode to ask questions about the document's content without switching to Editing mode, improving your reading experience. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use voice prompts for assistance** [Windows, Web, Mac]  

  Use voice to dictate into the Copilot chat prompt field

## [Web](#tab/web)
<!--- All features that have 'Web' tag  -->
<!-- 84976,94586,83228,98372,99774,97856,100348,100344,100339,100338,99397,99368,96111,78252 -->
## August 5, 2025
Updates released between July 22, 2025, and August 5, 2025.
### Copilot extensibility
- **Admin pre-approval for trusted declarative agents** [Web]

  Admins can now pre-approve specific agents so their actions are always allowed without extra confirmation. This reduces interruptions and helps ensure a smooth workflow in integrated apps.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Enhance agent builder with full screen mode** [Windows, Mac, Web]

  Enjoy an improved agent builder experience with a full-screen view that streamlines the process of creating and managing your agents.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Enhanced Q&A accuracy for SharePoint files** [Windows, Web]

  Improve the precision of Q&A interactions on SharePoint files that include tables, comments, and formatting. Benefit from more relevant and insightful responses whether you're working with Word, PDF, or PowerPoint files.
- **Get relevant calendar results by time period** [Windows, Web]

  Quickly summarize meetings for a specific day to stay on top of your schedule and focus on the events that matter most.
- **Improve email responses with extra context** [Windows, Web]

  Get fuller email replies that expand your initial lists, indicate the number of related messages, and let you easily paginate for more details—all to help you manage your inbox more effectively.
 <a href="https://support.microsoft.com/topic/schedule-copilot-prompts-29dfd5fb-211a-4515-88a6-730b8074e489" target="_blank">Learn more.</a>
- **Schedule meetings with smart time insights** [Windows, Web]

  Easily discover optimal meeting times and streamline Outlook handoffs with intelligent calendar suggestions that make scheduling a breeze.
 <a href="https://support.microsoft.com/office/how-do-i-use-the-the-scheduling-assistant-to-find-meeting-times-bdd6c165-4186-45f1-ad9e-5af067ac69a3" target="_blank">Learn more.</a>
### Copilot Studio
- **Ground your agents with live enterprise data** [Web]

  You can now enhance your copilots built with Microsoft Copilot Studio by incorporating structured data from both Microsoft and select non-Microsoft systems. These copilots enable users to ask natural language questions about enterprise systems within their Power Platform tenants. Building on the natural language query capabilities introduced with Microsoft Dataverse knowledge, Microsoft is extending this functionality to include certain third-party services.
 <a href="/microsoft-copilot-studio/knowledge-real-time-connectors" target="_blank">Learn more.</a>
- **Only use grounded knowledge for agent response** [Windows, Web]

  Prevent agents from using model-trained knowledge by turning off internal knowledge, ensuring responses are based on specified grounded sources.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge#prioritize-your-knowledge-sources-over-general-knowledge" target="_blank">Learn more.</a>
### Microsoft 365 admin center
- **Onboard SharePoint Agents as a PayG scenario in CCS** [Web]

  This feature introduces SharePoint Agents to the Pay-as-you-go tab under Copilot → Billing & usage, aligning with the existing workflow used for Microsoft 365 Copilot Chat. Administrators will gain the ability to manage and monitor SharePoint Agent consumption through the familiar Pay-as-you-go interface, ensuring consistent oversight across Copilot experiences. Integration with the SharePoint backend via API enables precise usage tracking and billing for this new scenario.
 <a href="/microsoft-365/services/pay-as-you-go-services" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Share agents with your enterprise** [Windows, Web]

  Generate sharing links for your agents in Business Chat. If the recipient doesn't have the agent, they'll be directed to the Microsoft 365 application catalog to install it. If they do, the agent will open directly in Microsoft 365 Copilot Business Chat.
 <a href="https://support.microsoft.com/topic/how-to-share-your-agent-44981c08-ab64-43f1-bcf8-ebadfc5469cc" target="_blank">Learn more.</a>
### PowerPoint
- **Copilot uses enterprise assets hosted on SharePoint OAL when creating presentations now** [Mac, Windows, Web]

  Once you integrate your organization's assets into a Sharepoint OAL (Organization Asset Library) you will be able to create presentations with your organization's image.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
- **Copilot uses Enterprise assets hosted on Templafy when creating presentations now** [Mac, Windows, Web]

  Once you connect your asset library hosted with Templafy to Microsoft365 and Copilot, you will be able to create presentations with your organization's images.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
### SharePoint
- **Manage site ownership effectively** [Web]

  The site ownership policy enables you to define and enforce ownership criteria for your SharePoint sites, automating actions to prevent data risks if sites remain ownerless for over three months.
 <a href="/sharepoint/create-sharepoint-site-ownership-policy" target="_blank">Learn more.</a>
### Word
- **Access audio overviews in Word** [Web]

  Generate a convenient audio overview of your document through Copilot from the Summary tab, enhancing your document review process.
 <a href="https://support.microsoft.com/topic/listen-to-an-audio-overview-of-your-document-9b2fad37-021e-4e89-b33b-323e850f9ae0" target="_blank">Learn more.</a>


<!-- 95840,95241,97367,100044,97230,95268,95263,100351,99775,99156,98362,97883,95681,95248,95192,93065,83328,74714,98515 -->
## July 22, 2025
Updates released between July 8, 2025, and July 22, 2025.
### Copilot extensibility
- **Hebrew support in Agent builder** [Windows, Web]

  Integrate Hebrew language support in agent builder to build accessible, localized solutions that simplify multilingual deployments and enhance user engagement.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-availability" target="_blank">Learn more.</a>
- **Increased support for uploading up to 20 documents to agents’ knowledge** [Windows, Web]

  End users and makers can now upload up to 20 documents to ground agents with richer, embedded knowledge in Microsoft Copilot Studio agent builder.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-knowledge" target="_blank">Learn more.</a>
- **Share agents from embedded builder** [Windows, Web]

  Users can share agents from an embedded agent builder to other individual users or group chats.
 <a href="/microsoft-365/admin/manage/manage-embedded-knowledge-agents" target="_blank">Learn more.</a>
- **Share agents with context-aware link previews** [Windows, Web]

  Streamline your interactions by using context-aware buttons that adapt based on where links are shared—making it easier to take the right action in chats and meetings.
- **Upload and embed knowledge in declarative agents** [Windows, Web]

  Empower your agents with enriched context by uploading your own files and embedding crucial knowledge for personalized, day-to-day assistance.
 <a href="/microsoft-copilot-studio/knowledge-add-file-upload" target="_blank">Learn more.</a>
- **Users can share agents from SharePoint** [Web]

  Users can share agents via links from SharePoint to Teams group chats. This means users will be able to chat and collaborate with SharePoint agents in group chats. The shared links will unfurl into preview cards with actionable buttons to 'Add to this chat'.
 <a href="/sharepoint/get-started-sharepoint-agents" target="_blank">Learn more.</a>
### Copilot Studio
- **Easily find and use knowledge data sources** [Web]

  In Copilot Studio agent builder you can now quickly identify and select the right knowledge data sources without manually scanning long lists. This streamlined workflow helps you get to the insights you need faster for everyday tasks.
 <a href="/power-platform/release-plan/2025wave1/microsoft-copilot-studio/use-teams-chats-as-knowledge-sources" target="_blank">Learn more.</a>
### Excel
- **Ask Copilot to generate formulas** [Web]

  Type “=” anywhere on your grid or in the formula bar and let Copilot generate formulas from natural language, making complex calculations simpler and faster.
 <a href="https://support.microsoft.com/office/generate-formulas-with-copilot-in-excel-d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>
- **Copilot advanced text analysis in Excel** [Web]

  Copilot can now analyze text by identifying themes and sentiments, citing data examples, and inserting a column with labels—helping you quickly uncover actionable insights.
 <a href="https://support.microsoft.com/topic/text-insights-in-excel-cecc7821-39c1-4e12-8bd6-4d4348370585" target="_blank">Learn more.</a>
- **Copilot icon on the grid in Excel for the web for M365 personal and family** [Web]

  Access AI-powered support directly from your spreadsheet with a single click. The Copilot icon helps you stay in your flow by offering instant insights while you work.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/how-to-get-started-with-copilot/4383870" target="_blank">Learn more.</a>
### Microsoft 365 Copilot app
- **Get an audio overview of a notebook** [Web]

  Turn the files in your notebook into a dynamic audio overview for an engaging listening experience. Simply select “Get audio overview” at the top of your notebook—available in English only, with more languages coming soon.
 <a href="https://support.microsoft.com/topic/get-an-audio-overview-of-your-notebook-with-microsoft-365-copilot-notebooks-a22df989-b9cd-47fb-abac-e888d8f10cd9" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Dictate your prompts in Copilot Chat** [Windows, Web]

You can now use the dictation button to input your prompts via speech, making interactions with Copilot more natural and efficient. 
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=475968" target="_blank">Learn more.</a>
- **Researcher available in GA** [Windows, Mac, Web]

  The researcher agent is pre-installed in Copilot Chat for all worldwide users. Find it in the left navigation pane alongside other agents, giving you quick access to research tools as part of the Copilot Premium license.
 <a href="https://www.microsoft.com/microsoft-365/blog/2025/06/02/researcher-and-analyst-are-now-generally-available-in-microsoft-365-copilot/?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>
### Microsoft 365 Purview compliance portal
- **Data Security Posture Management for AI - Data Risk Assessments.** [Web]

  Admins can drive better security outcomes by reviewing default assessments, examining data sensitivity, and monitoring user accesses—all to quickly identify risks and remediate them in daily operations.
 <a href="/purview/dspm-for-ai" target="_blank">Learn more.</a>
### PowerPoint
- **Reference multiple files in your presentation creation using Microsoft 365 Copilot** [Windows, Mac, Web]

  Enhance your PowerPoint presentations by referencing up to five files with Microsoft 365 Copilot, making it easier to incorporate detailed insights and comprehensive data without switching contexts.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Word
- **Catch up on a summary of document comments in the top of your document** [Web]

  Copilot now has a Discussion tab in the top of your document to summarize open comments, helping you quickly understand what people have said.
- **Include citations in drafted content** [Web]

  Enhance the credibility and reliability of your documents with Copilot’s ability to automatically include citations when drafting content from referenced sources. This feature ensures proper attribution and helps maintain academic and professional standards in your work.
- **Listen to an audio summary of your document** [Web]

  Transform your Word document into a dynamic audio experience with Copilot. Enjoy a podcast-style discussion that makes your content easy to consume on the go. Currently available in English, this feature allows you to listen to your documents anytime, anywhere.
 <a href="https://support.microsoft.com/topic/listen-to-an-audio-overview-of-your-document-9b2fad37-021e-4e89-b33b-323e850f9ae0" target="_blank">Learn more.</a>
- **Reference very large documents when prompting Copilot** [Web]

  Easily work with extensive documents by typing a forward slash (/) or selecting the attach icon to choose a document up to 3,000 pages long. This becomes the basis of the content you're requesting from Copilot, making it seamless to generate content from detailed sources.
 <a href="https://support.microsoft.com/topic/keep-it-short-and-sweet-a-guide-on-the-length-of-documents-that-you-provide-to-copilot-66de2ffd-deb2-4f0c-8984-098316104389" target="_blank">Learn more.</a>


<!-- 84996,84872,95244,83178,77803,78628,99334,97490,95294,97932,97885,97801,94703,93106,97959 -->
## July 8, 2025
Updates released between June 24, 2025, and July 8, 2025.
### Copilot extensibility
- **Add Dataverse as knowledge in Copilot** [Web, Windows]

  Users can now include Dataverse as a knowledge source in Copilot, enabling more comprehensive responses and insights.
 <a href="/microsoft-365-copilot/extensibility/build-declarative-agents?tabs=ttk&tutorial-step=1" target="_blank">Learn more.</a>
- **Audit and eDiscovery for Copilot actions and declarative agents** [Windows, Web]

  View detailed audit logs and eDiscovery records for Copilot actions and declarative agents in Microsoft Purview to simplify compliance and investigation workflows.
 <a href="/purview/audit-copilot" target="_blank">Learn more.</a>
- **Deploy Copilot agents for easy discovery** [Windows, Web]

  Deploy Copilot agents in the store for user discovery directly from your apps. Users can get new agents, open the store, install, and use them seamlessly within App Chat.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Discover, acquire, and manage agents through in-app store in Word and PowerPoint** [Windows, Web]

  With Copilot extensibility, users can discover, acquire, and manage agents through the unified store. We are excited to introduce the Microsoft 365 unified store to Office documents, enabling users to discover, acquire, and manage agents directly within the in-app store for Word and PowerPoint, with Excel support coming soon.
 <a href="https://devblogs.microsoft.com/microsoft365dev/office-addins-at-build-2025/#modernized-store-for-office-add-ins-and-copilot-agents" target="_blank">Learn more.</a>
### Copilot Studio
- **See performance metrics for every knowledge source** [Web]

  Review usage frequency, answer rate, and error rate for each knowledge source to spot high-value content and quickly fix low-performing links, keeping your agents accurate and helpful.
 <a href="/power-platform/release-plan/2025wave2/microsoft-copilot-studio/analyze-action-usage-agents" target="_blank">Learn more.</a>
### Excel
- **Copilot in Excel with Python | Reasoning Model Integration (Think Deeper)** [Mac, Windows, Web]

  While performing advanced analysis with Copilot in Excel with Python, users can choose the "Think Deeper" mode to get a more elaborate and detailed plan, followed by automatic execution to generate Python code, results, and explanations. This improves performance on complex asks by leveraging the power of the latest AI reasoning models.
 <a href="https://support.microsoft.com/office/364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
### Microsoft 365 Admin Center
- **Metadata for Shared agent management in Microsoft 365 admin center** [Web]

  IT admins can view metadata for Shared agents in Microsoft 365 admin center similar to metadata information for line of business applications built by customer organization. It provides IT admins the opportunity to explore all data besides honoring UX filters for a seamless user experience.
 <a href="/microsoft-365/admin/manage/manage-shared-agents" target="_blank">Learn more.</a>
### Microsoft 365 Copilot App
- **Create in the Microsoft 365 Copilot app** [Windows, Web]

  The creative hub for AI led artifact generation capabilities.
 <a href="https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-create-6e0c616d-69fb-42f2-a4cb-c59e006ec4f5" target="_blank">Learn more.</a>
- **Updated UI for Microsoft 365 Copilot App** [Windows, Web]

  The Microsoft 365 Copilot app is your starting place for AI at work, offering quick access to secure AI chat, search, files, and content creation in one seamless app.
 <a href="https://www.microsoft.com/en-us/microsoft-365/blog/2025/04/23/microsoft-365-copilot-built-for-the-era-of-human-agent-collaboration/" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Locate your Copilot Pages in Microsoft 365 Copilot Chat navigation pane** [Windows, Web]

  For quick access to your Copilot Pages, find all page artifacts created across your apps/modules in one place underneath the Chat section in the Microsoft 365 Copilot app.
 <a href="https://techcommunity.microsoft.com/blog/nonprofittechies/introduction-to-microsoft-copilot-pages/4421413" target="_blank">Learn more.</a>
### Microsoft Purview compliance portal
- **Data assessments in Microsoft Purview AI Hub** [Web]

  Create targeted assessments, review sensitivity and access for key locations, and take remediation actions to reduce oversharing risks—all from one dashboard.
 <a href="/purview/dspm-for-ai" target="_blank">Learn more.</a>
### OneNote
- **Copilot Chat on OneNote for web and in Teams** [Web]

  User can enjoy  the power of Microsoft Copilot to OneNote for web and in Teams.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/increase-your-productivity-with-copilot-on-onenote-web-and-onenote-in-teams/4374756" target="_blank">Learn more.</a>
### Viva Connections
- **New News feature in Microsoft Teams** [Android, Windows, iOS, Web]

  This update replaces the current Feed experience in Viva Connections across desktop, mobile, and web platforms with a SharePoint News reader experience. This new experience presents SharePoint news from organizational sites, boosted news, users' followed sites, frequent sites, and people they work with in an immersive reader format. It includes a Copilot-powered news summary as well, available only in Teams for Windows desktop in this initial release.
 <a href="https://techcommunity.microsoft.com/blog/viva_connections_blog/introducing-enterprise-news-reader-in-viva-connections/4383832" target="_blank">Learn more.</a>
### Word
- **Automatic summary of documents on file-open in Word** [Windows, Mac, Web]

  When users open a document, Copilot generates a summary in the Word window. You can hide the summary or open the Copilot chat pane to ask specific questions about the document.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Implement coaching suggestions when rewriting your text with Copilot** [Web]

  Enhance your writing process by letting Copilot apply tailored coaching tips when rewriting your selected text—refine your documents effortlessly.
 <a href="https://support.microsoft.com/topic/use-coaching-to-review-content-in-word-for-the-web-fa09c055-d623-4d20-954f-9b064a5a7c80" target="_blank">Learn more.</a>


<!-- 98006,96078,95296,95230,83646,97565,95267,76606,97885,97810,97309,97034,95904,95903,79335,96243,84996,97832,98196,97305,95679,96368 -->
## June 24, 2025
Updates released between June 10, 2025, and June 24, 2025.
### Copilot extensibility
- **Admins can manage Copilot extensibility under Copilot tab in Microsoft 365 admin center** [Windows, Web]

  Admins have options to manage Copilot extensibility under Copilot tab including agent management for IT published agents and shared agents.
 <a href="/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps" target="_blank">Learn more.</a>
- **Build agents faster with built in Office skills** [Windows, Web]

  Empower your agent building by consuming built-in Office skills like Q&A on documents and PowerPoint summaries. This feature speeds up integrations, reduces the need for custom solutions, and delivers context-aware insights for a smarter agent experience.
- **Declarative agents can read the current document in WXP** [Windows, Web]

  Improve your workflow with agents that dynamically interact with open documents. Receive real-time suggestions, automate edits, and extract key data to streamline reviews and boost productivity.
 <a href="https://adaptivecards.microsoft.com/?topic=Action.InsertImage" target="_blank">Learn more.</a>
- **Discover, acquire, and manage agents through in-app store** [Windows, Web]

  Users can now easily discover, acquire, and manage Copilot agents directly within their Word and PowerPoint documents through a unified in-app store. This streamlined experience simplifies adding new capabilities—and Excel support is coming soon.
 <a href="https://devblogs.microsoft.com/microsoft365dev/office-addins-at-build-2025/#modernized-store-for-office-add-ins-and-copilot-agents" target="_blank">Learn more.</a>
- **Manage custom Copilot agents in Agent Center** [Windows, Web]

  Organize, store, and update your declarative Copilot agents in one place. Agent Center lets developers register in-context actions, fine-tune prompts, and test behavior faster—so IT admins can roll out reliable, task-specific Copilot experiences at scale.
 <a href="https://devblogs.microsoft.com/microsoft365dev/introducing-the-agent-store-build-publish-and-discover-agents-in-microsoft-365-copilot/" target="_blank">Learn more.</a>
- **Non-citation links remain visible in custom actions** [Windows, Web]

  Links returned from your custom actions are no longer redacted when they aren’t part of a citation, letting users follow the full URL for easier validation and deeper exploration.
 <a href="https://techcommunity.microsoft.com/blog/microsoftdefenderforoffice365blog/safelinks-protection-for-links-generated-by-m365-copilot-chat-and-office-apps/4396828" target="_blank">Learn more.</a>
### Copilot Studio
- **Add custom Copilot Studio agents to Microsoft 365** [Web]

  Publish your Copilot Studio agent to the Microsoft 365 channel in one click, then roll it out to yourself, a pilot group, or your whole org. Messages, quick replies, adaptive cards, and multi-turn chat work instantly, while Power Platform analytics and governance keep everything secure and measurable.
 <a href="/microsoft-365-copilot/extensibility/publish" target="_blank">Learn more.</a>
- **Automate repetitive tasks with agent flows** [Web]

  Build agent flows in Copilot Studio using natural language to automate workflows with AI-powered actions. Makers can build intelligent, scalable, and flexible automations for tasks ranging from intelligent summarization to advanced approvals - and get fast, consistent results.
 <a href="/microsoft-copilot-studio/flows-overview" target="_blank">Learn more.</a>
- **C2 image upload and Q&A** [Web]

  Allow your Microsoft Copilot Studio agent to analyze images that users upload during conversations with the agent. This feature enhances visual content collaboration with intelligent insights for everyday tasks.
 <a href="/microsoft-copilot-studio/image-input-analysis" target="_blank">Learn more.</a>
### Excel
- **Use Copilot with any table in the workbook, referring by natural language** [iOS, Web, Mac, Windows]

  Copilot uses the context of your prompt to pick what selection of data to answer about and reason over, including tables in other sheets.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/smarter-context-awareness-for-copilot-in-excel/4424939" target="_blank">Learn more.</a>
### Microsoft 365 Copilot app
- **Copilot Notebooks** [Web]

  Copilot Notebook in the Microsoft 365 Copilot app streamlines your workflow by integrating notebook functionality directly into the app.
 <a href="https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-notebooks-0775e693-11c6-4d80-8aba-fcc81a737a06" target="_blank">Learn more.</a>
- **Use Copilot suggested prompts for recommended entities** [Windows, Mac, Web]

  Empower your work with a $30 Copilot license by clicking on curated prompts within recommended entities. Uncover key insights on demand—helping you boost productivity in everyday tasks.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/getting-the-most-from-the-copilot-prompt-gallery/4383106" target="_blank">Learn more.</a>
### Microsoft 365 Copilot
- **Copilot Prompt Gallery – share prompts with a Teams team** [Windows, Web]

  Share custom prompts with members of a Microsoft Teams team directly from Copilot Prompt Gallery, allowing colleagues to easily discover and reuse them in Copilot Chat.
 <a href="https://support.microsoft.com/topic/sharing-prompts-with-a-team-2fa7a228-8645-4dc4-beec-d75d6d0bc752" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Find any past Copilot conversation instantly** [Web]

  Search your Copilot Chat history by keyword to revisit decisions, copy answers, or resume a discussion without endless scrolling.
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=388371" target="_blank">Learn more.</a>
- **Locate your Copilot Pages in Copilot Chat navigation pane** [Windows, Web]

  For quick access to your Copilot Pages, find all page artifacts created across your apps/modules in one place underneath the Chat section in the Microsoft 365 Copilot app.
 <a href="https://techcommunity.microsoft.com/blog/nonprofittechies/introduction-to-microsoft-copilot-pages/4421413" target="_blank">Learn more.</a>
- **Play back responses as audio** [Windows, Web]

  Listen to Copilot's replies with a built-in read aloud feature—ideal for multitasking or when you need to review content hands-free.
 <a href="https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=475967" target="_blank">Learn more.</a>
- **Scheduled prompts** [Windows, Mac, Web, Teams]

  Plan ahead by scheduling essential prompts for repeated tasks in Copilot chat. Create a productive routine that helps you stay organized and efficient.
 <a href="/copilot/microsoft-365/scheduled-prompts" target="_blank">Learn more.</a>
### Microsoft Clipchamp
- **Clipchamp Copilot video creator** [Windows, Web]

  Create a video draft on any topic by providing a prompt. Clipchamp will generate a script, source stock footage and music, add AI voice-over, text overlays, and transitions—giving you a ready-to-edit project you can export to OneDrive.
 <a href="https://support.microsoft.com/topic/how-to-create-video-with-copilot-7586329a-64e0-4ae9-9444-0da5b1c2b848" target="_blank">Learn more.</a>
### Microsoft Loop
- **Rich artifacts in Copilot Pages** [Web]

  You can now create rich artifacts, including interactive charts, tables, complex diagrams, and code created with Copilot from enterprise or web data. Artifacts can be added to Pages to further edit and refine with Copilot. They are interactive and stay in sync across Microsoft 365 when shared for collaborative work.
 <a href="https://support.microsoft.com/topic/turn-raw-data-into-dynamic-visuals-with-microsoft-365-copilot-pages-8a88637e-87f7-4099-b1c3-1472c2ba625c" target="_blank">Learn more.</a>
### PowerPoint
- **Create a PowerPoint slide from a file or prompt** [Web, Windows, Mac]

  Creating impactful slides can be challenging and time-consuming. Copilot helps you quickly turn your ideas and files into a fully designed slide with content ready to edit and refine, making the presentation creation and refinement process more personalized and efficient.
 <a href="https://support.microsoft.com/topic/add-a-slide-from-a-file-with-copilot-in-powerpoint-9034b581-38df-46be-a725-986cbbd4b5d4" target="_blank">Learn more.</a>
- **Easily select a template while you create a new PowerPoint presentation with Copilot** [Mac, Web, Windows]

  When creating a new presentation with Copilot in PowerPoint, choose a template from your organization's collection for on-brand presentations, or select from Microsoft's handpicked templates, ensuring the new presentation is built as per your chosen template.
 <a href="https://support.microsoft.com/topic/keep-your-presentation-on-brand-with-copilot-046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>
- **Reference a PDF file when creating a presentation with Microsoft 365 Copilot** [Mac, Windows, Web]

  You can now reference a PDF file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>


<!-- 83163,93511,99006,75354,97166,95275,99009,97921,97603,97372,97288,96951,96241,96065,72079,97492 -->
## June 10, 2025
Updates released between May 29, 2025, and June 10, 2025.
### Copilot extensibility
- **One-click setup for all connectors** [Windows, Web]

  New and existing connectors now install in a single step within the admin center, speeding up data integration and reducing support calls.
 <a href="/microsoft-365-copilot/extensibility/overview-copilot-connector" target="_blank">Learn more.</a>
### Copilot Studio
- **Encrypt Copilot content with your own keys** [Web]

  Microsoft Copilot Studio now allows you to use your own customer manager encryption keys (CMKs, hosted in Microsoft Azure Key Vault) to govern how Copilot Studio encrypts your copilot content.
By using customer managed encryption keys (CMKs), you can ensure that any data provided to your agent by your users, and the data you provide to Microsoft, is encrypted with your own keys.
You maintain control of your keys, providing you further protection over the security of your data and ensuring you have control over how your data is stored at rest.
Key capabilities include hosting with Azure Key Vault to manage your keys, lifetimes, and rotation periods, encryption of all of your content, including copilot topics, settings and configurations, and conversation transcript data, rotation of CMKs, and, evocation of access, if necessary.
 <a href="/microsoft-copilot-studio/admin-customer-managed-keys" target="_blank">Learn more.</a>
- **Improve the agent template gallery in the create page** [Web]

  Experience a redesigned agent template gallery that makes it simple to find and select the right templates quickly. This modern, organized layout boosts productivity and encourages more frequent use.
 <a href="/microsoft-copilot-studio/authoring-install-agent" target="_blank">Learn more.</a>
### Excel
- **Create with Copilot generates templates and tables** [Web]

  Create with Copilot in Excel empowers you to generate tailored templates and tables simply by writing prompts. Its multi-turn conversation refines schemas, formulas, and visuals for a polished result.
- **Improvements to Copilot chat experience** [Windows, Web, Mac]

  Improvements to the Excel Copilot chat experience to give more consistent responses to all chat questions.
### Microsoft 365 Copilot Chat
- **Microsoft 365 Copilot Chat: Updates to Copilot Chat response output** [Web]

  Easily interact with Microsoft Graph content represented by bolder references, new action bar, and more.
- **Module UI refresh** [Windows, Web]

  Copilot Chat is designed to provide a streamlined UI, making it easy to get started and achieve your goals quickly. It offers a helpful, understanding, and personalized experience, allowing you to search for past interactions, content, agents, or pages with ease.
 <a href="https://support.microsoft.com/en-us/topic/get-started-with-microsoft-365-copilot-chat-5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>
- **Simplified Input box update** [Windows, Web]

  We've made it easier for users to type prompts with access to CIQ, local files, attach cloud files, and agents by adding it under the Plus Menu.
### Microsoft Loop
- **Add a Loop workspace to your Teams channel** [Web]

  Pin a Loop workspace as a channel tab so everyone can brainstorm, co-create, and organize project content in real time while membership, governance, and compliance stay in sync.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/collaborate-in-real-time-with-workspaces-in-teams/4414334" target="_blank">Learn more.</a>
### Microsoft Purview compliance portal
- **Data Security Posture Management for AI** [Web]

  Microsoft Purview Data Security Posture Management for AI (DSPM for AI) is a centralized location to gain insights into generative AI activity including the sensitive data flowing in AI prompts.
 <a href="/purview/ai-microsoft-purview-considerations" target="_blank">Learn more.</a>
- **Gain DLP policy insights with Copilot** [Web]

  Let Copilot instantly summarize Data Loss Prevention policies across locations, classifiers, and notifications. Use natural-language prompts to zoom into specific policies, spot gaps, and adjust settings faster—keeping your organization’s data posture aligned without manual digging.
 <a href="/purview/dlp-test-dlp-policies#get-insights-with-security-copilot" target="_blank">Learn more.</a>
### Outlook
- **Custom Instructions for draft with Copilot** [Android, Windows, iOS, Mac, Web]

  Give Copilot some instructions about your emails - like the tone, length, greeting - so your Copilot generated drafts sound more like you want them to. #newoutlookforwindow
- **Schedule a meeting from an email with Copilot** [Android, Windows, iOS, Mac, Web]

  Turn any email thread into a meeting in one click. Copilot builds a complete invite for your review —title, agenda, attendee list, and a summary of the email conversation—plus attaches the original email thread so everyone is up to speed. Available in the new Outlook for Windows, web, Mac, and mobile. #newoutlookforwindows
 <a href="https://support.microsoft.com/office/create-a-meeting-and-agenda-with-copilot-in-outlook-31a44dfa-62bb-4751-82c4-14327a26759f" target="_blank">Learn more.</a>
### PowerPoint
- **Microsoft 365 Copilot Chat: Reference a TXT file when creating a presentation with Copilot** [Windows, Mac, Web]

  You can now reference a TXT file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Teams
- **Microsoft Teams: Intelligent recap support for ad-hoc meetings and calls in GCC High** [Android, Windows, iOS, Mac, Web]

  Intelligent meeting recap is now available in GCC High for impromptu calls and meetings, like those started from ‘Meet now’ and calls started from chat. You can easily browse the recording by speakers and topics, as well as access AI-generated notes, AI-generated tasks, and name mentions after the ad-hoc meeting ends. This capability is available for users with a Teams Premium or M365 Copilot license.
### Viva Glint
- **Feature access management for Copilot in Viva Glint** [Web]

  Enable or disable Copilot in Viva Glint for specific users directly from the Microsoft 365 admin center, giving you granular control over AI access.
 <a href="/viva/feature-access-management" target="_blank">Learn more.</a>


<!-- 84861,96546,96718,97369,95365,95364,96235,96064,97319,97318,97261,97084,96912,95901,95897,94435,95901 -->
## May 29, 2025
Updates released between May 13, 2025, and May 29, 2025.
### Copilot extensibility
- **Insert images in adaptive cards for richer interactions** [Windows, Web]

  Make your adaptive cards more dynamic by adding images—perfect for illustrating ideas, sharing visual data, or engaging users with eye-catching content. This feature helps teams communicate clearly, support diverse learning styles, and create more memorable interactions in everyday workflows.
 <a href="/microsoft-copilot-studio/guidance/adaptive-card-summarize-responses" target="_blank">Learn more.</a>
- **Unified Agent Management for Admins in Microsoft admin center** [Windows, Web]

  Admins can consistently manage Copilot agents in the Microsoft admin center, regardless of how they were built, simplifying deployment and governance.
 <a href="/microsoft-365/admin/manage/manage-plugins-for-copilot-in-integrated-apps" target="_blank">Learn more.</a>
### Copilot Studio
- **Reuse connector and API actions across multiple copilots** [Web]

  Take an action that already works in Copilot for Sales and publish it to Customer Service—or any other eligible Copilot—in a few clicks. Skip duplicate setup, speed up delivery, and keep functionality consistent, all with built-in admin approval flows.
 <a href="/microsoft-copilot-studio/agent-extend-action-rest-api" target="_blank">Learn more.</a>
- **Unpublish connector actions when data or services change** [Web]

  Roll back a published connector to draft so it no longer appears in Microsoft 365 Copilot. Makers can pause their own connectors, and admins can disable any connector to update configurations or retire obsolete services—without deleting them.
 <a href="/power-platform/release-plan/2025wave1/microsoft-copilot-studio/unpublish-connector-actions-copilot-agents" target="_blank">Learn more.</a>
### Excel
- **Improved fallback answers in Copilot Chat** [Web]

  When specific data isn’t found, Copilot seamlessly shifts to general reasoning so conversations keep flowing and users avoid dead ends in Excel for the web.
### Forms
- **Automate response collection and insights in Forms** [Web]

  Copilot builds a follow-up plan, sends reminders, tracks progress, and surfaces early trends—then hands off to Excel for deeper analysis—so you spend less time chasing respondents and more time acting on feedback.
 <a href="https://techcommunity.microsoft.com/blog/microsoftformsblog/introducing-new-agentic-features-for-copilot-in-forms-%E2%80%93-create-refine-and-share-/4406237" target="_blank">Learn more.</a>
- **Copilot in Forms can now reference files to help generate drafts** [Web]

  When creating a form with Copilot, users can now reference existing documents such as Word, Excel, and PowerPoint. Users can also reference an existing form by pasting the form's URL into the prompt box. Additionally, Copilot can search and suggest relevant files when generating a form, so users can easily create a draft that meets their needs.
 <a href="https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-forms-c9941b72-b32e-4c7e-9af9-e603929bb1d2" target="_blank">Learn more.</a>
- **Copilot in Forms has been refreshed to help users better refine and edit their forms** [Web]

  Copilot in Forms has been revamped to more easily help users refine and modify their forms. Users can now type prompts to Copilot to help with editing and refinement, so they can get tailored suggestions and easily get their forms ready to send.
 <a href="https://techcommunity.microsoft.com/blog/microsoftformsblog/introducing-new-agentic-features-for-copilot-in-forms-%E2%80%93-create-refine-and-share-/4406237" target="_blank">Learn more.</a>
### Microsoft 365 admin center
- **Usage reports – monitor Copilot.cloud.microsoft/Teams/Outlook activity in Microsoft 365 Copilot Chat usage report** [Web]

  Track active users and last activity dates for Copilot.cloud.microsoft, Teams, and Outlook—even for employees without a Copilot license—to gauge grassroots adoption and fine-tune rollout plans in Microsoft 365 Copilot Chat usage report.
 <a href="/microsoft-365/admin/activity-reports/microsoft-copilot-usage" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Bring Azure AI Search indexes into Copilot Studio knowledge** [Web]

  Attach existing Azure AI Search indexes as grounding data, enabling natural-language queries over enterprise content with minimal setup and no added cost.
- **Copilot Chat now offers access to cloud files to insert in user prompts** [Windows, Web]

  In the Web tab of Copilot Chat or Microsoft 365 Copilot, users can browse OneDrive or SharePoint, select a file, and drop it into their prompt to give Copilot precise context for richer responses.
- **Enable agent builder for Copilot chat** [Windows, Web]

  Empower developers with the ability to build custom agents to support Copilot Chat. This feature streamlines the creation of tailored chat experiences that enhance everyday communication and workflow.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
- **Ground copilots with real-time data from Salesforce, ServiceNow, and more** [Web]

  Connect structured records from popular non-Microsoft apps directly in Copilot Studio so users can ask, “Show my open Zendesk tickets” and get instant answers without leaving chat.
- **Pay-as-you-go policies keep Copilot costs in check** [Windows, Web]

  Allocate budgets by department, set usage caps, and manage access from the admin center so your organization can innovate with Copilot while staying on budget.
 <a href="/copilot/microsoft-365/pay-as-you-go/overview" target="_blank">Learn more.</a>
### PowerPoint
- **Ask Copilot to rewrite text as a list** [Web, Mac, Windows]

  Transform paragraphs into clear bullet points or lists with a single command—ideal for quickly organizing content when preparing your presentation.
 <a href="https://support.microsoft.com/topic/elevate-your-presentation-game-with-copilot-s-text-rewrite-feature-in-powerpoint-d70b140b-bb3f-46b7-be64-ceec526a8dcd" target="_blank">Learn more.</a>
### Word
- **Ask agents to refine any text selection** [Windows, Web]

  Highlight a section of your document and let Copilot agents rewrite, shorten, or expand it—keeping the rest of your file private while you perfect the details.


<!-- 84071,75164,96970,94471,93054,96312,98109,97225,96255,96244,94126,93064,93062,83241,72529,99153 -->
## May 13, 2025
Updates released between April 29, 2025, and May 13, 2025.
### Copilot Studio
- **Monitor autonomous agents with detailed analytics** [Web]

  Instantly see run volume, trigger breakdowns, success rates, action paths, and run-time details for every autonomous agent. Use these insights to spot failures, tune performance, and boost reliability before your users notice issues.
- **Single connector for knowledge and actions** [Web]

  You can now reuse connector actions across multiple Copilot deployments without recreating them each time. This feature lets you select a previously published action—such as one from Copilot for Sales—and publish it to other endpoints, such as Copilot for Customer Service, with just a few clicks. It’s enabled by default and streamlines deployment while reducing duplication.
 <a href="/power-platform/release-plan/2024wave2/microsoft-copilot-studio/publish-connector-actions-multiple-copilot-deployments" target="_blank">Learn more.</a>
### Excel
- **Ask Copilot about any part of your sheet** [Web, Mac, Windows, iOS]

  When you ask questions about your worksheet, Copilot can look at the content of your sheet and use it to inform an answer to your question. This will include understanding worksheet data on your selected area, beyond tables and ranges, and provide Copilot answers in chat.
- **Easily access copilot on web** [Web]

  Find a dedicated Copilot icon in your web spreadsheet, allowing you to tap into AI-powered insights and streamline tasks without breaking your workflow.
 <a href="https://support.microsoft.com/office/get-started-with-copilot-in-excel-d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>
- **Visual cue for Copilot’s data context** [Web]

  A subtle outline now highlights the exact cells or table Copilot is working with, so you can confirm the right data is selected before insights or edits are generated.
### Microsoft 365 Admin center
- **AI adoption score** [Web]

  A new people experiences category in Adoption Score in the Microsoft 365 admin center introduces AI adoption metrics, helping organizations understand how Microsoft Copilot features are being used across Microsoft 365.
 <a href="/microsoft-365/admin/adoption/ai-adoption-score#organizational-messages-in-ai-adoption-score" target="_blank">Learn more.</a>

- **Manage pay-as-you-go billing for Copilot** [Windows, Web]

  Admins can manage pay-as-you-go billing directly within Copilot settings in the Microsoft 365 admin center. This capability is available to users with Global admin, AI admin, and Global reader roles.
 <a href="/copilot/microsoft-365/pay-as-you-go/setup" target="_blank">Learn more.</a>
- **Overview of Copilot for admin** [Web]

  Streamline IT management with Copilot’s real-time, contextually relevant insights that help you make faster, data-driven decisions in the Microsoft 365 admin center.
 <a href="https://aka.ms/copilotinmac" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Unified prompt box across web and work chats** [Windows, Web]

  Enjoy a consistent prompting experience across Copilot Chat with an input box that looks and behaves the same in both work and web chat modes.
### Microsoft Viva
- **AI Administrator can manage Microsoft Copilot Dashboard settings** [Web]

  Delegate Copilot Dashboard control to the new Entra AI Administrator role, giving admins the  permissions they need without granting AI admin privileges.
 <a href="/viva/insights/advanced/admin/manage-settings-copilot-dashboard" target="_blank">Learn more.</a>
### OneDrive
- **Ask Copilot questions about images** [Web]

  Select up to five pictures in OneDrive Web and chat with Copilot to summarize, extract text, or describe what’s inside—perfect for cataloging photos or pulling details from scanned documents.
 <a href="https://support.microsoft.com/topic/ask-about-a-topic-without-opening-your-files-8ea1bb0d-5ae7-4f81-8cb8-cd755862834b" target="_blank">Learn more.</a>
### PowerPoint
- **Suggestions for slide templates as you work** [Mac, Web]

  On PowerPoint for Mac, Copilot proposes design-ready layouts as soon as you insert a slide or start typing a title, helping you build polished decks faster.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/jumpstart-your-presentations-with-slide-starters/4407669" target="_blank">Learn more.</a>
### Viva Insights
- **Viva Insights now included in Microsoft 365 Copilot subscriptions** [Windows, Web, TeamsAndSurfaceDevices]

  Create advanced, custom reports with Viva Insights to understand Copilot adoption, productivity and business impact. Full access to Viva Insights is available now with Microsoft 365 Copilot subscriptions.
### Word
- **Choose the level of detail for summaries when documents are opened** [Web]

  Tailor each document opening with your preferred summary style—select brief, standard, or detailed insights to match your workflow.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Key statistics at a glance in Copilot summaries** [Web]

  Instantly see critical numbers—totals, dates, percentages, and more—in the Understanding tab, so you can grasp a document’s quantitative story in seconds.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Suggested questions help you explore any document** [Web]

  The Understanding tab now proposes smart questions about the file you’re reading—just click one to see Copilot’s answer and dive deeper without crafting your own prompt.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Choose the level of detail for summaries when documents are opened** [Windows, Mac, Web]

  Tailor each document opening with your preferred summary style—select brief, standard, or detailed insights to match your workflow.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
<!-- 81919,96545,96544,73690,82869,77902,94411,98033,97295,96404,83947,96508,96512 -->
## April 29, 2025
Updates released between April 16, 2025, and April 29, 2025.
### Excel
- **Formula Explain on grid entry points** [Web]

  Understand complex formulas by triggering step-by-step explanations directly from the grid. Copilot breaks down calculations and clarifies references so you gain confidence when working with your data.
 <a href="https://support.microsoft.com/topic/understanding-formulas-with-copilot-7838fb47-7309-4dac-ba7a-8080cb75ee06" target="_blank">Learn more.</a>
- **Paste images into Copilot chat** [Web, Windows]

  Ask questions about images you insert into the prompt area to extract key data for your spreadsheets.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/add-images-to-your-copilot-prompts-in-word-and-powerpoint/4359423" target="_blank">Learn more.</a>
- **Seamless transition from clean data to Copilot chat** [Web]

  After finalizing your data with Clean Data, effortlessly switch to Copilot chat for deeper insights and analysis.
 <a href="https://support.microsoft.com/office/clean-data-in-excel-7fe20d89-3f57-46d3-b659-e8f3ee853bda" target="_blank">Learn more.</a>
### Microsoft 365 Copilot extensibility
- **Agent builder now available in new regions** [Windows, Web]

  You can now access Copilot Studio agent builder in Norway, Sweden, South Korea, and South Africa.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-availability#regional-availability" target="_blank">Learn more.</a>
### Microsoft Copilot Chat
- **Submit feedback on the agent builder experience** [Windows, Web]

  Improve your custom Copilot Chat solutions by providing targeted feedback on RAI and agent response during test chats. This direct input helps refine and enhance the builder experience.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder#submit-feedback" target="_blank">Learn more.</a>
### Microsoft Purview
- **GCC Microsoft Purview capabilities for Microsoft 365 Copilot** [Web]

  Microsoft Purview is launching several capabilities in government cloud environments that help secure and govern data in Microsoft 365 Copilot. These are capabilities in Information Protection, Data Lifecycle Management, Audit, eDiscovery, and Communication Compliance. These capabilities will be available once Microsoft 365 Copilot is deployed.
 <a href="/purview/ai-microsoft-purview" target="_blank">Learn more.</a>
### Outlook
- **Prepare for meetings with AI-generated insights** [Web]

  Stay ahead of busy schedules by using the proactive “Prepare” button in your inbox to generate key meeting insights and summarize relevant files—helping you arrive ready to engage.
 <a href="https://support.microsoft.com/topic/prepare-for-your-meeting-with-copilot-f23326fc-7721-45f1-875e-23e77aaf3d89" target="_blank">Learn more.</a>
### SharePoint
- **Restricted access control enhancements** [Web]

  New enhancements for RAC policy for SharePoint administrators to restrict access to SharePoint sites including managing Microsoft 365 group connected sites with Microsoft 365 groups or Security groups.
 <a href="/sharepoint/restricted-access-control" target="_blank">Learn more.</a>
### Viva Learning
- **AI & Copilot Resources provider availability to all Viva Learning users** [Windows, Web, Teams]

  The AI & Copilot Resources provider is now enabled by default for all Viva Learning users. Administrators now have the ability to manage the visibility of this provider within Viva Learning.
 <a href="/viva/learning/ai-and-copilot-resources" target="_blank">Learn more.</a>
- **Copilot Academy availability to all Microsoft 365 users** [Windows, Web, Teams]

  Copilot Academy is now accessible to users without Copilot licenses. Admins now  have the option to select their preferred access settings for Copilot Academy.
 <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>
### Word
- **Coach is now generally available across all markets and languages that Copilot currently supports** [Web]

  Coach is now generally available across all markets and languages that Copilot currently supports, ensuring a consistent experience for every user.
 <a href="https://support.microsoft.com/topic/use-coaching-to-review-content-in-word-for-the-web-fa09c055-d623-4d20-954f-9b064a5a7c80" target="_blank">Learn more.</a>
- **Reference a whole folder when prompting Copilot** [Web]

  Quickly attach a folder from OneDrive or SharePoint by typing a forward slash (/) or selecting the attach icon. Copilot now uses the 10 most recent files from your selected folder to streamline your document creation.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/expanding-reference-capabilities-with-microsoft-365-copilot-in-word/4406054" target="_blank">Learn more.</a>
- **Replace your selection with generated content** [Web, Mac, Windows]

  Selecting the Replace button lets you instantly replace your selected text with content that was generated in Draft with Copilot.


<!-- 95249,76195,73845,97889,95264,96345,83221,83405 -->
## April 16, 2025
Updates released between April 2, 2025, and April 16, 2025.
### Excel
- **Graph grounded chat** [Windows, Mac, Web]

  Ask Copilot in Excel for insights drawn from your chats, documents, meetings, and emails via Microsoft Graph—enhancing your workbook analysis with contextual organizational data.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
- **Use Copilot to search for answers from the web** [Windows, Mac, Web]

  In Excel, simply ask Copilot to search the web for answers and integrate the insights directly into your workbook, making data analysis even smoother.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
### Microsoft 365 admin center
- **AI Admin role has permissions to manage agents** [Web]

  As an AI Admin, you manage agents with various capabilities including creating and overseeing Copilot connections that index data in Graph and perform actions, controlling which makers can build these connections and regulating the data sources used, maintaining observability over all connections, approving or denying agents, pre-installing them without requiring consent, and viewing them in Microsoft 365 admin center integrated apps page.
 
### Microsoft 365 Copilot Chat
- **Get contextual suggestions during Copilot agent conversations** [Windows, Web]

  Speed up tasks with AI-driven prompts for next steps in Copilot Chat. See real-time suggestions to refine queries, dive deeper into topics, or resolve issues faster during agent interactions.
 
- **Support  for longer prompts** [Windows, Web]

  Copilot Chat now supports larger inputs for smoother handling of extensive documents and data.
 
### Microsoft 365 Copilot extensibility
- **Discover agents for unlicensed and metered users** [Windows, Web]

  Empower more users with easy access to agents tailored to their needs—even if they are unlicensed or metered—broadening Copilot’s reach across your organization.
 <a href="/microsoft-365-copilot/extensibility/debugging-copilot-agent" target="_blank">Learn more.</a>

### PowerPoint
- **Copilot in PowerPoint has improved performance when summarizing your presentation** [Web]

  PowerPoint Copilot now updates its language models regularly to deliver faster summaries, helping you quickly review your presentation content.
 
### SharePoint
- **Author engaging web pages with Authoring** [Web]

  Combine the power of Large Language Models, your data in the Microsoft Graph, built-in or custom templates, and existing documents to create high-quality SharePoint pages while ensuring enterprise-level data security and privacy.
 <a href="https://techcommunity.microsoft.com/blog/spblog/create-pages-with-copilot-in-sharepoint/4394588" target="_blank">Learn more.</a>


<!-- 83343,95770,97325,96069,95072,95842,97326,96239,81548,72729,84823,93924,97327 -->
## April 2, 2025
Updates released between March 20, 2025, and April 2, 2025.
### Copilot Studio
- **Enhanced SharePoint URL support in Copilot Studio** [Web]

  Previously, only SharePoint site URLs could be used as knowledge for Copilot Studio agents. Users can now use SharePoint file, folder, and site URLs, including links from the Share button or browser address bar; once the URLs are added, the agents will be grounded to the content within the URL. Additionally, more granular error messages help with transparency and managing expectations.
 <a href="/microsoft-copilot-studio/knowledge-add-sharepoint" target="_blank">Learn more.</a>
- **Public website scoping for agents** [Web]

  Makers can now scope agents' knowledge sources to specific websites, enhancing the precision of web searches. This capability, previously available in custom agents from Microsoft Copilot Studio, is now extended to agents in the Microsoft  365 context.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build#add-knowledge-sources" target="_blank">Learn more.</a>
- **SharePoint knowledge for agents** [Web]

  Makers can now leverage additional data sources, including Dataverse and SharePoint, when building autonomous agents. This expands the variety of use cases for autonomous agents.
- **Use agent builder in Copilot chat** [Web]

  Create custom agents in Copilot chat to streamline repetitive tasks and achieve consistency. Use specific instructions and grounding details to save time, reuse your agents, and enhance team productivity.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
### Excel
- **Gain insights with Copilot and Python in Excel on Web** [Web]

  Using everyday language, ask Copilot to perform advanced analytics like machine learning and predictive forecasting, which would usually take hours or require special skills. Copilot writes Python code and inserts it on the grid, providing deeper insights and stunning/ visuals. Available in multiple languages on Excel for the Web.
 <a href="https://support.microsoft.com/office/364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
- **Read aloud for Excel text responses** [Web]

  Users can now use the Read Aloud button on the Copilot response card to have an audio narration of the response, enhancing accessibility and ease of information consumption.
### Microsoft 365 Copilot Chat
- **Ask questions about images with natural language** [Android, iOS, Web]

  Easily gain insights from images by asking natural language questions. Upload images for quick analysis using advanced vision models—helping you make sense of visual data across your apps.
- **Enhance email insights with interactive hovers** [Web]

  Enjoy enriched emails with interactive hovers that reveal contextual details—like sender info, dates, and follow-up prompts—to streamline your daily workflow.
### Microsoft 365 Copilot Studio
- **Collect user feedback in Copilot Studio agent builder** [Web]

  Makers can also now submit feedback—compliments, problems, or suggestions—directly to the product team from inside the Microsoft 365 agent builder. This can be done at any stage of the authoring process, including comments and optional metadata for troubleshooting. This feature allows quick issue reporting without disrupting workflow and enables the product team to address feedback efficiently.
 <a href="/power-apps/maker/canvas-apps/agent-builder#provide-feedback" target="_blank">Learn more.</a>
### Microsoft Loop
- **Load existing Copilot pages and create multiple pages** [Web]

  With multipage functionality in Copilot Pages, users can load existing pages and create multiple pages within a single conversation.
 <a href="https://support.microsoft.com/topic/add-copilot-chat-responses-to-multiple-pages-a5c40f74-55d0-4f1f-80d8-539ccc1a4bcb" target="_blank">Learn more.</a>
- **Recap changes over a longer time** [Web]

  Recap changes in Loop over extended periods, such as the last week or last 30 days, instead of being limited to the current session. This feature helps users share updates more effectively.
### PowerPoint
- **Translate your presentation** [Windows, Web, Mac]

  Produce a translated copy of your entire presentation in about 40 languages while preserving your slide design and structure, making global collaboration effortless.
 <a href="https://support.microsoft.com/topic/translate-your-presentation-with-copilot-2c622fca-daaf-457c-bc74-f3496cf44a85" target="_blank">Learn more.</a>
### Word
- **Simplified prompt experience in chat** [Web]

  The chat experience in Word is now simplified with access to attachments, images, and agents now accessed form a single plus-sign menu.

## March 19, 2025
Updates released between March 5, 2025, and March 19, 2025.

### Copilot Studio

- **Create automated copilots triggered by events** [Web]  

  Automates routine tasks by triggering copilots on events like table updates, new documents, or incoming emails—minimizing manual effort and keeping processes running smoothly. <a href="/microsoft-copilot-studio/authoring-triggers-about" target="_blank">Learn more.</a>

- **Use generative actions** [Web]  

  Replace manual topic triggers with AI-powered orchestration. You can now configure an agent to use generative AI to dynamically select relevant topics or plugin actions, creating more fluid conversations while reducing manual topic configuration. <a href="/microsoft-copilot-studio/advanced-generative-actions" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Manage shared Copilot agents across your organization** [Web]  

  Tenant admins can now view, search, and block shared Copilot agents in the admin center. Maintain control over agent usage and ensure compliance with organizational policies.

### Microsoft 365 Copilot Chat

- **Copilot on Edge Update** [Web]  

  Copilot on Edge has been updated and requires users to update their version of Edge to version 134.0.3124.51 or newer to receive the latest functionality. This update includes file upload availability on the web tab as well as a smoother authentication experience via the Edge Work Profile.

- **Prompt suggestions in Copilot chat** [Windows, Web, Mac]  

  Get started in Copilot chat quickly with automatic prompt suggestions that enhance your productivity by providing relevant and context-aware prompts based on your previous interactions.

### Microsoft 365 Copilot extensibility

- **Support for message extension and declarative agents** [Windows, Web]  

  Transform legacy plugins into integrated experiences by exposing them as declarative agents—enhance Office apps like Word, Excel, and PowerPoint with message extensions.

### Microsoft Loop

- **Track collaborative changes with "who did what and when"** [Web]  

  Ask Copilot about recent edits in Loop workspaces to identify contributors, review timeline updates, and maintain clarity during team projects. Example: "Show changes to the onboarding checklist this week."

### Microsoft 365 Copilot

- **Share a Copilot prompt with a Teams team** [Windows, Web]  

  Easily share custom prompts from the Copilot Prompt Gallery with your Microsoft Teams team. This streamlined sharing makes it simple for team members to discover and make the most of these prompts in their daily workflow. <a href="https://support.microsoft.com/topic/sharing-prompts-with-a-team-2fa7a228-8645-4dc4-beec-d75d6d0bc752?OCID=copilot_ongoingemail_feb25" target="_blank">Learn more.</a>

### SharePoint

- **Create and share agents** [Web]  

  Easily create agents by selecting SharePoint sites or files and share them with your team in SharePoint or Teams to boost collaboration. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/ignite-2024-sharepoint-agents-now-in-general-availability/4298746" target="_blank">Learn more.</a>

- **Use Data Access Governance to analyze tenant permissions** [Web]  

  Leverage detailed reports on permissioned user counts and sharing links to identify oversharing risks and make informed governance decisions. <a href="/sharepoint/data-access-governance-reports" target="_blank">Learn more.</a>

## March 4, 2025

Updates released between February 20, 2025, and March 4, 2025. 

### Microsoft 365 Copilot Chat

- **Search archived mailboxes in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Leverage Copilot to search emails across both primary and archived mailboxes by appending 'from my archives' or 'also look for emails in my archives' in your prompts to quickly locate key messages.

- **Support lockbox for GenAI** [Web]  

  Lets you review and approve data access requests in real time—ensuring sensitive information is safeguarded during critical support interactions. 

- **Enrichment of Messages in Copilot Chat** [Web]  

  This feature enhances your communication experience by making it easier to understand and interact with your chat messages in Copilot  Chat. With this feature, you will see cards and hoverable experiences that provide additional details of the chat without leaving your current view. This means you can quickly grasp the context of your conversations and find the information you need more efficiently.

### Copilot Studio

- **Add enterprise data with new graph connections** [Web]  

  Connect your organization’s data seamlessly using pre-configured graph connectors like Stack Overflow, and Salesforce Knowledge. Build smarter agents with semantic search—no custom solution required. <a href="/microsoftsearch/salesforce-knowledge-connector" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Enhanced Copilot admin page with comprehensive tools** [Web]  

  Navigate a refreshed admin interface featuring Overview, Health, Discover, and Settings—delivering key metrics, insights, and controls to tailor Copilot to your organization’s needs.

- **Simplify Copilot license assignment** [Web]  

  Use a data-driven license optimizer to identify users who gain the most value from Copilot. Streamline assignments in the admin center for efficient adoption across your organization.

### PowerPoint

- **Narrative builder creates slides with tables** [Windows, Web, Mac]  

  Convert grounded content from Word documents into dynamic slides with tables. Enhance your presentations with structured, data-driven visuals effortlessly.

## February 19, 2025

Updates released between February 5, 2025, and February 19, 2025. 

### Microsoft 365 Copilot Chat

- **Enhanced entity context card** [Web]  

  Enjoy smoother motion, improved reliability, and a more intuitive experience with the upgraded entity context card—making it easier to explore contextual details as you work. <a href="https://support.microsoft.com/topic/using-context-iq-to-refer-to-specific-files-people-and-more-in-microsoft-365-copilot-272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Increased results in Copilot Chat responses** [Web]  

  Get more comprehensive email and calendar results in Copilot Chat responses to easily summarize messages or track your meetings throughout the day.

### PowerPoint

- **Create a presentation from a file-based prompt** [Windows, Web, Mac]  

  Pull key facts and data from a selected file to shape your narrative. Simply provide Copilot with a prompt and quickly build your deck with relevant information. <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

### Viva Insights

- **Copilot dashboard for usage and retention insights** [Windows, Web, Android, iOS, Mac]  

  Dive into usage frequency, compare top user groups, and track retention metrics—all in a single, comprehensive dashboard for actionable insights. <a href="/viva/insights/org-team-insights/copilot-dashboard#interpreting-the-data" target="_blank">Learn more.</a>

### Word

- **Chat with Copilot about selected text** [Windows, Web, Mac]  

  Highlight text, start a chat with Copilot, and receive responses tailored to what you’ve selected. Get targeted writing assistance and refine your content in real time.

## February 4, 2025

Updates released between January 24, 2025, and February 4, 2025.

### Microsoft 365 Clipchamp

- **Video creation in Copilot Visual Creator powered by Clipchamp** [Web]  

  Type your prompt and Clipchamp writes a bespoke script, sources high-quality footage, and assembles a video project with music, voiceover, text overlays, and transitions. Open your draft in the Clipchamp app to continue editing, exporting, and sharing your video. <a href="https://techcommunity.microsoft.com/blog/microsoft_365blog/clipchamp-elevating-work-communication-with-seamless-video-creation-in-copilot/4375660
  " target="_blank">Learn more.</a>

### Microsoft 365 Copilot App

- **Updates to the Microsoft 365 (Office) app** [Windows, Web, Android, iOS]  

  The Microsoft 365 Copilot app (formerly Microsoft 365 app) has a new name and icon. <a href="https://support.microsoft.com/office/the-microsoft-365-app-transition-to-the-microsoft-365-copilot-app-22eac811-08d6-4df3-92dd-77f193e354a5" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Access support pages in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  View organizational support pages directly within Copilot Chat, for quick help and guidance in your workflow.

- **Accommodate user’s time zones in Copilot** [Windows, Web, Android, iOS]  

  Copilot now references your local time zone when responding helping to avoid confusion and scheduling errors.

- **Charts, graphs, and data analysis in Copilot for Microsoft 365** [Windows, Web]  

  Use natural language to create charts, graphs, and data analysis in Copilot Chat work mode.

- **Get more Copilot value with Microsoft 365 Copilot** [Web]  

  Easily add full Copilot Chat capabilities including grounding conversations in work data and accessing Copilot in your favorite Microsoft 365 apps by purchasing or requesting a Microsoft 365 Copilot license directly in Copilot Chat. <a href="https://www.microsoft.com/microsoft-365/blog/2024/12/02/three-new-ways-small-and-medium-sized-businesses-can-purchase-microsoft-365-copilot" target="_blank">Learn more.</a>

- **Automatic session titles for easier organization** [Web]  

  Let Copilot Chat generate smart, descriptive titles for your chat sessions, making it simpler to find and revisit important conversations.

### Excel

- **Entry point from the column header** [Web]  

  Offers an intuitive option to access column tools directly from the header, speeding up your workflow in Excel. 

### PowerPoint

- **Use Copilot to rewrite, trim, or formalize text** [Web, Mac]  

  Transform your presentation text by letting Copilot fix grammar, shorten lengthy content, or adopt a more professional tone—perfect for crafting clear, polished slides.

### Microsoft 365 Copilot

- **Share a prompt with a co-worker** [Windows, Web]  

  Easily create, save, and share your favorite prompts using Copilot Prompt Gallery, inspiring your co-workers to achieve more with Copilot. <a href="/copilot/microsoft-365/copilot-prompt-gallery-export-prompts" target="_blank">Learn more.</a>

### SharePoint

- **Restricted Content Discovery** [Web]  

  Prevent specific SharePoint sites from being discoverable in tenant-wide search and Copilot. <a href="/sharepoint/restricted-content-discovery" target="_blank">Learn more.</a>

### Word

- **Reference data from the Microsoft cloud when drafting with Copilot in Word** [Windows, Web, Mac]  

  Draft with Copilot now supports attaching rich content from the Microsoft cloud—including emails and meetings—resulting in more contextually relevant content. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Reference plain text files in Copilot** [Windows, Web, Mac]  

  Add .txt files as sources with Copilot in Word, streamlining your process when working with text-based research or background content.

## January 23, 2025

Updates released between January 8, 2025, and January 23, 2025.
### Forms

- **Smart reminders with Copilot in Forms** [Web]  

  Copilot in Forms now offers smart reminders to help you monitor response progress and get more engagement with your forms, delivered right to your email inbox. <a href="https://support.microsoft.com/topic/smart-reminders-in-copilot-in-forms-d41f412f-f64a-4bee-b745-eebf58b7e036" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS]  

  Microsoft 365 Copilot Chat—free, secure AI chat powered by GPT-4o with agents accessible right in chat, and IT controls including enterprise data protection and agent management. Copilot Chat serves as a powerful new on-ramp for everyone in your organization to build an AI habit. Get started with Copilot Chat with the updated <a href="https://www.m365copilot.com" target="_blank">Microsoft 365 Copilot app</a> (formerly Microsoft 365 app). <a href="https://www.microsoft.com/microsoft-365/blog/2025/01/15/copilot-for-all-introducing-microsoft-365-copilot-chat" target="_blank">Learn more.</a>

- **Updated meeting entity card in Copilot Chat** [Windows, Web]  

  Check meeting details like RSVP status, date, and attachments without switching contexts in Copilot Chat.

- **Copilot agents available in Copilot Chat web mode** [Web]

  In Copilot Chat web mode, discover and use Copilot agents available for your organization. Agents are custom grounded chats that include specific knowledge sources from work and web.

### Microsoft 365 Copilot Studio

- **Enable makers to configure SharePoint as a knowledge source for agents** [Web] 

  Empowers makers to connect SharePoint, giving agents a richer context for delivering accurate and relevant responses. <a href="/microsoft-copilot-studio/authoring-review-activity" target="_blank">Learn more.</a>

### PowerPoint

- **Generate summaries for longer presentations** [Windows, Web, Mac]  

  Copilot now supports text summaries up to 40k words (around 150 slides), giving you richer information and more polished layouts. <a href="https://support.microsoft.com/office/summarize-your-presentation-with-copilot-in-powerpoint-499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

### SharePoint

- **Copilot in SharePoint** [Web]  

  Copilot in SharePoint combines the power of Large Language Models (LLMs), your data in the Microsoft Graph, and best practices to create engaging web content. Get assistance drafting your content when creating new pages. Adjust the tone, expand meeting bullets into structured text, or get help making your message more concise. All within our existing commitments to data security and privacy in the enterprise. <a href="https://support.microsoft.com/topic/write-with-copilot-in-sharepoint-rich-text-editor-afc720be-666b-4d87-801e-b8ff62f309bb" target="_blank">Learn more.</a>

### Viva Amplify

- **Microsoft 365 Copilot in Viva Amplify editor** [Web]  

  The superpowers of Microsoft 365 Copilot integrates seamlessly into Viva Amplify, transforming content creation. Use Copilot in Amplify to auto-rewrite for suggestions, expand or condense text, and adjust tone for consistent, relevant messaging. <a href="/viva/amplify/copilot-in-viva-amplify" target="_blank">Learn more.</a>

### Viva Insights

- **Copilot dashboard access can be granted using Entra groups** [Web]  

  Global admins can now grant Microsoft Copilot Dashboard access using Microsoft Entra ID (AAD) Groups, reducing the manual effort needed for management. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

### Word

- **Listen to Copilot's responses with Read Aloud** [Windows, Web, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

## January 7, 2025

Updates released between December 18, 2024, and January 7, 2025.
### Microsoft 365 admin center

- **Track usage of Microsoft 365 Copilot Chat** [Web]  

  Filter data by date range, review Microsoft Copilot usage by app entry point, and use these insights plan adoption strategies more confidently. <a href="/microsoft-365/admin/activity-reports/microsoft-copilot-usage" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Include Code Interpreter in agents** [Windows, Web]  

  Enhance your agents by including Code Interpreter for advanced data analysis tasks in agent builder. <a href="/microsoft-365-copilot/extensibility/add-agent-capabilities#enable-code-interpreter" target="_blank">Learn more.</a>

### Outlook

- **Schedule meetings with Copilot chat in Outlook** [Windows, Web]  

  Save time and streamline your day by asking Copilot to schedule meetings for you in Outlook. Whether it's a 1:1 or focus time, Copilot will find the best available time slots with ease. <a href="https://support.microsoft.com/topic/8090e7b3-5b1d-4c6d-9b06-02edac062f58" target="_blank">Learn more.</a>

### Viva Amplify

- **Copilot in Viva Amplify editor** [Web]  

  Experience the power of Copilot right in your Amplify editing workflow. You can quickly auto-rewrite sections of your text, expand or condense content to match your preferred length, and seamlessly adjust the tone—casual, engaging, or professional—to suit your audience. <a href="https://support.microsoft.com/topic/introduction-to-copilot-in-viva-amplify-768222a0-9b83-402f-861e-9f7691183368" target="_blank">Learn more.</a>

### Viva Insights

- **New metrics for enterprise data-protected prompts** [Windows, Web, Android, iOS, Mac]  

  Gain visibility into prompts submitted through Microsoft 365 Copilot Chat (web) and enterprise data-protected Copilot scenarios. <a href="/viva/insights/advanced/reference/metrics#microsoft-365-copilot-metrics" target="_blank">Learn more.</a>

### Viva Learning

- **Copilot Academy support for external content** [Web]  

  Enhance your learning experience with a wider range of external content in Copilot Academy, including links to Copilot Prompt Gallery. <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>

## December 17, 2024

### Microsoft 365 Copilot

- **Microsoft 365 Copilot GCC general availability** [Windows, Web]  

  Your AI assistant for work in the GCC (Government Community Cloud) environment. It combines the power of large language models (LLMs) with your work content and context, to help you draft and rewrite, summarize and organize, catch up on what you missed, and get answers to questions via prompts. <a href="https://aka.ms/M365CopilotGCCBlog" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Copilot usage report for Business Chat** [Web]  

  Monitor usage data for Copilot Business Chat (web and work) directly in the admin center to support adoption and strategic planning.

### Microsoft Purview

- **Generate keyword query language from natural language prompt in eDiscovery with Copilot for Security** [Web]  

  Copilot for Security is embedded in eDiscovery to enable users to provide a search prompt in natural language and will translate into keyword query language to help expedite the start of an eDiscovery search. <a href="/purview/ediscovery-natural-language-query" target="_blank">Learn more.</a>

### PowerPoint

- **Ask Copilot about visuals while in PowerPoint** [Windows, Web]  

  Now you can add an image to your chat with Copilot. You can ask questions about the image, extract text, get a description of a chart, translate information, or generate alt text. This helps you stay in the flow of work while getting necessary information to continue working on your document.

### Viva Pulse

- **Templates for Copilot readiness, adoption and impact** [Windows, Web, Android, iOS, Mac]  

  Use new templates to measure employee sentiment and assess your organization's Copilot adoption—all within your Viva Pulse subscription.

### Word

- **Ask Copilot about visuals while in Word** [Windows, Web]  

  Now you can add an image to your chat with Copilot. You can ask questions about the image, extract text, get a description of a chart, translate information, or generate alt text. This helps you stay in the flow of work while getting necessary information to continue working on your document.

## November, 2024

### Microsoft 365 Copilot Chat

- **Admin control over Copilot web search access** [Web]  

  Administrators can now manage user access to web search within Copilot using policies in config.office.com. This provides better control over how users interact with web content through Copilot. <a href="/copilot/microsoft-365/manage-public-web-access" target="_blank">Learn more.</a>

- **Focus Copilot responses on specific emails in Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Narrow down Copilot responses by specifying a particular email folder, sub-folder, or subject line. Get more precise assistance by directing Copilot to the emails that matter most to you.

- **Jumpstart with prebuilt prompts in Microsoft 365 Copilot Chat** [Web]  

  Quickly get started in Microsoft 365 Copilot Chat by exploring and using prebuilt prompts designed to help you maximize productivity from the get-go.

- **Save and reuse your favorite prompts in Copilot** [Windows, Web]  

  Easily save your most-used prompts in Microsoft 365 Copilot Chat and Copilot Prompt Gallery website, keeping them at your fingertips for quicker interactions. <a href="https://support.microsoft.com/topic/55373730-2627-46a5-b0d8-772abe22dba4" target="_blank">Learn more.</a>

- **Share your feedback with in-chat rating in Copilot** [Windows, Web]  

  Easily rate your experience with Copilot's web-grounded chat on a 1-5 scale. Your feedback helps us improve Copilot to better meet your needs.

- **Use web-grounded Copilot chat in Teams and Outlook** [Windows, Web]  

  Enhance your Copilot chat in Teams and Outlook with the latest information from the web. Get up-to-date answers and insights directly within your conversations.

- **View web queries used by Copilot for greater transparency** [Web]  

  See the exact web queries Copilot sends in response to your prompts, along with the list of websites queried, enhancing your awareness and control over the information process.

### Microsoft 365 admin center

- **AI administrator role** [Web]  

  Empower designated admins to manage Copilot securely with the new AI administrator role—providing control without full Global admin permissions.

### Microsoft 365 Copilot extensibility

- **Add image generation to agents** [Windows, Web]  

  Enhance your agents by including image generation capabilities in agent builder <a href="/microsoft-365-copilot/extensibility/add-agent-capabilities#image-generator" target="_blank">Learn more.</a>

- **Create agents in Microsoft 365 Copilot via agent builder** [Windows, Web]  

  Use agent builder to create agents that contain specific instructions and knowledge, such as SharePoint files, to suit your needs. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

### Microsoft Loop

- **Reference documents within loop copilot prompts** [Web]  

  Enhance your Loop experience by linking directly to Word, Excel, or PowerPoint files—just add a command to summarize or extract key points from your documents.

### PowerPoint

- **Build a narrative with file-based topics** [Windows, Web, Mac]  

  Create compelling presentations by integrating topic suggestions linked to your documents—whether Word files, PDFs, or encrypted docs—for a well-grounded narrative.

### SharePoint

- **Control site creation permissions with Restricted Site Creation** [Web]  

  Administrators can now manage who can create different types of SharePoint sites. Configure specific user groups with permissions to create Team sites, Communication sites, or all sites, enhancing governance and control. <a href="/sharepoint/restricted-site-creation" target="_blank">Learn more.</a>

- **Manage inactive sites with new lifecycle policies** [Web]  

  SharePoint administrators can now set up policies to detect inactive sites, notify site owners, and automatically archive or set sites to read-only if no action is taken. This helps in managing unused content and optimizing resources. <a href="/sharepoint/site-lifecycle-management" target="_blank">Learn more.</a>

- **Site Access Review for scalable governance** [Web]  

  SharePoint administrators can now request site owners to review permissions directly from Data Access Governance reports. This helps in identifying and correcting potential oversharing, enhancing security and compliance. <a href="https://aka.ms/DAGSiteAccessReviews" target="_blank">Learn more.</a>

- **Use Data Access Governance to analyze permissions and prevent Oversharing** [Web]  

  As a SharePoint admin, you can now leverage Data Access Governance (DAG) to understand your tenant's permission landscape. Generate reports that highlight sites with permissioned users exceeding your specified number to identify potential oversharing. <a href="/sharepoint/data-access-governance-reports" target="_blank">Learn more.</a>

### Viva Glint

- **Summarize survey comments for key insights** [Web]  

  Quickly uncover top issues and potential solutions from employee feedback by asking natural language questions—empowering leaders to act on valuable insights.

### Word

- **Reference larger files and write longer prompts with Copilot** [Windows, Web, Mac]  

  Create more detailed drafts by writing prompts over 2,000 characters and referencing files totaling up to 75,000 words. <a href="https://support.microsoft.com/topic/66de2ffd-deb2-4f0c-8984-098316104389" target="_blank">Learn more.</a>

## October, 2024

### Microsoft 365 Copilot Chat

- **Access local files in Microsoft 365 Copilot Chat** [Web]  

  Upload and reference your local files directly within Copilot Chat prompts by using the Local Files button or typing '/', making your interactions more informed and efficient. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Get contextual summaries in Edge sidebar with Microsoft 365 Copilot Chat** [Web]  

  Receive instant contextual summaries directly in the Edge Sidebar while using Microsoft 365 Copilot Chat, helping you quickly grasp information without leaving your browsing experience.

- **Solve complex tasks in Copilot chat** [Web]  

  Use Copilot to solve complex math problems, analyze data, generate visualizations, and more in Copilot chat.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 12 additional languages across all features: Bulgarian, Croatian, Estonian, Greek, Indonesian, Latvian, Lithuanian, Romanian, Serbian (Latin), Slovak, Slovenian, and Vietnamese. Microsoft 365 Copilot also improved the handling of language variants: Dutch (Belgium), German (Switzerland), English (UK), Spanish (Mexico), and French (Canada). <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft 365 Copilot extensibility

- **Create agents in Copilot with instructions and knowledge sources** [Windows, Web]  

  Users can build Copilot agents that include specific instructions and knowledge, such as SharePoint files, directly from Copilot Chat using Copilot Studio Agent Builder. <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>

- **Customize your agent list in Copilot across apps** [Windows, Web]  

  Reorder or remove agents from your agent list, with updates based on your most recently used agents and admin-installed agents, available in Copilot Chat, Microsoft Teams, and Microsoft 365.

- **Invoke agents with @mentions across apps** [Windows, Web]  

  Users can now @mention agents to invoke them in-context within Copilot Chat, Word, and PowerPoint, enhancing workflow efficiency. <a href="https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

- **Start conversations easily with Agent starter prompts** [Windows, Web]  

  Select from conversation starter prompts to begin using an agent quickly and effortlessly. <a href="https://support.microsoft.com/topic/169469d7-328d-4d37-9090-bfc2058a39bd" target="_blank">Learn more.</a>

### Outlook

- **Rewrite selected text in emails using Copilot** [Windows, Web, Android, iOS, Mac]  

  Select specific parts of your drafted email and ask Copilot in new Outlook to rewrite it or provide more information to rewrite it. Provide detailed instructions or adjust the tone and length to suit your needs.

### Word

- **Get started on a draft immediately with example prompts** [Web]  

  On blank documents, Copilot in Word offers one-click example prompts to help you get started quickly.

## September, 2024

### Microsoft 365 Copilot Chat

- **Convert Microsoft 365 Copilot Chat conversations into shareable pages** [Web]  

  Transform Microsoft 365 Copilot Chat Copilot responses in work mode into editable and shareable pages, so you can easily access and distribute important information.

- **Generate images in Microsoft 365 Copilot Chat** [Web]  

  Create custom images directly within Microsoft 365 Copilot Chat. Using natural language, ask Copilot to generate images. <a href="https://support.microsoft.com/topic/6cd168f3-1cf0-478e-bd75-31d6526d2504" target="_blank">Learn more.</a>

- **Get started quicker with grounded prompts** [Windows, Web]  

  Copilot Chat prompt suggestions now include relevant files, people, and meetings to help you get started with grounded prompts. Clicking the prompt card will add the prompt text and related file into the input box where you can select a different file, person, or meeting to fit your needs.

### Excel

- **Access Copilot from the cell context menu** [Windows, Web]  

  Easily launch Copilot in Excel directly from the cell context menu, streamlining your workflow. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

- **Copilot in Excel is generally available** [Windows, Web, iOS, Mac]  

  Copilot in Excel, now no longer in Preview but Generally Available, works alongside you to analyze and explore your data, answering questions in natural language and revealing insights without the need for complex formulas. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

### Microsoft 365 admin center

- **Identify suggested candidates for Copilot licensing** [Web]  

  Improve license assignment decisions and maximize Microsoft 365 Copilot adoption. In the Microsoft 365 Copilot usage report readiness section, a new "Suggested Candidates" column helps you assign licenses to users who are most likely to get the most value for Microsoft 365 Copilot, based on factors such as usage of relevant Microsoft 365 apps. <a href="/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness#additional-details-for-suggested-candidate-for-copilot" target="_blank">Learn more.</a>

### Microsoft 365 Copilot

- **AI-generated Images with Copilot and Microsoft Designer** [Windows, Web, Mac]  

  Microsoft Designer integration in Copilot chat allows you to generate that perfect image, providing limitless creativity and bringing your presentations to life. <a href="https://support.microsoft.com/topic/6cd168f3-1cf0-478e-bd75-31d6526d2504" target="_blank">Learn more.</a>

- **Insert brand-approved images from SharePoint using Copilot** [Windows, Web]  

  Keep your documents and presentations on brand by adding company-approved images directly from your SharePoint organization asset library through Copilot. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>

### OneDrive

- **Copilot in OneDrive** [Web]  

  Copilot in OneDrive, available on the web, allows you to ask questions and extract information from your files. Get summaries and insights from Word, PDF, PowerPoint, Excel, and text files. <a href="https://support.microsoft.com/office/get-started-with-copilot-in-onedrive-7fc81e10-e0cf-4da8-af2e-9876a2770e5d" target="_blank">Learn more.</a>

### Outlook

- **Instantly apply coaching suggestions from Copilot to your emails** [Web, Android, iOS, Mac]  

  Improve your email writing with Coaching by Copilot in new Outlook. Request a full rewrite based on Copilot's feedback or apply the suggestions with a single click. <a href="https://support.microsoft.com/topic/91a3cd56-1586-4a31-85c7-2eb8cdb02405" target="_blank">Learn more.</a>

### PowerPoint

- **Create presentations with new slide types using Copilot** [Web, Mac]  

  When creating a presentation with Copilot, you'll now see agenda, section, and conclusion slides, giving your presentations better structure.


- **Improved template support with Copilot** [Windows, Web, Mac]  

  Update your templates to PowerPoint's best practices, and Copilot will generate beautiful, on-brand slides every time you create a presentation. <a href="https://support.microsoft.com/topic/046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>

### Viva Glint

- **View Glint and Pulse survey results in Viva Insights Copilot Dashboard** [Web]  

  Leaders and adoption specialists can now initiate Copilot impact surveys and view the results from Viva Glint or Viva Pulse directly within the Viva Insights Copilot Dashboard. Understand the ROI of deploying Copilot and AI tools in your organization. <a href="/viva/glint/setup/copilot-impact-template" target="_blank">Learn more.</a>

### Viva Learning

- **Providing Copilot Academy access to all Microsoft 365 Copilot users** [Web]  

  Microsoft Copilot Academy is now available for all users with a Microsoft 365 Copilot license or any Viva Learning license (premium, suite, or the Microsoft 365-included version). <a href="/viva/learning/academy-copilot" target="_blank">Learn more.</a>

### Word

- **Easily write a prompt or choose quick actions from the Copilot icon in your Word doc** [Web]  

  The Copilot icon in your document margin now lets you easily write a prompt or choose quick actions, making AI assistance more accessible.

- **Reference up to 10 Items when drafting with Copilot** [Web, iOS]  

  Expand your drafting capabilities by referencing up to 10 items—such as files, emails, and meetings—when using Copilot in Word. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

## August, 2024

### Microsoft 365 Copilot

- **Try prompts directly from the Copilot Prompt Gallery website** [Windows, Web]  

  Quickly launch suggested prompts from the Copilot Prompt Gallery website in Microsoft 365 Copilot Chat by clicking the "Try in" button on the prompt card.

### Excel

- **Custom chart and PivotTable creation** [Windows, Web, iOS, Mac]  

  You can now ask Copilot for more specific charts and PivotTables, including specifying the X and Y axes. Customize your data presentations more precisely.

- **Formula data summaries from columns** [Windows, Web, iOS, Mac]  

  Add a single formula to summarize column data into one cell. This feature allows you to calculate data across columns and return a single result, simplifying data analysis.

- **Suggest conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Ask Copilot to suggest conditional formatting for your data. Receive a list of prompts that might highlight key insights in your data.

- **Summarize text columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can analyze columns of text to provide summaries, such as identifying main themes in survey responses. Understand your text data more effectively.

### Forms

- **Copilot helps students understand quiz solutions** [Web]  

  After submitting quizzes, students can now receive Copilot-assisted explanations for correct and incorrect answers. This feature aids learning by providing detailed solution steps.

### Outlook

- **Schedule meetings from an email with Copilot in new Outlook** [Windows, Web]  

  Quickly shift from an email thread to a meeting invite by clicking "Schedule with Copilot." Copilot summarizes the conversation, drafts an agenda, and includes key context automatically.

### PowerPoint

- **Build your story with Narrative Builder** [Windows, Web, iOS, Mac]  

  Copilot helps you form your narrative and turns it into a fully designed presentation, streamlining the creative process.

- **Custom slideshow of key slides** [Web]  

  Ask Copilot to show key slides, and you'll have one-click access to play a custom presentation of the most important slides.

- **Improved presentation summary richness** [Windows, Web, iOS, Mac]  

  Copilot now leverages the latest GPT models to provide richer summaries when generating presentations, enhancing the quality of your content.

### Viva Insights

- **Analyze Copilot impact over time** [Windows, Web, Android, iOS, Mac]  

  View trendlines of key productivity metrics over 6 months and estimate the financial value of Copilot-assisted hours. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact" target="_blank">Learn more.</a>

## July, 2024

### Microsoft 365 Copilot Chat

- **Access cloud files via Context IQ in Microsoft 365 Copilot Chat** [Web]  

  Easily include relevant documents in your chats with Context IQ suggestions. Now access "Browse Cloud Files" from the "Attach Cloud Files" button. <a href="https://support.microsoft.com/topic/using-context-iq-to-refer-to-specific-files-people-and-more-in-microsoft-365-copilot-272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

### Excel

- **Advanced conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Copilot now supports complex conditional formatting, such as highlighting rows based on multiple criteria. Enhance your data visualization with more formulaic formatting options.

- **Improved data insights in Copilot** [Windows, Web, iOS, Mac]  

  Copilot is now better at answering questions about data insights like trends and correlations. Get more meaningful analysis to make informed decisions.

- **Preview and apply changes suggested by Copilot** [Windows, Web, iOS, Mac]  

  Before Copilot makes changes to your Excel data, you'll now receive a description and an "Apply" button. This gives you more control over your data and allows for refinements before applying changes.

- **Preview conditional formatting rules** [Windows, Web, iOS, Mac]  

  When setting a conditional formatting rule, Copilot's response will include a preview of the style and an explanation of the formula. This helps you understand and apply formatting more confidently.

- **Support for data ranges resembling tables** [Windows, Web, iOS, Mac]  

  Copilot can now reason over data ranges with a single row of headers, even if they aren't formatted as formal tables. This makes data analysis more flexible.

### Microsoft 365 admin center

- **Gain visibility into Microsoft 365 Copilot Chat usage** [Web]  

  Access usage metrics for Microsoft 365 Copilot Chat to inform your adoption strategies. <a href="/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage" target="_blank">Learn more.</a>

### Microsoft Loop

- **Copilot-Assisted Loop Page Creation** [Web]  

  Collaborate with Copilot to create structured Loop pages quickly. Start from scratch or modify existing pages or templates with AI assistance for efficient teamwork.

### PowerPoint

- **Create presentations from encrypted Word documents** [Windows, Web, iOS, Mac]  

  Copilot for PowerPoint can now create presentations using Word documents that have a protected sensitivity label, expanding your content creation options securely.

- **Easier access to Copilot in PowerPoint** [Windows, Web, iOS, Mac]  

  Access Copilot in PowerPoint more easily with new on-canvas entry points. Start enhancing your presentations with AI assistance in fewer clicks.

### Viva Engage

- **Viva Engage Copilot Adoption Community** [Web]  

  Kickstart your Copilot adoption journey with a templatized community in Viva Engage. Get setup checklists, suggested content, suggested members, and top Q&A to engage your employees effectively. <a href="/viva/engage/engage-365-copilot-adoption-platform" target="_blank">Learn more.</a>

### Viva Insights

- **Microsoft Copilot Dashboard powered by Viva Insights** [Windows, Web, Android, iOS, Mac]  

  The Microsoft Copilot Dashboard available to all Microsoft 365 Copilot customers at no extra cost. Access it via the Viva Insights app to monitor Copilot adoption and impact. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

### Word

- **Summarize longer documents in chat** [Windows, Web, iOS, Mac]  

  Copilot in Word can now summarize longer documents, with the upper limit increased to about four times more words (approx. 80k words). Get comprehensive overviews of lengthy content.

## June, 2024

### Excel

- **Copilot works on any selection in Excel** [Windows, Web, iOS, Mac]  

  Copilot now enables the edit box on any worksheet, regardless of selection. It intelligently finds the nearest table or data range for your analysis queries, making data manipulation more flexible.

- **Excel Copilot Chat Helper for Your Data Queries** [Web]  

  Get conversational Excel-specific answers to your Excel-related questions with the Copilot chat helper.

### Forms

- **Copilot helps you draft quizzes and answers** [Web]  

  Teachers and staff can use Copilot in Forms to generate quizzes, including correct answers. Now they can focus more on helping students engage with assessments, icebreakers, and trivia, and less on writing and programming.

- **Gather more responses with Copilot suggestions** [Web]  

  Copilot in Forms now suggests the best distribution channels and settings when sending out forms or quizzes. Reach your audience more effectively and increase engagement.

### PowerPoint

- **Copilot adds transitions and animations automatically** [Windows, Web, iOS, Mac]  

  When creating presentations from prompts or files, Copilot will now automatically add transitions and animations. This enhancement brings your slides to life without extra effort.

- **Create presentations from PDF files with Copilot** [Windows, Web, iOS]  

  You can now generate PowerPoint presentations directly from PDF files using Copilot. This feature simplifies the process of turning documents into engaging presentations.

- **Improved content when creating presentations from prompts** [Windows, Web, iOS, Mac]  

  Experience increased depth and richness of content when you create a presentation from a prompt. Copilot now provides better formatting and more detailed slides to enhance your presentations.

### Viva Amplify

- **Copilot deployment kit now in Viva Amplify** [Web]  

  Prepare and launch Copilot in your organization effortlessly using the new deployment kit in Viva Amplify. Access pre-written and formatted publications to educate users on Copilot features and develop their AI skills, ensuring a smooth rollout. <a href="https://techcommunity.microsoft.com/blog/viva_amplify_blog/copilot-deployment-kit-in-viva-amplify-now-generally-available/4161748" target="_blank">Learn more.</a>

### Word

- **Find the perfect visual with Copilot + Designer in Word** [Windows, Web, Mac]  

  Enhance your documents with AI-generated images using the new integration of Microsoft Designer in Copilot Chat. Also search for stock images and brand assets to bring your content to life seamlessly.

## May, 2024

### Microsoft 365 Copilot Chat

- **Grounding suggestions when pasting cloud file URLs in Microsoft 365 Copilot Chat** [Web]  

  When you paste file URLs as references in your prompts, Microsoft 365 Copilot Chat now informs you about inline referencing via Context IQ. Access Context IQ in chat using "/" or the "Attach Clip" option to enhance your interactions.

- **Proactive file suggestions for enhanced grounding in Microsoft 365 Copilot Chat** [Web]  

  Microsoft 365 Copilot Chat now proactively informs you about grounding opportunities when typing prompts. Highlighted text and file data source insertions help you create more effective and context-rich prompts.

### Microsoft 365 Copilot

- **Explore curated prompt collections for various roles and industries in Copilot Prompt Gallery** [Windows, Web]  

  Discover and filter through a curated collection of Microsoft-authored prompts tailored for Marketing, HR, Finance, Retail, and Manufacturing roles. These prompts help you get the most out of Copilot with prompts tailored to your role or industry.

### Microsoft Loop

- **Use Copilot in Loop components across Teams and Outlook** [Web]  

  People with a Copilot license can now leverage Copilot in Loop when they paste Loop components into Teams, Outlook, and Meeting Notes.

### Outlook

- **Microsoft 365 Copilot Chat available in new Outlook for Windows and web** [Windows, Web, Android, iOS]  

  Access the power of Microsoft 365 Copilot Chat directly within Outlook  on the web and the new Outlook for Windows. Access Microsoft 365 Copilot Chat through the left app bar.

### SharePoint

- **Introducing Restricted SharePoint Search for Copilot** [Web]  

  Administrators can now enable Restricted SharePoint Search to disable organization-wide search and select up to 100 specific SharePoint sites accessible in search and Copilot experiences. Users will still interact with their OneDrive content in Copilot, balancing accessibility and security.

### Word

- **Use Copilot to enhance pasted text in Word** [Web]  

  Copilot in Word now offers more options when you paste text. Reword content, transform it into tables or lists, and more, making it easier to format and organize your documents efficiently.

- **Use Draft with Copilot in Word based on text, list, or table selection** [Web]  

  Use Draft with Copilot in Word with the on-canvas Copilot menu when a user selects text, a list, or a table, which generates new content from Copilot and provides a richer, more interactive experience.

## April, 2024

### Microsoft 365 Copilot Chat

- **Use file links to reference files in your prompts** [Windows, Web]  

  Easily refer to files in your Copilot Chat prompts by pasting their URL links, streamlining your workflow and saving time.

### Excel

- **Create Formula Columns Using Data from Multiple Tables** [Windows, Web, iOS, Mac]  

  Support for functions like XLOOKUP and SUMIF allows you to create formula columns that utilize data across multiple tables.

- **Generate multiple formula columns with a single prompt** [Windows, Web, iOS, Mac]  

  Use Copilot in Excel to create several formula-based columns at once. For example, ask Copilot to split a full name into first and last name columns, and watch it generate both formulas in one go.

### Forms

- **Copilot helps you rewrite and extend your forms** [Web]  

  Beyond drafting from scratch, Copilot in Forms can now assist you in rewriting titles, descriptions, or questions, and adding more content to your surveys.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 17 additional languages across all features: Arabic, Chinese (Traditional), Czech, Danish, Dutch, Finnish, Hebrew, Hungarian, Korean, Norwegian (Bokmal), Polish, Portuguese (Portugal), Russian, Swedish, Thai, Turkish, and Ukrainian. <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

- **Microsoft 365 Copilot Data Residency Commitments** [Web]  

  We have added new commitments covering stored content of interactions with Microsoft 365 Copilot to existing data residency commitments, enhancing data compliance.

### Microsoft Loop

- **Access Copilot in Loop easily from the right side of the page** [Web]  

  We have added an entry point on the right side of the page to make Loop Copilot's Draft and Rewrite capabilities more accessible.

### Microsoft Stream

- **Quickly summarize videos with Copilot in Stream** [Web]  

  Copilot in Stream uses AI to help you get insights from videos, allowing you to summarize content or ask in-depth questions efficiently. <a href="https://support.microsoft.com/office/welcome-to-microsoft-copilot-in-stream-0b531ea9-2d9d-4830-97e4-2c1b2b8ca31d" target="_blank">Learn more.</a>

### OneDrive

- **Share Word documents with AI-generated summaries** [Web]  

  Users can now include an AI-generated summary when sharing Word documents, helping recipients understand content quickly and collaborate efficiently.

### Outlook

- **Control the 'Summary by Copilot' banner in new Outlook** [Web]  

  You can now choose to show or hide the 'Summary by Copilot' banner in your emails for a personalized experience.

- **Copilot chat now available in new Outlook** [Windows, Web]  

  Access Copilot chat within Outlook to type and receive responses while managing your emails, all in a convenient side panel.

### SharePoint

- **Advanced tenant rename in SharePoint Advanced Management** [Web]  

  Change your SharePoint domain with greater control, including prioritizing up to 4,000 sites for early execution and supporting tenants with up to 100,000 sites. <a href="/sharepoint/change-your-sharepoint-domain-name#advanced-tenant-rename" target="_blank">Learn more.</a>

- **Restricted Access Control** [Web]  

  Control permissions of sensitive data by restricting SharePoint sites and OneDrive's access to specific users and their corresponding Copilot. <a href="/sharepoint/sharepoint-copilot-best-practices#step-2---prevent-oversharing-and-control-access-with-sharepoint-and-onedrive" target="_blank">Learn more.</a>

### Viva Engage

- **Copilot in Viva Engage enhances communication and connection** [Web]  

  Copilot in Viva Engage helps you catch up on what's happening in your network and write engaging communications that support your goals.

### Whiteboard

- **Discover Whiteboard Copilot with First Run Experience** [Windows, Web]  

  First-time users will be guided to discover and leverage the power of Whiteboard Copilot features through an interactive introduction.

### Word

- **Bing search integration brings the power of the web to your chats in Word** [Windows, Web]  

  Ask Copilot a question in Word chat, and Copilot generates an answer using the power of integrated Bing search. And you never have to leave the app.

- **Bring the latest from your organization into your Word chats with Microsoft Copilot Graph-grounded search.** [Windows, Web]  

  Bring the latest from your organization into your Word chats with Microsoft Graph-grounded search, enhancing the power of Copilot.

- **Draft with Copilot supports referencing files encrypted with sensitivity labels** [Windows, Web, Mac]  

  Draft with Copilot now allows you to reference files encrypted with sensitivity labels, ensuring secure document creation.

- **Fine-tune rewrite responses in Copilot in Word** [Web]  

  Customize the output from Copilot's Rewrite feature by specifying how the text should change to better suit your needs.

- **Use a url to reference supported files in Copilot in Word** [Web]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

## March, 2024

### Microsoft 365 Copilot Chat

- **Rich entity representations in Copilot responses** [Windows, Web, Android, iOS, Mac]  

  Copilot now provides richer representations of entities like people, events, and files within responses, enhancing context and usability.

### Excel

- **Speak to Copilot in Excel with new input methods** [Windows, Web, iOS, Mac]  

  You can now use your microphone to send prompts to Copilot in Excel, and explore the Prompt Guide for customized suggestions.

### Microsoft 365 admin center

- **Send Copilot welcome emails when assigning licenses to users** [Web]  

  Help users get started with Copilot faster. When assigning Microsoft 365 Copilot licenses, you can now send users a welcome email containing helpful resources and tips to maximize their Copilot experience.

### Word

- **Share Word documents with AI summaries** [Web]  

  Include an AI-generated document summary when sharing Word documents. Recipients get a rich preview, aiding quicker understanding and collaboration.

## February, 2024

### Forms

- **Create and customize Forms quickly with Copilot** [Web]  

  Use natural language to describe the form you need, and Copilot will generate it for you. Copilot can also help you customize your form with a theme or apply response settings, to help drive engagement from your audience.

## January, 2024

### Excel

- **Enjoy conversational Copilot in Excel** [Windows, Web, iOS, Mac]  

  Copilot in Excel now remembers the context of your chats, allowing for follow-up questions and clarifications for a smoother experience.

### Microsoft Purview

- **Communication Compliance-Detect Microsoft 365 Copilot interactions template** [Web]  

  Communication Compliance is introducing a new template dedicated to analyzing all Microsoft 365 Copilot  prompts and responses, to help ensure content prohibited by customers' policies, such as harassing or threatening language, isn't being used Microsoft 365 interfaces. This scales Communication Compliance's reach, consistent with Microsoft 365's expanding interfaces. In addition, administrators are also able to select Copilot chats as a checked location in the policy creation wizard for any new or existing policies. This empowers administrators to fine-tune their management strategy precisely to their organization's needs, with a focus on user privacy protection. Whether it's setting specific conditions or deploying trainable classifiers, this feature provides flexibility and adaptability in compliance management, ensuring your organization's communications remain secure, compliant, and respectful of user privacy.


## December, 2023

### Microsoft 365 admin center

- **Track Copilot readiness and usage across Microsoft 365** [Web]  

  Easily assess your organization's technical eligibility, license assignment, and active usage of Microsoft 365 Copilot. Understand which apps drive engagement, monitor trends over time, and use these insights to guide licensing and adoption strategy decisions. <a href="/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness" target="_blank">Learn more.</a>

## November, 2023

### Microsoft 365 Copilot Chat

- **Access Microsoft 365 Copilot Chat on Microsoft365.com** [Windows, Web]  

  Use Microsoft 365 Copilot Chat directly from microsoft365.com/chat, providing a unified experience across platforms. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

- **Insert entities into prompts in Microsoft 365 Copilot Chat** [Windows, Web]  

  Use '/' to add entities in prompts submitted to Copilot, focusing responses on the most relevant information. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Mac]  

  Your single destination to take on any task, combining AI power with your work content to draft content, catch up, and get answers. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

### Excel

- **Add formula columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot provides formula suggestions with explanations, helping you create new columns based on your data. <a href="https://support.microsoft.com/topic/d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>

- **Generate data insights with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can suggest insights like summaries, trends, and outliers, returning results as charts or PivotTables to enhance your analysis. <a href="https://support.microsoft.com/topic/52d97339-86c0-431c-b46c-e7b07b2898dd" target="_blank">Learn more.</a>

- **Use Copilot to highlight, filter, and sort data in Excel tables** [Windows, Web, iOS, Mac]  

  Transform your data by asking Copilot to format your Excel tables. You can highlight top values, filter specific entries, or sort data. For example, ask Copilot to highlight the top 3 values in a column, and it will apply conditional formatting. <a href="https://support.microsoft.com/topic/05302e3f-de42-4475-b235-be9cb3d4e936" target="_blank">Learn more.</a>

### Microsoft Loop

- **Collaborate with Copilot in Loop** [Web]  

  Work together with Copilot and your team to create content, generate ideas, and refine results collaboratively. <a href="https://support.microsoft.com/topic/76d3401f-01c8-4f6f-a2d3-006af0850a36" target="_blank">Learn more.</a>

- **Enjoy richer Copilot in Loop outputs with formatting and tables** [Web]  

  Copilot can now produce results with rich formatting, including headings and tables, for more organized content.

- **Experience visual updates to the Copilot Block** [Web]  

  The Copilot Block now blends more naturally into your page, with AI interactions happening in the right margin.

- **Generate Page Summaries with Copilot in Loop** [Web]  

  Insert a 'Page Summary' component to have Copilot summarize the content on your current Loop page. <a href="https://support.microsoft.com/topic/5e2c071f-c734-4798-a7a5-2c9d8fa648d1" target="_blank">Learn more.</a>

- **Get insights from your current page content** [Web]  

  Copilot can answer questions based on the content on your current Loop page, providing summaries and analyses. <a href="https://support.microsoft.com/topic/b5baf628-c39c-44e8-8b2f-d67bf23f9af6" target="_blank">Learn more.</a>

- **Rewrite existing content with Copilot** [Web]  

  Leverage Copilot to help rewrite, supplement, or gain insights from content that already exists in Loop. <a href="https://support.microsoft.com/topic/a3057c16-a065-49e8-ad04-e0a453168377" target="_blank">Learn more.</a>

- **See when teammates are editing prompts** [Web]  

  Loop Copilot now indicates when a teammate is actively writing or refining a prompt, enhancing collaboration. <a href="https://support.microsoft.com/topic/76d3401f-01c8-4f6f-a2d3-006af0850a36" target="_blank">Learn more.</a>

- **Summarize and share changes with your team** [Web]  

  Use the Recap experience to have Copilot generate a summary of your changes and share it with your team. <a href="https://support.microsoft.com/topic/e0044a51-6919-46bf-8dac-2e4f300988d5" target="_blank">Learn more.</a>

### Microsoft Purview

- **Microsoft Purview capabilities for Microsoft 365 Copilot** [Web]  

  Microsoft Purview is launching several capabilities that help with security and compliance of data in Microsoft 365 Copilot. These are capabilities in Information Protection, Data Lifecycle Management, Audit, eDiscovery, and Communication Compliance.

### Microsoft Teams

- **Copilot available in a channel post conversation** [Windows, Web, Android, iOS, Mac]  

  Copilot can summarize and support Q&A on a channel post conversation, assisting you directly in your channel conversations.

- **Copilot to summarize and answer Q&A in Teams Chat** [Windows, Web, Android, iOS, Mac]  

  Copilot helps you catch up on conversations by providing summaries and answering questions in Teams chats.

- **Use Copilot in meetings, 1:1 and group calls** [Windows, Web, Android, iOS, Mac]  

  Get summaries, action items, and more after meetings and calls through Copilot in the side panel.

### Outlook

- **Draft emails with Copilot in new Outlook** [Windows, Web, Mac]  

  Use Copilot to draft new emails from prompts, adjust length and tone, and even select parts of an email and use Copilot to rewrite those specific sections effortlessly. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get Coaching from Copilot for an email draft in new Outlook** [Web, Android, iOS, Mac]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get quick summaries of email threads in new Outlook** [Web]  

  Receive concise summaries of email conversations, helping you stay informed without reading every message. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

- **Meeting Recap in Calendar** [Windows, Web]  

  After a meeting ends, open the event from your calendar in the new Outlook to view the meeting summary, mentions, tasks, and more, helping you catch up and collaborate asynchronously.

### PowerPoint

- **Automatically add an agenda slide to your presentation** [Windows, Web, iOS, Mac]  

  Generate and insert an agenda slide based on your existing content, helping you prepare your audience for what's ahead.

- **Create a presentation from a simple prompt** [Windows, Web, iOS, Mac]  

  Provide a prompt and Copilot will help you generate a presentation, saving you time and effort <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create presentations using your organization's templates** [Windows, Web, iOS, Mac]  

  Generate presentations that utilize your company's templates, ensuring consistency and alignment with your brand. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Edit your presentation in Copilot chat** [Windows, Web, iOS, Mac]  

  Add slides, add animations, or organize your presentation in Copilot chat, streamlining your editing process. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>

- **Get answers about your presentation** [Windows, Web, iOS, Mac]  

  Ask questions about your existing PowerPoint presentation to quickly retrieve information and insights.

- **Organize your presentation's flow easily** [Windows, Web, iOS, Mac]  

  Structure your slides, add sections, and insert an agenda slide to improve the overall flow of your presentation. <a href="https://support.microsoft.com/topic/a207eea3-7a56-4225-88f1-54dd37cdcf6a" target="_blank">Learn more.</a>

- **Summarize your presentation and identify key points** [Windows, Web, iOS, Mac]  

  Generate summaries, highlight key slides, and identify action items from your presentation, making it easier to review and share essential information. <a href="https://support.microsoft.com/topic/499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

### Whiteboard

- **Generate ideas effortlessly** [Windows, Web, Android, iOS]  

  Brainstorm by generating short text ideas, fueling your creativity during collaborative sessions.

- **Organize your ideas into themes** [Windows, Web, Android, iOS]  

  Categorize and group your ideas into themes, helping you visualize and structure your brainstorming sessions.

- **Summarize your Whiteboard sessions** [Windows, Web, Android, iOS]  

  Create summaries of your Whiteboard content, capturing key points from your collaborative work.

### Word

- **Apply highest sensitivity label to generated content** [Windows, Web, iOS, Mac]  

  Ensure your documents maintain appropriate confidentiality levels as labels are automatically updated when referencing files with higher sensitivity.

- **Draft with Copilot** [Windows, Web, iOS, Mac]  

  Draft new content for your blank or existing documents, helping you write faster and with ease. <a href="https://support.microsoft.com/topic/069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>

- **Get answers and enhance content with chat in Word** [Windows, Web, Mac]  

  Ask specific questions about your document or request additional details to enhance your content, making your writing process more efficient. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Rewrite with Copilot** [Windows, Web, iOS, Mac]  

  Get suggestions for how to rewrite any text in your document, enhancing clarity and effectiveness. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Summarize your document using chat prompts** [Windows, Web, Mac]  

  Ask via chat to summarize your document, highlighting key points for quick understanding and review. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use voice prompts for assistance** [Windows, Web, Mac]  

  Use voice to dictate into the Copilot chat prompt field

- **Visualize as table** [Web]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

## [Android](#tab/androidos)
<!-- 94703 -->
## July 8, 2025
Updates released between June 24, 2025, and July 8, 2025.
### Viva Connections
- **New News feature in Microsoft Teams** [Android, Windows, iOS, Web]

  This update replaces the current Feed experience in Viva Connections across desktop, mobile, and web platforms with a SharePoint News reader experience. This new experience presents SharePoint news from organizational sites, boosted news, users' followed sites, frequent sites, and people they work with in an immersive reader format. It includes a Copilot-powered news summary as well, available only in Teams for Windows desktop in this initial release.
 <a href="https://techcommunity.microsoft.com/blog/viva_connections_blog/introducing-enterprise-news-reader-in-viva-connections/4383832" target="_blank">Learn more.</a>

<!-- 95597,94574 -->
## June 24, 2025
Updates released between June 10, 2025, and June 24, 2025.
### Teams
- **Copilot generated summaries for call transfers on Teams phone devices** [Android]

  Copilot generated summary provides an overview of the details and outcomes of transferred calls. It includes information such as the caller's details, the reason for the transfer, and the final resolution.
 <a href="https://support.microsoft.com/office/get-started-with-copilot-in-microsoft-teams-phone-97c55ffb-1499-4b0a-8caa-980ebb4b697b" target="_blank">Learn more.</a>
- **Speaker recognition and attribution in Teams Rooms on Android** [Android]

  Enhance your meetings with real-time speaker recognition and transcript attribution in Teams Rooms on Android. This feature identifies voices through cloud-enabled intelligent speakers and lets you securely enroll voices via Teams Settings—note that a Teams Rooms Pro license is required.
 <a href="/microsoftteams/rooms/voice-recognition?branch=main&branchFallbackFrom=pr-en-us-14676" target="_blank">Learn more.</a>

<!-- 97288,96951,72079 -->
## June 10, 2025
Updates released between May 29, 2025, and June 10, 2025.
### Outlook
- **Custom Instructions for draft with Copilot** [Android, Windows, iOS, Mac, Web]

  Give Copilot some instructions about your emails - like the tone, length, greeting - so your Copilot generated drafts sound more like you want them to. #newoutlookforwindow
- **Schedule a meeting from an email with Copilot** [Android, Windows, iOS, Mac, Web]

  Turn any email thread into a meeting in one click. Copilot builds a complete invite for your review —title, agenda, attendee list, and a summary of the email conversation—plus attaches the original email thread so everyone is up to speed. Available in the new Outlook for Windows, web, Mac, and mobile. #newoutlookforwindows
 <a href="https://support.microsoft.com/office/create-a-meeting-and-agenda-with-copilot-in-outlook-31a44dfa-62bb-4751-82c4-14327a26759f" target="_blank">Learn more.</a>
### Teams
- **Microsoft Teams: Intelligent recap support for ad-hoc meetings and calls in GCC High** [Android, Windows, iOS, Mac, Web]

  Intelligent meeting recap is now available in GCC High for impromptu calls and meetings, like those started from ‘Meet now’ and calls started from chat. You can easily browse the recording by speakers and topics, as well as access AI-generated notes, AI-generated tasks, and name mentions after the ad-hoc meeting ends. This capability is available for users with a Teams Premium or M365 Copilot license.

<!-- 98521 -->
## May 13, 2025
Updates released between April 29, 2025, and May 13, 2025.
### Microsoft 365 Copilot Chat
- **Image generation in mobile Copilot chat** [Android, iOS]

  Create images using natural language to visualize concepts and ideas within the flow of work, directly in Copilot on Microsoft 365, Teams, and Outlook mobile apps.

## April 2, 2025
Updates released between March 20, 2025, and April 2, 2025.
### Microsoft 365 Copilot Chat
- **Ask questions about images with natural language** [Android, iOS, Web]

  Easily gain insights from images by asking natural language questions. Upload images for quick analysis using advanced vision models—helping you make sense of visual data across your apps.

## March 19, 2025
Updates released between March 5, 2025, and March 19, 2025.
### Microsoft 365 Copilot App

- **View, edit and share Copilot Pages on mobile** [Android, iOS]  

  Stay productive while on the go—use the Microsoft 365 mobile app to view, edit, or share Copilot-generated pages instantly. Collaborate with colleagues in real time, whether you’re commuting or between meetings. <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>

## March 4, 2025

Updates released between February 20, 2025, and March 4, 2025. 

### Microsoft 365 Copilot Chat

- **Search archived mailboxes in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Leverage Copilot to search emails across both primary and archived mailboxes by appending 'from my archives' or 'also look for emails in my archives' in your prompts to quickly locate key messages.

## February 19, 2025

Updates released between February 5, 2025, and February 19, 2025. 

### Microsoft Teams

- **AI-enabled file summaries on mobile** [Android, iOS]  

  Summarize Word, PowerPoint, and PDF files on mobile by tapping the summary icon or selecting “Summarize with Copilot” for a quick, digestible overview—even on small screens.

### Viva Insights

- **Copilot dashboard for usage and retention insights** [Windows, Web, Android, iOS, Mac]  

  Dive into usage frequency, compare top user groups, and track retention metrics—all in a single, comprehensive dashboard for actionable insights. <a href="/viva/insights/org-team-insights/copilot-dashboard#interpreting-the-data" target="_blank">Learn more.</a>


## February 4, 2025

Updates released between January 24, 2025, and February 4, 2025.
### Microsoft 365 Copilot App

- **Updates to the Microsoft 365 (Office) app** [Windows, Web, Android, iOS]  

  The Microsoft 365 Copilot app (formerly Microsoft 365 app) has a new name and icon. <a href="https://support.microsoft.com/office/the-microsoft-365-app-transition-to-the-microsoft-365-copilot-app-22eac811-08d6-4df3-92dd-77f193e354a5" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Access support pages in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  View organizational support pages directly within Copilot Chat, for quick help and guidance in your workflow.

- **Accommodate user’s time zones in Copilot** [Windows, Web, Android, iOS]  

  Copilot now references your local time zone when responding helping to avoid confusion and scheduling errors.


<!--- All features that have 'Android' tag  -->

## January 23, 2025

Updates released between January 8, 2025, and January 23, 2025.

### Microsoft 365 Copilot Chat

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS]  

  Microsoft 365 Copilot Chat—free, secure AI chat powered by GPT-4o with agents accessible right in chat, and IT controls including enterprise data protection and agent management. Copilot Chat serves as a powerful new on-ramp for everyone in your organization to build an AI habit. Get started with Copilot Chat with the updated <a href="https://www.m365copilot.com" target="_blank">Microsoft 365 Copilot app</a> (formerly Microsoft 365 app). <a href="https://www.microsoft.com/microsoft-365/blog/2025/01/15/copilot-for-all-introducing-microsoft-365-copilot-chat" target="_blank">Learn more.</a>

## January 7, 2025

Updates released between December 18, 2024, and January 7, 2025.
### Microsoft 365 Copilot

- **Access Copilot Prompt Gallery in Word and PowerPoint mobile apps** [Android, iOS]  

  Discover and use suggested Copilot prompts in Prompt Gallery within the Word and PowerPoint apps on iOS and Android. Enhance your productivity on the go with helpful AI suggestions.

### Outlook

- **Switch between Work and Web grounding in Microsoft 365 Copilot Chat** [Android, iOS]  

  In Outlook mobile apps, you can now toggle between Microsoft 365 Graph (Work) and Web grounding in Microsoft 365 Copilot Chat. Choose the grounding source that best suits your needs for more personalized assistance.

### Viva Insights

- **New metrics for enterprise data-protected prompts** [Windows, Web, Android, iOS, Mac]  

  Gain visibility into prompts submitted through Microsoft 365 Copilot Chat (web) and enterprise data-protected Copilot scenarios. <a href="/viva/insights/advanced/reference/metrics#microsoft-365-copilot-metrics" target="_blank">Learn more.</a>

## December 17, 2024

### Viva Pulse

- **Templates for Copilot readiness, adoption and impact** [Windows, Web, Android, iOS, Mac]  

  Use new templates to measure employee sentiment and assess your organization's Copilot adoption—all within your Viva Pulse subscription.

## November, 2024

### Microsoft 365 Copilot Chat

- **Focus Copilot responses on specific emails in Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Narrow down Copilot responses by specifying a particular email folder, sub-folder, or subject line. Get more precise assistance by directing Copilot to the emails that matter most to you.

### Microsoft Teams

- **Disable Copilot in meetings** [Windows, Android, iOS, Mac]  

  You can now turn Copilot off in your meeting settings. Copilot, recording, and transcription are disabled for meetings where Copilot is off. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

## October, 2024

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 12 additional languages across all features: Bulgarian, Croatian, Estonian, Greek, Indonesian, Latvian, Lithuanian, Romanian, Serbian (Latin), Slovak, Slovenian, and Vietnamese. Microsoft 365 Copilot also improved the handling of language variants: Dutch (Belgium), German (Switzerland), English (UK), Spanish (Mexico), and French (Canada). <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Empower meeting organizers to adjust Copilot availability** [Windows, Android, iOS, Mac]  

  Admins can now set Copilot in Teams meetings to  'During and After Meeting' and allow meeting organizers to change it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Outlook

- **Rewrite selected text in emails using Copilot** [Windows, Web, Android, iOS, Mac]  

  Select specific parts of your drafted email and ask Copilot in new Outlook to rewrite it or provide more information to rewrite it. Provide detailed instructions or adjust the tone and length to suit your needs.

## September, 2024

### Microsoft 365 Copilot Chat

- **Access Microsoft 365 Copilot Chat work mode in Microsoft 365 app on mobile** [Android, iOS]  

  Ground your Copilot conversations in your work content with Microsoft 365 Copilot Chat in the Microsoft 365 app.

### Outlook

- **Instantly apply coaching suggestions from Copilot to your emails** [Web, Android, iOS, Mac]  

  Improve your email writing with Coaching by Copilot in new Outlook. Request a full rewrite based on Copilot's feedback or apply the suggestions with a single click. <a href="https://support.microsoft.com/topic/91a3cd56-1586-4a31-85c7-2eb8cdb02405" target="_blank">Learn more.</a>

## August, 2024

### Microsoft 365 Copilot

- **Copilot Prompt Gallery is now available on iOS and Android** [Android, iOS]  

  Explore and use suggested prompts in Copilot Prompt Gallery within the Teams app on iOS and Android. Stay productive with ready-made prompts to use on the go.

### Microsoft Teams

- **Copilot summarizes content over specified time periods** [Windows, Android, iOS, Mac]  

  Copilot can now identify and summarize information over specific time periods, responding accurately to queries like "yesterday," "last month," or "last year." <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c" target="_blank">Learn more.</a>

- **Linked files in Copilot replies** [Windows, Android, iOS, Mac]  

  We have optimized Copilot in Microsoft Teams to include linked files in Copilot answers for quicker and more reliable retrieval of files and links, making your experience smoother and more efficient.


### Outlook

- **Microsoft 365 Copilot Chat in Outlook Mobile** [Android, iOS]  

  The Microsoft 365 Copilot Chat experience is now available in Outlook for iOS and Android. Enhance your mobile email experience with AI-powered assistance on the go.

### Viva Insights

- **Analyze Copilot impact over time** [Windows, Web, Android, iOS, Mac]  

  View trendlines of key productivity metrics over 6 months and estimate the financial value of Copilot-assisted hours. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact" target="_blank">Learn more.</a>

## July, 2024

### Viva Insights

- **Microsoft Copilot Dashboard powered by Viva Insights** [Windows, Web, Android, iOS, Mac]  

  The Microsoft Copilot Dashboard available to all Microsoft 365 Copilot customers at no extra cost. Access it via the Viva Insights app to monitor Copilot adoption and impact. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

## June, 2024

### Microsoft Teams

- **Admins can enforce Copilot during and after meetings** [Windows, Android, iOS, Mac]  

  Admins can set Copilot in Teams meetings to  'During and After Meeting' and prevent meeting organizers from changing it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

- **Control access to recordings and transcripts** [Windows, Android, iOS, Mac]  

  Introducing new meeting settings that allow you to control who can access recordings, transcripts, and prompt Copilot. Enhance your meeting security and privacy with these granular controls.

## May, 2024

### Microsoft Teams

- **Copilot notification in unrecorded meetings** [Windows, Android, iOS, Mac]  

  When Copilot is started in a meeting that isn't being recorded, every participant is notified that Copilot is active.



### Outlook

- **Microsoft 365 Copilot Chat available in new Outlook for Windows and web** [Windows, Web, Android, iOS]  

  Access the power of Microsoft 365 Copilot Chat directly within Outlook  on the web and the new Outlook for Windows. Access Microsoft 365 Copilot Chat through the left app bar.

## April, 2024

### Microsoft 365 Copilot Chat

- **Microsoft 365 Copilot Chat now available in the Microsoft 365 app** [Android, iOS]  

  Microsoft 365 mobile app users with a Microsoft 365 Copilot license can receive answers grounded in their organizational Graph data, enhancing mobile productivity.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 17 additional languages across all features: Arabic, Chinese (Traditional), Czech, Danish, Dutch, Finnish, Hebrew, Hungarian, Korean, Norwegian (Bokmal), Polish, Portuguese (Portugal), Russian, Swedish, Thai, Turkish, and Ukrainian. <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot understands previous conversations in chats and channels** [Windows, Android, iOS, Mac]  

  When you ask follow-up questions in chats or channels, Copilot now has context from past interactions to provide more accurate answers.

## March, 2024

### Microsoft 365 Copilot Chat

- **Rich entity representations in Copilot responses** [Windows, Web, Android, iOS, Mac]  

  Copilot now provides richer representations of entities like people, events, and files within responses, enhancing context and usability.

### Microsoft Teams

- **Customize your draft message when you compose with Copilot** [Windows, Android, iOS, Mac]  

  You can now instruct Copilot to adjust your draft message however you'd like. Adjust the message with a custom prompt, like "add a call to action" or "/make it persuasive". <a href="https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7" target="_blank">Learn more.</a>


- **Enhanced Copilot UI with new date dividers** [Windows, Android, iOS, Mac]  

  We have improved the Copilot user interface with new date dividers for chats, channels, and meeting Copilot.



## November, 2023

### Microsoft Teams

- **Copilot available in a channel post conversation** [Windows, Web, Android, iOS, Mac]  

  Copilot can summarize and support Q&A on a channel post conversation, assisting you directly in your channel conversations.

- **Copilot to summarize and answer Q&A in Teams Chat** [Windows, Web, Android, iOS, Mac]  

  Copilot helps you catch up on conversations by providing summaries and answering questions in Teams chats.

- **Use Copilot in meetings, 1:1 and group calls** [Windows, Web, Android, iOS, Mac]  

  Get summaries, action items, and more after meetings and calls through Copilot in the side panel.

### Outlook

- **Compose emails effortlessly on Outlook for Android and iOS** [Android, iOS]  

  Provide a prompt and generate a full email. Customize the tone and length to suit your needs, streamlining your email writing process. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get Coaching from Copilot for an email draft in new Outlook** [Web, Android, iOS, Mac]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Summarize email conversations on Outlook for Android and iOS** [Android, iOS]  

  Quickly get summaries of entire email threads, helping you catch up on conversations efficiently. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

### Whiteboard

- **Generate ideas effortlessly** [Windows, Web, Android, iOS]  

  Brainstorm by generating short text ideas, fueling your creativity during collaborative sessions.

- **Organize your ideas into themes** [Windows, Web, Android, iOS]  

  Categorize and group your ideas into themes, helping you visualize and structure your brainstorming sessions.

- **Summarize your Whiteboard sessions** [Windows, Web, Android, iOS]  

  Create summaries of your Whiteboard content, capturing key points from your collaborative work.

## [iOS](#tab/appleios)
<!-- 94703 -->
## July 8, 2025
Updates released between June 24, 2025, and July 8, 2025.
### Viva Connections
- **New News feature in Microsoft Teams** [Android, Windows, iOS, Web]

  This update replaces the current Feed experience in Viva Connections across desktop, mobile, and web platforms with a SharePoint News reader experience. This new experience presents SharePoint news from organizational sites, boosted news, users' followed sites, frequent sites, and people they work with in an immersive reader format. It includes a Copilot-powered news summary as well, available only in Teams for Windows desktop in this initial release.
 <a href="https://techcommunity.microsoft.com/blog/viva_connections_blog/introducing-enterprise-news-reader-in-viva-connections/4383832" target="_blank">Learn more.</a>

<!-- 98006 -->
## June 24, 2025
Updates released between June 10, 2025, and June 24, 2025.
### Excel
- **Use Copilot with any table in the workbook, referring by natural language** [iOS, Web, Mac, Windows]

  Copilot uses the context of your prompt to pick what selection of data to answer about and reason over, including tables in other sheets.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/smarter-context-awareness-for-copilot-in-excel/4424939" target="_blank">Learn more.</a>

<!-- 97647,97288,96951,84642,72079 -->
## June 10, 2025
Updates released between May 29, 2025, and June 10, 2025.
### Microsoft Loop
- **Copilot Pages module on Microsoft 365 Copilot mobile app** [iOS]

  With the Copilot Pages module in the Microsoft 365 Copilot app on your mobile, you can now access all of your Pages in one place on the go.
 <a href="https://support.microsoft.com/topic/create-edit-and-share-microsoft-365-copilot-pages-from-your-phone-6426dfd5-081c-4a9f-b35e-830685deeda7" target="_blank">Learn more.</a>
- **Create Copilot Pages from Copilot Chat on your mobile phone** [iOS]

  Create Copilot Pages on your mobile phone to continue working on the go. Pages shared in Microsoft 365 are interactive and automatically synchronized for seamless collaboration.
 <a href="https://support.microsoft.com/en-us/topic/create-edit-and-share-microsoft-365-copilot-pages-from-your-phone-6426dfd5-081c-4a9f-b35e-830685deeda7" target="_blank">Learn more.</a>
### Outlook
- **Custom Instructions for draft with Copilot** [Android, Windows, iOS, Mac, Web]

  Give Copilot some instructions about your emails - like the tone, length, greeting - so your Copilot generated drafts sound more like you want them to. #newoutlookforwindow
- **Schedule a meeting from an email with Copilot** [Android, Windows, iOS, Mac, Web]

  Turn any email thread into a meeting in one click. Copilot builds a complete invite for your review —title, agenda, attendee list, and a summary of the email conversation—plus attaches the original email thread so everyone is up to speed. Available in the new Outlook for Windows, web, Mac, and mobile. #newoutlookforwindows
 <a href="https://support.microsoft.com/office/create-a-meeting-and-agenda-with-copilot-in-outlook-31a44dfa-62bb-4751-82c4-14327a26759f" target="_blank">Learn more.</a>
### Teams
- **Microsoft Teams: Intelligent recap support for ad-hoc meetings and calls in GCC High** [Android, Windows, iOS, Mac, Web]

  Intelligent meeting recap is now available in GCC High for impromptu calls and meetings, like those started from ‘Meet now’ and calls started from chat. You can easily browse the recording by speakers and topics, as well as access AI-generated notes, AI-generated tasks, and name mentions after the ad-hoc meeting ends. This capability is available for users with a Teams Premium or M365 Copilot license.

<!-- 98521,97225 -->
## May 13, 2025
Updates released between April 29, 2025, and May 13, 2025.
### Excel
- **Ask Copilot about any part of your sheet** [Web, Mac, Windows, iOS]

  When you ask questions about your worksheet, Copilot can look at the content of your sheet and use it to inform an answer to your question. This will include understanding worksheet data on your selected area, beyond tables and ranges, and provide Copilot answers in chat.
### Microsoft 365 Copilot Chat
- **Image generation in mobile Copilot chat** [Android, iOS]

  Create images using natural language to visualize concepts and ideas within the flow of work, directly in Copilot on Microsoft 365, Teams, and Outlook mobile apps.

## April 2, 2025
Updates released between March 20, 2025, and April 2, 2025.
### Microsoft 365 Copilot Chat
- **Ask questions about images with natural language** [Android, iOS, Web]

  Easily gain insights from images by asking natural language questions. Upload images for quick analysis using advanced vision models—helping you make sense of visual data across your apps.
### Word
- **Narrate your ideas to Copilot** [iOS]

  Brainstorm out loud and let Copilot convert your voice notes into structured documents, making it easier to organize and develop your ideas.
- **Rewrite with Copilot** [iOS]

  Get suggestions from Copilot on how to rewrite any text, helping you improve clarity and style effortlessly.
- **Visualize as table** [iOS]

  Easily convert plain text into structured tables, helping you organize and present data more effectively in your daily work.

## March 19, 2025

Updates released between March 5, 2025, and March 19, 2025.
### Microsoft 365 Copilot App

- **View, edit and share Copilot Pages on mobile** [Android, iOS]  

  Stay productive while on the go—use the Microsoft 365 mobile app to view, edit, or share Copilot-generated pages instantly. Collaborate with colleagues in real time, whether you’re commuting or between meetings. <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>

## March 4, 2025

Updates released between February 20, 2025, and March 4, 2025. 

### Microsoft 365 Copilot Chat

- **Search archived mailboxes in Copilot Chat** [Windows, Web, Android, iOS, Mac]    

  Leverage Copilot to search emails across both primary and archived mailboxes by appending 'from my archives' or 'also look for emails in my archives' in your prompts to quickly locate key messages.

### Microsoft 365 Copilot App

- **View, edit and share Copilot Pages on mobile** [iOS]  

  Stay productive no matter where you are. With mobile access to Copilot Pages, you can view, edit, and share content on the go, ensuring seamless collaboration with colleagues. <a href="https://support.microsoft.com/topic/introducing-microsoft-365-copilot-pages-6674bd51-9ff5-42c4-9256-44d9428a726f" target="_blank">Learn more.</a>

## February 19, 2025

Updates released between February 5, 2025, and February 19, 2025. 

<!--- All features that have 'iOS' tag  -->


### Microsoft Teams

- **AI-enabled file summaries on mobile** [Android, iOS]  

  Summarize Word, PowerPoint, and PDF files on mobile by tapping the summary icon or selecting “Summarize with Copilot” for a quick, digestible overview—even on small screens.

### Viva Insights

- **Copilot dashboard for usage and retention insights** [Windows, Web, Android, iOS, Mac]  

  Dive into usage frequency, compare top user groups, and track retention metrics—all in a single, comprehensive dashboard for actionable insights. <a href="/viva/insights/org-team-insights/copilot-dashboard#interpreting-the-data" target="_blank">Learn more.</a>

<!--- All features that have 'iOS' tag  -->

## February 4, 2025

Updates released between January 24, 2025, and February 4, 2025. 

### Microsoft 365 Copilot App

- **Updates to the Microsoft 365 (Office) app** [Windows, Web, Android, iOS]  

  The Microsoft 365 Copilot app (formerly Microsoft 365 app) has a new name and icon. <a href="https://support.microsoft.com/office/the-microsoft-365-app-transition-to-the-microsoft-365-copilot-app-22eac811-08d6-4df3-92dd-77f193e354a5" target="_blank">Learn more.</a>

### Microsoft 365 Copilot Chat

- **Access support pages in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  View organizational support pages directly within Copilot Chat, for quick help and guidance in your workflow.

- **Accommodate user’s time zones in Copilot** [Windows, Web, Android, iOS]  

  Copilot now references your local time zone when responding helping to avoid confusion and scheduling errors.

### Word

- **Draft from selected text, lists, or tables** [iOS]  

  Generate new content right where you work by selecting text, lists, or tables and tapping into Copilot’s on-canvas menu. Quickly refine drafts and collaborate more interactively. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/draft-with-copilot-in-word-on-a-selection-of-text-a-list-or-a-table/4191926" target="_blank">Learn more.</a>

- **Draft with Copilot** [iOS]  

  Quickly produce paragraphs or entire sections for your documents, whether you’re creating a brand-new file or adding to existing text. <a href="https://support.microsoft.com/office/draft-and-add-content-with-copilot-in-word-069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>


## January 23, 2025

Updates released between January 8, 2025, and January 23, 2025.

### Microsoft 365 Copilot Chat

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS]  

  Microsoft 365 Copilot Chat—free, secure AI chat powered by GPT-4o with agents accessible right in chat, and IT controls including enterprise data protection and agent management. Copilot Chat serves as a powerful new on-ramp for everyone in your organization to build an AI habit. Get started with Copilot Chat with the updated <a href="https://www.m365copilot.com" target="_blank">Microsoft 365 Copilot app</a> (formerly Microsoft 365 app). <a href="https://www.microsoft.com/microsoft-365/blog/2025/01/15/copilot-for-all-introducing-microsoft-365-copilot-chat" target="_blank">Learn more.</a>

### Viva Insights

- **New Copilot adoption metrics and completing total actions taken** [Windows, iOS, Mac]  

  This adds seven new Copilot adoption metrics to the Copilot dashboard and Viva Insights Advanced insights. It also updates the "total actions taken" metric in the Copilot dashboard to include these new Copilot adoption metrics. <a href="https://techcommunity.microsoft.com/blog/viva_insights_blog/new-microsoft-copilot-analytics-features-now-available-%E2%80%93-novemberdecember-2024/4356206" target="_blank">Learn more.</a>

## January 7, 2025

Updates released between December 18, 2024, and January 7, 2025.

### Microsoft 365 Copilot

- **Access Copilot Prompt Gallery in Word and PowerPoint mobile apps** [Android, iOS]  

  Discover and use suggested Copilot prompts in Prompt Gallery within the Word and PowerPoint apps on iOS and Android. Enhance your productivity on the go with helpful AI suggestions.

### Outlook

- **Switch between Work and Web grounding in Microsoft 365 Copilot Chat** [Android, iOS]  

  In Outlook mobile apps, you can now toggle between Microsoft 365 Graph (Work) and Web grounding in Microsoft 365 Copilot Chat. Choose the grounding source that best suits your needs for more personalized assistance.

### Viva Insights

- **Expand your understanding of Copilot adoption with enhanced metrics** [Windows, iOS, Mac]  

  Access seven new Copilot metrics and see them reflected in "total actions taken," helping you better track how teams use Copilot. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-adoption" target="_blank">Learn more.</a>

- **New metrics for enterprise data-protected prompts** [Windows, Web, Android, iOS, Mac]  

  Gain visibility into prompts submitted through Microsoft 365 Copilot Chat (web) and enterprise data-protected Copilot scenarios. <a href="/viva/insights/advanced/reference/metrics#microsoft-365-copilot-metrics" target="_blank">Learn more.</a>

## December, 2024

### Viva Pulse

- **Templates for Copilot readiness, adoption and impact** [Windows, Web, Android, iOS, Mac]  

  Use new templates to measure employee sentiment and assess your organization's Copilot adoption—all within your Viva Pulse subscription.

## November, 2024

### Microsoft 365 Copilot Chat

- **Focus Copilot responses on specific emails in Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Narrow down Copilot responses by specifying a particular email folder, sub-folder, or subject line. Get more precise assistance by directing Copilot to the emails that matter most to you.

### Microsoft 365 Copilot

- **Copilot Prompt Gallery available in Word and PowerPoint on iOS** [iOS]  

  Use suggested prompts directly from your Word and PowerPoint apps on iOS to spark creativity and streamline your workflow.

### Microsoft Teams

- **Disable Copilot in meetings** [Windows, Android, iOS, Mac]  

  You can now turn Copilot off in your meeting settings. Copilot, recording, and transcription are disabled for meetings where Copilot is off. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

## October, 2024

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 12 additional languages across all features: Bulgarian, Croatian, Estonian, Greek, Indonesian, Latvian, Lithuanian, Romanian, Serbian (Latin), Slovak, Slovenian, and Vietnamese. Microsoft 365 Copilot also improved the handling of language variants: Dutch (Belgium), German (Switzerland), English (UK), Spanish (Mexico), and French (Canada). <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Empower meeting organizers to adjust Copilot availability** [Windows, Android, iOS, Mac]  

  Admins can now set Copilot in Teams meetings to  'During and After Meeting' and allow meeting organizers to change it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Outlook

- **Rewrite selected text in emails using Copilot** [Windows, Web, Android, iOS, Mac]  

  Select specific parts of your drafted email and ask Copilot in new Outlook to rewrite it or provide more information to rewrite it. Provide detailed instructions or adjust the tone and length to suit your needs.

### Viva Insights

- **New Microsoft 365 Copilot Chat prompts submitted through Teams** [Windows, iOS, Mac]  

  Adding new Microsoft 365 Copilot Chat prompts submitted through Teams metric to Copilot dashboard and Viva Insights Advanced insights.

## September, 2024

### Microsoft 365 Copilot Chat

- **Access Microsoft 365 Copilot Chat work mode in Microsoft 365 app on mobile** [Android, iOS]  

  Ground your Copilot conversations in your work content with Microsoft 365 Copilot Chat in the Microsoft 365 app.

### Excel

- **Copilot in Excel is generally available** [Windows, Web, iOS, Mac]  

  Copilot in Excel, now no longer in Preview but Generally Available, works alongside you to analyze and explore your data, answering questions in natural language and revealing insights without the need for complex formulas. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

### Outlook

- **Instantly apply coaching suggestions from Copilot to your emails** [Web, Android, iOS, Mac]  

  Improve your email writing with Coaching by Copilot in new Outlook. Request a full rewrite based on Copilot's feedback or apply the suggestions with a single click. <a href="https://support.microsoft.com/topic/91a3cd56-1586-4a31-85c7-2eb8cdb02405" target="_blank">Learn more.</a>

### Word

- **Reference up to 10 Items when drafting with Copilot** [Web, iOS]  

  Expand your drafting capabilities by referencing up to 10 items—such as files, emails, and meetings—when using Copilot in Word. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

## August, 2024

### Microsoft 365 Copilot

- **Copilot Prompt Gallery is now available on iOS and Android** [Android, iOS]  

  Explore and use suggested prompts in Copilot Prompt Gallery within the Teams app on iOS and Android. Stay productive with ready-made prompts to use on the go.

### Excel

- **Custom chart and PivotTable creation** [Windows, Web, iOS, Mac]  

  You can now ask Copilot for more specific charts and PivotTables, including specifying the X and Y axes. Customize your data presentations more precisely.

- **Formula data summaries from columns** [Windows, Web, iOS, Mac]  

  Add a single formula to summarize column data into one cell. This feature allows you to calculate data across columns and return a single result, simplifying data analysis.

- **Suggest conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Ask Copilot to suggest conditional formatting for your data. Receive a list of prompts that might highlight key insights in your data.

- **Summarize text columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can analyze columns of text to provide summaries, such as identifying main themes in survey responses. Understand your text data more effectively.

### Microsoft Teams

- **Copilot summarizes content over specified time periods** [Windows, Android, iOS, Mac]  

  Copilot can now identify and summarize information over specific time periods, responding accurately to queries like "yesterday," "last month," or "last year." <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c" target="_blank">Learn more.</a>

- **Linked files in Copilot replies** [Windows, Android, iOS, Mac]  

  We have optimized Copilot in Microsoft Teams to include linked files in Copilot answers for quicker and more reliable retrieval of files and links, making your experience smoother and more efficient.


### Outlook

- **Microsoft 365 Copilot Chat in Outlook Mobile** [Android, iOS]  

  The Microsoft 365 Copilot Chat experience is now available in Outlook for iOS and Android. Enhance your mobile email experience with AI-powered assistance on the go.

### PowerPoint

- **Build your story with Narrative Builder** [Windows, Web, iOS, Mac]  

  Copilot helps you form your narrative and turns it into a fully designed presentation, streamlining the creative process.

- **Improved presentation summary richness** [Windows, Web, iOS, Mac]  

  Copilot now leverages the latest GPT models to provide richer summaries when generating presentations, enhancing the quality of your content.

### Viva Insights

- **Analyze Copilot impact over time** [Windows, Web, Android, iOS, Mac]  

  View trendlines of key productivity metrics over 6 months and estimate the financial value of Copilot-assisted hours. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact" target="_blank">Learn more.</a>

### Word

- **Document Summaries in Microsoft 365 Mobile App Previews** [iOS]  

  Copilot generates summaries of files that you can view in the file browser of the Microsoft 365 mobile app, helping you understand content without opening the file.

## July, 2024

### Excel

- **Advanced conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Copilot now supports complex conditional formatting, such as highlighting rows based on multiple criteria. Enhance your data visualization with more formulaic formatting options.

- **Improved data insights in Copilot** [Windows, Web, iOS, Mac]  

  Copilot is now better at answering questions about data insights like trends and correlations. Get more meaningful analysis to make informed decisions.

- **Preview and apply changes suggested by Copilot** [Windows, Web, iOS, Mac]  

  Before Copilot makes changes to your Excel data, you'll now receive a description and an "Apply" button. This gives you more control over your data and allows for refinements before applying changes.

- **Preview conditional formatting rules** [Windows, Web, iOS, Mac]  

  When setting a conditional formatting rule, Copilot's response will include a preview of the style and an explanation of the formula. This helps you understand and apply formatting more confidently.

- **Support for data ranges resembling tables** [Windows, Web, iOS, Mac]  

  Copilot can now reason over data ranges with a single row of headers, even if they aren't formatted as formal tables. This makes data analysis more flexible.

### PowerPoint

- **Create presentations from encrypted Word documents** [Windows, Web, iOS, Mac]  

  Copilot for PowerPoint can now create presentations using Word documents that have a protected sensitivity label, expanding your content creation options securely.

- **Easier access to Copilot in PowerPoint** [Windows, Web, iOS, Mac]  

  Access Copilot in PowerPoint more easily with new on-canvas entry points. Start enhancing your presentations with AI assistance in fewer clicks.

### Viva Insights

- **Microsoft Copilot Dashboard powered by Viva Insights** [Windows, Web, Android, iOS, Mac]  

  The Microsoft Copilot Dashboard available to all Microsoft 365 Copilot customers at no extra cost. Access it via the Viva Insights app to monitor Copilot adoption and impact. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

### Word

- **Summarize longer documents in chat** [Windows, Web, iOS, Mac]  

  Copilot in Word can now summarize longer documents, with the upper limit increased to about four times more words (approx. 80k words). Get comprehensive overviews of lengthy content.

## June, 2024

### Excel

- **Copilot works on any selection in Excel** [Windows, Web, iOS, Mac]  

  Copilot now enables the edit box on any worksheet, regardless of selection. It intelligently finds the nearest table or data range for your analysis queries, making data manipulation more flexible.

### Microsoft Teams

- **Admins can enforce Copilot during and after meetings** [Windows, Android, iOS, Mac]  

  Admins can set Copilot in Teams meetings to  'During and After Meeting' and prevent meeting organizers from changing it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

- **Control access to recordings and transcripts** [Windows, Android, iOS, Mac]  

  Introducing new meeting settings that allow you to control who can access recordings, transcripts, and prompt Copilot. Enhance your meeting security and privacy with these granular controls.

### PowerPoint

- **Copilot adds transitions and animations automatically** [Windows, Web, iOS, Mac]  

  When creating presentations from prompts or files, Copilot will now automatically add transitions and animations. This enhancement brings your slides to life without extra effort.

- **Create presentations from PDF files with Copilot** [Windows, Web, iOS]  

  You can now generate PowerPoint presentations directly from PDF files using Copilot. This feature simplifies the process of turning documents into engaging presentations.

- **Improved content when creating presentations from prompts** [Windows, Web, iOS, Mac]  

  Experience increased depth and richness of content when you create a presentation from a prompt. Copilot now provides better formatting and more detailed slides to enhance your presentations.

### Word

- **Use a url to reference supported files in Copilot in Word** [iOS]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

- **Visualize as table** [iOS]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling.

## May, 2024

### Microsoft Teams

- **Copilot notification in unrecorded meetings** [Windows, Android, iOS, Mac]  

  When Copilot is started in a meeting that is not being recorded, every participant is notified that Copilot is active.

### Outlook

- **Microsoft 365 Copilot Chat available in new Outlook for Windows and web** [Windows, Web, Android, iOS]  

  Access the power of Microsoft 365 Copilot Chat directly within Outlook  on the web and the new Outlook for Windows. Access Microsoft 365 Copilot Chat through the left app bar.

## April, 2024

### Microsoft 365 Copilot Chat

- **Microsoft 365 Copilot Chat now available in the Microsoft 365 app** [Android, iOS]  

  Microsoft 365 mobile app users with a Microsoft 365 Copilot license can receive answers grounded in their organizational Graph data, enhancing mobile productivity.

### Excel

- **Create Formula Columns Using Data from Multiple Tables** [Windows, Web, iOS, Mac]  

  Support for functions like XLOOKUP and SUMIF allows you to create formula columns that utilize data across multiple tables.

- **Generate multiple formula columns with a single prompt** [Windows, Web, iOS, Mac]  

  Use Copilot in Excel to create several formula-based columns at once. For example, ask Copilot to split a full name into first and last name columns, and watch it generate both formulas in one go.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 17 additional languages across all features: Arabic, Chinese (Traditional), Czech, Danish, Dutch, Finnish, Hebrew, Hungarian, Korean, Norwegian (Bokmal), Polish, Portuguese (Portugal), Russian, Swedish, Thai, Turkish, and Ukrainian. <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot understands previous conversations in chats and channels** [Windows, Android, iOS, Mac]  

  When you ask follow-up questions in chats or channels, Copilot now has context from past interactions to provide more accurate answers.

## March, 2024

### Microsoft 365 Copilot Chat

- **Rich entity representations in Copilot responses** [Windows, Web, Android, iOS, Mac]  

  Copilot now provides richer representations of entities like people, events, and files within responses, enhancing context and usability.

### Excel

- **Speak to Copilot in Excel with new input methods** [Windows, Web, iOS, Mac]  

  You can now use your microphone to send prompts to Copilot in Excel, and explore the Prompt Guide for customized suggestions.

### Microsoft Teams

- **Customize your draft message when you compose with Copilot** [Windows, Android, iOS, Mac]  

  You can now instruct Copilot to adjust your draft message however you'd like. Adjust the message with a custom prompt, like "add a call to action" or "/make it persuasive". <a href="https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7" target="_blank">Learn more.</a>


- **Enhanced Copilot UI with new date dividers** [Windows, Android, iOS, Mac]  

  We have improved the Copilot user interface with new date dividers for chats, channels, and meeting Copilot.


## February, 2024

### Word

- **Summarize your document using chat prompts** [iOS]  

  Ask via chat to summarize your document, highlighting key points for quick understanding and review.

## January, 2024

### Excel

- **Enjoy conversational Copilot in Excel** [Windows, Web, iOS, Mac]  

  Copilot in Excel now remembers the context of your chats, allowing for follow-up questions and clarifications for a smoother experience.

### Word

- **Get answers and enhance content with chat in Word** [iOS]  

  Ask specific questions about your document or request additional details to enhance your content, making your writing process more efficient.

## November, 2023

### Excel

- **Add formula columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot provides formula suggestions with explanations, helping you create new columns based on your data. <a href="https://support.microsoft.com/topic/d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>

- **Generate data insights with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can suggest insights like summaries, trends, and outliers, returning results as charts or PivotTables to enhance your analysis. <a href="https://support.microsoft.com/topic/52d97339-86c0-431c-b46c-e7b07b2898dd" target="_blank">Learn more.</a>

- **Use Copilot to highlight, filter, and sort data in Excel tables** [Windows, Web, iOS, Mac]  

  Transform your data by asking Copilot to format your Excel tables. You can highlight top values, filter specific entries, or sort data. For example, ask Copilot to highlight the top 3 values in a column, and it will apply conditional formatting. <a href="https://support.microsoft.com/topic/05302e3f-de42-4475-b235-be9cb3d4e936" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot available in a channel post conversation** [Windows, Web, Android, iOS, Mac]  

  Copilot can summarize and support Q&A on a channel post conversation, assisting you directly in your channel conversations.

- **Copilot to summarize and answer Q&A in Teams Chat** [Windows, Web, Android, iOS, Mac]  

  Copilot helps you catch up on conversations by providing summaries and answering questions in Teams chats.

- **Use Copilot in meetings, 1:1 and group calls** [Windows, Web, Android, iOS, Mac]  

  Get summaries, action items, and more after meetings and calls through Copilot in the side panel.

### Outlook

- **Compose emails effortlessly on Outlook for Android and iOS** [Android, iOS]  

  Provide a prompt and generate a full email. Customize the tone and length to suit your needs, streamlining your email writing process. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get Coaching from Copilot for an email draft in new Outlook** [Web, Android, iOS, Mac]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Summarize email conversations on Outlook for Android and iOS** [Android, iOS]  

  Quickly get summaries of entire email threads, helping you catch up on conversations efficiently. <a href="https://support.microsoft.com/topic/a79873f2-396b-46dc-b852-7fe5947ab640" target="_blank">Learn more.</a>

### PowerPoint

- **Automatically add an agenda slide to your presentation** [Windows, Web, iOS, Mac]  

  Generate and insert an agenda slide based on your existing content, helping you prepare your audience for what's ahead.

- **Convert Word documents into presentations** [Windows, iOS, Mac]  

  Transform your Word documents into fully designed PowerPoint presentations, simplifying the creation process. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create a presentation from a simple prompt** [Windows, Web, iOS, Mac]  

  Provide a prompt and Copilot will help you generate a presentation, saving you time and effort <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create presentations using your organization's templates** [Windows, Web, iOS, Mac]  

  Generate presentations that utilize your company's templates, ensuring consistency and alignment with your brand. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Edit your presentation in Copilot chat** [Windows, Web, iOS, Mac]  

  Add slides, add animations, or organize your presentation in Copilot chat, streamlining your editing process. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>

- **Get answers about your presentation** [Windows, Web, iOS, Mac]  

  Ask questions about your existing PowerPoint presentation to quickly retrieve information and insights.

- **Organize your presentation's flow easily** [Windows, Web, iOS, Mac]  

  Structure your slides, add sections, and insert an agenda slide to improve the overall flow of your presentation. <a href="https://support.microsoft.com/topic/a207eea3-7a56-4225-88f1-54dd37cdcf6a" target="_blank">Learn more.</a>

- **Summarize your presentation and identify key points** [Windows, Web, iOS, Mac]  

  Generate summaries, highlight key slides, and identify action items from your presentation, making it easier to review and share essential information. <a href="https://support.microsoft.com/topic/499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

### Whiteboard

- **Generate ideas effortlessly** [Windows, Web, Android, iOS]  

  Brainstorm by generating short text ideas, fueling your creativity during collaborative sessions.

- **Organize your ideas into themes** [Windows, Web, Android, iOS]  

  Categorize and group your ideas into themes, helping you visualize and structure your brainstorming sessions.

- **Summarize your Whiteboard sessions** [Windows, Web, Android, iOS]  

  Create summaries of your Whiteboard content, capturing key points from your collaborative work.

### Word

- **Apply highest sensitivity label to generated content** [Windows, Web, iOS, Mac]  

  Ensure your documents maintain appropriate confidentiality levels as labels are automatically updated when referencing files with higher sensitivity.

- **Draft with Copilot** [Windows, Web, iOS, Mac]  

  Draft new content for your blank or existing documents, helping you write faster and with ease. <a href="https://support.microsoft.com/topic/069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>

- **Rewrite with Copilot** [Windows, Web, iOS, Mac]  

  Get suggestions for how to rewrite any text in your document, enhancing clarity and effectiveness. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

## [Mac](#tab/mac)

<!-- 94586,83228,97391,95029,99774,84472 -->
## August 5, 2025
Updates released between July 22, 2025, and August 5, 2025.
### Copilot extensibility
- **Enhance agent builder with full screen mode** [Windows, Mac, Web]

  Enjoy an improved agent builder experience with a full-screen view that streamlines the process of creating and managing your agents.
 <a href="/microsoft-365-copilot/extensibility/copilot-studio-agent-builder-build" target="_blank">Learn more.</a>
### PowerPoint
- **Copilot uses enterprise assets hosted on SharePoint OAL when creating presentations now** [Mac, Windows, Web]

  Once you integrate your organization's assets into a Sharepoint OAL (Organization Asset Library) you will be able to create presentations with your organization's image.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
- **Copilot uses Enterprise assets hosted on Templafy when creating presentations now** [Mac, Windows, Web]

  Once you connect your asset library hosted with Templafy to Microsoft365 and Copilot, you will be able to create presentations with your organization's images.
 <a href="/sharepoint/connect-organizational-asset-libraries-to-copilot" target="_blank">Learn more.</a>
### Teams
- **Interpreter agent for seamless communication** [Windows, Mac]

  Interpreter Agent acts like an instant translator during your Teams meetings. It listens to the spoken language in a meeting and immediately translates it into another language in real-time. This allows participants who speak different languages to understand each other and collaborate more effectively without waiting. Whether you're holding a business meeting, customer calls, or project discussions, the AI interpreter in Teams ensures everyone can participate fully, enhancing communication and productivity across diverse teams. It supports 9 different languages: English, Italian, German, French, Portuguese (Brazil), Japanese, Spanish, Chinese (Mandarin), and Korean.
 <a href="https://support.microsoft.com/office/interpreter-in-microsoft-teams-meetings-c7efe2bb-535d-42ab-a5c4-d2d91619b46d" target="_blank">Learn more.</a>
- **Translated Intelligent meeting recap for multilingual meetings (Copilot and Teams Premium)** [Windows, Mac]

  Now, intelligent meeting recap supports multilingual meetings, ensuring you can easily catch up on key discussions even when multiple languages were spoken. After the meeting, your recap is automatically generated in the translation language you selected for live transcription and captions.
 <a href="https://support.microsoft.com/office/recap-in-microsoft-teams-c2e3a0fe-504f-4b2c-bf85-504938f110ef" target="_blank">Learn more.</a>
### Word
- **Use Writing suggestions to review content in Word** [Mac]

  Enhance your document content with AI-generated writing suggestion in the Copilot context menu. Get suggestions on logical structure, flow, and tone to make your documents more impactful.
 <a href="https://support.microsoft.com/topic/use-writing-suggestions-to-review-content-in-word-fa09c055-d623-4d20-954f-9b064a5a7c80" target="_blank">Learn more.</a>

<!-- 98124,78170,100044,98515 -->
## July 22, 2025
Updates released between July 8, 2025, and July 22, 2025.
### Microsoft 365 Copilot Chat
- **Researcher available in GA** [Windows, Mac, Web]

  The researcher agent is pre-installed in Copilot Chat for all worldwide users. Find it in the left navigation pane alongside other agents, giving you quick access to research tools as part of the Copilot Premium license.
 <a href="https://www.microsoft.com/microsoft-365/blog/2025/06/02/researcher-and-analyst-are-now-generally-available-in-microsoft-365-copilot/?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>
### PowerPoint
- **Microsoft 365 Copilot generates the new presentation in a new file when starting from an existing presentation** [Mac, Windows]

  Now, when creating a presentation using Microsoft 365 Copilot from an existing presentation using , it will create the new presentation in a new file without affecting the original presentation
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
- **Reference multiple files in your presentation creation using Microsoft 365 Copilot** [Windows, Mac, Web]

  Enhance your PowerPoint presentations by referencing up to five files with Microsoft 365 Copilot, making it easier to incorporate detailed insights and comprehensive data without switching contexts.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Word
- **Easily write a prompt or choose quick actions from the Copilot icon in your Word doc** [Mac, Windows]

  The Copilot icon in your document margin makes it easy to quickly add a prompt or choose from a range of quick options Copilot can offer.
 <a href="https://www.microsoft.com/microsoft-365-life-hacks/everyday-ai/how-to-use-copilot-in-microsoft-word?msockid=2484525e9a9b66d4330b47329bb667c9" target="_blank">Learn more.</a>

<!-- 77803,99334,79744,64005 -->
## July 8, 2025
Updates released between June 24, 2025, and July 8, 2025.
### Excel
- **Copilot in Excel with Python | Reasoning Model Integration (Think Deeper)** [Mac, Windows, Web]

  While performing advanced analysis with Copilot in Excel with Python, users can choose the "Think Deeper" mode to get a more elaborate and detailed plan, followed by automatic execution to generate Python code, results, and explanations. This improves performance on complex asks by leveraging the power of the latest AI reasoning models.
 <a href="https://support.microsoft.com/office/364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
### Teams
- **Copilot in Meetings will suggest follow up questions to ask it** [Windows, Mac]

  When Copilot in Teams Meetings responds to a prompt, it will also suggest follow up prompts to ask Copilot that build on the prior response. These questions will generally be based on the response it gave prior, and could be related to honing in on a particular topic, asking for more details, or even reformatting the content into a table if appropriate.
 <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1" target="_blank">Learn more.</a>
### Word
- **Automatic summary of documents on file-open in Word** [Windows, Mac, Web]

  When users open a document, Copilot generates a summary in the Word window. You can hide the summary or open the Copilot chat pane to ask specific questions about the document.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
- **Kickstart your document with contextual prompts** [Mac]

  Copilot leverages your recent files and meetings to suggest contextual prompts, helping you quickly draft a new document for day-to-day tasks.

<!-- 98006,94070,83213,79335,97832,98196,97305,96368 -->
## June 24, 2025
Updates released between June 10, 2025, and June 24, 2025.
### Excel
- **Use Copilot with any table in the workbook, referring by natural language** [iOS, Web, Mac, Windows]

  Copilot uses the context of your prompt to pick what selection of data to answer about and reason over, including tables in other sheets.
 <a href="https://techcommunity.microsoft.com/blog/excelblog/smarter-context-awareness-for-copilot-in-excel/4424939" target="_blank">Learn more.</a>
### Microsoft 365 app
- **Use Copilot suggested prompts for recommended entities** [Windows, Mac, Web]

  Empower your work with a $30 Copilot license by clicking on curated prompts within recommended entities. Uncover key insights on demand—helping you boost productivity in everyday tasks.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/getting-the-most-from-the-copilot-prompt-gallery/4383106" target="_blank">Learn more.</a>
### Microsoft 365 Copilot Chat
- **Scheduled prompts** [Windows, Mac, Web, Teams]

  Plan ahead by scheduling essential prompts for repeated tasks in Copilot chat. Create a productive routine that helps you stay organized and efficient.
 <a href="/copilot/microsoft-365/scheduled-prompts" target="_blank">Learn more.</a>
### Outlook
- **Content language is the default summarize language** [Mac]

  When summarizing Copilot will try to identify the language of the email and summarize in that language.
 <a href="https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-outlook-07420c70-099e-4552-8522-7d426712917b?storagetype=live" target="_blank">Learn more.</a>
### PowerPoint
- **Create a PowerPoint slide from a file or prompt** [Web, Windows, Mac]

  Creating impactful slides can be challenging and time-consuming. Copilot helps you quickly turn your ideas and files into a fully designed slide with content ready to edit and refine, making the presentation creation and refinement process more personalized and efficient.
 <a href="https://support.microsoft.com/topic/add-a-slide-from-a-file-with-copilot-in-powerpoint-9034b581-38df-46be-a725-986cbbd4b5d4" target="_blank">Learn more.</a>
- **Designer is now part of Copilot, enhanced with new template and slide suggestions** [Mac, Windows, Web]

  Enjoy familiar Designer slide layouts and presentation template suggestions in a vertical gallery. Copilot now brings you enhanced suggestions to quickly build impactful presentations.
 <a href="https://support.microsoft.com/office/create-professional-slide-layouts-with-designer-53c77d7b-dc40-45c2-b684-81415eac0617" target="_blank">Learn more.</a>
- **Easily select a template while you create a new PowerPoint presentation with Copilot** [Mac, Web, Windows]

  When creating a new presentation with Copilot in PowerPoint, choose a template from your organization's collection for on-brand presentations, or select from Microsoft's handpicked templates, ensuring the new presentation is built as per your chosen template.
 <a href="https://support.microsoft.com/topic/keep-your-presentation-on-brand-with-copilot-046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>
- **Reference a PDF file when creating a presentation with Microsoft 365 Copilot** [Mac, Windows, Web]

  You can now reference a PDF file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

<!-- 97166,97372,97288,96951,81005,77194,72079,80341 -->
## June 10, 2025
Updates released between May 29, 2025, and June 10, 2025.
### Excel
- **Improvements to Copilot chat experience** [Windows, Web, Mac]

  Improvements to the Excel Copilot chat experience to give more consistent responses to all chat questions.
### Outlook
- **Custom Instructions for draft with Copilot** [Android, Windows, iOS, Mac, Web]

  Give Copilot some instructions about your emails - like the tone, length, greeting - so your Copilot generated drafts sound more like you want them to. #newoutlookforwindow
- **Schedule a meeting from an email with Copilot** [Android, Windows, iOS, Mac, Web]

  Turn any email thread into a meeting in one click. Copilot builds a complete invite for your review —title, agenda, attendee list, and a summary of the email conversation—plus attaches the original email thread so everyone is up to speed. Available in the new Outlook for Windows, web, Mac, and mobile. #newoutlookforwindows
 <a href="https://support.microsoft.com/office/create-a-meeting-and-agenda-with-copilot-in-outlook-31a44dfa-62bb-4751-82c4-14327a26759f" target="_blank">Learn more.</a>
### PowerPoint
- **Microsoft 365 Copilot Chat: Reference a TXT file when creating a presentation with Copilot** [Windows, Mac, Web]

  You can now reference a TXT file when you create a presentation with Copilot within the PowerPoint application.
 <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>
### Teams
- **Improvements to the transcription experience in meetings** [Windows, Mac]

  These updates enhance the transcription experience in meetings. When transcription, recording, or Copilot is enabled, users are prompted to choose the spoken language for accurate captions. Once transcription is running, only the organizer, co-organizers, and transcript initiator can change that language. A new settings page under Caption settings > Language settings > Meeting spoken language, along with a matching option under Transcript > Language settings, streamlines configuration. If someone speaks a language that doesn’t match the selected one, The organizer/co-organizer and initiator receives a mismatch notification so they can adjust quickly.
 <a href="https://support.microsoft.com/office/use-live-captions-in-microsoft-teams-meetings-4be2d304-f675-4b57-8347-cbd000a21260#:~:text=The%20meeting%20organizer%2C%20co%2Dorganizer(s)%2C%20transcript,Select%20Update%20to%20change." target="_blank">Learn more.</a>
- **Microsoft Teams: Intelligent recap support for ad-hoc meetings and calls in GCC High** [Android, Windows, iOS, Mac, Web]

  Intelligent meeting recap is now available in GCC High for impromptu calls and meetings, like those started from ‘Meet now’ and calls started from chat. You can easily browse the recording by speakers and topics, as well as access AI-generated notes, AI-generated tasks, and name mentions after the ad-hoc meeting ends. This capability is available for users with a Teams Premium or M365 Copilot license.
### Word
- **Draft content from up to 10 chosen references** [Mac, Windows]

  Type a forward slash (/) to pick as many as ten files, meetings, or emails for Copilot to cite while drafting your document. The release started with 10 chosen references but is expanding to support up to 20.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/expanding-reference-capabilities-with-microsoft-365-copilot-in-word/4406054" target="_blank">Learn more.</a>
- **Write a prompt for selected portions of text in Word** [Mac]

  Writing a prompt to draft content based on your selection no longer expands your selection to the entire paragraph, table, or list. You can prompt based on a single sentence or item.

<!-- 96718,99424,97439 -->
## May 29, 2025
Updates released between May 13, 2025, and May 29, 2025.
### Excel
- **Visual outline confirms Copilot's data range** [Mac]

  When you call on Copilot, Excel now draws a clear border around the table or cell range in focus. Instantly see exactly what data will be summarized, cleaned, or chart-ready—so you can adjust the selection before Copilot gets to work.
### PowerPoint
- **Ask Copilot to rewrite text as a list** [Web, Mac, Windows]

  Transform paragraphs into clear bullet points or lists with a single command—ideal for quickly organizing content when preparing your presentation.
 <a href="https://support.microsoft.com/topic/elevate-your-presentation-game-with-copilot-s-text-rewrite-feature-in-powerpoint-d70b140b-bb3f-46b7-be64-ceec526a8dcd" target="_blank">Learn more.</a>
### Word
- **Ask Copilot to analyze document visuals** [Mac]

  Add any image, chart, or diagram to your prompt and Copilot instantly extracts text, explains trends, suggests alt text, and surfaces quick insights—making documents more accessible and informative in seconds.

<!-- 97225,93931,83241 -->
## May 13, 2025
Updates released between April 29, 2025, and May 13, 2025.
### Excel
- **Ask Copilot about any part of your sheet** [Web, Mac, Windows, iOS]

  When you ask questions about your worksheet, Copilot can look at the content of your sheet and use it to inform an answer to your question. This will include understanding worksheet data on your selected area, beyond tables and ranges, and provide Copilot answers in chat.
### Microsoft 365 app
- **Copilot in Excel with Python for Mac** [Mac]

  Speak plain English and let Copilot write and run Python for forecasting, machine learning, and rich visuals—results land right on the grid in Excel for Mac.
 <a href="https://support.microsoft.com/office/copilot-in-excel-with-python-364e4ae9-9343-4d56-952a-5f62b0f70db6" target="_blank">Learn more.</a>
### PowerPoint
- **Suggestions for slide templates as you work** [Mac, Web]

  On PowerPoint for Mac, Copilot proposes design-ready layouts as soon as you insert a slide or start typing a title, helping you build polished decks faster.
 <a href="https://techcommunity.microsoft.com/blog/microsoft365insiderblog/jumpstart-your-presentations-with-slide-starters/4407669" target="_blank">Learn more.</a>
### Word
- **Choose the level of detail for summaries when documents are opened** [Windows, Mac, Web]

  Tailor each document opening with your preferred summary style—select brief, standard, or detailed insights to match your workflow.
 <a href="https://support.microsoft.com/office/create-a-summary-of-your-document-with-copilot-in-word-79bb7a0a-3bf7-41fe-8c09-56f855b669bf" target="_blank">Learn more.</a>
<!-- 78144,77902 -->
## April 29, 2025
Updates released between April 16, 2025, and April 29, 2025.
### Outlook
- **Chat with Copilot in Outlook for Mac** [Mac]

  The same Microsoft Copilot experience you can get in the Microsoft Teams app, at copilot.microsoft.com (work mode) and in other places is now available from within Microsoft Outlook for Mac. You can find the Copilot app in the left app bar.
 <a href="https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-outlook-07420c70-099e-4552-8522-7d426712917b" target="_blank">Learn more.</a>
### Word
- **Replace your selection with generated content** [Web, Mac, Windows]

  Selecting the Replace button lets you instantly replace your selected text with content that was generated in Draft with Copilot.

<!-- 76195,73845 -->
## April 16, 2025
Updates released between April 2, 2025, and April 16, 2025.
### Excel
- **Graph grounded chat** [Windows, Mac, Web]

  Ask Copilot in Excel for insights drawn from your chats, documents, meetings, and emails via Microsoft Graph—enhancing your workbook analysis with contextual organizational data.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>
- **Use Copilot to search for answers from the web** [Windows, Mac, Web]

  In Excel, simply ask Copilot to search the web for answers and integrate the insights directly into your workbook, making data analysis even smoother.
 <a href="https://support.microsoft.com/topic/use-copilot-to-find-data-from-the-web-or-your-organization-and-add-it-in-excel-7a72fb29-e623-49e2-9f7d-38664b593054" target="_blank">Learn more.</a>

## April 2, 2025
Updates released between March 20, 2025, and April 2, 2025.
### PowerPoint
- **Translate your presentation** [Windows, Web, Mac]

  Produce a translated copy of your entire presentation in about 40 languages while preserving your slide design and structure, making global collaboration effortless.
 <a href="https://support.microsoft.com/topic/translate-your-presentation-with-copilot-2c622fca-daaf-457c-bc74-f3496cf44a85" target="_blank">Learn more.</a>

## March 19, 2025
Updates released between March 5, 2025, and March 19, 2025.

### Microsoft 365 Copilot Chat

- **Prompt suggestions in Copilot chat** [Windows, Web, Mac]  

  Get started in Copilot chat quickly with automatic prompt suggestions that enhance your productivity by providing relevant and context-aware prompts based on your previous interactions.

## March 4, 2025

Updates released between February 20, 2025, and March 4, 2025. 

### Microsoft 365 Copilot Chat

- **Search archived mailboxes in Copilot Chat** [Windows, Web, Android, iOS, Mac]    

  Leverage Copilot to search emails across both primary and archived mailboxes by appending 'from my archives' or 'also look for emails in my archives' in your prompts to quickly locate key messages.

### PowerPoint

- **Narrative builder creates slides with tables** [Windows, Web, Mac]  

  Convert grounded content from Word documents into dynamic slides with tables. Enhance your presentations with structured, data-driven visuals effortlessly.

## February 19, 2025

Updates released between February 5, 2025, and February 19, 2025. 

<!--- All features that have 'Mac' tag  -->

### Microsoft Teams

- **Intelligent meeting recap for instant meetings (premium)** [Windows, Mac]  

  Effortlessly browse meeting recordings by speaker and topic and access AI-generated notes, tasks, and mentions for instant meetings—empowering premium Copilot users with comprehensive insights. <a href="https://support.microsoft.com/office/meeting-recap-in-microsoft-teams-c2e3a0fe-504f-4b2c-bf85-504938f110ef" target="_blank">Learn more.</a>

### PowerPoint

- **Create a presentation from a file-based prompt** [Windows, Web, Mac]  

  Pull key facts and data from a selected file to shape your narrative. Simply provide Copilot with a prompt and quickly build your deck with relevant information. <a href="https://support.microsoft.com/office/create-a-new-presentation-with-copilot-in-powerpoint-3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

### Viva Insights

- **Copilot dashboard for usage and retention insights** [Windows, Web, Android, iOS, Mac]  

  Dive into usage frequency, compare top user groups, and track retention metrics—all in a single, comprehensive dashboard for actionable insights. <a href="/viva/insights/org-team-insights/copilot-dashboard#interpreting-the-data" target="_blank">Learn more.</a>

### Word

- **Chat with Copilot about selected text** [Windows, Web, Mac]  

  Highlight text, start a chat with Copilot, and receive responses tailored to what you’ve selected. Get targeted writing assistance and refine your content in real time.

<!--- All features that have 'Mac' tag  -->

## February 4, 2025

Updates released between January 24, 2025, and February 4, 2025.
### Microsoft 365 Copilot Chat

- **Access support pages in Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  View organizational support pages directly within Copilot Chat, for quick help and guidance in your workflow.

### Microsoft Teams

- **Speaker recognition and attribution in BYOD rooms with Copilot** [Windows, Mac]  

  Take advantage of speaker recognition and transcript attribution, unleashing new AI capabilities in any meeting space, whether or not it has a Teams Rooms system deployed. This feature identifies and attributes people in live transcripts, utilizing a unique voice profile for each participant enabling intelligent recaps and unlocking maximum value from Microsoft 365 Copilot in Teams meetings. Users can easily and securely enroll their voices via Teams Settings. This feature requires a Microsoft 365 Copilot or Teams Premium license for the user hosting the meeting for Copilot experiences and intelligent recaps, respectively. <a href="/microsoftteams/rooms/voice-recognition" target="_blank">Learn more.</a>

### PowerPoint

- **Use Copilot to rewrite, trim, or formalize text** [Web, Mac]  

  Transform your presentation text by letting Copilot fix grammar, shorten lengthy content, or adopt a more professional tone—perfect for crafting clear, polished slides.

### Word

- **Browse cloud files with the file picker** [Mac]  

  Use a file picker to browse your cloud directory and include relevant files without searching by name, making it easy to add key references to your draft.

- **Reference data from the Microsoft cloud when drafting with Copilot in Word** [Windows, Web, Mac]  

  Draft with Copilot now supports attaching rich content from the Microsoft cloud—including emails and meetings—resulting in more contextually relevant content. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Reference plain text files in Copilot** [Windows, Web, Mac]  

  Add .txt files as sources with Copilot in Word, streamlining your process when working with text-based research or background content.


## January 23, 2025

Updates released between January 8, 2025, and January 23, 2025.

### PowerPoint

- **Generate summaries for longer presentations** [Windows, Web, Mac]  

  Copilot now supports text summaries up to 40k words (around 150 slides), giving you richer information and more polished layouts. <a href="https://support.microsoft.com/office/summarize-your-presentation-with-copilot-in-powerpoint-499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

- **Listen to Copilot's responses with Read Aloud** [Windows, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

### Viva Insights

- **New Copilot adoption metrics and completing total actions taken** [Windows, iOS, Mac]  

  This adds seven new Copilot adoption metrics to the Copilot dashboard and Viva Insights Advanced insights. It also updates the "total actions taken" metric in the Copilot dashboard to include these new Copilot adoption metrics. <a href="https://techcommunity.microsoft.com/blog/viva_insights_blog/new-microsoft-copilot-analytics-features-now-available-%E2%80%93-novemberdecember-2024/4356206" target="_blank">Learn more.</a>

### Word

- **Get started on a draft immediately with example prompts** [Windows, Mac]  

  On blank documents, Copilot in Word offers one-click example prompts to help you get started quickly. <a href="https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot-in-word-at-ignite-2024/4303448" target="_blank">Learn more.</a>

- **Listen to Copilot's responses with Read Aloud** [Windows, Web, Mac]  

  Hear Copilot’s replies in the chat pane, letting you stay hands-free while reviewing your content.

## January 7, 2025

Updates released between December 18, 2024, and January 7, 2025.
### Viva Insights

- **Expand your understanding of Copilot adoption with enhanced metrics** [Windows, iOS, Mac]  

  Access seven new Copilot metrics and see them reflected in "total actions taken," helping you better track how teams use Copilot. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-adoption" target="_blank">Learn more.</a>

- **New metrics for enterprise data-protected prompts** [Windows, Web, Android, iOS, Mac]  

  Gain visibility into prompts submitted through Microsoft 365 Copilot Chat (web) and enterprise data-protected Copilot scenarios. <a href="/viva/insights/advanced/reference/metrics#microsoft-365-copilot-metrics" target="_blank">Learn more.</a>

## December 17, 2024

### OneNote

- **Use Copilot in OneNote on Mac and iPad** [iOS, Mac]  

  Experience the power of Copilot across OneNote for Mac and iPad. Quickly summarize, rewrite, and understand your notes, whether at your desk or on the go. <a href="https://support.microsoft.com/office/welcome-to-copilot-in-onenote-34b30802-02ae-4676-a88c-82f8d5e586dd" target="_blank">Learn more.</a>

### Viva Pulse

- **Templates for Copilot readiness, adoption and impact** [Windows, Web, Android, iOS, Mac]  

  Use new templates to measure employee sentiment and assess your organization's Copilot adoption—all within your Viva Pulse subscription.

## November, 2024

### Microsoft 365 Copilot Chat

- **Focus Copilot responses on specific emails in Microsoft 365 Copilot Chat** [Windows, Web, Android, iOS, Mac]  

  Narrow down Copilot responses by specifying a particular email folder, sub-folder, or subject line. Get more precise assistance by directing Copilot to the emails that matter most to you.

### OneNote

- **Copilot chat on Mac** [Mac]  

  Transform your note-taking on Mac with natural language commands that help you understand, summarize, and rewrite notes—perfect for meeting prep and creative brainstorming.

### PowerPoint

- **Build a narrative with file-based topics** [Windows, Web, Mac]  

  Create compelling presentations by integrating topic suggestions linked to your documents—whether Word files, PDFs, or encrypted docs—for a well-grounded narrative.

### Microsoft Teams

- **Disable Copilot in meetings** [Windows, Android, iOS, Mac]  

  You can now turn Copilot off in your meeting settings. Copilot, recording, and transcription are disabled for meetings where Copilot is off. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Word

- **Reference larger files and write longer prompts with Copilot** [Windows, Web, Mac]  

  Create more detailed drafts by writing prompts over 2,000 characters and referencing files totaling up to 75,000 words. <a href="https://support.microsoft.com/topic/66de2ffd-deb2-4f0c-8984-098316104389" target="_blank">Learn more.</a>

## October, 2024

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 12 additional languages across all features: Bulgarian, Croatian, Estonian, Greek, Indonesian, Latvian, Lithuanian, Romanian, Serbian (Latin), Slovak, Slovenian, and Vietnamese. Microsoft 365 Copilot also improved the handling of language variants: Dutch (Belgium), German (Switzerland), English (UK), Spanish (Mexico), and French (Canada). <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Empower meeting organizers to adjust Copilot availability** [Windows, Android, iOS, Mac]  

  Admins can now set Copilot in Teams meetings to  'During and After Meeting' and allow meeting organizers to change it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

### Outlook

- **Rewrite selected text in emails using Copilot** [Windows, Web, Android, iOS, Mac]  

  Select specific parts of your drafted email and ask Copilot in new Outlook to rewrite it or provide more information to rewrite it. Provide detailed instructions or adjust the tone and length to suit your needs.

### Viva Insights

- **New Microsoft 365 Copilot Chat prompts submitted through Teams** [Windows, iOS, Mac]  

  Adding new Microsoft 365 Copilot Chat prompts submitted through Teams metric to Copilot dashboard and Viva Insights Advanced insights.

### Word

- **Fine-tune rewrite responses in Copilot in Word** [Mac]  

  Customize the output from Copilot's Rewrite feature by specifying how the text should change to better suit your needs. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Reference up to 10 Items when drafting with Copilot** [Windows, Mac]  

  Expand your drafting capabilities by referencing up to 10 items—such as files, emails, and meetings—when using Copilot in Word. <a href="https://support.microsoft.com/topic/272ac2c1-c5f7-49c9-8a42-2a8a87846fa0" target="_blank">Learn more.</a>

## September, 2024

### Excel

- **Copilot in Excel is generally available** [Windows, Web, iOS, Mac]  

  Copilot in Excel, now no longer in Preview but Generally Available, works alongside you to analyze and explore your data, answering questions in natural language and revealing insights without the need for complex formulas. <a href="https://support.microsoft.com/topic/d7110502-0334-4b4f-a175-a73abdfc118a" target="_blank">Learn more.</a>

### Microsoft 365 Copilot

- **AI-generated Images with Copilot and Microsoft Designer** [Windows, Web, Mac]  

  Microsoft Designer integration in Copilot chat allows you to generate that perfect image, providing limitless creativity and bringing your presentations to life. <a href="https://support.microsoft.com/topic/6cd168f3-1cf0-478e-bd75-31d6526d2504" target="_blank">Learn more.</a>

### PowerPoint

- **Access your organization’s approved images** [Mac]  

  Seamlessly connect to your SharePoint asset library to find and add brand-approved images, keeping your presentations and documents consistently on brand.

### Microsoft Teams

- **Copilot in Teams meetings considers meeting chat** [Windows, Mac]  

  When generating meeting summaries or answering questions, Copilot in Teams will now use the chat and transcript as context, providing more accurate and relevant responses. <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1" target="_blank">Learn more.</a>

### Outlook

- **Instantly apply coaching suggestions from Copilot to your emails** [Web, Android, iOS, Mac]  

  Improve your email writing with Coaching by Copilot in new Outlook. Request a full rewrite based on Copilot's feedback or apply the suggestions with a single click. <a href="https://support.microsoft.com/topic/91a3cd56-1586-4a31-85c7-2eb8cdb02405" target="_blank">Learn more.</a>

### PowerPoint

- **Create presentations with new slide types using Copilot** [Web, Mac]  

  When creating a presentation with Copilot, you'll now see agenda, section, and conclusion slides, giving your presentations better structure.


- **Custom slideshow of key slides** [Mac]  

  Ask Copilot to show key slides, and you'll have one-click access to play a custom presentation of the most important slides.

- **Improved template support with Copilot** [Windows, Web, Mac]  

  Update your templates to PowerPoint's best practices, and Copilot will generate beautiful, on-brand slides every time you create a presentation. <a href="https://support.microsoft.com/topic/046c23d5-012e-49e0-8579-fe49302959fc" target="_blank">Learn more.</a>

### Word

- **Use Copilot to enhance pasted text in Word** [Windows, Mac]  

  Copilot in Word now offers more options when you paste text. Reword content, transform it into tables or lists, and more, making it easier to format and organize your documents efficiently.

## August, 2024

### Excel

- **Custom chart and PivotTable creation** [Windows, Web, iOS, Mac]  

  You can now ask Copilot for more specific charts and PivotTables, including specifying the X and Y axes. Customize your data presentations more precisely.

- **Formula data summaries from columns** [Windows, Web, iOS, Mac]  

  Add a single formula to summarize column data into one cell. This feature allows you to calculate data across columns and return a single result, simplifying data analysis.

- **Suggest conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Ask Copilot to suggest conditional formatting for your data. Receive a list of prompts that might highlight key insights in your data.

- **Summarize text columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can analyze columns of text to provide summaries, such as identifying main themes in survey responses. Understand your text data more effectively.

### Microsoft Teams

- **Copilot summarizes content over specified time periods** [Windows, Android, iOS, Mac]  

  Copilot can now identify and summarize information over specific time periods, responding accurately to queries like "yesterday," "last month," or "last year." <a href="https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c" target="_blank">Learn more.</a>

- **Linked files in Copilot replies** [Windows, Android, iOS, Mac]  

  We have optimized Copilot in Microsoft Teams to include linked files in Copilot answers for quicker and more reliable retrieval of files and links, making your experience smoother and more efficient.


### PowerPoint

- **Build your story with Narrative Builder** [Windows, Web, iOS, Mac]  

  Copilot helps you form your narrative and turns it into a fully designed presentation, streamlining the creative process.

- **Improved presentation summary richness** [Windows, Web, iOS, Mac]  

  Copilot now leverages the latest GPT models to provide richer summaries when generating presentations, enhancing the quality of your content.

### Viva Insights

- **Analyze Copilot impact over time** [Windows, Web, Android, iOS, Mac]  

  View trendlines of key productivity metrics over 6 months and estimate the financial value of Copilot-assisted hours. <a href="/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact" target="_blank">Learn more.</a>

## July, 2024

### Excel

- **Advanced conditional formatting with Copilot** [Windows, Web, iOS, Mac]  

  Copilot now supports complex conditional formatting, such as highlighting rows based on multiple criteria. Enhance your data visualization with more formulaic formatting options.

- **Improved data insights in Copilot** [Windows, Web, iOS, Mac]  

  Copilot is now better at answering questions about data insights like trends and correlations. Get more meaningful analysis to make informed decisions.

- **Preview and apply changes suggested by Copilot** [Windows, Web, iOS, Mac]  

  Before Copilot makes changes to your Excel data, you'll now receive a description and an "Apply" button. This gives you more control over your data and allows for refinements before applying changes.

- **Preview conditional formatting rules** [Windows, Web, iOS, Mac]  

  When setting a conditional formatting rule, Copilot's response will include a preview of the style and an explanation of the formula. This helps you understand and apply formatting more confidently.

- **Support for data ranges resembling tables** [Windows, Web, iOS, Mac]  

  Copilot can now reason over data ranges with a single row of headers, even if they aren't formatted as formal tables. This makes data analysis more flexible.

### PowerPoint

- **Create presentations from encrypted Word documents** [Windows, Web, iOS, Mac]  

  Copilot for PowerPoint can now create presentations using Word documents that have a protected sensitivity label, expanding your content creation options securely.

- **Easier access to Copilot in PowerPoint** [Windows, Web, iOS, Mac]  

  Access Copilot in PowerPoint more easily with new on-canvas entry points. Start enhancing your presentations with AI assistance in fewer clicks.

### Viva Insights

- **Microsoft Copilot Dashboard powered by Viva Insights** [Windows, Web, Android, iOS, Mac]  

  The Microsoft Copilot Dashboard available to all Microsoft 365 Copilot customers at no extra cost. Access it via the Viva Insights app to monitor Copilot adoption and impact. <a href="/viva/insights/org-team-insights/copilot-dashboard" target="_blank">Learn more.</a>

### Word

- **Bing search integration brings the power of the web to your chats in Word** [Mac]  

  Ask Copilot a question in Word chat, and Copilot generates an answer using the power of integrated Bing search. And you never have to leave the app.

- **Bring the latest from your organization into your Word chats with Microsoft Copilot Graph-grounded search.** [Mac]  

  Bring the latest from your organization into your Word chats with Microsoft Graph-grounded search. Access people-centric data and insights seamlessly.

- **Summarize longer documents in chat** [Windows, Web, iOS, Mac]  

  Copilot in Word can now summarize longer documents, with the upper limit increased to about four times more words (approx. 80k words). Get comprehensive overviews of lengthy content.

## June, 2024

### Excel

- **Copilot works on any selection in Excel** [Windows, Web, iOS, Mac]  

  Copilot now enables the edit box on any worksheet, regardless of selection. It intelligently finds the nearest table or data range for your analysis queries, making data manipulation more flexible.

### Microsoft Teams

- **Admins can enforce Copilot during and after meetings** [Windows, Android, iOS, Mac]  

  Admins can set Copilot in Teams meetings to  'During and After Meeting' and prevent meeting organizers from changing it. <a href="/microsoftteams/copilot-teams-transcription" target="_blank">Learn more.</a>

- **Control access to recordings and transcripts** [Windows, Android, iOS, Mac]  

  Introducing new meeting settings that allow you to control who can access recordings, transcripts, and prompt Copilot. Enhance your meeting security and privacy with these granular controls.

- **Intelligent Recap available for Copilot users** [Windows, Mac]  

  Copilot users can now access Intelligent Recap after meetings and calls. Browse recordings by speakers and topics, and access AI-generated meeting notes, action items, and @mentions, all designed to keep you informed.

### PowerPoint

- **Copilot adds transitions and animations automatically** [Windows, Web, iOS, Mac]  

  When creating presentations from prompts or files, Copilot will now automatically add transitions and animations. This enhancement brings your slides to life without extra effort.

- **Improved content when creating presentations from prompts** [Windows, Web, iOS, Mac]  

  Experience increased depth and richness of content when you create a presentation from a prompt. Copilot now provides better formatting and more detailed slides to enhance your presentations.

### Word

- **Find the perfect visual with Copilot + Designer in Word** [Windows, Web, Mac]  

  Enhance your documents with AI-generated images using the new integration of Microsoft Designer in Copilot Chat. Also search for stock images and brand assets to bring your content to life seamlessly.

- **Use Draft with Copilot in Word based on text, list, or table selection** [Windows, Mac]  

  Use Draft with Copilot in Word with the on-canvas Copilot menu when a user selects text, a list, or a table, which generates new content from Copilot and provides a richer, more interactive experience.

## May, 2024

### Microsoft Teams

- **Copilot notification in unrecorded meetings** [Windows, Android, iOS, Mac]  

  When Copilot is started in a meeting that is not being recorded, every participant is notified that Copilot is active.

### Word

- **Use a url to reference supported files in Copilot in Word** [Windows, Mac]  

  Users can copy-paste a link of a supported file into the Draft with Copilot UI as a reference, instead of searching for it in the file reference menu.

## April, 2024

### Excel

- **Create Formula Columns Using Data from Multiple Tables** [Windows, Web, iOS, Mac]  

  Support for functions like XLOOKUP and SUMIF allows you to create formula columns that utilize data across multiple tables.

- **Generate multiple formula columns with a single prompt** [Windows, Web, iOS, Mac]  

  Use Copilot in Excel to create several formula-based columns at once. For example, ask Copilot to split a full name into first and last name columns, and watch it generate both formulas in one go.

### Microsoft 365 Copilot

- **Language expansion in Microsoft 365 Copilot** [Windows, Web, Android, iOS, Mac]  

  Microsoft 365 Copilot now supports 17 additional languages across all features: Arabic, Chinese (Traditional), Czech, Danish, Dutch, Finnish, Hebrew, Hungarian, Korean, Norwegian (Bokmal), Polish, Portuguese (Portugal), Russian, Swedish, Thai, Turkish, and Ukrainian. <a href="https://support.microsoft.com/office/supported-languages-for-microsoft-copilot-94518d61-644b-4118-9492-617eea4801d8" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot understands previous conversations in chats and channels** [Windows, Android, iOS, Mac]  

  When you ask follow-up questions in chats or channels, Copilot now has context from past interactions to provide more accurate answers.

### Word

- **Draft with Copilot supports referencing files encrypted with sensitivity labels** [Windows, Web, Mac]  

  Draft with Copilot now allows you to reference files encrypted with sensitivity labels, ensuring secure document creation.

## March, 2024

### Microsoft 365 Copilot Chat

- **Rich entity representations in Copilot responses** [Windows, Web, Android, iOS, Mac]  

  Copilot now provides richer representations of entities like people, events, and files within responses, enhancing context and usability.

### Excel

- **Enable Copilot in Excel by saving files to OneDrive or SharePoint** [Windows, Mac]  

  To use Copilot in Excel, save your files to OneDrive or SharePoint with AutoSave on. You'll receive prompts to help you set this up if needed.

- **Speak to Copilot in Excel with new input methods** [Windows, Web, iOS, Mac]  

  You can now use your microphone to send prompts to Copilot in Excel, and explore the Prompt Guide for customized suggestions.

### Microsoft Teams

- **Customize your draft message when you compose with Copilot** [Windows, Android, iOS, Mac]  

  You can now instruct Copilot to adjust your draft message however you'd like. Adjust the message with a custom prompt, like "add a call to action" or "/make it persuasive". <a href="https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7" target="_blank">Learn more.</a>


- **Enhanced Copilot UI with new date dividers** [Windows, Android, iOS, Mac]  

  We have improved the Copilot user interface with new date dividers for chats, channels, and meeting Copilot.


## February, 2024

### Microsoft Teams

- **Copilot side pane stays open across group chats** [Windows, Mac]  

  When you open Copilot in a group chat, it will remain open even as you navigate between different chats, saving you time.

## January, 2024

### Excel

- **Enjoy conversational Copilot in Excel** [Windows, Web, iOS, Mac]  

  Copilot in Excel now remembers the context of your chats, allowing for follow-up questions and clarifications for a smoother experience.

## December, 2023

### Word

- **Visualize as table** [Mac]  

  Easily turn plain text or lists into clear, organized tables for better readability and effortless data handling. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

## November, 2023

### Microsoft 365 Copilot Chat

- **Introducing Microsoft 365 Copilot Chat** [Windows, Web, Mac]  

  Your single destination to take on any task, combining AI power with your work content to draft content, catch up, and get answers. <a href="https://support.microsoft.com/topic/5b00a52d-7296-48ee-b938-b95b7209f737" target="_blank">Learn more.</a>

### Excel

- **Add formula columns with Copilot** [Windows, Web, iOS, Mac]  

  Copilot provides formula suggestions with explanations, helping you create new columns based on your data. <a href="https://support.microsoft.com/topic/d866d926-9791-4e5f-be2a-c6dd9e587a47" target="_blank">Learn more.</a>

- **Generate data insights with Copilot** [Windows, Web, iOS, Mac]  

  Copilot can suggest insights like summaries, trends, and outliers, returning results as charts or PivotTables to enhance your analysis. <a href="https://support.microsoft.com/topic/52d97339-86c0-431c-b46c-e7b07b2898dd" target="_blank">Learn more.</a>

- **Use Copilot to highlight, filter, and sort data in Excel tables** [Windows, Web, iOS, Mac]  

  Transform your data by asking Copilot to format your Excel tables. You can highlight top values, filter specific entries, or sort data. For example, ask Copilot to highlight the top 3 values in a column, and it will apply conditional formatting. <a href="https://support.microsoft.com/topic/05302e3f-de42-4475-b235-be9cb3d4e936" target="_blank">Learn more.</a>

### Microsoft Teams

- **Copilot available in a channel post conversation** [Windows, Web, Android, iOS, Mac]  

  Copilot can summarize and support Q&A on a channel post conversation, assisting you directly in your channel conversations.

- **Copilot to summarize and answer Q&A in Teams Chat** [Windows, Web, Android, iOS, Mac]  

  Copilot helps you catch up on conversations by providing summaries and answering questions in Teams chats.

- **Use Copilot in meetings, 1:1 and group calls** [Windows, Web, Android, iOS, Mac]  

  Get summaries, action items, and more after meetings and calls through Copilot in the side panel.

### Outlook

- **Draft emails with Copilot in new Outlook** [Windows, Web, Mac]  

  Use Copilot to draft new emails from prompts, adjust length and tone, and even select parts of an email and use Copilot to rewrite those specific sections effortlessly. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

- **Get Coaching from Copilot for an email draft in new Outlook** [Web, Android, iOS, Mac]  

  Copilot combines AI with your Outlook data to help you craft better emails, offering suggestions on tone and message effectiveness. <a href="https://support.microsoft.com/topic/3eb1d053-89b8-491c-8a6e-746015238d9b" target="_blank">Learn more.</a>

### PowerPoint

- **Automatically add an agenda slide to your presentation** [Windows, Web, iOS, Mac]  

  Generate and insert an agenda slide based on your existing content, helping you prepare your audience for what's ahead.

- **Convert Word documents into presentations** [Windows, iOS, Mac]  

  Transform your Word documents into fully designed PowerPoint presentations, simplifying the creation process. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create a presentation from a simple prompt** [Windows, Web, iOS, Mac]  

  Provide a prompt and Copilot will help you generate a presentation, saving you time and effort <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Create presentations using your organization's templates** [Windows, Web, iOS, Mac]  

  Generate presentations that utilize your company's templates, ensuring consistency and alignment with your brand. <a href="https://support.microsoft.com/topic/3222ee03-f5a4-4d27-8642-9c387ab4854d" target="_blank">Learn more.</a>

- **Edit your presentation in Copilot chat** [Windows, Web, iOS, Mac]  

  Add slides, add animations, or organize your presentation in Copilot chat, streamlining your editing process. <a href="https://support.microsoft.com/topic/ae906e57-db71-4f46-8ed5-c1e2cebe6a80" target="_blank">Learn more.</a>

- **Get answers about your presentation** [Windows, Web, iOS, Mac]  

  Ask questions about your existing PowerPoint presentation to quickly retrieve information and insights.

- **Organize your presentation's flow easily** [Windows, Web, iOS, Mac]  

  Structure your slides, add sections, and insert an agenda slide to improve the overall flow of your presentation. <a href="https://support.microsoft.com/topic/a207eea3-7a56-4225-88f1-54dd37cdcf6a" target="_blank">Learn more.</a>

- **Summarize your presentation and identify key points** [Windows, Web, iOS, Mac]  

  Generate summaries, highlight key slides, and identify action items from your presentation, making it easier to review and share essential information. <a href="https://support.microsoft.com/topic/499e604c-4ab9-4f6a-9dbe-691cc87f2f69" target="_blank">Learn more.</a>

### Word

- **Apply highest sensitivity label to generated content** [Windows, Web, iOS, Mac]  

  Ensure your documents maintain appropriate confidentiality levels as labels are automatically updated when referencing files with higher sensitivity.

- **Draft with Copilot** [Windows, Web, iOS, Mac]  

  Draft new content for your blank or existing documents, helping you write faster and with ease. <a href="https://support.microsoft.com/topic/069c91f0-9e42-4c9a-bbce-fddf5d581541" target="_blank">Learn more.</a>

- **Get answers and enhance content with chat in Word** [Windows, Web, Mac]  

  Ask specific questions about your document or request additional details to enhance your content, making your writing process more efficient. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Rewrite with Copilot** [Windows, Web, iOS, Mac]  

  Get suggestions for how to rewrite any text in your document, enhancing clarity and effectiveness. <a href="https://support.microsoft.com/topic/923d9763-f896-4da7-8a3f-5b12c3bfc475" target="_blank">Learn more.</a>

- **Summarize your document using chat prompts** [Windows, Web, Mac]  

  Ask via chat to summarize your document, highlighting key points for quick understanding and review. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use chat in Word's Viewing mode** [Windows, Mac]  

  Access chat while in Viewing mode to ask questions about the document's content without switching to Editing mode, improving your reading experience. <a href="https://support.microsoft.com/topic/4482c688-a495-4571-bfcd-4a9fc6608090" target="_blank">Learn more.</a>

- **Use voice prompts for assistance** [Windows, Web, Mac]  

  Use voice to dictate into the Copilot chat prompt field.

