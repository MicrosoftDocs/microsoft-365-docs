---
title: Deploy frontline dynamic teams at scale
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: aaglick
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to deploy dynamic teams at scale for your organization. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 08/04/2023

---

# Deploy frontline dynamic teams at scale

## Overview

>[!IMPORTANT]
>This feature will begin rolling out for public preview in July 2023. If you would like to provide feedback and improve this feature while in preview, please fill out [this form](https://forms.microsoft.com/r/DWaJXA6Dax)

Frontline teams are a collection of people, content, and tools within an organization for different frontline worker locations. Membership of frontline dynamic teams is determined and managed by a set of Azure Active Directory (Azure AD) attributes. [Learn more about Azure AD attributes](/azure/active-directory/external-identities/customers/how-to-define-custom-attributes).

In the setup process, you define the following information with Azure AD attributes:

- Who your frontline workers are
- What locations they work at

You also determine team structure and team owners.

Then, you can choose which locations you want to create dynamic frontline teams for.

Team membership will be automatically managed over time through the power of dynamic teams. As frontline workers are onboarded, offboarded, or change locations, their membership in these teams will update accordingly.

## Prerequisites

- Users must have a Microsoft 365 F3, F1, E1, E3, or E5 license. If a user doesn't have one of these licenses, they'll need an Azure AD P1 add-on license to use dynamic teams. [Learn more about frontline licensing](flw-licensing-options.md).
- The admin running the deployment process needs Teams admin center permissions.
- Ensure you can define your frontline workers and their work locations through data available in Azure AD. If you don't have this data in Azure AD, you can sync it through a [human capital management (HCM) connector](/azure/active-directory/app-provisioning/plan-cloud-hr-provision) or [use the PowerShell solution](deploy-teams-at-scale.md) to create teams at scale.
- When evaluating the right solution, we recommend you do the following:
  1. Plan your frontline deployment.
  1. Test the deploy tools (dynamic or static team creation).
  1. Deploy to a pilot location.
  1. Deploy to a broader set of locations using a phased approach.

     >[!NOTE]
     >The PowerShell solution creates static teams, which aren't managed automatically.

## Set up your frontline dynamic teams

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline teams**.
2. In the table, choose **Setup**.

    :::image type="content" source="media/dtas-manage-setup.png" alt-text="Screenshot of the manage frontline teams table in the Teams admin center." lightbox="media/dtas-manage-setup.png":::

3. Review the prerequisites information.

4. Select the Azure AD attribute that defines your frontline workers. You can only choose one Azure AD attribute, but you can define multiple values by separating them with commas.

    :::image type="content" source="media/dtas-frontline-attribute.png" alt-text="Screenshot of where to enter your Azure AD attribute and values for frontline workers." lightbox="media/dtas-frontline-attribute.png":::

5. Select the Azure AD attribute that defines the location your frontline employees work in. You can only choose one location attribute.

    :::image type="content" source="media/dtas-location-attribute.png" alt-text="Screenshot of where to enter your Azure AD attribute for frontline locations." lightbox="media/dtas-location-attribute.png":::

6. Define your team structure by choosing a prefix. The prefix is applied using the "prefix-location" format for all your teams.

    :::image type="content" source="media/dtas-prefix.png" alt-text="Screenshot of the prefix, team template, and team owner account fields." lightbox="media/dtas-prefix.png":::

7. Optionally, choose a team template. The team template you choose defines the channel structure for all your frontline teams. [Learn more about Teams templates](/microsoftteams/get-started-with-teams-templates-in-the-admin-console).

8. Enter a user account object ID to be the team owner. This account will be the owner for all frontline teams. It's recommended to choose a shared account rather than an individual person.
    1. To get a user's object ID, go to the [Azure portal](https://portal.azure.com).
    1. Select **Azure Active Directory**.
    1. Select **Users**, and then choose your user.
    1. Copy the user's object ID.

9. Review the settings, and then choose **Finish setup.**

    >[!NOTE]
    >Setup can take several hours to run. You can refresh the **Manage frontline teams** page to get the latest status of your setup.

    :::image type="content" source="media/dtas-setup-submitted.png" alt-text="Screenshot of the Manage frontline teams page with a banner showing that setup was submitted." lightbox="media/dtas-setup-submitted.png":::

## Deploy your frontline dynamic teams

1. After setup is completed, go to the **Manage frontline teams** page, and then select the **Deploy** button.

    :::image type="content" source="media/dtas-deploy.png" alt-text="Screenshot of the Deploy button." lightbox="media/dtas-deploy.png":::

2. From here, you can review your settings and view the list of locations that don't yet have a frontline dynamic team created.

3. In the table, select the locations that you want to create teams for.

    :::image type="content" source="media/dtas-deploy-locations.png" alt-text="Screenshot of the table of locations." lightbox="media/dtas-deploy-locations.png":::

4. Select **Deploy**. This process can take several hours depending on how many teams you're creating. After deployment is completed, you'll see the number updated in the **Frontline teams** tile. On this tile, you can download a CSV file with a list of your frontline teams. If any errors occurred, you can download the error CSV file on the **Last deployment health** tile.

    :::image type="content" source="media/dtas-view-errors.png" alt-text="Screenshot of where you can get the CSV file on the Manage frontline teams page." lightbox="media/dtas-view-errors.png":::

5. You can repeat this process for any frontline locations that don't have a team.

## Managing your frontline dynamic teams

You can manage your teams when changes happen in your organization.

### Create new teams for newly opened locations

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline teams**.

2. In the table, choose **Deploy**.

3. Select the **Refresh location** button, and proceed when prompted by the dialog box. This process can take several hours depending on your number of new locations.

    :::image type="content" source="media/dtas-refresh-locations.png" alt-text="Screenshot of the Refresh location button." lightbox="media/dtas-refresh-locations.png":::

4. After your refresh completes, your setup status shows as **Complete**. You can proceed to [deploy your new teams](#deploy-your-frontline-dynamic-teams). Deployment can take several hours depending on how many new teams you're deploying.

### Edit your frontline team settings

>[!IMPORTANT]
>The ability to edit your frontline team settings is coming soon.

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com), choose **Teams** > **Manage frontline teams**.
2. In the **Deploy settings** column, choose **Deploy frontline teams** .
3. Edit your settings on this page, and then select **Save**. Your settings may take several hours to update. See the following table for the effects of updating your settings.

|Setting |Effect on existing frontline teams |Effect on new frontline teams |
|--------|-----------------------------------|------------------------------|
|Define your frontline Azure AD attribute. |All existing frontline teams will be members that have the new Azure AD attribute defined. |All new frontline teams members will have the new Azure AD attribute defined. |
|Choose the values applicable to your frontline Azure AD attribute. |All existing frontline team membership will reflect your updated values. |All new teams will be populated with members who have the updated Azure AD attributes that you defined. |
|Define your frontline locations. | Existing teams will continue to persist. If a team is no longer tied to a location, there will be no users in that team, and users will be put in their respective location teams. |You can create new frontline teams based on the locations defined by your new Azure AD attribute. |
|Set your team name prefix. |All existing team names will be updated to reflect the prefix and location name if that was changed. |All new teams will have the updated naming convention. |
|Select your team template. |No updates to the team structure will occur. |All new teams will use the updated team template. |
|Select your team owner. |The team owner will be updated for all existing teams. |All new teams will have the updated team owner. |
