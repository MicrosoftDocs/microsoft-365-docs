---
ms.date: 01/01/2024
title: Topic discovery and curation in Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - Tier1
ms.service: viva-topics 
search.appverid:
    - MET150  
ms.localizationpriority:  medium
description: Overview of topic discovery and curation in Topics
---

# Topic discovery and curation in Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

Topics organizes information into knowledge in your Microsoft 365 environment. We have all experienced reading through documents and site pages where we encounter terms we're unfamiliar with. Many times we stop what we are doing to spend precious time searching for more information.

Topics uses Microsoft Graph and AI to identify **topics** in your organization.  A topic is a phrase or term that has a specific meaning to the organization, and has resources related to it that can help people understand what it is and find more information about it. There are lots of different types of topics that can be important to your organization. Initially, the following types of topics can be identified:

- Project
- Event
- Organization
- Location
- Product
- Creative work
- Field of study

AI identifies people and content connected to the topic, and if enough is discovered, it becomes a suggested topic. It looks to identify the following properties and display them on a *topic page*:

- Alternate names and/or acronyms.
- A short description of the topic.
- People who might be knowledgeable about the topic.
- Files, pages, and sites that are related to the topic.

The properties are identified from the files and pages that are part of the evidence for identifying the topic. Alternate names and acronyms are sourced from these files and pages. The short description is sourced from these files and pages, or from the internet through Wikipedia. The source file, page, or Wikipedia article is referenced alongside the suggested properties. People are suggested based on their active contributions (for example, edits) to the files and pages. A reference to the amount of contributions from a particular person provides a hint as to why the person has been identified. Files, pages, and sites are ranked based on whether they're central to the topic, or whether they can give an overview or introduction to the topic.

Not every identified topic is useful to your organization. It might not have identified any of the correct alternate names, descriptions, the appropriate people, or content. So the ability to add topics that aren't identified, keep suggested topics, and curate topics is critical to improving the quality of the topics that are discoverable in your organization.

Topics then, when the context is appropriate, will suggest these topics to be highlighted or displayed on different Microsoft 365 apps, such as SharePoint modern pages or on Outlook on the web. The topic can also be directly referenced on SharePoint pages by an author, on Microsoft Teams in chat messages, as well as in Outlook on the web while writing emails. When a user is curious to learn more about a topic, they can select a topic to view a **Topic summary** card that provides a short description. And if they want to learn more, they can select a **Topic details** link in the summary to open the detailed topic page.

![Screenshot of a Topic summary card.](../media/knowledge-management/saturn.png) </br>

Additionally, users will also be able to find topics through Microsoft Search.

## Topic curation and feedback

Topics welcomes human contribution to improve the quality of your topics. While AI initially identifies and suggests topics, manually made edits to content from contributors, manually added topics, confirmation from users for AI discovered properties and content, and feedback on the usefulness of topics are all essential.

- Topics can be reviewed by **knowledge managers** in your organization. The knowledge manager can review topics that they have permissions to see. On the **Manage topics** page in the topic center, they can choose to confirm AI-generated topics ("suggested topics") as valid, reject topics to prevent the content from being viewed as a topic, create topics that were not discovered by AI, or identify topics that could benefit from a few edits by subject matter experts to be more helpful or accurate. For more information, see [Manage topics in the topic center](manage-topics.md).

- You can assign *Create and edit topics* permissions to any of your licensed users so that they can make changes to existing topics or create new topics. This allows users that are knowledgeable about the topic to update the topic page directly to make corrections or add additional information. They can also add new topics that AI wasn't able to identify. If there's enough information on these manually added topics, and AI is able to identify this type of topic, other suggestions from AI might enhance these manually added topics. Together, humans and AI can keep knowledge accurate over time and not have this rest on a single person. For more information, see [Create a new topic](./create-a-topic.md) and [Edit a topic](./edit-a-topic.md).

- Even users who only have read access to topic (topic viewers) will be asked to verify the usefulness of specific topics. Feedback questions are asked on the **Topic summary** card to improve the value of the topic and its information. Questions about the quality and usefulness of the AI suggestions are presented to users one at a time. Questions include:

    1. Whether identifying the topic in the SharePoint page was helpful. There's an opportunity to remove the highlight if it's not accurate or helpful. If enough people indicate that a topic is not correctly identified on a particular page, this highlight will eventually be removed for all users.

    2. Whether the suggested topic is valuable to the organization. If enough people indicate that the suggested topic is valuable, the topic is automatically confirmed. Alternatively, if the suggested topic is not valuable, the topic is automatically rejected. The knowledge manager can observe this activity on the **Manage topics** page.

    3. Whether the people and resource suggestions are helpful.

    4. On the topic center home page, you can see the topics in your organization to which you have a connection. You can choose to remain listed on the topic or remove yourself. This feedback is reflected to everyone who discovers this topic. For more information about the topic center home page, see [Topic center overview](./topic-center-overview.md).

Even with human edits, AI will continually look for more information about topics, and will look for human verification. For example, if AI thinks you're a person that should be listed as an expert on a topic, it will ask you to confirm this.

## Identifying topic types

Identifying topic types in Topics allows your organization to organize topics by their types. In suggested topics, AI identifies types relevant to your topics. While editing or curating topics, you can also add these topic types to improve a topic's information and accessibility. There are over 150 topic types recognized in Topics.

|&nbsp;  | &nbsp; |&nbsp; |
|---|---|---|
Academy|Experience (UX)|Pharmacy (chemist, drugstore)
Account (user account)|Expo (exposition)|Pipeline
Acquisition|Factory|Platform
Act|Feature (software)|Policy
Affiliate|Federation|Portal (web, internet)
Agency|Festival|Portfolio
Agreement (Deal)|Form|Process (procedure)
API (Application programming interface)|Foundation|Product
App (Application)|Framework|Program (programme)
Asset|Fund|Programming language
Association|Gateway|Project (development)
Authority (State)|Government|Protocol
Award|Graphical user interface (GUI)|Province
Bank|Group|Region
Board|Hardware|Registry (register)
Borough|Health network (health care)|Regulation
Branch|Health system (health service)|Repository (repo)
Building |Holdings|Software development kit (SDK)
Bureau|Hospice|Sector (economic)
Business model|Hospital|Seminary
Business unit|Hub|Server
Campaign|Industry|Service
Campus|Initiative|Site
Center (centre)|Institute|Society
City |Investment|Solution
Client (client app, client application, web client)|Journal|Standard
Clinic|Jurisdiction|Steering committee
Coalition|Laboratory (lab, research)|Store (shop)
Committee|Language|Strategy
Company (firm, corporation, LLC)|League|Subdivision
Complex (building complex)|Lease|Submarket
Component (software)|Library(software)|Subsidiary
Compound|Location|Survey
Conference|Market|Symposium
Contract|Market area|System
Contractor|Memorandum (memo)|Task force
Convention|Methodology|Team
Council|Microservice|Technology (tech)
County|Middleware|Territory
Customer (client)|Ministry|Tool (software tool, utility)
Data model|Mobile app|Toolkit (software, toolbox)
Data store|Model|Treatment
Data warehouse|Module|University
Department|Museum|User interface (UI)
Desk|Nation (country, republic)|Value model
Device (appliance)|Office|Warehouse (Depot)
Division|Operating system|Web app
DLL (Dynamic link library)|Opportunity|Web service
Enclave|Organization (organisation, org)|Website (site)
Engine (software)|Package (software)|Workshop
Event|Partner (business)|&nbsp;
