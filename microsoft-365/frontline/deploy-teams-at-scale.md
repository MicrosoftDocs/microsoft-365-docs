---
title: Deploy teams at scale for frontline workers in Microsoft Teams
author: LanaChin
ms.author: v-lanachin
ms.reviewer: rahuldey
manager: samanro
ms.topic: article
audience: admin
ms.service: msteams
search.appverid: MET150
description: Learn how to deploy teams at scale for the frontline workers in your organization. 
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_FLW
appliesto: 
  - Microsoft Teams
---

# Deploy teams at scale for frontline workers in Microsoft Teams

> [!NOTE]
> This feature is currently in private preview. If you'd like to participate in the private preview, reach out to us at [dscale@microsoft.com](mailto:dscale@microsoft.com).

## Overview
 
Your organization may have a lot of teams that you use to drive communication and collaboration among your frontline workforce, who are spread across different stores, locations, and roles. Currently, there isn't an easy solution to deploy, set up, and manage these teams and users at scale.

We're building a solution to enable admins to deploy and manage teams at scale.

Here's an overview of the capabilities available today for creating and managing large numbers of teams at a time and what we're planning for the near future.

||Available today |Later in 2022  |
|---------|---------|---------|
|**Number of teams you can create per batch**|Up to 100 |Up to 500|
|**Number of users you can add per team**|Up to 25|Up to 25|

Deploying teams at scale allows you to:

- Create teams using pre-built templates or your own custom templates.
- Add users to teams as owners or members.
- Manage teams at scale by adding or removing users from existing teams.
- Stay notified through email, including completion, status, and errors (if any). You can choose to notify up to five people about the status of each batch of teams you deploy. Team owners and members are automatically notified when they're added to a team.

## How to deploy teams at scale

> [!NOTE]
> Before you deploy your teams, make sure that all teams owners have a Teams license.

Follow these steps to deploy a large number of teams at a time.

### Step 1: Prepare your CSV files

You'll need to create two CSV files for each batch of teams that you deploy:

- **A CSV file that defines the teams you're creating**. This file must contain these required columns, in the following order, starting with the first column:

    |Column name  |Description  |
    |---------|---------|
    |**Team Name**|The name of the team.|
    |**Existing Team ID**|If you're adding or removing users from an existing team, specify the team ID of the team.|
    |**Visibility**|Whether the team is public (anyone in your organization can join) or private (users need approval from the team owners to join). Options are **Public** and **Private**.|
    |**Team Template ID**|If you're creating a team from a pre-built or custom template, specify the team template ID. See [Get started with team templates in the Teams admin center](get-started-with-teams-templates-in-the-admin-console.md) for a list pre-built team templates and IDs. If you want to use the standard default team template, leave this blank.|

- **A CSV file that maps the users you're adding to each team**. This file must contain these required columns, in the following order, starting with the first column:

    |Column name  |Description  |
    |---------|---------|
    |**User Full Name**|The display name of the user.|
    |**User UPN or ID**|The user principal name (UPN) or ID of the user. For example, averyh@contoso.com.|
    |**Team Name**|The name of the team.|
    |**ActionType**|Whether you're adding or removing the user from the team. Options are **AddMember** and **RemoveMember**.|
    |**Owner or Member**|Whether the user is a team owner or team member. Options are **Owner** and **Member**.|

#### Examples

Use the following examples to help you create your CSV files. Here, we've named the files, Teams.csv and Users.csv.

**Teams.csv**

|Team Name|Existing Team ID|Visibility|Team Template ID|
|---------|---------|---------|---------|
|Contoso Store 1||Public|com.microsoft.teams.template.retailStore|
|Contoso Store 2||Public|com.microsoft.teams.template.retailStore|
|Contoso Store 3||Public|com.microsoft.teams.template.retailStore|
|Contoso Store 4||Public|com.microsoft.teams.template.retailStore|
|Contoso Store 5||Public|com.microsoft.teams.template.ManageAProject|
|Contoso Store 6||Public|com.microsoft.teams.template.ManageAProject|
|Contoso Store 7||Public||
|Contoso Store 8||Private|com.microsoft.teams.template.OnboardEmployees|
|Contoso Store 9||Private|com.microsoft.teams.template.OnboardEmployees|
|Contoso Store 10||Private|com.microsoft.teams.template.OnboardEmployees|

