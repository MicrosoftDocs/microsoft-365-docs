---
title: "Plan for Office 365 Groups governance"
ms.reviewer: johasand
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
- BSA160
description: "Learn how to plan for Office 365 Groups governance."
---

# Plan for governance in Office 365 Groups

Office 365 Groups has a rich set of tools to implement any governance capabilities your organization might require. This article guides IT Pros to ask the right questions to determine their requirements for governance and how to meet them based on their organizational profile.

## Why Office 365 Groups?
![image desc](../../media/01.png)

We know that organizations today are using a diverse toolset. There’s the team of developers using team chat, the executives sending email, and the entire organization connecting over enterprise social. Multiple collaboration tools are in use because every group is unique and has their own functional needs and workstyle. Some will use only email while others will live primarily in chat. 

If users feel the IT-provided tools do not fit their needs, they will likely download their favorite consumer app which supports their scenarios. Although this process allows users to get started quickly, it leads to a frustrating user experience across the organization with multiple logins, difficulty sharing, and no single place to view content. This concept is referred to as “Shadow IT” and poses a significant risk to organizations. It reduces the ability to uniformly manage user access, ensure security, and service compliance needs.

Office 365 Groups empowers users and reduces the risk of shadow IT by providing in a single step many of the tools needed to collaborate. Office 365 Groups lets you choose a set of people with whom you wish to collaborate, and easily set up a collection of resources for those people to share. Manually assigning permissions to resources is a thing of the past as adding members to the group automatically grants the needed permissions to all assets provided by the group.

## Technical Architecture

There are three main communication methods supported by Office 365 groups. Groups can be created within these experiences and used across Office 365:
- Outlook: collaboration through email with a shared group inbox and calendar
- Microsoft Teams: a persistent-chat-based workspace where you can have informal, real-time, conversations around a variety of topics, organized by specific sub-groups
- Yammer: enterprise social experience for collaboration

> [!NOTE]
> Creating a new group via other teamwork applications - such as SharePoint, Planner or Stream - will create a group with an Outlook inbox and the ability to connect to Microsoft Teams.

