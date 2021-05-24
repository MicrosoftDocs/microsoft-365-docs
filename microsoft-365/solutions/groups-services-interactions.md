---
title: "Groups services interactions"
ms.reviewer: 
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: "Groups services interactions"
---

# Groups services interactions

Microsoft 365 Groups provides a common fabric for a number of services and workloads within the Microsoft 365 platform to deliver a connected experience for end-users. At its core, a Microsoft 365 group exists to provide:

- A way to manage the membership (Azure AD)
- A place for messaging and conversations to take place (Exchange mailbox, Microsoft Teams, Yammer)
- A place for files to be stored (SharePoint)
- A calendar for scheduling (Exchange)
- A notebook for capturing notes (OneNote)

At the point of group creation, a number of other resources are also provisioned, however they are not visible until accessed for the first time from the service:

- A board for managing group tasks (Planner)
- A workspace for reporting (Power BI)
- An area for shared videos (Microsoft Stream)
- An area for shared forms (Forms)

Across Microsoft 365, other services are able to interact with Microsoft 365 groups to deliver additional functionality and capabilities to group members.
Examples of this include:

- Power Apps for apps
- Power Automate for workflows
- Project on the web and Roadmap for waterfall-based project management
- Teams for channel-based conversations
- Yammer for communities of interest

## User interactions with groups

Microsoft 365 Groups can be created and managed from a variety of interfaces, both by administrators and end-users. 

### Administrative experiences

Administrators can create and manage Microsoft 365 groups from several of the workload admin centers, command-line interfaces that support scripting, as well as custom-built apps interacting with the Graph API. The only exception to this is Yammer groups – which must be created from within the Yammer web interface.

**Related settings**

Across the various administrative interfaces that can manage group settings exists several overlaps which you should be aware of.

**Microsoft 365 admin center**

In the Microsoft 365 admin center, guest access to Groups is enabled by default, as is the ability to allow owners to add guests. There are no further organization-level controls available for Groups from this admin center.

**Azure AD admin center**

The Azure AD admin center offers controls around whether users can create Groups or assign owners in Azure portals, as well as expiration and naming policy settings.

The admin center also provides a number of guest invitation control measures that go beyond that of the Microsoft 365 admin center, such as the ability to limit whether non-owners can also invite guests

**SharePoint**

SharePoint sites are created with Owner, Member and Visitor security groups, with the first two matching up to their Microsoft 365 Group counterparts. While membership for SharePoint Online sites is generally managed by the associated Microsoft 365 Group, it is not a bidirectional relationship. Any changes to membership at the Microsoft 365 group level are reflected in SharePoint, however if membership is changed in the SharePoint group, this is not reflected in the Microsoft 365 group.

### User experiences

End users can create groups from several of the services within Microsoft 365, and in others they can only share with a group.

The following services allow creation of groups by end users:
 	 	 	 	 	 	 
Outlook	Planner	Project for the web	SharePoint	Stream	Microsoft Teams	Yammer

**Restriction of group creation**

A common approach to control sprawl of teams is to limit which users can create them. This can only be done by limiting the creation of groups. Doing this impacts the ability to create groups from other services where that may be necessary for end-user. Microsoft 365 Groups does not support the ability to restrict the creation of groups from some apps or services while allowing it from others.

The experience of group creation restriction varies between apps and services:


|App or service|Experience|
|:-------------|:---------|
|Outlook|**New group** option is removed from New menu in people page|
|Planner|**New plan** explains that group creation has been turned off and offers to add the plan to an existing group|
|Project for the web and Roadmap|**Create group** menu explains that group creation is restricted and suggests using an existing group.|
|SharePoint|Still able to create a team site that is not connected to a group.|
|Stream|**Group** option does not appear under the **Create menu**.|
|Teams|User cannot create a team with a new group but can still create a team that utilizes an existing group.<br><br>**Create a team** button is replaced with **Create team from a group**.|
|Yammer|**Create a group** option is removed from main Groups/Communities navigation.|

## Services interactions with groups

See the Groups in Microsoft 365 poster for information about different types of groups, how these are created and managed, and a few governance recommendations.

[![Thumb image for groups infographic](../downloads/msft-m365-groups-architecture-thumb.png)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf)

[PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/msft-m365-groups.pdf) \| [Visio](https://github.com/MicrosoftDocs/OfficeDocs-Enterprise/raw/live/Enterprise/downloads/msft-m365-groups.vsdx)

The following table provides an overview of Microsoft 365 Groups interactions with various services:

|Product|Features|Does the service<br>exist without a group?|Can the service<br>create a group?|Does deleting the<br>instance delete the group?|
|:---|:---|:---|:---|:---|
|Azure AD|Membership, Group controls, Guests|Yes|Yes|Yes|
|Exchange|Calendar, mailbox|Yes|Yes|Yes|
|Forms|Form|Yes|No|No|
|OneNote|Notebook|Yes|No|No|
|Planner|Task board|No|Yes|Yes|
|Power Apps app|App|Yes|No|No|
|Power Automate|Workflow|Yes|No|No|
|Power BI (classic)|Workspace|No|Yes|Yes|
|Power BI (new)|Workspace|Yes|No|Yes|
|Project for the web|Project plan|Yes|Yes|No|
|Roadmap|Roadmap|Yes|Yes|No|
|SharePoint|Site|Yes|Yes|Yes|
|Stream|Channel, video|Yes|Yes|Yes|
|Teams|Team|No|Yes|Yes|
|Yammer|Group|Yes|Yes|Yes|

While the table above provides a high-level overview of group interactions with Microsoft 365 services, there are a number of nuances and intricacies that you should understand. The following sections take a more in-depth look at the specific workloads and their interactions with groups.

## Azure AD

Azure AD provides the underlying identity management capabilities across Microsoft 365.

**Key features provided to Groups**

- Group membership
- Naming policy
- Expiration policy
- Guests
- Restriction of Group creation

**Can Azure AD create a Group?**

Yes, Microsoft 365 Groups can be created from Azure AD either through the administration web portal, through PowerShell, or Graph API.

**Does Azure AD exist without a group?**

Yes, Azure AD performs a great number of services that have no relation to Microsoft 365 Groups. Each Microsoft 365 group is represented as an object in Azure AD.

**Can there be multiple instances of Azure AD per Group?**

No, there is only one instance of Azure AD.

**Can Azure AD be associated with multiple Groups?**

Yes, because Azure AD is the underlying platform that provides the group membership service.

**Can Azure AD’s association with a group change?**

No, Azure AD is the underlying platform where groups exist.

**Does deleting the instance delete the Group?**

Deleting the group in Azure AD will delete relevant group-associated services and content.

## Teams

Teams is a chat-centered workspace aimed at enhancing collaboration by providing a singular interface to interact with a variety of Microsoft and third-party services.

By default, when a team is created, the mailbox and calendar associated with the Microsoft 365 group are hidden from both the Global Address List in Exchange, as well as Outlook. This can be manually overridden by an administrator if the user would like to use both Outlook and Teams on the same Microsoft 365 Group.

**Key features provided to Groups**

- Conversations
- Channels & tabs
- Meetings

**Can Teams create a group?**

Yes, creating a new team will create a new Microsoft 365 group. It is also possible to create a team for an existing group that does not currently have one.

**Do teams exist without a group?**

No, it is not possible for a team to exist without a Group.

**Can there be multiple teams per group?**

No, the relationship between a team and a group is 1:1.

**Can a team be associated with multiple groups?**

No, the team itself can only be associated with a single group.

**Can a team’s association with a group change?**

No, the team can only ever be associated with the group to which it was originally associated.

**Does deleting the team delete the group?**

Yes, deleting the team in Microsoft Teams will delete the group, group-associated services, and content.

## Exchange

Exchange Online provides messaging, calendar, contact, and associated functionality. In the context of a Group, only a single resource is associated – as opposed to an entire service instance.

**Key features provided to Groups**

- Mailbox and calendar
- Ability to email all Group members
- Storage of Teams channel conversations for eDiscovery purposes, Planner comments

**Can Exchange create a group?**

Yes, it is possible to create a group from the Exchange Online admin center, as well as from Outlook. You can also convert Exchange distribution lists to Microsoft 365 groups.

**Does Exchange exist without a Group?**

Yes, Exchange Online provides a number of services, including shared mailboxes and calendars, without any group association.

**Can there be multiple instances of Exchange mailboxes or calendars per group?**

No, there can only be a single Exchange Online mailbox and calendar for a group.

**Can Exchange mailboxes and calendars be associated with multiple groups?**

No, the mailbox and calendar have a 1:1 relationship with the group. It is possible to share the mailbox with other users or groups, however this does not establish any form of service association.

**Can the Exchange mailbox or calendar’s association with a group change?**

No, the mailbox and calendar   cannot be changed to a different group. However, the content can be moved from one mailbox to another within Outlook or by using a third-party tool.

**Does deleting the mailbox delete the group?**

Yes, deleting the mailbox in Exchange will delete the group as well as group-associated services and content.

## Forms

Forms provides web-based surveys and quizzes.

**Key features provided to groups**

- Ownership of forms

**Can Forms create a group?**

No, Forms cannot create a group.

**Do forms exist without a group?**

Yes, surveys and quizzes can be created directly in an end-user’s account.

**Can there be multiple forms per group?**

Yes, there can be multiple forms associated with a group.

**Can forms be associated with multiple groups?**

No, a form can only be associated with a single group.

**Can a form’s association with a group change?**

No, once a form is associated with a group (either created directly within, or ownership transferred from an individual) it cannot be moved to another group.

**Does deleting the form delete the group?**

No, it is not possible to delete a group from the Forms interface, only individual forms.

## OneNote

OneNote is a digital notebook application. The OneNote notebook created with a group is a file in the associated SharePoint site rather than a group-connected service.

**Key features provided to groups**

- Shared notebook (stored in the Group-associated SharePoint library)

**Can OneNote create a group?**

No, the OneNote application cannot create a group.

**Do OneNote notebooks exist without a group?**

Yes, notebooks can be created directly in OneDrive or in other shared locations.

**Can there be multiple OneNote notebooks per group?**

Yes, a notebook is created by default and others can be added, however any link to OneNote from group-associated services will always go to the default notebook.

**Can a OneNote notebook be associated with multiple groups?**

No, the notebook is stored in the group-associated SharePoint site library and linked from various interfaces. It can however be shared with other Groups in the same way it can be shared with individuals.

**Can the notebook’s association with a group change?**

No, the notebook itself is associated with the group and can be directly accessed from other group-connected services, however the content can be moved from one notebook to another within the OneNote application.

**Does deleting the notebook delete the group?**

No, however if the OneNote notebook is deleted there may be broken links in some of the group-associated services.

## Planner

Planner is a lightweight  group task management service.

**Key features provided to groups**

- Board for managing group tasks

**Can Planner create a group?**

Yes, creation of a plan will create a new group.

**Does a Planner board exist without a group?**

No, a plan must be associated with a group.

**Can there be multiple plans per group?**

Yes, there can be multiple plans per group.

**Can a plan be associated with multiple groups?**

No, a plan relies solely on the group membership to determine access.

**Can a plan’s association with a group change?**

No, however copying a plan creates a new group.

> [!NOTE]
> A Group created by any other application will not show up in Planner automatically for a user. To access the board initially they will need to open it from another Group-based interface such as Outlook.

**Does deleting the plan delete the group?**

Yes, deleting the plan will delete the group and group-associated services and content.

## Power Apps

Power Apps provides a canvas for app development without code.

**Key features provided to Groups**

- Apps can be shared with a group to be run and modified

**Can Power Apps create a group?**

No, Power Apps cannot create a Microsoft 365 group.

**Do Power Apps exist without a group?**

Yes, apps can be created within Power Apps and reside within the creators account until shared or published.

**Can there be multiple apps per group?**

Yes, there can be multiple apps shared with a group.

**Can apps be associated with multiple groups?**

Yes, an app can be shared with multiple groups.

**Can an app’s association with a group change?**

Yes, as the association between Power Apps and a Microsoft 365 group is sharing only – the app still resides with the creator.

> [!IMPORTANT]
> [Groups must be security enabled before apps can be shared with them](/powerapps/maker/canvas-apps/share-app#share-an-app-with-office-365-groups).

**Does deleting the app delete the group?**

No, the apps are not connected to the group other than being shared with them.

## Power Automate

Power Automate (formerly known as Microsoft Flow) provides workflows and automation services.

**Key features provided to groups**

- Workflows can be shared with a group to be run and modified.

**Can Power Automate create a group?**

No, Power Automate cannot create a Microsoft 365 group in the context of being associated with one.

It is possible however to create a flow that performs various operations such as creating an Azure AD security group or updating membership of a Microsoft 365 group.

**Do flows exist without a group?**

Yes, flows can be created within Power Automate and reside within the creators account until shared or published.

**Can there be multiple flows per group?**

Yes, there can be multiple flows shared with a group.

**Can a flow be associated with multiple groups?**

Yes, a flow can be shared with multiple groups.

**Can a flow’s association with a group change?**

Yes, as the association between Power Automate and a Microsoft 365 group is sharing only – the flow still resides with the creator.

**Does deleting a flow delete the group?**

No, like Power Apps, the flows are not connected to the group other than being shared with them.

## Power BI (classic)

Power BI provides interactive data-driven dashboards and reports.

**Key features provided to groups**

- Data reporting

**Can Power BI create a group?**

Yes, creating a classic workspace will create a Microsoft 365 group.

**Does a Power BI classic workspace exist without a group?**

No, [a classic workspace in Power BI must be associated with a group](/power-bi/collaborate-share/service-collaborate-power-bi-workspace).

**Can there be multiple Power BI workspaces per group?**

No, the relationship between a classic workspace and a group is 1:1.

**Can a workspace be associated with multiple groups?**

Technically no, while the classic workspace is created with the group, the content can be shared outside of the Group with users and security groups.

**Can the workspace's association with a group change?**

No, the classic workspace itself is associated with the Group, however the content can be moved from one workspace to another within the Power BI interface or by exporting contents locally.

**Does deleting the workspace delete the group?**

Yes, deleting the workspace in Power BI will delete group and  group-associated services and content.

## Power BI (new)

Power BI provides interactive data-driven dashboards and reports.

While creating a new workspace in Power BI does not create a Microsoft 365 Group, creating a group by any other means creates a  new (not classic) workspace in Power BI.

**Key features provided to groups**

- Data reporting

**Can Power BI create a group?**

No, it is not possible to create a Microsoft 365 group from the new Power BI interface.

**Does the new Power BI workspace exist without a group?**

Yes, it is possible to have reports and workspaces created in Power BI that are not associated with Microsoft 365 groups.

**Can there be multiple workspaces per group?**

Yes, [multiple workspaces created by Power BI can be shared with a single group](/power-bi/collaborate-share/service-create-the-new-workspaces#give-access-to-your-workspace).

**Can a workspace be associated with multiple groups?**

No, a workspace created by Power BI can only be associated with a single group.

**Can a workspace's association with a group change?**

Yes and no. A workspace created by Power BI can only be associated with a single group at a time but can change the association at any time. A workspace created in Power BI by a group is permanently associated to that group.

**Does deleting the workspace delete the group?**

Yes, deleting the workspace in Power BI will delete the group and group-associated services and content.

## Project for the web

Project for the web offers the ability to create project plans, Gantt charts, and roadmaps.
Key features provided to groups.

- Project plans

**Can Project for the web create a group?**

Yes, it is possible to create a new Microsoft 365 group directly from Project for the web.

**Do projects exist without a group?**

Yes, projects can exist without being associated with a Microsoft 365 group, however assignment of tasks requires group association.

**Can there be multiple projects per group?**

Yes, it is possible to connect multiple projects in a single group.

**Can project be associated with multiple groups?**

No, a project can only be associated with a single group.

**Can a project’s association with a group change?**

No, once the association with a group is established, it cannot change.

**Does deleting the project delete the group?**

No, deleting the project in Project for the web will not delete the group.

## Roadmap

Roadmap provides the ability to create project roadmaps with Project for the web and Project Online.

**Key features provided to Groups**

- Project roadmaps

**Can Roadmap create a group?**

Yes, it is possible to create a new Microsoft 365 group directly from roadmap.

**Does Roadmap exist without a group?**

Yes, roadmaps can exist without being associated with a Microsoft 365 group, however sharing the roadmap requires group association.

**Can there be multiple roadmaps per group?**

Yes, it is possible to connect multiple roadmaps to a single group.

**Can a roadmap be associated with multiple groups?**

No, a roadmap can only be associated with a single group.

**Can a roadmap's association with a group change?**

No, once the association with a group is established, it cannot change.

**Does deleting the roadmap delete the group?**

No, deleting the roadmap will not delete the group.

## SharePoint

SharePoint is a web-based content management platform that provides among other things, storage services for a number of Microsoft 365 services.

**Key features provided to Groups**

- Document library
- Library for storage of OneNote notebook
- Storage of Teams wiki files

**Can SharePoint create a group?**

Yes, creating a team site in SharePoint will create a Microsoft 365 group by default. It is also possible to create a group and, optionally, a team for an existing site.

**Do SharePoint sites exist without a group?**

Yes, SharePoint offers a number of non-group-associated services and sites such as communication and hub sites. 

**Can there be multiple sites per group?**

No, there can only be a single site per group. Private channels in Teams use additional sites that are not connected to the group.

**Can sites be associated with multiple groups?**

Technically no, but while a site is created with a group, the content can be shared with other groups.

**Can a site’s association with a group change?**

No, the site itself is associated with the group, however the content can be moved from one site to another within the SharePoint interface, by exporting content locally, or by using a third-party tool.

**Does deleting the site delete the group?**

Yes, deleting the site in SharePoint will delete group and group-associated services and content.

## Stream

Microsoft Stream is a video hosting and sharing platform.

**Key features provided to Groups**

- Video storage
- Teams meeting recording
- Video channels

**Can Stream create a group?**

Yes, it is possible to create a new Microsoft 365 group directly from Stream.

**Does Stream exist without a group?**

Yes, video channels and videos can exist in Stream without being associated with a group.

**Can there be multiple videos and channels per Group?**

Yes, there can be multiple videos and channels in each group.

**Can a video or channel be associated with multiple groups?**

Yes, while a video or channel is created with a group, it can be shared with other groups.

**Can its association with a Group change?**

Yes and no; videos in Stream are owned by the original uploader or meeting recorder and so can be associated with any group, however video channels can only be associated with the group they were originally created in.

**Does deleting videos or channels delete the group?**

No, deleting videos or channels doesn’t delete the group. However, deleting the group itself in Stream will delete group-associated services and content, except for the actual videos.

## Yammer

Yammer is an enterprise social platform designed to foster community engagement within and between organizations.

Creating a community (formerly known as “group”) in Yammer creates a mailbox, but at present this is not used.

A Microsoft 365 group that is associated with Yammer cannot be used with a team in Microsoft Teams.

**Key features provided to Groups**

- Conversation area

**Can Yammer create a Microsoft 365 group?**

Yes, creating a new group in Yammer will create a new Microsoft 365 group, if the platforms are connected and the user has the ability to create a group.

A Yammer group with associated Microsoft 365 group cannot be created in any interface or service other than Yammer itself.

**Does a Yammer group exist without a Microsoft 365 group?**

Yes, it is possible to create a Yammer group without a Microsoft 365 group.

If the Yammer platform is not connected to Microsoft 365 groups, or users do not have the ability to create a Microsoft 365 group, Yammer groups are created without a Microsoft 365 group association.

**Can there be multiple Yammer groups per Microsoft 365 group?**

No, the relationship between a Yammer group and a Microsoft 365 group is 1:1.

**Can a Yammer group be associated with multiple Microsoft 365 groups?**

No, the Yammer group can only be associated with a single Microsoft 365 group. It is possible for posts to be shared with or moved to other Yammer groups.

**Can a Yammer group’s association with a Microsoft 365 group change?**

No, the Yammer group can only ever be associated with the Microsoft 365 group to which it was originally associated.

**Does deleting the Yammer group delete the Microsoft 365 group?**

Yes, deleting the group in Yammer will delete related Microsoft group and group-associated services and content.

## Related topics

[Collaboration governance planning step-by-step](collaboration-governance-overview.md#collaboration-governance-planning-step-by-step)

[Create your collaboration governance plan](collaboration-governance-first.md)