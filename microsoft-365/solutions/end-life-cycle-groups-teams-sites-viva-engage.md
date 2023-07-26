---
title: "End of lifecycle options for groups, teams, and Viva Engage"
ms.reviewer: mmclean
ms.date: 08/12/2020
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: medium
ms.collection: 
- highpri
- M365-collaboration
- m365solution-collabgovernance
ms.custom: 
- M365solutions
f1.keywords: NOCSH
recommendations: false
description: "End of lifecycle options for groups, teams, and Viva Engage."
---

# End of lifecycle options for groups, teams, and Viva Engage

Microsoft 365 Groups and Microsoft Teams work with multiple connected services. When a group or team is deleted, most of the information in the connected services is also deleted. This article describes options for retaining information by moving it out of the group or team before deletion.

A common practice for groups or teams that are no longer required is to move the files out of the team and archive them in another location such as a SharePoint document library. This practice is based on a legacy style of working where information is stored in files and folders, and communications are conducted via email.

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
|Viva Engage|Conversations|

When deleting a group or team, most of the associated resources are also deleted. Exceptions include:

- Videos in Stream remain and are owned by the person who uploaded/recorded them
- Flows in Power Automate remain and are owned by the person who created them.
- Project and roadmap data in Project on the web remains in the CDS and can be restored separately.

Groups and teams remain in a soft-delete state for 30 days and can be restored at any time. However, after the 30 days they, and any associated resources such as services and content, are purged from the Microsoft 365 environment. Any content protected by a retention policy remains available through eDiscovery searches.

## End of life cycle considerations for group-connected services

There are three key areas that team and group owners and IT administrators need to consider when deleting a group or team.

**Content**

Does the content need to be retained after the team is no longer there? Is it sufficient to rely on retention capabilities of Microsoft 365, or is some of the content in apps and services that don't offer retention? Does the content need to be retained for record management, archival, or future use and reference purposes?

To avoid any potential data loss, these questions must be asked before any team is archived or deleted.

**Services**

Does content need to stay in its current working form? For example, does the Power BI report need to continue to be accessible? Do the Form results need to be available in the visual summary view? Are the lists in SharePoint linked to or embedded anywhere?

These questions must be asked before the underlying group is deleted because exporting the content may not be sufficient.

**Guests**

When guests are invited to a team, a guest account is created in the host organization’s Azure Active Directory before adding them to the team. When a team is deleted, guests aren't removed from Azure Active Directory. While guests can't access groups, sites, teams, or content which hasn't been shared with them, they can still potentially use features within Microsoft Teams such as starting chats, voice and video calls, and using apps.

A team or group owner can invite someone from outside the organization to become a guest in Azure Active Directory by adding them to a team. A team owner can't, however, remove the guest from Azure Active Directory. Deleting accounts can only be performed by a global admin or user admin.

It's important to perform guest reviews and to understand whether guests need to be removed from Azure Active Directory upon team deletion. There may be a valid case for guests to remain in the directory, such as being a member of other teams or using other Microsoft 365 or Azure services.

## Teams

Teams-specific content is primarily in the form of conversations.

Conversations in channels can't be copied or moved using native Microsoft Teams functionality. They can however be exported using the Graph API.

Additionally, if a retention policy is applied to Teams, the conversations are retained and available through eDiscovery searches. Using eDiscovery (Premium) you can [reconstruct a Teams chat conversation](/microsoft-365/compliance/conversation-review-sets).


### Archiving a team

The benefit of [archiving a team](/microsoftteams/archive-or-delete-a-team) is that it provides full access to the team as it was. Users can still browse channel conversations and open files even if they aren't active. Additionally, teams can be unarchived if there's a need to continue working on them (for example, if a project is extended).

When a team is archived by an owner, it's set to read-only for members both for content within the team and if selected, the associated SharePoint site. The objective of this action is to ensure that conversations in channels are preserved in their existing state, along with SharePoint-based content such as files and wikis.

In the SharePoint site there are no visible changes. However, no changes can be made to any files or lists because the SharePoint permissions for the Microsoft 365 group are set to **Site visitors**. This includes the OneNote notebook for the team, which is stored in the Site Assets library within the SharePoint site.

When a team is archived, the underlying Microsoft 365 group is still subject to the expiration policy (if set), and as such the owner must continue to renew the team.

While the team’s channel conversations and SharePoint site contents are set to read-only, the same isn't applied to other associated services:

- Planner buckets and tasks can still be created, modified, and deleted.
- Forms can still receive submissions.
- The Outlook mailbox can still receive emails.
- Power BI dashboards, reports and data can still be modified.
- Projects and roadmaps can still be edited in Project on the web.
- Videos can still be uploaded, modified, and deleted in Stream.
- Flows in Power Automate can still be created, modified, deleted, and will continue to run. (They will fail however, if required to post a message to a channel of the archived team.)