Depending on where a group is created, certain resources are provisioned automatically, such as:
- [Inbox](https://support.office.com/article/have-a-group-conversation-in-outlook-a0482e24-a769-4e39-a5ba-a7c56e828b22) - For email conversations between group members. This inbox has an email address and can be set to accept messages from people outside the group and even outside your organization, much like a traditional distribution list.
 - [Calendar](https://support.office.com/article/schedule-a-meeting-on-a-group-calendar-in-outlook-0cf1ad68-1034-4306-b367-d75e9818376a) – For scheduling events related to the group
- [SharePoint team site](https://support.office.com/article/what-is-a-sharepoint-team-site-75545757-36c3-46a7-beed-0aaa74f0401e) – A central repository for information, links and content relating to your group
- [SharePoint document library](https://support.office.com/article/share-group-files-749bc73b-90c9-4760-9b6f-9aa1cf01b403) – A central place for the group to store and share files
- [OneNote notebook](https://support.office.com/article/get-started-with-onenote-e768fafa-8f9b-4eac-8600-65aa10b2fe97) – For gathering ideas, research, and information
- [Planner](https://support.office.com/article/microsoft-planner-help-4a9a13c6-3adf-4a60-a6fc-15c0b15e16fc) – For assigning and managing project tasks among your group members
- [Yammer group](https://support.office.com/article/Learn-about-Office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2) – A common place to have conversations and share information
- Microsoft Teams – A chat-based workspace in Office 365

To learn more about which resources are created for each group, visit [Learn about Office 365 Groups](https://support.office.com/article/learn-about-office-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2).

> [!NOTE]
> When a new Office 365 Group is created via Yammer or Teams, the group isn't visible in Outlook or the address book because the primary communication between those users happens in their respective clients. Yammer groups cannot be connected to Microsoft Teams.

## Where to start a conversation
There are multiple places to have a conversation within Office 365. Understanding where to start a conversation can help organizations define a strategy for communication.

![image desc](../../media/03.png)

- Teams: chat-based workspace (high velocity collaboration) – inner loop
   - Built for collaboration with the people you work with every day
  - Puts information at the fingertips of users in a single experience
  - Add tabs, connectors and bots
  - Live chat, audio/video conferencing, recorded meetings

- Yammer: connect across the org (enterprise social) – outer loop
  - Communities of practice - Cross-functional groups of people who share a common interest or expertise but are not necessarily working together on a day-to-day basis
  - Leadership connection, learning communities, role-based communities

- Outlook groups: modern DL (email-based collaboration)
  - Ubiquitous for targeted communication
  - Upgrade DLs to Office 365 groups – [Why you should upgrade?](https://support.office.com/article/why-you-should-upgrade-your-distribution-lists-to-groups-in-outlook-7fb3d880-593b-4909-aafa-950dd50ce188)

- SharePoint – Core content collaboration experience for all Office 365 groups
  - Every group gets a connected SharePoint team site
  - Share content, create customized pages and author news
  - [Connect](https://docs.microsoft.com/sharepoint/dev/features/groupify/groupify-overview) existing SharePoint team sites to new Office 365 groups

##  Managing and governing Office 365 at scale

Office 365 groups has a rich set of tools to implement any governance capabilities your organization might require. The following section describes the capabilities, recommends best practices, and provides guidance to ask the right questions to determine the requirements for governance, and how to meet them.

**In this section**:
- [Control who can create Office 365 Groups](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#control-who-can-create-office-365-groups)
- [Group soft delete and restore](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#group-soft-delete-and-restore)
- [Group naming policy](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#group-naming-policy)
- [Group expiration policy](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#group-expiration-policy)
- [Group guest access](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#group-guest-access)
- [Group policies & information protection](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#group-policies--information-protection)
- [Upgrade traditional collaboration tools](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#upgrade-traditional-collaboration-tools)
- [Groups reporting](https://docs.microsoft.com/office365/admin/create-groups/plan-for-groups-governance#groups-reporting)

### <a name="control-who-can-create-office-365-groups"></a>Control who can create Office 365 groups
Groups can be created by end-users from multiple end-points including Outlook, SharePoint, Teams, and other environments.

![image desc](../../media/04.png)
> [!Tip]
>- Strongly consider self-service to empower group owners.
>- Document and communicate how to request a group.
>- Revisit who can create groups during your cloud journey.
>- Consider using dynamic membership to configure security group’s members to control group creation.
>- Assess which groups scenarios can be managed via a dynamic membership and allow self-service for the rest.

There are three primary models of provisioning in groups: open, IT-led, and controlled. The following table describes the advantages of each model.

| Model          | Advantages                                                   |
| -------------- | ------------------------------------------------------------ |
| Open (default) | Users can create their own groups as needed without needing to wait for, or bother IT. |
| IT-led         | Users request a group from IT. IT can guide them in selecting the best collaboration tools for their needs. |
| Controlled     | Group creation restricted to specific people, teams or services. To learn more, see [Manage who can create Office 365 Groups](https://support.office.com/article/manage-who-can-create-office-365-groups-4c46c8cb-17d0-44b5-9776-005fced8e618). |

Your organization might have specific requirements to implement strict controls on who can create groups. Use the following table to help make the decision on which provisioning model fits your organization.

|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Which provisioning model fits your organization requirements?</li><li>Does your organization require limiting group creation to administrators?</li><li>Does your organization require limiting group creation to security group members?</li><li>Does your organization require some groups to be created dynamically based on user attributes, such as department?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Document your organization’s requirements for group and team creation.</li><li>Plan to implement these requirements as a part of your groups rollout.</li><li>Communicate and publish your policies to inform users of the behavior they can expect</li><li>Plan to implement dynamic membership where applicable.</li></ul>|

> [!Important]
> Limiting group and team creation can slow users productivity because many Office 365 services require that groups be created for the service to function. To learn more, see [Why control who creates Office 365 Groups?](https://docs.microsoft.com/office365/admin/create-groups/manage-creation-of-groups?view=o365-worldwide%23why-control-who-creates-office-365-groups)

#### *Resources*
- [Manage who can create Office 365 Groups](https://docs.microsoft.com/office365/admin/create-groups/manage-creation-of-groups?view=o365-worldwide)
- [Populate groups dynamically based on object attributes](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-groups-with-advanced-rules)
- [How to change the default setting of Office 365 Groups for Outlook, to public or private](https://support.office.com/article/office-365-groups-in-outlook-private-by-default-36236e39-26d3-420b-b0ac-8072d2d2bedc)
- [Syncing Security Groups with team membership ](https://techcommunity.microsoft.com/t5/Microsoft-Teams-Blog/Syncing-Security-Groups-with-team-membership/ba-p/241959)

### <a name="group-soft-delete-and-restore"></a>Group soft delete and restore
If you've deleted an Office 365 group, by default it's retained for 30 days. This 30-day period is called "soft-delete" because you can still restore the group. After 30 days, the group and associated content is permanently deleted and cannot be restored.

> [!Tip]
>- Communicate the restore process to your users.
>- Train your helpdesk team.
>- Track upcoming groups that will be deleted using PowerShell script.

|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Do you require that certain assets to be archived for long term storage?</li><li>Do you have certain retention requirements for your organization?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Communicate and publish the delete and restore policies to inform users of the behavior they can expect </li><li> Document your organizations requirements for monitoring deleted groups.</li><li>Plan to implement these requirements as part of your groups rollout.</li></ul>|

> [!Important]
>During the "soft-delete" period if a user tries to access the site they will get a 403 forbidden message. After this period if the user tries to access the site they will get a 404 not found message.

#### *Resources*
- [Restore a deleted Office 365 Group](https://support.office.com/article/Restore-a-deleted-Office-365-Group-b7c66b59-657a-4e1a-8aa0-8163b1f4eb54?ui=en-US&rs=en-001&ad=US)
- [Restore a deleted Office 365 group in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-restore-deleted)
- [Delete groups using the Remove-UnifiedGroup cmdlet](https://technet.microsoft.com/library/mt238270%28v=exchg.160%29.aspx)

### <a name="group-naming-policy"></a>Group naming policy
A naming policy can help you and your users identify the function of the group, membership, geographic region, or who created the group. The naming policy can also help categorize groups in the address book. You can use the policy to block specific words from being used in group names and aliases.

> [!Tip]
> - Use short strings as suffix.
> - Use attributes with values.
> - Don’t be too creative, total name length has a maximum of 264 characters.
> - Upload your organization specific blocked words to restrict usage.


|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Does your organization require a specific naming convention for groups?</li><li>Does your organization require the naming convention across all workloads?</li><li>Does your organization have specific words that you want to prevent users from using?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Document your organization’s requirements for naming groups. </li><li> Plan to implement these requirements as part of your groups rollout.</li><li> Communicate and publish the naming policies and standards to inform users.</li></ul>|

> [!Important]
>The naming policy is applied to groups that are created across all groups workloads (like Outlook, Microsoft Teams, SharePoint, Planner, Yammer, etc). It gets applied to both the group name and group alias. It gets applied when a user creates a group and when group name or alias is edited for an existing group.

#### *Resources*
- [Office 365 Groups naming policy](https://docs.microsoft.com/office365/admin/create-groups/groups-naming-policy)
- [Enforce a naming policy for Office 365 groups in Azure Active Directory](https://go.microsoft.com/fwlink/?linkid=868340)
- [Azure Active Directory cmdlets for configuring group settings](https://go.microsoft.com/fwlink/?linkid=868341)
- [Preview Features for Group Naming](https://portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/NamingPolicy)

### <a name="group-expiration-policy"></a>Group expiration policy
Administrators can specify an expiration period and any group that reaches the end of that period, and is not renewed, will be deleted. The expiration period begins when the group is created, or on the date it was last renewed. Group owners will automatically be sent an email before the expiration that allows them to renew the group for another expiration interval.

Once you set a group to expire:
- Owners of the group are notified to renew the group as the expiration nears
- Any group that is not renewed is deleted
- Any group that is deleted can be restored within 30 days by the group owners or the administrator

> [!Tip]
> - Pilot with specific groups initially.
> - Choose inactive groups based on the activity report in Microsoft 365 admin center.
> - Communicate renewal process to group owners.
> - Onboard your helpdesk team.
> - Ensure groups have multiple owners and configure email for orphan groups.


|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Does your organization require specifying an expiration date for teams?</li><li>Determine the strategy for dealing with orphan groups?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Document your organization’s requirements for group expiration, data retention, and archiving.</li><li>Plan to implement these requirements as part of your groups rollout.</li><li>Plan to implement a custom job to report on groups that have single owners or are ownerless. </li></ul>|

> [!Important]
>When you change the expiration policy, the service recalculates the expiration date for each group. It always starts counting from the date when the group was created, and then applies the new expiration policy.

#### *Resources*
- [Office 365 Group Expiration Policy](https://support.office.com/article/Office-365-Group-Expiration-Policy-8d253fe5-0e09-4b3c-8b5e-f48def064733?ui=en-US&rs=en-US&ad=US)
- [Configure the expiration policy for Office 365 groups](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-lifecycle)

### <a name="group-guest-access"></a>Group guest access
Admins can control whether to allow guest access to Office 365 Groups for their whole organization or for individual Office 365 groups. They can also control who can allow guests to be added to groups.
>[!Tip]
>- Enable guest access at the tenant level. If needed, block for specific groups.
>- Govern using allow/block guest domains, guest inviter role, access reviews, terms of use.
>- Track guest user activity via audit logs.

|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Do you need to restrict the ability to add guests to teams on a per-group basis?</li><li> Does your organization require to present relevant disclaimers for legal or compliance requirements?</li><li>Does your organization have the need to reduce administrative over-head of adding and removing users?</li><li>Does your organization expect audit controls for guest/external access?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Document requirements for guest/external access for certain classified groups including the retention period and occurrence.</li><li>Document organization’s requirements for which groups will require terms of use and access review. </li><li>Perform reviews to efficiently manage group memberships for both internal and guest users.</li></ul>|


#### *Resources*
- [Manage guest access in Office 365 Groups](https://docs.microsoft.com/office365/admin/create-groups/manage-guest-access-in-groups)
- [Guest access in Office 365 groups](https://support.office.com/article/Guest-access-in-Office-365-Groups-bfc7a840-868f-4fd6-a390-f347bf51aff6)
- [Guest access in Office 365 groups – Admin Help](https://support.office.com/article/Guest-access-to-Office-365-groups-Admin-Help-7c713d74-a144-4eab-92e7-d50df526ff96)
- [Azure AD access reviews](https://docs.microsoft.com/azure/active-directory/active-directory-azure-ad-controls-perform-access-review)
- [Azure Active Directory Terms of Use feature](https://docs.microsoft.com/azure/active-directory/active-directory-tou)
- [Google Federation  ](https://docs.microsoft.com/azure/active-directory/b2b/google-federation)
- [Authorize guest access in Microsoft Teams](https://docs.microsoft.com/microsoftteams/teams-dependencies)

### <a name="group-policies--information-protection"></a>Group policies & information protection
Office 365 groups is built on the advanced security and compliance capabilities of Office 365 and supports classifications, auditing and reporting, compliance content search, e-discovery, Legal Hold, and retention policies.
>[!Tip]
>- Configure classification, usage guidelines, and labels aligned with your organization's needs.
>- Retention policies can be defined independently of labels.
>- Audit groups activities: creation, deletion, etc.
>- Manage group privacy and guest access based on classification.

|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Does your organization have specific usage requirements that need to be communicated to all users?</li><li>Does your organization require the classifications of all content?</li><li>Does your organization require content to be retained for a specific period of time?</li><li>Does your organization require specific data retention policies be ap-plied to groups?</li><li>Does your organization expect to require the ability to archive inactive groups to preserve the content?</li><li>Do group creators need the ability to assign organization-specific classifications to teams?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Document your organization’s usage guidelines for Groups</li><li>Document your organization’s requirements for classification.</li><li>Determine the policies to be enforced based on the classification e.g. sensitivity, retention, guest access</li><li>Define the sensitivity labels for your organization and what protection settings you want associated.</li><li>Define a label policy to control which users and groups see those labels.</li><li>Configure the [Groups sensitivity label preview](https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels-teams-groups-sites) and start classifying the groups in your organization.</li><li>Plan to implement these requirements as a part of your groups rollout.</li></ul>|


#### *Resources*
- [Link to your Office 365 Groups usage guidelines](https://docs.microsoft.com/office365/enterprise/manage-office-365-groups-with-powershell#link-to-your-office-365-groups-usage-guidelines)
- [Create classifications for Office groups in your organization](https://docs.microsoft.com/office365/enterprise/manage-office-365-groups-with-powershell#create-classifications-for-office-groups-in-your-organization)
- [Configure Group settings](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-groups-settings-cmdlets)
- [Overview of retention policies](https://docs.microsoft.com/office365/securitycompliance/retention-policies)
- [Overview of sensitivity labels](https://docs.microsoft.com/Office365/SecurityCompliance/sensitivity-labels)
- [Overview of labels](https://docs.microsoft.com/office365/securitycompliance/labels)
- [Search the audit log](https://docs.microsoft.com/office365/securitycompliance/search-the-audit-log-in-security-and-compliance)
- [Create or remove an in-place legal hold](https://docs.microsoft.com/exchange/security-and-compliance/create-or-remove-in-place-holds)
- [Create a preservation policy](https://docs.microsoft.com/office365/securitycompliance/retention-policies)
- [Run a Content Search in the Office 365 Security & Compliance Center](https://docs.microsoft.com/Office365/SecurityCompliance/content-search)
- [Bulk create and publish retention labels by using PowerShell](https://docs.microsoft.com/office365/securitycompliance/bulk-create-publish-labels-using-powershell)

### <a name="upgrade-traditional-collaboration-tools"></a>Upgrade traditional collaboration tools
For years organizations have relied on distribution groups to communicate and collaborate with groups of people both inside and outside the company. Now, however, Office 365 Groups in Outlook offer a more powerful solution for collaboration. In addition, being able to connect an Office 365 group to an existing SharePoint site is important if you want to modernize that site.

>[!Tip]
>- Easily upgrade all your eligible distribution lists in seconds via the Exchange admin center, or using PowerShell cmdlets.
>- Connect existing SharePoint team sites to new Office 365 Groups.

|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Does your organization have distribution lists that are [not eligible](https://docs.microsoft.com/office365/admin/manage/upgrade-distribution-lists#how-do-i-check-which-dls-are-eligible-for-upgrade) for upgrade?<li>Determine which type of group is the distribution list best migrated to?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Identify which distribution lists would be candidates for upgrading to Office 365 Groups.</li><li>Analyze your existing SharePoint team sites to see which sites are ready to be group-connected.</li><li>Let other teams in your company know that you upgraded your distribution group and what steps you took to make it successful!</li></ul>|


#### *Resources*
- [Upgrade Distribution Lists (DL) to groups in Outlook](https://aka.ms/whyupgradedls):
- [Why you should upgrade your DL to groups in Outlook](https://aka.ms/whyupgradedls)
- Upgrade with one click via Exchange admin center or via [PowerShell scripts](https://support.office.com/article/Migrate-distribution-lists-to-Office-365-Groups-Admin-help-787d7a75-e201-46f3-a242-f698162ff09f?ui=en-US&rs=en-US&ad=US)
- [Migrate distribution lists to Office 365 Groups - Admin help](https://docs.microsoft.com/office365/admin/manage/upgrade-distribution-lists)
- [Connect existing SharePoint sites to Office 365 groups:](https://docs.microsoft.com/sharepoint/dev/transform/modernize-connect-to-office365-group)
- [Analyze and use the scanner data](https://docs.microsoft.com/sharepoint/dev/transform/modernize-connect-to-office365-group-scanner)
- [SharePoint Modernization Scanner](https://github.com/SharePoint/sp-dev-modernization/tree/master/Tools/SharePoint.Modernization) (a tool located on GitHub)

### <a name="groups-reporting"></a>Groups reporting
The Office 365 Reports dashboard shows you the activity overview across the Office 365 products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product.
> [!TIP]
>- You can use the Groups activity reports to gain insights into the activity of Office 365 Groups in your organization and see how many Groups are being created and used.
>-The Office 365 groups report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days.
>- Monitor group activity across group mailbox conversations, group site/files activity, details around group membership including external member counts.
>- Monitor regularly to reach out to group owners of active groups to learn uses cases and amplify them internally.
>- Leverage Power BI content packs for additional insights.


|         |         |         |
|---------|---------|---------|
|![image desc](../../media/decision_point.png)|Decision points|<ul><li>Does your organization require regular reports to understand usage of Office 365 groups?<li>Does your organization require reporting on all groups that have external members?</li></ul>|
|![image desc](../../media/next_steps.png)|Next steps|<ul><li>Document your organization’s requirements for regularly review groups activity reports.</li></ul>|


#### *Resources*
- [Office 365 Reports in the admin center](https://support.office.com/article/Office-365-Reports-in-the-admin-center-Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40)
- [Office 365 Adoption content pack](https://support.office.com/article/Office-365-Adoption-Content-Pack-77ff780d-ab19-4553-adea-09cb65ad0f1f)
- [Azure AD content pack](https://docs.microsoft.com/azure/active-directory/active-directory-reporting-power-bi-content-pack-how-to)
- [Microsoft Graph groups activity API](https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/office_365_groups_activity_reports)
- [Office 365 Groups Report (Unified Groups)](https://gallery.technet.microsoft.com/office/Office-365-Groups-Report-7e3e161b)
- [Audit activity reports in the Azure Active Directory portal](https://docs.microsoft.com/azure/active-directory/reports-monitoring/concept-audit-logs)
- [Microsoft Graph - Use delta query to track changes](https://docs.microsoft.com/graph/delta-query-overview)

## Getting started based on your cloud adoption journey

Office 365 Groups provides a rich set of governance capabilities your organization might require. Consider the following organization profiles as guidance to understand best practices, ask the right questions to determine the requirements for governance, and how to meet them.

**Consider the following organization profiles:**
- Small Business
- Medium-sized Business
- Regulated or Enterprise

### Small business
Consider an organization that has deployed Office 365 with at least Exchange Online and SharePoint Online licenses that includes the Business Essentials and Business Premium plans, and the Enterprise E1, E3 and E5 plans with no Azure Active Director Premium licensing.

| Stage | Description |
| --------------- | ------------------------------------------------------------ |
| Guidance |<ul><li>Consider a self-service provisioning model</li><li> Groups in Outlook & SharePoint sites are [private by default](https://techcommunity.microsoft.com/t5/Office-365-Groups/Groups-in-Outlook-and-Group-connected-team-sites-are-now-private/m-p/186395).</li><li> Groups can be created by upgrading existing distribution lists (DLs) either one-by-one or in bulk via PowerShell. See [Upgrade distribution lists to Office 365 Groups](https://support.office.com/article/Upgrade-distribution-lists-to-Office-365-Groups-in-Outlook-787D7A75-E201-46F3-A242-F698162FF09F).</li><li> Enable guest access but govern using allow/block guest domains.</li><li> Use group reporting to gain insights on how users are using groups.</li><li> Consider creating an org-wide team Microsoft Teams as a way for everyone to be a part of a single team for collaboration. </li></ul>|
| Next Steps      |<ul><li>Consider using [site designs and site scripts](https://docs.microsoft.com/sharepoint/dev/declarative-customization/site-design-overview) to define the default design to controls using the actions defined within the [JSON schema reference](https://docs.microsoft.com/sharepoint/dev/declarative-customization/site-design-json-schema).</li><li>Review [groups reporting](https://support.office.com/article/Office-365-Reports-in-the-admin-center-Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40)</li><li>Track total groups and inactive/active groups</li><li>Track both Exchange and SharePoint storage used</li><li>View group activity across group mailbox conversations, group site/files activity, etc.</li></ul> |

### Medium-sized business
In addition to the above recommendations consider the following for medium-sized business who has deployed Office 365 with at least an Enterprise E3/E5 with Azure Active Directory Premium P1 licenses.

| Stage | Description |
| --------------- | ------------------------------------------------------------ |
| Guidance |<ul><li>Decide on an Open or IT-led provisioning model.</li><li> Consider creating certain groups tied to [dynamic memberships rules](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-dynamic-membership) based on Azure AD attributes like Department</li><li> Define classifications within your organization e.g., Highly Confidential, Confidential (default), General.</li><li>  Define the policies based on classification such as retention and sensitivity.</li><li> SharePoint is the content service for every Office 365 Group. Consider designing and [Deploying SharePoint Online sites for three tiers of protection](https://docs.microsoft.com/office365/enterprise/deploy-sharepoint-online-sites-for-three-tiers-of-protection) (baseline, sensitive, and highly confidential). For more information about these three tiers of protection, see [Secure SharePoint Online sites and files](https://docs.microsoft.com/office365/enterprise/secure-sharepoint-online-sites-and-files).</li><li> Both public and private groups are listed in the GAL by default. Determine which groups you want to appear in the GAL specifically groups created outside of Microsoft Teams.  Use the [Set-UnifiedGroup](https://technet.microsoft.com/library/mt238274(v=exchg.160).aspx) cmdlet's "HiddenFromAddressListsEnabled" or “HidefromExchangeClients” to hide specific groups </li></ul> |
| Next Steps      |<ul><li>Define [Usage guidelines](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-groups-settings-cmdlets) to educate your users about best practices that help keep their groups effective, and educate them on internal content policies. For example, understanding classifications, policies and procedures. </li><li>Define group lifecycle period that groups must be renewed or will be deleted - expiry policy.</li><li>Consider creating the following custom jobs to implement policies based on classifications.</li><li>Set Privacy to Private.</li><li>Disable external membership/sharing. </li><li>Emails to notify group members for groups with [no owner](https://support.office.com/article/Assign-a-new-owner-to-an-orphaned-group-86bb3db6-8857-45d1-95c8-f6d540e45732).</li><li>Enforce ownership policy (min. 2 owners).</li><li> Define retention policies for groups based on classification. </li><li>Overview of retention policies.</li><li>Using Powershell to identify groups with a classification and [Set-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-retention/set-retentioncompliancepolicy?view=exchange-ps).</li><li>Consider using site designs and site scripts to define the controls using the actions defined within the [JSON schema reference](https://docs.microsoft.com/sharepoint/dev/declarative-customization/site-design-json-schema).</li><li>Consider building [a simple site directory using a site design](https://docs.microsoft.com/sharepoint/dev/declarative-customization/site-design-trigger-flow-tutorial) and Microsoft Flow. Whenever a site is created using this site design, details of the site are captured and written to a list. </li></ul>|

### Regulated or Enterprise
In addition to the above recommendations consider the following for highly regulated or large enter-prises such as government, financial services, or healthcare who has deployed Office 365 with at least an Enterprise E3/E5 with Azure Active Directory Premium P1/P2 licences.

| Stage | Description |
| --------------- | ------------------------------------------------------------ |
| Guidance |<ul><li> Define policies for data governance of the SharePoint site associated to the group based on classification.</li><li>[Protect SharePoint Online files with Office 365 labels and DLP](https://docs.microsoft.com/office365/enterprise/protect-sharepoint-online-files-with-office-365-labels-and-dlp).</li><li>[Protect SharePoint Online files with Azure Information Protection](https://docs.microsoft.com/office365/enterprise/protect-sharepoint-online-files-with-azure-information-protection).</li><li> Group site provisioned in region tied to user’s Preferred Data Location ([multi-geo](https://docs.microsoft.com/office365/enterprise/multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-office-365)).</li><li> Membership reviews for groups with external members ([access reviews](https://docs.microsoft.com/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview)).</li><li>Ensure employees or guest users see relevant disclaimers for legal or compliance requirements before getting access. ([terms of use](https://docs.microsoft.com/azure/active-directory/governance/active-directory-tou)).</li><li>Identify and report on Office 365 groups with a certain [classification that also have external users](https://techcommunity.microsoft.com/t5/Office-365-Groups/Sample-Powershell-to-identify-groups-with-HBI-classification-and/m-p/215561).</li><li>Secret groups where memberships needed to be hidden must be created using the [New-UnifiedGroup](https://technet.microsoft.com/library/mt219359(v=exchg.160).aspx) cmdlet (using the HiddenGroup-MembershipEnabled switch) on Group creation.</li><li>Define the [sensitivity labels](https://docs.microsoft.com/Office365/SecurityCompliance/sensitivity-labels) for the organization to [Restrict access to content by using encryption](https://docs.microsoft.com/Office365/SecurityCompliance/encryption-sensitivity-labels) and publish to specific Office 365 Groups.</li><li>Prevent sensitive content from leaving your organization on devices running Windows using [sensitivity labels with Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/how-wip-works-with-labels?branch=vsts17546553). |
| Next Steps      | <ul><li> Use site design and site scripts to define the default [actions](https://developer.microsoft.com/office/blogs/site-scripts-site-designs-summer-2018-update/) that occur when a new site is created. For example, [configure external sharing setting](https://github.com/SharePoint/sp-dev-site-scripts/tree/master/samples/site-apply-external-sharing-setting) or [trigger a Microsoft Flow to call an Azure function](https://github.com/SharePoint/sp-dev-site-scripts/tree/master/samples/site-azure-function) to apply configurations that are not supported natively. </li><li> Document requirements to [Protect SharePoint Online files with Office 365 labels and DLP](https://docs.microsoft.com/office365/enterprise/protect-sharepoint-online-files-with-office-365-labels-and-dlp) to sites associated to Office 365 Groups.</li><li>Document organization requirements to [Secure SharePoint Online sites and files](https://docs.microsoft.com/office365/securitycompliance/secure-sharepoint-online-sites-and-files) that are connected to Office 365 groups. </li><li>Document organization requirements to publish [sensitivity labels](https://docs.microsoft.com/Office365/SecurityCompliance/sensitivity-labels) to specific users or groups to protect content.</li></ul> |

## Groups Management Capability Planning Checklist

A number of groups-related controls can be administered through Azure Active Directory. To learn more about configuring group settings, see [Azure Active Directory cmdlets for configuring group settings](https://docs.microsoft.com/azure/active-directory/users-groups-roles/groups-settings-cmdlets).

Use the following table to determine which capabilities you will need to deploy your organizations requirements. It will help you determine which licenses you need so you can plan ahead.

| **Capability**      | **Details**                                    | **Azure AD Premium license required** | **Decision** |
| ------------------- | ---------------------------------------------- | ------------------------------------- | ------------ |
| Group naming policy | Use Prefix-Suffix–based, Custom Blocked Words. | P1                                    |      TBD     |
| Group classification | Assign classifications to teams. | P1                                    |   TBD        |
| Group guest access | Allow or prevent guests from being added to groups. | No                                    |  TBD        |
| Group creation | Limit team creation to administrators. | No                                    |   TBD        |
| Group creation | Limit team creation to security group members. | P1                                    |     TBD      |
| Group usage guidelines | Set a link the Group Usage Guidelines which will be visible on all group creation endpoints. | P1                                    |   TBD        |
| Hidden membership | Hide the members of the Office 365 Group from users who aren't members of the group | No                                    |   TBD        |
| Expiration policy | Manage the lifecycle of Office 365 groups by setting an expiration policy. | P1                                    |  TBD        |
| Group activity reports | Gain insights into the activity of Office 365 Groups in your organization and see how many Office 365 Groups are being created and used. | No                                    |    TBD       |
| Retention policy | Retain or delete data for a specific time period by setting retention policies for Office 365 Groups in the Security & compliance center. **Note:** Using this feature requires licensing of Office 365 Enterprise E3 or above. | No                                    |    TBD       |
| Data loss prevention policy | Identify sensitive information across Office 365 group connected sites and prevent the accidental sharing. **Note:** Using this feature requires licensing of Office 365 Enterprise E3 or above. | No                                    |     TBD      |
| Archive and restore | Archive a team when it’s no longer active but you want to keep it around for reference or to reactivate in the future. | No                                    |   TBD        |
| Access Reviews | Perform reviews to efficiently manage group memberships for both internal and guest users | P2                                    |   TBD       |
| Terms of Use | A simple method that organizations can use to present information to end users. This presentation ensures users see relevant disclaimers for legal or compliance requirements. | P1                                    |         TBD  |

