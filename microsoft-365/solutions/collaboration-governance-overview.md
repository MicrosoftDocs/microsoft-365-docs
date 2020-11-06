---
title: "Overview of collaboration governance in Microsoft 365"
ms.reviewer: mmclean
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-collaboration
- m365solution-overview 
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
description: "Learn about how to govern related features in Microsoft 365 groups, Teams, SharePoint, and Yammer."
---

# Overview of collaboration governance in Microsoft 365

Microsoft 365 has a rich set of tools to implement any governance capabilities your organization might require. This article guides IT Pros to ask the right questions to determine their requirements for governance and how to meet them based on their organizational profile.

## What are Microsoft 365 groups?

We know that organizations today are using a diverse tool set. There's the team of developers using team chat, the executives sending email, and the entire organization connecting over enterprise social. Multiple collaboration tools are in use because every group is unique and has their own functional needs and work style. Some will use only email while others will live primarily in chat. 

If users feel the IT-provided tools do not fit their needs, they will likely download their favorite consumer app which supports their scenarios. Although this process allows users to get started quickly, it leads to a frustrating user experience across the organization with multiple logins, difficulty sharing, and no single place to view content. This concept is referred to as “Shadow IT” and poses a significant risk to organizations. It reduces the ability to uniformly manage user access, ensure security, and service compliance needs.

Services such as Microsoft 365 groups, Teams, and Yammer empower users and reduces the risk of shadow IT by providing the tools needed to collaborate. Microsoft 365 groups lets you choose a set of people with whom you wish to collaborate, and easily set up a collection of resources for those people to share. Adding members to the group automatically grants the needed permissions to all assets provided by the group. Both Teams and Yammer use Microsoft 365 groups to manage their membership.

![Diagram showing Microsoft 365 Groups and related services](../media/microsoft-365-groups-hub-spoke.png)

Microsoft 365 Groups includes a variety of governance controls, including an expiration policy, naming conventions, and a blocked words policy, to help you manage groups in your organization. See [Plan organization and lifecycle governance for Microsoft 365 groups and Microsoft Teams](plan-organization-lifecycle-governance.md) for details.

## Technical architecture

There are three main communication methods supported by Microsoft 365:

- Outlook: collaboration through email with a shared group inbox and calendar
- Microsoft Teams: a persistent-chat-based workspace where you can have informal, real-time, conversations around a variety of topics, organized by specific sub-groups
- Yammer: enterprise social experience for collaboration

> [!NOTE]
> Creating a new group via other teamwork applications - such as SharePoint, Planner or Stream - will create a group with an Outlook inbox and the ability to connect to Teams.

Depending on where a group is created, certain resources are provisioned automatically, such as:
- [Inbox](https://support.office.com/article/have-a-group-conversation-in-outlook-a0482e24-a769-4e39-a5ba-a7c56e828b22) - For email conversations between group members. This inbox has an email address and can be set to accept messages from people outside the group and even outside your organization, much like a traditional distribution list.
 - [Calendar](https://support.office.com/article/schedule-a-meeting-on-a-group-calendar-in-outlook-0cf1ad68-1034-4306-b367-d75e9818376a) – For scheduling events related to the group
- [SharePoint team site](https://support.office.com/article/what-is-a-sharepoint-team-site-75545757-36c3-46a7-beed-0aaa74f0401e) – A central repository for information, links and content relating to your group
- [OneNote notebook](https://support.office.com/article/get-started-with-onenote-e768fafa-8f9b-4eac-8600-65aa10b2fe97) – For gathering ideas, research, and information
- [Planner](https://support.office.com/article/microsoft-planner-help-4a9a13c6-3adf-4a60-a6fc-15c0b15e16fc) – For assigning and managing project tasks among your group members
- [Yammer group](https://support.office.com/article/Learn-about-Office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2) – A common place to have conversations and share information
- Teams – A chat-based workspace in Microsoft 365
- Stream - A video streaming service

> [!NOTE]
> When a new Office 365 Group is created via Yammer or Teams, the group isn't visible in Outlook or the address book because the primary communication between those users happens in their respective clients. Yammer groups cannot be connected to Teams.

## Collaboration options

There are multiple places to collaborate and have conversations within Microsoft 365. Understanding where to start a conversation can help you define a strategy for communication.

![Diagram showing when to use Teams, Yammer, and Outlook](../media/inner-loop-outer-loop.png)

- Teams: chat-based workspace (high velocity collaboration) – inner loop
  - Built for collaboration with the people you work with every day
  - Puts information at the fingertips of users in a single experience
  - Add tabs, connectors and bots
  - Live chat, audio/video conferencing, recorded meetings

- Yammer: connect across the org (enterprise social) – outer loop
  - Communities of practice - Cross-functional groups of people who share a common interest or expertise but are not necessarily working together on a day-to-day basis
  - Leadership connection, learning communities, role-based communities

- Mailbox and calendar (email-based collaboration)
  - Use for targeted communication with a group of people
  - Shared calendar for meetings with other group members
 
Every group gets a connected SharePoint team site where users can share content, create customized pages and author news. You can also [connect existing SharePoint team sites to new Microsoft 365 groups](https://docs.microsoft.com/sharepoint/dev/features/groupify/groupify-overview).

## Illustrations

### Microsoft Teams and related productivity services in Microsoft 365 for IT architects
The logical architecture of productivity services in Microsoft 365, leading with Microsoft Teams.

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Teams logical architecture poster](../downloads/msft-teams-logical-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-teams-logical-architecture.pdf) <br/> [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-teams-logical-architecture.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-teams-logical-architecture.vsdx)  <br>Updated April 2019   |Microsoft provides a suite of productivity services that work together to provide collaboration experiences with data governance, security, and compliance capabilities. <br/> <br/>This series of illustrations provides a view into the logical architecture of productivity services for enterprise architects, leading with Microsoft Teams.|


### Groups in Microsoft 365 for IT Architects
What IT architects need to know about groups in Microsoft 365

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for groups infographic](../downloads/msft-m365-groups-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) <br/> [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-groups.vsdx) <br> Updated June 2019|These illustrations detail the different types of groups, how these are created and managed, and a few governance recommendations.|

## Conference sessions

Watch these conference sessions to learn more about governance for Microsoft 365 Groups and Teams.

**Fundamentals**

Learn the fundamentals and new innovations in Microsoft 365 Groups, including management and governance at scale, best practices for driving usage and adoption, and self-service.

- [Embrace Microsoft 365 Groups](https://www.youtube.com/watch?v=dAamBF1gb7M)

**Governance**

Learn how to set up your groups expiry lifecycle, naming policies, classification labels, collaboration with external guests, and manage group creation permissions.

- [Transform collaboration and fight shadow IT with Office 365 groups](https://www.youtube.com/watch?v=Bhf_bKx3lAg)

**Customer example**

See a behind-the-scenes example of how Microsoft 365 Groups, SharePoint, Teams, and Yammer work together to provide a global collaboration platform.

- [Finding your collaboration sweet spot with Office 365 Groups, SharePoint, Teams, and Yammer](https://www.youtube.com/watch?v=Rx9eVwqXeQk)
