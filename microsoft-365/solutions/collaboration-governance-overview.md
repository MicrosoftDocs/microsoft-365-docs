---
title: A collaboration governance framework for Microsoft 365
ms.reviewer: rahulnayak
ms.date: 07/27/2023
ms.author: jtremper
author: jacktremper
manager: pamgreen
audience: Admin
ms.topic: solution-overview
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-collaboration
- m365solution-overview 
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: Learn governance best practices for Microsoft 365 collaboration tools, including Microsoft 365 Groups, Teams, SharePoint, and Viva Engage.
---

# What is collaboration governance?

Collaboration governance is how you manage users' access to resources, compliance with your business standards, and ensure the security of your data.

Organizations today are using a diverse tool set. There's the team of developers using team chat, the executives sending email, and the entire organization connecting over enterprise social. Multiple collaboration tools are in use because every group is unique and has their own functional needs and work style. Some will use only email while others will live primarily in chat.

If users feel the IT-provided tools do not fit their needs, they will likely download their favorite consumer app which supports their scenarios. Although this process allows users to get started quickly, it leads to a frustrating user experience across the organization with multiple logins, difficulty sharing, and no single place to view content. This concept is referred to as "Shadow IT" and poses a significant risk to organizations. It reduces the ability to uniformly manage user access, ensure security, and service compliance needs.

Services such as Microsoft 365 groups, Teams, and Viva Engage empower users and reduces the risk of shadow IT by providing the tools needed to collaborate. Microsoft 365 has a rich set of tools to implement any governance capabilities your organization might require.

![Chart showing collaboration governance options in Microsoft 365.](../media/collaboration-governance-overview.png)

This series of articles will help you understand how groups, teams, and SharePoint settings interact, what governance capabilities are available, and how to create and implement a governance framework for the collaboration features in Microsoft 365.

### Setting up secure collaboration with Microsoft 365

There are many options for deploying Microsoft 365 Groups and Teams for secure collaboration in your organization. We recommend you use this governance content alongside [Set up secure file sharing and collaboration with Microsoft Teams](setup-secure-collaboration-with-teams.md) and its associated articles to create the best collaboration solution for your organization.

### Data residency governance

If your organization is multi-national and you have data residency requirements for different geographies, include [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) as part of your collaboration governance plan.

## Why Microsoft 365 groups are important in collaboration governance

Microsoft 365 groups let you choose a set of people with whom you wish to collaborate, and easily set up a collection of resources for those people to share. Adding members to the group automatically grants the needed permissions to all assets provided by the group. Both Teams and Viva Engage use Microsoft 365 groups to manage their membership.

Microsoft 365 groups include a suite of linked resources that users can use for communication and collaboration. Groups always include a SharePoint site, Planner, and a mailbox and calendar. Depending on how you create the group, you can optionally add other services such as Teams, Viva Engage, and Project.

![Diagram showing Microsoft 365 Groups and related services.](../media/microsoft-365-groups-hub-spoke.png)

