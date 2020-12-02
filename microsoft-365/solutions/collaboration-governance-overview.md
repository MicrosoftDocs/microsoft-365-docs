---
title: "What is collaboration governance?"
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

# What is collaboration governance?

We know that organizations today are using a diverse tool set. There's the team of developers using team chat, the executives sending email, and the entire organization connecting over enterprise social. Multiple collaboration tools are in use because every group is unique and has their own functional needs and work style. Some will use only email while others will live primarily in chat. 

If users feel the IT-provided tools do not fit their needs, they will likely download their favorite consumer app which supports their scenarios. Although this process allows users to get started quickly, it leads to a frustrating user experience across the organization with multiple logins, difficulty sharing, and no single place to view content. This concept is referred to as “Shadow IT” and poses a significant risk to organizations. It reduces the ability to uniformly manage user access, ensure security, and service compliance needs.

Services such as Microsoft 365 groups, Teams, and Yammer empower users and reduces the risk of shadow IT by providing the tools needed to collaborate. 

Microsoft 365 has a rich set of tools to implement any governance capabilities your organization might require. This series of articles will help you understand how groups, teams, and SharePoint settings interact, what governance capabilities are available, and how to create and implement a governance plan for the collaboration features in Microsoft 365.



Microsoft 365 groups help users (?) manage with whom and how they share information
Microsoft 365 empowers users and reduces the risk...by providing the tools needed to collaborate. Underneath and interacting with services in Microsoft 365 are Microsoft 365 groups, which let users choose a set of people with whom they want to collaborate, and easily set up a collection of resources for those people to share. … 



![Chart showing collaboration governance options in Microsoft 365](../media/collaboration-governance-overview.png)




## What are Microsoft 365 groups?

Microsoft 365 groups lets you choose a set of people with whom you wish to collaborate, and easily set up a collection of resources for those people to share. Adding members to the group automatically grants the needed permissions to all assets provided by the group. Both Teams and Yammer use Microsoft 365 groups to manage their membership.

Microsoft 365 groups include a suite of linked resources that users can use for communication and collaboration. Groups always include a SharePoint site, Planner, a Power BI workspace, a mailbox and calendar, and Stream. Depending on how you create the group, you can optionally add other services such as Teams, Yammer, and Project.

![Diagram showing Microsoft 365 Groups and related services](../media/microsoft-365-groups-hub-spoke.png)

Microsoft 365 Groups includes a variety of governance controls, including an expiration policy, naming conventions, and a blocked words policy, to help you manage groups in your organization. Because groups control membership and access to this suite of resources, managing groups is a key part of governing collaboration in Microsoft 365.


## Communications methods supported by Microsoft 365

There are three main communication methods supported by Microsoft 365:

- Outlook: collaboration through email with a shared group inbox and calendar
- Microsoft Teams: a persistent-chat-based workspace where you can have informal, real-time, conversations around a variety of topics, organized by specific sub-groups
- Yammer: enterprise social experience for collaboration

Depending on where a group is created, certain resources are provisioned automatically, such as:

