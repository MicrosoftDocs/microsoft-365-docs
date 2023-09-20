---
title: Set up Microsoft 365 Archive (Preview)
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: sreelakshmi
ms.date: 09/20/2023
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
> This feature is currently in limited preview and subject to change. Before you begin, read the [Microsoft 365 preview terms and conditions](archive-preview-terms.md).

Microsoft 365 Archive follows a pay-as-you-go model, and is configured through the Microsoft 365 admin center.

To enable Microsoft 365 Archive for a tenant, perform the following steps:

1. Enable pay-as-you-go billing for Syntex on the Microsoft 365 admin center.
2. Turn on Microsoft 365 Archive from the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use Microsoft 365 Archive, you must first link your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Microsoft 365 Archive is billed based on the [number of gigabytes (GB) archived and number of gigabytes (GB) reactivated](syntex-pay-as-you-go-services.md).

To set up pay-as-you-go billing, see [Configure Microsoft Syntex for pay-as-you-go billing at Syntex billing](../syntex-azure-billing.md).

### Permissions

You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up Microsoft 365 Archive.

## Set up Microsoft 365 Archive

Once pay-as-you-go billing has been enabled for Syntex on Microsoft 365 admin center, Microsoft 365 Archive can be enabled.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then select **Use content AI with Microsoft Syntex**.

2. On the **Use content AI with Microsoft Syntex** page, select **Manage Microsoft Syntex**.

3. On the **Manage Microsoft Syntex** page, select **Archive (Preview)**.

4. On the **Archive (Preview)** page, select **Turn on**, and on the confirmation pane, select **Confirm**.

    ![Screenshot of the Microsoft 365 Archive page in the admin center showing how to turn on Archive.](../../media/content-understanding/turn-on-archive-admin-center.png)

   Microsoft 365 Archive is now enabled for you, and you're able to archive content from the SharePoint admin center.

## Turn off Microsoft 365 Archive

To turn off Microsoft 365 Archive:

1. On the **Manage Microsoft Syntex** page, select **Archive (Preview)**.

2. On the **Archive (Preview)** page, select **Turn off**.

When you turn off Microsoft 365 Archive, any further archiving stops. The sites already archived will continue to be in an archive state, and will be billed. The sites can be reactivated with reactivation cost or deleted.

## Charge model

Microsoft 365 Archive storage consumption is charged at a per-GB monthly rate and site reactivation at a per-GB rate. The Microsoft 365 Archive storage usage is only charged when archived storage plus active SharePoint storage exceeds the tenant’s included or licensed allocated SharePoint storage quota. For more information about storage limits, see [SharePoint limits](https://learn.microsoft.com/en-us/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits).

When included or licensed storage quota is exceeded, Microsoft 365 Archive is charged for monthly archive usage and reactivations of archived sites back to the active state.

Monthly archive usage is calculated as the sum of the usage of all currently archived sites.  Each site’s usage is equal to the site storage usage of that site, which can be seen on the site itself or from the **Active sites** page in the SharePoint admin center. The size of an archived site, and the storage it's billed for, only changes if the content on the site changes (for example, from recycle bin content naturally expiring).

Reactivations are charged based on the Site Storage usage of the site being restored, charged per GB upon the successful reactivation of the site. To see the pricing for Microsoft 365 Archive, see [Pay-as-you-go services and pricing for Microsoft Syntex](../syntex-pay-as-you-go-services.md).

<br>

> [!div class="nextstepaction"]
> [Back to overview](archive-overview.md)