---
title: User context filter support configuration for Workday integration with Employee Self-Service agent
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
description: "Learn about filter support configuration for your Workday integration with the Employee Self-Service agent."
---

# Filter

This support configuration is used for retrieving the required user context **filter** attributes from Workday. Refer to these tables to create a custom report following these tables for different configuration sections in the Workday custom report.

## Abbreviation in the filter condition table

|Field name |Business object |CLRV Lookup field |CLRV Related business object |CLRV return value |Additional Category |Additional authorized usage |
|--|--|--|--|--|--|--|
|CF – LRV Worker Type |Workday Account |Worker |Worker |Worker Type    | | |

## View Custom Report: WD User Context

|Report Name                  |WD User Context      |
|-----------------------------|---------------------|
|Report Type                  |Advanced             |
|Data Source                  |All Workday Accounts |
|Data Source Type             |Standard             |
|Primary Business Object      |Workday Account      |
|Report Definition Usages     |0                    |
|Saved Filter Usages          |0                    |
|**Additional Info**          |                     |
|Data Source Description      |Accesses the Workday Account object and returns one row per Workday account. Includes all Workday accounts ever created, either currently enabled or not. Doesn't contain built-in prompts. This data source shows settings of a user's sign in information and preferences in Workday.     |
|Brief Description            |                     |
|Passes Report Column Toggles |                     |
|**Filter**                   |                     |
|**Filter on instances**      |                     |

## Filter conditions for filtering on instances

|And/Or |( |Fieled |Operator |Comparison Type |Comparison Value | ) |Indexed |
|-------|--|-----|-----------|----------------|-----------------|---|---------|
|And |  |User Name  |equal to |Prompt the user for the value |Default Prompt |  |  |
|And |  |CF LRV worker type |in the selection list |value specified in this filter | employee |  |  |

**Condition as Text:** User Name equal to from user input And CF LRV Worker Type in the selection list Employee

|Filter on Aggregations |          &nbsp;     |         &nbsp;      |   &nbsp;   |   &nbsp;   |     &nbsp;    |       &nbsp;      | &nbsp; |
|-----------------------|------------------------|---------------------|------|---------|----------------|------------------|--|
|**Filter condition for filtering on aggregated values** |  |          |      |         |                |                  |  |
|And/Or                 |(                       |Aggregation function |Field |Operator |Comparison type |Comparison value  |) |
