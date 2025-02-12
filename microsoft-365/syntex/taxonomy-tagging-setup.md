---
title: Set up and manage taxonomy tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 01/13/2025
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC, setup
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up and configure taxonomy tagging in SharePoint.
---

# Set up and manage taxonomy tagging in Microsoft Syntex

The taxonomy tagging service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use taxonomy tagging, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Taxonomy tagging is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up taxonomy tagging.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up taxonomy tagging

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), taxonomy tagging is automatically set up and enabled for all SharePoint sites.

## Manage sites

By default, taxonomy tagging is available for libraries on all SharePoint sites. To limit which sites users can apply taxonomy tagging, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Settings > Org settings**</a>.

2. On the **Org settings** page, select **Pay-as-you-go services**.

3. On the **Pay-as-you-go services** page, select the **Settings** tab.

4. Under **Document & image services**, select **Taxonomy tagging**.

5. On the **Taxonomy tagging** panel, under **Which SharePoint sites should show the option to enable taxonomy tagging**, select **Edit**.

6. On the **Taxonomy tagging** panel, change the setting from **All sites** to **Selected sites (up to 100)** or **No sites**. For selected sites, follow the instructions to select the sites or upload a CSV listing of the sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    > [!NOTE]
    > You can enable taxonomy tagging only at the site level, and it will work for any subsites under the site. Enabling only for a particular subsite isn't supported.

7. Select **Save**.
