---
title: User context output support configuration for Workday integration with Employee Self-Service agent
f1.keywords:
- NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/05/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.custom: ess-agent
description: "Learn about the user context output support configuration for your Workday integration with the Employee Self-Service agent."
---

# User context output support configuration for Workday integration with Employee Self-Service agent

This support configuration is used for retrieving the required user context **output** attributes from Workday. Refer to this table to create a custom report following this table for different configuration sections in the Workday custom report.

|Report Name                                  |WD User Context      |
|---------------------------------------------|---------------------|
|Report Type                                  |Advanced             |
|Data Source                                  |All Workday Accounts |
|Data Source Type                             |Standard             |
|Primary Business Object                      |Workday Account      |
|Report Definition Usages                     |0                    |
|Saved Filter Usages                          |0                    |
|**Additional Info**                          |                     |
|Data Source Description                      |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description                            |                     |
|Passes Report Column Toggles                 |                     |
|**Output**                                   |                     |
|Specify output options for the report        |                     |
|**Output type**                              |                     |
|Output type                                  |Table                |
|**Chart options**                            |                     |
|**Primary axis**                             |                     |
|Chart type                                   |                     |
|**Secondary axis**                           |                     |
|Add secondary axis                           |                     |
|Secondary vertical axis chart type           |                     |
|Categories (for label)                       |                     |
|Series (for legent)                          |                     |
|Horizontal axis                              |                     |
|Metrics to include                           |                     |
|**Top n values**                             |                     |
|Top n values                                 |                     |
|Sum remaining values                         |                     |
|**Target line**                              |                     |
|None                                         |Yes                  |
|Display one target line for all groups       |                     |
|Display multiple target lines for each group |                     |
|Target line label                            |                     |
|**Vertical axist scale**                     |                     |
|**Primary axis scale**                       |                     |
|**Minimum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Increment value**                          |                     |
|Automatically scale                          |Yes                  |
|**Maximum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Horizontal axis scale**                    |                     |
|**Minimum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Increment value**                          |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Maximum value**                            |                     |
|Automatically scale                          |Yes                  |
|Fixed                                        |                     |
|**Advanced**                                 |                     |
|Horizontal axis title                        |                     |
|Vertical axis title                          |                     |
|Secondary vertical axis title                |                     |
|Options                                      |                     |
|**Gauge options**                            |                     |
|Metered value                                |                     |
|Metered value label override                 |                     |
|Gauge range                                  |                     |
|**Worklet options**                          |                     |
|Enable as worklet                            |                     |
|Available on                                 |                     |
|Maximum number of rows                       |                     |
|Maximize report options                      |                     |
|Display this worklet when maximized          |                     |
|Run a different report when maximized        |                     |
|Refresh data                                 |                     |
|Worklet icon                                 |                     |
|Options                                      |                     |
|**Help text**                                |                     |
|More info                                    |                     |
