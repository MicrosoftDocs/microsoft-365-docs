---
title: Set up Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/01/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: CSH, archive
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to set up and configure Microsoft 365 Archive.
---

# Set up Microsoft 365 Archive (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change. Before you begin, read the [Microsoft 365 preview terms and conditions](archive/archive.preview-terms.md).

Microsoft 365 Archive follows a pay-as-you-go model, configurable through the Microsoft 365 admin center.

To enable Microsoft 365 Archive for a tenant, perform the following steps:

1. Enable pay-as-you-go billing for Syntex on the Microsoft 365 admin center.
2. Turn on Microsoft 365 Archive from the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use Microsoft 365 Archive, you must first link an Azure subscription in Syntex pay-as-you-go. Microsoft 365 Archive is billed based on the number of gigabytes (GB) archived and number of gigabytes(GB) reactivated.

You can enable pay-as-you-go billing at Syntex billing by following the steps here: Setup pay-as-you-go.

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up Microsoft 365 Archive.

## Set up Microsoft 365 Archive

Once pay-as-you-go billing has been enabled for Syntex on Microsoft 365 admin center, Microsoft 365 Archive can be enabled.

1. Go to the Microsoft Syntex management page in the Microsoft 365 admin center and select Manage Microsoft Syntex.

2. Selecting Archive will open a pane with details about the feature.

3. Select **Turn on** and select **Confirm** on the confirmation pane.

    ![Screenshot of the Microsoft 365 Archive page in the admin center showing how to turn on Archive.](../media/content-understanding/turn-on-archive-admin-center.png)

4. Microsoft 365 Archive will now be enabled for you, and you will be able to archive content from the SharePoint admin center.

## Turn off Microsoft 365 Archive

If you want to turn off Microsoft 365 Archive in the future, it can be disabled from the same pane as above.

Disabling archiving will stop any further archiving. The sites already archived will continue to be in an archive state, and will be billed. The sites can be reactivated with reactivation cost or deleted.
