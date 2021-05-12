---
title: "End of lifecycle options for groups, teams, and Yammer"
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
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
description: "End of lifecycle options for groups, teams, and Yammer."
---

# End of lifecycle options for groups, teams, and Yammer

Microsoft 365 Groups and Microsoft Teams work with a variety of connected services. When a group or team is deleted, most of the information in the connected services is also deleted. This article describes options for retaining information by moving it out of the group or team prior to deletion.

A common practice for groups or teams that are no longer required is to move the files out of the team and store them in another location such as a SharePoint document library acting as a repository or archive. This practice is based on a legacy style of working where information is stored in files and folders, and communications are conducted via email.

The following table outlines the services associated with groups and teams and key types of content found in each of them:

|Service|Types of content|
|:------|:---------------|
|Teams|Channel conversations, files in channels|
|Forms|Survey structure and results|
|OneNote|Notebook|
|Outlook|Mail and calendar|
|Planner|Project status and task information|
|Power Automate|Workflows|
|Power BI|Data, reports, and dashboards|
|Project on the web|Project plans|
|Roadmap|Roadmaps|
|SharePoint|Files, lists, Teams channel wiki data|
|Stream|Videos|
|Yammer|Conversations|

When deleting a group or team, most of the associated resources are also deleted. Some of the exceptions to this include videos in Stream – these remain and are still owned by the person who uploaded/recorded them, as do flows in Power Automate. Project and roadmap data in Project on the web remains in the CDS and can be restored separately.

Groups and teams remain in a soft-delete state for 30 days and can be restored at any time. However, after the 30 days they, and any associated resources such as services and content, are completely purged from the Microsoft 365 environment. Any content protected by a retention policy remains available through eDiscovery searches.

## End of life cycle considerations for group-connected services

There are three key areas that team and group owners and IT administrators need to consider when deleting a group or team.

**Content**

Does the content need to be retained after the team is no longer functional or in existence? Is it sufficient to rely on retention capabilities of Microsoft 365, or is some of the content in apps and services that do not offer retention? Does the content need to be retained for record management purposes, for archival purposes, or for future use and reference purposes?

These questions must be asked before any team is archived or deleted, to avoid any potential data loss.

**Services**

On top of the content across various apps and services, do they need to stay in their current working form? For example, does the Power BI report need to continue to be accessible, do the Form results need to be available in the visual summary view, are the lists in SharePoint linked to or embedded anywhere?

Similar to the content considerations, these questions must be asked before the underlying group is deleted as simply exporting the content may not be sufficient.

**Guests**

When guests are invited to a team, the workflow creates their identity in the host organization’s Azure Active Directory before adding them to the team. When a team is deleted, guests are not removed from Azure Active Directory and as such still exist in the Microsoft Teams environment. While guests cannot access groups, sites, teams, or content which has not been shared with them, they can still potentially utilize features within Microsoft Teams such as initiating chats, voice and video calls, and using apps.

A team or group owner can invite an external user to become a guest in Azure Active Directory, add them to the team, as well as remove them from the team. A team owner cannot, however, remove the guest from Azure Active Directory – this can only be performed by a global admin or user admin.

Therefore it is important to perform guest reviews, as well as to understand whether guests need to be removed from Azure Active Directory upon team deletion. There may be a valid case for guests to remain in the directory, such as being a member of one or more other teams or using other Microsoft 365 or Azure services.

## Teams

Teams-specific content is primarily in the form of conversations.

Conversations in channels cannot be copied or moved using native Microsoft Teams functionality. They can however be exported using the Graph API.

Additionally, if a retention policy is applied to Teams, the conversations are retained and available through eDiscovery searches. Using advanced eDiscovery you can [reconstruct a Teams chat conversation](/microsoft-365/compliance/conversation-review-sets).


### Archiving a team

The benefit of [archiving a team](/microsoftteams/archive-or-delete-a-team) is that it provides full access to the team as it was, so that users can still browse channel conversations and open files even if they are not active. Additionally, teams can be unarchived if there is a need to continue working on them (such as in the case of a project extension).

When a team is archived by an owner, it is set to read-only for members both for content within the team as well as if selected, the associated SharePoint site. The objective of this action is to ensure that conversations in channels are preserved in their existing state, along with SharePoint-based content such as files and wikis.

In the SharePoint site there are no visible changes, however no changes can be made to any files or lists as the SharePoint-based permissions group for the Microsoft 365 Group is set to Site Visitors level. This includes the OneNote notebook for the team, as this is stored in the Site Assets library within the SharePoint site.

When a team is archived, the underlying Microsoft 365 group is still subject to the expiration policy (if set), and as such the owner must continue to renew the team.

While the team’s channel conversations and SharePoint site contents are set to read-only, the same is not applied to other associated services:

