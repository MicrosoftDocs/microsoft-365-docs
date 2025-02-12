---
title: Set up and manage enhanced image tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 01/13/2025
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set and configure enhanced image tagging in SharePoint.
---

# Set up and manage enhanced image tagging in Microsoft Syntex

The image tagging service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use image tagging, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Image tagging is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up image tagging.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up image tagging

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), image tagging is automatically set up and enabled for all SharePoint sites.

Although you enable pay-as-you-go billing for image tagging, you are charged only when [image tagging is enabled on a document library](image-tagging.md).

## Manage sites

By default, image tagging is available for libraries on all SharePoint sites. To limit which sites users can apply image tagging, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Settings > Org settings**</a>.

2. On the **Org settings** page, select **Pay-as-you-go services**.

3. On the **Pay-as-you-go services** page, select the **Settings** tab.

4. Under **Document & image services**, select **Image tagging**.

5. On the **Image tagging** panel, under **Which SharePoint sites should show the option to enable image tagging**, select **Edit**.

6. On the **Image tagging** panel, change the setting from **Libraries in all SharePoint sites** to **Selected sites (up to 100)** or **No sites**. For selected sites, follow the instructions to select the sites or upload a CSV listing of the sites. You can then manage site access permissions for the sites you selected.

7. Select **Save**.
