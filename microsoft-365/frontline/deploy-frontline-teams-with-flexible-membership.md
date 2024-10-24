---
title: Deploy frontline teams with flexible membership
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: arnavgupta
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to deploy and manage frontline teams with flexible membership for your organization in the Teams admin center. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ROBOTS: NOINDEX, NOFOLLOW
ms.date: 10/24/2024

---

# Deploy frontline teams with flexible membership

> [!NOTE]
> This feature is currently in private preview.

## Overview

Create and manage frontline teams in bulk to drive communication and collaboration for every location in your frontline workforce. Team membership of your frontline teams is automatically synced with your frontline workers’ [Microsoft Entra attributes](/entra/external-id/customers/how-to-define-custom-attributes). As team owners, frontline managers at each of your locations, like department heads, store leads, and warehouse managers, can manually add or remove members.

> [!NOTE]
> If you would like to provide feedback and help improve this feature, fill out this [form](https://forms.office.com/r/MPfxrGG9h4).

## How it works

In the setup process, you:

- Select Microsoft 365 dynamic groups that include your frontline workers.
- Select an attribute that represents the location of each frontline worker to divide them into location-based teams.
- Choose a team template to standardize the channel structure in Teams across all your teams.
- Select Microsoft 365 dynamic groups that include all the frontline managers for all your frontline locations who should be given team owner privileges for each of their frontline teams.
- Define department and job titles of your frontline workers (optional).

After submitting your setup, you can see which locations you can create teams for based on the dynamic groups you submitted. Then, you can choose which locations you want to create frontline teams for. You can always go back and edit your frontline settings, too.

Team membership is automatically managed over time through the power of dynamic rules. As frontline workers are onboarded and offboarded, and as they change locations, their memberships in these teams are updated accordingly. Additionally, frontline managers who are given the team owner role have the flexibility to add or remove frontline workers.

> [!IMPORTANT]
> Changes that frontline managers make override any changes made by dynamic rules. Here's some examples:
>
>- User1 is added to a team based on dynamic rules. The frontline manager of the team then manually removes user1. In this scenario, user1 won't be added to the team again unless the frontline manager manually adds user1 back to the team.
>- A frontline manager adds a user from the Location A team to their Location B team. In this scenario, the user is still a member of the Location A team based on dynamic rules and now part of the Location B team by the manual addition. This user won't be removed from the Location B team unless the frontline manager manually removes the user. In this way, frontline workers can be part of multiple teams at the same time.

## Before you begin

### Prerequisites

- Users must have a Microsoft 365 F3, F1, E3, or E5 license. If a user doesn't have one of these licenses, they need a Microsoft Entra ID P1 add-on license to use dynamic teams. [Learn more about frontline licensing](flw-licensing-options.md).
- Ensure you can define your frontline workers and managers and their work locations through data available in Microsoft Entra ID. If you don't have this data in Microsoft Entra ID, you can sync it through a [human capital management (HCM) connector](/azure/active-directory/app-provisioning/plan-cloud-hr-provision) or [use the PowerShell solution](deploy-teams-at-scale.md) to create static teams at scale.
  - All your frontline workers should be added to up to 32 Microsoft 365 dynamic groups.
  - All your frontline managers at each of your frontline locations should be added to up to 20 Microsoft 365 dynamic groups.
  - There must be one attribute consistent across all frontline workers and managers that represents their frontline location.

- If you want to enable [targeted communications](set-up-targeted-communications.md), ensure you can map the attributes of your frontline workers through data available in Microsoft Entra ID. If user profile information doesn’t yet include job title or department, you can add it. [Learn more about how to add or update a user’s profile information in Microsoft Entra ID](/entra/fundamentals/how-to-manage-user-profile-info). 

### Admin role to run the deployment

To complete the steps in this article, you must be a Global Administrator or a Teams Administrator who is assigned a custom role (as described in this section) in Microsoft Entra ID with specific permissions.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use a less-privileged role.

To give Teams Administrators the ability to complete setup and deploy frontline teams, follow these steps to create the custom role and assign it to Teams Administrators.

#### Create the custom role

1. Sign in to the Microsoft Entra admin center as at least a [Privileged Role Administrator](/entra/identity/role-based-access-control/permissions-reference#privileged-role-administrator).
1. Go to the [Roles and administrators](https://entra.microsoft.com/#view/Microsoft_AAD_IAM/RolesManagementMenuBlade/~/AllRoles) page, and then select **New custom role**.
1. On the **Basics** tab:
    1. Provide a name for the role. Optionally, enter a description.
    1. Make sure **Baseline permissions** is set to **Start from scratch** (the default setting).
1. On the **Permissions** tab, select the following permissions:
    - **microsoft.directory/groups/create**
    - **microsoft.directory/groups/dynamicMembershipRule/update**
    - **microsoft.directory/servicePrincipals/create**
1. On the **Review + create** tab, review the role definition, and then choose **Create**.

    :::image type="content" source="media/frontline-teams-custom-role.png" alt-text="Screenshot of the Review + create tab for reviewing the role definition of the new custom role." lightbox="media/frontline-teams-custom-role.png":::

#### Assign the custom role

1. Sign in to the Microsoft Entra admin center as at least a [Privileged Role Administrator](/entra/identity/role-based-access-control/permissions-reference#privileged-role-administrator).
1. Go to the [Roles and administrators](https://entra.microsoft.com/#view/Microsoft_AAD_IAM/RolesManagementMenuBlade/~/AllRoles) page, and then select the name of the new custom role you created.
1. Choose **Add assignments**.
1. Under **Select member(s)**, choose **No member selected**.

    :::image type="content" source="media/frontline-teams-custom-role-members.png" alt-text="Screenshot of the No member selected option.":::
1. Select the Teams Administrators to which you want to assign the custom role. Choose **Next**.
1. On the **Setting** tab, set **Assignment type** as **Active**.

    :::image type="content" source="media/frontline-teams-custom-role-assignment-type.png" alt-text="Screenshot of the Setting tab, showing assignment type and justification.":::
1. Provide a justification, and then choose **Assign**.

## Set up your frontline teams

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline teams**.
2. In the table, choose **Set up**.

    :::image type="content" source="media/frontline-teams-setup.png" alt-text="Screenshot of the Manage frontline teams page, showing the Set up button." lightbox="media/frontline-teams-setup.png":::

1. On the Overview page, review the setup and prerequisites information.

1. On the Frontline workers page, select the Microsoft 365 dynamic groups that include your frontline workers. You can choose up to 32 Microsoft 365 dynamic groups. You can change these groups, as needed, after you submit your setup.

    :::image type="content" source="media/frontline-teams-select-groups.png" alt-text="Screenshot showing where to add dynamic groups that include the frontline workers in your organization." lightbox="media/frontline-teams-select-groups.png":::

1. On the Location page, select a Microsoft Entra attribute or a [custom user attribute](/entra/external-id/user-flow-add-custom-attributes) that defines the location your frontline employees work in. You can only choose one location attribute. You can change the attribute, as needed, after you submit your setup.

    All custom attributes are case sensitive and must start with an "extension_" prefix. Only custom attributes of the String data type are supported.

    :::image type="content" source="media/frontline-teams-location-attribute.png" alt-text="Screenshot showing where to enter your Microsoft Entra attribute that identifies the location where your frontline employees work." lightbox="media/frontline-teams-location-attribute.png":::

1. On the Team settings page, define a naming pattern for your teams by choosing a prefix. The prefix is applied using the "prefix-location" format to all your teams.

    :::image type="content" source="media/frontline-teams-team-settings.png" alt-text="Screenshot of the Team settings page showing options for prefix, team template, and adding team owner groups." lightbox="media/frontline-teams-team-settings.png":::

1. Choose a team template. The team template you choose defines the channel structure for all your frontline teams. [Learn more about team templates](/microsoftteams/get-started-with-teams-templates-in-the-admin-console).

    > [!NOTE]
    > Currently, only team templates that are set to the English (United States) locale are supported. Keep in mind that the locale doesn't affect translation of the template or data residency. The locale setting is used only to distinguish between templates that have the same name that are created in different languages.
1. Select up to 20 Microsoft 365 dynamic groups that include at least one frontline worker from each location to be made team owner.

    Every location you want to deploy must have at least one frontline worker set as team owner. Team owners can add or remove membership from their frontline teams. For example, team owners can be your frontline managers, department heads, and/or leads.
    
    You can change these groups, as needed, after you submit your setup.

1. On the Map frontline attributes page, select the Microsoft Entra attributes that most accurately reflect the departments and job titles in your organization. You can set the **Department attribute**, **Job title attribute**, or both.

    > [!NOTE]
    > This step is optional. If you choose not to map frontline attributes, leave the values as **None**. You can always come back and map them later on the [Frontline teams settings page](#edit-your-frontline-teams-settings).

    :::image type="content" source="media/frontline-teams-map-attributes.png" alt-text="Screenshot showing where to map your Microsoft Entra attributes for Job title and Department." lightbox="media/frontline-teams-map-attributes.png":::

    These attributes map departments and job titles in your organization, which allows you to deliver targeted communications features, such as [automatic tags](set-up-targeted-communications.md#automatic-tags), to your frontline. Your frontline workers can quickly and easily reach the right group of people through tags that are automatically created based on the attribute mappings. [Learn more about attribute mapping and targeted communications](set-up-targeted-communications.md).

1. Review your settings, and then choose **Submit.**

    :::image type="content" source="media/frontline-teams-submit-setup.png" alt-text="Screenshot of the Review summary page, showing a summary of settings and the Submit button." lightbox="media/frontline-teams-submit-setup.png":::

    > [!NOTE]
    > Setup can take several hours to run. Refresh the Manage frontline teams page to get the latest status.

## Deploy your frontline teams

1. After setup is completed, go to the Manage frontline teams page, and then select the **Deploy** button.

    :::image type="content" source="media/frontline-teams-deploy.png" alt-text="Screenshot of the Manage frontline teams page, showing the Deploy button." lightbox="media/frontline-teams-deploy.png":::

1. On the Deploy frontline teams page, you can review your settings and view the list of locations that don't yet have a frontline team created.

1. In the table, select the locations that you want to create teams for.

    :::image type="content" source="media/frontline-teams-deploy-teams.png" alt-text="Screenshot of the table of locations." lightbox="media/frontline-teams-deploy-teams.png":::

1. Select **Deploy**. This process can take several hours depending on how many teams you're creating.

    After deployment is completed, you'll see the number of deployed frontline teams in the **Frontline teams** card. You can also download a CSV file with a list of those teams.

    :::image type="content" source="media/frontline-teams-deploy-completed.png" alt-text="Screenshot showing the Frontline teams card and the Deployment health card on the Manage frontline teams page." lightbox="media/frontline-teams-deploy-completed.png":::

    If an error occurred during the deployment process, you can download the error CSV file on the **Deployment health** card. Use the information in it to help resolve the errors, and then rerun the deployment experience

1. You can repeat this process for any frontline locations that don't have a team.

## Manage your frontline teams

You can manage your teams when changes happen in your organization.

### Create new teams for newly opened locations

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline teams**.

1. In the table, choose **Deploy**.

1. Select the **Refresh location** button, and then proceed when prompted by the dialog box. This process can take several hours depending on the number of new locations.

    :::image type="content" source="media/frontline-teams-refresh-locations.png" alt-text="Screenshot of the Refresh location button." lightbox="media/frontline-teams-refresh-locations.png":::

1. After the refresh is completed, your setup status shows as **Complete**. You can proceed to [deploy your new teams](#deploy-your-frontline-teams). Deployment can take several hours depending on how many new teams you're deploying.

### Edit your frontline teams settings

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Frontline deployment** > **Manage frontline teams**.
1. In the **Deployment settings** column, choose **Deploy frontline teams**.
1. On the Frontline teams settings page, edit your settings, and then select **Apply**. Your settings might take several hours to update.

    :::image type="content" source="media/frontline-teams-edit-settings.png" alt-text="Screenshot of the Frontline teams settings page, showing options to edit frontline team settings" lightbox="media/frontline-teams-edit-settings.png":::

    See the following table for the effects of updating your settings.

    |Setting |Effect on existing frontline teams |Effect on new frontline teams |
    |--------|-----------------------------------|------------------------------|
    |Frontline workers |All existing frontline teams will be updated with members that are part of the new dynamic groups you selected. Members added or removed by frontline managers won't be affected.|All new frontline teams members will include members that are part of the new dynamic groups you selected. |
    |Location | Existing teams will continue to persist. If a team is no longer tied to a location, there will be no frontline workers in that team except the team owner, and the other users are put in their respective location teams. |You can create new frontline teams based on the locations defined by your new Microsoft Entra attribute. |
    |Map your frontline attributes |All existing frontline team members will reflect the Microsoft Entra attribute you defined for department and job title. |All new frontline team members will use the Microsoft Entra attribute you defined for department and job title.|
    |Team settings - team name prefix|All existing team names will be updated to reflect the prefix and location name if it was changed.|All new teams will have the updated naming convention. |
    |Team settings - team template|No updates to the team structure will occur.|All new teams will use the updated team template. |
    |Identify your team owners |Frontline managers that were already assigned team owner won't be removed or reprieved of their team owner role. New team owners from the new dynamic groups you selected will be added as team owners to their respective teams. |All new teams will have team owners that are part of the new dynamic groups you selected. There must be at least one team owner for every new team. |

## Get analytics on frontline teams usage

The [Teams frontline usage report](frontline-usage-report.md) on the usage dashboard of the Manage frontline teams page gives you an overview of usage activity in Teams for each of your frontline locations. You can view data, such as the number of active users and last activity date, to quickly see how many users at your frontline locations are using Teams to communicate and collaborate.

## Frequently asked questions

### Why are channels missing when I create my teams?

It can take time for channels to propagate in Teams. The General channel is created first and the remaining channels are added over time. All channels should be available within 24 hours of team creation.

### How do I delete a frontline team?

You can delete a team by using the [Teams client](https://support.microsoft.com/office/delete-a-team-in-microsoft-teams-c386f91b-f7e6-400b-aac7-8025f74f8b41), [Teams admin center](/microsoftteams/archive-or-delete-a-team), [PowerShell](/powershell/module/teams/remove-team), or [Graph](/graph/api/group-delete).

It can take up to 24 hours for a team and the Microsoft 365 group associated with the team to be fully deleted.

If you need to redeploy a frontline location team that was deleted, follow these steps:

1. [Refresh locations](#manage-your-frontline-teams).
1. After the refresh is completed, choose the location you want to deploy.
1. Select **Deploy**.

## Related articles

- [Learn where to start with a frontline deployment](flw-deploy-overview.md)
- [How to find the best frontline team solution for your organization](frontline-team-options.md)
- [Set up for targeted communications for your frontline](set-up-targeted-communications.md)
