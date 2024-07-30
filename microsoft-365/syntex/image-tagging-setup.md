---
title: Set up and manage enhanced image tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 06/12/2024
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set and configure enhanced image tagging in Microsoft Syntex.
---

# Set up and manage enhanced image tagging in Microsoft Syntex

The image tagging service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use image tagging in Syntex, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Image tagging in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up image tagging.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up image tagging

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), image tagging will be automatically set up and enabled for all SharePoint sites.

Although you enable pay-as-you-go billing for image tagging, you'll be charged only when [image tagging is enabled on a document library](image-tagging.md).

## Manage sites

By default, image tagging is available for libraries on all SharePoint sites. Follow these steps to limit which sites users can apply image tagging.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Files and content**, select **Automate content processes with Syntex**.

3. On the **Automate content processes with Syntex** page, select **Go to Syntex settings**.

4. On the Syntex page, under **Document & image services**, select **Image tagging**.

5. On the **Image tagging** panel:

    a. Choose which site or sites this service should be enabled for.

    b. To restrict user access to this service, select **No sites** or **Selected sites** and follow the instructions to either select the sites or upload a CSV listing a maximum of 100 sites. Be sure to add your content center site if you want it to be included. You can then manage site access permissions for the sites you selected.

    c. Select **Save**.
