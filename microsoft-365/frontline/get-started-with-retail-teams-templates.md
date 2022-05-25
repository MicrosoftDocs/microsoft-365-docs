---
title: Use retail team templates
author: LanaChin
ms.author: v-lanachin
manager: samanro
audience: Admin
ms.topic: article
ms.service: msteams
ms.reviewer: yinchang
ms.collection: 
  - M365-collaboration
ms.localizationpriority: high
search.appverid: MET150
description: Learn how to manage and use the retail team templates in the Teams admin center and with Microsoft Graph to quickly and easily create teams for your retail organization. 
f1.keywords:
- CSH
ms.custom: 
  - NewAdminCenter_Update
  - seo-marvel-apr2020
appliesto: 
  - Microsoft Teams
---

# Use retail team templates

Team templates in Microsoft Teams allow you to quickly and easily create teams by providing a predefined team structure of settings, channels, and pre-installed apps.

For retailers, team templates can be especially powerful, as they help you to quickly deploy consistent teams across your organization. Templates also help staff to get oriented with how to effectively use Teams.

Teams includes templates designed specifically for retailer needs. Use these pre-built templates to quickly create teams for staff to communicate and collaborate. In this article, we introduce you to each of these templates and recommend how to use them.

How you manage and work with team templates depends on whether you're an admin or developer.

|If you're: | Then, you: |
| ---- | --------- |
| An admin or IT pro |[Manage team templates in the Teams admin center](#manage-team-templates-in-the-teams-admin-center). View team templates and apply templates policies to control which templates your staff can use in Teams for creating teams. |
| A developer | [Use Microsoft Graph](#use-team-templates-with-microsoft-graph) to create teams from team templates. |

## Manage team templates in the Teams admin center

As an admin, you can manage team templates in the Microsoft Teams admin center. Here, you can view details about each template. You can also [create and assign templates policies](templates-policies.md) to your staff to control which templates they see in Teams for [creating teams](https://support.microsoft.com/office/create-a-team-with-team-templates-702a2977-e662-4038-bef5-bdf8ee47b17b).

To learn more about team templates in general, see [Get started with team templates in the Teams admin center](get-started-with-teams-templates-in-the-admin-console.md).

We currently offer the following pre-built retail team templates. To view them, in the left navigation of the Teams admin center, go to **Teams** > **Team templates**.

### Organize a store

Bring your retail employees together in one central experience to manage tasks, share documents, and resolve customer issues. Integrate additional apps to streamline shift start and end processes.

| Template type |TemplateId | Properties that come with this template |
| ------------------|-- |----------------------------------------------------- |
|Organize a store| `retailStore` |Channels: <ul><li>General<li>Shift handoff</li><li>Store readiness<ul><li>Inspection&sup1;</li></ul></li><li>Learning</li></ul> Apps: <ul><li>Wiki</li><li>Tasks</li><li>Shifts</li><li>Inspection</li></ul>|

&sup1;App added to the channel as a tab

### Manager Collaboration

The Manager Collaboration template is ideal for creating a team for a set of managers to collaborate across stores, regions, and so on. For example, if your organization has regions, you might create a Manager Collaboration team for the California region and include all the store managers in that region, along with the regional manager for that region.

| Template type| TemplateId | Properties that come with this template |
| ------------------|- |----------------------------------------------------- |
|Retail for managers|`retailManagerCollaboration` |Channels: <ul><li>General<li>Operations<ul><li>Tasks (Operations Tasks)&sup1;</li><li>Inspection&sup1;</li></ul></li><li>Learning<ul><li>Tasks (Learning Tasks)&sup1;</li></ul></li></ul> Apps: <ul><li>Wiki</li><li>Tasks</li><li>Inspection</li></ul>|
||||

&sup1;App added to the channel as a tab

## Use team templates with Microsoft Graph

Developers can use Microsoft Graph to create teams from pre-built team templates. To learn more about using team templates with Microsoft Graph, see [Get started with team templates using Microsoft Graph](get-started-with-teams-templates.md), [Microsoft Teams API overview](/graph/teams-concept-overview?view=graph-rest-1.0), and [teamsTemplate resource type](/graph/api/resources/teamstemplate?view=graph-rest-1.0).

Here are the pre-built retail team templates.

### Store

The Store template is ideal for creating a team to represent an individual retail store location. Using the Store template, you can create a team for each retail store location in your organization.

| Template type | TemplateId | Template channels |
| ------------------ | -------------- | ----------------------------------------------------- |
| Retail - <br>Store | `https://graph.microsoft.com/beta/teamsTemplates('retailStore')`| Channels <ul><li>General</li><li>Shift handoff&sup2;</li><li>Store readiness</li><li>Learning&sup2;</li></ul>Team properties <ul><li>Team visibility set to Public</li></ul> <br>Member permissions <ul><li>Can't create, update, or delete channels </li><li>Can't add or remove apps </li><li>Can't create, update, or remove tabs</li><li>Can't create, update, or remove connectors</li><ul>|
||||

&sup2;Auto-favorited channels

Recommended ways to customize the Store template for your organization:

- If your organization has departments within each store, add a channel for each department. Adding a channel facilitates communication and collaboration within the department.

- If your organization has any internal websites (for example, a SharePoint site), consider pinning them as tabs in the relevant team channel.

### Manager Collaboration

The Manager Collaboration template is ideal for creating a team for a set of managers to collaborate across stores, regions, and so on. For example, if your organization has regions, you might create a Manager Collaboration team for the California region and include all the store managers in that region, along with the regional manager for that region.

| Template type | TemplateId | Template channels |
| ------------------ | -------------- | ----------------------------------------------------- |
| Retail - <br>Store | `https://graph.microsoft.com/beta/`<br>`teamsTemplates('retailManagerCollaboration')`| Channels <ul><li>General</li><li>Operations&sup2;</li><li>Learning&sup2;</li></ul>Team properties <ul><li>Team visibility set to Private</li></ul> <br>Member permissions <ul><li>Can create, update, and delete channels </li><li>Can add and remove apps </li><li>Can create, update, and remove tabs</li><li>Can create, update, and remove connectors</li><ul>|
||||

&sup2;Auto-favorited channels

Recommended ways to customize the Manager Collaboration template for your organization:

- If your organization has any internal websites, such as a SharePoint site, that are relevant for managers, consider pinning them as tabs in a relevant team channel.

### How to use team templates with Microsoft Graph

To use these templates, change the 'template@odata.bind' property in the request body from 'standard' to the TemplateIds above.  For more information on how to deploy team templates, see the Microsoft Graph article on how to [create a team](/graph/api/team-post?view=graph-rest-beta).

> [!NOTE]
> The channels in the template will automatically be created under the **General** tab.

### Example: Store template extension script

``` PowerShell
{
  "template@odata.bind": "https://graph.microsoft.com/beta/teamsTemplates('retailStore')",
  "DisplayName": "Contoso Store",
  "Description": "Team for all staff in Contoso Store",
  "Channels": [
    {
      "displayName": "Additional store channel",
      "IsFavoriteByDefault": false
    }
  ]
}
```

## Related articles

- [Get started with team templates in the Teams admin center](get-started-with-teams-templates-in-the-admin-console.md)
- [Create a team from a template](https://support.microsoft.com/office/create-a-team-with-team-templates-702a2977-e662-4038-bef5-bdf8ee47b17b)
- [Get started with team templates using Microsoft Graph](get-started-with-teams-templates.md)