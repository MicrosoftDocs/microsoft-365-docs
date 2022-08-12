---
title: Deploy Teams at scale for frontline workers
author: LanaChin
ms.author: v-lanachin
ms.reviewer: rahuldey
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to deploy Teams at scale for the frontline workers in your organization. 
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers

---

# Deploy Teams at scale for frontline workers

## Overview

### Original
 
Your organization may have a lot of teams that you use to drive communication and collaboration among your frontline workforce, who are spread across different stores, locations, and roles. Currently, there isn't an easy solution to deploy, set up, and manage these teams and users at scale.

We're building a solution to enable admins to deploy and manage teams at scale.

Here's an overview of the capabilities available today for creating and managing large numbers of teams at a time and what we're planning for the near future.

||Available today |Later in 2022  |
|---------|---------|---------|
|**Number of teams you can create per batch**|Up to 100 |Up to 500|
|**Number of users you can add per team**|Up to 25|Up to 25|

Deploying Teams at scale allows you to:

- Create teams using pre-built templates or your own custom templates.
- Add users to teams as owners or members.
- Manage teams at scale by adding or removing users from existing teams.
- Stay notified through email, including completion, status, and errors (if any). You can choose to notify up to five people about the status of each batch of teams you deploy. Team owners and members are automatically notified when they're added to a team.

### Updated
 
Do you need deploy and manage a large number of teams to drive communication and collaboration among your frontline workforce? This article is for you if you need to create, set up, and manage teams at scale.

Deploying Teams at scale enables you to deploy up to 500 teams and add up to 25 users per team at a time. This solution allows you to meet your organization's scale needs and significantly reduces deployment time. You can also add an remove users from existing teams at scale. 

With this solution, you can:

- Create teams using pre-built templates or your own custom templates.
- Add users to teams as owners or members.
- Manage teams at scale by adding or removing users from existing teams.
- Stay notified through email, including completion, status, and errors (if any). You can choose to notify up to five people about the status of each batch of teams you deploy. Team owners and members are automatically notified when they're added to a team.

## Deploy Teams at scale

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
    |**Team Template ID**|If you're creating a team from a pre-built or custom template, specify the team template ID. See [Get started with team templates in the Teams admin center](/microsoftteams/get-started-with-teams-templates-in-the-admin-console) for a list pre-built team templates and IDs. If you want to use the standard default team template, leave this blank.|

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
1. Download  and install the [latest preview version of the Teams PowerShell module](https://www.powershellgallery.com/packages/MicrosoftTeams). You must be running version 4.3.1 (preview) or a later preview version.  

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

## Apply and assign Teams policies

 A [policy package](/microsoftteams/manage-policy-packages) in Teams is a collection of predefined policies and policy settings that you can assign to users who have the same or similar roles in your organization. Policy packages simplify, streamline, and help provide consistency when managing policies for your frontline workforce. You can manage policy packages by using the Microsoft Teams admin center or PowerShell.

Teams includes the Frontline manager and Frontline worker policy packages. Each policy package creates a set of policies and policy settings that support collaboration and communication activities that are typical for that role. 

Policy packages pre-define policies for the following, depending on the package:

    - Messaging policy
    - Meeting policy
    - Calling policy
    - App setup policy
    - Live events policy

Each individual policy is given the name of the policy package so you can easily identify the policies that are linked to a policy package. For example, when you assign the Frontline manager policy package to store managers in your organization, a policy named Frontline_Manager is created for each policy in the package.

### View the policy settings in the policy package

View the settings of each policy in a policy package before you assign a package. In the left navigation of the Microsoft Teams admin center, go to **Policy packages**, select the package name, and then select the policy name.

Decide whether the predefined values are appropriate for your organization or whether you need to customize them to be more restrictive or lenient based on your organization's needs.

### Customize policy settings in the policy package

Customize the settings of policies in the policy package, as needed, to fit the needs of your organization. Any changes you make to policy settings are automatically applied to users who are assigned the package. To edit the settings of a policy in a policy package, in the left navigation of the Microsoft Teams admin center, go to **Policy packages**, select the policy package, select the name of the policy you want to edit, and then select **Edit**.

Keep in mind that you can also change the settings of policies in a package after you assign the policy package. To learn more, see [Customize policies in a policy package](/microsoftteams/manage-policy-packages#customize-policies-in-a-policy-package).

### Assign the policy package

Assign the policy package to frontline workers and managers. You can assign a policy package to an individual user, a group, or a batch of users. For step-by-step guidance on how to assign policy packages, see [Assign policy packages to users and groups](/microsoftteams/assign-policy-packages).

If a user has a policy assigned, and then later you assign a different policy, the most recent assignment will take priority.

### Assign a policy package to a group

Policy package assignment to groups lets you assign multiple policies to a group of users, such as a security group or distribution list. The policy assignment is propagated to members of the group according to precedence rules. As members are added to or removed from a group, their inherited policy assignments are updated accordingly. This method is recommended for groups of up to 50,000 users but will also work with larger groups.

To learn more, see [Assign a policy package to a group](/microsoftteams/assign-policy-packages#assign-a-policy-package-to-a-group).

### Assign a policy package to a large set (batch) of users

Use batch policy package assignment to assign a policy package to large sets of users at a time. You use the [New-CsBatchPolicyPackageAssignmentOperation](/powershell/module/teams/new-csbatchpolicypackageassignmentoperation) cmdlet to submit a batch of users and the policy package that you want to assign. The assignments are processed as a background operation and an operation ID is generated for each batch.

A batch can contain up to 5,000 users. You can specify users by their object ID or Session Initiation Protocol (SIP)  address. To learn more, see [Assign a policy package to a batch of users](/microsoftteams/assign-policy-packages#assign-a-policy-package-to-a-batch-of-users).

## Send us feedback

We value your feedback. Usability, reliability, performance&mdash;we welcome it all!

Email [dscale@microsoft.com](mailto:dscale@microsoft.com) and include your orchestration ID and error file, if you have it.

## Related articles

- [Teams PowerShell Overview](/microsoftteams/teams-powershell-overview)
