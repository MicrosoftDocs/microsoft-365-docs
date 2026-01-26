---
title: User context sort support configuration for Workday integration with Employee Self-Service agent
f1.keywords:
- NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: scotv
ms.reviewer: semani
ms.date: 11/05/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.custom: ess-agent
description: "Learn about the user context sort support configuration for your Workday integration with the Employee Self-Service agent."
---

# Sort

This support configuration is used for retrieving the required user context **sort** support attributes from Workday. Refer to these tables to create a custom report following these tables for different configuration sections in the Workday custom report.

## View Custom Report: WD User Context

|Report Name                                        |WD User Context       |
|---------------------------------------------------|----------------------|
|Report Type                                        |Advanced.             |
|Data Source                                        |All Workday Accounts. |
|Data Source Type                                   |Standard.             |
|Primary Business Object                            |Workday Account.      |
|Report Definition Usages                           |0.                    |
|Saved Filter Usages                                |0.                    |
|**Additional Info**                                |                      |
|Data Source Description                            |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.       |
|Brief Description                                  |                      |
|Passes Report Column Toggles                       |                      |
|**Sort**                                           |                      |
|Specify how the results should be sorted           |                      |
|**Sort and Group**                                 |                      |
|Sort by first accessible column (see next section) |                      |

## Columns

|Field |Sort Direction |Display Headers |Summarize Detail Rows |Display Subtotals |Group Name Override |
|------|---------------|----------------|----------------------|------------------|--------------------|
|**Grouping and Totaling Options**           |  |  |  |  |  |
|Enable Outlining based on Grouping          |  |  |  |  |  |
|Include Group Name in Headers and Subtotals |  |  |  |  |  |
|Include "Total" label in Subtotals          |  |  |  |  |  |
|Display Grand Totals                        |  |  |  |  |  |
