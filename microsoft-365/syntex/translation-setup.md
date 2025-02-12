---
title: Set up and manage document translation in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/23/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to set up document translation in SharePoint.
---

# Set up and manage document translation in Microsoft Syntex

The document translation service for Microsoft Syntex is set up in the Microsoft 365 admin center.

## Prerequisites

### Licensing

Before you can use document translation, you must first link an Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Document translation is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md).

### Permissions

You must be a [SharePoint Administrator](/entra/identity/role-based-access-control/permissions-reference#sharepoint-administrator) or [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) to be able to access the Microsoft 365 admin center and set up document translation.

[!INCLUDE [global-administrator-note](../includes/global-administrator-note.md)]

## Set up translation

After an [Azure subscription is linked to Microsoft Syntex](syntex-azure-billing.md), document translation is automatically set up and turned on for all SharePoint sites and for OneDrive.

## Manage sites

By default, document translation is turned on for libraries in all SharePoint sites and for OneDrive. To limit on which sites users can use document translation, follow these steps.

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Settings > Org settings**</a>.

2. On the **Org settings** page, select **Pay-as-you-go services**.

3. On the **Pay-as-you-go services** page, select the **Settings** tab.

4. Under **Document & image services**, select **Document translation**.

5. On the **Document translation** panel, under **Where document translation can be used when it's turned on**, select **Edit**.

6. On the **Where can document translation be used?** panel:

    a. Under **SharePoint**, change the setting from **All sites** to **Selected sites (up to 100)** or **No sites**. For selected sites, follow the instructions to select the sites or upload a CSV listing of the sites. You can then manage site access permissions for the sites you selected.

    b. Under **OneDrive**, to turn off document translation in OneDrive, clear the **Available in OneDrive** checkbox.

    ![Screenshot showing the Where can document translation be used? panel, and the Available in OneDrive checkbox selected.](../media/content-understanding/translation-onedrive-selected.png)

7. Select **Save**.

## Video transcript translation

To turn on translation for video transcripts and closed captioning, see [Enable transcript translations in Stream for SharePoint](https://prod.support.services.microsoft.com/office/microsoft-syntex-pay-as-you-go-transcript-translations-in-stream-for-sharepoint-2e34ad1b-e213-47ed-a806-5cc0d88751de#bkmk_enabletranslations).