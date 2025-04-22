---
title: Deploy frontline teams with flexible membership
author: ducnguye
ms.author: jtremper
manager: jtremper
ms.reviewer: Vishal.Seshagirirao
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to deploy and manage frontline teams in bulk to drive collaboration for every location in your frontline workforce. 
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 04/10/2025
---

# Deploy frontline teams with flexible membership 

## Overview

Create and manage frontline teams in bulk to drive collaboration for every location in your frontline workforce. Team membership of your frontline teams is automatically synced with your frontline workers’ Microsoft Entra attributes. As team owners, frontline managers at each of your locations, like department heads, store leads, and warehouse managers, can manually add or remove members. 

> [!NOTE]
> If you would like to provide feedback and help improve this feature, fill out this [form](https://forms.office.com/r/MPfxrGG9h4).

## How it works

In the setup process, you: 

1. Select the frontline workers for who you want to create teams for by inputting groups from Microsoft Entra that include your frontline workers. 

2. Select an Entra attribute or custom extension attribute that represents where each frontline worker works to group them into location-based teams. 

3. Choose a team template to set a standardized set of Teams channels and apps for all your frontline teams. 

4. Select the frontline managers who should be team owners of their respective frontline teams by inputting groups from Microsoft Entra that include your frontline managers. 

After submitting your setup, you can view and select which locations you want to create frontline teams for. You can always go back and edit your frontline settings. 
Team membership is automatically managed over time based on your frontline workers’ Microsoft Entra attributes provided in setup. As frontline workers enter and leave your organization or change locations, their memberships in these teams are updated accordingly. Additionally, frontline managers who are given the team owner role have the flexibility to add or remove frontline workers. 

> [!IMPORTANT]
> Changes that frontline managers make override any changes made based on Microsoft Entra attributes. Here are some examples: 
> - User1 is added to a team based on their Entra attributes. The frontline manager of the team then manually removes user1. In this scenario, user1 won't be added to the team again unless the frontline manager manually adds user1 back to the team. 
> - A frontline manager adds a user from the Location A team to their Location B team. In this scenario, the user is still a member of the Location A team based on their Entra attributes and now part of the Location B team by the manual addition. This user won't be removed from the Location B team unless the frontline manager manually removes the user. In this way, frontline workers can be part of multiple teams at the same time. 
> - Owner1 is added to Location A team based on their Entra attributes. Owner1 gets transferred to a new Location B. Owner1 would be added to Location B as an owner. But Owner1 won’t be removed from Location A for business continuity purposes. 

## Before you begin

### Admin role to run the deployment

To complete the steps in this article, you must be a Global Administrator or a Teams Administrator.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to scenarios when you can't use a less-privileged role. 

### Prerequisites
- Admin using the Frontline Deployment tool must have a Microsoft 365 F1, F3, E3 or E5 license. 
- Teams owners and uUsers must have a Microsoft 365 F3, F1, E3, or E5 license. If a user doesn't have one of these licenses, they need a Microsoft Entra ID P1 add-on license. [Learn more](flw-licensing-options.md) about frontline licensing.
- Ensure you can define your frontline workers and managers and their work locations through data available in Microsoft Entra ID. If you don't have this data in Microsoft Entra ID, you can sync it through a human capital management (HCM) connector or use [the PowerShell solution](deploy-teams-at-scale.md) to create static teams at scale. 
    - All your frontline workers should be added to up to 32 groups in Microsoft Entra. 
    - All your frontline managers at each of your frontline locations should be added to up to 20 groups on Microsoft Entra. 
    - There must be one attribute consistent across all frontline workers and managers that represents their frontline location. 

## Set up your frontline teams 

> [!IMPORTANT]
> Team owners must have a Teams license. Before you use these steps to deploy your teams, make sure that all teams owners have a license.

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline teams**. 
2. In the table, choose **Set up**.
3. On the **Overview** page, review the setup and prerequisites information.
4. On the **Frontline workers** page, select the Entra groups that include your frontline workers. You can choose up to 10 Entra groups. You can change these groups, as needed, after you submit your setup.
5. On the **Location** page, select a Microsoft Entra attribute or a custom user attribute that defines the location your frontline employees work in. You can only choose one location attribute. You can change the attribute, as needed, after you submit your setup. For example, if you would like to create a team for each city, enter the “City” attribute and we will group frontline workers in the same city into teams.
All custom attributes are case sensitive and must start with an "extension_" prefix. Only custom attributes of the String data type are supported.
6. On the **Team settings** page, define a naming pattern for your teams by choosing a prefix. The prefix is applied using the "prefix-location" format to all your teams.
7. Choose a team template. The team template you choose defines the channel structure for all your frontline teams. [Learn more](/microsoftteams/get-started-with-teams-templates-in-the-admin-console) about team templates.
> [!NOTE]
> Currently, only team templates that are set to the English (United States) locale are supported. Keep in mind that the locale doesn't affect translation of the template or data residency. The locale setting is used only to distinguish between templates that have the same name that are created in different languages.
8. Select up to 10 Microsoft Entra groups that include at least one frontline worker from each location to be made team owner.  
Every location you want to deploy must have at least one frontline worker set as team owner. Team owners can add or remove membership from their frontline teams. For example, team owners can be your frontline managers, department heads, and/or leads.  
You can change these groups, as needed, after you submit your setup.
9.	Review your settings, and then choose **Submit**.

> [!NOTE]
> Setup can take several hours to run. Refresh the **Manage frontline teams** page to get the latest status.

## Deploy your frontline teams
1. After setup is completed, go to the **Manage frontline teams** page, and then select the **Deploy** button.
2. On the **Deploy frontline teams** page, you can review your settings and view the list of locations that don't yet have a frontline team created.
3. In the table, select the locations that you want to create teams for.
4. Select **Deploy**. This process can take several hours depending on how many teams you're creating.  
After deployment is completed, you'll see the number of deployed frontline teams in the Frontline teams card. You can also download a CSV file with a list of those teams.
If an error occurred during the deployment process, you can download the error CSV file on the Deployment health card. Use the information in it to help resolve the errors, and then rerun the deployment experience.
5. You can repeat this process for any frontline locations that don't have a team.

## Manage your frontline teams
You can manage your teams when changes happen in your organization.

Create new teams for newly opened locations:
1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline teams**.
2. In the table, choose **Deploy**.
3. Select the **Refresh location** button, and then proceed when prompted by the dialog box. This process can take several hours depending on the number of new locations.
4.	After the refresh is completed, your setup status shows as Complete. You can proceed to deploy your new teams. Deployment can take several hours depending on how many new teams you're deploying.

## Edit your frontline teams settings
1.	In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline teams**.
2.	In the Deployment settings column, choose **Deploy frontline teams**.
3.	On the **Frontline teams **settings page, edit your settings, and then select  **Apply**. Your settings might take several hours to update.

| Setting  | Effect on existing frontline teams  | Effect on new frontline teams |
|---------|---------|---------|
| Frontline workers | All existing frontline teams will be updated with members that are part of the new groups you selected. Members added or removed by frontline managers won't be affected.| All new frontline teams members will include members that are part of the new groups you selected.|
| Location | Existing teams will continue to persist. If a team is no longer tied to a location, there will be no frontline workers in that team.| You can create new frontline teams based on the locations defined by your new Microsoft Entra attribute. |
| Map your frontline attributes | All existing frontline team members will reflect the Microsoft Entra attribute you defined for department and job title.| All new frontline team members will use the Microsoft Entra attribute you defined for department and job title. |
| Team settings - team name prefix | All existing team names will be updated to reflect the prefix and location name if it was changed. | All new teams will have the updated naming convention. |
| Team settings - team template | No updates to the team structure will occur. | All new teams will have the updated naming convention. |
| Identify your team owners | Frontline managers that were already assigned team owner won't be removed or reprieved of their team owner role. New team owners from the new groups you selected will be added as team owners to their respective teams. | All new teams will have team owners that are part of the new groups you selected. There must be at least one team owner for every new team. |


## Get analytics on frontline teams usage
The [Teams frontline usage report](frontline-usage-report.md) on the usage dashboard of the Manage frontline teams page gives you an overview of usage activity in Teams for each of your frontline locations. You can view data, such as the number of active users and last activity date, to quickly see how many users at your frontline locations are using Teams to communicate and collaborate.

## Frequently asked questions
### Why are channels missing when I create my teams?
It can take time for channels to propagate in Teams. The General channel is created first and the remaining channels are added over time. All channels should be available within 24 hours of team creation.
Why am I seeing 0 users while trying to deploy?
Seeing zero users next to a location name (ex. “Redmond”) in the deploy teams table indicates that there is a user in the provided owner groups with the specified location value (ex. Manager_A with city attribute equal to “Redmond”) but no users in the provided frontline worker groups has that same location value (i.e. no users with the city attribute equal to “Redmond”). The admin should reexamine their selected frontline groups or investigate if this is a data hygiene issue.

### Why am I not seeing some locations?
The locations displayed in the deploy teams table are the list of unique location values from the users in the selected owner groups. This is to ensure the team deploys successfully as owners are mandatory. This means that an admin can create a team with only owners and no members as well(please see “Why am I seeing 0 users while trying to deploy?” FAQ for more information on this scenario).  

## Related articles
- [Learn where to start with a frontline deployment](flw-deploy-overview.md)
- [How to find the best frontline team solution for your organization](frontline-team-options.md)