|Resource|Description|
|:------|:----------|
|[Calendar](https://support.office.com/article/0cf1ad68-1034-4306-b367-d75e9818376a)|For scheduling events related to the group|
|[Inbox](https://support.office.com/article/a0482e24-a769-4e39-a5ba-a7c56e828b22)|For email conversations between group members. This inbox has an email address and can be set to accept messages from people outside the group and even outside your organization, much like a traditional distribution list.|
|[OneNote notebook](https://support.office.com/article/e768fafa-8f9b-4eac-8600-65aa10b2fe97)|For gathering ideas, research, and information|
|[Planner](https://support.office.com/article/4a9a13c6-3adf-4a60-a6fc-15c0b15e16fc)|For assigning and managing project tasks among your group members|
|[Project and Roadmap](https://support.microsoft.com/project)|Web-based project management tools|
|[SharePoint team site](https://support.office.com/article/75545757-36c3-46a7-beed-0aaa74f0401e)|A central repository for information, links and content relating to your group|
|[Teams](https://support.microsoft.com/teams)|A chat-based workspace in Microsoft 365|
|[Viva Engage](https://support.office.com/article/b565caa1-5c40-40ef-9915-60fdb2d97fa2)|A common place to have conversations and share information|

Microsoft 365 Groups includes a variety of governance controls, including an expiration policy, naming conventions, and a blocked words policy, to help you manage groups in your organization. Because groups control membership and access to this suite of resources, managing groups is a key part of governing collaboration in Microsoft 365.

## Define collaboration governance best practices for your organization

There are multiple places to collaborate and have conversations within Microsoft 365. Understanding where users can start conversations can help you define a strategy for communication.

There are three main communication methods supported by Microsoft 365:

- Outlook: collaboration through email, including with a shared group inbox and calendar
- Microsoft Teams: a persistent-chat-based workspace where you can have informal, real-time, conversations around a variety of topics, organized by specific sub-groups
- Viva Engage: enterprise social experience for collaboration

**Teams: chat-based workspace (high velocity collaboration)**
  - Built for collaboration with the people your users work with every day
  - Puts information at the fingertips of users in a single experience
  - Add tabs, connectors and bots
  - Live chat, audio/video conferencing, recorded meetings

**Viva Engage: connect across the org (enterprise social)**
  - Communities of practice - Cross-functional groups of people who share a common interest or expertise but are not necessarily working together on a day-to-day basis
  - Leadership connection, learning communities, role-based communities

**Mailbox and calendar (email-based collaboration)**
  - Used for targeted communication with individuals or a group of people
  - Shared calendar for meetings with other group members

As you determine how you want to use collaboration features in Microsoft 365, consider these methods of communication and which your users are likely to use in different scenarios.

> [!NOTE]
> When a new Microsoft 365 group is created via Viva Engage or Teams, the group isn't visible in Outlook or the address book because the primary communication between those users happens in their respective clients. Viva Engage groups cannot be connected to Teams.

## Collaboration governance best practices checklist

As you start your governance planning process, keep these best practices in mind:

- **Talk to your users** - identify your biggest users of collaboration features and meet with them to understand their core business requirements and use case scenarios.

- **Balance risks and benefits** - review your business, regulatory, legal, and compliance needs and plan a solution that optimizes for all outcomes.

- **Adapt to different organizations and different types of content and scenarios** - consider the different needs for different groups or departments and different types of content such as intranet content versus a user's OneDrive content.

- **Align to business priorities** - business goals will help you define how much time and energy you need to invest in governance.

- **Embed governance decisions directly in the solutions you create** - many governance decisions can be implemented by turning on or off features in Microsoft 365.

- **Use a phased approach** - Roll collaboration features out to a small group of users first. Get feedback from them, watch for help desk tickets, and update any needed settings or processes before proceeding to a larger group.

- **Reinforce with training** - adapt solutions such as [Microsoft 365 learning pathways](/office365/customlearning) to ensure that your organization-specific expectations are reinforced with Microsoft-provided training.

- **Have a strategy for communicating governance policies and guidelines in your organization** - create a Microsoft 365 Adoption Center in a [SharePoint communication site](https://support.microsoft.com/en-us/office/7fb44b20-a72f-4d2c-9173-fc8f59ba50eb) to communicate policies and procedures.

- **Define roles and responsibilities** - identify your governance core team and work through key governance decisions about provisioning and naming and external access first, and then work through the remaining decisions.

- **Revisit your decisions as business and technology changes** - meet periodically to review new capabilities and new business expectations.

For a closer look at these practices, read [Create your collaboration governance plan](collaboration-governance-first.md).

## End user impact and change management

Because groups and teams can be created in several ways, we recommend training your users to use the method that fits your organization the best:

- If your organization has deployed Teams, instruct your users to create a team when they need a collaboration space.
- If your organization does most of its communication using email, instruct your users to create groups in Outlook.
- If your organization heavily uses SharePoint or is migrating from SharePoint on-premises, instruct your users to create SharePoint team sites for collaboration.

This helps avoid confusion if users are unfamiliar with how groups relate to their related services. For more information about how to talk to your users about groups, see [Explaining Microsoft 365 Groups to your users](../admin/create-groups/explain-groups-knowledge-worker.md).

## Key collaboration governance capabilities and licensing requirements

Governance capabilities for collaboration in Microsoft 365 include features in Microsoft 365, Teams, SharePoint, and Microsoft Entra ID.

| Capability or feature | Description | Licensing |
|:----------------------|:------------|:----------|
|Team and site sharing|Control if teams, groups, and sites can be shared with people outside your organization.|Microsoft 365 E5 or E3|
|Domain allow/block|Restrict sharing with people outside your organization to people from specific domains.|Microsoft 365 E5 or E3|
|Self-service site creation|Allow or prevent users from creating their own SharePoint sites.|Microsoft 365 E5 or E3|
|Restricted site and file sharing|Restrict site, file, and folder sharing to members of a specific security group.|Microsoft 365 E5 or E3|
|Restricted group creation|Restrict team and group creation to members of a specific security group.|Microsoft 365 E5 or E3 with Microsoft Entra ID P1 or P2 or Microsoft Entra Basic EDU licenses|
|Group naming policy|Enforce prefixes or suffixes on group and team names.|Microsoft 365 E5 or E3 with Microsoft Entra ID P1 or P2 or Microsoft Entra Basic EDU licenses|
|Group expiration policy|Set inactive groups and teams to expire and be deleted after a specified period of time.|Microsoft 365 E5 or E3 with Microsoft Entra ID P1 or P2 licenses|
|Per-group guest access|Allow or prevent team and group sharing with people outside your organization on a per-group basis.|Microsoft 365 E5 or E3|

Additionally, these add-on licenses provide enhanced governance capabilities:

- [Microsoft Teams Premium](/microsoftteams/enhanced-teams-experience) provides compliance capabilities for meetings, including watermarks, encryption, and sensitivity labels.
- [Microsoft Syntex - SharePoint Advanced Management](/sharepoint/advanced-management) provides policies for content access, collaboration and lifecycle management.

## Collaboration governance planning recommendations

Follow these basic steps to create your governance plan:

1. Consider key business goals and processes - [create your governance plan](collaboration-governance-first.md) to meet the needs of your business.
2. Understand settings in services - [settings in groups and SharePoint](groups-sharepoint-governance.md) interact with each other, as do [settings in groups, SharePoint and Teams](groups-sharepoint-teams-governance.md) and [other services](groups-services-interactions.md). Be sure to understand these interactions as you plan your governance strategy.
3. Plan to manage user access - plan [the level of access you want to grant users in groups, SharePoint, and Teams](groups-teams-access-governance.md).
4. Plan to manage compliance settings - review the available [compliance options for Microsoft 365 groups, Teams, and SharePoint collaboration](groups-teams-compliance-governance.md).
5. Plan to manage communications - review the available [communications governance options for collaboration scenarios](groups-teams-communication-governance.md).
6. Plan for organization and lifecycle governance - choose [the policies you want to use for group and team creation, naming, expiration, and archiving](plan-organization-lifecycle-governance.md). Also, understand the [end of lifecycle options for groups, teams, and Viva Engage](end-life-cycle-groups-teams-sites-viva-engage.md)

![Illustration of recommended governance steps.](../media/collaboration-governance-steps.png)

## Training for administrators

These training modules from Microsoft Learn can help you learn the governance features in Microsoft 365.

- [Introduction to information protection and data lifecycle management in Microsoft Purview](/training/modules/m365-compliance-information-governance) - Learn how Microsoft 365 information protection and data lifecycle management solutions help you protect and govern your data, throughout its lifecycle.
- [Microsoft Security, Compliance, and Identity Fundamentals: Describe the capabilities of Microsoft compliance solutions](/training/paths/describe-capabilities-of-microsoft-compliance-solutions/) - Learn about compliance solutions in Microsoft. Topics covered will include compliance, information protection, and governance in Microsoft 365, Insider Risk, audit, and eDiscovery solutions. Also covered are Azure resources governance capabilities.

## Illustrations

These illustrations will help you understand how groups and teams interact with other services in Microsoft 365 and what governance and compliance features are available to help you manage these services in your organization.

### Groups in Microsoft 365 for IT Architects
What IT architects need to know about groups in Microsoft 365

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for groups infographic.](../downloads/msft-m365-groups-architecture-thumb.png)](https://download.microsoft.com/download/6/3/0/6309218f-a169-4f2d-af4c-2fe49e30ba17/msft-m365-groups.pdf) <br/> [PDF](https://download.microsoft.com/download/6/3/0/6309218f-a169-4f2d-af4c-2fe49e30ba17/msft-m365-groups.pdf) \| [Visio](https://download.microsoft.com/download/6/3/0/6309218f-a169-4f2d-af4c-2fe49e30ba17/msft-m365-groups.vsdx) <br> Updated May 2022|These illustrations detail the different types of groups, how these are created and managed, and a few governance recommendations.|

### Microsoft Teams and related productivity services in Microsoft 365 for IT architects
The logical architecture of productivity services in Microsoft 365, leading with Microsoft Teams.

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Teams logical architecture poster.](../downloads/msft-teams-logical-architecture-thumb.png)](https://download.microsoft.com/download/8/c/2/8c2d4d29-a6dd-4d98-92e9-be496f1681df/msft-m365-teams-logical-architecture.pdf) <br/> [PDF](https://download.microsoft.com/download/8/c/2/8c2d4d29-a6dd-4d98-92e9-be496f1681df/msft-m365-teams-logical-architecture.pdf) <br>Updated April 2019   |Microsoft provides a suite of productivity services that work together to provide collaboration experiences with data governance, security, and compliance capabilities. <br/> <br/>This series of illustrations provides a view into the logical architecture of productivity services for enterprise architects, leading with Microsoft Teams.|

### Microsoft 365 information protection and compliance capabilities

Microsoft 365 includes a broad set of information protection and compliance capabilities. Together with Microsoft’s productivity tools, these capabilities are designed to help organizations collaborate in real time while adhering to stringent regulatory compliance frameworks. 

This set of illustrations uses one of the most regulated industries, financial services, to demonstrate how these capabilities can be applied to address common regulatory requirements. Feel free to adapt these illustrations for your own use. 

| Item | Description |
|:-----|:-----|
|[![Model poster: Microsoft Purview information protection and compliance capabilities.](../media/solutions-architecture-center/m365-compliance-illustrations-thumb.png)](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.pdf) <br/> English: [Download as a PDF](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.pdf)  \| [Download as a Visio](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.vsdx) <br/> Japanese: [Download as a PDF](https://download.microsoft.com/download/6/f/1/6f1a7d0e-dd8e-442e-b073-8e94327ae4f8/m365-compliance-illustrations.pdf)  \| [Download as a Visio](https://download.microsoft.com/download/6/f/1/6f1a7d0e-dd8e-442e-b073-8e94327ae4f8/m365-compliance-illustrations.vsdx) <br/> Updated November 2020|Includes: <ul><li>  Microsoft Purview Information Protection and Microsoft Purview Data Loss Prevention</li><li>Retention policies and retention labels </li><li>Information barriers</li><li>Communication compliance</li><li>Insider risk</li><li>Third-party data ingestion</li>|

## Related resources

[Microsoft 365 security documentation](../security/index.yml)

[Microsoft Purview documentation](../compliance/index.yml)

[Video Governance & Security Practices for Microsoft 365 - Microsoft Ignite | OD13](https://www.youtube.com/watch?v=zdSkL8a_7Kw)