**Users.csv**

|User Full Name |User UPN or ID|Team Name|ActionType|Owner or Member|
|---------|---------|---------|---------|---------|
|Avery Howard|averyh@contoso.com|Contoso Store 1|AddMember|Owner|
|Casey Jensen|caseyj@contoso.com|Contoso Store 2|AddMember|Owner|
|Jessie Irwin|jessiei@contoso.com|Contoso Store 3|AddMember|Owner|
|Manjeet Bhatia|manjeetb@contoso.com|Contoso Store 4|AddMember|Owner|
|Mikaela Lee|mikaelal@contoso.com|Contoso Store 5|AddMember|Owner|
|Morgan Conners|morganc@contoso.com|Contoso Store 6|AddMember|Member|
|Oscar Ward|oscarw@contoso.com|Contoso Store 7|AddMember|Member|
|Rene Pelletier|renep@contoso.com|Contoso Store 8|AddMember|Member|
|Sydney Mattos|sydneym@contoso.com|Contoso Store 9|AddMember|Member|
|Violet Martinez|violetm@contoso.com|Contoso Store 10|AddMember|Member|

### Step 2: Deploy your teams

Now that you've created your CSV files, you're ready to set up your environment and deploy your teams.

You use the ```New-CsBatchTeamsDeployment``` cmdlet to submit a batch of teams to create. An orchestration ID is generated for each batch. You can then use the ```Get-CsBatchTeamsDeployment``` cmdlet to track the progress and status of each batch.

1. Install PowerShell version 7 or later. For step-by-step guidance, see [Installing PowerShell on Windows](/powershell/scripting/install/installing-powershell-on-windows).
1. Run PowerShell in administrator mode.
1. Run the following to uninstall any previously installed Teams PowerShell module.

    ```powershell
    Uninstall-module -Name MicrosoftTeams -Force -Allversions
    ```

    If you get an error message, you're already set. Go to the next step.
1. Download  and install the [latest version of the Teams PowerShell module](https://www.powershellgallery.com/packages/MicrosoftTeams).

1. Run the following to connect to Teams.

    ```powershell
    Connect-MicrosoftTeams
    ```

    When you're prompted, sign in using your admin credentials.

1. Run the following to get a list the commands in the Teams PowerShell module.

    ```powershell
    Get-Command -Module MicrosoftTeams
    ```

    Verify that ```New-CsBatchTeamsDeployment``` and ```Get-CsBatchTeamsDeployment``` are listed.

1. Run the following to deploy a batch of teams. In this command, you specify the path to your CSV files and the email addresses of up to five recipients to notify about this deployment.

    ```powershell
    New-CsBatchTeamsDeployment -TeamsFilePath "Your CSV file path" -UsersFilePath "Your CSV file path" -UsersToNotify "Email addresses" 
    ```

    For example:

    ```powershell
    New-CsBatchTeamsDeployment -TeamsFilePath "C:\dscale\Teams.csv" -UsersFilePath "C:\dscale\Users.csv" -UsersToNotify "adminteams@contoso.com,adelev@contoso.com"
    ```

    The recipients will receive email notifications about deployment status. The email contains the orchestration ID for the batch you submitted and any errors that may have occurred.

1. Run the following to check the status of the batch you submitted.

    ```powershell
    Get-CsBatchTeamsDeploymentStatus -OrchestrationId "OrchestrationId"
    ```

## Send us feedback

We value your feedback. Usability, reliability, performance&mdash;we welcome it all!

Email [dscale@microsoft.com](mailto:dscale@microsoft.com) and include your orchestration ID and error file, if you have it.

## Related articles

- [Teams PowerShell Overview](teams-powershell-overview.md)
