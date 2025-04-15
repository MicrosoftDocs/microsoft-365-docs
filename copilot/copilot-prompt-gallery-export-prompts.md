---
title: "Export prompts that users saved or shared in Copilot Prompt Gallery"
description: "Provides admins the steps to take to export prompts that users saved or shared in Copilot Prompt Gallery"
ms.author: danbrown
author: DHB-MSFT
manager: laurawi
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- privacy-copilot
- m365copilot
- magic-ai-copilot
hideEdit: true
ms.date: 11/19/2024
---

# Export prompts that users saved or shared in Copilot Prompt Gallery

In [Copilot Prompt Gallery](https://copilot.cloud.microsoft/prompts), users can save or share prompts they created, including sharing prompts with a specific team (in Microsoft Teams) that they're a member of. As an admin, you can use Windows PowerShell to export data to a file about either of the following types of prompts in Copilot Prompt Gallery:

- The saved and shared prompts of a specific user.
- The prompts shared with a specific team.

> [!NOTE]
> The user account running the PowerShell script to export the data needs to be assigned the Global Admin role.

## Configure your Windows PowerShell environment

Before you can export prompts that users saved or shared in Copilot Prompt Gallery, you need to configure your PowerShell environment by doing the following steps:

1. [Download the CopilotLabDSR PowerShell script](#download-the-copilotlabdsr-powershell-script)
2. [Install the MSAL.PS module](#install-the-msalps-module)
3. [Load the CopilotLabDSR module](#load-the-copilotlabdsr-module)

### Download the CopilotLabDSR PowerShell script

1. To get started, you need to [download the CopilotLabDSR PowerShell script](https://download.microsoft.com/download/b/a/b/babff430-cc1f-46e0-b98b-2997d79af5ae/tenant-admin-scripts.zip).
2. Extract the CopilotLabDSR.psm1 file from the tenant-admin-scripts.zip file to a location you can access from PowerShell.
3. In File Explorer, go to the location where you saved the CopilotLabDSR.psm1 file that you extracted.
4. Right-click on the CopilotLabDSR.psm1 file and select **Properties**.
5. On the **General** tab, select **Unblock** checkbox, and then select **Ok**.

   You need to unblock the file because, by default, executing scripts downloaded from the internet isn't allowed.

### Install the MSAL.PS module

1. Check if the MSAL.PS module is installed by running the following command in PowerShell:
   ```PowerShell
   Get-Module -ListAvailable MSAL.PS
   ```
2. If the module isn't installed, install the module by running the following command in PowerShell:
   ```PowerShell
   Install-Module -Name MSAL.PS -Scope CurrentUser 

### Load the CopilotLabDSR module

1. Run the following command in PowerShell to enable running scripts downloaded from the internet for this session only. It might prompt you to confirm by typing "Y."

   ```PowerShell
   Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
   ```

2. Run the following command to import the module with all available cmdlets.

   ```PowerShell
   Import-module "<location where you saved the CopilotLabDSR.psm1 file that you extracted>"
   ```

   For example, if your file is saved in C:\AdminScripts, you would type:

   ```PowerShell
   Import-module "C:\AdminScripts\CopilotLabDSR.psm1"


## Export the saved and shared prompts of a specific user

1. From Windows PowerShell, use the `Export- PromptsUserContent` cmdlet to export the saved or shared prompts of a specific user from Copilot Prompt Gallery.

```powershell
Export-PromptsUserContent -UserAadIdOrPrincipalName <Entra ID or UPN of user> -ExportDirectory <output location> -PromptType <type of prompt>
```

| Parameter                | Description                                                                                                                                              |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| UserAadIdOrPrincipalName | Use either the Microsoft Entra ID or the User Principal Name (UPN) of the user for which you want to export content.                                     |
| ExportDirectory          | Location to store your output files. The folder should already exist. If not specified, the export files are saved to the current folder.                |
| PromptType               | Specify "saved" to export the prompts saved by the user. Specify "shared" to export the prompts for which a shareable link to the prompt was generated. |

For example, the following exports Reed Smiths's saved prompts in Copilot Prompt Gallery using his UPN and downloads the export files to the location C:\PromptsExportReedSmith.

```powershell
Export- PromptsUserContent -UserAadIdOrPrincipalName reedsmith@contoso.com -ExportDirectory C:\PromptsExportReedSmith -PromptType saved
```

2. When prompted to authenticate, sign in with an account that is assigned the Global Admin role, not as the user you want to export.
3. After the PowerShell cmdlet runs successfully, go to your export location to view your exported files.

## Export prompts shared with a specific team

1. From Windows PowerShell, use the `Export-PromptsGroupContent` cmdlet to export the prompts published to the specific team in Copilot Prompt Gallery.

```powershell
Export-PromptsGroupContent -M365TeamsGroupId <team ID> -ExportDirectory <output location>
```

| Parameter        | Description                                                                                                                               |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| M365TeamsGroupId | ID of the team to which the prompts were shared.                                                                                     |
| ExportDirectory  | Location to store your output files. The folder should already exist. If not specified, the export files are saved to the current folder. |

For example, the following exports the prompts shared in Copilot Prompt Gallery to the team with an ID of "d0efcad2-6744-0de6-0624-ea467d4293af" and downloads the export files to the location C:\PromptsExportReedSmith.

```powershell
Export- PromptsGroupContent -M365TeamsGroupId d0efcad2-6744-0de6-0624-ea467d4293af -ExportDirectory C:\PromptsExportReedSmith
```

> [!TIP]
> To find the ID of the team, go to **Teams** > **Manage teams** in the [Teams admin center](https://admin.teams.microsoft.com/).

2. When prompted to authenticate, sign in with an account that is assigned the Global Admin role.
3. After the PowerShell cmdlet runs successfully, go to your export location to view your exported files.

## Properties contained in the export file and their descriptions

After running the PowerShell cmdlet to export your user's data from Copilot Prompt Gallery, you'll receive one file in your download location folder. You can use the information in the following sections to help you understand the properties you see in the file you received.

### Export file for the saved and shared prompts of a specific user

The file name is prefixed with "User" and the Microsoft Entra ID of the user followed by the prompts type used for export. The file has the properties listed in the following table.

| Property                                            | Description                                                             |
|-----------------------------------------------------|-------------------------------------------------------------------------|
| Prompts                                             | An array of users saved or shared prompts information.                  |
| Prompt.Title                                        | Title of the prompt given by user while saving or sharing the prompt.   |
| Prompt.PromptText                                   | Prompt text                                                             |
| Prompt.Products                                     | A list containing the product in which user saved or shared the prompt. |
| Prompt.CreatedTime                                  | Time when the user saved the prompt.                                    |
| Prompt.SharedTime                                   | Time when the user shared the prompt                                    |
| Prompt.HydratedEntities                             | List of entities with type and entity information.                      |
| Prompt.HydratedEntities.Type                        | Currently People, File, and Meeting entity types are supported.         |
| Prompt.HydratedEntities.Entity                      | Entity information based on entity type.                                |
| Prompt.HydratedEntities.Entity.Id                   | Unique entity ID.                                                       |
| Prompt.HydratedEntities.Entity.DisplayName          | Person entity display name.                                             |
| Prompt.HydratedEntities.Entity.EmailAddresses       | List of email addresses for person entity.                              |
| Prompt.HydratedEntities.Entity.ReferenceId          | Unique ID for instrumentation mapping.                                  |
| Prompt.HydratedEntities.Entity.FileName             | Name of the file entity.                                                |
| Prompt.HydratedEntities.Entity.AccessUrl            | Access URL of file entity.                                              |
| Prompt.HydratedEntities.Entity.SpoId                | SharePoint Document Identifier for File entity.                         |
| Prompt.HydratedEntities.Entity.OriginalId           | Meeting ID of event entity.                                             |
| Prompt.HydratedEntities.Entity.Subject              | Subject of event entity.                                                |
| Prompt.HydratedEntities.Entity.SkypeTeamsMeetingUrl | URL of event entity.                                                    |
| Prompt.HydratedEntities.Entity.Start                | Start time of event entity.                                             |
| Prompt.HydratedEntities.Entity.End                  | End time of event entity.                                               |
| Prompt.HydratedEntities.Entity.OrganizerName        | Organizer Name of event entity.                                         |
| Prompt.HydratedEntities.Entity.OrganizerAddress     | Organizer Address of event entity.                                      |
| Prompt.HydratedEntities.Entity.Attendees            | Attendees list of event entity.                                         |

### Export file for the prompts shared with a specific team

The file name is prefixed with "Group" and the ID of the team. The file has the properties listed in the following table.

| Property                                            | Description                                                             |
|-----------------------------------------------------|-------------------------------------------------------------------------|
| Prompts                                             | An array of users saved or shared prompts information.                  |
| Prompt.Title                                        | Title of the prompt given by user while saving or sharing the prompt.   |
| Prompt.PromptText                                   | Prompt text                                                             |
| Prompt.Products                                     | A list containing the product in which user saved or shared the prompt. |
| Prompt.PublishedTime                                | Time when prompt was published to the team.                             |
| Prompt.PublishedBy                                  | UPN of the user who published the prompt to the team.                   |
| Prompt.HydratedEntities                             | List of entities with type and entity information.                      |
| Prompt.HydratedEntities.Type                        | Currently People, File, and Meeting entity types are supported.         |
| Prompt.HydratedEntities.Entity                      | Entity information based on entity type.                                |
| Prompt.HydratedEntities.Entity.Id                   | Unique entity ID.                                                       |
| Prompt.HydratedEntities.Entity.DisplayName          | Person entity display name.                                             |
| Prompt.HydratedEntities.Entity.EmailAddresses       | List of email addresses for person entity.                              |
| Prompt.HydratedEntities.Entity.ReferenceId          | Unique ID for instrumentation mapping.                                  |
| Prompt.HydratedEntities.Entity.FileName             | Name of the file entity.                                                |
| Prompt.HydratedEntities.Entity.AccessUrl            | Access URL of file entity.                                              |
| Prompt.HydratedEntities.Entity.SpoId                | SharePoint Document Identifier for File entity.                         |
| Prompt.HydratedEntities.Entity.OriginalId           | Meeting ID of event entity.                                             |
| Prompt.HydratedEntities.Entity.Subject              | Subject of event entity.                                                |
| Prompt.HydratedEntities.Entity.SkypeTeamsMeetingUrl | URL of event entity.                                                    |
| Prompt.HydratedEntities.Entity.Start                | Start time of event entity.                                             |
| Prompt.HydratedEntities.Entity.End                  | End time of event entity.                                               |
| Prompt.HydratedEntities.Entity.OrganizerName        | Organizer Name of event entity.                                         |
| Prompt.HydratedEntities.Entity.OrganizerAddress     | Organizer Address of event entity.                                      |
| Prompt.HydratedEntities.Entity.Attendees            | Attendees list of event entity.                                         |