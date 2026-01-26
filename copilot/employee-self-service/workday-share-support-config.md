---
title: User context share support configuration for Workday integration with Employee Self-Service agent
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
description: "Learn about the user context share support configuration for your Workday integration with the Employee Self-Service agent."
---

# User context share support configuration for Workday integration with Employee Self-Service agent

This support configuration is used for retrieving the required user context **share** attributes from Workday. Refer to this table to create a custom report following this table for different configuration sections in the Workday custom report.

## View Custom Report: WD User Context

|Report Name                                       |WD User Context      |
|--------------------------------------------------|---------------------|
|Report Type                                       |Advanced             |
|Data Source                                       |All Workday Accounts |
|Data Source Type                                  |Standard             |
|Primary Business Object                           |Workday Account      |
|Report Definition Usages                          |                     |
|Saved Filter Usages                               |                     |
|**Additional Info**                               |                     |
|Data Source Description                           |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description                                 |                     |
|Passes Report Column Toggles                      |                     |
|**Share**                                         |                     |
|Specify sharing options for the report definition |                     |
|Report definition sharing options                 |                     |
|Don't share report definition                     |                     |
|Share with all authorized users                   |                     |
|Share with specific authorized groups and users   |Yes                  |
|Authorized groups                                 |                     |
|Authorized users                                  |                     |
|Report owned by                                   |Generic user         |