## Forms

While a form can be moved from an individual account to a group, it can't be moved or copied from one group to another. There are three options available for a form when a team is deleted.

**Duplicate the form**

Forms can be [shared as templates](https://support.microsoft.com/office/82ea9d8a-260a-47a0-afdb-497f3d746e3f), allowing other users to copy it to their own account or a group. This doesn't retain the data from result submissions; only form structure such as questions and settings.

**Export results to a spreadsheet**

If the data of the form responses needs to be retained, this can be achieved by [exporting the results to an Excel spreadsheet](https://support.office.com/article/02859424-341d-406f-b32a-9a0fbaf357af). This will only export the questions and their responses as data – it doesn't include graphs created by Forms.

**Delete the Form**

While deletion of the group will also result in the deletion of any associated forms, group members can [directly delete them](https://support.microsoft.com/office/2207e468-ce1b-4c4a-a256-caf631d87af0) without being an owner of the group. However, this is a manual step that doesn't provide any additional benefit.

## OneNote

The OneNote notebook included in a group is stored in the Site Assets library within the associated SharePoint site. While notebook files can sometimes be spread across multiple individual files, they can't be copied and opened independently. Instead, the contents of the OneNote notebook must be moved or exported using the OneNote desktop client.

**Move pages and sections to another notebook**

[Individually moving pages or sections to another notebook](https://support.office.com/article/c3c8b098-7f9c-4c2a-a0dc-ebb83bc76364) provides owners with an opportunity to clean up their data and take only what needs to be retained.

**Export the entire notebook as a package**

If the entire notebook needs to be retained with its existing structure, it can be [exported as a OneNote package](https://support.office.com/article/a4b60da5-8f33-464e-b1ba-b95ce540f309) file and then imported to a new location. Instead, this can be used as a method to retain the contents in a single file instead of the existing multi-file structure.

**Print to PDF**

In scenarios where some of the contents of the notebook need only to be retained for reference or as records, individual pages can be [printed to PDF and stored elsewhere](https://support.office.com/article/13d173b5-7f4c-45a8-94eb-9354d63af5cd).

## Mailbox and calendar

It's not uncommon for the group-associated mailbox to be used, even though many conversations may have been conducted within team channels. The mailbox only stores emails that were emailed directly to it and doesn't include emails that were sent directly to channels.

In some cases, the emails stored within the mailbox may be notifications of meetings, Planner task updates, and other app or system-generated messages. it's important that the contents of the mailbox be reviewed to determine whether the content should be retained or deleted.

If a retention policy is applied in Exchange, the emails and calendar items are retained and available through eDiscovery searches.

**Export mail and calendar**

Team or group members can [export the contents of the mailbox and calendar to an Outlook Data / Personal Storage (PST) file](https://support.office.com/article/14252b52-3075-4e9b-be4e-ff9ef1068f91). This file can then be stored elsewhere, or the contents can be imported into a different mailbox. The former isn't recommended as the contents of the PST file aren't searchable without opening it in Outlook, and the file itself can become corrupted over time.

**IT-performed content migration**

Administrators can use third-party tools to migrate email and calendar contents between mailboxes without any user intervention. One potential storage location could be a shared mailbox created purely to serve as an “archive” of the group mailbox contents.

## Planner

Each group or team can have multiple plans. It's important during the off-boarding process to ensure that retention requirements are addressed for each plan. Like the other services, there are several approaches to off-board content in Planner.

**Export the plan to a spreadsheet**

If it's only required to keep a copy of the plan for record-keeping purposes, the simplest approach is to [export the plan to an Excel spreadsheet](https://support.microsoft.com/office/4d850c6e-e548-4aab-83b4-b62b68662d2a). This is a one-way action - there's no option to import plans from a spreadsheet.

> [!IMPORTANT]
> Exporting a plan to Excel will take most information within the plan, but won't include comments, links, or files.

**Copy and move tasks to another Plan**

While copying or moving tasks to another plan seems like a solution, individual tasks can only be [copied or moved between plans](https://support.microsoft.com/office/ad43a5d8-c1ad-42fd-b3da-fe97d72c8a1b) within the same group. This won't back up the data if the group associated with the plan is being deleted.

**Copy entire plan**

It's also possible to [copy the entire plan](https://support.microsoft.com/office/50401e13-a25f-40df-93c6-b608cc28c3d4). Copying can't be done to an existing group. Copying the plan will create a new group. Additionally, copying the entire plan won't include comments, assignments, links, attachments, or dates.

## Power Automate

Flows created in Power Automate and associated with a group or team don't belong to the group. They are owned by the creator and merely shared with other users and groups. As such they aren't affected if a group or team is deleted.

**Change ownership of the flow**

If the flow needs to continue operating, any owners can add other users or Microsoft 365 groups as owners.

**Export the flow**

If the flow doesn't need to continue operating but it needs to be preserved for potential future use, it can be [exported as a file](https://flow.microsoft.com/blog/import-export-bap-packages/) and imported again later.

## Power BI

Power BI data and workspaces can operate independently from groups and teams and like other workloads offer different ways of being off-boarded.
Classic workspaces in Power BI are associated with a Microsoft 365 Group, whereas modern workspaces are not - and can merely share their content with the group (similar to a flow).

**Copy reports to another workspace**

If you need the report once the group or team is deleted, it can be [copied from the existing workspace to another workspace within Power BI](/power-bi/connect-data/service-datasets-copy-reports).

**Export data from a dashboard or report**

Instead, if the report no longer needs to be active but the data needs to be retained, it can be [exported to Excel](/power-bi/visuals/power-bi-visualization-export-data).

## Project

Projects and Roadmaps created in Project for the web are associated with Microsoft 365 groups and have approaches to off-boarding similar to Power BI.

**Assign the project to another group**

If the project needs to be preserved in its functional state beyond the life of the group or team, it can be [assigned to a different Microsoft 365 group](/project-for-the-web/access-a-project-after-group-is-deleted#reassign-the-project). This can be done using the Dynamics 365 Administration Center.

**Export data from the project or roadmap**

Using the Dynamics 365 Administration Center, it's possible to [export user data from the project](/project-for-the-web/export-user-data-from-project-for-the-web) to a spreadsheet. The data can also be exported to Project file (.MPP) and XML file formats by using PowerShell.

## SharePoint

All files in team channels are stored in the SharePoint site of the associated group. In some cases, content other than documents may exist in SharePoint, such as lists or pages.

Files are generally stored in three primary locations within a SharePoint site:

- Pages - Site Pages library
- Images used in pages – Site Assets library
- Files in channels – Documents library
- Wiki pages – Teams Wiki Data library

If the site has one or more subsites, the off-boarding process will need to be repeated for each subsite. If the team contains private or shared channels, there's a separate SharePoint site for each channel.

It's important when removing files from a group or team to consider that they may be shared with users who aren't members of the group or team. You may want to communicate the impending change to them.

**Download files**

Files stored in SharePoint in one of the libraries mentioned above can be [downloaded to a local computer](https://support.office.com/article/5c7397b7-19c7-4893-84fe-d02e8fa5df05).

**Move files**

Additionally, files can be [moved to another location within SharePoint such as a library in a different site](https://support.office.com/article/00e2f483-4df3-46be-a861-1f5f0c1a87bc).

**Export list**

Data stored within SharePoint lists can be [exported to an Excel spreadsheet](https://support.office.com/article/bfb2ea48-6118-4fa9-abb6-cced9424e5d9), and imported again to a list in another site.

Alternatively, Power Automate or a third-party tool can be used to migrate the list between sites in order to retain function, list views, formatting, and other attributes.

**“Export” wiki files**

Wiki contents within team channels are stored in an HTML formatted file in a dedicated library of the associated SharePoint site. They can't be readily exported and imported to another channel wiki but can be converted to an HTML file and opened as a web page.

## Microsoft Stream

Like Power Automate, videos in Stream associated with a group or team aren't actually owned by the group and aren't deleted when the group is deleted. Videos in Stream are owned by the person who uploaded or created the video, even if they add users or groups as owners. Meetings recorded in a Teams channel are owned by the person who started the recording.

**Adding other owners**

Because the video is retained in Stream when the group is deleted, the original owner can [share the video with other users and groups, even adding them as owners](/stream/portal-edit-video).

**Download the video**

In scenarios where the video doesn't need to be retained in Stream or needs to be stored in an alternate location such as a records management system, an owner can [download it locally](/stream/portal-download-video).

## Viva Engage

Unlike conversations in Microsoft Teams, Viva Engage offers both users and administrators options to move or export conversations.

**Move conversations to another group or community**

Conversations can be moved to another Viva Engage group by any user, not just owners or administrators. This is possible in both the [classic Viva Engage](https://support.office.com/article/149c6399-4ac1-4ced-84d7-e0660960a872) and the [new Viva Engage](https://support.office.com/article/d63debf1-1c90-4ec5-b5ae-8a00939a1680) interfaces.

**Export network data**

Viva Engage network administrators [export network data](/viva/engage/manage-security-and-compliance/export-viva-engage-enterprise-data). However, doing so will export all conversations for the entire network. The resulting export lists the Group ID. It's possible to filter conversations based on this ID.

## Related topics

[Remove a former employee and secure data](/microsoft-365/admin/add-users/remove-former-employee)