|Resource|Description|
|:------|:----------|
|[Inbox](https://support.office.com/article/have-a-group-conversation-in-outlook-a0482e24-a769-4e39-a5ba-a7c56e828b22)|For email conversations between group members. This inbox has an email address and can be set to accept messages from people outside the group and even outside your organization, much like a traditional distribution list.|
|[Calendar](https://support.office.com/article/schedule-a-meeting-on-a-group-calendar-in-outlook-0cf1ad68-1034-4306-b367-d75e9818376a)|For scheduling events related to the group|
|[SharePoint team site](https://support.office.com/article/what-is-a-sharepoint-team-site-75545757-36c3-46a7-beed-0aaa74f0401e)|A central repository for information, links and content relating to your group|
|[OneNote notebook](https://support.office.com/article/get-started-with-onenote-e768fafa-8f9b-4eac-8600-65aa10b2fe97)|For gathering ideas, research, and information|
|[Planner](https://support.office.com/article/microsoft-planner-help-4a9a13c6-3adf-4a60-a6fc-15c0b15e16fc)|For assigning and managing project tasks among your group members|
|[Yammer group](https://support.office.com/article/Learn-about-Office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2)|A common place to have conversations and share information|
|Teams|A chat-based workspace in Microsoft 36|
|Stream|A video streaming service|

> [!NOTE]
> When a new Office 365 Group is created via Yammer or Teams, the group isn't visible in Outlook or the address book because the primary communication between those users happens in their respective clients. Yammer groups cannot be connected to Teams.

## Key governance capabilities and licensing requirements

Governance capabilities for collaboration in Microsoft 365 include features in Microsoft 365, Teams, SharePoint, and Azure Active Directory.

| Capability or feature | Description | Licensing |
|:----------------------|:------------|:----------|
|Team and site sharing|Control if teams, groups, and sites can be shared with people outside your organization.|Microsoft 365 E5 or E3|
|Domain allow/block|Restrict sharing with people outside your organization to people from specific domains.|Microsoft 365 E5 or E3|
|Self-service site creation|Allow or prevent users from creating their own SharePoint sites.|Microsoft 365 E5 or E3|
|Restricted site and file sharing|Restrict site, file, and folder sharing to members of a specific security group.|Microsoft 365 E5 or E3|
|Restricted group creation|Restrict team and group creation to members of a specific security group.|Microsoft 365 E5 or E3 with Azure AD Premium or Azure AD Basic EDU licenses|
|Group naming policy|Enforce prefixes or suffixes on group and team names.|Microsoft 365 E5 or E3 with Azure AD Premium or Azure AD Basic EDU licenses|
|Group expiration policy|Set inactive groups and teams to expire and be deleted after a specified period of time.|Microsoft 365 E5 or E3 with Azure AD Premium licenses|
|Per-group guest access|Allow or prevent team and group sharing with people outside your organization on a per-group basis.|Microsoft 365 E5 or E3|

## Define a collaboration strategy for your organization


I keep tripping over who is doing the creating, and who this article is for. Does IT create the group? Or do users create groups on the fly? Who’s making the decision?




There are multiple places to collaborate and have conversations within Microsoft 365. Understanding where users can start conversations can help you define a strategy for communication.

![Diagram showing when to use Teams, Yammer, and Outlook](../media/inner-loop-outer-loop.png)

- Teams: chat-based workspace (high velocity collaboration) – inner loop
  - Built for collaboration with the people your users work with every day
  - Puts information at the fingertips of users in a single experience
  - Add tabs, connectors and bots
  - Live chat, audio/video conferencing, recorded meetings

- Yammer: connect across the org (enterprise social) – outer loop
  - Communities of practice - Cross-functional groups of people who share a common interest or expertise but are not necessarily working together on a day-to-day basis
  - Leadership connection, learning communities, role-based communities

- Mailbox and calendar (email-based collaboration)
  - Used for targeted communication with a group of people
  - Shared calendar for meetings with other group members
 


## Req’d element: Steps to set up. 

This isn’t so much something that you set up, so we’ll sub with what are the next steps? I assume they’re the next sections in the TOC? Suggest an overview graphic like this, with a list that calls out the steps with links to the articles. Need to tune up the articles too, to be more active & prescriptive and less reference-y.


![Illustration of recommended governance steps](../media/collaboration-governance-steps.png)

See [Plan organization and lifecycle governance for Microsoft 365 groups and Microsoft Teams](plan-organization-lifecycle-governance.md) for details.


[Create your governance plan](collaboration-governance-first.md)

[Settings interactions between Microsoft 365 Groups and SharePoint](groups-sharepoint-governance.md)

[Settings interactions between Microsoft 365 Groups, Teams and SharePoint](groups-sharepoint-teams-governance.md)

[Groups services interactions](groups-services-interactions.md)

[Governing access in Microsoft 365 groups, Teams, and SharePoint](groups-teams-access-governance.md)

[Compliance options for Microsoft 365 groups, Teams, and SharePoint collaboration](groups-teams-compliance-governance)

[Communications governance for collaboration scenarios](groups-teams-communication-governance.md)

[End of lifecycle options for groups, teams, and Yammer](end-life-cycle-groups-teams-sites-yammer.md)



## Req’d element: Best practices. 

I’m not seeing a lot of prescriptive guidance in here, just options? Can we provide some best practices or learnings from the talks you reference below?


## End user impact and change management

Because groups and teams can be created in several ways, we recommend training your users to use the method that fits your organization the best:

- If your organization does most of its communication using email, instruct your users to create groups in Outlook.
- If your organization heavily uses SharePoint or is migrating from SharePoint on-premises, instruct your users to create SharePoint team sites for collaboration.
- If your organization has deployed Teams, instruct your users to create a team when they need need a collaboration space.

This helps avoid confusion if users are unfamiliar with how groups relate to their related services. For more information about how to talk to your users about groups, see [Explaining Microsoft 365 Groups to your users](../admin/create-groups/explain-groups-knowledge-worker.md).

## Training for administrators

These training modules from Microsoft Learn can help you learn the collaboration features in Teams and SharePoint.

### Manage team collaboration with Microsoft Teams

|||
|:---|:---|
|![Teams training icon](../media/manage-team-collaboration-with-microsoft-teams.svg)|Manage team collaboration with Microsoft Teams introduces you to the features and capabilities of Microsoft Teams, the central hub for team collaboration in Microsoft 365. You’ll learn how you can use Teams to facilitate teamwork and communication within your organization, both on and off premises, on a wide range of devices—from desktops to tablets to phones—while taking advantage of all the rich functionality of Office 365 applications. You’ll gain an understanding of how Teams provides a comprehensive and flexible environment for collaboration across applications and devices. This learning path can help you prepare for the Microsoft 365 Certified: Teams Administrator Associate certification.<br><br>2 hr 17 min - Learning Path - 5 Modules|

> [!div class="nextstepaction"]
> [Start >](https://docs.microsoft.com/learn/modules/m365-teams-collab-prepare-deployment/introduction/)

### Collaborate with SharePoint in Microsoft 365

|||
|:---|:---|
|![SharePoint training icon](../media/collaborate-with-sharepoint-in-microsoft-365.svg)|Manage shared content with Microsoft SharePoint introduces you to the features and capabilities of SharePoint, and how it works with Microsoft 365. You'll learn about the different types of SharePoint sites, including hub sites, as well as information protection, reporting, and monitoring. You'll also learn how to use SharePoint file and folder sharing to optimize collaboration, how to share files externally, and how to manage SharePoint sites in the SharePoint admin center. This learning path can help you prepare for the Microsoft 365 Certified: Teamwork Administrator Associate certification.<br><br>1 hr 14 min - Learning Path - 4 Modules|

> [!div class="nextstepaction"]
> [Start >](https://docs.microsoft.com/learn/modules/m365-teams-sharepoint-plan-sharepoint/introduction/)

## Training for end users

These training modules can help your users use Teams, groups, and SharePoint for collaboration in Microsoft 365.

|||
|:---|:---|
|![Set up and customize your team training icon](../media/set-up-customize-team-training.png)<br>**[Set up and customize your team](https://support.microsoft.com/office/702a2977-e662-4038-bef5-bdf8ee47b17b)**|![Collaborate in teams and channels icon](../media/teams-collaborate-channels-training.png)<br>**[Collaborate in teams and channels](https://support.microsoft.com/office/c3d63c10-77d5-4204-a566-53ddcf723b46)**|
|![Teams upload and find files training icon](../media/smc-teams-upload-find-files-training.png)<br>**[Upload and find files](https://support.microsoft.com/office/57b669db-678e-424e-b0a0-15d19215cb12)**|![SharePoint share and sync training icon](../media/sharepoint-share-sync-training.png)<br>**[Share and sync](https://support.microsoft.com/office/98cb2ff2-c27e-42ea-b055-c2d895f8a5de)**|

## Illustrations

These illustrations will help you understand how groups and teams interact with other services in Microsoft 365 and what governance and compliance features are available to help you manage these services in your organization.

### Groups in Microsoft 365 for IT Architects
What IT architects need to know about groups in Microsoft 365

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for groups infographic](../downloads/msft-m365-groups-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) <br/> [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-groups.vsdx) <br> Updated June 2019|These illustrations detail the different types of groups, how these are created and managed, and a few governance recommendations.|

### Microsoft Teams and related productivity services in Microsoft 365 for IT architects
The logical architecture of productivity services in Microsoft 365, leading with Microsoft Teams.

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Teams logical architecture poster](../downloads/msft-teams-logical-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-teams-logical-architecture.pdf) <br/> [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-teams-logical-architecture.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-teams-logical-architecture.vsdx)  <br>Updated April 2019   |Microsoft provides a suite of productivity services that work together to provide collaboration experiences with data governance, security, and compliance capabilities. <br/> <br/>This series of illustrations provides a view into the logical architecture of productivity services for enterprise architects, leading with Microsoft Teams.|

### Microsoft 365 information protection and compliance capabilities

Microsoft 365 includes a broad set of information protection and compliance capabilities. Together with Microsoft’s productivity tools, these capabilities are designed to help organizations collaborate in real time while adhering to stringent regulatory compliance frameworks. 

This set of illustrations uses one of the most regulated industries, financial services, to demonstrate how these capabilities can be applied to address common regulatory requirements. Feel free to adapt these illustrations for your own use. 


| Item | Description |
|:-----|:-----|
|[![Model poster: Microsoft 365 information protection and compliance capabilities](../media/solutions-architecture-center/m365-compliance-illustrations-thumb.png)](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.pdf) <br/> English: [Download as a PDF](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.pdf)  \| [Download as a Visio](https://download.microsoft.com/download/3/a/6/3a6ab1a3-feb0-4ee2-8e77-62415a772e53/m365-compliance-illustrations.vsdx) <br/> Japanese: [Download as a PDF](https://download.microsoft.com/download/6/f/1/6f1a7d0e-dd8e-442e-b073-8e94327ae4f8/m365-compliance-illustrations.pdf)  \| [Download as a Visio](https://download.microsoft.com/download/6/f/1/6f1a7d0e-dd8e-442e-b073-8e94327ae4f8/m365-compliance-illustrations.vsdx) <br/> Updated November 2020|Includes: <ul><li>  Microsoft information protection and data loss prevention</li><li>Retention policies and retention labels </li><li>Information barriers</li><li>Communication compliance</li><li>Insider risk</li><li>Third-party data ingestion</li>|

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