- Planner buckets and tasks can still be created, modified, and deleted
- Forms can still receive submissions
- The Outlook mailbox can still receive emails
- Power BI dashboards, reports and data can still be modified
- Projects and roadmaps can still be edited in Project on the web
- Videos can still be uploaded, modified, and deleted in Stream
- Flows in Power Automate can still be created, modified, deleted, and will continue to run (they will fail however, if required to post a message to a channel of the archived team)

## Forms

While a form can be moved from an individual account to a group, it cannot be moved or copied from one group to another. There are three options available for a form when a team is deleted.

**Duplicate the form**

Forms can be [shared as templates](https://support.microsoft.com/office/82ea9d8a-260a-47a0-afdb-497f3d746e3f), allowing other users to copy it to their own account or a group. This does not retain the data from result submissions; only form structure such as questions and settings.

**Export results to a spreadsheet**

If the data of the form responses needs to be retained, this can be achieved by [exporting the results to an Excel spreadsheet](https://support.office.com/article/02859424-341d-406f-b32a-9a0fbaf357af). This will only export the questions and their responses as data – it does not include graphs created by Forms.


**Delete the Form**

While deletion of the group will also result in the deletion of any associated forms, group members can [directly delete them](https://support.microsoft.com/office/2207e468-ce1b-4c4a-a256-caf631d87af0) without being an owner of the group – however this is a manual step that does not provide any additional benefit.

## OneNote

The OneNote notebook included in a group is stored in the Site Assets library within the associated SharePoint site. While notebook files can sometimes be spread across multiple individual files, they cannot be simply copied and opened independently. Instead, the contents of the OneNote notebook must be moved or exported using OneNote 2016.

**Move pages and sections to another notebook**

[Individually moving pages or sections to another notebook](https://support.office.com/article/c3c8b098-7f9c-4c2a-a0dc-ebb83bc76364) provides owners with an opportunity to clean up their data and take only what needs to be retained.

**Export the entire notebook as a package**

If the entire notebook needs to be retained with its existing structure, it can be [exported as a OneNote package](https://support.office.com/article/a4b60da5-8f33-464e-b1ba-b95ce540f309) file and then imported to a new location. Alternatively, this can be used as a method to retain the contents in a single file instead of the existing multi-file structure.

**Print to PDF**

In scenarios where some of the contents of the notebook need only to be retained for reference or as records, individual pages can be [printed to PDF and stored elsewhere](https://support.office.com/article/13d173b5-7f4c-45a8-94eb-9354d63af5cd).

## Mailbox and calendar

It is not uncommon for the group-associated mailbox to be utilized, even though many conversations may have been conducted within team channels. The mailbox only stores emails that were emailed directly to it and does not include emails that were sent directly to channels.

In some cases, the emails stored within the mailbox may simply be notifications of meetings, Planner task updates, and other app or system generated messages. It is important that the contents of the mailbox be reviewed to determine whether the content should be retained or deleted.

If a retention policy is applied to Exchange, the emails and calendar items are retained and available through eDiscovery searches.

**Export mail and calendar**

Team or group members can [export the contents of the mailbox and calendar to an Outlook Data / Personal Storage (PST) file](https://support.office.com/article/14252b52-3075-4e9b-be4e-ff9ef1068f91). This file can then be stored elsewhere, or the contents can be imported into a different mailbox. The former is not recommended as the contents of the PST file are not searchable without opening it in Outlook, and the file itself can become corrupted over time.

**IT-performed content migration**

Administrators can use third-party tools to migrate email and calendar contents between mailboxes without any user intervention. One potential storage location could be a shared mailbox created purely to serve as an “archive” of the group mailbox contents.

## Planner

Each group or team can have multiple plans. It is important during the offboarding process to ensure that each plan is addressed as to whether its contents are retained. Like the other products, there are several approaches to offboard content in Planner.

**Export the plan to a spreadsheet**

If it is only required to keep a copy of the plan for record-keeping purposes, the simplest approach is to [export the plan to an Excel spreadsheet](https://support.microsoft.com/office/4d850c6e-e548-4aab-83b4-b62b68662d2a). This is a one-way action, as there is no option to import plans from a spreadsheet.

> [!IMPORTANT]
> Exporting a plan to Excel will take most information within the plan, but will not include comments, links, or files.

**Copy and move tasks to another Plan**

While this seems like a solution, individual tasks can only be [copied or moved between plans](https://support.microsoft.com/office/ad43a5d8-c1ad-42fd-b3da-fe97d72c8a1b) within the same group, which negates the benefit in if the group associated With the plan is being deleted.

**Copy entire plan**

It is also possible to [copy the entire plan](https://support.microsoft.com/office/50401e13-a25f-40df-93c6-b608cc28c3d4). However this cannot be to an existing group or even within the same group. Copying the plan will create a new group. Additionally, copying the entire plan will not include comments, assignments, links, attachments, or dates.

## Power Automate

Flows created in Power Automate and associated with a group or team do not belong to the group, and instead are owned by the creator and merely shared with other users and groups. As such they are not affected if a group or team is deleted.

**Change ownership of the flow**

If the workflow needs to continue operating, any owners can simply add other users or Microsoft 365 groups as owners.

**Export the flow**

If the workflow does not need to continue operating but it needs to be preserved for potential future use, it can be [exported as a file](https://flow.microsoft.com/blog/import-export-bap-packages/) and imported again later.

## Power BI

Power BI data and workspaces can operate independently from groups and teams and like other workloads offer different ways of being offboarded.

**Copy reports to another workspace**

If the report needs to be preserved in its functional state beyond the life of the group or team, it can be [copied from the existing workspace to another workspace within Power BI](/power-bi/connect-data/service-datasets-copy-reports).

**Export data from a dashboard or report**

Alternatively, if the report no longer needs to be active but the data needs to be retained, it can be [exported to Excel](/power-bi/visuals/power-bi-visualization-export-data).

## Project

Projects and Roadmaps created in Project on the web can be associated with Microsoft 365 groups and offers approaches to offboarding similar to Power BI.

**Assign the project to another group**

If the project needs to be preserved in its functional state beyond the life of the group or team, it can be [assigned to a different Microsoft 365 group](/project-for-the-web/access-a-project-after-group-is-deleted#reassign-the-project) using the Dynamics 365 Administration Center.

**Export data from the project or roadmap**

Using the Dynamics 365 Administration Center it is possible to [export user data from the project](/project-for-the-web/export-user-data-from-project-for-the-web) to a spreadsheet, or if using a PowerShell script the data can be exported to Project file (.MPP) and XML file formats.

## SharePoint
All files in team channels are stored in the document library in the SharePoint site of the associated group. In some cases, content other than documents may exist in SharePoint, such as lists or pages.
Files are generally stored in three primary locations within a SharePoint site:

- Pages - Site Pages library
- Images used in pages – Site Assets library
- Files in channels – Documents library
- Wiki pages – Teams Wiki Data library

If the site has one or more sub-sites nested underneath it, the offboarding process will need to be repeated for each sub-site. If the team contains private channels, there is a separate SharePoint site for each channel.

It is important when removing files from a group or team to consider that they may be shared with users who are not members of the group or team (whether internal or external to the organization), and as such it may be worthwhile communicating the impending change to them.

**Download files**

In the case of files stored within SharePoint in one of the libraries mentioned above, these can be [downloaded to a local computer](https://support.office.com/article/5c7397b7-19c7-4893-84fe-d02e8fa5df05).

**Move files**

Additionally, files can be moved to another location within SharePoint such as a library in a different site.
Reference: https://support.office.com/article/move-or-copy-files-in-sharepoint-00e2f483-4df3-46be-a861-1f5f0c1a87bc

**Export list**
Data stored within SharePoint lists can be [exported to an Excel spreadsheet](https://support.office.com/article/bfb2ea48-6118-4fa9-abb6-cced9424e5d9), and imported again to a list in another site.

Alternatively, a third-party tool can be used to migrate the list between sites in order to retain function, list views, formatting, and other attributes.

**“Export” wiki files**

Wiki contents within team channels are stored in a HTML formatted file in a dedicated library of the associated SharePoint site. They cannot be readily exported and imported to another channel wiki but can be converted to a HTML file and opened as a web page.

## Microsoft Stream

Like Power Automate, videos in Stream associated with a group or team are not actually owned by the group and are not deleted when the group is deleted. Videos in Stream are owned by the person who uploaded or created the video, even if they add users or groups as owners. This is also the case for meetings recorded in a Teams channel; they are owned by the person who initiated the recording.

**Adding other owners**

As the video is retained in Stream regardless of group deletion, the original owner can [share the video with other users and groups, even adding them as owners](/stream/portal-edit-video).

**Download the video**

In scenarios where the video does not need to be retained in Stream or needs to be stored in an alternate location such as a records management system, an owner can be [download it locally](/stream/portal-download-video)

## Yammer

Unlike conversations in Microsoft Teams, Yammer offers both users and administrators options to move or export conversations.

**Move conversations to another group or community**

Conversations can be moved to another Yammer group by any user, not just owners or administrators. This is possible in both the [classic Yammer](https://support.office.com/article/149c6399-4ac1-4ced-84d7-e0660960a872), as well as the [new Yammer](https://support.office.com/article/d63debf1-1c90-4ec5-b5ae-8a00939a1680) interfaces.

**Export network data**

Yammer network administrators can perform an [export of network data](/yammer/manage-security-and-compliance/export-yammer-enterprise-data), however doing so will export all conversations for the entire network. The resulting export however lists the Group ID, so it is possible to filter conversations based on this.
