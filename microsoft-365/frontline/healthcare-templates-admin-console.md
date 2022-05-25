---
title: "Use healthcare team templates"
author: LanaChin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: conceptual
ms.service: msteams
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
appliesto: 
  - Microsoft Teams
ms.reviewer: yinchang
description: Learn how to manage and use the healthcare team templates in the Teams admin center and with Microsoft Graph to quickly and easily create teams for your healthcare organization. 
ms.custom: seo-marvel-mar2020
---
# Use healthcare team templates

Team templates in Microsoft Teams allow you to quickly and easily create teams by providing a predefined team structure of settings, channels, and pre-installed apps.

For healthcare organizations, team templates can be especially powerful, as they help you to quickly deploy consistent teams across your organization. Templates also help staff to get oriented with how to effectively use Teams.

Teams includes templates designed specifically for healthcare organizations. Use these pre-built templates to quickly create teams for staff to communicate and collaborate on patient care or operational needs. In this article, we introduce you to each of these templates and recommend how to use them.

How you manage and work with team templates depends on whether you're an admin or developer.

|If you're: | Then, you: |
| ---- | --------- |
| An admin or IT pro |[Manage team templates in the Teams admin center](#manage-team-templates-in-the-teams-admin-center). View team templates and apply templates policies to control which templates your staff can use in Teams for creating teams. |
| A developer | [Use Microsoft Graph](#use-team-templates-with-microsoft-graph) to create teams from  team templates. |

## Manage team templates in the Teams admin center

As an admin, you can manage team templates in the Microsoft Teams admin center. Here, you can view details about each template. You can also [create and assign templates policies](../../templates-policies.md) to your staff to control which templates they see in Teams for [creating teams](https://support.microsoft.com/office/create-a-team-with-team-templates-702a2977-e662-4038-bef5-bdf8ee47b17b).

To learn more about team templates in general, see [Get started with team templates in the Teams admin center](../../get-started-with-teams-templates-in-the-admin-console.md).

We currently offer the following pre-built healthcare team templates. To view them, in the left navigation of the Teams admin center, go to **Teams** > **Team templates**.
### Patient care

 This template is meant for communication and collaboration within a ward, pod, or department. You can use this template to facilitate patient management and the operational needs of a ward. For example, post ward announcements in the *Announcements* channel and manage shifts in the *Staffing* channel.

| Template type |TemplateId| Properties that come with this template |
| ------------------ |---|----------------------------------------------------- |
| Patient care |`healthcareWard` | Channels:<ul><li>General</li><li>Announcements<ul><li>Bulletins&sup1;</li></ul></li><li>Huddles<ul><li>Lists (Patient list)&sup1;</li></ul></li><li>Rounds<ul><li>Inspection&sup1;</li></ul></li><li>Staffing</li><li>Training</li></ul> Apps: <ul><li>Wiki</li><li>Lists</li><li>Tasks</li><li>Approvals</li><li>Shifts</li><li>Bulletins</li><li>Inspection</li></ul>|
||||

&sup1;App added to the channel as a tab
### Hospital

This template is meant for communication and collaboration between multiple wards, pods, and departments within a hospital. This template includes a set of channels for hospital operations, and can be extended for further customization.

| Template type |TemplateId | Properties that come with this template |
| ------------------|-- |----------------------------------------------------- |
|Hospital|`healthcareHospital`|Channels: <ul><li>General<ul><li>Lists&sup1;</li></ul></li><li>Announcements<ul><li>Bulletins&sup1;</li></ul></li><li>Compliance</li><ul><li>Inspection&sup1;</li></ul></li><li>Custodial</li><li>Human resources<ul><li>Ideas&sup1;</li></ul></li><li>Pharmacy</li></ul> Apps: <ul><li>Wiki</li><li>Tasks</li><li>Lists</li><li>Approvals</li><li>Shifts</li><li>Bulletins</li><li>Inspection</li><li>Ideas</li></ul>|
||||

&sup1;App added to the channel as a tab
## Use team templates with Microsoft Graph

Developers can use Microsoft Graph to create teams from pre-built team templates. To learn more about using team templates with Microsoft Graph, see [Get started with team templates using Microsoft Graph](../../get-started-with-teams-templates.md), [Microsoft Teams API overview](/graph/teams-concept-overview?view=graph-rest-1.0), and [teamsTemplate resource type](/graph/api/resources/teamstemplate?view=graph-rest-1.0).

Here are the pre-built healthcare team templates.
### Ward

The ward template is meant for communication and collaboration within a ward, pod, or department. The template can be used to facilitate patient management and operational needs of a ward. For example, ward announcements can be posted in the *Announcements* channel and shifts can be managed in *Staffing*. If you're looking to streamline your ward operations, then this template is for you.

|Template Type |TemplateId |Template channels|
|:--- |:---|:---|
|Healthcare - Ward | `https://graph.microsoft.com/beta/`<br>`teamsTemplates('healthcareWard')`   | General<br>Announcements&sup2; <br> Huddles&sup2; <br> Rounds&sup2; <br> Staffing&sup2; <br> Training&sup2; |
|     | |         |

&sup2;Auto-favorited channels

### Hospital

The hospital template is meant for communication and collaboration between multiple wards, pods, and departments within a hospital. This template includes several operational channels such as *Announcements*, *Custodial*, and *Pharmacy*. We also provide a script that you can use to extend the template with additional departments or specialty channels. You can edit it to fit your needs.

For example, if you have an *Endocrinology* department, but don't need a channel for *Ophthalmology*, the script can be adapted to include an *Endocrinology* channel and remove the *Ophthalmology* channel. We recommend that these specialty or ward-modeled channels not be auto-favorited to avoid notification saturation. Users generally favorite any channels that they find relevant.

|Template type |TemplateId |Template channels|
|:--- |:---|:---|
|Healthcare - Hospital | `https://graph.microsoft.com/beta/`<br>`teamsTemplates('healthcareHospital')`   | General<br>Announcements&sup2; <br> Compliance&sup2; <br> Custodial <br> Human Resources <br> Pharmacy |
| | |  |

&sup2;Auto-favorited channels

### How to use team templates with Microsoft Graph

To use these templates, change the 'template@odata.bind' property in the request body from 'standard' to the TemplateIds above. For more information on how to deploy team templates, see the Microsoft Graph article on how to [create a team](/graph/api/team-post?view=graph-rest-beta).

> [!NOTE]
> The channels in the template will be automatically created under the **General** tab.

#### Example: Hospital template extension script

``` Powershell
{ 
          "template@odata.bind": "https://graph.microsoft.com/beta/teamsTemplates('healthcareHospital')",
          "DisplayName": "Contoso Hospital",
          "Description": "Team for all staff in Contoso Hospital",
          "Channels": [
            {
              "displayName": "Ambulatory",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Anesthesiology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Cardiology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "CCU",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Ear, Nose, and Throat",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Emergency Care",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Family Medicine",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Gynecology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "ICU",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Mother-Baby",
              "IsFavoriteByDefault": false
            }, 
            {
              "displayName": "Neonatal",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Neurology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Oncology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Ophthalmology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "PACU",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Psychiatric",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Radiology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Rehabilitation",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Surgical",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Urology",
              "IsFavoriteByDefault": false
            },
            {
              "displayName": "Women's Health",
              "IsFavoriteByDefault": false
            }
          ],
          "Apps": [
            {
              "Id": "1542629c-01b3-4a6d-8f76-1938b779e48d"
            }
          ]
          }

```

### Related articles

- [Create a team from a template](https://support.microsoft.com/office/create-a-team-with-team-templates-702a2977-e662-4038-bef5-bdf8ee47b17b)
- [Get started with team templates in the Teams admin center](../../get-started-with-teams-templates-in-the-admin-console.md)
- [Get started with team templates using Microsoft Graph](../../get-started-with-teams-templates.md)
- [Get started with Teams for Healthcare organizations](teams-in-hc.md)