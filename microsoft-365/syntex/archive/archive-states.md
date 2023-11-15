---
title: Archive states in Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/15/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the archive states and what they mean in Microsoft 365 Archive.
---

# Archive states in Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in preview and subject to change. The feature is currently rolling out and might not yet be fully available to all organizations.

The following table describes the archive states and allowed operations.

|Archive state  |Description  |Allowed operations  |
|---------|---------|---------|
|Recently Archived    |This state is the first stage after a site is archived and is valid for seven days. A site in this stage can be reactivated without any cost and will be reactivated instantaneously.         |Reactivate, Delete         |
|Archived    |The site enters this state after seven days after being archived. In this stage, reactivations will be charged, and might take a few hours.         |Reactivate, Delete         |
|Reactivating     |If a site is reactivated from “Archived” state, it will be in this stage until reactivation is complete. After this, the site will be active, and will be available in Active sites page.         |None         |
