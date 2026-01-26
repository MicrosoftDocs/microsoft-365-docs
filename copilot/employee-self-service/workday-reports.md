---
title: Creating reports for your Workday integration
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
description: "Learn how to create reports for your Workday integration with the Employee Self-Service agent."
---

# Create reports for your Workday integration

The Employee Self-Service agent for Workday requires a few user context attributes including **Employee ID**, **First Name**, **Last Name**, **Is Manager**, and more to be passed to execute a scenario. These attributes are retrieved from the user mapping with matching usernames from both Microsoft Entra and Workday.

For SOAP API set, the following custom report should be created and exposed as a web service (Reports as a Service) to retrieve these attributes:

## Create calculated fields

The following calculated fields should be created at the report level (see definition in the next section) and not as global calculated fields to avoid any accidental notifications by admins:

- ISO 2 Country Code
- Level of Employee
- Worker Type
- CF LRV Sup Org Ref ID

## Next steps for sections of report configurations

- [Columns](workday-columns-support-config.md)
- [Sort](workday-sort-support-config.md)
- [Filter](workday-filter-support-config.md)
- [Sub-filter](workday-sub-filter-support-config.md)
- [Prompts](workday-prompts-support-config.md)
- [Output](workday-output-support-config.md)
- [Share](workday-share-support-config.md)
- [Advanced](workday-advanced-support-config.md)
